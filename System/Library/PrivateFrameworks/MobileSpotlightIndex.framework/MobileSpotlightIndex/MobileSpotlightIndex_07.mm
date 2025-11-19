uint64_t si_resultqueue_count(uint64_t a1)
{
  pthread_mutex_lock((a1 + 8));
  v2 = si_simplequeue_count_locked(a1);
  pthread_mutex_unlock((a1 + 8));
  return v2;
}

unint64_t db_get_fields_generation(int *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_get_fields_generation";
      v14 = 1024;
      v15 = 291;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 291, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 110);
  if ((a1[201] & 0x14) != 0)
  {
    result = 0;
    if (v1)
    {
      v3 = *(v1 + 216);
      if (v3 <= 842150449)
      {
        if (v3 == -572662307)
        {
          result = data_map_double_count(v1);
          goto LABEL_14;
        }

        if (v3 != -270471200)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3 == 1684300900)
      {
LABEL_12:
        result = *(v1 + 224) - 1;
        goto LABEL_14;
      }

      if (v3 == 842150450)
      {
        result = (*(v1 + 220) - 1);
      }
    }
  }

  else
  {
    result = *(v1 + 56);
  }

LABEL_14:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_eval_obj_with_options(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v86 = v2;
  v83 = v3;
  v84 = v4;
  v6 = v5;
  v8 = v7;
  v85 = v1;
  v94[6143] = *MEMORY[0x1E69E9840];
  memset(v88, 0, sizeof(v88));
  v87 = 0u;
  DWORD1(v87) = 4;
  if (v9)
  {
    LODWORD(v87) = 4;
  }

  bzero(v94, 0xBFF8uLL);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v93 = v6;
  v13 = "<>";
  if (!v85)
  {
    v13 = "<<anon store>>";
  }

  v82 = v13;
  while (1)
  {
    v16 = &v94[3 * v12 - 1];
    if (v10 != 1)
    {
      if (!v10)
      {
        v17 = v6[8];
        if (v17)
        {
          if (v17 == v8[2])
          {
            v18 = (*(v6 + 28) >> 10) & 1;
            v16[2] = v18;
            v16[4] = 1;
            if (!v12)
            {
              break;
            }

            goto LABEL_25;
          }
        }
      }

      v19 = v6[6] & 0xFFF7;
      if (v19 > 3)
      {
        if (v19 != 4)
        {
          if (v19 == 16)
          {
LABEL_7:
            v16[2] = 0;
LABEL_8:
            v14 = 1;
LABEL_9:
            v16[4] = v14;
            goto LABEL_10;
          }

          if (v19 == 32)
          {
            v14 = 1;
            v16[2] = 1;
            goto LABEL_9;
          }

LABEL_44:
          v26 = *__error();
          v27 = _SILogForLogForCategory(1);
          v28 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 136315394;
            v90 = v82;
            v91 = 2048;
            v92 = v6;
            _os_log_impl(&dword_1C278D000, v27, v28, "%s : node @ 0x%p looks trashed", buf, 0x16u);
          }

          *__error() = v26;
          goto LABEL_7;
        }

        v22 = v6[2];
        if ((*(v22 + 35) & 0x406) != 0)
        {
          v23 = 0;
        }

        else
        {
          v35 = *(v22 + 16);
          v23 = v86;
          if (v35)
          {
            v36 = v86 == 0;
          }

          else
          {
            v36 = 1;
          }

          if (!v36)
          {
            v37 = v6[2];
            v38 = v35(v85, v8);
            if (v38 < 2)
            {
LABEL_66:
              v16[2] = v38;
              goto LABEL_8;
            }

            v23 = 1;
            v22 = v37;
          }
        }

        v38 = compare_file_by_dbo(v85, v8, v22, (v6 + 4), v83, v84, v23, &v87, 0);
        goto LABEL_66;
      }

      if (v19 == 1)
      {
        if ((v10 - 2) < 2)
        {
          if (v16[10] != 1)
          {
            goto LABEL_138;
          }

          v24 = v16[8];
          v16[2] = v24;
          if (v86 && (v24 & 0x80000001) != 0)
          {
            goto LABEL_8;
          }

          v21 = v12 + 1;
          if (v12 >= v11)
          {
            v11 = v12 + 1;
            if (v12 >= 2047)
            {
LABEL_138:
              v74 = __si_assert_copy_extra_332();
              __message_assert_336(v74, v75, v76, v77, v78, v79, v80, v81, "core-query.c");
              free(v74);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              MEMORY[0xC00] = -559038737;
              abort();
            }
          }

          goto LABEL_43;
        }

        if (!v10)
        {
          v29 = *v6;
          v30 = v6[1];
          v31 = v12 + 1;
          if (v12 >= v11)
          {
            v11 = v12 + 1;
            if (v12 >= 2047)
            {
LABEL_134:
              v65 = __si_assert_copy_extra_332();
              __message_assert_336(v65, v66, v67, v68, v69, v70, v71, v72, "core-query.c");
              free(v65);
              if (__valid_fs(-1))
              {
                v73 = 2989;
              }

              else
              {
                v73 = 3072;
              }

              *v73 = -559038737;
              abort();
            }
          }

          goto LABEL_53;
        }

        if (v16[10] != 1)
        {
          goto LABEL_134;
        }

        v39 = v16[8];
        v40 = v86 ^ 1;
        if ((v39 & 0x80000001) == 0)
        {
          v40 = 1;
        }

        if (v40 == 1)
        {
          v41 = v16[2];
          if (v41)
          {
            v42 = (v41 & 0x80000001) == 0;
          }

          else
          {
            v42 = 0;
          }

          if (v42)
          {
            if (!v39 || (v39 & 0x80000001) != 0)
            {
              if (v39)
              {
                v43 = v16[8];
              }

              else
              {
                v43 = v16[2];
              }
            }

            else
            {
              v43 = v41 ^ v39;
              v48 = v41 & v39;
              if ((v41 & v39) >= 2)
              {
                v49 = 0;
                do
                {
                  if ((v48 & 2) != 0)
                  {
                    v51 = db_eval_obj_qp_array_union_for_value(&v87, v49);
                    v52 = 2 << v49;
                    if (v49 >= 0x1E)
                    {
                      v52 = 0;
                    }

                    v53 = v52 | v43;
                    if (v51)
                    {
                      v43 = v53;
                    }
                  }

                  ++v49;
                  v50 = v48 > 3;
                  v48 >>= 1;
                }

                while (v50);
              }
            }
          }

          else if (v41)
          {
            v43 = v16[2];
          }

          else
          {
            v43 = v16[8];
          }
        }

        else
        {
          v43 = v16[8];
        }
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_44;
        }

        if ((v10 - 2) < 2)
        {
          if (v16[10] != 1)
          {
            goto LABEL_138;
          }

          v20 = v16[8];
          v16[2] = v20;
          if (v86 && !v20)
          {
            goto LABEL_8;
          }

          v21 = v12 + 1;
          if (v12 >= v11)
          {
            v11 = v12 + 1;
            if (v12 >= 2047)
            {
              goto LABEL_134;
            }
          }

LABEL_43:
          v25 = &v94[3 * v21 - 1];
          *v25 = v6[v10 == 2];
          *(v25 + 2) = 0;
          *(v25 + 4) = 0;
          v14 = 4;
          v12 = v21;
          goto LABEL_9;
        }

        if (!v10)
        {
          v29 = *v6;
          v30 = v6[1];
          v31 = v12 + 1;
          if (v12 >= v11)
          {
            v11 = v12 + 1;
            if (v12 >= 2047)
            {
              goto LABEL_134;
            }
          }

LABEL_53:
          v32 = &v94[3 * v31 - 1];
          *(v32 + 2) = 0;
          *(v32 + 4) = 0;
          if ((*(v29 + 52) <= *(v30 + 52) || (v33 = *(v29 + 64)) != 0 && v33 == v8[2]) && ((v34 = *(v30 + 64)) == 0 || v34 != v8[2]))
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
            v29 = v30;
          }

          *v32 = v29;
          v12 = v31;
          goto LABEL_9;
        }

        if (v16[10] != 1)
        {
          goto LABEL_138;
        }

        v44 = v16[8];
        v45 = v16[2];
        if (v44)
        {
          v46 = v45 == 0;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          v43 = 0;
        }

        else
        {
          v47 = v45 & 0x80000001;
          if ((v44 & 0x80000001) != 0)
          {
            if (v47)
            {
              v43 = 1;
            }

            else
            {
              v43 = v16[2];
            }
          }

          else
          {
            v43 = v16[8];
            if (!v47)
            {
              v43 = v45 ^ v44;
              v54 = v45 & v44;
              if ((v45 & v44) >= 2)
              {
                v55 = 0;
                do
                {
                  if ((v54 & 2) != 0)
                  {
                    v56 = db_eval_obj_qp_array_intersect_for_value(&v87, v55);
                    v57 = 2 << v55;
                    if (v55 >= 0x1E)
                    {
                      v57 = 0;
                    }

                    v58 = v57 | v43;
                    if (v56)
                    {
                      v43 = v58;
                    }
                  }

                  ++v55;
                  v50 = v54 > 3;
                  v54 >>= 1;
                }

                while (v50);
              }
            }
          }
        }
      }

      v16[2] = v43;
      goto LABEL_8;
    }

    v18 = v16[2];
    if ((v6[6] & 8) != 0)
    {
      v18 = v18 == 0;
      v16[2] = v18;
    }

    v6[8] = v8[2];
    *(v6 + 28) = v6[7] & 0xFBFF | ((v18 & 1) << 10);
    if (!v12)
    {
      break;
    }

LABEL_25:
    --v12;
LABEL_10:
    v15 = &v94[3 * v12 - 1];
    v6 = *v15;
    v10 = *(v15 + 4);
  }

  v59 = DWORD1(v87);
  if (DWORD1(v87) >= 5)
  {
    v60 = *&v88[0];
  }

  else
  {
    v60 = v88;
  }

  if (v87)
  {
    v61 = DWORD2(v87);
    if (DWORD2(v87))
    {
      v62 = v60 + 2;
      do
      {
        if (*(v62 - 2) >= 0x41u)
        {
          free(*v62);
          *(v62 - 1) = 0;
          *v62 = 0;
        }

        v62 += 3;
        --v61;
      }

      while (v61);
      v59 = DWORD1(v87);
    }
  }

  if (v59 >= 5)
  {
    free(v60);
  }

  v63 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t compare_file_by_dbo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 *a8, uint64_t a9)
{
  v81 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = 0;
  *v80 = 0;
  *&v80[8] = 0;
  *&v80[13] = 0;
  if (a8)
  {
    v15 = (*a8 >> 2) & 1;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  v16 = *(a3 + 24);
  if (v16 >= 0xB && v16 != 15)
  {
    if (v16 <= 12)
    {
      if (v16 == 11)
      {
        result = 0;
        v25 = 0;
        goto LABEL_56;
      }

      result = 0;
      if (v16 == 12)
      {
        result = 1;
        v25 = 1;
LABEL_56:
        if (*(a3 + 40) != 2)
        {
LABEL_75:
          result = v25;
          goto LABEL_152;
        }

        v72 = 0;
LABEL_61:
        v35 = *a3;
        v36 = *a2;
        if (!*a2)
        {
          v37 = result;
          (a2[1])(a1, a2);
          result = v37;
          v36 = *a2;
          if (!*a2)
          {
            goto LABEL_151;
          }
        }

        v75 = 0;
        v76 = 0;
        if (*v35 == 42 && !v35[1])
        {
          if (*(v36 + 3) >= 0x31u)
          {
            v49 = (v36 + 6);
            if (v72)
            {
              if (a7)
              {
                while (1)
                {
                  if ((v49[1] & 0x100) == 0)
                  {
                    if (db_fieldMatchCompare(a1, v49, a3, a5, a8, v25))
                    {
                      goto LABEL_54;
                    }

                    v36 = *a2;
                  }

                  result = 0;
                  v49 = (v49 + *(v49 + 2) + 13);
                  if (v49 >= (v36 + *(v36 + 3)))
                  {
                    goto LABEL_152;
                  }
                }
              }

              result = 0;
              do
              {
                if ((v49[1] & 0x100) == 0)
                {
                  result = db_fieldMatchCompare(a1, v49, a3, a5, a8, v25);
                  if (result)
                  {
                    v50 = *(v49 + 12);
                    if (v50 != 7)
                    {
                      *(v49 + 12) = v50 + 1;
                    }

                    result = 1;
                  }
                }

                v49 = (v49 + *(v49 + 2) + 13);
              }

              while (v49 < *a2 + *(*a2 + 12));
            }

            else
            {
              if (a7)
              {
                while (1)
                {
                  if ((v49[1] & 0x100) == 0)
                  {
                    if (_db_rangeCompare(*v49, a3, *(v49 + 2), (v49 + 13), a8, v25, a9))
                    {
                      goto LABEL_54;
                    }

                    v36 = *a2;
                  }

                  result = 0;
                  v49 = (v49 + *(v49 + 2) + 13);
                  if (v49 >= (v36 + *(v36 + 3)))
                  {
                    goto LABEL_152;
                  }
                }
              }

              result = 0;
              do
              {
                if ((v49[1] & 0x100) == 0)
                {
                  result = _db_rangeCompare(*v49, a3, *(v49 + 2), (v49 + 13), a8, v25, a9);
                  if (result)
                  {
                    v70 = *(v49 + 12);
                    if (v70 != 7)
                    {
                      *(v49 + 12) = v70 + 1;
                    }

                    result = 1;
                  }
                }

                v49 = (v49 + *(v49 + 2) + 13);
              }

              while (v49 < *a2 + *(*a2 + 12));
            }

            goto LABEL_152;
          }

          goto LABEL_151;
        }

        v71 = v25;
        v25 = result;
        if (*a3)
        {
          v39 = (a3 + 144);
          v38 = *(a3 + 144);
          if (!v38 || v38 < db_get_fields_generation(a1))
          {
            os_unfair_lock_lock(&range_or_field_compare_lock);
            if (!*v39 || (v40 = *v39, v40 < db_get_fields_generation(a1)))
            {
              v41 = *(a3 + 136);
              (*(*(a1 + 808) + 16))();
              v42 = db_copy_field_ids_with_buffer_locked(a1, *a3, 0, 0, (a3 + 144));
              __dmb(0xBu);
              *(a3 + 136) = v42;
            }

            os_unfair_lock_unlock(&range_or_field_compare_lock);
          }
        }

        memset(buf, 0, 20);
        if (db_get_field_by_id(a1, *a2, *(a3 + 136), &v76, &v75))
        {
          if (!*a3 || strcmp(*a3, "kMDItemAttributeChangeDate"))
          {
            goto LABEL_75;
          }

          *buf = 12;
          v52 = *(a3 + 136);
          if (v52)
          {
            LODWORD(v52) = *v52;
          }

          *&buf[4] = v52;
          *&buf[8] = 8;
          *&buf[12] = -(*MEMORY[0x1E695E468] + *(*a2 + 16) * -0.000001);
          v75 = &buf[12];
          v76 = buf;
        }

        if (v72)
        {
          result = db_fieldMatchCompare(a1, v76, a3, a5, a8, v71);
        }

        else
        {
          result = _db_rangeCompare(*v76, a3, *(v76 + 2), v75, a8, v71, a9);
        }

        if (a7 || !result)
        {
          goto LABEL_152;
        }

        v53 = v76;
        goto LABEL_117;
      }

LABEL_152:
      v69 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (v16 == 13)
    {
      result = 0;
      v25 = 0;
    }

    else
    {
      result = 0;
      if (v16 != 14)
      {
        goto LABEL_152;
      }

      result = 1;
      v25 = 1;
    }

    if (*(a3 + 40) < 1)
    {
      goto LABEL_152;
    }

    v72 = 1;
    goto LABEL_61;
  }

LABEL_10:
  if ((*(a3 + 32) & 0x80) == 0)
  {
    v18 = *(a3 + 72);
    v19 = *a3;
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_33;
      }

      if (*v19 == 42 && !v19[1])
      {
        v20 = *a2;
        if (*a2)
        {
          goto LABEL_16;
        }

        (a2[1])(a1, a2);
        v20 = *a2;
        if (*a2)
        {
          v18 = *(a3 + 72);
          if (!v18)
          {
LABEL_121:
            v55 = *(a3 + 24);
            if (v55 <= 0xA)
            {
              v56 = *(a3 + 160);
              if ((v56 & 0x800) == 0)
              {
                *(a3 + 256) = v18;
                while (1)
                {
                  v57 = *v18;
                  if (!*v18)
                  {
                    break;
                  }

                  ++v18;
                  v58 = v57 - 42;
                  v59 = v58 > 0x32;
                  v60 = (1 << v58) & 0x6000000200001;
                  if (!v59 && v60 != 0)
                  {
                    *(a3 + 32) |= 1uLL;
                    break;
                  }
                }

                *(a3 + 160) = v56 | 0x800;
                v20 = *a2;
              }

              result = v55 == 5;
              if (*(v20 + 12) >= 0x31u)
              {
                v62 = (v20 + 48);
                while (1)
                {
                  if ((v62[1] & 0x100) == 0)
                  {
                    v63 = result;
                    v64 = *v62;
                    if (v64 != 11 && (v65 = *(a3 + 256)) != 0 && (*v65 - 48) <= 9 && convert_value_to_type(v64, a3))
                    {
                      result = v63;
                    }

                    else
                    {
                      v66 = do_compare(a1);
                      v67 = *(a3 + 24);
                      if (v66)
                      {
                        result = v63;
                        if (v67 != 5)
                        {
                          if (a7)
                          {
                            goto LABEL_54;
                          }

                          v68 = *(v62 + 12);
                          if (v68 != 7)
                          {
                            *(v62 + 12) = v68 + 1;
                          }

                          result = 1;
                        }
                      }

                      else
                      {
                        if (v67 == 5)
                        {
                          result = 0;
                        }

                        else
                        {
                          result = v63;
                        }

                        if (v67 == 5 && a7)
                        {
                          goto LABEL_151;
                        }
                      }
                    }
                  }

                  v62 = (v62 + *(v62 + 2) + 13);
                  if (v62 >= *a2 + *(*a2 + 12))
                  {
                    goto LABEL_152;
                  }
                }
              }

              goto LABEL_152;
            }

            goto LABEL_151;
          }

LABEL_16:
          if (*v18 == 42 && !v18[1] && (*(v20 + 40) & 5) == 0)
          {
            if (!a7)
            {
              v21 = v20 + 48;
              result = 1;
              do
              {
                v51 = *(v21 + 12);
                if (v51 != 7)
                {
                  *(v21 + 12) = v51 + 1;
                  v20 = *a2;
                }

                v21 += *(v21 + 8) + 13;
              }

              while (v21 < v20 + *(v20 + 12));
              goto LABEL_152;
            }

            goto LABEL_54;
          }

          goto LABEL_121;
        }

        goto LABEL_151;
      }
    }

    else if (!v19)
    {
      goto LABEL_33;
    }

    if (!strncmp(*a3, "SYS:mod", 7uLL))
    {
      v32 = *a2;
      if (!*a2)
      {
        (a2[1])(a1, a2);
        v32 = *a2;
        if (!*a2)
        {
          goto LABEL_151;
        }
      }

      v73 = v80;
      *v80 = 8;
      *&v80[4] = 0x80000FFFFLL;
      *&v80[13] = *(v32 + 16);
LABEL_50:
      v33 = *(a3 + 24);
      if ((v33 - 1) > 1)
      {
        if ((v33 - 5) <= 1)
        {
          v43 = *(a3 + 72);
          if (v43)
          {
            if (*v43 == 42 && !v43[1])
            {
              goto LABEL_151;
            }
          }
        }
      }

      else
      {
        v34 = *(a3 + 72);
        if (v34 && *v34 == 42 && !v34[1])
        {
LABEL_54:
          result = 1;
          goto LABEL_152;
        }
      }

      if (!v73)
      {
LABEL_151:
        result = 0;
        goto LABEL_152;
      }

      if (convert_value_to_type(*v73, a3))
      {
        result = 0;
        if (v73 && dword_1EBF46AD0 >= 5)
        {
          v44 = *__error();
          v45 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = "<>";
            v47 = *v73;
            if (!a1)
            {
              v46 = "<<anon store>>";
            }

            *buf = 136315650;
            *&buf[4] = v46;
            *&buf[12] = 2048;
            *&buf[14] = a3;
            v78 = 1024;
            v79 = v47;
            _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "%s : failed to convert qp @ 0x%p to type 0x%x", buf, 0x1Cu);
          }

          v48 = __error();
          result = 0;
          *v48 = v44;
        }

        goto LABEL_152;
      }

      LODWORD(result) = do_compare(a1);
      if (a7)
      {
        result &= 1u;
        goto LABEL_152;
      }

      if ((*(a3 + 35) & 6) != 0)
      {
        result = result;
      }

      else
      {
        result &= 1u;
      }

      if (!result || result != 1 && (result & 0x80000001) != 0)
      {
        goto LABEL_152;
      }

      v53 = v73;
LABEL_117:
      v54 = *(v53 + 12);
      if (v54 != 7)
      {
        *(v53 + 12) = v54 + 1;
      }

      goto LABEL_152;
    }

LABEL_33:
    if (!a1)
    {
      goto LABEL_151;
    }

    if (!*a2)
    {
      (a2[1])(a1, a2);
      if (!*a2)
      {
        goto LABEL_151;
      }

      v19 = *a3;
    }

    if (v19)
    {
      v26 = (a3 + 144);
      v27 = *(a3 + 144);
      if (!v27 || v27 < db_get_fields_generation(a1))
      {
        os_unfair_lock_lock(&compare_file_by_dbo_lock);
        if (!*v26 || (v28 = *v26, v28 < db_get_fields_generation(a1)))
        {
          v29 = *(a3 + 136);
          (*(*(a1 + 808) + 16))();
          v30 = db_copy_field_ids_with_buffer_locked(a1, *a3, 0, 0, (a3 + 144));
          __dmb(0xBu);
          *(a3 + 136) = v30;
        }

        os_unfair_lock_unlock(&compare_file_by_dbo_lock);
      }
    }

    v31 = *(a3 + 136);
    if (!v31 || db_get_field_by_id(a1, *a2, v31, &v73, &v74))
    {
      result = (*(a3 + 24) - 5) < 2;
      goto LABEL_152;
    }

    goto LABEL_50;
  }

  v23 = *(a3 + 8);
  v24 = *MEMORY[0x1E69E9840];

  return v23();
}

void si_livequery_release(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[1];
    si_querypipe_release(a1[5]);
    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
    if (atomic_fetch_add((v2 + 584), 0xFFFFFFFF) == 1)
    {

      si_query_free(v2);
    }
  }
}

void SIActivityJournalCSItem(uint64_t a1, CFStringRef theString, unint64_t a3, unsigned int a4, unint64_t a5, int a6, int a7)
{
  v32 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  bzero(v29, 0x400uLL);
  if (Length && Length <= 255 && CFStringGetCString(theString, v29, 1024, 0x8000100u))
  {
    os_unfair_lock_lock((a1 + 32));
    if (*(a1 + 37) != a6)
    {
      *(a1 + 37) = a6;
      if (a6)
      {
        v15 = 26;
      }

      else
      {
        v15 = 27;
      }

      activityJournalWrite(a1, v15, 0, 0);
    }

    if (*(a1 + 12) != HIDWORD(a3))
    {
      *(a1 + 12) = HIDWORD(a3);
      v30 = 0u;
      v31 = 0u;
      if (a3 >> 39)
      {
        if (a3 >> 46)
        {
          if (a3 >> 53)
          {
            if (a3 >> 60)
            {
              LOBYTE(v30) = -16;
              *(&v30 + 1) = HIDWORD(a3);
              v16 = 5;
            }

            else
            {
              LOBYTE(v30) = HIBYTE(a3) | 0xE0;
              BYTE1(v30) = BYTE6(a3);
              BYTE2(v30) = BYTE5(a3);
              BYTE3(v30) = BYTE4(a3);
              v16 = 4;
            }
          }

          else
          {
            LOBYTE(v30) = BYTE6(a3) | 0xC0;
            BYTE1(v30) = BYTE5(a3);
            BYTE2(v30) = BYTE4(a3);
            v16 = 3;
          }
        }

        else
        {
          LOBYTE(v30) = BYTE5(a3) | 0x80;
          BYTE1(v30) = BYTE4(a3);
          v16 = 2;
        }
      }

      else
      {
        LOBYTE(v30) = BYTE4(a3);
        v16 = 1;
      }

      activityJournalWrite(a1, 10, &v30, v16);
    }

    if (*(a1 + 8) != a4)
    {
      *(a1 + 8) = a4;
      v30 = 0u;
      v31 = 0u;
      if (a4 > 0x7F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 21)
          {
            if (a4 >> 28)
            {
              LOBYTE(v30) = -16;
              *(&v30 + 1) = a4;
              v18 = 5;
            }

            else
            {
              LOBYTE(v30) = HIBYTE(a4) | 0xE0;
              BYTE1(v30) = BYTE2(a4);
              BYTE2(v30) = BYTE1(a4);
              BYTE3(v30) = a4;
              v18 = 4;
            }
          }

          else
          {
            LOBYTE(v30) = BYTE2(a4) | 0xC0;
            BYTE1(v30) = BYTE1(a4);
            BYTE2(v30) = a4;
            v18 = 3;
          }
        }

        else
        {
          LOBYTE(v30) = BYTE1(a4) | 0x80;
          BYTE1(v30) = a4;
          v18 = 2;
        }
      }

      else
      {
        LOBYTE(v30) = a4;
        v18 = 1;
      }

      activityJournalWrite(a1, 9, &v30, v18);
    }

    if (*(a1 + 24) != a5)
    {
      *(a1 + 24) = a5;
      activityJournalWriteVInt64(a1, 32, a5);
    }

    if (Length <= 20)
    {
      if (Length < 1)
      {
LABEL_42:
        v21 = atol(v29);
        if (v21)
        {
          v30 = 0u;
          v31 = 0u;
          if (a7)
          {
            v22 = 31;
          }

          else
          {
            v22 = 29;
          }

          if (v21 > 0x7F)
          {
            if (v21 >> 14)
            {
              if (v21 >> 21)
              {
                if (v21 >> 28)
                {
                  if (v21 >> 35)
                  {
                    if (v21 >> 42)
                    {
                      if (v21 >> 49)
                      {
                        if (HIBYTE(v21))
                        {
                          LOBYTE(v30) = -1;
                          *(&v30 + 1) = v21;
                          v23 = 9;
                        }

                        else
                        {
                          LOBYTE(v30) = -2;
                          BYTE1(v30) = BYTE6(v21);
                          BYTE2(v30) = BYTE5(v21);
                          BYTE3(v30) = BYTE4(v21);
                          BYTE4(v30) = BYTE3(v21);
                          BYTE5(v30) = BYTE2(v21);
                          BYTE6(v30) = BYTE1(v21);
                          v23 = 8;
                          BYTE7(v30) = v21;
                        }
                      }

                      else
                      {
                        LOBYTE(v30) = BYTE6(v21) | 0xFC;
                        BYTE1(v30) = BYTE5(v21);
                        BYTE2(v30) = BYTE4(v21);
                        BYTE3(v30) = BYTE3(v21);
                        BYTE4(v30) = BYTE2(v21);
                        BYTE5(v30) = BYTE1(v21);
                        v23 = 7;
                        BYTE6(v30) = v21;
                      }
                    }

                    else
                    {
                      LOBYTE(v30) = BYTE5(v21) | 0xF8;
                      BYTE1(v30) = BYTE4(v21);
                      BYTE2(v30) = BYTE3(v21);
                      BYTE3(v30) = BYTE2(v21);
                      BYTE4(v30) = BYTE1(v21);
                      BYTE5(v30) = v21;
                      v23 = 6;
                    }
                  }

                  else
                  {
                    LOBYTE(v30) = BYTE4(v21) | 0xF0;
                    BYTE1(v30) = BYTE3(v21);
                    BYTE2(v30) = BYTE2(v21);
                    BYTE3(v30) = BYTE1(v21);
                    BYTE4(v30) = v21;
                    v23 = 5;
                  }
                }

                else
                {
                  LOBYTE(v30) = BYTE3(v21) | 0xE0;
                  BYTE1(v30) = BYTE2(v21);
                  BYTE2(v30) = BYTE1(v21);
                  BYTE3(v30) = v21;
                  v23 = 4;
                }
              }

              else
              {
                LOBYTE(v30) = BYTE2(v21) | 0xC0;
                BYTE1(v30) = BYTE1(v21);
                BYTE2(v30) = v21;
                v23 = 3;
              }
            }

            else
            {
              LOBYTE(v30) = BYTE1(v21) | 0x80;
              BYTE1(v30) = v21;
              v23 = 2;
            }
          }

          else
          {
            LOBYTE(v30) = v21;
            v23 = 1;
          }

          v26 = &v30;
          v27 = a1;
LABEL_68:
          activityJournalWrite(v27, v22, v26, v23);
          os_unfair_lock_unlock((a1 + 32));
          goto LABEL_69;
        }
      }

      else
      {
        v19 = v29;
        while (1)
        {
          v20 = *v19++;
          if (v20 >= 0x3A)
          {
            break;
          }

          if (!--Length)
          {
            goto LABEL_42;
          }
        }
      }
    }

    if (a7)
    {
      v24 = 30;
    }

    else
    {
      v24 = 28;
    }

    v25 = strlen(v29);
    v26 = v29;
    v23 = v25 + 1;
    v27 = a1;
    v22 = v24;
    goto LABEL_68;
  }

  if (a7)
  {
    v17 = 13;
  }

  else
  {
    v17 = 11;
  }

  _SIActivityJournalAdd(a1, v17, a3, a4, a5, a6);
LABEL_69:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t cleanupPreProcContext(void *a1)
{
  if (a1[49] >= 1)
  {
    v2 = 0;
    do
    {
      CFRelease(*(a1[47] + 8 * v2));
      CFRelease(*(a1[48] + 8 * v2++));
    }

    while (v2 < a1[49]);
  }

  if (a1[55] >= 1)
  {
    v3 = 0;
    do
    {
      CFRelease(*(a1[53] + 8 * v3));
      CFRelease(*(a1[54] + 8 * v3++));
    }

    while (v3 < a1[55]);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[1] = 0;
  v6 = a1[41];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[41] = 0;
  v7 = a1[42];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[42] = 0;
  v8 = a1[43];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[43] = 0;
  v9 = a1[44];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[44] = 0;
  v10 = a1[45];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[45] = 0;
  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[6] = 0;
  v12 = a1[7];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[7] = 0;
  v13 = a1[40];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[40] = 0;
  v14 = a1[39];
  if (v14)
  {
    CFRelease(v14);
  }

  a1[39] = 0;
  v15 = a1[51];
  if (v15)
  {
    CFRelease(v15);
  }

  a1[51] = 0;
  v16 = a1[52];
  if (v16)
  {
    CFRelease(v16);
  }

  a1[52] = 0;
  v17 = a1[57];
  if (v17)
  {
    CFRelease(v17);
  }

  a1[57] = 0;
  v18 = a1[58];
  if (v18)
  {
    CFRelease(v18);
  }

  a1[58] = 0;
  v19 = a1[59];
  if (v19)
  {
    CFRelease(v19);
  }

  a1[59] = 0;
  v20 = a1[60];
  if (v20)
  {
    CFRelease(v20);
  }

  a1[60] = 0;
  v21 = a1[67];
  if (v21)
  {
    CFRelease(v21);
  }

  a1[67] = 0;
  v22 = a1[66];
  if (v22)
  {
    CFRelease(v22);
  }

  a1[66] = 0;
  v23 = a1[71];
  if (v23)
  {
    CFRelease(v23);
  }

  a1[71] = 0;
  v24 = a1[73];
  if (v24)
  {
    CFRelease(v24);
  }

  a1[73] = 0;
  v25 = a1[75];
  if (v25)
  {
    CFRelease(v25);
  }

  a1[75] = 0;
  v26 = a1[23];
  if (v26)
  {
    CFRelease(v26);
  }

  a1[23] = 0;
  v27 = a1[22];
  if (v27)
  {
    CFRelease(v27);
  }

  a1[22] = 0;
  v28 = a1[25];
  if (v28)
  {
    CFRelease(v28);
  }

  a1[25] = 0;
  v29 = a1[26];
  if (v29)
  {
    CFRelease(v29);
  }

  a1[26] = 0;
  v30 = a1[24];
  if (v30)
  {
    CFRelease(v30);
  }

  a1[24] = 0;
  v31 = a1[27];
  if (v31)
  {
    CFRelease(v31);
  }

  a1[27] = 0;
  v32 = a1[31];
  if (v32)
  {
    CFRelease(v32);
  }

  a1[31] = 0;
  v33 = a1[32];
  if (v33)
  {
    CFRelease(v33);
  }

  a1[32] = 0;
  v34 = a1[33];
  if (v34)
  {
    CFRelease(v34);
  }

  a1[33] = 0;
  v35 = a1[28];
  if (v35)
  {
    CFRelease(v35);
  }

  a1[28] = 0;
  v36 = a1[29];
  if (v36)
  {
    CFRelease(v36);
  }

  a1[29] = 0;
  v37 = a1[37];
  if (v37)
  {
    CFRelease(v37);
  }

  a1[37] = 0;
  v38 = a1[38];
  if (v38)
  {
    CFRelease(v38);
  }

  a1[38] = 0;
  v39 = a1[30];
  if (v39)
  {
    CFRelease(v39);
  }

  a1[30] = 0;
  if (a1[34])
  {
    icu_ctx_release();
  }

  if (a1[35])
  {
    icu_ctx_release();
  }

  result = a1[36];
  if (result)
  {

    return icu_ctx_release();
  }

  return result;
}

uint64_t SIGetAccumulatedSizeForGroup(uint64_t a1, const void *a2, unsigned int a3)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(*(a1 + 2088), a2);
    valuePtr = 0;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        a3 = valuePtr;
      }
    }
  }

  if (a3 && (!*(a1 + 2072) ? (v6 = 22) : (v6 = 256), a3 < v6))
  {
    return *(a1 + 8 * a3 + 7040);
  }

  else
  {
    return 0;
  }
}

void logIndexingEventInCoreAnalyticsWithBundleId(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v4 = dictionaryFromIndexingEvent(a1, a2, a3, a4);
  analytics_send_event();

  xpc_release(v4);
}

xpc_object_t dictionaryFromIndexingEvent(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  empty = xpc_dictionary_create_empty();
  if (a1 && CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    xpc_dictionary_set_string(empty, "bundleid", buffer);
  }

  xpc_dictionary_set_int64(empty, "itemcount", a2);
  xpc_dictionary_set_int64(empty, "indexingtime", a4);
  xpc_dictionary_set_int64(empty, "aggregatedatasize", a3);
  v9 = *MEMORY[0x1E69E9840];
  return empty;
}

void bumpWorkTime(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = *(a1 + 2152);
    v4 = v3 + CFAbsoluteTimeGetCurrent() - a2;
    *(a1 + 2152) = v4;
    v5 = *(a1 + 2160);
    if (v5)
    {
      v6 = *(a1 + 2176);
      v7 = v3 >= v6 || v4 < v6;
      if (!v7 || ((v8 = *(a1 + 2184), v3 < v8) ? (v9 = v4 < v8) : (v9 = 1), !v9))
      {
        v10 = *(a1 + 2168);

        v5(v10);
      }
    }
  }
}

uint64_t __flush_updateset_locked_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  if ((*(v6 + 4) & 2) != 0)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136315650;
      *&buf[4] = "flush_updateset_locked_block_invoke";
      v73 = 1024;
      *v74 = 8091;
      *&v74[4] = 1024;
      *&v74[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Bad sdb in db_updateset_iterate at page %d", buf, 0x18u);
    }

    *__error() = v13;
    v15 = *(*(a1 + 56) + 800);
    if (v15)
    {
      result = v15;
    }

    else
    {
      result = 22;
    }

    goto LABEL_82;
  }

  db_writer_yield_lock(v6 + 584);
  *v71 = 0;
  v11 = *(a3 + 4);
  if ((v11 & 0x80) != 0)
  {
    if (v11 >= 0xC0)
    {
      if (v11 >= 0xE0)
      {
        if (v11 >= 0xF0)
        {
          v18 = 6;
          v19 = 7;
          v20 = 8;
          if (v11 == 255)
          {
            v20 = 9;
          }

          if (v11 >= 0xFE)
          {
            v19 = v20;
          }

          if (v11 >= 0xFC)
          {
            v18 = v19;
          }

          if (v11 >= 0xF8)
          {
            v12 = v18;
          }

          else
          {
            v12 = 5;
          }
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  v21 = (a3 + 4 + v12);
  v22 = *v21;
  if (*v21 < 0)
  {
    if (v22 >= 0xC0)
    {
      if (v22 >= 0xE0)
      {
        v67 = __si_assert_copy_extra_3233(0, -1);
        v68 = v67;
        v69 = "";
        if (v67)
        {
          v69 = v67;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v69);
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

      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v22 = v21[v23];
  }

  v24 = *(a1 + 56);
  v25 = *(v24 + 804) & (v22 >> 5) & 1;
  v26 = *(v24 + 856);
  v27 = *(v26 + 8);
  if (!v27)
  {
    v40 = ++*(*(*(a1 + 32) + 8) + 24);
    v41 = *(a1 + 64);
    if (v40 < v41 && (v40 ? (v42 = v41 == 0x7FFFFFFF) : (v42 = 1), v42 || (*(*(v24 + 992) + 56) + 16 * *(*(v24 + 992) + 48)) >= 0x80000))
    {
      v44 = *(a1 + 68) & 0x4000;
      *buf = 0;
      v45 = _page_alloc_fetch(v24, buf, 0, &v71[1], v71, v44 | 4u);
      if (!v45)
      {
        free(*buf);
        v52 = v71[1];
        v24 = *(a1 + 56);
        goto LABEL_63;
      }

      v46 = v45;
      v47 = *__error();
      v48 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "flush_updateset_locked_block_invoke";
        v73 = 1024;
        *v74 = 8114;
        *&v74[4] = 2048;
        *&v74[6] = a2;
        *&v74[14] = 2048;
        *&v74[16] = a2;
        *&v74[24] = 2048;
        *&v74[26] = v25;
        v75 = 2048;
        v76 = v71[1];
        v77 = 1024;
        LODWORD(v78) = v46;
        _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: Failed page allocation, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", buf, 0x40u);
      }

      *__error() = v47;
      result = v46;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    goto LABEL_82;
  }

  v28 = *(v26 + 16);
  if (v28 < v27)
  {
    v29 = v26 + 16 * v28;
    v31 = *(v29 + 20);
    v30 = v29 + 20;
    if (v31 == a2)
    {
      v32 = *(v30 + 12);
      if (v25 == v32 >> 28)
      {
        goto LABEL_61;
      }
    }
  }

  v33 = v27;
  if (v27 < 1)
  {
    v43 = 0;
    v35 = 0;
    goto LABEL_57;
  }

  v34 = 0;
  while (1)
  {
    v35 = (v27 + v34) >> 1;
    v36 = v26 + 20 + 16 * v35;
    v37 = v25 - (*(v36 + 12) >> 28);
    if (!v37)
    {
      break;
    }

    v38 = v37;
    v39 = (v27 + v34) >> 1;
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_36:
    v27 = v39;
    if (v34 >= v39)
    {
      v43 = v38 > 0;
      goto LABEL_57;
    }
  }

  v38 = a2 - *v36;
  v39 = (v27 + v34) >> 1;
  if (v38 < 0)
  {
    goto LABEL_36;
  }

LABEL_41:
  if (v38)
  {
    v34 = v35 + 1;
    v39 = v27;
    goto LABEL_36;
  }

  v43 = 0;
LABEL_57:
  v49 = v33 - 1 > v35 && v43;
  v50 = v35 + v49;
  v51 = v26 + 16 * v50;
  *(v26 + 16) = v50;
  v30 = v51 + 20;
  v32 = *(v51 + 32);
LABEL_61:
  v52 = *(v30 + 8);
  v71[0] = v32 & 0xFFFFFFF;
  v71[1] = v52;
  if (*(*(*(a1 + 40) + 8) + 24) != v52)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

LABEL_63:
  *(*(*(a1 + 40) + 8) + 24) = v52;
  ++*(*(*(a1 + 48) + 8) + 24);
  v53 = *(a1 + 68) & 0x4000;
  if (!a4)
  {
    v54 = v71[0];
    result = _real_page_insert_obj(v24, a3, v53, v52, v71[0]);
    if (result == 17)
    {
      if ((a5 & 8) == 0)
      {
        goto LABEL_71;
      }

      result = _real_page_update_obj(*(a1 + 56), a3, a2, v25, *(a1 + 68) & 0x4000u | a5, v52, v54);
      if (!result)
      {
        goto LABEL_82;
      }

      v55 = result;
      v56 = *__error();
      v57 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "flush_updateset_locked_block_invoke";
        v73 = 1024;
        *v74 = 8150;
        *&v74[4] = 2048;
        *&v74[6] = a2;
        *&v74[14] = 2048;
        *&v74[16] = a2;
        *&v74[24] = 2048;
        *&v74[26] = v25;
        v75 = 2048;
        v76 = v52;
        v77 = 1024;
        LODWORD(v78) = v55;
        v58 = "%s:%d: Failed update, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d";
LABEL_88:
        _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x40u);
      }

LABEL_76:
      *__error() = v56;
LABEL_77:
      v59 = *__error();
      v60 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v66 = "add";
        *buf = 136316930;
        *&buf[4] = "flush_updateset_locked_block_invoke";
        *v74 = 8156;
        v73 = 1024;
        *&v74[4] = 2080;
        if (a4)
        {
          v66 = "update";
        }

        *&v74[6] = v66;
        *&v74[14] = 2048;
        *&v74[16] = a2;
        *&v74[24] = 2048;
        *&v74[26] = a2;
        v75 = 2048;
        v76 = v25;
        v77 = 2048;
        v78 = v52;
        v79 = 1024;
        v80 = v55;
        _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: Failed %s, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", buf, 0x4Au);
      }

      *__error() = v59;
      v61 = _page_delete_obj_by_oid_and_type(*(a1 + 56), a2, v25, v52, v54, *(a1 + 68) & 0x4000);
      v62 = db_updateset_delete_object(*(*(a1 + 56) + 992), a2, v25);
      if (v61 | v62)
      {
        v63 = v62;
        v64 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 134219264;
          *&buf[4] = a2;
          v73 = 2048;
          *v74 = a2;
          *&v74[8] = 2048;
          *&v74[10] = v25;
          *&v74[18] = 2048;
          *&v74[20] = v52;
          *&v74[28] = 1024;
          *&v74[30] = v61;
          v75 = 1024;
          LODWORD(v76) = v63;
          _os_log_fault_impl(&dword_1C278D000, v64, OS_LOG_TYPE_FAULT, "Failed delete after failed add/update, oid:0x%llx(%lld), type:%ld, pgnum:%ld, pageRc:%d updateSetRc:%d", buf, 0x36u);
        }
      }

      result = v55;
      goto LABEL_82;
    }

LABEL_72:
    v55 = result;
    if (!result)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  v54 = v71[0];
  result = _real_page_update_obj(v24, a3, a2, v25, v53 | a5, v52, v71[0]);
  if (result != 2)
  {
    goto LABEL_72;
  }

  if ((a5 & 8) == 0)
  {
LABEL_71:
    result = 0;
    goto LABEL_82;
  }

  result = _real_page_insert_obj(*(a1 + 56), a3, *(a1 + 68) & 0x4000, v52, v54);
  if (result)
  {
    v55 = result;
    v56 = *__error();
    v57 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "flush_updateset_locked_block_invoke";
      v73 = 1024;
      *v74 = 8138;
      *&v74[4] = 2048;
      *&v74[6] = a2;
      *&v74[14] = 2048;
      *&v74[16] = a2;
      *&v74[24] = 2048;
      *&v74[26] = v25;
      v75 = 2048;
      v76 = v52;
      v77 = 1024;
      LODWORD(v78) = v55;
      v58 = "%s:%d: Failed insert, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d";
      goto LABEL_88;
    }

    goto LABEL_76;
  }

LABEL_82:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t db_writer_yield_lock(uint64_t a1)
{
  HIDWORD(v3) = qos_class_self() - 9;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1C2BFF8F0[v2];
  }

  if (!*(a1 + 208) || pthread_mutex_lock(a1))
  {
    return 0;
  }

  v5 = 16 * v4 + 64;
  while (1)
  {
    v6 = *(a1 + v5);
    if (v6)
    {
      if (*(v6 + 48) == 4)
      {
        break;
      }
    }

    v5 += 16;
    if (v5 == 160)
    {
      pthread_mutex_unlock(a1);
      return 0;
    }
  }

  v7 = 1;
  *(a1 + 212) = 1;
  db_rwlock_wakeup(a1, 1, 1);
  pthread_mutex_unlock(a1);
  db_upgrade_lock(a1);
  return v7;
}

void std::__tree<unsigned int>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned int>::destroy(*a1);
    std::__tree<unsigned int>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

uint64_t flush_updateset_locked(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v15 = 0;
  v14[2] = 0x2000000000;
  v12[0] = 0;
  v12[1] = v12;
  v13 = 0;
  v12[2] = 0x2000000000;
  v10[0] = 0;
  v10[1] = v10;
  v11 = 0;
  v10[2] = 0x2000000000;
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(7);
    v4 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v3, v4, "flush_updateset_locked: start callback", buf, 2u);
    }

    *__error() = v2;
    (*(a1 + 1008))(*(a1 + 1000), 0);
  }

  v5 = *(*(a1 + 992) + 16);
  v17[0] = 0;
  v17[1] = 0;
  *buf = v17;
  if (v5)
  {
    operator new();
  }

  std::__tree<unsigned int>::destroy(v17[0]);
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(7);
    v8 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v7, v8, "flush_updateset_locked: end callback", buf, 2u);
    }

    *__error() = v6;
    (*(a1 + 1008))(*(a1 + 1000), 1);
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  return 0;
}

uint64_t _page_update_obj(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, __int16 a5)
{
  v96 = *MEMORY[0x1E69E9840];
  __dst = 0;
  value_out = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v84 = 0;
  result = _page_fetch_with_fd(a1, &value_out, a3, a4, a5 & 0x4000, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    goto LABEL_28;
  }

  if ((*(value_out + 12) & 0xF0) != 0)
  {
    v71 = *__error();
    v72 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v91 = "_page_update_obj";
      v92 = 1024;
      v93 = 5392;
      v94 = 1024;
      LODWORD(v95) = a3;
      _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: page_update_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v71;
    v73 = __si_assert_copy_extra_3233(0, -1);
    v74 = v73;
    v75 = "";
    if (v73)
    {
      v75 = v73;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5393, v75);
LABEL_139:
    free(v74);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v11 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    v13 = *(a2 + 4);
    if (v13 > 0xBF)
    {
      if (v13 > 0xDF)
      {
        if (v13 > 0xEF)
        {
          if (v13 > 0xF7)
          {
            if (v13 > 0xFB)
            {
              if (v13 > 0xFD)
              {
                if (v13 == 255)
                {
                  v11 = *(a2 + 5);
                  v12 = 9;
                }

                else
                {
                  v11 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v12 = 8;
                }
              }

              else
              {
                v11 = ((v11 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v12 = 7;
              }
            }

            else
            {
              v11 = ((v11 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v12 = 6;
            }
          }

          else
          {
            v11 = ((v11 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v12 = 5;
          }
        }

        else
        {
          v11 = ((v11 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v12 = 4;
        }
      }

      else
      {
        v11 = ((v11 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v12 = 3;
      }
    }

    else
    {
      v12 = 2;
      v11 = *(a2 + 5) | ((v11 & 0x3F) << 8);
    }
  }

  else
  {
    v12 = 1;
  }

  v14 = (a2 + 4 + v12);
  v15 = *v14;
  if (*v14 < 0)
  {
    if (v15 >= 0xC0)
    {
      if (v15 >= 0xE0)
      {
        goto LABEL_115;
      }

      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v15 = v14[v16];
  }

  v17 = *(a1 + 804) & (v15 >> 5);
  v87 = value_out + *(value_out + 2);
  slot_for_oid_and_type = find_slot_for_oid_and_type(a1, value_out, v11, v17 & 1, &__dst, 0, 1);
  if (slot_for_oid_and_type)
  {
    v19 = slot_for_oid_and_type;
    page_release(a1, value_out, a3, 0, 0);
    result = v19;
    goto LABEL_28;
  }

  v83 = a2;
  if ((a5 & 2) != 0)
  {
    v21 = __dst + 4;
    if (*(__dst + 4) < 0)
    {
      v23 = *(__dst + 4);
      if (v23 >= 0xC0)
      {
        if (v23 >= 0xE0)
        {
          if (v23 >= 0xF0)
          {
            if (v23 >= 0xF8)
            {
              if (v23 >= 0xFC)
              {
                if (v23 >= 0xFE)
                {
                  v58 = v23 == 255;
                  v22 = 8;
                  if (v58)
                  {
                    v22 = 9;
                  }
                }

                else
                {
                  v22 = 7;
                }
              }

              else
              {
                v22 = 6;
              }
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          v22 = 3;
        }
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      v22 = 1;
    }

    if ((v21[v22] & 0x80000000) == 0)
    {
      v24 = 1;
      goto LABEL_52;
    }

    v25 = v21[v22];
    if (v25 < 0xC0)
    {
      v24 = 2;
      goto LABEL_52;
    }

    if (v25 < 0xE0)
    {
      v24 = 3;
LABEL_52:
      v26 = v22 + v24;
      v27 = &v21[v26];
      v28 = v21[v26];
      v29 = v21[v26];
      if (v28 < 0)
      {
        v30 = v26 + 1;
        if (v28 > 0xBFu)
        {
          if (v28 > 0xDFu)
          {
            if (v28 > 0xEFu)
            {
              if (v28 > 0xF7u)
              {
                if (v28 > 0xFBu)
                {
                  if (v28 > 0xFDu)
                  {
                    if (v28 == 255)
                    {
                      v29 = *&v21[v30];
                      goto LABEL_69;
                    }

                    v31 = (v21[v30] << 48) | (v27[2] << 40) | (v27[3] << 32) | (v27[4] << 24) | (v27[5] << 16) | (v27[6] << 8);
                    v32 = v27[7];
                  }

                  else
                  {
                    v31 = ((v29 & 1) << 48) | (v21[v30] << 40) | (v27[2] << 32) | (v27[3] << 24) | (v27[4] << 16) | (v27[5] << 8);
                    v32 = v27[6];
                  }
                }

                else
                {
                  v31 = ((v29 & 3) << 40) | (v21[v30] << 32) | (v27[2] << 24) | (v27[3] << 16) | (v27[4] << 8);
                  v32 = v27[5];
                }
              }

              else
              {
                v31 = ((v29 & 7) << 32) | (v21[v30] << 24) | (v27[2] << 16) | (v27[3] << 8);
                v32 = v27[4];
              }
            }

            else
            {
              v31 = ((v29 & 0xF) << 24) | (v21[v30] << 16) | (v27[2] << 8);
              v32 = v27[3];
            }
          }

          else
          {
            v31 = ((v29 & 0x1F) << 16) | (v21[v30] << 8);
            v32 = v27[2];
          }

          v29 = v31 | v32;
          goto LABEL_69;
        }

        v29 = v21[v30] | ((v29 & 0x3F) << 8);
      }

LABEL_69:
      ldb_update_indexid(&v83, v29);
      goto LABEL_70;
    }

LABEL_115:
    v63 = __si_assert_copy_extra_3233(0, -1);
    v64 = v63;
    v65 = "";
    if (v63)
    {
      v65 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v65);
    free(v64);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_70:
  v33 = value_out;
  v34 = *(value_out + 3);
  if ((v34 & 8) != 0)
  {
    v76 = *__error();
    v77 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v91 = "_page_update_obj";
      v92 = 1024;
      v93 = 5437;
      v94 = 1024;
      LODWORD(v95) = a3;
      _os_log_error_impl(&dword_1C278D000, v77, OS_LOG_TYPE_ERROR, "%s:%d: page_update_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v76;
    v78 = __si_assert_copy_extra_3233(0, -1);
    v74 = v78;
    v79 = "";
    if (v78)
    {
      v79 = v78;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5438, v79);
    goto LABEL_139;
  }

  v35 = v83;
  v36 = *v83;
  if (a4 - 20 <= (*v83 + 4))
  {
    v37 = test_compress_obj(a1, a4, v83);
    v33 = value_out;
    if (v37)
    {
      v38 = v37;
      page_release(a1, value_out, a3, 0, 0);
      if (v35 != a2)
      {
        free(v35);
      }

      result = v38;
      goto LABEL_28;
    }

    v34 = *(value_out + 3) | 4;
    *(value_out + 3) = v34;
    v36 = *v35;
  }

  v39 = v36 - *__dst;
  v40 = v33[1];
  v41 = v33[2] + v39;
  if (v41 > v40)
  {
    if ((v34 & 0xC) == 0)
    {
      goto LABEL_91;
    }

    if (a3)
    {
      v42 = *(a1 + 928);
      v43 = v42[13].n128_u32[3];
      if (v43 < 1)
      {
LABEL_84:
        atomic_fetch_add(&v42[14].n128_i32[1], 1u);
      }

      else
      {
        v44 = 0;
        while (v42[15].n128_u32[v44 + 3] != a3)
        {
          if (v43 == ++v44)
          {
            goto LABEL_84;
          }
        }

        atomic_fetch_add(&v42[13].n128_i32[2], 1u);
        v53 = &v42[3 * v44];
        v54 = v53[18].n128_u32[0];
        v82 = v53[17];
        db_cache_mru(v42, v44);
        if (v54)
        {
          v58 = v82.n128_u64[1] == 0;
        }

        else
        {
          v58 = 0;
        }

        if (v58 || (*(v82.n128_u64[0] + 12) & 4) == 0 || *(v82.n128_u64[0] + 4) <= *(v82.n128_u64[0] + 16))
        {
          v59 = *(value_out + 2);
          v35 = v83;
          v60 = (*(a1 + 804) & 2) != 0 ? 114688 : 196608;
          if (v59 + *v83 + 4 <= v60 && !page_resize(a1, &value_out, 0, v59 + v39, &__dst, v55, v56, v57, &v87))
          {
            v61 = (*__dst + 4);
            v45 = __dst + v61;
            v86 = __dst + v61;
            if (__dst + v61 <= v87)
            {
              v81 = v40;
              v62 = malloc_type_malloc(v61, 0x100004052888210uLL);
              if (v62)
              {
                __src = v62;
                memcpy(v62, __dst, (*__dst + 4));
                v46 = v87;
LABEL_88:
                memmove(&v45[v39], v45, v46 - v45);
                memcpy(__dst, v35, (*v35 + 4));
                v47 = value_out;
                *(value_out + 2) += v39;
                if (v41 > v81)
                {
                  if (page_compress(a1, v47, &v84, &v85, (*(a1 + 804) & 2) != 0))
                  {
                    memmove(v45, &v45[v39], v87 - v45);
                    memcpy(__dst, __src, (*__src + 4));
                    *(value_out + 2) -= v39;
                    free(__src);
LABEL_91:
                    page_release(a1, value_out, a3, 0, 0);
                    result = page_split(a1, v35, a3, a4, a5 & 0x4000);
                    if (v35 != a2)
                    {
                      v51 = result;
                      free(v35);
                      result = v51;
                    }

                    goto LABEL_28;
                  }

                  page_resize(a1, &value_out, 0, v85, &__dst, v48, v49, v50, &v87);
                  v47 = value_out;
                }

                set_offset_hint(a1, v47, __dst);
                if (dword_1EBF46AE8 >= 5)
                {
                  v69 = *__error();
                  v70 = _SILogForLogForCategory(7);
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v91 = (a1 + 324);
                    v92 = 1024;
                    v93 = a3;
                    _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "%s : update pgnum %d\n", buf, 0x12u);
                  }

                  *__error() = v69;
                  v52 = __src;
                  if (!__src)
                  {
                    goto LABEL_98;
                  }
                }

                else
                {
                  v52 = __src;
                  if (!__src)
                  {
LABEL_98:
                    page_release_dirty_compressed(a1, value_out, v84, a3, a5 & 0x4000);
                    if (v35 != a2)
                    {
                      free(v35);
                    }

                    result = 0;
                    goto LABEL_28;
                  }
                }

                free(v52);
                goto LABEL_98;
              }
            }

            goto LABEL_119;
          }
        }
      }
    }

    v35 = v83;
    goto LABEL_91;
  }

  v81 = v33[1];
  v45 = __dst + (*__dst + 4);
  v86 = v45;
  v46 = v87;
  if (v45 <= v87)
  {
    __src = 0;
    goto LABEL_88;
  }

LABEL_119:
  v66 = *__error();
  v67 = _SILogForLogForCategory(7);
  v68 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v67, v68))
  {
    *buf = 136315650;
    v91 = (a1 + 324);
    v92 = 1024;
    v93 = a3;
    v94 = 2048;
    v95 = __dst - value_out;
    _os_log_impl(&dword_1C278D000, v67, v68, "%s : page_update_obj: ERR: page at num 0x%x has a bad object pgnum %p\n", buf, 0x1Cu);
  }

  *__error() = v66;
  if (v35 != a2)
  {
    free(v35);
  }

  page_release(a1, value_out, a3, 0, 0);
  result = 22;
LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _real_page_update_obj(uint64_t a1, _DWORD *a2, unint64_t a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  result = _page_update_obj(a1, a2, a6, a7, a5);
  if (result == 2)
  {
    if ((*(a1 + 804) & 1) == 0)
    {
      return 2;
    }

    v55 = a2;
    v15 = a4 != 1;
    v16 = *(a1 + 856);
    v17 = *(v16 + 8);
    if (!v17)
    {
      return 2;
    }

    v18 = *(v16 + 16);
    if (v18 < v17)
    {
      v19 = v16 + 16 * v18;
      v21 = *(v19 + 20);
      v20 = v19 + 20;
      if (v21 == a3)
      {
        v22 = *(v20 + 12);
        if (v15 == v22 >> 28)
        {
          goto LABEL_23;
        }
      }
    }

    v23 = v17;
    if (v17 < 1)
    {
      v30 = 0;
      v25 = 0;
      goto LABEL_19;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v17 + v24) >> 1;
      v26 = v16 + 20 + 16 * v25;
      v27 = v15 - (*(v26 + 12) >> 28);
      if (v27)
      {
        v28 = v27;
        v29 = (v17 + v24) >> 1;
        if (v28 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v28 = a3 - *v26;
        v29 = (v17 + v24) >> 1;
        if (v28 < 0)
        {
          goto LABEL_9;
        }
      }

      if (!v28)
      {
        v30 = 0;
LABEL_19:
        v31 = v23 - 1 > v25 && v30;
        v32 = v25 + v31;
        v33 = v16 + 16 * v32;
        *(v16 + 16) = v32;
        v20 = v33 + 20;
        v22 = *(v33 + 32);
LABEL_23:
        v34 = *(v20 + 8);
        v54 = 0;
        if (page_find_oid_with_flags(a1, v34, v22 & 0xFFFFFFF, a3, v15, &v54, 0, 0))
        {
          return 2;
        }

        v35 = v54 + 4;
        v36 = *(v54 + 4);
        if (*(v54 + 4) < 0)
        {
          v38 = *(v54 + 4);
          if (v38 > 0xBF)
          {
            if (v38 > 0xDF)
            {
              if (v38 > 0xEF)
              {
                if (v38 > 0xF7)
                {
                  if (v38 > 0xFB)
                  {
                    if (v38 > 0xFD)
                    {
                      if (v38 == 255)
                      {
                        v36 = *(v54 + 5);
                        v37 = 9;
                      }

                      else
                      {
                        v36 = (*(v54 + 5) << 48) | (*(v54 + 6) << 40) | (*(v54 + 7) << 32) | (*(v54 + 8) << 24) | (*(v54 + 9) << 16) | (*(v54 + 10) << 8) | *(v54 + 11);
                        v37 = 8;
                      }
                    }

                    else
                    {
                      v36 = ((v36 & 1) << 48) | (*(v54 + 5) << 40) | (*(v54 + 6) << 32) | (*(v54 + 7) << 24) | (*(v54 + 8) << 16) | (*(v54 + 9) << 8) | *(v54 + 10);
                      v37 = 7;
                    }
                  }

                  else
                  {
                    v36 = ((v36 & 3) << 40) | (*(v54 + 5) << 32) | (*(v54 + 6) << 24) | (*(v54 + 7) << 16) | (*(v54 + 8) << 8) | *(v54 + 9);
                    v37 = 6;
                  }
                }

                else
                {
                  v36 = ((v36 & 7) << 32) | (*(v54 + 5) << 24) | (*(v54 + 6) << 16) | (*(v54 + 7) << 8) | *(v54 + 8);
                  v37 = 5;
                }
              }

              else
              {
                v36 = ((v36 & 0xF) << 24) | (*(v54 + 5) << 16) | (*(v54 + 6) << 8) | *(v54 + 7);
                v37 = 4;
              }
            }

            else
            {
              v36 = ((v36 & 0x1F) << 16) | (*(v54 + 5) << 8) | *(v54 + 6);
              v37 = 3;
            }
          }

          else
          {
            v37 = 2;
            v36 = *(v54 + 5) | ((v36 & 0x3F) << 8);
          }
        }

        else
        {
          v37 = 1;
        }

        v39 = v37 + 1;
        v40 = *(v35 + v37);
        if (*(v35 + v37) < 0)
        {
          if (v40 > 0xBF)
          {
            if (v40 >= 0xE0)
            {
              v51 = __si_assert_copy_extra_3233(0, -1);
              v52 = v51;
              v53 = "";
              if (v51)
              {
                v53 = v51;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v53);
              free(v52);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              MEMORY[0xC00] = -559038737;
              abort();
            }

            v41 = (v35 + v37 + 2);
            v42 = 3;
          }

          else
          {
            v41 = (v35 + v39);
            v42 = 2;
          }

          v40 = *v41;
          v39 = v37 + v42;
        }

        v43 = (v35 + v39);
        v44 = *(v35 + v39);
        v45 = *(v35 + v39);
        if (v44 < 0)
        {
          v46 = v39 + 1;
          if (v44 <= 0xBFu)
          {
            v45 = *(v35 + v46) | ((v45 & 0x3F) << 8);
            goto LABEL_66;
          }

          if (v44 <= 0xDFu)
          {
            v47 = ((v45 & 0x1F) << 16) | (*(v35 + v46) << 8);
            v48 = v43[2];
            goto LABEL_65;
          }

          if (v44 <= 0xEFu)
          {
            v47 = ((v45 & 0xF) << 24) | (*(v35 + v46) << 16) | (v43[2] << 8);
            v48 = v43[3];
            goto LABEL_65;
          }

          if (v44 <= 0xF7u)
          {
            v47 = ((v45 & 7) << 32) | (*(v35 + v46) << 24) | (v43[2] << 16) | (v43[3] << 8);
            v48 = v43[4];
            goto LABEL_65;
          }

          if (v44 <= 0xFBu)
          {
            v47 = ((v45 & 3) << 40) | (*(v35 + v46) << 32) | (v43[2] << 24) | (v43[3] << 16) | (v43[4] << 8);
            v48 = v43[5];
            goto LABEL_65;
          }

          if (v44 <= 0xFDu)
          {
            v47 = ((v45 & 1) << 48) | (*(v35 + v46) << 40) | (v43[2] << 32) | (v43[3] << 24) | (v43[4] << 16) | (v43[5] << 8);
            v48 = v43[6];
            goto LABEL_65;
          }

          if (v44 == 255)
          {
            v45 = *(v35 + v46);
          }

          else
          {
            v47 = (*(v35 + v46) << 48) | (v43[2] << 40) | (v43[3] << 32) | (v43[4] << 24) | (v43[5] << 16) | (v43[6] << 8);
            v48 = v43[7];
LABEL_65:
            v45 = v47 | v48;
          }
        }

LABEL_66:
        v49 = a2;
        if ((a5 & 2) != 0)
        {
          ldb_update_indexid(&v55, v45);
          v49 = v55;
        }

        if (_page_delete_obj_by_oid_and_type(a1, v36, *(a1 + 804) & (v40 >> 5) & 1, v34, v22 & 0xFFFFFFF, a5 & 0x4000))
        {
          result = 2;
          if (v49 == a2)
          {
            return result;
          }
        }

        else
        {
          result = _real_page_insert_obj(a1, v49, a5, a6, a7);
          if (v49 == a2)
          {
            return result;
          }
        }

        v50 = result;
        free(v49);
        return v50;
      }

      v24 = v25 + 1;
      v29 = v17;
LABEL_9:
      v17 = v29;
      if (v24 >= v29)
      {
        v30 = v28 > 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t page_release_dirty_compressed(uint64_t a1, _DWORD *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (!a2)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "page_release_dirty_compressed";
      *&buf[12] = 1024;
      *&buf[14] = 3498;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Failed releasing null page", buf, 0x12u);
    }

    *__error() = v22;
    result = 22;
LABEL_27:
    v27 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a3)
  {
    v7 = *(a1 + 928);
    *buf = 0;
    *&buf[8] = 0;
    v8 = atomic_load((v7 + 248));
    if (v8 > a4)
    {
      *&buf[8] = 0;
      *buf = *v7;
      *&buf[8] = a4;
      v9 = a4;
      v10 = a2;
      v11 = a5;
      _cache_remove(buf);
      a5 = v11;
      a2 = v10;
      a4 = v9;
    }

    v12 = *(a1 + 928);
    v13 = v12[55];
    if (v13 < 1)
    {
LABEL_10:
      v18 = 4;
      if ((a2[3] & 4) == 0)
      {
        v18 = 1;
      }

      v19 = a2[v18];
      v20 = a4;
      _add_dirty_chunk(a1, a4, v19, (a5 >> 14) & 1);
      page_cache_add(*(a1 + 928), &v34, v20, 0);
      if (sdb_pwrite(*(a1 + 848), a3, v19, v20 << *(a1 + 12)) == v19)
      {
        free(v34);
        free(a3);
        result = 0;
      }

      else
      {
        *(a1 + 4) |= 2u;
        v25 = *__error();
        v26 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "page_release_dirty_compressed";
          *&buf[12] = 1024;
          *&buf[14] = 3537;
          _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing page", buf, 0x12u);
        }

        *__error() = v25;
        if (!*__error())
        {
          *__error() = 22;
        }

        *(a1 + 800) = *__error();
        result = *__error();
      }
    }

    else
    {
      v14 = (v12 + 63);
      v15 = v12 + 72;
      while (1)
      {
        v17 = *v14++;
        v16 = v17;
        if (*(v15 - 2) == a2)
        {
          break;
        }

        if (v16 == a4)
        {
          v28 = __si_assert_copy_extra_332();
          v29 = v28;
          v30 = "";
          if (v28)
          {
            v30 = v28;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1089, "cache->cache_pgnum[i] != pgnum", v30);
          goto LABEL_31;
        }

        v15 += 12;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      if (v16 != a4)
      {
        v32 = __si_assert_copy_extra_332();
        v29 = v32;
        v33 = "";
        if (v32)
        {
          v33 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1081, "cache->cache_pgnum[i] == pgnum", v33);
LABEL_31:
        free(v29);
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

      free(*(v15 - 1));
      result = 0;
      *(v15 - 1) = a3;
      *v15 = 1;
    }

    goto LABEL_27;
  }

  v24 = *MEMORY[0x1E69E9840];

  return page_release(a1, a2);
}

uint64_t _flush_cache_entry(uint64_t a1, unsigned int **a2, unsigned int *a3, unsigned int a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (!*a3 || (v8 = (a3 + 2), (v7 = *(a3 + 1)) == 0) || !a3[6])
  {
    if (a2 && (v17 = *(a3 + 1)) != 0)
    {
      v18 = 0;
      *a2 = v17;
      *(a3 + 1) = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_128;
  }

  if ((*(a1 + 804) & 8) != 0)
  {
    v114 = __si_assert_copy_extra_3233(0, -1);
    v115 = v114;
    v116 = "";
    if (v114)
    {
      v116 = v114;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 7910, "(dst->const_flags & 0x8) == 0", v116);
LABEL_161:
    free(v115);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v10 = 16;
  if ((*(v7 + 12) & 4) == 0)
  {
    v10 = 4;
  }

  v11 = *(v7 + v10);
  v12 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v13 = atomic_load((v12 + 248));
  if (v13 > v6)
  {
    *&buf[8] = 0;
    *buf = *v12;
    *&buf[8] = v6;
    v14 = a4;
    _cache_remove(buf);
    a4 = v14;
  }

  v15 = (a3 + 4);
  if (*(a3 + 2))
  {
    v16 = *a3;
    goto LABEL_116;
  }

  v19 = (*v8)[3];
  if ((v19 & 0xC) == 0 || (*(a1 + 804) & 8) != 0 || !*a3 || (v19 & 4) == 0 || !a3[6])
  {
    goto LABEL_115;
  }

  v20 = a4 & 0x4000;
  v133 = (*v8)[4];
  v134 = a4;
  v135 = v11;
  for (i = v20; ; v20 = i)
  {
LABEL_22:
    v21 = (*(a1 + 804) >> 1) & 1;
    v22 = *v8;
    v23 = (*v8)[2];
    if (v23 >= 21)
    {
      v24 = (*(v22 + 20) + 4);
      if (v22 + 20 + v24 >= v22 + v23 && v133 - 20 < v24)
      {
        LOBYTE(v21) = ((*(a1 + 804) & 2) != 0) | 2;
      }
    }

    v26 = page_compress(a1, v22, v15, 0, v21);
    if (v26 != 7)
    {
      v18 = v26;
      a4 = v134;
      if (v26)
      {
        v95 = *__error();
        v96 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          v129 = *a3;
          v130 = *(*(a3 + 1) + 8);
          *buf = 136316418;
          *&buf[4] = "db_compress_cache";
          *&buf[12] = 1024;
          *&buf[14] = 8305;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v149 = 1024;
          v150 = v129;
          v151 = 1024;
          v152 = v130;
          v153 = 1024;
          v154 = v133;
          _os_log_error_impl(&dword_1C278D000, v96, OS_LOG_TYPE_ERROR, "%s:%d: ERR: page compression error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
        }

        *__error() = v95;
        a4 = v134;
        if (v18)
        {
          goto LABEL_155;
        }
      }

LABEL_115:
      v16 = *a3;
      if (!*(a3 + 2))
      {
        _add_dirty_chunk(a1, v16, v11, (a4 >> 14) & 1);
        if ((*(a1 + 4) & 0x80) != 0)
        {
          db2_swap_page(*v8);
        }

        v97 = sdb_pwrite(*(a1 + 848), *(a3 + 1), v11, *a3 << *(a1 + 12));
        if ((*(a1 + 4) & 0x80) != 0)
        {
          v102 = v97;
          db2_swap_page(*v8);
          v97 = v102;
        }

        goto LABEL_117;
      }

LABEL_116:
      _add_dirty_chunk(a1, v16, v11, (a4 >> 14) & 1);
      v97 = sdb_pwrite(*(a1 + 848), *(a3 + 2), v11, *a3 << *(a1 + 12));
LABEL_117:
      if (v97 == v11)
      {
        if (*v15)
        {
          free(*v15);
          *v15 = 0;
        }

        v18 = 0;
        if (a2)
        {
          *a2 = *v8;
          *v8 = 0;
        }

        else
        {
          a3[6] = 0;
        }
      }

      else
      {
        *(a1 + 4) |= 2u;
        if (!*__error())
        {
          *__error() = 22;
        }

        v98 = *__error();
        v99 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v103 = *a3;
          *buf = 136315650;
          *&buf[4] = "_flush_cache_entry";
          *&buf[12] = 1024;
          *&buf[14] = 7972;
          *&buf[18] = 1024;
          *&buf[20] = v103;
          _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: Failed compressing/splitting page %d", buf, 0x18u);
        }

        *__error() = v98;
        *(a1 + 800) = *__error();
        v18 = *__error();
      }

      goto LABEL_128;
    }

    v146 = 0;
    value_out = 0;
    v143 = *v8;
    if (((*v8)[3] & 4) == 0)
    {
      v104 = *__error();
      v105 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      v106 = *a3;
      *buf = 136315650;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8343;
      *&buf[18] = 1024;
      *&buf[20] = v106;
      v107 = "%s:%d: Failed splitting compressed page %d";
      v108 = v105;
      v109 = 24;
      goto LABEL_165;
    }

    if (*v15)
    {
      v104 = *__error();
      v110 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      *buf = 136315394;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8349;
      v107 = "%s:%d: should not need to split a compressed cache";
      v108 = v110;
      v109 = 18;
LABEL_165:
      _os_log_error_impl(&dword_1C278D000, v108, OS_LOG_TYPE_ERROR, v107, buf, v109);
LABEL_136:
      *__error() = v104;
LABEL_137:
      v18 = 22;
      goto LABEL_152;
    }

    v145 = 0;
    *buf = 0;
    v27 = _page_alloc_fetch(a1, buf, 0, &v145 + 1, &v145, v20 | 4u);
    if (v27)
    {
      break;
    }

    free(*buf);
    v28 = HIDWORD(v145);
    v29 = _page_fetch_with_fd(a1, &value_out, HIDWORD(v145), v145, v20 | 3u, buf, 0xFFFFFFFFLL, 0);
    if (v29)
    {
      v18 = v29;
      v119 = *__error();
      v111 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

      v113 = *a3;
      *buf = 136315650;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8367;
      *&buf[18] = 1024;
      *&buf[20] = v113;
      v92 = "%s:%d: Failed page_fetch for %d";
      goto LABEL_142;
    }

    v138 = v28;
    v33 = *v8;
    v34 = (*v8)[2];
    if (v34 >= 21)
    {
      v35 = 0;
      v137 = 0;
      v36 = v33 + v34;
      v37 = (v33 + 5);
      v38 = (v34 + 1) >> 1;
      v39 = 20;
      v40 = 2;
      v141 = v33 + v34;
      while (2)
      {
        v41 = v34 - v39;
        if (v34 - v39 > v38 - 8)
        {
          v42 = (*v37 + 4);
          v43 = &v37[v42];
          if (&v37[v42] < v36)
          {
            v44 = v37;
            while (1)
            {
              v37 = v43;
              v45 = v44 + 4;
              v35 = v44[4];
              if (v44[4] < 0)
              {
                v47 = v44[4];
                if (v47 > 0xBF)
                {
                  if (v47 > 0xDF)
                  {
                    if (v47 > 0xEF)
                    {
                      if (v47 > 0xF7)
                      {
                        if (v47 > 0xFB)
                        {
                          if (v47 > 0xFD)
                          {
                            if (v47 == 255)
                            {
                              v35 = *(v44 + 5);
                              v46 = 9;
                            }

                            else
                            {
                              v35 = (v44[5] << 48) | (v44[6] << 40) | (v44[7] << 32) | (v44[8] << 24) | (v44[9] << 16) | (v44[10] << 8) | v44[11];
                              v46 = 8;
                            }
                          }

                          else
                          {
                            v35 = ((v35 & 1) << 48) | (v44[5] << 40) | (v44[6] << 32) | (v44[7] << 24) | (v44[8] << 16) | (v44[9] << 8) | v44[10];
                            v46 = 7;
                          }
                        }

                        else
                        {
                          v35 = ((v35 & 3) << 40) | (v44[5] << 32) | (v44[6] << 24) | (v44[7] << 16) | (v44[8] << 8) | v44[9];
                          v46 = 6;
                        }
                      }

                      else
                      {
                        v35 = ((v35 & 7) << 32) | (v44[5] << 24) | (v44[6] << 16) | (v44[7] << 8) | v44[8];
                        v46 = 5;
                      }
                    }

                    else
                    {
                      v35 = ((v35 & 0xF) << 24) | (v44[5] << 16) | (v44[6] << 8) | v44[7];
                      v46 = 4;
                    }
                  }

                  else
                  {
                    v35 = ((v35 & 0x1F) << 16) | (v44[5] << 8) | v44[6];
                    v46 = 3;
                  }
                }

                else
                {
                  v48 = v44[5] | ((v35 & 0x3F) << 8);
                  v46 = 2;
                  v35 = v48;
                }
              }

              else
              {
                v46 = 1;
              }

              v49 = v45 + v46;
              v50 = *v49;
              if (*v49 < 0)
              {
                if (v50 >= 0xC0)
                {
                  if (v50 >= 0xE0)
                  {
                    v131 = __si_assert_copy_extra_3233(0, -1);
                    v115 = v131;
                    v132 = "";
                    if (v131)
                    {
                      v132 = v131;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v132);
                    goto LABEL_161;
                  }

                  v51 = 2;
                }

                else
                {
                  v51 = 1;
                }

                v50 = v49[v51];
              }

              v39 += v42;
              v41 = v34 - v39;
              if (v34 - v39 > v38 - 8)
              {
                v42 = (*v37 + 4);
                v43 = &v37[v42];
                v44 = v37;
                if (&v37[v42] < v36)
                {
                  continue;
                }
              }

              v137 = *(a1 + 804) & (v50 >> 5) & 1;
              break;
            }
          }
        }

        if (v143 != v33)
        {
          v117 = __si_assert_copy_extra_3233(0, -1);
          v115 = v117;
          v118 = "";
          if (v117)
          {
            v118 = v117;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 8404, "in_cached==entry->cache_dbps", v118);
          goto LABEL_161;
        }

        if (v39 < 21)
        {
          goto LABEL_94;
        }

        v142 = v40;
        v144 = v38;
        v52 = *(a1 + 804);
        v53 = page_resize(a1, &value_out, 1, *(value_out + 2) + v41, 0, v30, v31, v32, 0);
        if (v53)
        {
          v18 = v53;
          page_release(a1, value_out);
          v119 = *__error();
          v90 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          v91 = *(value_out + 2);
          *buf = 136316418;
          *&buf[4] = "db_split_page";
          *&buf[12] = 1024;
          *&buf[14] = 8413;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v149 = 1024;
          v150 = v138;
          v151 = 1024;
          v152 = v91;
          v153 = 1024;
          v154 = v91 + v41;
          v92 = "%s:%d: ERR: page_resize error %d with page %d used_bytes %d new page size %d\n";
          v93 = v90;
          v94 = 42;
          goto LABEL_143;
        }

        v54 = (v52 >> 1) & 1;
        memcpy(value_out + *(value_out + 2), *v8 + v39, v41);
        v55 = value_out;
        v56 = *(value_out + 2) + v41;
        *(value_out + 2) = v56;
        if (v56 < 21)
        {
          goto LABEL_74;
        }

        v57 = v55 + v56;
        v58 = (v55[5] + 4);
        v59 = 4;
        if ((v55[3] & 4) == 0)
        {
          v59 = 1;
        }

        if (v55[v59] - 20 < v58 && v55 + v58 + 20 >= v57)
        {
          v61 = *v8;
          v62 = (*v8)[3] & 4;
          v64 = v144;
        }

        else
        {
LABEL_74:
          v61 = *v8;
          v62 = (*v8)[3] & 4;
          v63 = 4;
          if (!v62)
          {
            v63 = 1;
          }

          v64 = v144;
          if (v144 > v61[v63])
          {
LABEL_80:
            v65 = v62 == 0;
            v66 = 4;
            if (v65)
            {
              v66 = 1;
            }

            if (v64 <= v61[v66] / 2)
            {
              v139 = *__error();
              v67 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = *a3;
                v69 = *(*(a3 + 1) + 8);
                *buf = 67109632;
                *&buf[4] = v68;
                *&buf[8] = 1024;
                *&buf[10] = v69;
                *&buf[14] = 1024;
                *&buf[16] = v144;
                _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "Forced to split page %d used_bytes %d into pieces of size %d", buf, 0x14u);
              }

              *__error() = v139;
              v55 = value_out;
            }

            v70 = page_compress(a1, v55, &v146, 0, v54);
            v33 = *v8;
            if (!v70)
            {
              v80 = v33[1];
              v33[2] -= v41;
              page_resize(a1, a3 + 1, 1, v80 - v41, 0, v30, v31, v32, 0);
              if (dword_1EBF46AE8 >= 5)
              {
                v82 = *__error();
                v83 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *a3;
                  *buf = 67109888;
                  *&buf[4] = v84;
                  *&buf[8] = 1024;
                  *&buf[10] = v138;
                  *&buf[14] = 2048;
                  *&buf[16] = v35;
                  v149 = 1024;
                  v150 = v137;
                  _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "splitting map page %x, new page %x max_oid %llx type %d\n", buf, 0x1Eu);
                }

                *__error() = v82;
              }

              map_split(a1, a3, v35, v137, value_out, v138);
              v20 = i;
              v81 = page_release_dirty_compressed(a1, value_out, v146, v138, i);
              v15 = (a3 + 4);
              v11 = v135;
              if (!v81)
              {
                goto LABEL_22;
              }

              v18 = v81;
              v119 = *__error();
              v120 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "db_split_page";
                *&buf[12] = 1024;
                *&buf[14] = 8482;
                *&buf[18] = 1024;
                *&buf[20] = v138;
                v149 = 1024;
                v150 = v18;
                v92 = "%s:%d: Failed releasing dity compressed cache page %d with error %d";
                v93 = v120;
                v94 = 30;
                goto LABEL_143;
              }

              goto LABEL_151;
            }

            v71 = 4;
            if ((v33[3] & 4) == 0)
            {
              v71 = 1;
            }

            v38 = v144;
            if (v144 <= v33[v71] / 2)
            {
              v140 = v70;
              v72 = *__error();
              v73 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = "db_split_page";
                *&buf[12] = 1024;
                *&buf[14] = 8441;
                *&buf[18] = 1024;
                *&buf[20] = v140;
                v149 = 1024;
                v150 = v41;
                v151 = 1024;
                v152 = v144;
                _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: Page compress failed with error %d at %d/%d", buf, 0x24u);
              }

              *__error() = v72;
              v33 = *v8;
              v38 = v144;
            }

            *(value_out + 2) -= v41;
            v36 = v141;
            v40 = v142;
LABEL_94:
            v74 = 4;
            if ((v33[3] & 4) == 0)
            {
              v74 = 1;
            }

            if (v38 <= v33[v74] / 2)
            {
              v85 = v38;
              v86 = *__error();
              v87 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = *a3;
                v89 = *(*(a3 + 1) + 8);
                *buf = 67109632;
                *&buf[4] = v88;
                *&buf[8] = 1024;
                *&buf[10] = v89;
                *&buf[14] = 1024;
                *&buf[16] = v85;
                _os_log_impl(&dword_1C278D000, v87, OS_LOG_TYPE_DEFAULT, "Failure to split page %d used_bytes %d into pieces of size %d", buf, 0x14u);
              }

              *__error() = v86;
              page_release(a1, value_out);
              goto LABEL_137;
            }

            LODWORD(v34) = v33[2];
            v38 = (v34 + v40) / (v40 + 1);
            ++v40;
            if (v37 >= v36)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        break;
      }

      LOBYTE(v54) = ((v52 & 2) != 0) | 2;
      goto LABEL_80;
    }

LABEL_98:
    v75 = *__error();
    v76 = _SILogForLogForCategory(7);
    v77 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v76, v77))
    {
      v78 = *a3;
      v79 = *(*(a3 + 1) + 8);
      *buf = 67109376;
      *&buf[4] = v78;
      *&buf[8] = 1024;
      *&buf[10] = v79;
      _os_log_impl(&dword_1C278D000, v76, v77, "Nothing found on page %d used_bytes %d", buf, 0xEu);
    }

    *__error() = v75;
    page_release(a1, value_out);
    v15 = (a3 + 4);
    v11 = v135;
  }

  v18 = v27;
  v119 = *__error();
  v111 = _SILogForLogForCategory(7);
  if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_151;
  }

  v112 = *a3;
  *buf = 136315650;
  *&buf[4] = "db_split_page";
  *&buf[12] = 1024;
  *&buf[14] = 8362;
  *&buf[18] = 1024;
  *&buf[20] = v112;
  v92 = "%s:%d: Failed page_alloc for %d";
LABEL_142:
  v93 = v111;
  v94 = 24;
LABEL_143:
  _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, v92, buf, v94);
LABEL_151:
  *__error() = v119;
LABEL_152:
  v122 = *__error();
  v123 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
  {
    v127 = *a3;
    v128 = *(*(a3 + 1) + 8);
    *buf = 136316418;
    *&buf[4] = "db_compress_cache";
    *&buf[12] = 1024;
    *&buf[14] = 8313;
    *&buf[18] = 1024;
    *&buf[20] = v18;
    v149 = 1024;
    v150 = v127;
    v151 = 1024;
    v152 = v128;
    v153 = 1024;
    v154 = v133;
    _os_log_error_impl(&dword_1C278D000, v123, OS_LOG_TYPE_ERROR, "%s:%d: ERR: db_split_page error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
  }

  *__error() = v122;
LABEL_155:
  *(a1 + 4) |= 2u;
  v124 = *__error();
  v125 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
  {
    v126 = *a3;
    *buf = 136315906;
    *&buf[4] = "_flush_cache_entry";
    *&buf[12] = 1024;
    *&buf[14] = 7933;
    *&buf[18] = 1024;
    *&buf[20] = v126;
    v149 = 1024;
    v150 = v18;
    _os_log_error_impl(&dword_1C278D000, v125, OS_LOG_TYPE_ERROR, "%s:%d: Failed compressing/splitting page %d error %d", buf, 0x1Eu);
  }

  *__error() = v124;
  a3[6] = 0;
  *(a1 + 800) = v18;
LABEL_128:
  v100 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t db_get_obj(_DWORD *a1, unint64_t a2, void **a3, int a4)
{
  if (*a1 != 1685287992)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 314, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_get_obj_callback(a1, a2, a3, a4, 0, 0, 0);
}

uint64_t db_iterate_objects_in_range(uint64_t a1, int64_t a2, int64_t a3, int a4, uint64_t a5)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v75 = *__error();
    v76 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v77 = *a1;
      *buf = 136315650;
      v91 = "db_iterate_objects_in_range";
      v92 = 1024;
      *v93 = 432;
      *&v93[4] = 1024;
      *&v93[6] = v77;
      _os_log_error_impl(&dword_1C278D000, v76, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v75;
    v78 = __si_assert_copy_extra_332();
    v79 = v78;
    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 432, v80);
    free(v79);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock(a1 + 584))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15535);
  }

  v10 = *(a1 + 856);
  v11 = *(v10 + 8);
  if (v11 < 1)
  {
    v19 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v13 = *(v10 + 8);
  while (1)
  {
    v14 = (v13 + v12) >> 1;
    v15 = v10 + 20 + 16 * v14;
    v16 = *(v15 + 12);
    if (a4 == v16 >> 28)
    {
      v17 = a2 - *v15;
    }

    else
    {
      v17 = (a4 - (v16 >> 28));
    }

    v18 = (v13 + v12) >> 1;
    if (v17 < 0)
    {
      goto LABEL_11;
    }

    if (!v17)
    {
      break;
    }

    v12 = v14 + 1;
    v18 = v13;
LABEL_11:
    v13 = v18;
    if (v12 >= v18)
    {
      v19 = v17 > 0;
      goto LABEL_15;
    }
  }

  v19 = 0;
LABEL_15:
  v20 = v11 - 1;
  if (v20 <= v14)
  {
    v19 = 0;
  }

  v21 = v10 + 20;
  v22 = v14 + v19;
  v23 = (v21 + 16 * v22);
  if (v22 && v11 > v22)
  {
    v24 = *(v23 + 3);
    if (a4 == v24 >> 28)
    {
      v25 = a3 - *v23;
    }

    else
    {
      v25 = (a4 - (v24 >> 28));
    }

    if (v25 <= 0)
    {
      v54 = v21 + 16 * (v22 - 1);
      v55 = *(v54 + 12);
      v56 = a4 == v55 >> 28 ? a3 - *v54 : (a4 - (v55 >> 28));
      v33 = v23;
      if (v56 > 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v11 < 1)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_35;
  }

  v28 = 0;
  while (2)
  {
    v27 = (v11 + v28) >> 1;
    v29 = v21 + 16 * v27;
    v30 = *(v29 + 12);
    if (a4 == v30 >> 28)
    {
      v31 = a3 - *v29;
    }

    else
    {
      v31 = (a4 - (v30 >> 28));
    }

    v32 = (v11 + v28) >> 1;
    if (v31 < 0)
    {
LABEL_32:
      v11 = v32;
      if (v28 >= v32)
      {
        v26 = v31 > 0;
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  if (v31)
  {
    v28 = v27 + 1;
    v32 = v11;
    goto LABEL_32;
  }

  v26 = 0;
LABEL_35:
  if (v20 <= v27)
  {
    v26 = 0;
  }

  v33 = (v21 + 16 * (v27 + v26));
LABEL_38:
  if (dword_1EBF46AE8 >= 5)
  {
    v65 = *__error();
    v66 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = *v23;
      v68 = *(v23 + 2);
      v69 = *v33;
      v70 = *(v33 + 2);
      *buf = 134219008;
      v91 = a1;
      v92 = 2048;
      *v93 = v67;
      *&v93[8] = 1024;
      *v94 = v68;
      *&v94[4] = 2048;
      *&v94[6] = v69;
      v95 = 1024;
      v96 = v70;
      _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "%p iterate: (%llx @%x, %llx @%x)", buf, 0x2Cu);
    }

    *__error() = v65;
  }

  if (v23 > v33)
  {
    goto LABEL_96;
  }

  while (2)
  {
    value_out = 0;
    v34 = *(v23 + 2);
    v35 = *(v23 + 3);
    if (dword_1EBF46AE8 >= 5)
    {
      v86 = a5;
      v50 = *__error();
      v51 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *v23;
        v53 = *(v23 + 2);
        *buf = 134218496;
        v91 = a1;
        v92 = 2048;
        *v93 = v52;
        *&v93[8] = 1024;
        *v94 = v53;
        _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx %x", buf, 0x1Cu);
      }

      *__error() = v50;
      a5 = v86;
    }

    if (_page_fetch_with_fd(a1, &value_out, v34, v35, 11, buf, 0xFFFFFFFFLL, 0) || (v36 = value_out, *value_out != 1684172850) || (*(value_out + 12) & 0xF0) != 0)
    {
LABEL_87:
      v23 += 2;
      if (v23 > v33)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v37 = *(value_out + 2);
  if (v37 < 21)
  {
LABEL_86:
    page_release(a1, v36, v34, 0x10u, *(v36 + 1));
    goto LABEL_87;
  }

  v85 = a5;
  v38 = value_out + v37;
  v39 = value_out + 20;
  v87 = value_out + v37;
  while (1)
  {
    if (*v39 == -4)
    {
LABEL_85:
      v36 = value_out;
      a5 = v85;
      goto LABEL_86;
    }

    v40 = v39[4];
    if (v39[4] < 0)
    {
      v41 = v39[4];
      if (v41 <= 0xBF)
      {
        v40 = v39[5] | ((v40 & 0x3F) << 8);
        goto LABEL_64;
      }

      if (v41 > 0xDF)
      {
        if (v41 > 0xEF)
        {
          if (v41 > 0xF7)
          {
            if (v41 > 0xFB)
            {
              if (v41 > 0xFD)
              {
                if (v41 == 255)
                {
                  v40 = *(v39 + 5);
                  goto LABEL_64;
                }

                v42 = (v39[5] << 48) | (v39[6] << 40) | (v39[7] << 32) | (v39[8] << 24) | (v39[9] << 16) | (v39[10] << 8);
                v43 = v39[11];
              }

              else
              {
                v42 = ((v40 & 1) << 48) | (v39[5] << 40) | (v39[6] << 32) | (v39[7] << 24) | (v39[8] << 16) | (v39[9] << 8);
                v43 = v39[10];
              }
            }

            else
            {
              v42 = ((v40 & 3) << 40) | (v39[5] << 32) | (v39[6] << 24) | (v39[7] << 16) | (v39[8] << 8);
              v43 = v39[9];
            }
          }

          else
          {
            v42 = ((v40 & 7) << 32) | (v39[5] << 24) | (v39[6] << 16) | (v39[7] << 8);
            v43 = v39[8];
          }
        }

        else
        {
          v42 = ((v40 & 0xF) << 24) | (v39[5] << 16) | (v39[6] << 8);
          v43 = v39[7];
        }
      }

      else
      {
        v42 = ((v40 & 0x1F) << 16) | (v39[5] << 8);
        v43 = v39[6];
      }

      v40 = v42 | v43;
    }

LABEL_64:
    if (dword_1EBF46AE8 >= 5)
    {
      v83 = *__error();
      v47 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *v23;
        v49 = *(v23 + 2);
        *buf = 134218752;
        v91 = a1;
        v92 = 2048;
        *v93 = v40;
        *&v93[8] = 2048;
        *v94 = v48;
        *&v94[8] = 1024;
        *&v94[10] = v49;
        _os_log_impl(&dword_1C278D000, v47, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx (%llx @%x)", buf, 0x26u);
      }

      *__error() = v83;
      v38 = v87;
    }

    if (v40 >= a3)
    {
      break;
    }

    if (v40 >= a2)
    {
      v88 = 0;
      _inflateDBO(a1, v39, &v88, 0, 0, 0);
      v45 = v88;
      if (*(v88 + 3) <= 0x2Fu)
      {
        v61 = __si_assert_copy_extra_3233(0, -1);
        v62 = v61;
        v63 = "";
        if (v61)
        {
          v63 = v61;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v63);
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

      if (dword_1EBF46AE8 >= 5)
      {
        v84 = *__error();
        log = _SILogForLogForCategory(7);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v91 = a1;
          v92 = 2048;
          *v93 = v40;
          *&v93[8] = 2048;
          *v94 = a2;
          _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx >= %llx", buf, 0x20u);
        }

        *__error() = v84;
      }

      if ((v45[40] & 5) != 0)
      {
        free(v45);
      }

      else
      {
        v46 = (*(v85 + 16))(v85, v45);
        free(v45);
        if ((v46 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_76;
    }

    if (dword_1EBF46AE8 >= 5)
    {
      v82 = *__error();
      v44 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v91 = a1;
        v92 = 2048;
        *v93 = v40;
        *&v93[8] = 2048;
        *v94 = a2;
        _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx < %llx", buf, 0x20u);
      }

      *__error() = v82;
LABEL_76:
      v38 = v87;
    }

    v39 += (*v39 + 4);
    if (v39 >= v38)
    {
      goto LABEL_85;
    }
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v71 = *__error();
    v72 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = *v23;
      v74 = *(v23 + 2);
      *buf = 134218752;
      v91 = a1;
      v92 = 2048;
      *v93 = v40;
      *&v93[8] = 2048;
      *v94 = v73;
      *&v94[8] = 1024;
      *&v94[10] = v74;
      _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, "%p iterate: bail %llx (%llx @%x)", buf, 0x26u);
    }

    *__error() = v71;
  }

LABEL_95:
  page_release(a1, value_out, v34, 0x10u, *(value_out + 1));
LABEL_96:
  v57 = pthread_mutex_lock((a1 + 584));
  v58 = *(a1 + 780) - 1;
  *(a1 + 780) = v58;
  if (!v58)
  {
    db_rwlock_wakeup(a1 + 584, 0, 0);
  }

  result = pthread_mutex_unlock((a1 + 584));
  if (v57)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15602);
  }

  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t page_compress(uint64_t a1, uint64_t a2, int8x16_t **a3, __int32 *a4, char a5)
{
  v81 = *MEMORY[0x1E69E9840];
  result = 22;
  if (!a2 || !a3)
  {
    goto LABEL_103;
  }

  destLen = 0;
  v7 = *(a2 + 12);
  v8 = 16;
  if ((v7 & 4) == 0)
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((v7 & 0xC) != 0)
  {
    if ((v7 & 8) == 0)
    {
      v12 = a1;
      v72 = a4;
      v73 = a3;
      v13 = malloc_type_valloc(v9 + 16, 0x22901C7EuLL);
      if (!v13)
      {
        *v73 = 0;
        result = 12;
        goto LABEL_103;
      }

      v14 = v13;
      v15 = v9 - 20;
      destLen = v15;
      v16 = a2;
      v17 = *(a2 + 8);
      v18 = v17 - 20;
      v19 = v12;
      v20 = a5;
      if ((*(v12 + 4) & 0x80) == 0 || (v21 = *a2, *a2 != 1684172850) && v21 != 846226020)
      {
LABEL_31:
        if (v20)
        {
          v34 = fast_compress_limitedOutput((v16 + 20), &v14[1].u8[4], v18, v15);
          destLen = v34;
          if (!v34)
          {
            destLen = v15;
            v19 = v12;
            if ((a5 & 2) == 0)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v36 = 7;
              v35 = 8;
              v16 = a2;
              goto LABEL_75;
            }

            if ((*(v12 + 804) & 4) != 0)
            {
              v39 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
              if (v39 <= 0xFA00)
              {
                if (v39)
                {
                  MEMORY[0x1EEE9AC00]();
                  v43 = &v68 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
                  bzero(v43, v42);
                }

                else
                {
                  v43 = 0;
                }

                v41 = compression_encode_buffer(&v14[1].u8[4], v15, (a2 + 20), v18, v43, COMPRESSION_LZFSE);
                destLen = v41;
              }

              else
              {
                v40 = malloc_type_malloc(v39, 0x4B55B2A0uLL);
                v41 = compression_encode_buffer(&v14[1].u8[4], v15, (a2 + 20), v18, v40, COMPRESSION_LZFSE);
                destLen = v41;
                free(v40);
              }

              v44 = v41 == 0;
              v33 = v41 != 0;
              if (v44)
              {
                v38 = -5;
              }

              else
              {
                v38 = 0;
              }
            }

            else
            {
              v38 = compress2(&v14[1].u8[4], &destLen, (a2 + 20), v18, 3);
              v33 = 0;
            }

            v37 = 1;
            goto LABEL_59;
          }

          v32 = 0;
          v33 = 0;
          v35 = 4104;
        }

        else
        {
          if ((v20 & 2) == 0 && v18 > 12 * v15)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
LABEL_71:
            v36 = 7;
            v35 = 8;
            goto LABEL_75;
          }

          v37 = v20 & 2;
          v38 = compress2(&v14[1].u8[4], &destLen, (v16 + 20), v18, 3);
          if (!dword_1EBF46AE8)
          {
            goto LABEL_42;
          }

          if (v38)
          {
            atomic_fetch_add(&page_compress_failedCompressed, 1uLL);
            if (dword_1EBF46AE8 >= 5)
            {
              v71 = v38;
              v64 = *__error();
              v65 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v76 = *&v18;
                _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "Zip Failed compressing %ld bytes\n", buf, 0xCu);
              }

              v33 = 0;
              *__error() = v64;
              v38 = v71;
              goto LABEL_59;
            }

LABEL_42:
            v33 = 0;
LABEL_59:
            if (v37)
            {
              v44 = v38 == -5;
            }

            else
            {
              v44 = 0;
            }

            v32 = v44;
            if (v44)
            {
              destLen = v15;
              v38 = compress2(&v14[1].u8[4], &destLen, (a2 + 20), v18, 9);
            }

            v31 = v38 == 0;
            v16 = a2;
            if (v38 == -4)
            {
              v36 = 12;
              v35 = 8;
              v19 = v12;
              goto LABEL_75;
            }

            v19 = v12;
            if (v38 == -5)
            {
              v31 = 0;
              goto LABEL_71;
            }

            v35 = 8;
            if (v38)
            {
              v31 = 0;
              v36 = 22;
              goto LABEL_75;
            }

            goto LABEL_38;
          }

          atomic_fetch_add(&page_compress_totalUncompressed, v18);
          atomic_fetch_add(&page_compress_totalCompressed, destLen);
          atomic_fetch_add(&page_compress_successCompressed, 1uLL);
          if (dword_1EBF46AE8 < 5)
          {
            v19 = v12;
            v16 = a2;
            v32 = 0;
            v33 = 0;
            v35 = 8;
            goto LABEL_38;
          }

          v66 = *__error();
          v67 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v76 = page_compress_totalUncompressed / page_compress_totalCompressed;
            v77 = 2048;
            v78 = page_compress_successCompressed;
            v79 = 2048;
            v80 = page_compress_failedCompressed;
            _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "Zip Compression ratio: %f good:%lld bad:%lld\n", buf, 0x20u);
          }

          v32 = 0;
          v33 = 0;
          *__error() = v66;
          v35 = 8;
        }

        v19 = v12;
        v16 = a2;
LABEL_38:
        v36 = 0;
        v31 = 1;
LABEL_75:
        if ((*(v19 + 4) & 0x80) == 0 || (v45 = *v16, *v16 != 1684172850) && v45 != 846226020)
        {
LABEL_90:
          if (v31)
          {
            v14->i32[0] = 1684172850;
            v14->i32[1] = v9;
            v53 = destLen;
            v14->i32[2] = destLen + 20;
            v54 = *(v16 + 12) & 0xFFFFEFF3 | v35 | 0x2000;
            if (!v33)
            {
              v54 = *(v16 + 12) & 0xFFFFCFF3 | v35 & 0xFFFFDFFB;
            }

            v14->i32[3] = v54;
            v14[1].i32[0] = *(v16 + 8);
            bzero(v14[1].i64 + v53 + 4, v15 - v53);
            v55 = v73;
            if (v72)
            {
              v56 = *(a2 + 8);
              if ((v32 & 1) == 0)
              {
                v56 += 4 * (v14->i32[1] - v14->i32[2]);
              }

              *v72 = v56;
            }

            if ((*(v12 + 4) & 0x80) != 0)
            {
              *v14 = vrev32q_s8(*v14);
              v14[1].i32[0] = bswap32(v14[1].u32[0]);
            }

            result = 0;
            *v55 = v14;
          }

          else
          {
            v57 = v36;
            v58 = v14;
            v59 = v16;
            free(v58);
            result = v57;
            *v73 = 0;
            if (*(v59 + 8) <= v9)
            {
              result = 0;
              if (v72)
              {
                *v72 = v9;
              }
            }
          }

          goto LABEL_103;
        }

        v46 = *(v16 + 12);
        if (v45 == 846226020)
        {
          v47 = *(v16 + 8);
          if (!(v46 >> 28))
          {
            v45 = 846226020;
LABEL_89:
            v52 = bswap32(*(v16 + 4));
            *v16 = bswap32(v45);
            *(v16 + 4) = v52;
            *(v16 + 8) = bswap32(v47);
            *(v16 + 12) = bswap32(v46);
            *(v16 + 16) = bswap32(*(v16 + 16));
            goto LABEL_90;
          }

          v48 = bswap32(v47);
        }

        else
        {
          v47 = *(v16 + 8);
          v48 = v47;
          if ((v46 & 0xF0) == 0)
          {
            goto LABEL_89;
          }
        }

        if (v48 >= 0x21)
        {
          v69 = v15;
          v70 = v33;
          v71 = v36;
          v49 = v16 + 32;
          for (i = 32; i < v48; i += v51)
          {
            *v49 = bswap32(*v49);
            v51 = strlen((v49 + 4)) + 4;
            v49 += v51;
          }

          v16 = a2;
          v45 = *a2;
          v47 = *(a2 + 8);
          v46 = *(a2 + 12);
          v33 = v70;
          v36 = v71;
          v15 = v69;
        }

        *(v16 + 20) = bswap32(*(v16 + 20));
        goto LABEL_89;
      }

      v22 = *(a2 + 12);
      if (v21 == 846226020)
      {
        if (!(v22 >> 28))
        {
          v21 = 846226020;
LABEL_30:
          v30 = bswap32(*(v16 + 4));
          *v16 = bswap32(v21);
          *(v16 + 4) = v30;
          *(v16 + 8) = bswap32(v17);
          *(v16 + 12) = bswap32(v22);
          *(v16 + 16) = bswap32(*(v16 + 16));
          goto LABEL_31;
        }

        v26 = bswap32(v17);
      }

      else
      {
        v26 = *(a2 + 8);
        if ((v22 & 0xF0) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v26 >= 0x21)
      {
        v27 = a2 + 32;
        for (j = 32; j < v26; j += v29)
        {
          *v27 = bswap32(*v27);
          v29 = strlen((v27 + 4)) + 4;
          v27 += v29;
        }

        v16 = a2;
        v21 = *a2;
        LODWORD(v17) = *(a2 + 8);
        v22 = *(a2 + 12);
        v19 = v12;
        v20 = a5;
        v15 = v9 - 20;
      }

      *(v16 + 20) = bswap32(*(v16 + 20));
      goto LABEL_30;
    }

    v23 = *__error();
    v24 = _SILogForLogForCategory(7);
    v25 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v24, v25, "page_compress: ERR: page is already compressed!\n", buf, 2u);
    }

    *__error() = v23;
    result = 22;
  }

  else
  {
    if (a4)
    {
      *a4 = v9;
    }

    if (*(a2 + 8) > v9)
    {
      v61 = __si_assert_copy_extra_3233(0, -1);
      v62 = v61;
      v63 = "";
      if (v61)
      {
        v63 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 3021, "(size_t)dbp->used_bytes <= sz", v63);
      free(v62);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    result = 0;
    *a3 = 0;
  }

LABEL_103:
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db2_delete_obj_with_flags(uint64_t a1, uint64_t a2, char a3)
{
  v107 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    v11 = 13;
    goto LABEL_127;
  }

  v6 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v6 = __THREAD_SLOT_KEY;
  }

  v7 = pthread_getspecific(v6);
  HIDWORD(v9) = qos_class_self() - 9;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 2;
  if (v8 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1C2BFF8F0[v8];
  }

  v12 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_11:
    db_rwlock_wait(a1 + 584, v10, 2);
    goto LABEL_12;
  }

  if (v10 <= 5)
  {
    v56 = v10 - 6;
    v57 = (a1 + 16 * v10 + 648);
    while (!*v57)
    {
      v57 += 2;
      if (__CFADD__(v56++, 1))
      {
        goto LABEL_80;
      }
    }

    goto LABEL_11;
  }

LABEL_80:
  *(a1 + 768) = pthread_self();
LABEL_12:
  pthread_mutex_unlock((a1 + 584));
  if (v12)
  {
    v91 = *__error();
    v92 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = 136315650;
      v94 = "db2_delete_obj_with_flags";
      v95 = 1024;
      v96 = 11862;
      v97 = 1024;
      LODWORD(v98) = v12;
      _os_log_error_impl(&dword_1C278D000, v92, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", &v93, 0x18u);
    }

    *__error() = v91;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11862);
  }

  if (v7)
  {
    v13 = CIOnThreadCleanUpPush(v7 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v13 = -1;
  }

  v14 = *a2;
  if (*(a1 + 804))
  {
    v15 = (*(a2 + 40) >> 5) & 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 804) & 1;
  v17 = *(a1 + 992);
  v18 = v17[1];
  if (!*&v18)
  {
LABEL_55:
    if (a3)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = *a2;
    if (v14 >= *&v18)
    {
      v20 = v14 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v14;
  }

  v21 = *(*v17 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_35:
    v18.i32[0] = 0;
    if (a3)
    {
      goto LABEL_36;
    }

LABEL_56:
    if (v18.i8[0])
    {
      goto LABEL_109;
    }

    v39 = *(a1 + 856);
    v40 = *(v39 + 8);
    if (!v40)
    {
      v53 = pthread_mutex_lock((a1 + 584));
      *(a1 + 788) = 0;
      v54 = *(a1 + 760);
      *(a1 + 760) = 0u;
      v55 = *(a1 + 780) != 0;
      *(a1 + 796) = 0;
      db_rwlock_wakeup(a1 + 584, v55, 0);
      pthread_mutex_unlock((a1 + 584));
      if (v54)
      {
        pthread_override_qos_class_end_np(v54);
      }

      if (v53)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11897);
      }

      goto LABEL_131;
    }

    v41 = *(v39 + 16);
    if (v41 < v40)
    {
      v42 = v39 + 16 * v41;
      v44 = *(v42 + 20);
      v43 = v42 + 20;
      if (v44 == v14)
      {
        v45 = *(v43 + 12);
        if (v15 == v45 >> 28)
        {
          goto LABEL_107;
        }
      }
    }

    v46 = v40;
    if (v40 < 1)
    {
      v62 = 0;
      v50 = 0;
      goto LABEL_103;
    }

    v47 = 0;
    while (1)
    {
      v50 = (v40 + v47) >> 1;
      v51 = v39 + 20 + 16 * v50;
      v52 = v15 - (*(v51 + 12) >> 28);
      if (v52)
      {
        v48 = v52;
        v49 = (v40 + v47) >> 1;
        if (v48 < 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v48 = v14 - *v51;
        v49 = (v40 + v47) >> 1;
        if (v48 < 0)
        {
          goto LABEL_66;
        }
      }

      if (!v48)
      {
        v62 = 0;
LABEL_103:
        v70 = v46 - 1 > v50 && v62;
        v71 = v50 + v70;
        v72 = v39 + 16 * v71;
        *(v39 + 16) = v71;
        v43 = v72 + 20;
        v45 = *(v72 + 32);
LABEL_107:
        if (_page_obj_exists_by_oid_and_type(a1, v14, v15, *(v43 + 8), v45 & 0xFFFFFFF))
        {
          v17 = *(a1 + 992);
          v14 = *a2;
          v16 = *(a1 + 804) & 1;
LABEL_109:
          if (v16)
          {
            if (db_updateset_delete_object(v17, v14, (*(a2 + 40) >> 5) & 1))
            {
LABEL_111:
              v73 = *__error();
              v74 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v93 = 136315394;
                v94 = "db2_delete_obj_with_flags";
                v95 = 1024;
                v96 = 11913;
                _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Delete failed", &v93, 0x12u);
              }

              *__error() = v73;
              v11 = 22;
              goto LABEL_121;
            }
          }

          else if (db_updateset_delete_object(v17, v14, 0))
          {
            goto LABEL_111;
          }

          if ((*(*(a1 + 992) + 56) + 16 * *(*(a1 + 992) + 48)) >= 0x80000 && (v75 = flush_updateset_locked(a1)) != 0)
          {
            v76 = v75;
            v77 = *__error();
            v78 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v93 = 136315650;
              v94 = "db2_delete_obj_with_flags";
              v95 = 1024;
              v96 = 11907;
              v97 = 1024;
              LODWORD(v98) = v76;
              _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: Error %d from flush_updateset_locked", &v93, 0x18u);
            }

            v11 = 0;
            *__error() = v77;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_121;
        }

        v88 = pthread_mutex_lock((a1 + 584));
        *(a1 + 788) = 0;
        v89 = *(a1 + 760);
        *(a1 + 760) = 0u;
        v90 = *(a1 + 780) != 0;
        *(a1 + 796) = 0;
        db_rwlock_wakeup(a1 + 584, v90, 0);
        pthread_mutex_unlock((a1 + 584));
        if (v89)
        {
          pthread_override_qos_class_end_np(v89);
        }

        if (v88)
        {
          sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11892);
        }

LABEL_131:
        v11 = 2;
        if (v7)
        {
          goto LABEL_125;
        }

        goto LABEL_127;
      }

      v47 = v50 + 1;
      v49 = v40;
LABEL_66:
      v40 = v49;
      if (v47 >= v49)
      {
        v62 = v48 > 0;
        goto LABEL_103;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 != v14)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }
      }

      else
      {
        v23 &= *&v18 - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    if (v22[2] == v14)
    {
      break;
    }

LABEL_28:
    v22 = *v22;
    if (!v22)
    {
      v18.i32[0] = 0;
      goto LABEL_55;
    }
  }

  v59 = *(v22 + 6);
  v18.i32[0] = v59 != 3 && v59 != 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_36:
  if (v18.i32[0])
  {
    if (v16)
    {
      v24 = (*(a2 + 40) >> 5) & 1;
    }

    else
    {
      v24 = 0;
    }

    v11 = db_updateset_delete_object(v17, v14, v24);
    goto LABEL_121;
  }

  v25 = *(a1 + 856);
  v26 = *(v25 + 8);
  if (!v26)
  {
    v11 = 2;
    goto LABEL_121;
  }

  v27 = *(v25 + 16);
  if (v27 < v26)
  {
    v28 = v25 + 16 * v27;
    v30 = *(v28 + 20);
    v29 = v28 + 20;
    if (v30 == v14)
    {
      v31 = *(v29 + 12);
      if (v15 == v31 >> 28)
      {
        goto LABEL_98;
      }
    }
  }

  v32 = v26;
  if (v26 < 1)
  {
    v61 = 0;
    v36 = 0;
    goto LABEL_94;
  }

  v33 = 0;
  while (2)
  {
    v36 = (v26 + v33) >> 1;
    v37 = v25 + 20 + 16 * v36;
    v38 = v15 - (*(v37 + 12) >> 28);
    if (v38)
    {
      v34 = v38;
      v35 = (v26 + v33) >> 1;
      if (v34 < 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = v14 - *v37;
      v35 = (v26 + v33) >> 1;
      if (v34 < 0)
      {
LABEL_48:
        v26 = v35;
        if (v33 >= v35)
        {
          v61 = v34 > 0;
          goto LABEL_94;
        }

        continue;
      }
    }

    break;
  }

  if (v34)
  {
    v33 = v36 + 1;
    v35 = v26;
    goto LABEL_48;
  }

  v61 = 0;
LABEL_94:
  v63 = v32 - 1 > v36 && v61;
  v64 = v36 + v63;
  v65 = v25 + 16 * v64;
  *(v25 + 16) = v64;
  v29 = v65 + 20;
  v31 = *(v65 + 32);
LABEL_98:
  v66 = *(v29 + 8);
  v67 = v14;
  v11 = _page_delete_obj_by_oid_and_type(a1, v14, v15, v66, v31 & 0xFFFFFFF, 0);
  if ((v11 & 0xFFFFFFFD) != 0)
  {
    v68 = *__error();
    v69 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v93 = 136316674;
      v94 = "db2_delete_obj_with_flags";
      v95 = 1024;
      v96 = 11880;
      v97 = 2048;
      v98 = v67;
      v99 = 2048;
      v100 = v67;
      v101 = 2048;
      v102 = v15;
      v103 = 2048;
      v104 = v66;
      v105 = 1024;
      v106 = v11;
      _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: Failed delete, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", &v93, 0x40u);
    }

    *__error() = v68;
  }

LABEL_121:
  v79 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v80 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v81 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v81, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v80)
  {
    pthread_override_qos_class_end_np(v80);
  }

  if (v79)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11916);
  }

  if (v7)
  {
LABEL_125:
    CIOnThreadCleanUpClearItem(v7 - 1, v13);
    v82 = &threadData[9 * (v7 - 1)];
    v85 = *(v82 + 14);
    v83 = v82 + 7;
    v84 = v85;
    if (v13 + 1 == v85)
    {
      *v83 = v84 - 1;
    }
  }

LABEL_127:
  v86 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t db_delete_obj(int *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_delete_obj";
      v13 = 1024;
      v14 = 330;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 330, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E69E9840];

  return db2_delete_obj_with_flags(a1, a2, 0);
}

BOOL _page_obj_exists_by_oid_and_type(uint64_t a1, int64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  value_out = 0;
  v9 = _page_fetch_with_fd(a1, &value_out, a4, a5, 0, buf, 0xFFFFFFFFLL, 0);
  result = 0;
  if (v9)
  {
    goto LABEL_39;
  }

  v11 = *(value_out + 3);
  if ((v11 & 0xF0) != 0)
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_obj_exists_by_oid_and_type";
      v37 = 1024;
      v38 = 5603;
      v39 = 1024;
      v40 = v5;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v25;
    v27 = __si_assert_copy_extra_3233(0, -1);
    v28 = v27;
    v29 = "";
    if (v27)
    {
      v29 = v27;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5604, v29);
LABEL_55:
    free(v28);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((v11 & 8) != 0)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_obj_exists_by_oid_and_type";
      v37 = 1024;
      v38 = 5609;
      v39 = 1024;
      v40 = v5;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v30;
    v32 = __si_assert_copy_extra_3233(0, -1);
    v28 = v32;
    v33 = "";
    if (v32)
    {
      v33 = v32;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5610, v33);
    goto LABEL_55;
  }

  *buf = 0;
  if (find_slot_for_oid_and_type(a1, value_out, a2, a3, buf, &v34, 1) == 2)
  {
    page_release(a1, value_out, v5, 0, 0);
    result = 0;
  }

  else
  {
    v12 = *(*buf + 4);
    if (*(*buf + 4) < 0)
    {
      v14 = *(*buf + 4);
      if (v14 > 0xBF)
      {
        if (v14 > 0xDF)
        {
          if (v14 > 0xEF)
          {
            if (v14 > 0xF7)
            {
              if (v14 > 0xFB)
              {
                if (v14 > 0xFD)
                {
                  if (v14 == 255)
                  {
                    v12 = *(*buf + 5);
                    v13 = 9;
                  }

                  else
                  {
                    v12 = (*(*buf + 5) << 48) | (*(*buf + 6) << 40) | (*(*buf + 7) << 32) | (*(*buf + 8) << 24) | (*(*buf + 9) << 16) | (*(*buf + 10) << 8) | *(*buf + 11);
                    v13 = 8;
                  }
                }

                else
                {
                  v12 = ((v12 & 1) << 48) | (*(*buf + 5) << 40) | (*(*buf + 6) << 32) | (*(*buf + 7) << 24) | (*(*buf + 8) << 16) | (*(*buf + 9) << 8) | *(*buf + 10);
                  v13 = 7;
                }
              }

              else
              {
                v12 = ((v12 & 3) << 40) | (*(*buf + 5) << 32) | (*(*buf + 6) << 24) | (*(*buf + 7) << 16) | (*(*buf + 8) << 8) | *(*buf + 9);
                v13 = 6;
              }
            }

            else
            {
              v12 = ((v12 & 7) << 32) | (*(*buf + 5) << 24) | (*(*buf + 6) << 16) | (*(*buf + 7) << 8) | *(*buf + 8);
              v13 = 5;
            }
          }

          else
          {
            v12 = ((v12 & 0xF) << 24) | (*(*buf + 5) << 16) | (*(*buf + 6) << 8) | *(*buf + 7);
            v13 = 4;
          }
        }

        else
        {
          v12 = ((v12 & 0x1F) << 16) | (*(*buf + 5) << 8) | *(*buf + 6);
          v13 = 3;
        }
      }

      else
      {
        v13 = 2;
        v12 = *(*buf + 5) | ((v12 & 0x3F) << 8);
      }
    }

    else
    {
      v13 = 1;
    }

    v15 = (*buf + 4 + v13);
    v16 = *v15;
    if (*v15 < 0)
    {
      if (v16 >= 0xC0)
      {
        if (v16 >= 0xE0)
        {
          v22 = __si_assert_copy_extra_3233(0, -1);
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v24);
          free(v23);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v16 = v15[v17];
    }

    v20 = (*(a1 + 804) & (v16 >> 5) & 1) == a3 && v12 == a2 && *buf < value_out + *(value_out + 2);
    page_release(a1, value_out, v5, 0, 0);
    result = v20;
  }

LABEL_39:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_updateset_delete_object(void *a1, unint64_t a2, int a3)
{
  v6 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, a2);
  if (v6)
  {
    v7 = *(v6 + 6);
    if (v7 == 3)
    {
      return 2;
    }

    v8 = v6[4];
    if (v7 == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__erase_unique<unsigned long long>(a1, a2);
      --a1[5];
      v9 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v12[0] = a2;
  v12[1] = v12;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1, a2);
  v10[3] = 3;
  *(v10 + 8) = a3;
  *(v10 + 9) = 0;
  ++a1[6];
  v9 = v7 != 0;
LABEL_7:
  result = 0;
  if (v9)
  {
    if (v8)
    {
      a1[7] -= (*v8 + 4);
      free(v8);
      return 0;
    }
  }

  return result;
}

uint64_t db_lock_datastore(int *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 136315650;
      v17 = "db_lock_datastore";
      v18 = 1024;
      v19 = 264;
      v20 = 1024;
      v21 = v12;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v10;
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 264, v15);
    free(v14);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  HIDWORD(v3) = qos_class_self() - 9;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1C2BFF8F0[v2];
  }

  pthread_mutex_lock((a1 + 146));
  if (*(a1 + 96) || a1[195] || (a1[199] & 1) != 0)
  {
LABEL_8:
    db_rwlock_wait((a1 + 146), v4, 2);
    goto LABEL_9;
  }

  if (v4 <= 5)
  {
    v7 = v4 - 6;
    v8 = &a1[4 * v4 + 162];
    while (!*v8)
    {
      v8 += 4;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_17;
      }
    }

    goto LABEL_8;
  }

LABEL_17:
  *(a1 + 96) = pthread_self();
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock((a1 + 146));
}

uint64_t db_flush_datastore(uint64_t a1, _DWORD *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *a1;
      *buf = 136315650;
      *v41 = "db_flush_datastore";
      *&v41[8] = 1024;
      *v42 = 268;
      *&v42[4] = 1024;
      LODWORD(v43) = v32;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v30;
    v33 = __si_assert_copy_extra_332();
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 268, v35);
    free(v34);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v41 = CFAbsoluteTimeGetCurrent();
      _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Flush starting at %f", buf, 0xCu);
    }

    *__error() = v24;
  }

  v4 = *(a1 + 920);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = 0;
  v6 = *(v4 + 216);
  if (v6 > 842150449)
  {
    if (v6 != 1684300900)
    {
      if (v6 == 842150450)
      {
        v5 = (*(v4 + 220) - 1);
      }

      goto LABEL_14;
    }

LABEL_12:
    v5 = *(v4 + 224) - 1;
    goto LABEL_14;
  }

  if (v6 == -572662307)
  {
    v5 = data_map_double_count(v4);
    goto LABEL_14;
  }

  if (v6 == -270471200)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (dword_1EBF46AE8 >= 5)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v41 = v5;
      _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Flush at vector count %zu", buf, 0xCu);
    }

    *__error() = v26;
  }

  *a2 = 0;
  if ((*(a1 + 804) & 8) == 0)
  {
    if ((*(a1 + 4) & 2) != 0)
    {
      v9 = *__error();
      v12 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v41 = "db2_flush_datastore";
        *&v41[8] = 1024;
        *v42 = 8564;
        *&v42[4] = 2080;
        v43 = a1 + 324;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! prior write-errors invalidate sync.\n", buf, 0x1Cu);
      }

      v8 = 22;
      goto LABEL_24;
    }

    v7 = _db2_flush_all_cache(a1, 1);
    if (v7)
    {
      v8 = v7;
      v9 = *__error();
      v10 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *v41 = "db2_flush_datastore";
        *&v41[8] = 1024;
        *v42 = 8579;
        *&v42[4] = 2080;
        v43 = a1 + 324;
        v44 = 1024;
        v45 = v8;
        v11 = "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors flushing cache. %d\n";
LABEL_29:
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x22u);
      }
    }

    else
    {
      v15 = *(*(a1 + 856) + 12);
      v16 = map_write(a1);
      if (!v16)
      {
        for (i = 0; i != 6; ++i)
        {
          v18 = a1 + 8 * i;
          v19 = *(v18 + 880);
          if (i == 5 || (*(a1 + 804) & 0x14) != 0)
          {
            data_map_flush(v19);
          }

          else
          {
            v20 = *(v19 + 8);
            if (v20)
            {
              page_release(a1, v20, *v19, 5u, 0);
              if (dword_1EBF46AE8 >= 5)
              {
                v38 = *__error();
                log = _SILogForLogForCategory(7);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *(v18 + 880);
                  v22 = *v21;
                  LODWORD(v21) = v21[14];
                  *buf = 67109632;
                  *v41 = v22;
                  *&v41[4] = 1024;
                  *&v41[6] = i;
                  *v42 = 1024;
                  *&v42[2] = v21;
                  _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Push dirty string page %d to disk (%d). %d strings", buf, 0x14u);
                }

                *__error() = v38;
              }

              *(*(v18 + 880) + 8) = 0;
              **(v18 + 880) = -1;
            }

            else if (dword_1EBF46AE8 >= 5)
            {
              v39 = *__error();
              loga = _SILogForLogForCategory(7);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(*(v18 + 880) + 56);
                *buf = 67109376;
                *v41 = i;
                *&v41[4] = 1024;
                *&v41[6] = v23;
                _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "No dirty string page for %d. %d strings", buf, 0xEu);
              }

              *__error() = v39;
            }
          }
        }

        if ((*(a1 + 4) & 1) != 0 && (v15 & 1) == 0 || (*a2 = 1, fd_sync(*(a1 + 848), 0), dword_1EBF46AE8 < 5))
        {
          v8 = 0;
          goto LABEL_25;
        }

        v9 = *__error();
        v28 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *v41 = Current;
          _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Flush ending at %f", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_24;
      }

      v8 = v16;
      v9 = *__error();
      v10 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *v41 = "db2_flush_datastore";
        *&v41[8] = 1024;
        *v42 = 8590;
        *&v42[4] = 2080;
        v43 = a1 + 324;
        v44 = 1024;
        v45 = v8;
        v11 = "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors writing map. %d\n";
        goto LABEL_29;
      }
    }

LABEL_24:
    *__error() = v9;
    goto LABEL_25;
  }

  v8 = 13;
LABEL_25:
  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __flush_updateset_locked_block_invoke_144(uint64_t a1, int64_t a2, unsigned int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((*(v4 + 4) & 2) != 0)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v34 = *(*(*(a1 + 32) + 8) + 24);
      v35 = 136315650;
      v36 = "flush_updateset_locked_block_invoke";
      v37 = 1024;
      v38 = 8167;
      v39 = 1024;
      LODWORD(v40) = v34;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Bad sdb in db_updateset_iterate (delete) at page %d", &v35, 0x18u);
    }

    v24 = 22;
    goto LABEL_32;
  }

  db_writer_yield_lock(v4 + 584);
  v7 = *(a1 + 56);
  v8 = *(v7 + 856);
  v9 = *(v8 + 8);
  if (!v9)
  {
LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v10 = *(v8 + 16);
  if (v10 < v9)
  {
    v11 = v8 + 16 * v10;
    v13 = *(v11 + 20);
    v12 = v11 + 20;
    if (v13 == a2)
    {
      v14 = *(v12 + 12);
      if (a3 == v14 >> 28)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = v9;
  if (v9 < 1)
  {
    v25 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  v16 = 0;
  while (1)
  {
    v17 = (v9 + v16) >> 1;
    v18 = v8 + 20 + 16 * v17;
    v19 = a3 - (*(v18 + 12) >> 28);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    v21 = (v9 + v16) >> 1;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v9 = v21;
    if (v16 >= v21)
    {
      v25 = v20 > 0;
      goto LABEL_21;
    }
  }

  v20 = a2 - *v18;
  v21 = (v9 + v16) >> 1;
  if (v20 < 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v20)
  {
    v16 = v17 + 1;
    v21 = v9;
    goto LABEL_8;
  }

  v25 = 0;
LABEL_21:
  v26 = v15 - 1 > v17 && v25;
  v27 = v17 + v26;
  v28 = v8 + 16 * v27;
  *(v8 + 16) = v27;
  v12 = v28 + 20;
  v14 = *(v28 + 32);
LABEL_25:
  v29 = *(v12 + 8);
  if (*(*(*(a1 + 40) + 8) + 24) == v29 || (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) < *(a1 + 64)) || *(*(*(a1 + 48) + 8) + 24) <= 256)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = v29;
    v30 = _page_delete_obj_by_oid_and_type(v7, a2, a3, v29, v14 & 0xFFFFFFF, *(a1 + 68) & 0x4000);
    if ((v30 & 0xFFFFFFFD) != 0)
    {
      v24 = v30;
      v22 = *__error();
      v31 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v35 = 136316674;
        v36 = "flush_updateset_locked_block_invoke";
        v37 = 1024;
        v38 = 8189;
        v39 = 2048;
        v40 = a2;
        v41 = 2048;
        v42 = a2;
        v43 = 2048;
        v44 = a3;
        v45 = 2048;
        v46 = v29;
        v47 = 1024;
        v48 = v24;
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: Failed delete, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", &v35, 0x40u);
      }

LABEL_32:
      *__error() = v22;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v24 = 0xFFFFFFFFLL;
LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t _page_delete_obj_by_oid_and_type(uint64_t a1, int64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, __int16 a6)
{
  v8 = a4;
  v80 = *MEMORY[0x1E69E9840];
  __dst = 0;
  value_out = 0;
  v71 = 0;
  v72 = 0;
  result = _page_fetch_with_fd(a1, &value_out, a4, a5, a6 & 0x4000, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    goto LABEL_54;
  }

  v13 = *(value_out + 3);
  if ((v13 & 0xF0) != 0)
  {
    v62 = *__error();
    v63 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_delete_obj_by_oid_and_type";
      v76 = 1024;
      v77 = 5711;
      v78 = 1024;
      LODWORD(v79) = v8;
      _os_log_error_impl(&dword_1C278D000, v63, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v62;
    v64 = __si_assert_copy_extra_3233(0, -1);
    v65 = v64;
    v66 = "";
    if (v64)
    {
      v66 = v64;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5712, v66);
    goto LABEL_107;
  }

  if ((v13 & 8) != 0)
  {
    v67 = *__error();
    v68 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_delete_obj_by_oid_and_type";
      v76 = 1024;
      v77 = 5717;
      v78 = 1024;
      LODWORD(v79) = v8;
      _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v67;
    v69 = __si_assert_copy_extra_3233(0, -1);
    v65 = v69;
    v70 = "";
    if (v69)
    {
      v70 = v69;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5718, v70);
LABEL_107:
    free(v65);
LABEL_83:
    v53 = 2989;
    goto LABEL_96;
  }

  result = find_slot_for_oid_and_type(a1, value_out, a2, a3, &__dst, &v72, 1);
  v14 = *(value_out + 2);
  v15 = value_out + v14;
  v71 = value_out + v14;
  if (result != 2)
  {
    v16 = __dst;
    v17 = *(__dst + 4);
    if (*(__dst + 4) < 0)
    {
      v19 = *(__dst + 4);
      if (v19 > 0xBF)
      {
        if (v19 > 0xDF)
        {
          if (v19 > 0xEF)
          {
            if (v19 > 0xF7)
            {
              if (v19 > 0xFB)
              {
                if (v19 > 0xFD)
                {
                  if (v19 == 255)
                  {
                    v17 = *(__dst + 5);
                    v18 = 9;
                  }

                  else
                  {
                    v17 = (*(__dst + 5) << 48) | (*(__dst + 6) << 40) | (*(__dst + 7) << 32) | (*(__dst + 8) << 24) | (*(__dst + 9) << 16) | (*(__dst + 10) << 8) | *(__dst + 11);
                    v18 = 8;
                  }
                }

                else
                {
                  v17 = ((v17 & 1) << 48) | (*(__dst + 5) << 40) | (*(__dst + 6) << 32) | (*(__dst + 7) << 24) | (*(__dst + 8) << 16) | (*(__dst + 9) << 8) | *(__dst + 10);
                  v18 = 7;
                }
              }

              else
              {
                v17 = ((v17 & 3) << 40) | (*(__dst + 5) << 32) | (*(__dst + 6) << 24) | (*(__dst + 7) << 16) | (*(__dst + 8) << 8) | *(__dst + 9);
                v18 = 6;
              }
            }

            else
            {
              v17 = ((v17 & 7) << 32) | (*(__dst + 5) << 24) | (*(__dst + 6) << 16) | (*(__dst + 7) << 8) | *(__dst + 8);
              v18 = 5;
            }
          }

          else
          {
            v17 = ((v17 & 0xF) << 24) | (*(__dst + 5) << 16) | (*(__dst + 6) << 8) | *(__dst + 7);
            v18 = 4;
          }
        }

        else
        {
          v17 = ((v17 & 0x1F) << 16) | (*(__dst + 5) << 8) | *(__dst + 6);
          v18 = 3;
        }
      }

      else
      {
        v18 = 2;
        v17 = *(__dst + 5) | ((v17 & 0x3F) << 8);
      }
    }

    else
    {
      v18 = 1;
    }

    v20 = __dst + v18 + 4;
    v21 = *v20;
    if (*v20 < 0)
    {
      if (v21 >= 0xC0)
      {
        if (v21 >= 0xE0)
        {
          v56 = __si_assert_copy_extra_3233(0, -1);
          v57 = v56;
          v58 = "";
          if (v56)
          {
            v58 = v56;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v58);
          free(v57);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v21 = v20[v22];
    }

    if (__dst >= v15 || (*(a1 + 804) & (v21 >> 5) & 1) != a3 || v17 != a2)
    {
      page_release(a1, value_out, v8, 0, 0);
      result = 2;
      goto LABEL_54;
    }

    v25 = (*__dst + 4);
    v26 = __dst + v25;
    v27 = *(value_out + 1);
    *(value_out + 2) = v14 - v25;
    memmove(v16, v16 + (*v16 + 4), v15 - (v16 + (*v16 + 4)));
    set_offset_hint(a1, value_out, v72);
    v31 = value_out;
    if (v26 == v15)
    {
      v32 = *(a1 + 928);
      if (value_out)
      {
        v33 = *(v32 + 220);
        if (v33 < 1)
        {
          goto LABEL_45;
        }

        v34 = 0;
        v35 = (v32 + 272);
        while (*v35 != value_out)
        {
          ++v34;
          v35 += 6;
          if (v33 == v34)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        LODWORD(v34) = 4;
      }

      *(v32 + 224) = v34;
    }

LABEL_45:
    if ((v31[3] & 0xC) != 0)
    {
      page_resize(a1, &value_out, 0, v27 - v25, &__dst, v28, v29, v30, &v71);
      v31 = value_out;
    }

    v36 = v31[2];
    if (v26 == v15)
    {
      if (v36 == 20)
      {
        *buf = 0;
        map_delete(a1, a2, a3);
        page_free(a1, v8, buf, a6 & 0x4000);
        v37 = *buf == 0;
        goto LABEL_53;
      }

      v39 = v72;
      if (v72)
      {
        goto LABEL_61;
      }

      v40 = v31 + 5;
      __dst = v31 + 5;
      v71 = v31 + v36;
      if (v36 < 21)
      {
        v41 = 0;
      }

      else
      {
        do
        {
          v41 = v40;
          v40 = (v40 + (*v40 + 4));
        }

        while (v40 < (v31 + v36));
        v72 = v41;
        __dst = v40;
      }

      set_offset_hint(a1, v31, v41);
      v39 = v72;
      if (v72)
      {
LABEL_61:
        v42 = v39 + 4;
        v43 = *(v39 + 4);
        if (*(v39 + 4) < 0)
        {
          v45 = *(v39 + 4);
          if (v45 > 0xBF)
          {
            if (v45 > 0xDF)
            {
              if (v45 > 0xEF)
              {
                if (v45 > 0xF7)
                {
                  if (v45 > 0xFB)
                  {
                    if (v45 > 0xFD)
                    {
                      if (v45 == 255)
                      {
                        v43 = *(v39 + 5);
                        v44 = 9;
                      }

                      else
                      {
                        v43 = (*(v39 + 5) << 48) | (*(v39 + 6) << 40) | (*(v39 + 7) << 32) | (*(v39 + 8) << 24) | (*(v39 + 9) << 16) | (*(v39 + 10) << 8) | *(v39 + 11);
                        v44 = 8;
                      }
                    }

                    else
                    {
                      v43 = ((v43 & 1) << 48) | (*(v39 + 5) << 40) | (*(v39 + 6) << 32) | (*(v39 + 7) << 24) | (*(v39 + 8) << 16) | (*(v39 + 9) << 8) | *(v39 + 10);
                      v44 = 7;
                    }
                  }

                  else
                  {
                    v43 = ((v43 & 3) << 40) | (*(v39 + 5) << 32) | (*(v39 + 6) << 24) | (*(v39 + 7) << 16) | (*(v39 + 8) << 8) | *(v39 + 9);
                    v44 = 6;
                  }
                }

                else
                {
                  v43 = ((v43 & 7) << 32) | (*(v39 + 5) << 24) | (*(v39 + 6) << 16) | (*(v39 + 7) << 8) | *(v39 + 8);
                  v44 = 5;
                }
              }

              else
              {
                v43 = ((v43 & 0xF) << 24) | (*(v39 + 5) << 16) | (*(v39 + 6) << 8) | *(v39 + 7);
                v44 = 4;
              }
            }

            else
            {
              v43 = ((v43 & 0x1F) << 16) | (*(v39 + 5) << 8) | *(v39 + 6);
              v44 = 3;
            }
          }

          else
          {
            v46 = *(v39 + 5) | ((v43 & 0x3F) << 8);
            v44 = 2;
            v43 = v46;
          }
        }

        else
        {
          v44 = 1;
        }

        *buf = v44;
        VInt16 = ldb_readVInt16(v42, buf);
        v48 = map_update(a1, v8, a5, a2, v43, a3, *(a1 + 804) & (VInt16 >> 5) & 1, 0);
        if (v48)
        {
          v49 = v48;
          page_release(a1, value_out, v8, 1u, 0);
          result = v49;
          goto LABEL_54;
        }

        goto LABEL_50;
      }

      v59 = __si_assert_copy_extra_3233(0, -1);
      v60 = v59;
      v61 = "";
      if (v59)
      {
        v61 = v59;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 5830, "prev", v61);
      free(v60);
      if (__valid_fs(-1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v36 != 20)
      {
        if (dword_1EBF46AE8 >= 5)
        {
          v54 = *__error();
          v55 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = a1 + 324;
            v76 = 1024;
            v77 = v8;
            v78 = 2048;
            v79 = a2;
            _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "%s : no map update for deleting at pgnum %d (%.16llx)\n", buf, 0x1Cu);
          }

          *__error() = v54;
        }

LABEL_50:
        v37 = 1;
LABEL_53:
        *(*(a1 + 928) + 224) = 4;
        page_release(a1, value_out, v8, v37, 0);
        result = 0;
        --*(a1 + 20);
        goto LABEL_54;
      }

      v50 = __si_assert_copy_extra_3233(*(a1 + 848), -1);
      v51 = v50;
      v52 = "";
      if (v50)
      {
        v52 = v50;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Unexpected", "sdb2.c", 5857, "dbp->used_bytes != sizeof(db_page)", v52);
      free(v51);
      if (__valid_fsp(*(a1 + 848)))
      {
        goto LABEL_83;
      }
    }

    v53 = 3072;
LABEL_96:
    *v53 = -559038737;
    abort();
  }

LABEL_54:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t page_resize(uint64_t a1, void **a2, char a3, int a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    return 22;
  }

  v10 = *a2;
  if (!*a2)
  {
    return 22;
  }

  v12 = a3 ^ 1;
  result = 22;
  if (a4 <= 0x1000000)
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0 && v10[2] <= a4)
  {
    v16 = malloc_size(v10);
    v17 = a4;
    v18 = v16;
    v19 = *a2;
    if (v16 >= v17)
    {
      result = 0;
      v19[1] = v18;
    }

    else
    {
      v20 = 4;
      if ((v19[3] & 4) == 0)
      {
        v20 = 1;
      }

      v21 = v19[v20];
      if (v21 <= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v21;
      }

      do
      {
        v22 *= 2;
      }

      while (v22 < v17);
      v23 = v19[1];
      v24 = v22;
      v25 = malloc_type_realloc(*a2, v22, 0xF9C06CB4uLL);
      *a2 = v25;
      if (v25)
      {
        v26 = v25;
        v25[1] = v22;
        if (v25 != v19)
        {
          v27 = *(a1 + 928);
          if (*(v27 + 220) >= 1)
          {
            v28 = 0;
            v29 = v27 + 272;
            v30 = (v27 + 252);
            while (1)
            {
              if (*v29 == v26)
              {
                *v29 = 0;
                *v30 = 0;
                free(*(v29 + 8));
                *(v29 + 8) = 0;
                *(v29 + 24) = 0;
                *(v29 + 32) = 0;
                *(v29 + 40) = 0;
                if (*v29 == v19)
                {
                  goto LABEL_24;
                }
              }

              else if (*v29 == v19)
              {
LABEL_24:
                *v29 = v26;
                free(*(v29 + 8));
                *(v29 + 8) = 0;
                *(v29 + 24) = 0;
                *(v29 + 32) = 0;
                *(v29 + 40) = 0;
              }

              ++v28;
              ++v30;
              v29 += 48;
              if (v28 >= *(v27 + 220))
              {
                v26 = *a2;
                v24 = *(*a2 + 1);
                break;
              }
            }
          }
        }

        if (malloc_size(v26) < v24)
        {
          v35 = __si_assert_copy_extra_3233(0, -1);
          v36 = v35;
          v37 = "";
          if (v35)
          {
            v37 = v35;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 2728, "(size_t)(*dbpp)->size <= malloc_size(*dbpp)", v37);
          free(v36);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v38 = &a9;
        if (a5)
        {
          do
          {
            v32 = *a5;
            if (*a5)
            {
              v33 = v32 >= v19;
            }

            else
            {
              v33 = 0;
            }

            if (v33 && v32 <= v19 + v23)
            {
              *a5 = *a2 + v32 - v19;
            }

            v31 = v38++;
            a5 = *v31;
          }

          while (*v31);
        }

        return 0;
      }

      else
      {
        *a2 = v19;
        return 12;
      }
    }
  }

  return result;
}

uint64_t ldb_readVInt16(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1;
  v4 = (a1 + *a2);
  v5 = *v4;
  if (*v4 < 0)
  {
    if (v5 > 0xBF)
    {
      if (v5 >= 0xE0)
      {
        v8 = __si_assert_copy_extra_3233(0, -1);
        v9 = v8;
        v10 = "";
        if (v8)
        {
          v10 = v8;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v10);
        free(v9);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      LOWORD(v5) = v4[2] | (*(a1 + v3) << 8);
      v3 = v2 + 3;
    }

    else
    {
      v6 = *(a1 + v3) | ((v5 & 0x3F) << 8);
      v3 = v2 + 2;
      LOWORD(v5) = v6;
    }
  }

  *a2 = v3;
  return v5;
}

uint64_t map_update(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 856);
  v9 = v8[2];
  if (!v9)
  {
    result = 2;
    goto LABEL_33;
  }

  v13 = v8[4];
  if (v13 >= v9 || (v14 = &v8[4 * v13], v16 = *(v14 + 5), v15 = (v14 + 5), v16 != a4) || a6 != *(v15 + 12) >> 28)
  {
    v17 = v9;
    if (v9 >= 1)
    {
      v18 = 0;
      while (1)
      {
        v20 = (v9 + v18) >> 1;
        v21 = &v8[4 * v20 + 5];
        v22 = a6 - (*(v21 + 12) >> 28);
        if (v22)
        {
          v23 = v22;
          v19 = (v9 + v18) >> 1;
          if ((v23 & 0x8000000000000000) == 0)
          {
LABEL_13:
            if (!v23)
            {
              v24 = 0;
              goto LABEL_18;
            }

            v18 = v20 + 1;
            v19 = v9;
          }
        }

        else
        {
          v23 = a4 - *v21;
          v19 = (v9 + v18) >> 1;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }
        }

        v9 = v19;
        if (v18 >= v19)
        {
          v24 = v23 > 0;
          goto LABEL_18;
        }
      }
    }

    v24 = 0;
    v20 = 0;
LABEL_18:
    v26 = v17 - 1 > v20 && v24;
    v13 = v20 + v26;
    v8[4] = v20 + v26;
    v15 = &v8[4 * v20 + 5 + 4 * v26];
  }

  if (*(v15 + 8) == a2)
  {
    if (*v15 == a4)
    {
LABEL_28:
      if (dword_1EBF46AE8 >= 5)
      {
        v47 = a4;
        v48 = a2;
        v49 = *__error();
        v50 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = 136315906;
          v52 = (a1 + 324);
          v53 = 1024;
          *v54 = v48;
          *&v54[4] = 2048;
          *&v54[6] = v47;
          *&v54[14] = 2048;
          *&v54[16] = a5;
          _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "%s : map_update: update pgnum %d oid (%.16llx) to(%.16llx)\n", &v51, 0x26u);
        }

        *__error() = v49;
      }

      result = 0;
      *v15 = a5;
      *(v15 + 12) = *(v15 + 12) & 0xFFFFFFF | (a7 << 28);
      v8[3] |= 1u;
      goto LABEL_33;
    }

    v27 = a4;
    v28 = a2;
    if (a8)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *v15;
        v51 = 136315906;
        v52 = (a1 + 324);
        v53 = 2048;
        *v54 = v27;
        *&v54[8] = 2048;
        *&v54[10] = v31;
        *&v54[18] = 2048;
        *&v54[20] = a5;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "%s : map_update: update end old oid %.16llx (%.16llx) to (%.16llx)\n", &v51, 0x2Au);
      }

      *__error() = v29;
      a2 = v28;
      a4 = v27;
      goto LABEL_28;
    }

    v37 = *__error();
    v38 = _SILogForLogForCategory(7);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v13 < 1)
    {
      if (v39)
      {
        v46 = *v15;
        v51 = 136316674;
        v52 = "map_update";
        v53 = 1024;
        *v54 = 1761;
        *&v54[4] = 2080;
        *&v54[6] = a1 + 324;
        *&v54[14] = 2048;
        *&v54[16] = v27;
        *&v54[24] = 2048;
        *&v54[26] = v46;
        v55 = 2048;
        v56 = a5;
        v57 = 1024;
        v58 = v28;
        v42 = "%s:%d: %s : ERR: map_update: did not find old oid %.16llx (%.16llx) dropping update to (%.16llx), pgnum: 0x%x\n";
        v43 = v38;
        v44 = 64;
        goto LABEL_40;
      }
    }

    else if (v39)
    {
      v40 = *v15;
      v41 = *(*(a1 + 856) + 16 * (v13 - 1) + 20);
      v51 = 136316930;
      v52 = "map_update";
      v53 = 1024;
      *v54 = 1759;
      *&v54[4] = 2080;
      *&v54[6] = a1 + 324;
      *&v54[14] = 2048;
      *&v54[16] = v27;
      *&v54[24] = 2048;
      *&v54[26] = v40;
      v55 = 2048;
      v56 = a5;
      v57 = 1024;
      v58 = v28;
      v59 = 2048;
      v60 = v41;
      v42 = "%s:%d: %s : ERR: map_update: did not find old oid %.16llx (%.16llx) dropping update to (%.16llx), pgnum: 0x%x\n, prev key %.16llx";
      v43 = v38;
      v44 = 74;
LABEL_40:
      _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, v42, &v51, v44);
    }

    *__error() = v37;
    result = 2;
    goto LABEL_33;
  }

  v33 = a2;
  v34 = *__error();
  v35 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v45 = *(v15 + 8);
    v51 = 136316162;
    v52 = "map_update";
    v53 = 1024;
    *v54 = 1746;
    *&v54[4] = 2080;
    *&v54[6] = a1 + 324;
    *&v54[14] = 1024;
    *&v54[16] = v45;
    *&v54[20] = 1024;
    *&v54[22] = v33;
    _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: map_update: page offset doesn't match! 0x%x != 0x%x\n", &v51, 0x28u);
  }

  *__error() = v34;
  rebuild_map_locked(a1);
  result = map_force(a1, v33, a3, a5, a7);
LABEL_33:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIGetLockedJournalingState(uint64_t result)
{
  if (result)
  {
    return *(result + 6964);
  }

  return result;
}

CFMutableDictionaryRef si_get_clientstates_dict(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value)
  {
    Mutable = Value;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = CFDictionaryCreateMutable(v8, 1, v9, v10);
    CFDictionarySetValue(Mutable, a2, v7);
    CFDictionarySetValue(*(a1 + 72), @"clientStates", Mutable);
    CFRelease(v7);
    CFRelease(Mutable);
    if (v7)
    {
      return v7;
    }
  }

  v6 = CFDictionaryGetValue(Mutable, a2);
  if (v6)
  {
    return v6;
  }

  v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, a2, v7);
  CFRelease(v7);
  return v7;
}

uint64_t checkSumCFData(CFDataRef theData, _DWORD *a2, _DWORD *a3)
{
  v4 = theData;
  if (!theData)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    LODWORD(v4) = 0;
    goto LABEL_6;
  }

  v7 = BytePtr;
  Length = CFDataGetLength(v4);
  if (Length <= 0x7FFFFFFF)
  {
    LODWORD(v4) = Length;
    *a2 = adler32(*a2, v7, Length);
LABEL_6:
    *a3 = v4;
    return 1;
  }

  return 0;
}

uint64_t bundleIdHash(uint64_t a1, int a2)
{
  v2 = -1759636613;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 & 0x7FFFFFFF ^ HIWORD(v16);
}

uint64_t fd_name_ptr(uint64_t a1)
{
  if (*a1 != -50529037)
  {
    v4 = __si_assert_copy_extra_661(-1);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1263, "obj->_magic==(0xFCFCFCF3)", v6);
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

  os_unfair_lock_lock(&g_name_lock);
  v2 = *(a1 + 72);
  os_unfair_lock_unlock(&g_name_lock);
  return v2;
}

uint64_t SIPersistClientStateAndMeta(uint64_t a1, char a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) != 1 || (*(a1 + 829) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if (a2 & 1) != 0 || ((v3 = *(a1 + 60), (v3) ? (v4 = 3) : (v4 = v3 >> 1), (result = 1, v6 = v4 > 7, v7 = (1 << v4) & 0x86, !v6) ? (v8 = v7 == 0) : (v8 = 1), !v8))
  {
    error = 0;
    v9 = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 72), kCFPropertyListXMLFormat_v1_0, 0, &error);
    v10 = v9;
    if (error || !v9 || !CFDataGetBytePtr(v9) || !CFDataGetLength(v10))
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "SIPersistClientStateAndMeta";
        v34 = 1024;
        v35 = 5301;
        v36 = 2112;
        v37 = error;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: client state meta convert to CFData failed: %@", buf, 0x1Cu);
      }

      *__error() = v21;
      CFRelease(error);
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_24;
    }

    v11 = fd_create_protected(*(a1 + 32), "clientstatesmetafile.tmp", 536872450, 3u);
    if (v11)
    {
      v12 = v11;
      Length = CFDataGetLength(v10);
      BytePtr = CFDataGetBytePtr(v10);
      v15 = fd_write(v12, BytePtr, Length);
      CFRelease(v10);
      if (v15 != Length)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v29 = __error();
          v30 = strerror(*v29);
          *buf = 136315650;
          v33 = "SIPersistClientStateAndMeta";
          v34 = 1024;
          v35 = 5314;
          v36 = 2080;
          v37 = v30;
          v20 = "%s:%d: write client state meta tmp file failed: %s";
          goto LABEL_34;
        }

LABEL_29:
        *__error() = v16;
        fd_release(v12);
LABEL_24:
        result = 0;
        goto LABEL_32;
      }

      if (fd_rename(v12, "clientstatesmetafile"))
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = __error();
          v19 = strerror(*v18);
          *buf = 136315650;
          v33 = "SIPersistClientStateAndMeta";
          v34 = 1024;
          v35 = 5320;
          v36 = 2080;
          v37 = v19;
          v20 = "%s:%d: rename client state meta tmp file failed: %s";
LABEL_34:
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x1Cu);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      fd_release(v12);
LABEL_31:
      result = 1;
      goto LABEL_32;
    }

    CFRelease(v10);
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = __error();
      v28 = strerror(*v27);
      *buf = 136315650;
      v33 = "SIPersistClientStateAndMeta";
      v34 = 1024;
      v35 = 5330;
      v36 = 2080;
      v37 = v28;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: open client state meta tmp file failed: %s", buf, 0x1Cu);
    }

    v25 = __error();
    result = 0;
    *v25 = v23;
  }

LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void _mobile_journal_update_toc(uint64_t a1, __int128 *a2, NSObject *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 64))
      {
        if (*(a1 + 72))
        {
          if (*(a1 + 40) >= 1)
          {
            v12 = *a2;
            v13 = *(a2 + 2);
            v14 = *(a2 + 3);
            v6 = fd_lseek(*(a1 + 80), 0, 2);
            if (v6 != -1)
            {
              v7 = v6;
              if (fd_write(*(a1 + 80), &v12, 0x20uLL) == -1)
              {
                v8 = *__error();
                v9 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  v11 = *__error();
                  *buf = 136315650;
                  v16 = "_mobile_journal_update_toc";
                  v17 = 1024;
                  v18 = 19815;
                  v19 = 1024;
                  v20 = v11;
                  _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: journal TOC write error : %d", buf, 0x18u);
                }

                *__error() = v8;
              }

              else
              {
                *(a1 + 88) = v7 + 32;
                _mobile_journal_notify_toc_event(a1, *a2, *(a2 + 7), v7, a3);
              }
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void enqueueForProcessing(const void *a1, uint64_t *a2, uint64_t a3, char a4, _OWORD *a5, uint64_t a6, unsigned int a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = si_mobile_set_attr_ctx_create(a6, a1);
  v29 = v14;
  v15 = a5[1];
  *(v14 + 1) = *a5;
  *(v14 + 3) = v15;
  v14[7] = a1;
  v16 = *(a5 + 2);
  add_explicit = atomic_fetch_add_explicit(&gEnqueuedSize, v16, memory_order_relaxed);
  if ((a4 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  v18 = add_explicit + v16;
  if ((add_explicit + v16) >= 0x40000)
  {
    if (!*a2)
    {
      goto LABEL_11;
    }

    v28 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    log = v19;
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 134218498;
      v31 = v16;
      v32 = 2048;
      v33 = v18;
      v34 = 2112;
      v35 = a1;
      _os_log_impl(&dword_1C278D000, log, v20, "#index too much enqueued (%lld/%lld), bundleID:%@ - deferring callback", buf, 0x20u);
    }

    *__error() = v28;
    v21 = *a2;
    goto LABEL_10;
  }

  if ((gSIBadThermals & 1) != 0 || gMemoryPressureCritical == 1)
  {
    v21 = *a2;
    if (*a2)
    {
LABEL_10:
      v14[5] = v21;
      v14[6] = a3;
      *a2 = 0;
    }
  }

LABEL_11:
  *(v14 + 8) = CFAbsoluteTimeGetCurrent();
  v22 = si_backtrace_routine_resolve(*v14, v14[9], setCSAttributes2, v14, &v29);
  v23 = qos_class_self();
  if (v23 >= QOS_CLASS_UTILITY)
  {
    v24 = 17;
  }

  else
  {
    v24 = v23;
  }

  if ((a4 & 8) != 0)
  {
    v25 = 9;
  }

  else
  {
    v25 = v24;
  }

  si_enqueue_work_bulk_with_qos(*(a6 + 8 * a7 + 1008), v25, v22, &v29, a1, 1);
  v26 = *MEMORY[0x1E69E9840];
}

void *si_mobile_set_attr_ctx_create(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040A35325E4uLL);
  *v4 = a1;
  if (a2)
  {
    v4[9] = CFRetain(a2);
  }

  return v4;
}

void si_enqueue_work_bulk_with_qos(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    a2 = *(a1 + 24);
    goto LABEL_4;
  }

  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = *(a1 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __si_enqueue_work_bulk_with_qos_block_invoke;
  v9[3] = &__block_descriptor_tmp_1408;
  v9[4] = a1;
  v9[5] = a5;
  v12 = a6;
  v9[6] = 0;
  v9[7] = v7;
  v10 = 1;
  v11 = a2;
  v9[8] = a3;
  v9[9] = a4;
  dispatch_sync(v8, v9);
}

void __si_enqueue_work_bulk_with_qos_block_invoke(uint64_t a1)
{
  si_push_tag_locked(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 84);
  v6 = *(a1 + 64);
  v7 = **(a1 + 72);
  if (*(a1 + 48))
  {
    if (*(a1 + 88))
    {
      si_enqueue_barrier_inner_with_qos(v3, v4, v5, v6, v7);
    }

    else
    {
      si_enqueue_work_inner_with_qos(v3, v4, v5, v6, v7);
    }

    if (*(a1 + 80) >= 2u)
    {
      v8 = 1;
      do
      {
        si_enqueue_work_inner_with_qos(*(a1 + 56), *(a1 + 32), *(a1 + 84), *(a1 + 64), *(*(a1 + 72) + 8 * v8++));
      }

      while (v8 < *(a1 + 80));
    }
  }

  else
  {
    if (*(a1 + 88))
    {
      si_enqueue_barrier_inner_with_qos(v3, v4, v5, v6, v7);
    }

    else
    {
      si_enqueue_work_inner_with_qos(v3, v4, v5, v6, v7);
    }

    if (*(a1 + 80) >= 2u)
    {
      v9 = 1;
      do
      {
        si_enqueue_work_inner_with_qos(*(a1 + 56), *(a1 + 32), *(a1 + 84), *(a1 + 64), *(*(a1 + 72) + 8 * v9++));
      }

      while (v9 < *(a1 + 80));
    }
  }
}

void si_push_tag_locked(uint64_t a1, void *key, const void **a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46ADC >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 72);
      v18 = 134218240;
      v19 = key;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Push %p to tags %p", &v18, 0x16u);
    }

    *__error() = v12;
  }

  Mutable = *(a1 + 72);
  if (!Mutable)
  {
    if (*(a1 + 33))
    {
      v9 = MEMORY[0x1E695E9D8];
    }

    else
    {
      v9 = &kUInt64DictionaryKeyCallBacks;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, v9, MEMORY[0x1E695E9E8]);
    *(a1 + 72) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value || (Value = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, &kUint64BagCallbacks), CFDictionarySetValue(*(a1 + 72), key, Value), CFRelease(Value), dword_1EBF46ADC < 5))
  {
    if (a3)
    {
LABEL_10:
      while (a4)
      {
        v11 = *a3++;
        CFBagAddValue(Value, v11);
        --a4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = key;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Created tag bag for %p", &v18, 0xCu);
    }

    *__error() = v15;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  for (; a4; --a4)
  {
    CFBagAddValue(Value, 0);
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t UInt64RefHashCallback(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

void si_routine_protectionClassB(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void setCSAttributes2(unsigned __int8 *a1, int a2)
{
  v209 = *MEMORY[0x1E69E9840];
  v203 = a2;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  if (!a2)
  {
    v8 = *a1;
    if (*(*a1 + 1288) == 1)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v204 = 0;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "setCSAttributes2 failed: index is read-only", v204, 2u);
      }

      *__error() = v9;
      goto LABEL_37;
    }

    v11 = v7.n128_f64[0];
    v12 = dispatch_group_create();
    v152 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v201 = HIDWORD(v14);
    v202 = v14;
    v200 = v15;
    v199 = v16;
    v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    v20 = v17;
    if (v19)
    {
      v19(*(v17 + 288));
    }

    v198 = v202;
    v197 = v201;
    v196 = v200;
    v195 = v199;
    if (_setjmp(v20))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v204 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v204, 2u);
      }

      v20[78] = v18;
      CIOnThreadCleanUpReset(v195);
      dropThreadId(v198, 1, add_explicit + 1);
      CICleanUpReset(v198, v196);
LABEL_36:
      bumpWorkTime(v8, v11);
      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v12);
LABEL_37:
      v6 = v8;
      goto LABEL_38;
    }

    v154 = v18;
    base = si_mobile_journal_get_base(*(a1 + 1), v5, v4);
    v22 = base;
    v155 = v12;
    if (!base || v4 <= 0x23)
    {
      v26 = add_explicit;
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v204 = 136316162;
        *&v204[4] = "setCSAttributes2";
        *&v204[12] = 1024;
        *&v204[14] = 32490;
        *&v204[18] = 2048;
        *&v204[20] = v22;
        *&v204[28] = 2048;
        *&v204[30] = v5;
        *&v204[38] = 2048;
        v205 = v4;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, diskRecord:%p, journalEntryOffset:%lld, journalEntrySize:%ld", v204, 0x30u);
      }

      *__error() = v27;
      goto LABEL_32;
    }

    v23 = *base;
    v24 = v23;
    v156 = add_explicit;
    if (v23 > -262275348)
    {
      if (v23 == -262275347)
      {
        goto LABEL_23;
      }

      v25 = -260112659;
    }

    else
    {
      if (v23 == -263323923)
      {
        goto LABEL_23;
      }

      v25 = -263258387;
    }

    if (v23 != v25)
    {
      v33 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        *__error() = v33;
        v26 = v156;
LABEL_32:
        v38 = v154;
LABEL_33:
        v39 = threadData[9 * v198 + 1] + 320 * v197;
        *(v39 + 312) = v38;
        v40 = *(v39 + 232);
        if (v40)
        {
          v40(*(v39 + 288));
        }

        dropThreadId(v198, 0, v26 + 1);
        v12 = v155;
        goto LABEL_36;
      }

      *v204 = 136316162;
      *&v204[4] = "setCSAttributes2";
      *&v204[12] = 1024;
      *&v204[14] = 32496;
      *&v204[18] = 2048;
      *&v204[20] = v24;
      *&v204[28] = 2048;
      *&v204[30] = v5;
      *&v204[38] = 2048;
      v205 = v4;
      v35 = "%s:%d: Invalid journal entry, magic:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld";
      v36 = v37;
LABEL_93:
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, v204, 0x30u);
      goto LABEL_31;
    }

LABEL_23:
    v29 = *(base + 1);
    if (v29 <= 0xFFFFFFF3 && v4 >= (v29 + 12))
    {
      v30 = *(base + 6);
      v31 = *(base + 7) & 0x7FFF;
      if (v23 == -263258387 || v23 == -263323923)
      {
        v32 = 2 * *(base + 4);
      }

      else
      {
        v32 = *(base + 4);
      }

      v50 = v32;
      v51 = *(base + 6);
      v131 = *(base + 7) & 0x7FFF;
      v52 = *(base + 5);
      v53 = *(base + 6);
      v54 = *(base + 7);
      v55 = *(base + 8);
      v56 = a1[32];
      v151 = base + 36;
      v148 = v55;
      v149 = v54;
      v143 = v50;
      v140 = v53;
      v141 = v52;
      v139 = v30;
      v123 = base + 36;
      if (v56 == 1)
      {
        *v204 = 0;
        VInt64 = v2_readVInt64(base + 36, v204);
        v53 = v140;
        v52 = v141;
        v50 = v143;
        v55 = v148;
        v54 = v149;
        v58 = *v204;
        v59 = VInt64;
      }

      else
      {
        v59 = 0;
        v58 = 0;
      }

      v153 = v59;
      v60 = v51 >> 10;
      v61 = v58 + (v51 & 0x3FF);
      v62 = v61 + (v51 >> 10) + v31 + v52 + (v50 >> 1) + v53 + v54 + v55 + 24;
      if (v29 == v62)
      {
        v126 = v61;
        v127 = v60;
        v145 = v58;
        v63 = *(v22 + 2);
        v64 = adler32(0, v123, v29 - 24);
        if (v63 == v64)
        {
          v65 = *MEMORY[0x1E695E480];
          v66 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &v151[v145], 0x8000100u);
          if (v66)
          {
            v67 = v66;
            HasPrefix = CFEqual(v66, @"com.apple.CloudDocs.iCloudDriveFileProvider");
            v69 = 1;
            if (!HasPrefix)
            {
              HasPrefix = CFEqual(v67, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged");
              if (!HasPrefix)
              {
                HasPrefix = CFEqual(v67, @"com.apple.CloudDocs.MobileDocumentsFileProvider");
                if (!HasPrefix)
                {
                  HasPrefix = CFStringHasPrefix(v67, @"com.apple.FileProvider");
                  if (!HasPrefix)
                  {
                    v69 = 0;
                  }
                }
              }
            }

            v135 = v69;
            v150 = v67;
            v70 = v126;
            if (v139 >= 0x400)
            {
              HasPrefix = CFStringCreateWithCString(v65, &v151[v126], 0x8000100u);
              v70 = v126;
              v71 = HasPrefix;
            }

            else
            {
              v71 = 0;
            }

            v147 = v71;
            v79 = v70 + v127;
            v80 = *(a1 + 20);
            v134 = gSIBadThermals;
            v142 = v65;
            if (v131)
            {
              HasPrefix = CFStringCreateWithCString(v65, &v151[v79], 0x8000100u);
              v81 = HasPrefix;
            }

            else
            {
              v81 = 0;
            }

            v82 = v148;
            v84 = v140;
            v83 = v141;
            v146 = v81;
            v85 = v141;
            v144 = v80 & 0x10;
            v86 = v79 + v131;
            v87 = v86;
            v136 = v131;
            v133 = v141;
            if (v143 >= 2)
            {
              memset(v204, 0, 24);
              _MDPlistGetRootPlistObjectFromBytes();
              v87 = v86 + (v143 >> 1);
              v207 = *v204;
              v208 = *&v204[16];
              Count = _MDPlistArrayGetCount();
              v187[0] = MEMORY[0x1E69E9820];
              v187[1] = 0x40000000;
              v187[2] = __setCSAttributes2_block_invoke;
              v187[3] = &__block_descriptor_tmp_1910;
              v193 = v134;
              v192 = Count;
              v188 = *v204;
              v187[4] = a1;
              v189 = *&v204[16];
              v190 = v150;
              v191 = v8;
              v194 = v144 >> 4;
              si_indexingWatchdogPerform(v8, v150, Count, 6u, v187);
              v89 = SIGetAccumulatedSizeForGroup(v8, v150, 0);
              v90 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              logDeleteEventInCoreAnalyticsWithBundleId(v150, Count, v89, v90 - v152);
              v85 = v133;
              v84 = v140;
              v83 = v141;
              v82 = v148;
            }

            v138 = v84;
            v137 = v82;
            if (v85)
            {
              v91 = v83;
              v92 = v84;
              memset(v204, 0, 24);
              v207 = 0uLL;
              v208 = 0;
              _MDPlistGetRootPlistObjectFromBytes();
              v93 = v87 + v91;
              v129 = v92;
              if (v92 && (v185 = 0uLL, v186 = 0, _MDPlistGetRootPlistObjectFromBytes(), v183 = 0uLL, v184 = 0, _MDPlistGetPlistObjectType() == 240))
              {
                v183 = v185;
                v184 = v186;
                if (_MDPlistArrayGetCount() == 2)
                {
                  _MDPlistArrayGetPlistObjectAtIndex();
                  v183 = *v204;
                  v184 = *&v204[16];
                  v94 = _MDPlistGetPlistObjectType() == 241;
                }

                else
                {
                  v94 = 0;
                }

                v95 = v155;
                v96 = v149;
                v97 = v139;
              }

              else
              {
                v94 = 0;
                v95 = v155;
                v96 = v149;
                v97 = v139;
              }

              v124 = v97;
              v125 = v96;
              v185 = v207;
              v186 = v208;
              if (_MDPlistGetPlistObjectType() == 240)
              {
                v185 = v207;
                v186 = v208;
                v100 = _MDPlistArrayGetCount();
              }

              else
              {
                v100 = 0;
              }

              v101 = v100;
              v102 = *(v8 + 2360);
              v99 = v93;
              v103 = *(v102 + 120);
              v104 = *(v102 + 144);
              v105 = a1[85];
              v106 = (*(a1 + 20) >> 4) & 1;
              v98 = v101;
              v157 = MEMORY[0x1E69E9820];
              v158 = 0x40000000;
              v159 = __setCSAttributes2_block_invoke_1911;
              v160 = &__block_descriptor_tmp_1918;
              v161 = v8;
              v162 = v150;
              v172 = v101;
              v163 = a1;
              v173 = v135;
              v174 = v134;
              v165 = v208;
              v164 = v207;
              v175 = v94;
              v166 = *v204;
              v76 = v153;
              v167 = *&v204[16];
              v168 = v153;
              v169 = v147;
              v170 = v95;
              v171 = &v203;
              v176 = v124;
              v177 = v136;
              v178 = v143;
              v179 = v133;
              v180 = v129;
              v181 = v125;
              v182 = v137;
              HasPrefix = v103(v104);
              v26 = v156;
            }

            else
            {
              v98 = 0;
              v99 = v87;
              v26 = v156;
              v76 = v153;
            }

            v128 = v99;
            v132 = v98;
            MEMORY[0x1EEE9AC00](HasPrefix);
            bzero(v120, 0x1000uLL);
            v107 = _SIStackAllocatorCreate(v120, 4096, indexingZone);
            v38 = v154;
            if (v146)
            {
              v108 = v107;
              if (!v120[3])
              {
                v120[1] = (v120[0] + 55) & 0xFFFFFFFFFFFFFFF0;
              }

              Mutable = _MDPlistContainerCreateMutable();
              if (Mutable)
              {
                v130 = v108;
                v110 = Mutable;
                _MDPlistContainerBeginContainer();
                _MDPlistContainerBeginDictionary();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                v111 = v146;
                v112 = CFStringHasPrefix(v146, @"_kMDItemStateInfo_");
                v121 = v110;
                if (v112)
                {
                  v113 = CFRetain(v111);
                }

                else
                {
                  v113 = CFStringCreateWithFormat(v142, 0, @"_kMDItemStateInfo_%@", v111);
                }

                v114 = v113;
                bzero(v204, 0x400uLL);
                v122 = v114;
                CString = CFStringGetCString(v114, v204, 1024, 0x8000100u);
                v116 = v121;
                if (CString)
                {
                  strlen(v204);
                  _MDPlistContainerAddCString();
                  if (v137)
                  {
                    _MDPlistContainerAddDataValue();
                  }

                  else
                  {
                    _MDPlistContainerAddNullValue();
                  }
                }

                CFRelease(v122);
                _MDPlistContainerEndDictionary();
                _MDPlistContainerEndContainer();
                _MDPlistGetRootPlistObjectFromPlist();
                processOne(v8, v76, @"com.apple.searchd", v147, &v207, v144 | 0x20000, v130, 0, 0, &v203);
                CFRelease(v116);
              }
            }

            v117 = v150;
            v118 = SIGetAccumulatedSizeForGroup(v8, v150, 0);
            v119 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            logIndexingEventInCoreAnalyticsWithBundleId(v117, v132, v118, v119 - v152);
            CFRelease(v117);
            if (v147)
            {
              CFRelease(v147);
            }

            if (v146)
            {
              CFRelease(v146);
            }

            goto LABEL_73;
          }

          v77 = *__error();
          v78 = _SILogForLogForCategory(0);
          v38 = v154;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            *v204 = 136316162;
            *&v204[4] = "setCSAttributes2";
            *&v204[12] = 1024;
            *&v204[14] = 32560;
            *&v204[18] = 2048;
            *&v204[20] = 0;
            *&v204[28] = 2048;
            *&v204[30] = v5;
            *&v204[38] = 2048;
            v205 = v4;
            _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, bundleID:%p, journalEntryOffset:%lld, journalEntrySize:%ld", v204, 0x30u);
          }

          *__error() = v77;
          v26 = v156;
LABEL_72:
          v76 = v153;
LABEL_73:
          if (v76 && !v203)
          {
            *(v8 + 2136) = v76;
          }

          goto LABEL_33;
        }

        v74 = *__error();
        v75 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          *v204 = 136316418;
          *&v204[4] = "setCSAttributes2";
          *&v204[12] = 1024;
          *&v204[14] = 32553;
          *&v204[18] = 2048;
          *&v204[20] = v64;
          *&v204[28] = 2048;
          *&v204[30] = v63;
          *&v204[38] = 2048;
          v205 = v5;
          LOWORD(v206) = 2048;
          *(&v206 + 2) = v4;
          _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, checkSum:0x%08lx, storedCheckSum:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld", v204, 0x3Au);
        }

        *__error() = v74;
      }

      else
      {
        v72 = *__error();
        v73 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *v204 = 136316418;
          *&v204[4] = "setCSAttributes2";
          *&v204[12] = 1024;
          *&v204[14] = 32542;
          *&v204[18] = 2048;
          *&v204[20] = v29;
          *&v204[28] = 2048;
          *&v204[30] = v62;
          *&v204[38] = 2048;
          v205 = v5;
          LOWORD(v206) = 2048;
          *(&v206 + 2) = v4;
          _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, size:%ld, extraSize:%ld, journalEntryOffset:%lld, journalEntrySize:%ld", v204, 0x3Au);
        }

        *__error() = v72;
      }

      v26 = v156;
      v38 = v154;
      goto LABEL_72;
    }

    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *v204 = 136316162;
    *&v204[4] = "setCSAttributes2";
    *&v204[12] = 1024;
    *&v204[14] = 32505;
    *&v204[18] = 2048;
    *&v204[20] = v29;
    *&v204[28] = 2048;
    *&v204[30] = v5;
    *&v204[38] = 2048;
    v205 = v4;
    v35 = "%s:%d: Invalid journal entry, size:%ld, journalEntryOffset:%lld, journalEntrySize:%ld";
    v36 = v34;
    goto LABEL_93;
  }

LABEL_38:
  v41 = v6;
  if (v4)
  {
    atomic_fetch_add_explicit(&gEnqueuedSize, -v4, memory_order_relaxed);
  }

  v42 = *(a1 + 5);
  v43 = v203;
  if (v42)
  {
    v42(*(a1 + 6), v203, v7);
    v43 = v203;
  }

  if (!v43)
  {
    v44 = *(a1 + 7);
    if (v44)
    {
      *&v207 = 0;
      v45 = *(v41 + 1048);
      v46 = *(v45 + 8);
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 0x40000000;
      *&v204[16] = __si_pop_queue_block_invoke;
      *&v204[24] = &__block_descriptor_tmp_42_1565;
      *&v204[32] = v45;
      v205 = v44;
      *&v206 = 1;
      *(&v206 + 1) = &v207;
      dispatch_sync(v46, v204);
    }
  }

  v47 = *(a1 + 1);
  if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v47, 1);
  }

  v48 = *(a1 + 9);
  if (v48)
  {
    CFRelease(v48);
  }

  free(a1);
  v49 = *MEMORY[0x1E69E9840];
}

void ___mobile_journal_notify_toc_event_block_invoke(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v4 = *(a1 + 32);
  *(v4 + 108) = 0;
  if (a3 < 0 || (uint64 = xpc_dictionary_get_uint64(xdict, "toc_p"), v4 = *(a1 + 32), (*(v4 + 96) = uint64) == 0))
  {
    v6 = 0;
  }

  else if (uint64 >= *(v4 + 88))
  {
    v6 = 0;
  }

  else
  {
    v6 = uint64;
  }

  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___mobile_journal_notify_toc_event_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_1903;
  v8[4] = v6;
  v8[5] = v4;
  v9 = *(a1 + 48);
  v8[6] = v7;
  dispatch_async(v7, v8);
}

void ___mobile_journal_notify_toc_event_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _mobile_journal_notify_toc_event(*(a1 + 40), 0, *(a1 + 56), v2, *(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v3, 1);
  }

  v4 = *(a1 + 48);

  dispatch_release(v4);
}

uint64_t db_delete_fields_with_flags(int *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *a1;
      *buf = 136315650;
      v19 = "db_delete_fields_with_flags";
      v20 = 1024;
      v21 = 363;
      v22 = 1024;
      v23 = v14;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v12;
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 363, v17);
    free(v16);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    result = 13;
  }

  else
  {
    if (!a2)
    {
LABEL_14:
      result = 2;
      goto LABEL_15;
    }

    v4 = *(a2 + 12);
    if (v4 >= 0x31)
    {
      v5 = a2 + v4;
      v6 = a2 + 48;
      while (1)
      {
        v7 = v6 + *(v6 + 8);
        if (v7 > v5)
        {
          break;
        }

        v8 = (v7 + 13);
        if ((*(v6 + 2) & 0x200) != 0)
        {
          v9 = v6 - v8;
          memmove(v6, v8, v5 - v8);
          LODWORD(v4) = *(a2 + 12) + v9;
          *(a2 + 12) = v4;
        }

        else
        {
          v6 = v7 + 13;
        }

        v5 = a2 + v4;
        if (v6 >= v5)
        {
          goto LABEL_11;
        }
      }

      *(a2 + 12) = v6 - a2;
      goto LABEL_14;
    }

LABEL_11:
    result = 0;
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void _mobile_journal_notify_toc_event(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, NSObject *a5)
{
  if (a1 && *(a1 + 56) && *(a1 + 64) && *(a1 + 72) && *(a1 + 40) >= 1 && (*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
    message = _si_mobile_journal_create_message(a1, 3u);
    xpc_dictionary_set_uint64(message, "jsn", a2);
    xpc_dictionary_set_uint64(message, "toc_o", a4);
    xpc_dictionary_set_uint64(message, "toc_f", a3);
    atomic_fetch_add(a1, 1u);
    dispatch_retain(a5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___mobile_journal_notify_toc_event_block_invoke;
    v14[3] = &__block_descriptor_tmp_1904;
    v14[4] = a1;
    v14[5] = a5;
    v15 = a3;
    if ((si_xpc_send_client_msg(message, v14) & 1) == 0)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "### skg journal_add message NOT sent", v13, 2u);
      }

      *__error() = v11;
      if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
      {
        _si_mobile_journal_finalize(a1, 1);
      }
    }

    if (message)
    {
      CFRelease(message);
    }
  }
}

void __setCSAttributes2_block_invoke_2(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v102 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(v1 + 32), 0x40000000, add_explicit + 1);
  v94 = v4;
  v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v93 = HIDWORD(v4);
  v92 = __PAIR64__(v6, v7);
  *(v5 + 216) = 0;
  v8 = *(v5 + 312);
  v9 = *(v5 + 224);
  if (v9)
  {
    v9(*(v5 + 288));
  }

  v91 = v94;
  v90 = v93;
  v89 = v92;
  if (_setjmp(v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v5 + 312) = v8;
    CIOnThreadCleanUpReset(v89);
    dropThreadId(v91, 1, add_explicit + 1);
    CICleanUpReset(v91, HIDWORD(v89));
    goto LABEL_44;
  }

  v61 = v8;
  if (gDuplicateOidsCheckSuspendState_block_invoke_4_once != -1)
  {
    dispatch_once(&gDuplicateOidsCheckSuspendState_block_invoke_4_once, &__block_literal_global_1914);
  }

  v10 = &unk_1C2BF9000;
  if (*(v2 + 140) & 1) != 0 || (*(v2 + 141))
  {
    goto LABEL_11;
  }

  if (*(v2 + 136) < 2u)
  {
    goto LABEL_82;
  }

  if (!CFEqual(*(v2 + 40), @"com.apple.MobileSMS"))
  {
    if (CFEqual(*(v2 + 40), @"com.apple.mobilenotes"))
    {
      v46 = *(v2 + 136);
      buf = *(v2 + 48);
      v100 = *(v2 + 64);
      if (forceProcessCSSerialForNotes(v46, &buf))
      {
        goto LABEL_11;
      }
    }

LABEL_82:
    LODWORD(v47) = gCPUCount;
    if (gCPUCount <= 1)
    {
      LODWORD(v47) = 1;
    }

    v48 = *(v2 + 136);
    if (v47 >= v48)
    {
      v47 = v48;
    }

    else
    {
      v47 = v47;
    }

    v49 = v47;
    if (v47 < 2)
    {
      goto LABEL_95;
    }

    os_unfair_lock_lock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    if (gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool <= v49)
    {
      if (gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool < 2)
      {
        v49 = 1;
        goto LABEL_94;
      }

      v49 = gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool - 1;
      v50 = 1;
    }

    else
    {
      v50 = gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool - v49;
    }

    gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool = v50;
LABEL_94:
    os_unfair_lock_unlock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
LABEL_95:
    v83 = 0;
    v84 = &v83;
    v85 = v10[330];
    v86 = 0;
    if (v49 == 1)
    {
      goto LABEL_12;
    }

    *&buf = 0;
    v51 = *(v2 + 32);
    if (v49)
    {
      v52 = *(*v51 + 32);
    }

    else
    {
      v52 = -1;
    }

    v27 = v61;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    v64 = *(v2 + 48);
    v66 = *(v2 + 72);
    v53 = *(v2 + 112);
    v68 = *(v2 + 96);
    block[2] = __setCSAttributes2_block_invoke_4;
    block[3] = &unk_1E81924C8;
    block[5] = v51;
    block[6] = &buf;
    v54 = *(v2 + 136);
    v72 = v52;
    v73 = v54;
    v65 = *(v2 + 64);
    v74 = *(v2 + 142);
    v67 = *(v2 + 88);
    v69 = *(v2 + 40);
    v70 = v53;
    block[4] = &v83;
    v71 = *(v2 + 128);
    dispatch_apply(v49, 0, block);
    os_unfair_lock_lock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool += v49;
    os_unfair_lock_unlock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    goto LABEL_36;
  }

  v32 = *(v2 + 136);
  v87 = *(v2 + 48);
  v88 = *(v2 + 64);
  if (!v32)
  {
    goto LABEL_82;
  }

  v33 = 0;
  v34 = 0;
  allocator = *MEMORY[0x1E695E480];
  v57 = v32;
  v35 = v32;
  do
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v95 = 0uLL;
    v96 = 0;
    LODWORD(v81) = 0;
    buf = v87;
    v100 = v88;
    if (getCSInfoAtIndex(&buf, v33, &v83, &v81, &v95))
    {
      buf = v95;
      v100 = v96;
      if (attrsKeyValueMatchesString(&buf, "_kMDItemDomainIdentifier", 24, "attachmentDomain", 16))
      {
        v97 = v95;
        v98 = v96;
        buf = 0uLL;
        v100 = 0;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v97 = buf;
          v98 = v100;
          if (_MDPlistGetPlistObjectType() == 244 || (v97 = buf, v98 = v100, _MDPlistGetPlistObjectType() == 245))
          {
            v97 = buf;
            v98 = v100;
            v36 = _MDPlistContainerCopyCSObject();
            if (v36)
            {
              v37 = v36;
              if (CFStringGetLength(v36))
              {
                Mutable = v34;
                if (!v34)
                {
                  Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
                }

                v34 = Mutable;
                CFSetAddValue(Mutable, v37);
              }

              CFRelease(v37);
            }
          }
        }
      }
    }

    v39 = v34;
    v33 = (v33 + 1);
  }

  while (v35 != v33);
  v10 = &unk_1C2BF9000;
  if (!v34)
  {
    goto LABEL_82;
  }

  if (CFSetGetCount(v34) >= v57)
  {
    CFRelease(v34);
    goto LABEL_82;
  }

  v40 = 1;
  do
  {
    v41 = 0;
    v42 = v40;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v95 = 0uLL;
    v96 = 0;
    LODWORD(v81) = 0;
    buf = v87;
    v100 = v88;
    if (getCSInfoAtIndex(&buf, (v40 - 1), &v83, &v81, &v95))
    {
      buf = v95;
      v100 = v96;
      if (attrsKeyValueMatchesString(&buf, "_kMDItemDomainIdentifier", 24, "attachmentDomain", 16))
      {
        goto LABEL_73;
      }

      v97 = v95;
      v98 = v96;
      buf = 0uLL;
      v100 = 0;
      if (!_MDPlistDictionaryGetPlistObjectForKey())
      {
        goto LABEL_73;
      }

      v97 = buf;
      v98 = v100;
      if (_MDPlistGetPlistObjectType() != 244)
      {
        v97 = buf;
        v98 = v100;
        if (_MDPlistGetPlistObjectType() != 245)
        {
          goto LABEL_73;
        }
      }

      v97 = buf;
      v98 = v100;
      v43 = _MDPlistContainerCopyCSObject();
      if (!v43)
      {
        goto LABEL_73;
      }

      v44 = v43;
      if (!CFStringGetLength(v43))
      {
        CFRelease(v44);
LABEL_73:
        v41 = 0;
        goto LABEL_74;
      }

      v45 = CFSetContainsValue(v39, v44) != 0;
      CFRelease(v44);
      v41 = v45;
    }

LABEL_74:
    if (v41)
    {
      break;
    }

    v40 = v42 + 1;
  }

  while (v42 < v57);
  CFRelease(v39);
  v10 = &unk_1C2BF9000;
  if (!v41)
  {
    goto LABEL_82;
  }

LABEL_11:
  v83 = 0;
  v84 = &v83;
  v85 = v10[330];
  v86 = 0;
LABEL_12:
  bzero(&buf, 0x1000uLL);
  v11 = _SIStackAllocatorCreate(&buf, 4096, indexingZone);
  if (*(v2 + 136))
  {
    v60 = v11;
    v12 = 0;
    v58 = *MEMORY[0x1E695E480];
    v62 = add_explicit;
    do
    {
      if (!v101)
      {
        *(&buf + 1) = (buf + 55) & 0xFFFFFFFFFFFFFFF0;
      }

      v95 = 0uLL;
      v96 = 0;
      v97 = *(v2 + 48);
      v98 = *(v2 + 64);
      _MDPlistArrayGetPlistObjectAtIndex();
      v97 = v95;
      v98 = v96;
      if (_MDPlistGetPlistObjectType() == 246)
      {
        *&v87 = 0;
        v97 = v95;
        v98 = v96;
        _MDPlistDataGetBytePtr();
        _MDPlistGetRootPlistObjectFromBytes();
        v95 = v97;
        v96 = v98;
      }

      v97 = v95;
      v98 = v96;
      if (_MDPlistGetPlistObjectType() != 240)
      {
        goto LABEL_34;
      }

      v97 = v95;
      v98 = v96;
      Count = _MDPlistArrayGetCount();
      if ((Count - 3) > 1)
      {
        goto LABEL_34;
      }

      v14 = Count;
      v87 = v95;
      v88 = v96;
      _MDPlistArrayGetPlistObjectAtIndex();
      IntValue = _MDPlistNumberGetIntValue();
      if ((IntValue & 2) != 0)
      {
        goto LABEL_34;
      }

      v16 = IntValue;
      v56 = *(*(v2 + 32) + 80);
      v87 = 0uLL;
      v88 = 0;
      v97 = v95;
      v98 = v96;
      _MDPlistArrayGetPlistObjectAtIndex();
      v81 = 0uLL;
      v82 = 0;
      v97 = v87;
      v98 = v88;
      if (!_MDPlistDictionaryGetPlistObjectForKey())
      {
        goto LABEL_34;
      }

      v97 = v95;
      v98 = v96;
      PlistObjectSize = _MDPlistGetPlistObjectSize();
      v97 = v81;
      v98 = v82;
      v17 = _MDPlistContainerCopyCSObject();
      if (!v17)
      {
        goto LABEL_34;
      }

      v18 = v17;
      if (CFStringGetLength(v17))
      {
        v79 = 0uLL;
        v80 = 0;
        if (v14 == 4)
        {
          v97 = v95;
          v98 = v96;
          _MDPlistArrayGetPlistObjectAtIndex();
        }

        if (*(v2 + 142) == 1)
        {
          bzero(&v97, 0x400uLL);
          v19 = 0;
          if (CFStringGetCString(v18, &v97, 1024, 0x8000100u))
          {
            v77 = 0uLL;
            v78 = 0;
            v75 = *(v2 + 72);
            v76 = *(v2 + 88);
            if (_MDPlistDictionaryGetPlistObjectForKey())
            {
              v75 = v77;
              v76 = v78;
              v19 = _MDPlistContainerCopyCSObject();
            }
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = *(v2 + 96);
        v22 = *(v2 + 104);
        v23 = *(v2 + 40);
        v24 = *(v2 + 112);
        v25 = *(v2 + 120);
        v26 = *(v2 + 128);
        v97 = v87;
        v98 = v88;
        v77 = v79;
        v78 = v80;
        processOneCS(v21, v22, v23, v24, (v16 << 16) & 0x100000 | ((v16 & 1) << 17) | (v16 << 28 >> 31) & 0xA0000 | v56, &v97, &v77, v19, PlistObjectSize, v60, 0, v25, v84 + 24, v26);
        CFRelease(v18);
        v20 = v19;
        add_explicit = v62;
        if (!v19)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = v18;
        add_explicit = v62;
      }

      CFRelease(v20);
LABEL_34:
      ++v12;
    }

    while (v12 < *(v2 + 136));
  }

  v27 = v61;
LABEL_36:
  if (*(v84 + 24) == 1)
  {
    if (*(v2 + 147) >= 2u)
    {
      v28 = "com.apple.spotlight.SyndicatedContentDeleted";
    }

    else
    {
      v28 = "com.apple.spotlight.SyndicatedContentRefreshed";
    }

    notify_post(v28);
  }

  v29 = threadData[9 * v91 + 1] + 320 * v90;
  *(v29 + 312) = v27;
  v30 = *(v29 + 232);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  dropThreadId(v91, 0, add_explicit + 1);
  _Block_object_dispose(&v83, 8);
LABEL_44:
  v31 = *MEMORY[0x1E69E9840];
}