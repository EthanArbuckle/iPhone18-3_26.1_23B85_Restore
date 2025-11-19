uint64_t _os_activity_stream_entry_get_version(void *a1)
{
  value = xpc_dictionary_get_value(a1, "version");
  if (value)
  {

    return xpc_uint64_get_value(value);
  }

  else if (xpc_dictionary_get_value(a1, "entryData"))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t _compose_log_message(uint64_t a1)
{
  v55[128] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 168) & 2) == 0)
  {
    if ((*(a1 + 336) & 3) == 1)
    {
      _resolve_uuid_slow(a1);
    }

    v54 = 0x10000;
    v52 = v55;
    v53 = 0x40000000000;
    v2 = *(a1 + 192);
    if (!v2)
    {
      if (!*(a1 + 176))
      {
        v4 = @"<compose failure [missing precomposed log]>";
        goto LABEL_54;
      }

      v11 = MEMORY[0x277CCACA8];
      goto LABEL_18;
    }

    v3 = *(a1 + 200);
    if (v3 >> 16 || *(a1 + 240) >> 16)
    {
      goto LABEL_7;
    }

    if (*(a1 + 8) == 768)
    {
      if (v3 - 1733 >= 0xFFFFFFFFFFFFF93CLL)
      {
        v12 = &v2[v3];
        v14 = &v2[v3 - 1];
        v13 = *v14;
        if (v3 + ~v13 + 2 * v13 != -2)
        {
          MEMORY[0x28223BE20]();
          pubdata = &v42 - v15;
          bzero(&v42 - v15, v17);
          *pubdata = 0;
          pubdata[1] = v13;
          if (v13)
          {
            v18 = -v13;
            v19 = &v12[~v13];
            v43 = pubdata;
            v20 = pubdata + 2;
            v4 = @"<compose failure [corrupt log]>";
            while (1)
            {
              v21 = v14[v18] & 0x3F;
              if (&v2[v21] > v19)
              {
                goto LABEL_54;
              }

              *v20 = 0;
              v20[1] = v21;
              v22 = v20 + 2;
              memcpy(v20 + 2, v2, v21);
              v20 = &v22[v21];
              v2 += v21;
              if (__CFADD__(v18++, 1))
              {
                pubdata = v43;
                goto LABEL_31;
              }
            }
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      pubdata = *(a1 + 208);
      if (pubdata || (pubdata = os_log_fmt_extract_pubdata(*(a1 + 192), *(a1 + 200), (a1 + 216), (a1 + 224))) != 0)
      {
LABEL_31:
        [a1 set_unreliableIdentifier:0];
        if ((*(a1 + 8) | 0x200) == 0x600 && (*pubdata & 0x10) != 0)
        {
          [a1 set_unreliableIdentifier:1];
        }

        v24 = *(a1 + 176);
        if (v24)
        {
          goto LABEL_37;
        }

        v51 = 0;
        v25 = _os_log_resolve_format(*(a1 + 112), *(a1 + 72), *(a1 + 160), &v51);
        *(a1 + 176) = v25;
        if (v25)
        {
          v24 = v25;
LABEL_37:
          if (*(a1 + 8) == 768)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          v27 = *(a1 + 364);
          if (*(a1 + 168))
          {
            v28 = 4;
          }

          else
          {
            v28 = 8;
          }

          v29 = *(a1 + 216);
          v30 = *(a1 + 224);
          v31 = *(a1 + 232);
          v32 = *(a1 + 240);
          v33 = *(a1 + 352);
          v34 = *(a1 + 72);
          v44 = *(a1 + 104);
          v46 = 0;
          v47 = v34;
          v45 = v33;
          v49 = 0;
          v50 = 0;
          v48 = 0;
          if (v27)
          {
            v35 = 3;
          }

          else
          {
            v35 = 1;
          }

          os_log_fmt_compose(&v52, v24, v26, v35, v28, pubdata, v29, v30, v31, v32, &v44);
          v36 = BYTE4(v54);
          v37 = v52;
          v52 = 3954044928;
          WORD2(v54) = 0;
          v38 = v53;
          if ((v36 & 1) == 0)
          {
            v37 = _os_trace_memdup();
          }

          if (*(a1 + 8) == 1536 && !*(a1 + 288))
          {
            old_signpost_name_end = _find_old_signpost_name_end(v37, *(a1 + 176));
            if (old_signpost_name_end)
            {
              v38 += &v37[~old_signpost_name_end];
              v40 = _os_trace_memdup();
              free(v37);
              v37 = v40;
            }
          }

          v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v37 length:v38 encoding:4 freeWhenDone:1];
          *(a1 + 408) = v4;
          if (!v4)
          {
            free(v37);
            v4 = @"<compose failure [illegible log arguments]>";
          }

          goto LABEL_54;
        }

        v11 = MEMORY[0x277CCACA8];
LABEL_18:
        v4 = [v11 stringWithUTF8String:?];
        goto LABEL_54;
      }
    }

LABEL_7:
    v4 = @"<compose failure [corrupt log]>";
LABEL_54:
    v41 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v5 = *(*(a1 + 328) + 56);
  if (*v5 != 24580 || *(v5 + 4) || *(v5 + 8) < 0x49uLL || (v6 = _simple_support_validate_payload(v5, 0)) == 0)
  {
    v4 = 0;
    goto LABEL_54;
  }

  v7 = *MEMORY[0x277D85DE8];
  v8 = v6 + *(v6 + 4) + 12;
  v9 = MEMORY[0x277CCACA8];

  return [v9 stringWithUTF8String:v8];
}

_BYTE *os_log_fmt_extract_pubdata(_BYTE *result, int a2, void *a3, unsigned __int16 *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return &os_log_fmt_extract_pubdata_empty_hdr;
  }

  if (a2 == 1)
  {
    return 0;
  }

  v4 = result + 2;
  v5 = a2 - 2;
  if (result[1])
  {
    v6 = 0;
    while (v5 >= 2u)
    {
      v7 = v4[1] + 2;
      if (v7 > v5)
      {
        break;
      }

      v4 += v7;
      v5 -= v7;
      if (result[1] <= ++v6)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  *a3 = v4;
  *a4 = v5;
  return result;
}

unint64_t os_log_fmt_compose(size_t a1, char *__s, uint64_t a3, unsigned int a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  v142 = *MEMORY[0x277D85DE8];
  v112 = (*a6 >> 5) & 3;
  v124 = a6 + 2;
  v123 = a6[1];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  while (1)
  {
    result = strcspn(__s, "%");
    v16 = result;
    if ((*(a1 + 20) & 2) == 0)
    {
      v17 = *(a1 + 8);
      if (result > *(a1 + 12) - v17 - (*(a1 + 22) ^ 1u))
      {
        result = os_trace_blob_add_slow(a1, __s, result);
      }

      else
      {
        result = memcpy((*a1 + v17), __s, result);
        v18 = *(a1 + 8) + v16;
        *(a1 + 8) = v18;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v18) = 0;
        }
      }
    }

    v19 = &__s[v16];
    if (!__s[v16])
    {
      break;
    }

    result = os_log_fmt_delimit(&__s[v16], a3, &v119);
    if (result)
    {
      if (BYTE8(v119))
      {
        result = _os_log_fmt_decode_give_up(a1, v119, WORD6(v119), v20, v21, v22, v23, v24);
        goto LABEL_135;
      }

      v25 = result;
      os_log_fmt_read_aster_if_necessary(&v119, &v123, &v124);
      v118 = 0;
      v117 = 0;
      v27 = v123;
      if (v123)
      {
        v28 = v124;
        v27 = --v123;
        v124 += v124[1] + 2;
      }

      else
      {
        v28 = 0;
      }

      v116 = 0;
      data = os_log_fmt_get_data(&v119, v112, a4, v28, v27, a5, &v118, &v117, v26, &v116, a7, a8, a9, a10);
      if (data > 5)
      {
        if (data == 6 || data == 7)
        {
          _os_log_fmt_compose_masked_partial_redacted(a1, v118, v117, v116, v34, v35, v36, v37);
          goto LABEL_117;
        }

LABEL_30:
        if (data > 2)
        {
          if ((data - 8) < 3)
          {
            _os_log_fmt_decode_masked_unknown(a1, SBYTE2(v120), v122, data, v34, v35, v36, v37);
          }

          else if (data == 3)
          {
            _os_log_fmt_decode_cmd_mismatch(a1, v119, WORD6(v119), v28, v117, v117, v36, v37);
          }

          else if (data == 4)
          {
            _os_log_fmt_decode_bad_range(a1, v119, WORD6(v119), *(v28 + 1), *(v28 + 2), v117, v36, v37);
          }
        }

        else
        {
          if (data == 1)
          {
            if ((*(a1 + 20) & 2) != 0)
            {
              goto LABEL_117;
            }

            v44 = *(a1 + 8);
            if (*(a1 + 12) - v44 - (*(a1 + 22) ^ 1u) <= 8)
            {
              v99 = a1;
              v100 = "<private>";
              v101 = 9;
              goto LABEL_123;
            }

            v45 = *a1 + v44;
            *v45 = *"<private>";
            *(v45 + 8) = 62;
            v46 = *(a1 + 8) + 9;
            goto LABEL_42;
          }

          if (data == 2)
          {
            _os_log_fmt_decode_error(a1);
          }
        }

        goto LABEL_117;
      }

      if (data)
      {
        if (data == 5)
        {
          v38 = v118;
          v39 = v117;
          v40 = v116;
          os_trace_blob_addf(a1, "<mask.%.*s: ", v33, data, v34, v35, v36, v37, SBYTE2(v120));
          if (v39 || v40)
          {
            os_trace_blob_add_base64(a1, v38, v39);
          }

          else if ((*(a1 + 20) & 2) == 0)
          {
            v41 = *(a1 + 8);
            if (*(a1 + 12) - v41 - (*(a1 + 22) ^ 1u) <= 5)
            {
              os_trace_blob_add_slow(a1, "(null)", 6uLL);
            }

            else
            {
              v42 = *a1 + v41;
              *(v42 + 4) = 10604;
              *v42 = 1819635240;
              v43 = *(a1 + 8) + 6;
              *(a1 + 8) = v43;
              if ((*(a1 + 22) & 1) == 0)
              {
                *(*a1 + v43) = 0;
              }
            }
          }

          if ((*(a1 + 20) & 2) == 0)
          {
            v47 = *(a1 + 8);
            if (*(a1 + 12) == v47 + (*(a1 + 22) ^ 1))
            {
              v99 = a1;
              v100 = ">";
              v101 = 1;
LABEL_123:
              os_trace_blob_add_slow(v99, v100, v101);
              goto LABEL_117;
            }

            *(*a1 + v47) = 62;
            v46 = *(a1 + 8) + 1;
LABEL_42:
            *(a1 + 8) = v46;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v46) = 0;
            }

            goto LABEL_117;
          }

          goto LABEL_117;
        }

        goto LABEL_30;
      }

      if ((BYTE8(v119) & 0x40) == 0)
      {
        goto LABEL_36;
      }

      v48 = v116;
      if ((BYTE8(v119) & 0x80) != 0)
      {
        if (_os_log_fmt_builtin_annotated(a1, a5, &v119, v28, v118, v117, v116))
        {
          goto LABEL_117;
        }

LABEL_36:
        if ((BYTE8(v119) & 0x10) != 0)
        {
          _os_log_fmt_compose_scalar(a1, &v119, a5, v118, v117);
        }

        else
        {
          _os_log_fmt_compose_data(a1, &v119, v28, v118, v117, v116);
        }

        goto LABEL_117;
      }

      p_scalar = v118;
      v110 = v117;
      v49 = v121;
      v50 = HIWORD(v119);
      if (!ctf_is_type(v121, HIWORD(v119)))
      {
        if (_os_log_fmt_plugin_annotated(a1, a5, &v119, v28, p_scalar, v110, v48))
        {
          goto LABEL_117;
        }

        goto LABEL_36;
      }

      if (!a11 || (v48 & 1) != 0)
      {
        goto LABEL_36;
      }

      __source = *(&v121 + 1);
      v51 = v120;
      if (!ctf_is_type(v49, v50))
      {
        *&v134 = 0;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *__src = 0u;
        v127 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v137) = 134217984;
        *(&v137 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_138:
        *&v133 = 0;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *__src = 0u;
        v127 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v134) = 134217984;
        *(&v134 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_139:
        v132[0] = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v133) = 134217984;
        *(&v133 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_140:
        *&v134 = 0;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *__src = 0u;
        v127 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v137) = 134217984;
        *(&v137 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_141:
        *&v134 = 0;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *__src = 0u;
        v127 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v137) = 134217984;
        *(&v137 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_142:
        scalar = 0;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        *__src = 0u;
        v127 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        LODWORD(v132[0]) = 134217984;
        *(v132 + 4) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v52 = *v49;
      if (v52 <= 0x73)
      {
        if (v52 != 101 && v52 != 115)
        {
          goto LABEL_77;
        }

LABEL_71:
        if (v50 >= 0xFE)
        {
          goto LABEL_140;
        }

        strncpy(__dst, v49, v50);
        __dst[v50] = 32;
        if (254 - v50 >= v51 + 1)
        {
          v55 = v51 + 1;
        }

        else
        {
          v55 = 254 - v50;
        }

        v54 = &__dst[v50 + 1];
LABEL_76:
        strlcpy(v54, __source, v55);
        goto LABEL_77;
      }

      if (v52 == 117)
      {
        goto LABEL_71;
      }

      if (v52 == 116)
      {
        if (strncmp(v49, "type", 4uLL))
        {
          goto LABEL_141;
        }

        v53 = 254;
        if (v51 < 0xFE)
        {
          v53 = v51;
        }

        v54 = __dst;
        v55 = v53 + 1;
        goto LABEL_76;
      }

LABEL_77:
      if (*(a11 + 32))
      {
        goto LABEL_138;
      }

      *&v134 = 0;
      *(&v134 + 1) = &v134;
      v135 = 0x2000000000;
      v136 = 0;
      if ((((*(a11 + 26) & 0xE) - 4) & 0xFFFFFFF7) != 0)
      {
        __src[0] = 0;
        v56 = *(a11 + 16);
        v57 = *(a11 + 8);
        if (v56)
        {
          v58 = uuidpath_map_header_fd(v56, v57, __src);
        }

        else
        {
          v58 = uuidpath_map_header(0, v57, __src);
        }

        v67 = v58;
        v68 = a11;
        if (v58)
        {
          v69 = v58[3];
          v70 = *(*(&v134 + 1) + 24);
          v108 = a5;
          if (v69 && !v70)
          {
            v71 = 0;
            v72 = &v67[2 * v69 + 4];
            v73 = v67 + 5;
            v74 = v67 + 5;
            while (1)
            {
              v75 = *v74;
              v74 += 2;
              v76 = v67;
              v70 = _ctf_open_buffer(v72, v75, v59, v60, v61, v62, v63, v64);
              v67 = v76;
              *(*(&v134 + 1) + 24) = v70;
              if (++v71 >= v76[3])
              {
                break;
              }

              v72 = (v72 + *v73);
              v73 = v74;
              if (v70)
              {
                goto LABEL_93;
              }
            }
          }

          if (v70)
          {
LABEL_93:
            v77 = __src[0];
            v68 = a11;
            *(a11 + 40) = v67;
            *(a11 + 48) = v77;
          }

          else
          {
            munmap(v67, __src[0]);
            v68 = a11;
          }

          a5 = v108;
        }
      }

      else
      {
        v65 = *a11;
        if (*a11)
        {
          v66 = *(a11 + 16);
        }

        else
        {
          v133 = 0uLL;
          if ((_dyld_get_shared_cache_uuid() & 1) == 0)
          {
            goto LABEL_142;
          }

          v65 = &v133;
          v66 = 0xFFFFFFFFLL;
        }

        dsc_map_impl = _os_trace_uuiddb_get_dsc_map_impl(v66, 0, v65, 1);
        v68 = a11;
        if (dsc_map_impl)
        {
          v79 = *(a11 + 8);
          *&v137 = MEMORY[0x277D85DD0];
          *(&v137 + 1) = 0x40000000;
          *&v138 = __ctf_metadata_open_ctf_block_invoke;
          *(&v138 + 1) = &unk_2787AE6B0;
          *&v139 = &v134;
          _os_trace_uuiddb_dsc_foreach_range_with_uuid(dsc_map_impl, v79, &v137);
          v68 = a11;
        }
      }

      v80 = *(*(&v134 + 1) + 24);
      *(v68 + 32) = v80;
      _Block_object_dispose(&v134, 8);
      if (!v80)
      {
        goto LABEL_36;
      }

      scalar = 0;
      if ((BYTE8(v119) & 0x10) != 0)
      {
        scalar = os_log_fmt_read_scalar(&v119, p_scalar, v110);
        p_scalar = &scalar;
      }

      v135 = 0;
      *&v134 = __src;
      *(&v134 + 1) = 0x40000000000;
      v81 = ctf_lookup_by_name(v80, __dst);
      if (v81 == -1 || !ctf_type_parse(v80, v81, &v134, p_scalar, v110))
      {
        v93 = 0;
      }

      else
      {
        v89 = strlen(v134);
        if ((*(a1 + 20) & 2) == 0)
        {
          v90 = v89;
          v91 = *(a1 + 8);
          if (v89 > *(a1 + 12) - v91 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v134, v89);
          }

          else
          {
            memcpy((*a1 + v91), v134, v89);
            v92 = *(a1 + 8) + v90;
            *(a1 + 8) = v92;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v92) = 0;
            }
          }
        }

        v93 = 1;
      }

      v94 = a11;
      if ((v135 & 0x100000000) != 0)
      {
        v95 = v134;
        *&v134 = 3954044928;
        WORD2(v135) = 0;
        free(v95);
        v94 = a11;
      }

      v96 = *(v94 + 32);
      if (!v96)
      {
        goto LABEL_139;
      }

      v97 = v94;
      ctf_close(v96, v82, v83, v84, v85, v86, v87, v88);
      v98 = v97[5];
      if (v98)
      {
        munmap(v98, v97[6]);
        v97 = a11;
      }

      v97[4] = 0;
      if ((v93 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_117:
      __s = &v19[v25];
    }

    else
    {
      v29 = v19[1];
      if (!v29)
      {
        break;
      }

      LOBYTE(__src[0]) = v19[1];
      if ((*(a1 + 20) & 2) == 0)
      {
        v30 = *(a1 + 8);
        if (*(a1 + 12) == v30 + (*(a1 + 22) ^ 1))
        {
          os_trace_blob_add_slow(a1, __src, 1uLL);
        }

        else
        {
          *(*a1 + v30) = v29;
          v31 = *(a1 + 8) + 1;
          *(a1 + 8) = v31;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v31) = 0;
          }
        }
      }

      __s = v19 + 2;
    }
  }

  v102 = *(a1 + 8) - 1;
  v103 = MEMORY[0x277D85DE0];
  while (v102 != -1)
  {
    v104 = v102;
    v105 = *(*a1 + v102);
    if ((v105 & 0x80000000) != 0)
    {
      result = __maskrune(v105, 0x4000uLL);
    }

    else
    {
      result = *(v103 + 4 * v105 + 60) & 0x4000;
    }

    v102 = v104 - 1;
    if (!result)
    {
      v106 = v104 + 1;
      goto LABEL_133;
    }
  }

  v106 = 0;
LABEL_133:
  *(a1 + 8) = v106;
  if ((*(a1 + 22) & 1) == 0)
  {
    *(*a1 + v106) = 0;
  }

LABEL_135:
  v107 = *MEMORY[0x277D85DE8];
  return result;
}

id OSLogLogdAdminConnection()
{
  if (OSLogLogdAdminConnection_once != -1)
  {
    dispatch_once(&OSLogLogdAdminConnection_once, &__block_literal_global_2844);
  }

  v1 = OSLogLogdAdminConnection_xconn;

  return v1;
}

uint64_t _timesync_db_openat(int a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _os_trace_zalloc_typed();
  v5 = openat(a1, a2, 0);
  *v4 = v5;
  if (v5 == -1)
  {
    v7 = *__error();
    _os_assumes_log();
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = -1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___timesync_tidy_and_count_files_block_invoke;
    v12[3] = &unk_2787AD960;
    v12[4] = &v21;
    v12[5] = &v17;
    v12[6] = &v13;
    _timesync_foreach_reg_file_at(v5, v12);
    v6 = *(v22 + 6);
    if (v6 >= 1)
    {
      v4[1] = v18[3];
      v4[2] = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
    if (v6 >= 1 && (_timesync_reset(v4) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = *__error();
  if ((*v4 & 0x80000000) != 0 || close(*v4) != -1)
  {
LABEL_10:
    free(v4);
    v4 = 0;
    *__error() = v8;
LABEL_11:
    v9 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v11 = *__error();
  result = *__error();
  if (v11 != 9)
  {
    _os_assumes_log();
    goto LABEL_10;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

uint64_t _timesync_foreach_reg_file_at(int a1, uint64_t a2)
{
  v3 = dup(a1);
  if (v3 == -1)
  {
LABEL_15:
    v13 = *__error();
    return _os_assumes_log();
  }

  v4 = v3;
  if (lseek(v3, 0, 0) == -1)
  {
    v15 = *__error();
    _os_assumes_log();
  }

  v5 = fdopendir(v4);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85DE0];
LABEL_6:
    while (1)
    {
      v8 = readdir(v6);
      if (!v8)
      {
        break;
      }

      if ((v8->d_type | 8) == 8)
      {
        v9 = 0;
        d_name = v8->d_name;
        while (1)
        {
          v11 = d_name[v9];
          if (v11 < 0 || (*(v7 + 4 * v11 + 60) & 0x10000) == 0)
          {
            break;
          }

          if (++v9 == 16)
          {
            if (strcmp(&v8->d_name[16], ".timesync") || ((*(a2 + 16))(a2, d_name) & 1) != 0)
            {
              goto LABEL_6;
            }

            goto LABEL_14;
          }
        }
      }
    }

LABEL_14:
    result = closedir(v6);
    if (result == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = *__error();
    if (close(v4) == -1)
    {
      v16 = *__error();
      result = *__error();
      if (v16 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    result = __error();
    *result = v14;
  }

  return result;
}

uint64_t ___timesync_tidy_and_count_files_block_invoke(void *a1, char *__str)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = strtoull(__str, 0, 16);
  v4 = *(a1[5] + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  v5 = *(a1[6] + 8);
  if (v3 > *(v5 + 24))
  {
    *(v5 + 24) = v3;
  }

  return 1;
}

uint64_t _timesync_reset(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  _timesync_munmap_file(a1);
  *(a1 + 24) = *(a1 + 8);
  while ((_timesync_mmap_file(a1) & 0x80000000) != 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24) + 1;
    *(a1 + 24) = v3;
    if (v3 > v2)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_6;
    }
  }

  _timesync_process_boot_entry(a1);
  v7[0] = *(a1 + 32);
  entry = _timesync_next_entry(*(a1 + 48), v7);
  result = 0;
  *(a1 + 48) = entry;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _timesync_mmap_file(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 170, 18);
  v7 = a1[3];
  *__str = 0xAAAAAAAAAAAAAAAALL;
  snprintf(__str, 0x1AuLL, "%016llx.timesync", v7);
  v2 = *a1;
  v3 = _os_trace_mmap_at();
  a1[5] = v3;
  if (!v3)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    goto LABEL_11;
  }

  if (a1[4] < 80 || *v3 != 48048 || v3[1] != 48 || v3[24] != 29524 || v3[25] != 32)
  {
    _timesync_munmap_file(a1);
    a1[5] = 0;
LABEL_11:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v4 = 0;
  a1[6] = v3;
LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t _timesync_munmap_file(uint64_t a1)
{
  v3 = (a1 + 40);
  result = *(a1 + 40);
  if ((result + 1) >= 2)
  {
    result = munmap(result, *(a1 + 32));
    if (result == -1)
    {
      v4 = *__error();
      result = _os_assumes_log();
    }

    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

char *_timesync_next_entry(unsigned __int16 *a1, void *a2)
{
  v2 = *a1;
  if (v2 > 0xBBAF)
  {
    if (v2 == 48048)
    {
      if (a1[1] != 48)
      {
        goto LABEL_16;
      }

      v3 = 48;
    }

    else
    {
      if (v2 != 57005)
      {
        goto LABEL_16;
      }

      v3 = a1[1];
    }
  }

  else
  {
    if (v2 != 27986)
    {
      if (v2 == 29524 && a1[1] == 32)
      {
        v3 = 32;
        goto LABEL_13;
      }

LABEL_16:
      _os_assumes_log();
      return 0;
    }

    if (a1[1] != 88)
    {
      goto LABEL_16;
    }

    v3 = 88;
  }

LABEL_13:
  v4 = *a2 - v3;
  *a2 = v4;
  v5 = a1 + v3;
  if (v4 >= 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _timesync_process_boot_entry(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1 + 6))
  {
    if (*(v1 + 7))
    {
      v2 = *v1;
      v3 = v1[1];
      *(result + 88) = v1[2];
      *(result + 72) = v3;
      *(result + 56) = v2;
      *(result + 112) = 0;
      *(result + 120) = *(result + 88);
      return result;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t OSLogCaptureInflightBuffersToFile(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = OSLogLogdAdminConnection();
  if (v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "operation", 0xAuLL);
    xpc_connection_send_message(v12, v13);
    usleep(0x7A120u);
  }

  else
  {
    _OSLogWarningMessage(v5, "Coprocessors flush failed: no connection to logd", v6, v7, v8, v9, v10, v11, v49);
  }

  v14 = OSLogLogdAdminConnection();
  v21 = v14;
  if (a1 < 0)
  {
    v25 = 1;
  }

  else
  {
    if (v14)
    {
      memset(&v50, 0, sizeof(v50));
      v22 = fstat(a1, &v50);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v23 = v50.st_mode & 0xFFF;
        v22 = fchmod(a1, v50.st_mode & 0xFFD | 2);
        v24 = v23;
      }

      if (v22 == -1)
      {
        v46 = *__error();
        _os_assumes_log();
        v24 = v23;
      }

      v26 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_fd(v26, "snapshot_file_descriptor", a1);
      xpc_dictionary_set_uint64(v26, "logd_snapshot_flags", a2);
      xpc_dictionary_set_uint64(v26, "operation", 1uLL);
      v33 = xpc_connection_send_message_with_reply_sync(v21, v26);
      if (v24 && fchmod(a1, v24) == -1)
      {
        v47 = *__error();
        _os_assumes_log();
        if (v33)
        {
LABEL_16:
          if (MEMORY[0x2318E23F0](v33) != MEMORY[0x277D86480])
          {
            int64 = xpc_dictionary_get_int64(v33, "st");
            v35 = int64;
            if (int64)
            {
              v36 = strerror(int64);
              _OSLogWarningMessage(v5, "snapshot failed: %s (%d)", v37, v38, v39, v40, v41, v42, v36);
              v25 = 0;
              *__error() = v35;
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_26;
          }

          v43 = MEMORY[0x277D863F0];
          v44 = __error();
          if (v33 == v43)
          {
            v25 = 0;
            v45 = 1;
LABEL_25:
            *v44 = v45;
LABEL_26:

            goto LABEL_27;
          }

LABEL_24:
          v25 = 0;
          v45 = 2;
          goto LABEL_25;
        }
      }

      else if (v33)
      {
        goto LABEL_16;
      }

      _OSLogWarningMessage(v5, "snapshot failed: no reply from logd", v27, v28, v29, v30, v31, v32, v49);
      v44 = __error();
      goto LABEL_24;
    }

    _OSLogWarningMessage(v5, "snapshot failed: no connection to logd", v15, v16, v17, v18, v19, v20, v49);
    v25 = 0;
    *__error() = 2;
  }

LABEL_27:

  return v25;
}

uint64_t _calculateTimeRefForBook(void *a1, const char *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 diagnosticsDirectoryReference];
  v5 = [v4 fileDescriptor];

  v6 = openat(v5, a2, 0);
  if (v6 == -1)
  {
    v15 = 0;
  }

  else
  {
    v7 = v6;
    v8 = _os_trace_fdscandir_b();
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        v12 = strrchr((*v9 + 21), 46);
        if (v12)
        {
          if (!strcmp(v12, ".tracev3"))
          {
            v13 = openat(v7, (v11 + 21), 0);
            if (v13 != -1)
            {
              v14 = v13;
              v23[0] = 0;
              v23[1] = 0;
              v22 = 0;
              if (_OSLogFileFindExhaustivePoint(v13, v23, &v22) && *__error() == 2)
              {
                v15 = 0;
              }

              else
              {
                v16 = [_OSLogEventStoreTimeRef alloc];
                v15 = [(_OSLogEventStoreTimeRef *)v16 initWithUUID:v23 continuous:v22];
              }

              if (close(v14) == -1)
              {
                v17 = *__error();
                v18 = *__error();
                if (v17 == 9)
                {
                  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
                  qword_27DA527A8 = v18;
                  __break(1u);
                }

                _os_assumes_log();
                if (v15)
                {
                  goto LABEL_19;
                }
              }

              else if (v15)
              {
                goto LABEL_19;
              }
            }
          }
        }

        ++v9;
      }

      while (v10 != v9);
    }

    v15 = 0;
LABEL_19:
    _os_trace_scandir_free_namelist();
    if (close(v7) == -1)
    {
      v19 = *__error();
      result = *__error();
      if (v19 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

void _enumerateDirectoryIntoSource(void *a1, int a2, DIR *a3, const char *a4, void *a5, void *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v33 = a5;
  v10 = a6;
  v11 = readdir(a3);
  if (v11)
  {
    v12 = v11;
    v30 = *MEMORY[0x277CCA5B8];
    p_vtable = &OBJC_METACLASS____OSLogIndex.vtable;
    do
    {
      d_name = v12->d_name;
      v15 = strrchr(v12->d_name, 46);
      if (v15 && !strcmp(v15, ".tracev3"))
      {
        d_type = v12->d_type;
        if (!v12->d_type)
        {
          memset(&v35, 0, sizeof(v35));
          if (!fstatat(a2, v12->d_name, &v35, 0) && (v35.st_mode & 0xF000) == 0x8000)
          {
            v12->d_type = 8;
          }

          d_type = v12->d_type;
        }

        if (d_type == 8)
        {
          if (a4)
          {
            d_name = &v35;
            snprintf(&v35, 0x400uLL, "%s/%s", a4, v12->d_name);
          }

          v17 = [objc_alloc((p_vtable + 87)) initWithCollection:v33 subpath:d_name];
          v18 = [_OSLogIndexFile alloc];
          v34 = 0;
          v19 = [(_OSLogIndexFile *)v18 initWithTraceFile:v17 error:&v34];
          v20 = v34;
          v21 = v20;
          if (v19)
          {
            [v32 _insertIndexFile:v19];
          }

          else
          {
            v22 = p_vtable;
            v23 = [v20 domain];
            v24 = v23 != v30 || [v21 code] != 34;

            p_vtable = v22;
            if (v10 && v24)
            {
              v25 = [MEMORY[0x277CCAC48] currentProgress];
              [v25 fractionCompleted];
              v27 = v26;
              v28 = _OSLogInternalError(17, v21);
              v10[2](v10, v28, v27);

              p_vtable = v22;
            }
          }
        }
      }

      v12 = readdir(a3);
    }

    while (v12);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void _uuidpath_pathcache_free(rb_tree_t *a1)
{
  v2 = rb_tree_iterate(a1, 0, 1u);
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = rb_tree_iterate(a1, v3, 1u);
      rb_tree_remove_node(a1, v3);
      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  free(a1);
}

void _uuidpath_headercache_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    munmap(v2, a1[2]);
  }

  for (i = 0; i != 20; i += 4)
  {
    v4 = a1[i + 5];
    if (v4)
    {
      munmap(v4, a1[i + 6]);
    }
  }

  free(a1);
}

char *___os_log_fdscandir_trace_block_invoke(uint64_t a1, uint64_t a2)
{
  result = strrchr((a2 + 21), 46);
  if (result)
  {
    if ((*(a2 + 20) | 8) == 8)
    {
      v4 = result;
      if (!strcmp(result, ".tracev3") || !strcmp(v4, ".log") || !strcmp(v4, ".txt") || !strcmp(v4, ".plist") || !strcmp(v4, ".timesync"))
      {
        return 1;
      }

      else
      {
        return (strcmp(v4, ".jsonl") == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___os_log_fdscandir_trace_block_invoke_2(uint64_t a1, const dirent **a2, const dirent **a3)
{
  v5 = strncmp((*a2)->d_name, "logdata.Persistent.", 0x13uLL);
  v6 = strncmp((*a3)->d_name, "logdata.Persistent.", 0x13uLL);
  if ((v5 == 0) != (v6 == 0))
  {
    return (v5 != 0) - (v6 != 0);
  }

  return alphasort(a2, a3);
}

uint64_t _OSLogFileFindExhaustivePoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18 = 0;
  v5 = _os_trace_mmap();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v18;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = ___OSLogFileFindExhaustivePoint_block_invoke;
  v14 = &unk_2787AE860;
  v15 = &v19;
  v16 = a2;
  v17 = a3;
  v7 = v12;
  v8 = 0;
  do
  {
    if (v6 - v8 < 0x10)
    {
      break;
    }

    v9 = *&v5[v8 + 8];
    if (v6 - v8 - 16 < v9)
    {
      break;
    }

    if (!(v13)(v7))
    {
      break;
    }

    v8 = (v8 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v8 - 1 < v6);

  munmap(v5, v18);
  v10 = *(v20 + 6);
  if (v10)
  {
    *__error() = v10;
LABEL_9:
    v10 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&v19, 8);
  return v10;
}

void sub_22E01E8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _convertUUIDStringToUUID(const char *a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (strlen(a1) == 32)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if (v5 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x10000) == 0)
      {
        break;
      }

      if (++v4 == 32)
      {
        snprintf(__str, 0x25uLL, "%.8s-%.4s-%.4s-%.4s-%.12s", a1, a1 + 8, a1 + 12, a1 + 16, a1 + 20);
        uuid_parse(__str, a2);
        result = 1;
        goto LABEL_7;
      }
    }
  }

  _os_assumes_log();
  result = 0;
LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *_os_trace_uuiddb_get_dsc_map_impl(uint64_t a1, char *a2, __n128 *a3, int a4)
{
  v8 = 0;
  while (1)
  {
    v9 = _os_trace_uuiddb_get_dsc_map_impl__dsc_map_head;
    if (_os_trace_uuiddb_get_dsc_map_impl__dsc_map_head)
    {
      v10 = _os_trace_uuiddb_get_dsc_map_impl__dsc_map_head;
      while (v10[4] != a3->n128_u64[0] || v10[5] != a3->n128_u64[1])
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      if (v8)
      {
        _os_trace_uuiddb_dsc_map_destroy(v8);
      }

      return v10;
    }

LABEL_7:
    if (!a4)
    {
      return 0;
    }

    if (!v8)
    {
      break;
    }

LABEL_18:
    *v8 = v9;
    v12 = v9;
    atomic_compare_exchange_strong_explicit(&_os_trace_uuiddb_get_dsc_map_impl__dsc_map_head, &v12, v8, memory_order_release, memory_order_relaxed);
    if (v12 == v9)
    {
      return v8;
    }
  }

  if (a1 == -1)
  {
    if (!a2)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      a2 = _os_trace_uuidtext_path;
    }

    a1 = open(a2, 0);
    if (a1 == -1)
    {
      v15 = *__error();
      _os_assumes_log();
      return 0;
    }
  }

  _os_trace_uuiddb_dsc_map_create(a1, a3);
  v8 = v11;
  if (!a2 || close(a1) != -1)
  {
    if (!v8)
    {
      return v8;
    }

    goto LABEL_18;
  }

  v13 = *__error();
  result = *__error();
  if (v13 != 9)
  {
    _os_assumes_log();
    if (!v8)
    {
      return v8;
    }

    goto LABEL_18;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

void _os_trace_uuiddb_dsc_map_create(uint64_t a1, __n128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  _os_trace_uuiddb_get_pathsuffix(a2, 3, __b, 0x400uLL);
  v3 = _os_trace_mmap_at();
  if (v3)
  {
    v4 = v3;
    _os_trace_uuiddb_dsc_validate_hdr(v3, 0xAAAAAAAAuLL, a2);
    if (!v5 && munmap(v4, 0xAAAAAAAAAAAAAAAALL) == -1)
    {
      v7 = *__error();
      _os_assumes_log();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __os_trace_safe_ascii_strcspn_block_invoke()
{
  v0 = 0;
  v1 = MEMORY[0x277D85DE0];
  do
  {
    if ((v0 - 1) > 0x7E || (*(v1 + 4 * v0 + 60) & 0x4200) == 0x200)
    {
      _os_trace_unsafe_ascii_tbl[v0 >> 6] |= 1 << v0;
    }

    ++v0;
  }

  while (v0 != 256);
}

uint64_t os_trace_blob_grow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  v4 = v3 + a2;
  if (__CFADD__(v3, a2) || HIDWORD(v4))
  {
    v5 = *(a1 + 12);
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      if (2 * v5 > v4)
      {
        LODWORD(v4) = 2 * v5;
      }

      if (*(a1 + 16) >= v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = *(a1 + 16);
      }
    }
  }

  if (v6 > v5)
  {
    v7 = *a1;
    if (*(a1 + 20))
    {
      v9 = *a1;
      *a1 = _os_trace_realloc_typed();
    }

    else
    {
      v8 = _os_trace_malloc_typed();
      *a1 = v8;
      memcpy(v8, v7, v3);
      *(a1 + 20) |= 1u;
    }

    *(a1 + 12) = v6;
  }

  return v6 - v3;
}

void _os_trace_uuiddb_dsc_run_block_on_map(char *a1, __n128 *a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v5 = _os_trace_uuidtext_path;
  }

  v6 = open(v5, 0);
  if (v6 == -1)
  {
    v12 = *__error();
    _os_assumes_log();
    return;
  }

  v7 = v6;
  dsc_map_impl = _os_trace_uuiddb_get_dsc_map_impl(0xFFFFFFFFLL, v5, a2, 0);
  v9 = dsc_map_impl != 0;
  if (dsc_map_impl)
  {
    v10 = dsc_map_impl;
  }

  else
  {
    _os_trace_uuiddb_dsc_map_create(v7, a2);
    v10 = v11;
    if (!v11)
    {
      v9 = 1;
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  (*(a3 + 16))(a3, v10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (close(v7) == -1)
  {
    v13 = *__error();
    v14 = *__error();
    if (v13 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v14;
      __break(1u);
      return;
    }

    _os_assumes_log();
  }

LABEL_11:
  if (!v9)
  {

    _os_trace_uuiddb_dsc_map_destroy(v10);
  }
}

__n128 ___timesync_range_create_impl_block_invoke_2(uint64_t a1, __n128 *a2, uint64_t a3)
{
  result = *a2;
  *(*(a1 + 32) + 16 * a3 + 8) = *a2;
  return result;
}

void *_os_trace_uuid_map_clear(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[3])
    {
      result = result[2];
      if (result)
      {
        do
        {
          v2 = *result;
          operator delete(result);
          result = v2;
        }

        while (v2);
      }

      v1[2] = 0;
      v3 = v1[1];
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*v1 + 8 * i) = 0;
        }
      }

      v1[3] = 0;
    }
  }

  return result;
}

uint64_t _timesync_range_find_startboot(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  _timesync_reset(a1);
  for (i = *(a1 + 48); i; i = *(a1 + 48))
  {
    v9 = *(a1 + 120);
    if (a2 - 1 >= a3 || v9 <= a3)
    {
      if (v9 > a2)
      {
        break;
      }

      v10 = *i == 48048 ? *(i + 4) : (*(i + 1) - *(a1 + 112)) * *(a1 + 80) / *(a1 + 84) + v9;
      if (v10 > a2)
      {
        break;
      }
    }

    _timesync_advance(a1);
  }

  v11 = *(a1 + 120);
  v12 = a2 >= v11;
  v13 = a2 - v11;
  if (v12)
  {
    v14 = *(a1 + 112) + v13 * *(a1 + 84) / *(a1 + 80);
  }

  else
  {
    v14 = *(a1 + 112);
  }

  *a4 = v14;
  return a1 + 64;
}

void _timesync_range_create_impl()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = _os_trace_zalloc_typed();
  *v0 = 0;
  *(v0 + 8) = xmmword_22E081670;
  operator new();
}

uint64_t _os_trace_uuid_map_lookup(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a2[1];
    v4 = __ROR8__(v3 + 16, 16);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v4)));
    v6 = (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ v3;
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v6;
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v6 == v11)
        {
          if (i[2] == *a2 && i[3] == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= *&v2)
            {
              v11 %= *&v2;
            }
          }

          else
          {
            v11 &= *&v2 - 1;
          }

          if (v11 != v8)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t _timesync_advance(uint64_t result)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(result + 48);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = result;
  if (*v1 == 48048)
  {
    _timesync_process_boot_entry(result);
    v3 = v2[6];
  }

  else
  {
    v4 = *v1;
    *(result + 120) = *(v1 + 1);
    *(result + 104) = v4;
    v3 = v1;
  }

  v9[0] = v2[4] - v3 + v2[5];
  while (1)
  {
    result = _timesync_next_entry(v1, v9);
    v1 = result;
    if (!result)
    {
      break;
    }

LABEL_10:
    v7 = *v1;
    if (v7 == 48048)
    {
      if (*(v1 + 1) != v2[8] || *(v1 + 2) != v2[9])
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 29524)
    {
      goto LABEL_17;
    }
  }

  result = _timesync_munmap_file(v2);
  v5 = v2[2];
  v6 = v2[3] + 1;
  v2[3] = v6;
  if (v6 <= v5)
  {
    result = _timesync_mmap_file(v2);
    if ((result & 0x80000000) == 0)
    {
      v1 = v2[6];
      v9[0] = v2[4];
      if (!v1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  v1 = 0;
LABEL_17:
  v2[6] = v1;
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_uuid_map_insert(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v2)
  {
    goto LABEL_21;
  }

  return 0;
}

void *_os_trace_uuid_map_destroy(void **a1)
{
  result = _os_trace_uuid_map_clear(a1);
  if (a1)
  {
    v3 = a1[2];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x2318E1010);
  }

  return result;
}

unint64_t _timesync_range_contains(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  result = _os_trace_uuid_map_lookup(*a1, a2);
  if (result)
  {
    if (v5)
    {
      v7 = v5[3];
    }

    else
    {
      v7 = 0;
    }

    return result == 1 && a1[1] <= a3 || v7 == result && a1[2] >= a3 || result > 1 && v7 > result;
  }

  return result;
}

uint64_t _timesync_range_compare(void **a1, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  v9 = *a1;
  v10 = _os_trace_uuid_map_lookup(*a1, a2);
  if (!v10)
  {
    _os_assumes_log();
    v9 = *a1;
  }

  v11 = _os_trace_uuid_map_lookup(v9, a4);
  if (!v11)
  {
    _os_assumes_log();
  }

  if (a3 >= a5)
  {
    v12 = a3 > a5;
  }

  else
  {
    v12 = -1;
  }

  if (v10 <= v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v10 >= v11)
  {
    return v13;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _enumerateArchiveIntoSource(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v8 diagnosticsDirectoryReference];
  v12 = [v11 fileDescriptor];

  v13 = dup(v12);
  if (v13 == -1)
  {
    v41 = *__error();
    _os_assumes_log();
LABEL_23:
    v39 = __error();
    v40 = _OSLogPOSIXError(11, *v39);
    v10[2](v10, 0, v40);

    v37 = 0;
LABEL_24:

    return v37;
  }

  v14 = v13;
  if (lseek(v13, 0, 0) == -1)
  {
    v42 = *__error();
    _os_assumes_log();
  }

  v15 = fdopendir(v14);
  if (!v15)
  {
    v38 = *__error();
    if (close(v14) == -1)
    {
      v43 = *__error();
      result = *__error();
      if (v43 == 9)
      {
        goto LABEL_29;
      }

      _os_assumes_log();
    }

    *__error() = v38;
    goto LABEL_23;
  }

  v16 = v15;
  v44 = v10;
  _enumerateDirectoryIntoSource(v7, v12, v15, 0, v8, v9);
  closedir(v16);
  v17 = 4;
  v18 = &byte_2787AF028;
  while (1)
  {
    v19 = *(v18 - 1);
    v20 = openat(v12, v19, 0x100000);
    if (v20 == -1)
    {
      if (*__error() == 2 && (*v18 & 1) != 0)
      {
        goto LABEL_17;
      }

      v24 = [MEMORY[0x277CCAC48] currentProgress];
      v25 = v24;
      if (v9)
      {
        [v24 fractionCompleted];
        v27 = v26;
        v28 = __error();
        v29 = _OSLogPOSIXError(18, *v28);
        (*(v9 + 2))(v9, v29, v27);
      }

      goto LABEL_16;
    }

    v21 = v20;
    v22 = fdopendir(v20);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    _enumerateDirectoryIntoSource(v7, v21, v22, v19, v8, v9);
    closedir(v23);
LABEL_17:
    v18 += 16;
    if (!--v17)
    {
      v37 = 1;
      v10 = v44;
      goto LABEL_24;
    }
  }

  v30 = [MEMORY[0x277CCAC48] currentProgress];
  v25 = v30;
  if (v9)
  {
    [v30 fractionCompleted];
    v32 = v31;
    v33 = __error();
    v34 = _OSLogPOSIXError(18, *v33);
    (*(v9 + 2))(v9, v34, v32);
  }

  if (close(v21) != -1)
  {
LABEL_16:

    goto LABEL_17;
  }

  v35 = *__error();
  result = *__error();
  if (v35 != 9)
  {
    _os_assumes_log();
    goto LABEL_16;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
LABEL_29:
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

id _findOldestTimeRef(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _timesync_range_contains(a1, [v6 UUID], objc_msgSend(v6, "continuousTime"));
  if (v5)
  {
    v8 = v5;
    if (v7)
    {
      v9 = _timesync_range_compare(a1, [v6 UUID], objc_msgSend(v6, "continuousTime"), objc_msgSend(v5, "UUID"), objc_msgSend(v5, "continuousTime"));
      v8 = v6;
      if (v9 != -1)
      {
        v8 = v5;
      }
    }

    goto LABEL_6;
  }

  v8 = v6;
  if (v7)
  {
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

unint64_t _timesync_advance_and_calculate(uint64_t a1, unint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 112);
    v7 = *(a1 + 48);
    if (v7)
    {
      if (*v7 == 29524)
      {
        break;
      }
    }

    if (v6 <= a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    _timesync_advance(a1);
  }

  if (v6 > a2 || *(v7 + 8) <= a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a3)
  {
    *a3 = *(a1 + 128);
    v6 = *(a1 + 112);
  }

  return (a2 - v6) * *(a1 + 80) / *(a1 + 84) + *(a1 + 120);
}

void _timesync_range_copy(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 24);
  }

  v2 = _os_trace_zalloc_typed();
  *v2 = 0;
  *(v2 + 8) = xmmword_22E081670;
  operator new();
}

unint64_t _timesync_continuous_to_wall_time(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (*a2 != *(a1 + 64) || a2[1] != *(a1 + 72))
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 112);
  v9 = *(a1 + 48);
  if (v9 && *v9 == 29524)
  {
    if (v8 > a3 || *(v9 + 8) <= a3)
    {
LABEL_7:
      if (v8 <= a3)
      {
LABEL_13:

        return _timesync_advance_and_calculate(a1, a3, a4);
      }

LABEL_8:
      _timesync_reset(a1);
      while (*a2 != *(a1 + 64) || a2[1] != *(a1 + 72))
      {
        if (_timesync_advance_boot(a1))
        {
          return -1;
        }
      }

      goto LABEL_13;
    }
  }

  else if (v8 > a3)
  {
    goto LABEL_7;
  }

  if (a4)
  {
    *a4 = *(a1 + 128);
    v8 = *(a1 + 112);
  }

  return (a3 - v8) * *(a1 + 80) / *(a1 + 84) + *(a1 + 120);
}

void ___index_log_block_invoke()
{
  v0 = getenv("INDEX_SIGNPOSTS");
  if (v0 && *v0 == 49 && !v0[1])
  {
    v1 = os_log_create("com.apple.loggingsupport", "Index");
  }

  else
  {
    v1 = MEMORY[0x277D86228];
    v2 = MEMORY[0x277D86228];
  }

  v3 = _index_log_h;
  _index_log_h = v1;
}

uint64_t _OSLogIndexOrderForOpening(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if ((a3 & 8) == 0)
  {
    v7 = [v5 oldestTime];
    if (v7 != [v6 oldestTime])
    {
      v8 = [v5 oldestTime];
      if (v8 < [v6 oldestTime])
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_11;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = [v5 endTime];
  if (v10 == [v6 endTime])
  {
    goto LABEL_7;
  }

  v11 = [v5 endTime];
  if (v11 > [v6 endTime])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  return v9;
}

uint64_t _OSLogIndexOrderForClosing(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if ((a3 & 8) == 0)
  {
    v7 = [v5 endTime];
    if (v7 != [v6 endTime])
    {
      v8 = [v5 endTime];
      if (v8 < [v6 endTime])
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_11;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = [v5 oldestTime];
  if (v10 == [v6 oldestTime])
  {
    goto LABEL_7;
  }

  v11 = [v5 oldestTime];
  if (v11 > [v6 oldestTime])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  return v9;
}

char *_timesync_range_intersect(char *result, void *a2, unint64_t a3, void *a4, unint64_t a5)
{
  v8 = result;
  v9 = *result;
  if (*result)
  {
    v10 = v9[3];
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if (!a2)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  result = _os_trace_uuid_map_lookup(*result, a2);
  if (!result)
  {
    goto LABEL_10;
  }

  v11 = result - 1;
  if (result == 1 && *(v8 + 1) > a3)
  {
    a3 = *(v8 + 1);
  }

  *(v8 + 1) = a3;
LABEL_11:
  v12 = v10;
  if (a4)
  {
    result = _os_trace_uuid_map_lookup(v9, a4);
    v12 = v10;
    if (result)
    {
      if (v10 == result && *(v8 + 2) < a5)
      {
        a5 = *(v8 + 2);
      }

      *(v8 + 2) = a5;
      v12 = result;
    }
  }

  if (v11 || v12 != v10)
  {
    if (v12 > v11)
    {
      if (v11)
      {
        memmove(v8 + 24, &v8[16 * v11 + 24], 16 * (v12 - v11));
      }

      _os_trace_uuid_map_destroy(v9);
      operator new();
    }

    if (v9)
    {
      v13 = 16 * v9[3];
    }

    else
    {
      v13 = 0;
    }

    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    bzero(v8 + 24, v13);

    return _os_trace_uuid_map_clear(v9);
  }

  return result;
}

uint64_t _timesync_advance_boot(void *a1)
{
  v1 = a1[6];
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[8];
  v4 = a1[9];
  while (*v1 != 48048 || *(v1 + 1) == v3 && *(v1 + 2) == v4)
  {
    _timesync_advance(a1);
    v1 = a1[6];
    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  _timesync_advance(a1);
  return 0;
}

id _index_log()
{
  if (_index_log_o != -1)
  {
    dispatch_once(&_index_log_o, &__block_literal_global_366);
  }

  v1 = _index_log_h;

  return v1;
}

uint64_t _timesync_enumerate_boot(void *a1, void *a2, uint64_t a3)
{
  _timesync_reset(a1);
  while (*a2 != a1[8] || a2[1] != a1[9])
  {
    result = _timesync_advance_boot(a1);
    if (result == -1)
    {
      return result;
    }
  }

  result = (*(a3 + 16))(a3, a1 + 13);
  if (result)
  {
    do
    {
      if (!a1[6])
      {
        break;
      }

      result = _timesync_advance(a1);
      if (*a2 != a1[8])
      {
        break;
      }

      if (a2[1] != a1[9])
      {
        break;
      }

      result = (*(a3 + 16))(a3, a1 + 13);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t ___oie_advance_cursor_open_store_block_invoke(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2 <= 24587)
  {
    if (v7 == 4096)
    {
      *(*(a1[6] + 8) + 24) = a2;
    }

    else if (v7 == 24587)
    {
      if (*(*(a1[6] + 8) + 24))
      {
        v11 = [_OSLogEnumeratorCatalog alloc];
        v12 = a1[5];
        LOBYTE(v17) = *(v12 + 120) ^ 1;
        v13 = [(_OSLogEnumeratorCatalog *)v11 initWithStore:a1[4] index:*(v12 + 136) fileHeader:*(*(a1[6] + 8) + 24) range:a3 chunk:a4 storeCatalogsAndSubchunks:a2, v17];
        v14 = *(a1[7] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        if (*(*(a1[7] + 8) + 40))
        {
          [*(a1[5] + 24) addObject:?];
        }
      }
    }
  }

  else if ((v7 - 24588) < 2 || v7 == 24592)
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v9 = *(*(a1[7] + 8) + 40);
      if (v9)
      {
        [v9 unionWithRange:{a3, a4}];
      }
    }
  }

  return 1;
}

void _catalog_lite_read_limits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 22);
  v4 = a1 + *(a1 + 8) + 16;
  if (*(a1 + 4) == 17)
  {
    v5 = *(a1 + 24);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v16 = ___catalog_lite_read_limits_block_invoke;
    v17 = &__block_descriptor_56_e12_v24__0_8__16l;
    v18 = a2;
    v19 = a3;
    v20 = v4;
    v21 = a1 + v3 + 40;
    for (i = v15; v5; --v5)
    {
      if (v4 < v21 || v4 - v21 < 0x18)
      {
        break;
      }

      v21 += 24;
      v16(i);
    }
  }

  else
  {
    v8 = a1 + v3;
    v9 = *(v8 + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = ___catalog_lite_read_limits_block_invoke_2;
    v12 = &__block_descriptor_48_e12_v24__0_8__16l;
    v13 = a2;
    v14 = a3;
    v21 = v8 + 32;
    for (i = v10; v9; --v9)
    {
      if (v4 < v21)
      {
        break;
      }

      if (v4 - v21 < 0x20)
      {
        break;
      }

      v21 += 32;
      (v11)(i);
    }
  }
}

void *___catalog_lite_read_limits_block_invoke(void *result, uint64_t a2, unint64_t *a3)
{
  v3 = result[4];
  if (*a2 < *v3)
  {
    *v3 = *a2;
  }

  v4 = *(a2 + 8);
  v5 = result[5];
  if (v4 > *v5)
  {
    *v5 = v4;
  }

  v6 = (a2 + 2 * *(a2 + 24) + 28);
  v7 = result[6];
  if (v6 <= v7)
  {
    v8 = v6 + 2 * *v6 + 4;
    if (v8 <= v7)
    {
      v7 = (v8 & 0xFFFFFFFFFFFFFFF8) + 8;
      if ((v8 & 7) == 0)
      {
        v7 = v8;
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t _catalog_create_with_chunk(_DWORD *a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*a1 == 24587)
  {
    v2 = _os_trace_calloc_typed();
    v2[8] = 0;
    v2[9] = v2 + 8;
    v2[1] = -1;
    operator new();
  }

  if (a2)
  {
    puts("Error: Incorrect catalog chunk preamble tag");
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __catalog_chunk_parse_uuid_v2_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  _os_trace_uuid_map_insert(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    _chunk_print_uuid(a2, a3);
  }

  return 1;
}

BOOL catalog_chunk_parse_entries(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 0;
    for (i = 0; i != a4; v10 = i >= a4)
    {
      v12 = *a1;
      if (a2)
      {
        if (a2 < v12 || a2 - v12 < a3)
        {
          break;
        }
      }

      *a1 = v12 + a3;
      if (!v12)
      {
        break;
      }

      if (((*(a5 + 16))(a5, i, v12, a1) & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

uint64_t _os_trace_str_map_insert(void **a1, char *__s)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = v6;
  v8 = v2[1];
  if (!*&v8)
  {
    goto LABEL_26;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*v2 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_26;
    }

LABEL_25:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v13 + 2, __p))
  {
    goto LABEL_25;
  }

  if ((v3 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t __catalog_chunk_parse_procinfo_v2_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (_os_procinfo_map_lookup(*(*(a1 + 32) + 40), *(a3 + 8), *(a3 + 16)))
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 4) == 17;
  v11 = 32;
  if (*(v9 + 4) == 17)
  {
    v11 = 40;
  }

  v12 = v9 + v11;
  v13 = v9 + *(v9 + 16);
  v14 = v13 + 40;
  v15 = v13 + 32;
  if (v10)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = _os_trace_calloc_typed();
  v18 = v17;
  *v17 = *a3;
  v19 = *(a3 + 16);
  *(v17 + 4) = *(a3 + 20);
  *(v17 + 8) = *(a3 + 8);
  v20 = *(a3 + 24);
  *(v17 + 16) = v19;
  *(v17 + 20) = v20;
  v21 = *(a3 + 4);
  v22 = v16 - v12;
  if (v22 >= 16 * v21 && v22 - 16 * v21 > 0xF)
  {
    *(v17 + 24) = *(v12 + 16 * v21);
  }

  else
  {
    _os_assumes_log();
  }

  v24 = *(a3 + 6);
  if (v24 != 0xFFFF)
  {
    if (v22 >= 16 * v24 && v22 - 16 * v24 > 0xF)
    {
      *(v18 + 20) = *(v12 + 16 * v24);
    }

    else
    {
      _os_assumes_log();
    }
  }

  *(v18 + 7) = hashtable_create(2);
  *(v18 + 8) = hashtable_create(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_29;
  }

  printf("[%03u]\n\t%10s : %llu@%u\n\t%10s : %d\n\t%10s : %u\n\t%10s : %u\n\t%10s : %x\n", a2, "proc id", *(v18 + 1), *(v18 + 4), "pid", *(v18 + 1), "euid", *(v18 + 5), "index", *v18, "flags", v18[1]);
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_29;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v26;
  *&out[16] = v26;
  uuid_unparse(v18 + 24, out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  out[0] = 0;
  if (!uuid_is_null(v18 + 40))
  {
    uuid_unparse(v18 + 40, out);
  }

  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v27 = *(a1 + 56);
  }

  else
  {
LABEL_29:
    v27 = 0;
  }

  if (!catalog_chunk_parse_procinfo_uuidinfo(a4, *(a1 + 48), *(a1 + 32), v18, v27 & 1, *(a1 + 40)) || !catalog_chunk_parse_procinfo_subsystem(a4, *(a1 + 48), *(a1 + 32), v18, *(a1 + 56), *(a1 + 40)))
  {
LABEL_34:
    _catalog_procinfo_free(v18);
    result = 0;
    goto LABEL_35;
  }

  if ((_os_procinfo_map_insert((*(a1 + 32) + 40), *(v18 + 1), *(v18 + 4)) & 1) == 0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

LABEL_2:
  result = 1;
LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void *_os_procinfo_map_lookup(void *result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12);
      v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
      v6 = vcnt_s8(v3);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
        if (v5 >= *&v3)
        {
          v7 = v5 % *&v3;
        }
      }

      else
      {
        v7 = v5 & (*&v3 - 1);
      }

      v8 = *(*result + 8 * v7);
      if (v8)
      {
        for (i = *v8; i; i = *i)
        {
          v10 = i[1];
          if (v5 == v10)
          {
            if (*(i + 6) == a3 && i[2] == a2)
            {
              return i[4];
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v10 >= *&v3)
              {
                v10 %= *&v3;
              }
            }

            else
            {
              v10 &= *&v3 - 1;
            }

            if (v10 != v7)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t hashtable_create(char a1)
{
  v2 = _os_trace_calloc_typed();
  *v2 = 16;
  *(v2 + 8) = a1;
  *(v2 + 16) = _os_trace_calloc_typed();
  return v2;
}

uint64_t catalog_chunk_parse_procinfo_uuidinfo(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  if (!a2 || (a2 >= v12 ? (v13 = a2 - v12 >= 8) : (v13 = 0), v13))
  {
    *a1 = v12 + 1;
    if (v12)
    {
      if (*(a6 + 4) == 17)
      {
        v14 = 40;
      }

      else
      {
        v14 = 32;
      }

      v15 = a6 + *(a6 + 16);
      v16 = v15 + 40;
      v17 = v15 + 32;
      if (*(a6 + 4) == 17)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (a5)
      {
        printf("\t%10s : %llu\n", "uuidinfos", *v12);
      }

      if (!*v12)
      {
LABEL_37:
        result = 1;
        goto LABEL_38;
      }

      v19 = 0;
      v20 = a6 + v14;
      v31 = v18 - v20;
      while (1)
      {
        v21 = *a1;
        if (a2)
        {
          if (a2 < v21 || a2 - v21 < 0x10)
          {
            break;
          }
        }

        *a1 = v21 + 2;
        if (!v21)
        {
          break;
        }

        v32 = v21[1] >> 16;
        if (!hashtable_lookup(*(a4 + 56), &v32))
        {
          v23 = _os_trace_calloc_typed();
          v24 = v23;
          v25 = *v21;
          *v23 = v21[1] >> 16;
          *(v23 + 8) = v25;
          v26 = 16 * v21[1];
          if (v31 >= v26 && v31 - v26 > 0xF)
          {
            *(v23 + 16) = *(v20 + 16 * v21[1]);
          }

          else
          {
            _os_assumes_log();
          }

          hashtable_insert(*(a4 + 56), v24, v24);
          ++*(a3 + 48);
          if (a5)
          {
            *&out[29] = 0xAAAAAAAAAAAAAAAALL;
            *&v28 = 0xAAAAAAAAAAAAAAAALL;
            *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *out = v28;
            *&out[16] = v28;
            uuid_unparse(v24 + 16, out);
            printf("\t\t<%10s : 0x%llx, %10s : %10llu, %10s : %s>\n", "load addr", *v24, "size", *(v24 + 1), "uuid", out);
          }
        }

        if (++v19 >= *v12)
        {
          goto LABEL_37;
        }
      }
    }
  }

  result = 0;
LABEL_38:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t catalog_chunk_parse_procinfo_subsystem(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *a1;
  if (*(a6 + 4) != 17)
  {
    if (!a2 || (a2 >= v12 ? (v21 = a2 - v12 >= 8) : (v21 = 0), v21))
    {
      *a1 = (v12 + 4);
      if (v12)
      {
        v22 = *(a6 + 16);
        v23 = *(a6 + 18);
        if (a5)
        {
          printf("\t%10s : %llu\n", "subsystems", *v12);
        }

        if (*v12)
        {
          v24 = 0;
          v25 = a6 + 24 + v22 + 8;
          v26 = v23 - (v22 + 8);
          v36 = v26;
          v38 = v25;
          while (1)
          {
            v27 = *a1;
            if (a2)
            {
              if (a2 < v27 || a2 - v27 < 4)
              {
                return 0;
              }
            }

            *a1 = (v27 + 2);
            if (!v27)
            {
              return 0;
            }

            if (a5)
            {
              printf("\t\t<%10s : %3u, %10s : %5hu>\n", "id", *v27, "offset", v27[1]);
            }

            v29 = v27[1];
            if (v26 < v29)
            {
LABEL_59:
              _os_assumes_log();
              return 0;
            }

            if (!hashtable_lookup(*(a4 + 64), v27))
            {
              v30 = (v38 + v29);
              v31 = _os_trace_calloc_typed();
              *v31 = *v27;
              v31[1] = _os_trace_str_map_entry(*(a3 + 24), v30 + 2);
              v32 = _os_trace_str_map_entry(*(a3 + 24), &v30[*v30 + 2]);
              v31[2] = v32;
              if (!v32 || !v31[1])
              {
                _os_assumes_log();
              }

              hashtable_insert(*(a4 + 64), v31, v31);
              ++*(a3 + 56);
              v26 = v36;
            }

            if (++v24 >= *v12)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a2 < v12 || a2 - v12 < 8)
    {
      return 0;
    }
  }

  *a1 = (v12 + 4);
  if (!v12)
  {
    return 0;
  }

  v14 = *(a6 + 16);
  v15 = *(a6 + 18);
  if (a5)
  {
    printf("\t%10s : %llu\n", "subsystems", *v12);
  }

  if (*v12)
  {
    v16 = 0;
    v37 = a6 + v14 + 40;
    v17 = v15 - v14;
    v35 = a4;
    do
    {
      v18 = *a1;
      if (a2)
      {
        if (a2 < v18 || a2 - v18 < 6)
        {
          return 0;
        }
      }

      *a1 = (v18 + 3);
      if (!v18)
      {
        return 0;
      }

      if (a5)
      {
        printf("\t\t<%10s : %3u, %10s : %5hu, %10s : %5hu>\n", "id", *v18, "subsystem", v18[1], "category", v18[2]);
      }

      if (v17 < v18[1] || v17 < v18[2])
      {
        goto LABEL_59;
      }

      if (!hashtable_lookup(*(a4 + 64), v18))
      {
        v20 = _os_trace_calloc_typed();
        *v20 = *v18;
        v20[1] = _os_trace_str_map_entry(*(a3 + 24), (v37 + v18[1]));
        a4 = v35;
        v20[2] = _os_trace_str_map_entry(*(a3 + 24), (v37 + v18[2]));
        hashtable_insert(*(v35 + 64), v20, v20);
        ++*(a3 + 56);
      }
    }

    while (++v16 < *v12);
  }

LABEL_56:
  v33 = *a1;
  if ((*a1 & 7) != 0)
  {
    v33 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a1 = v33;
  return 1;
}

uint64_t hashtable_lookup(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = (*(a1 + 16) + 8 * (hash_fn_array[*(a1 + 8)](a2) % *a1));
  v5 = hashkey_compare_array[*(a1 + 8)];
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v5(v4[1], a2))
    {
      return v4[2];
    }
  }

  return 0;
}

void *_os_trace_str_map_entry(void *result, char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_8;
  }

  v2 = result;
  std::string::basic_string[abi:nn200100]<0>(__p, a2);
  v3 = std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(v2, __p);
  v4 = v3;
  if ((v7 & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  operator delete(__p[0]);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  result = v4 + 2;
  if (*(v4 + 39) < 0)
  {
    result = *result;
  }

LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t hashtable_insert(unsigned int *a1, void *a2, uint64_t a3)
{
  v6 = (hash_fn_array)[*(a1 + 8)](a2);
  v7 = *a1;
  if (!*(a1 + 2))
  {
    v11 = *a1;
LABEL_9:
    *(a1 + 2) = _os_trace_calloc_typed();
    goto LABEL_10;
  }

  v8 = (*(a1 + 2) + 8 * ((hash_fn_array)[*(a1 + 8)](a2) % *a1));
  v9 = hashkey_compare_array[*(a1 + 8)];
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v9(v8[1], a2))
    {
      return 0;
    }
  }

  if (!*(a1 + 2))
  {
    v12 = *a1;
    goto LABEL_9;
  }

LABEL_10:
  v13 = v6 % v7;
  v14 = *(a1 + 8);
  v15 = _os_trace_calloc_typed();
  *v15 = 0;
  v15[2] = a3;
  if (v14 == 2)
  {
    v15[1] = *a2;
  }

  else if (v14 == 1)
  {
    *(v15 + 4) = *a2;
  }

  else
  {
    free(v15);
    v15 = 0;
  }

  v16 = *(a1 + 2);
  *v15 = *(v16 + 8 * v13);
  *(v16 + 8 * v13) = v15;
  ++a1[1];
  return 1;
}

uint64_t _os_procinfo_map_insert(void **a1, uint64_t a2, unsigned int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v4 = 0x9DDFEA08EB382D69 * (a2 ^ __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12));
  v5 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12) ^ (v4 >> 47);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47));
  v7 = v6 ^ __PAIR64__(a3, HIDWORD(a2));
  v8 = v3[1];
  if (!*&v8)
  {
    goto LABEL_24;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ __PAIR64__(a3, HIDWORD(a2));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v3 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_24;
    }

LABEL_23:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  if (*(v12 + 6) != a3 || v12[2] != a2)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t hash_uint64(void *a1)
{
  v1 = *a1 + ~(*a1 << 32);
  v2 = 9 * (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) ^ (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

uint64_t __catalog_chunk_parse_subchunk_v2_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = _catalog_subchunk_entry_alloc(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  v11 = *(a3 + 4);
  v12 = *(a3 + 5);
  *(v8 + 8) = v11;
  *(v8 + 9) = v12;
  v13 = (a3 + 3);
  *a4 = (a3 + 3);
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "uncomp sz", v11, "comp algo", v12);
    v14 = *(a1 + 48);
    v13 = *a4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    result = 0;
    if (v15 < v13 || v15 - v13 < 4)
    {
      return result;
    }
  }

  *a4 = (v13 + 2);
  if (!v13)
  {
    return 0;
  }

  if (v14)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "procinfos", *v13, "indexes");
  }

  if (*v13)
  {
    v17 = 0;
    do
    {
      v18 = *a4;
      if (v15)
      {
        if (v15 < v18 || v15 - v18 < 2)
        {
          return 0;
        }
      }

      *a4 = (v18 + 1);
      if (!v18)
      {
        return 0;
      }

      if (v8)
      {
        hashtable_insert(v8[6], v18, 0);
      }

      if (v14)
      {
        printf("%u,", *v18);
      }
    }

    while (++v17 < *v13);
  }

  if (v14)
  {
    putchar(10);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *a4;
  if (v20)
  {
    result = 0;
    if (v20 < v22 || v20 - v22 < 4)
    {
      return result;
    }
  }

  *a4 = (v22 + 2);
  if (!v22)
  {
    return 0;
  }

  if (v21)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "subcats", *v22, "offsets");
  }

  if (*v22)
  {
    v23 = 0;
    do
    {
      v24 = *a4;
      if (v20)
      {
        if (v20 < v24 || v20 - v24 < 2)
        {
          return 0;
        }
      }

      *a4 = (v24 + 1);
      if (!v24)
      {
        return 0;
      }

      if (v8)
      {
        hashtable_insert(v8[5], v24, 0);
      }

      if (v21)
      {
        printf("%u,", *v24);
      }
    }

    while (++v23 < *v22);
  }

  if (v21)
  {
    putchar(10);
  }

  v26 = *a4;
  if ((*a4 & 7) != 0)
  {
    v26 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v26;
  return 1;
}

BOOL catalog_chunk_parse_subchunk(unint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4 + *(a4 + 8) + 16;
  if (a3)
  {
    printf("\n----- %-30s -----\n", "Catalog Subchunk Section");
  }

  if (*(a4 + 4) != 17)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = __catalog_chunk_parse_subchunk_legacy_block_invoke;
    v15 = &__block_descriptor_tmp_75;
    v18 = v5;
    v16 = a2;
    v17 = v8;
    result = catalog_chunk_parse_section(a1, v8, 0x20uLL, &v12);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = *a1 <= v8;
    goto LABEL_8;
  }

  v9 = *(a4 + 24);
  v12 = MEMORY[0x277D85DD0];
  v13 = 0x40000000;
  v14 = __catalog_chunk_parse_subchunk_v2_block_invoke;
  v15 = &__block_descriptor_tmp_72;
  v18 = v5;
  v16 = a2;
  v17 = v8;
  if (catalog_chunk_parse_entries(a1, v8, 0x18uLL, v9, &v12))
  {
    goto LABEL_7;
  }

  result = 0;
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *_catalog_subchunk_entry_alloc(uint64_t a1)
{
  v2 = _os_trace_calloc_typed();
  v2[2] = -1;
  v2[6] = hashtable_create(1);
  v2[5] = hashtable_create(1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *v2 = 0;
  v2[1] = v3;
  *v3 = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4 + 1;
  return v2;
}

uint64_t _catalog_for_each_uuid(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v6 = ___catalog_for_each_uuid_block_invoke;
  v7 = &unk_2787AD6C0;
  v8 = a2;
  for (i = *(v2 + 16); i; i = *i)
  {
    result = (v6)(v5, i + 2, i[4]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_str_map_for_each(uint64_t result, uint64_t a2)
{
  if (result)
  {
    for (i = *(result + 16); i; i = *i)
    {
      v4 = i + 2;
      if (*(i + 39) < 0)
      {
        v4 = *v4;
      }

      result = (*(a2 + 16))(a2, v4, i[5]);
    }
  }

  return result;
}

uint64_t ___oie_advance_cursor_open_catalog_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v3 addObject:v4];
  [*(*(a1 + 32) + 16) addObject:v4];

  return 1;
}

uint64_t enumerateAndDecompressSubchunk(void *a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 1;
  v11 = *a2 - 24577;
  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x880F) != 0)
    {
      v10 = (*(v8 + 2))(v8, a2, a3);
    }

    else if (*a2 == 24589)
    {
      v13 = [v7 decompressedBufferForChunk:a2];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      v14 = [v13 data];
      v15 = [v13 size];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v21 = __enumerateAndDecompressSubchunk_block_invoke;
      v22 = &unk_2787AED88;
      v26 = &v27;
      v23 = v7;
      v16 = v13;
      v24 = v16;
      v25 = v9;
      v17 = v20;
      v18 = 0;
      do
      {
        if (v15 - v18 < 0x10)
        {
          break;
        }

        v19 = *(v14 + v18 + 8);
        if (v15 - v18 - 16 < v19)
        {
          break;
        }

        if (!(v21)(v17))
        {
          break;
        }

        v18 = (v18 + v19 + 23) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v18 - 1 < v15);

      v10 = *(v28 + 24);
      _Block_object_dispose(&v27, 8);
    }
  }

  return v10 & 1;
}

void sub_22E024EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___oie_advance_cursor_open_subchunk_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if (*a2 <= 24579)
  {
    if (v8 != 24577)
    {
      if (v8 != 24578)
      {
        if (v8 == 24579)
        {
          v10 = 0;
          if (_oie_validate_subchunk_ttl(*(a1 + 32), *(a1 + 40), *(a2 + 28), &v10))
          {
            if (*(a2 + 32) >= v10)
            {
              [*(*(a1 + 32) + 128) insertStatedumpChunk:a2 chunkOffset:a3 chunkSetStartAddr:a4 subchunk:*(a1 + 40)];
            }
          }
        }

        return 1;
      }

LABEL_14:
      [*(*(a1 + 32) + 128) insertOversizedChunk:a2 chunkOffset:a3 chunkSetStartAddr:a4 subchunk:*(a1 + 40) chunkList:*(*(a1 + 32) + 56)];
      return 1;
    }

    goto LABEL_15;
  }

  switch(v8)
  {
    case 24592:
      goto LABEL_14;
    case 24588:
LABEL_15:
      [*(*(a1 + 32) + 128) insertTracepoints:a2 chunkOffset:a3 chunkSetStartAddr:a4 subchunk:*(a1 + 40) options:*(a1 + 48)];
      return 1;
    case 24580:
      v10 = 0;
      if (_oie_validate_subchunk_ttl(*(a1 + 32), *(a1 + 40), *(a2 + 28), &v10))
      {
        if (*(a2 + 32) >= v10)
        {
          [*(*(a1 + 32) + 128) insertSimpleChunk:a2 chunkOffset:a3 chunkSetStartAddr:a4 subchunk:*(a1 + 40) options:*(a1 + 48)];
        }
      }

      break;
  }

  return 1;
}

uint64_t _OSLogEventUnpackChunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  v3 = (a3 + 16);
  v4 = *a1;
  if (*a1 > 24579)
  {
    switch(v4)
    {
      case 24580:
        v11 = *(a1 + 8);
        v6 = v11 - 72;
        if (v11 < 0x48)
        {
          goto LABEL_27;
        }

        v7 = 0;
        v8 = (a1 + 88);
        goto LABEL_21;
      case 24588:
        v14 = *(a1 + 8);
        v6 = v14 - 16;
        if (v14 < 0x10)
        {
          goto LABEL_27;
        }

        v7 = 0;
        v8 = (a1 + 30);
        goto LABEL_21;
      case 24592:
        v9 = *(a1 + 8);
        v6 = v9 - 16;
        if (v9 < 0x10)
        {
          goto LABEL_27;
        }

        v7 = 0;
        v8 = (a1 + 32);
        goto LABEL_21;
    }

LABEL_16:
    v12 = 0;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    return v12;
  }

  if (v4 == 24577)
  {
    v10 = *(a1 + 8);
    v6 = v10 - 16;
    if (v10 < 0x10)
    {
      goto LABEL_27;
    }

    v8 = (a1 + 32);
    v7 = *(a1 + 29) != 0;
    goto LABEL_21;
  }

  if (v4 == 24578)
  {
    v13 = *(a1 + 8);
    v6 = v13 - 32;
    if (v13 < 0x20)
    {
      goto LABEL_27;
    }

    v7 = 0;
    v8 = (a1 + 48);
    goto LABEL_21;
  }

  if (v4 != 24579)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 8);
  v6 = v5 - 48;
  if (v5 < 0x30)
  {
    goto LABEL_27;
  }

  v7 = 0;
  v8 = (a1 + 64);
LABEL_21:
  if (v6 - 4097 < 0xFFFFFFFFFFFFF00FLL)
  {
    goto LABEL_22;
  }

  v15 = *v8;
  if (v6 < v15)
  {
LABEL_27:
    v12 = 0;
    *(a3 + 8) = 0;
    *(a3 + 32) = 0;
    return v12;
  }

  v17 = v8[1];
  if (v17 <= 0xFFF)
  {
    if (v7)
    {
      if (v6 > v15 + (4096 - v17))
      {
        goto LABEL_22;
      }

      v18 = (4096 - v17);
      *v3 = v8 + v15;
    }

    else
    {
      if (v6 != 4096)
      {
        goto LABEL_22;
      }

      *v3 = v8 + v17;
      v18 = (4096 - v17);
    }

    *(a3 + 24) = v18;
    goto LABEL_23;
  }

LABEL_22:
  *v3 = 0;
  *(a3 + 24) = 0;
LABEL_23:
  *(a3 + 8) = v8;
  *(a3 + 32) = 0;
  if ((v4 - 24577) < 4)
  {
    if (a2)
    {
      *(a3 + 32) = _os_procinfo_map_lookup(*(a2 + 40), *(a1 + 16), *(a1 + 24));
    }

    return 1;
  }

  if (v4 == 24592)
  {
    v16 = 0;
    goto LABEL_36;
  }

  v12 = 0;
  if (v4 == 24588)
  {
    v16 = *(a1 + 29);
LABEL_36:
    if (a2)
    {
      v19 = *(a2 + 40);
      if (v19)
      {
        v20 = (v19 + 16);
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20[2] == *(a1 + 16))
          {
            v21 = v20[4];
            *(a3 + 32) = v21;
            if (v21)
            {
              v22 = v16 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = *(v21 + 2);
              if (v23 < 0)
              {
                v25 = v23 & 0x7FFF;
                *(v21 + 2) = v25;
                if (v16 == 4)
                {
                  *(v21 + 2) = v25 | 1;
                }
              }
            }

            return 1;
          }
        }
      }
    }

    return 1;
  }

  return v12;
}

uint64_t _oie_validate_subchunk_ttl(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v10 = 3;
  v11 = 4;
  v12 = 5;
  if (a3 != 30)
  {
    v12 = 0;
  }

  if (a3 != 14)
  {
    v11 = v12;
  }

  if (a3 != 7)
  {
    v10 = v11;
  }

  v13 = 1;
  v14 = 2;
  if (a3 != 3)
  {
    v14 = 0;
  }

  if (a3 != 1)
  {
    v13 = v14;
  }

  if (a3 <= 6)
  {
    v10 = v13;
  }

  v15 = v7[v10 + 8];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = [v8 getBootUUIDIndex:*v15];
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = v15[1];
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
LABEL_20:
    v18 = 1;
    goto LABEL_21;
  }

  v18 = 0;
LABEL_21:

  return v18;
}

id _OSLogGetSimplePredicate(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [[_OSLogSimplePredicate alloc] initWithPredicate:v10 supportedKeys:v9 supportedOperators:v8 supportedCompoundTypes:v7];

  v12 = [(_OSLogSimplePredicate *)v11 predicate];

  return v12;
}

uint8_t *_tracev3_chunk_decompress(uint64_t a1, uint64_t a2, compression_algorithm *a3, size_t *a4)
{
  v7 = COMPRESSION_LZ4;
  v8 = 0x10000;
  if (a2)
  {
    v9 = *(a2 + 32);
    v10 = v9 == 0;
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0x10000;
    }

    if (v9)
    {
      v7 = *(a2 + 36);
    }

    else
    {
      v7 = COMPRESSION_LZ4;
    }

    if (!v7)
    {
      v11 = (a1 + 16);
      v12 = *(a1 + 8);
      if (!a3)
      {
        goto LABEL_20;
      }

LABEL_19:
      *a3 = v7;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = _os_trace_malloc_typed();
  v13 = compression_decode_buffer(v11, v8, (a1 + 16), *(a1 + 8), 0, v7);
  v12 = v13;
  if (!v13)
  {
    free(v11);
    v11 = 0;
LABEL_18:
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v10)
  {
    goto LABEL_18;
  }

  if (v13 == v8)
  {
    v12 = v8;
    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    _os_assumes_log();
    if (a3)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  if (a4)
  {
    *a4 = v12;
  }

  return v11;
}

unint64_t _oie_get_next_major_time(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if ((a2 & 8) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v8 = [v5[1] firstObject];
  v9 = v8;
  if (v8)
  {
    if ((a2 & 8) != 0)
    {
      [v8 endTime];
      v10 = [v9 endTime];
    }

    else
    {
      [v8 oldestTime];
      v10 = [v9 oldestTime];
    }

    v7 = v10;
  }

  v11 = [v6[3] firstObject];
  v12 = v11;
  if (v11)
  {
    if ((a2 & 8) != 0)
    {
      if ([v11 endTime] < v7)
      {
        goto LABEL_16;
      }

      v13 = [v12 endTime];
    }

    else
    {
      if ([v11 oldestTime] > v7)
      {
        goto LABEL_16;
      }

      v13 = [v12 oldestTime];
    }

    v7 = v13;
  }

LABEL_16:
  v14 = [v6[4] firstObject];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_27;
  }

  if ((a2 & 8) != 0)
  {
    if ([v14 endTime] < v7)
    {
      goto LABEL_27;
    }
  }

  else if ([v14 oldestTime] > v7)
  {
    goto LABEL_27;
  }

  v16 = [v15 bootUUID];
  if (*v16 == *a3 && v16[1] == a3[1])
  {
    if ((a2 & 8) != 0)
    {
      v17 = [v15 endTime];
    }

    else
    {
      v17 = [v15 oldestTime];
    }

    v7 = v17;
  }

LABEL_27:
  v18 = [v6[2] firstObject];
  v19 = v18;
  if (v18)
  {
    if ((a2 & 8) != 0)
    {
      v22 = [v18 oldestTime];
      v23 = v22 - 1;
      if (v22 - 1 <= v7)
      {
        v23 = v7;
      }

      if (v22)
      {
        v7 = v23;
      }
    }

    else
    {
      v20 = [v18 endTime];
      v21 = v20 + 1;
      if (v7 < v20 + 1)
      {
        v21 = v7;
      }

      if (((v20 == -1) << 63) >> 63 == (v20 == -1))
      {
        v7 = v21;
      }
    }
  }

  v24 = [v6[5] firstObject];
  v25 = v24;
  if (v24)
  {
    if ((a2 & 8) != 0)
    {
      v28 = [v24 oldestTime];
      v29 = v28 - 1;
      if (v28 - 1 <= v7)
      {
        v29 = v7;
      }

      if (v28)
      {
        v7 = v29;
      }
    }

    else
    {
      v26 = [v24 endTime];
      v27 = v26 + 1;
      if (v7 < v26 + 1)
      {
        v27 = v7;
      }

      if (((v26 == -1) << 63) >> 63 == (v26 == -1))
      {
        v7 = v27;
      }
    }
  }

  return v7;
}

BOOL _parse_location(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v4 = *(*(a1 + 328) + 88);
  if (*(v4 + 2))
  {
    v5 = 4;
  }

  else
  {
    v5 = 6;
  }

  v6 = *(a2 + 2) & 0xE;
  if (v6 <= 7)
  {
    if (v6 == 2 || v6 == 4 || v6 == 6)
    {
      v5 = 4;
      goto LABEL_20;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_20;
  }

  if (v6 == 8)
  {
    goto LABEL_20;
  }

  if (v6 != 10)
  {
    if (v6 == 12)
    {
      v5 = 6;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v5 = 20;
LABEL_20:
  v9 = *a3;
  v10 = v9 + v5;
  v11 = *(a2 + 16);
  if (v10 > HIWORD(v11))
  {
    v20 = 0;
    v25 = HIWORD(v11);
LABEL_51:
    *a3 = v25;
    return v20;
  }

  v12 = *(a2 + 4);
  *a3 = v10;
  if (!v5)
  {
    return 0;
  }

  v13 = (a2 + 24 + v9);
  if (v5 == 6)
  {
    v14 = 0;
    v15 = *(v13 + 2) << 32;
  }

  else
  {
    v15 = 0;
    if (v5 == 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 + 1;
    }
  }

  v16 = *v13;
  if ((*(a2 + 2) & 0x20) == 0)
  {
    v17 = 0;
    goto LABEL_31;
  }

  v18 = *(a2 + 16);
  if (v10 + 2 > HIWORD(v18))
  {
    v20 = 0;
    v25 = HIWORD(v18);
    goto LABEL_51;
  }

  *a3 = v10 + 2;
  v17 = *(a2 + 24 + v10) << 31;
LABEL_31:
  v19 = v17 | v12 & 0x7FFFFFFF;
  if (v12 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 | 0x8000000000000000;
  }

  *(a1 + 160) = v20;
  if (!v20)
  {
    return v20;
  }

  *(a1 + 336) |= 1uLL;
  *(a1 + 449) = (*(v4 + 2) & 2) != 0;
  v21 = v15 | v16;
  v22 = *(a2 + 2) & 0xE;
  v20 = 1;
  if (v22 <= 7)
  {
    if (v22 == 2)
    {
      *(a1 + 152) = v21;
      *(a1 + 112) = v4 + 24;
      return 1;
    }

    if (v22 != 4)
    {
      return v20;
    }

LABEL_44:
    *(a1 + 152) = v21;
    *(a1 + 104) = v4 + 40;
    *(a1 + 112) = v4 + 40;
    return 1;
  }

  switch(v22)
  {
    case 0xCu:
      goto LABEL_44;
    case 0xAu:
      *(a1 + 152) = v21;
      *(a1 + 112) = v14;
      return v14 != 0;
    case 8u:
      v23 = _catalog_procinfo_lookup_pc(v4, v21);
      if (v23)
      {
        *(a1 + 152) = v21 - *v23;
        *(a1 + 112) = v23 + 2;
        return 1;
      }

      return 0;
  }

  return v20;
}

void _resolve_uuid_slow(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  v3 = (a1 + 112);
  if (!*(a1 + 112))
  {
    return;
  }

  v4 = *(*(a1 + 328) + 96);
  if (v4)
  {
    if (!*(a1 + 160))
    {
      return;
    }
  }

  uuidpath_lookup_fd(*(a1 + 352), v1, (a1 + 48));
  if (*(a1 + 8) == 2560 || (*(a1 + 168) & 2) != 0)
  {
    if (uuidpath_lookup_fd(*(a1 + 352), *(a1 + 112), (a1 + 120)) || (*(a1 + 168) & 2) == 0)
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 352);
    v9 = *(a1 + 104);
    v10 = *(a1 + 152);
    v13 = 0;
    uuidpath_sharedcache_resolve_fd(v8, v9, 0, v10, 0, 0, 0, 0, a1 + 120, &v13, 0);
LABEL_18:
    *(a1 + 152) -= v13;
    goto LABEL_19;
  }

  if (v4)
  {
    v13 = 0;
    v5 = *(v4 + 2);
    v6 = (a1 + 288);
    if (v5 >= 0)
    {
      v6 = 0;
    }

    if (*v4 == 6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if ((v5 & 6 | 8) != 0xC)
    {
      uuidpath_resolve_fd(*(a1 + 352), *(a1 + 112), *(a1 + 160), *(a1 + 280), (a1 + 176), v7, (a1 + 120), 0);
      goto LABEL_19;
    }

    uuidpath_sharedcache_resolve_fd(*(a1 + 352), *(a1 + 112), *(a1 + 160), *(a1 + 152), *(a1 + 280), (a1 + 176), v7, v3, a1 + 120, &v13, 0);
    goto LABEL_18;
  }

LABEL_19:
  v11 = *(a1 + 384);
  if (v11)
  {

    *(a1 + 384) = 0;
  }

  v12 = *(a1 + 392);
  if (v12)
  {

    *(a1 + 392) = 0;
  }

  if (*(a1 + 48))
  {
    *(a1 + 384) = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  if (*(a1 + 120))
  {
    *(a1 + 392) = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  *(a1 + 336) |= 2uLL;
}

BOOL uuidpath_lookup_fd(int a1, const void *a2, void *a3)
{
  v6 = _uuidpath_pathcache();
  node = rb_tree_find_node(v6, a2);
  if (!node)
  {
    v12 = 0;
    v8 = _uuidpath_headercache_lookup(a2, &v12);
    if (v8)
    {
LABEL_8:
      node = _uuidpath_pathcache_add(v8, a2, v12);
      goto LABEL_9;
    }

    if (a1 == -3)
    {
      v9 = uuidpath_map_header(0, a2, &v12);
    }

    else
    {
      v9 = uuidpath_map_header_fd(a1, a2, &v12);
    }

    v8 = v9;
    if (v9)
    {
      _uuidpath_headercache_add(a2, v9, v12);
      goto LABEL_8;
    }

    node = 0;
  }

LABEL_9:
  v10 = node + 40;
  if (!node)
  {
    v10 = 0;
  }

  *a3 = v10;
  return node != 0;
}

rb_tree_t *_uuidpath_pathcache()
{
  if (_uuidpath_pathcache_onceToken != -1)
  {
    dispatch_once(&_uuidpath_pathcache_onceToken, &__block_literal_global_22);
  }

  v0 = pthread_getspecific(_uuidpath_pathcache_key);
  if (!v0)
  {
    v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x80040A284212CuLL);
    rb_tree_init(v0, &_uuidpath_pathcache_ops);
    pthread_setspecific(_uuidpath_pathcache_key, v0);
  }

  return v0;
}

char *_uuidpath_headercache_lookup(const unsigned __int8 *a1, void *a2)
{
  if (headercache_once != -1)
  {
    dispatch_once(&headercache_once, &__block_literal_global_25);
  }

  result = pthread_getspecific(headercache_key);
  if (result)
  {
    v5 = (result + 40);
    v6 = 5;
    while (uuid_compare(v5 + 16, a1))
    {
      v5 += 32;
      if (!--v6)
      {
        return 0;
      }
    }

    result = *v5;
    *a2 = *(v5 + 1);
  }

  return result;
}

uint64_t _os_trace_uuiddb_get_pathsuffix(uint64_t result, int a2, char *__str, size_t __size)
{
  v6 = result;
  if (a2 <= 16)
  {
    if ((a2 - 1) < 2)
    {
      v7 = 1;
LABEL_5:
      v8 = *result;
      result = snprintf(__str, __size, "%02X");
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v7 = 0;
      goto LABEL_9;
    }

LABEL_17:
    qword_27DA52778 = "BUG IN LIBTRACE: Invalid type";
    qword_27DA527A8 = a2;
    __break(1u);
    return result;
  }

  v7 = -1;
  if ((a2 - 17) < 2)
  {
    goto LABEL_5;
  }

  if (a2 != 19)
  {
    goto LABEL_17;
  }

LABEL_9:
  result = snprintf(__str, __size, "dsc");
LABEL_10:
  if (v7 == -1)
  {
    return result;
  }

  v9 = result + 1;
  if (v9 + 2 * (16 - v7) >= __size)
  {
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: Path buffer is too small";
    qword_27DA527A8 = __size;
    __break(1u);
    goto LABEL_17;
  }

  __str[result] = 47;
  v10 = &__str[v9];
  do
  {
    *v10 = a0123456789abcd_0[*(v6 + v7) >> 4];
    v10[1] = a0123456789abcd_0[*(v6 + v7) & 0xF];
    v10 += 2;
    ++v7;
  }

  while (v7 != 16);
  *v10 = 0;
  return result;
}

void *uuidpath_map_header_fd(int a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  _os_trace_uuiddb_get_pathsuffix(a2, 1, __str, 0x400uLL);
  result = _os_trace_mmap_at();
  if (result)
  {
    munmap(result, 0);
LABEL_6:
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void _uuidpath_headercache_add(const unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !uuid_is_null(a1))
  {
    if (headercache_once != -1)
    {
      dispatch_once(&headercache_once, &__block_literal_global_28);
    }

    v6 = pthread_getspecific(headercache_key);
    if (!v6)
    {
      v6 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1020040FD027848uLL);
      pthread_setspecific(headercache_key, v6);
    }

    v7 = *v6;
    v8 = &v6[8 * v7 + 10];
    if (*v8)
    {
      munmap(*v8, *(v8 + 8));
      v7 = *v6;
    }

    v9 = &v6[8 * v7 + 10];
    *v9 = a2;
    *(v9 + 8) = a3;
    uuid_copy((v9 + 16), a1);
    if (*v6 == 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = *v6 + 1;
    }

    *v6 = v10;
  }
}

unsigned __int8 *_uuidpath_pathcache_add(uint64_t a1, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >= 0x10 && (*(a1 + 8) & 1) != 0)
  {
    v4 = *(a1 + 12);
    v5 = 8 * v4 + 16;
    if (v5 < a3)
    {
      if (v4)
      {
        v6 = (a1 + 20);
        while (1)
        {
          v7 = *v6;
          v6 += 2;
          v8 = __CFADD__(v5, v7);
          v5 += v7;
          if (v8)
          {
            break;
          }

          if (!--v4)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v9 = a3 - v5;
        if (a3 > v5)
        {
          v10 = (a1 + v5);
          v11 = strnlen((a1 + v5), a3 - v5);
          if (v11 < v9)
          {
            v12 = v11;
            goto LABEL_12;
          }
        }
      }
    }
  }

  v12 = 0;
  v10 = &_CTF_NULLSTR;
LABEL_12:
  v13 = _os_trace_malloc_typed();
  uuid_copy(v13 + 24, a2);
  memcpy(v13 + 40, v10, v12 + 1);
  v14 = _uuidpath_pathcache();
  inserted = rb_tree_insert_node(v14, v13);
  if (v13 != inserted)
  {
    free(v13);
  }

  return inserted;
}

uint64_t uuidpath_sharedcache_resolve_fd(uint64_t a1, __n128 *a2, unint64_t a3, unint64_t a4, unint64_t a5, const char **a6, const char **a7, void *a8, unint64_t a9, void *a10, const char **a11)
{
  v17 = a1;
  v34[1] = *MEMORY[0x277D85DE8];
  dsc_map_impl = _os_trace_uuiddb_get_dsc_map_impl(a1, 0, a2, 1);
  if (!dsc_map_impl)
  {
    if (headercache_once == -1)
    {
      if (a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&headercache_once, &__block_literal_global_1012);
      if (a2)
      {
LABEL_13:
        if (!uuid_is_null(a2))
        {
          v23 = pthread_getspecific(headercache_key);
          if (!v23)
          {
            v23 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1020040FD027848uLL);
            pthread_setspecific(headercache_key, v23);
          }

          if (uuid_compare(v23 + 24, a2))
          {
            v34[0] = 0;
            v24 = uuidpath_map_header_fd(v17, a2, v34);
            if (!v24)
            {
              if (a11)
              {
                *a11 = "<Invalid - Unable to find matching cache information>";
              }

              goto LABEL_44;
            }

            v25 = v24;
            if ((v24[8] & 2) == 0)
            {
              if (a11)
              {
                *a11 = "<Invalid - Not shared cache information>";
              }

              munmap(v24, v34[0]);
              goto LABEL_44;
            }

            v26 = *(v23 + 1);
            if (v26)
            {
              munmap(v26, *(v23 + 2));
            }

            v27 = v34[0];
            *(v23 + 1) = v25;
            *(v23 + 2) = v27;
            uuid_copy(v23 + 24, a2);
          }

          else
          {
            v25 = *(v23 + 1);
            if (!v25)
            {
              if (a11)
              {
                result = 0;
                v22 = "<Invalid - Unable to find matching cache information>";
                goto LABEL_20;
              }

              goto LABEL_44;
            }
          }

          v28 = *(v25 + 3);
          if (v28)
          {
            v29 = a3 & 0x7FFFFFFFFFFFFFFFLL;
            v30 = v25 + 24;
            while (1)
            {
              v31 = v30[2] - *(v25 + 2);
              if (v29 >= v31 && v29 <= v30[3] + v31)
              {
                break;
              }

              v30 += 4;
              if (!--v28)
              {
                goto LABEL_42;
              }
            }

            if (a8)
            {
              *a8 = v30;
            }

            if (a6 | a9)
            {
              result = uuidpath_resolve_fd(v17, v30, (v29 - v31) | a3 & 0x8000000000000000, 0, a6, 0, a9, a11);
              goto LABEL_45;
            }

            goto LABEL_10;
          }

LABEL_42:
          if (a11)
          {
            result = 0;
            v22 = "<Invalid shared cache offset>";
            goto LABEL_20;
          }

          goto LABEL_44;
        }
      }
    }

    if (!a11)
    {
      goto LABEL_44;
    }

    result = 0;
    v22 = "<Invalid shared cache is NULL>";
LABEL_20:
    *a11 = v22;
    goto LABEL_45;
  }

  v19 = dsc_map_impl;
  if (a6)
  {
    v20 = _os_trace_uuiddb_dsc_map_resolve_string(dsc_map_impl, a3);
    *a6 = v20;
    if (!v20)
    {
      if (!a11)
      {
        goto LABEL_44;
      }

      result = 0;
      v22 = "<Invalid shared cache format string offset>";
      goto LABEL_20;
    }
  }

  if (a7)
  {
    *a7 = _os_trace_uuiddb_dsc_map_resolve_string(v19, a5);
  }

  if ((a8 || a9 || a10) && (_os_trace_uuiddb_dsc_map_resolve_entry(v19, a4, a8, a9, a10) & 1) == 0)
  {
    if (a11)
    {
      result = 0;
      v22 = "<Invalid shared cache code pointer offset>";
      goto LABEL_20;
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

LABEL_10:
  result = 1;
LABEL_45:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 _os_trace_uuiddb_dsc_validate_hdr(uint64_t a1, unint64_t a2, __n128 *a3)
{
  if (a2 - 0x80000000 < 0xFFFFFFFF80000010 || *a1 != 1685283688)
  {
    return result;
  }

  v5 = a2;
  v6 = *(a1 + 4);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    v7 = *(a1 + 8);
    v8 = (16 * v7);
    if (16 * v7 != v8 || v8 == 4294967280)
    {
      return result;
    }

    v10 = 16 * v7 + 16;
    v11 = *(a1 + 12);
    v12 = __CFADD__(v10, 28 * v11);
    v13 = (v10 + 28 * v11);
    v14 = v12;
    if (v11 > 0x9249249 || v14)
    {
      return result;
    }

    if (v13 <= a2)
    {
      if (v7)
      {
        v15 = (a1 + 28);
        v16 = *(a1 + 8);
        while (1)
        {
          v17 = *(v15 - 1);
          v12 = a2 >= v17;
          v18 = a2 - v17;
          if (!v12 || v18 < *v15 || *(v15 - 3) >= v11)
          {
            return result;
          }

          v15 += 4;
          if (!--v16)
          {
            goto LABEL_44;
          }
        }
      }

      if (v11)
      {
LABEL_44:
        v30 = (a1 + 16 * v7 + 40);
        do
        {
          v31 = *v30;
          v30 += 7;
          if (v31 >= a2)
          {
            return result;
          }
        }

        while (--v11);
      }

      if (*(a2 + a1 - 1))
      {
        return result;
      }

      v32 = *(a1 + 8);
      v33 = _os_trace_calloc_typed();
      v34 = v33;
      v35 = *(a1 + 8);
      if (v35)
      {
        v36 = (v33 + 16);
        v37 = (a1 + 24);
        do
        {
          *(v36 - 2) = *(v37 - 1);
          *(v36 - 1) = *v37;
          *v36 = *(v37 - 2);
          v36 += 6;
          v37 += 2;
          --v35;
        }

        while (v35);
      }

      v38 = *(a1 + 12);
      v39 = _os_trace_calloc_typed();
      v40 = v39;
      if (*(a1 + 12))
      {
        v41 = 0;
        v42 = a1 + 16 * v7 + 20;
        v43 = v39;
        do
        {
          *v43 = *(v42 - 4);
          *(v43 + 8) = *v42;
          *(v43 + 12) = *(v42 + 4);
          *(v43 + 28) = *(v42 + 20);
          ++v41;
          v43 += 32;
          v42 += 28;
        }

        while (v41 < *(a1 + 12));
      }

      v44 = _os_trace_calloc_typed();
      *(v44 + 8) = a1;
      *(v44 + 16) = v34;
      *(v44 + 24) = v40;
LABEL_61:
      result = *a3;
      *(v44 + 32) = *a3;
      *(v44 + 48) = v5;
      return result;
    }

LABEL_62:
    _os_assumes_log();
    return result;
  }

  v19 = *(a1 + 8);
  v20 = (24 * v19);
  if (24 * v19 != v20 || v20 > 0xFFFFFFEF)
  {
    return result;
  }

  v22 = 24 * v19 + 16;
  v23 = *(a1 + 12);
  v12 = __CFADD__(v22, 32 * v23);
  v24 = (v22 + 32 * v23);
  v25 = v12;
  if (v23 >> 27 || v25)
  {
    return result;
  }

  if (v24 > a2)
  {
    goto LABEL_62;
  }

  if (v19)
  {
    v26 = (a1 + 32);
    v27 = *(a1 + 8);
    while (1)
    {
      v28 = *(v26 - 2);
      v12 = a2 >= v28;
      v29 = a2 - v28;
      if (!v12 || v29 < *(v26 - 1) || *v26 >= v23)
      {
        break;
      }

      v26 += 6;
      if (!--v27)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (!v23)
    {
LABEL_59:
      if (*(a2 + a1 - 1))
      {
        return result;
      }

      v47 = a1 + 16 + 24 * v19;
      v44 = _os_trace_calloc_typed();
      *(v44 + 8) = a1;
      *(v44 + 16) = a1 + 16;
      *(v44 + 24) = v47;
      goto LABEL_61;
    }

LABEL_56:
    v45 = (a1 + 24 * v19 + 44);
    while (1)
    {
      v46 = *v45;
      v45 += 8;
      if (v46 >= a2)
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_59;
      }
    }
  }

  return result;
}

const char *_os_trace_uuiddb_dsc_map_resolve_string(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return "%s";
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = (v3 + v4) >> 1;
    v6 = *(a1 + 16) + 24 * v5;
    v7 = a2 - *v6;
    if (a2 >= *v6)
    {
      break;
    }

LABEL_7:
    v3 = v5;
    if (v4 >= v5)
    {
      return 0;
    }
  }

  if (v7 >= *(v6 + 12))
  {
    v4 = v5 + 1;
    v5 = v3;
    goto LABEL_7;
  }

  return (v2 + *(v6 + 8) + v7);
}

uint64_t _os_trace_uuiddb_dsc_map_resolve_entry(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *(*(a1 + 8) + 12);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 24);
  v8 = *(*(a1 + 8) + 12);
  do
  {
    v9 = (v6 + v8) >> 1;
    v10 = v7 + 32 * v9;
    if (a2 >= *v10)
    {
      if (a2 - *v10 < *(v10 + 8))
      {
        goto LABEL_10;
      }

      v6 = v9 + 1;
    }

    else
    {
      v8 = (v6 + v8) >> 1;
    }
  }

  while (v6 < v8);
  if (*(v7 + 8))
  {
    return 0;
  }

  LODWORD(v9) = 0;
LABEL_10:
  if (v9 >= v5)
  {
    return 0;
  }

  v11 = v7 + 32 * v9;
  if (a3)
  {
    *a3 = v11 + 12;
  }

  if (a4)
  {
    *a4 = *(a1 + 8) + *(v11 + 28);
  }

  if (a5)
  {
    *a5 = *v11;
  }

  return 1;
}

void _catalog_destroy(uint64_t a1)
{
  _os_trace_uuid_map_clear(*(a1 + 16));
  _os_trace_str_map_clear(*(a1 + 24));
  *(a1 + 32) = 0;
  _os_procinfo_map_clear(*(a1 + 40), _catalog_procinfo_free);
  v2 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      hashtable_destroy(v2[6], 0);
      hashtable_destroy(v2[5], 0);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 8) = -1;
  _os_trace_uuid_map_destroy(*(a1 + 16));
  _os_trace_str_map_destroy(*(a1 + 24));
  v4 = *(a1 + 40);
  _os_procinfo_map_clear(v4, 0);
  if (v4)
  {
    v5 = v4[2];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *v4;
    *v4 = 0;
    if (v7)
    {
      operator delete(v7);
    }

    MEMORY[0x2318E1010](v4, 0x10A0C408EF24B1CLL);
  }

  free(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void _os_trace_str_map_clear(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *_os_procinfo_map_clear(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      for (i = result[2]; i; i = *i)
      {
        result = a2(i[4]);
      }
    }

    if (v3[3])
    {
      result = v3[2];
      if (result)
      {
        do
        {
          v5 = *result;
          operator delete(result);
          result = v5;
        }

        while (v5);
      }

      v3[2] = 0;
      v6 = v3[1];
      if (v6)
      {
        for (j = 0; j != v6; ++j)
        {
          *(*v3 + 8 * j) = 0;
        }
      }

      v3[3] = 0;
    }
  }

  return result;
}

void _catalog_procinfo_free(unsigned int **a1)
{
  v2 = MEMORY[0x277D86138];
  hashtable_destroy(a1[7], MEMORY[0x277D86138]);
  hashtable_destroy(a1[8], v2);

  free(a1);
}

void hashtable_destroy(unsigned int *a1, void (*a2)(void))
{
  if (*(a1 + 2))
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(a1 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *v6;
            if (a2)
            {
              a2(v6[2]);
            }

            free(v6);
            --a1[1];
            v6 = v7;
          }

          while (v7);
          v3 = *a1;
        }
      }
    }

    if (a1[1])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    free(*(a1 + 2));
  }

  free(a1);
}

void _os_trace_str_map_destroy(uint64_t a1)
{
  _os_trace_str_map_clear(a1);
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(*(a1 + 16));
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete(v2);
    }

    JUMPOUT(0x2318E1010);
  }
}

void *_os_activity_map_find_parent(void *result, unint64_t a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = vcnt_s8(v2);
      v3.i16[0] = vaddlv_u8(v3);
      if (v3.u32[0] > 1uLL)
      {
        v4 = a2;
        if (*&v2 <= a2)
        {
          v4 = a2 % *&v2;
        }
      }

      else
      {
        v4 = (*&v2 - 1) & a2;
      }

      v5 = *(*result + 8 * v4);
      if (v5)
      {
        for (i = *v5; i; i = *i)
        {
          v7 = i[1];
          if (v7 == a2)
          {
            if (i[2] == a2)
            {
              return i[3];
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v7 >= *&v2)
              {
                v7 %= *&v2;
              }
            }

            else
            {
              v7 &= *&v2 - 1;
            }

            if (v7 != v4)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t uuidpath_resolve_fd(int a1, const void *a2, unint64_t a3, unint64_t a4, const char **a5, const char **a6, void *a7, void *a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = 0;
  if (a2)
  {
    if (!a5)
    {
      if (a7)
      {
        v16 = _uuidpath_pathcache();
        node = rb_tree_find_node(v16, a2);
        if (node)
        {
          *a7 = node + 40;
LABEL_52:
          result = 1;
          goto LABEL_62;
        }
      }
    }

    v18 = _uuidpath_headercache_lookup(a2, &v51);
    if (v18)
    {
      goto LABEL_9;
    }

    v19 = uuidpath_map_header_fd(a1, a2, &v51);
    if (v19)
    {
      v18 = v19;
      _uuidpath_headercache_add(a2, v19, v51);
LABEL_9:
      v20 = _uuidpath_pathcache_add(v18, a2, v51);
      if (a7 && v20)
      {
        *a7 = v20 + 40;
        if (!a5)
        {
          goto LABEL_52;
        }
      }

      else if (!a5)
      {
        goto LABEL_52;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        *a5 = "%s";
        goto LABEL_52;
      }

      v22 = *(v18 + 3);
      if (!v22)
      {
        goto LABEL_58;
      }

      v23 = 0;
      LOBYTE(v24) = 0;
      v25 = a6 == 0;
      v26 = &v18[8 * v22 + 16];
      v27 = v51;
      while (1)
      {
        v28 = &v18[8 * v23 + 16];
        v29 = *v28;
        v30 = (*(v28 + 1) + v29);
        if ((v24 & 1) == 0)
        {
          v31 = a3 - v29;
          if (a3 < v29 || v30 <= a3)
          {
            v24 = 0;
            if (v25)
            {
              goto LABEL_47;
            }

            goto LABEL_34;
          }

          if (v31 > v27 || v31 < 0)
          {
            v34 = "<format string calculation error>";
          }

          else
          {
            v34 = (v26 + v31);
          }

          *a5 = v34;
        }

        v24 = 1;
        if (v25)
        {
          goto LABEL_47;
        }

LABEL_34:
        if (a4 >= v29 && v30 > a4)
        {
          v36 = a4 - v29;
          v37 = (v26 + a4 - v29);
          if (v36 > v27 || v36 < 0)
          {
            v39 = "<signpost name calculation error>";
          }

          else
          {
            v39 = v37;
          }

          *a6 = v39;
LABEL_47:
          if (v24)
          {
            goto LABEL_52;
          }

          if (++v23 >= *(v18 + 3))
          {
            goto LABEL_58;
          }

          v25 = 1;
          goto LABEL_50;
        }

        if (++v23 >= *(v18 + 3))
        {
          if (v24)
          {
            if (!a8)
            {
              goto LABEL_61;
            }

LABEL_60:
            memset(out, 0, 37);
            uuid_unparse_upper(a2, out);
            _uuidpath_error_message(a3, a8, "Invalid bounds %llu for %s", v45, v46, v47, v48, v49, a4);
            goto LABEL_61;
          }

LABEL_58:
          if (!a8)
          {
            goto LABEL_61;
          }

          LOBYTE(a4) = a3;
          goto LABEL_60;
        }

        v25 = 0;
LABEL_50:
        v26 += *(v28 + 1);
      }
    }

    if (a8)
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      _uuidpath_error_message(a3, a8, "Invalid image <%s>", v40, v41, v42, v43, v44, out);
    }

LABEL_61:
    result = 0;
  }

  else
  {
    if (!a8)
    {
      goto LABEL_61;
    }

    result = 0;
    *a8 = "Invalid image UUID (NULL)";
  }

LABEL_62:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_procinfo_lookup_pc(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = -1;
  v2 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___catalog_procinfo_lookup_pc_block_invoke;
  v6[3] = &unk_2787AD710;
  v6[5] = &v8;
  v6[6] = a2;
  v6[4] = v7;
  hashtable_iterate(v2, v6);
  v3 = v9[3];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

unsigned int *hashtable_iterate(unsigned int *result, uint64_t a2)
{
  if (*(result + 2))
  {
    v2 = result;
    v3 = *result;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(v2 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *(v2 + 8);
            if (v7 == 1)
            {
              v8 = v6 + 1;
            }

            else
            {
              v8 = 0;
            }

            if (v7 == 2)
            {
              v9 = v6 + 1;
            }

            else
            {
              v9 = v8;
            }

            result = (*(a2 + 16))(a2, v9, v6[2]);
            v6 = *v6;
          }

          while (v6);
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

void *___catalog_procinfo_lookup_pc_block_invoke(void *result, uint64_t a2, void *a3)
{
  v3 = result[6];
  if (v3 >= *a3)
  {
    v4 = a3[1];
    if (v3 < v4 + *a3)
    {
      v5 = *(result[4] + 8);
      if (v4 < *(v5 + 24))
      {
        *(v5 + 24) = v4;
        *(*(result[5] + 8) + 24) = a3;
      }
    }
  }

  return result;
}

char *os_log_fmt_delimit(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != 37)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: Should start with '%'";
    qword_27DA527A8 = v5;
    __break(1u);
    JUMPOUT(0x22E027D5CLL);
  }

  *(a3 + 8) = 0u;
  v9 = (a3 + 8);
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a1;
  if (a1[1] != 123)
  {
    v12 = 0;
    goto LABEL_55;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFBLL) != 2)
  {
    return 0;
  }

  result = strchr(v4, 125);
  if (result)
  {
    v11 = a1 + 2;
    if (a1[2] == 125)
    {
      v12 = 0;
      goto LABEL_54;
    }

    v52 = result;
    v12 = 0;
    while (1)
    {
      v13 = &v11[strspn(v11, ", ")];
      v14 = strcspn(v13, ",}");
      v15 = v14;
      v16 = v14 - 6;
      if (v14 <= 6)
      {
        if (v14 != 6)
        {
          if (!v14)
          {
            result = v52;
            goto LABEL_54;
          }

LABEL_33:
          if (!memchr(v13, 61, v14))
          {
            if (!strncmp(v13, "mask.", 5uLL))
            {
              if (v16 <= 7)
              {
                v22 = 0;
                v23 = 0;
                v12 |= 0x800u;
                *(a3 + 8) = v12;
                v24 = v13 + 5;
                *(a3 + 48) = v13 + 5;
                *(a3 + 18) = v15 - 5;
                do
                {
                  v25 = *v24++;
                  v23 |= v25 << v22;
                  v22 += 8;
                }

                while (8 * (v15 - 5) != v22);
                *(a3 + 56) = v23;
              }
            }

            else
            {
              v20 = v12 | 0x40;
              *v9 = v12 | 0x40;
              if (!strncmp(v13, "builtin:", 8uLL))
              {
                v12 |= 0xC0u;
                *(a3 + 8) = v12;
                *(a3 + 14) = 7;
                *(a3 + 32) = "builtin";
                *(a3 + 40) = v13 + 8;
                *(a3 + 16) = v15 - 8;
              }

              else
              {
                v21 = memchr(v13, 58, v15);
                if (v21)
                {
                  if ((v12 & 0x80) != 0)
                  {
                    v20 = v12 & 0xFFFFFF3F | 0x40;
                    *v9 = v20;
                  }

                  *(a3 + 14) = v21 - v13;
                  *(a3 + 32) = v13;
                  *(a3 + 40) = v21 + 1;
                  *(a3 + 16) = v13 + v15 - (v21 + 1);
                  v12 = v20;
                }

                else
                {
                  v12 |= 0xC0u;
                  *(a3 + 8) = v12;
                  *(a3 + 14) = 7;
                  *(a3 + 32) = "builtin";
                  *(a3 + 40) = v13;
                  *(a3 + 16) = v15;
                }
              }
            }
          }

          goto LABEL_34;
        }

        if (*v13 != 1818391920 || *(v13 + 2) != 25449)
        {
          goto LABEL_33;
        }

        v12 |= 0x100u;
      }

      else if (v14 == 7)
      {
        if (*v13 != 1986622064 || *(v13 + 3) != 1702125942)
        {
          goto LABEL_33;
        }

        v12 |= 0x200u;
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_33;
        }

        if (*v13 != 0x76697469736E6573 || v13[8] != 101)
        {
          goto LABEL_33;
        }

        v12 |= 0x400u;
      }

      *v9 = v12;
LABEL_34:
      v11 = &v13[v15];
      if (*v11 == 125)
      {
        if ((v12 & 0x400) != 0)
        {
          v26 = 64767;
          result = v52;
LABEL_52:
          v12 &= v26;
          *v9 = v12;
        }

        else
        {
          result = v52;
          if ((v12 & 0x200) != 0)
          {
            v26 = 64255;
            goto LABEL_52;
          }
        }

LABEL_54:
        v4 = result + 1;
LABEL_55:
        v27 = 0;
LABEL_56:
        v29 = *v4++;
        v28 = v29;
        while (1)
        {
          while ((v28 - 49) < 9)
          {
            do
            {
              v30 = *v4++;
              v28 = v30;
            }

            while ((v30 - 48) < 0xA);
            if (v28 == 36)
            {
              v12 |= 1u;
              *v9 = v12;
              goto LABEL_56;
            }
          }

          switch(v28)
          {
            case ' ':
            case '#':
            case '\'':
            case '+':
            case '-':
            case '0':
              goto LABEL_56;
            case '*':
              if ((v12 & 8) != 0)
              {
                v12 |= 1u;
                *v9 = v12;
              }

              v36 = v4;
              do
              {
                v38 = *v36++;
                v37 = v38;
              }

              while ((v38 - 48) < 0xA);
              if (v37 == 36)
              {
                v12 |= 1u;
              }

              else
              {
                v12 |= (v12 >> 1) & 1 | 2;
              }

              if (v37 == 36)
              {
                v4 = v36;
              }

              *v9 = v12;
              goto LABEL_56;
            case '.':
              v31 = *v4++;
              v28 = v31;
              if (v31 == 42)
              {
                v39 = v4;
                do
                {
                  v41 = *v39++;
                  v40 = v41;
                }

                while ((v41 - 48) < 0xA);
                if (v40 == 36)
                {
                  v12 |= 1u;
                  *v9 = v12;
                  v4 = v39;
                }

                else
                {
                  v42 = v12 | ((v12 & 0xC) != 0);
                  v12 = v42 | 0xC;
                  *v9 = v42 | 0xC;
                }

                goto LABEL_56;
              }

              *(a3 + 24) = 0;
              v32 = v28 - 48;
              if ((v28 - 48) <= 9)
              {
                v33 = 0;
                do
                {
                  v33 = v32 + 10 * v33;
                  *(a3 + 24) = v33;
                  v34 = *v4++;
                  v28 = v34;
                  v32 = v34 - 48;
                }

                while ((v34 - 48) < 0xA);
              }

              v35 = v12 | (v12 >> 3) & 1;
              v12 = v35 | 8;
              *v9 = v35 | 8;
              break;
            case '@':
              v49 = 18;
              goto LABEL_117;
            case 'A':
            case 'E':
            case 'F':
            case 'G':
            case 'a':
            case 'e':
            case 'f':
            case 'g':
              if ((v27 & 8) != 0)
              {
                v43 = 15;
              }

              else
              {
                v43 = 14;
              }

              goto LABEL_96;
            case 'C':
              v43 = 7;
              goto LABEL_96;
            case 'D':
              LOWORD(v27) = v27 | 0x10;
              goto LABEL_135;
            case 'L':
              v27 |= 8u;
              goto LABEL_56;
            case 'O':
            case 'U':
              LOWORD(v27) = v27 | 0x10;
              goto LABEL_99;
            case 'P':
              if (a2 != 2)
              {
                return 0;
              }

              if ((v12 & 8) == 0)
              {
                *v9 = v12 | 1;
              }

              v49 = 19;
              goto LABEL_117;
            case 'S':
              v49 = 17;
              goto LABEL_117;
            case 'X':
            case 'o':
            case 'u':
            case 'x':
LABEL_99:
              if ((v27 & 0x2000) != 0)
              {
                v45 = 2;
              }

              else
              {
                v45 = 6;
              }

              if ((v27 & 0x40) != 0)
              {
                v46 = 4;
              }

              else
              {
                v46 = v45;
              }

              if ((v27 & 0x10) != 0)
              {
                v47 = 10;
              }

              else
              {
                v47 = v46;
              }

              if ((v27 & 0x20) != 0)
              {
                v48 = 12;
              }

              else
              {
                v48 = v47;
              }

              if ((v27 & 0xC00) != 0)
              {
                v48 = 10;
              }

              if ((v27 & 0x1000) != 0)
              {
                v49 = 12;
              }

              else
              {
                v49 = v48;
              }

              *(a3 + 8) = v12 | 0x30;
              goto LABEL_117;
            case 'c':
              if ((v27 & 0x10) != 0)
              {
                v43 = 7;
              }

              else
              {
                v43 = 5;
              }

              goto LABEL_96;
            case 'd':
            case 'i':
LABEL_135:
              if ((v27 & 0x1000) != 0)
              {
                goto LABEL_143;
              }

              if ((v27 & 0x400) != 0 || (v27 & 0x800) != 0)
              {
                goto LABEL_144;
              }

              if ((v27 & 0x20) != 0)
              {
LABEL_143:
                v51 = 11;
              }

              else if ((v27 & 0x10) != 0)
              {
LABEL_144:
                v51 = 9;
              }

              else if ((v27 & 0x40) != 0)
              {
                v51 = 3;
              }

              else if ((v27 & 0x2000) != 0)
              {
                v51 = 1;
              }

              else
              {
                v51 = 5;
              }

              *(a3 + 10) = v51;
              v50 = v12 | 0x10;
LABEL_146:
              *v9 = v50;
              goto LABEL_147;
            case 'h':
              if ((v27 & 0x40) != 0)
              {
                v27 = v27 & 0xFFFFDFBF | 0x2000;
              }

              else
              {
                v27 |= 0x40u;
              }

              goto LABEL_56;
            case 'j':
              v27 |= 0x1000u;
              goto LABEL_56;
            case 'l':
              if ((v27 & 0x10) != 0)
              {
                v27 = v27 & 0xFFFFFFCF | 0x20;
              }

              else
              {
                v27 |= 0x10u;
              }

              goto LABEL_56;
            case 'm':
              v43 = 8;
LABEL_96:
              *(a3 + 10) = v43;
              v44 = v12 | 0x10;
              goto LABEL_97;
            case 'n':
              v50 = v12 | 1;
              goto LABEL_146;
            case 'p':
              *(a3 + 10) = 13;
              v44 = v12 | 0x30;
LABEL_97:
              *(a3 + 8) = v44;
              goto LABEL_147;
            case 'q':
              v27 |= 0x20u;
              goto LABEL_56;
            case 's':
              if ((v27 & 0x10) != 0)
              {
                v49 = 17;
              }

              else
              {
                v49 = 16;
              }

LABEL_117:
              *(a3 + 10) = v49;
LABEL_147:
              *(a3 + 12) = v4 - a1;
              return (v4 - a1);
            case 't':
              v27 |= 0x800u;
              goto LABEL_56;
            case 'z':
              v27 |= 0x400u;
              goto LABEL_56;
            default:
              return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_read_aster_if_necessary(uint64_t result, _WORD *a2, unsigned __int8 **a3)
{
  if ((*(result + 8) & 2) != 0)
  {
    if (*a2)
    {
      v3 = *a3;
      --*a2;
      v4 = v3 + 2;
      *a3 = &v3[v3[1] + 2];
      v5 = (result + 20);
      if (v3[1] == 4)
      {
        v6 = *v3;
        if (v6 < 0x10 || (v6 & 0xF0) == 16)
        {
          *v5 = *v4;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v5 = (result + 20);
    }

    *v5 = 0;
  }

LABEL_12:
  v8 = *(result + 8);
  if ((v8 & 8) == 0)
  {
    return result;
  }

  if ((v8 & 4) != 0 || (v8 & 0x10) == 0 && *(result + 10) != 18)
  {
    if (*a2)
    {
      v10 = *a3;
      --*a2;
      v11 = (v10 + 2);
      *a3 = &v10[v10[1] + 2];
      v12 = (result + 24);
      if (v10[1] == 4)
      {
        v13 = *v10;
        if (v13 < 0x10 || (v13 & 0xF0) == 16)
        {
          v15 = *v11;
LABEL_30:
          *v12 = v15;
          return result;
        }
      }
    }

    else
    {
      v12 = (result + 24);
    }

    v15 = -1;
    goto LABEL_30;
  }

  if (*a2)
  {
    v9 = *a3;
    if ((**a3 & 0xF0) == 0x10)
    {
      --*a2;
      *a3 = &v9[v9[1] + 2];
      v8 = *(result + 8);
    }
  }

  *(result + 8) = v8 & 0xFFF7;
  return result;
}

uint64_t os_log_fmt_get_data(uint64_t result, unsigned int a2, unsigned int a3, unsigned __int8 *a4, int a5, unsigned __int16 a6, unsigned __int8 **a7, _WORD *a8, int8x8_t a9, BOOL *a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, unsigned __int16 a14)
{
  if (!a4)
  {
    goto LABEL_53;
  }

  v14 = *a4 & 0xF0;
  if (v14 == 224)
  {
    v15 = *(result + 56);
    if (v15 > 0x656D616E6C69616CLL)
    {
      if (v15 > 0x6F6363616C69616CLL)
      {
        if (v15 == 0x6F6363616C69616DLL || v15 == 0x7075626D6C69616DLL)
        {
          goto LABEL_27;
        }

        v16 = 0x726464616C69616DLL;
      }

      else
      {
        if (v15 == 0x656D616E6C69616DLL || v15 == 0x6A6275736C69616DLL)
        {
          goto LABEL_27;
        }

        v16 = 0x6D6D75736C69616DLL;
      }
    }

    else
    {
      if (v15 <= 0x786F626C69616CLL)
      {
        if (v15)
        {
          if (v15 != 1752392040)
          {
            v16 = 0x68736168766564;
            goto LABEL_26;
          }

LABEL_27:
          LOBYTE(v20) = 8;
          goto LABEL_61;
        }

LABEL_60:
        LOBYTE(v20) = 3;
        goto LABEL_61;
      }

      if (v15 == 0x786F626C69616DLL || v15 == 0x35646D6E69616C70)
      {
        goto LABEL_27;
      }

      v16 = 0x617474616C69616DLL;
    }

LABEL_26:
    if (v15 != v16)
    {
      LOBYTE(v20) = 10;
      goto LABEL_61;
    }

    goto LABEL_27;
  }

  if ((*a4 & 1) == 0)
  {
    v18 = a12;
    goto LABEL_10;
  }

  v21 = *a4 & 7;
  if ((0xD8uLL >> v21))
  {
    goto LABEL_60;
  }

  v22 = privacy_flags2opt[v21];
  if (v22 > a3)
  {
LABEL_19:
    LOBYTE(v20) = 1;
    goto LABEL_61;
  }

  a11 = a13;
  v18 = a14;
  if (a2 - 1 > 2)
  {
    if (a13)
    {
      v19 = 0;
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if (v14 != 128 && v22 > a2)
  {
    goto LABEL_19;
  }

LABEL_10:
  v19 = a11 == 0;
  if (v18 && !a11)
  {
LABEL_12:
    LOBYTE(v20) = 4;
LABEL_61:
    *a7 = 0;
    *a8 = 0;
    return v20;
  }

LABEL_35:
  *a10 = 0;
  v23 = *a4;
  if ((v23 & 0xFFFFFFF1) == 0)
  {
    v20 = a4 + 2;
    v28 = a4[1];
    *a10 = a4[1] == 0;
    if (v28)
    {
      goto LABEL_64;
    }

    v29 = *a4;
    goto LABEL_52;
  }

  if ((v23 & 0xFFFFFFE1) == 0 || a4[1] != 4)
  {
    goto LABEL_60;
  }

  v24 = *(a4 + 1);
  if (v24 > v18)
  {
    goto LABEL_12;
  }

  v25 = v18 - v24;
  v26 = *(a4 + 2);
  if (v25 < (v26 & 0x7FFF))
  {
    goto LABEL_12;
  }

  v27 = v26;
  if (v23 <= 0xF && v26 < 0)
  {
    goto LABEL_53;
  }

  v20 = (a11 + v24);
  if (v19)
  {
    v20 = 0;
  }

  *a10 = v26 < 0;
  LOWORD(v28) = *(a4 + 2) & 0x7FFF;
  if (!a5 && v27 < 0 && (*(a4 + 2) & 0x7FFF) == 0)
  {
    v28 = v25 >> 15;
    if (v25 >> 15)
    {
      *a10 = 0;
      LOWORD(v28) = 0x8000;
      if (*a4 < 0xF0u)
      {
        goto LABEL_64;
      }

LABEL_55:
      v30 = *(result + 56);
      if (v30 > 0x656D616E6C69616CLL)
      {
        if (v30 <= 0x6F6363616C69616CLL)
        {
          if (v30 == 0x656D616E6C69616DLL || v30 == 0x6A6275736C69616DLL)
          {
            goto LABEL_110;
          }

          v34 = 0x6D6D75736C69616DLL;
          goto LABEL_103;
        }

        if (v30 != 0x6F6363616C69616DLL)
        {
          if (v30 == 0x726464616C69616DLL)
          {
            *a7 = v20;
            *a8 = v28;
            LOBYTE(v20) = 7;
            return v20;
          }

          v31 = 0x7075626D6C69616DLL;
LABEL_108:
          if (v30 == v31)
          {
            goto LABEL_109;
          }

LABEL_119:
          LOBYTE(v20) = 9;
          goto LABEL_61;
        }
      }

      else
      {
        if (v30 <= 0x786F626C69616CLL)
        {
          if (!v30)
          {
            goto LABEL_60;
          }

          if (v30 != 1752392040)
          {
            v31 = 0x68736168766564;
            goto LABEL_108;
          }

LABEL_109:
          *a7 = v20;
          *a8 = v28;
          LOBYTE(v20) = 5;
          return v20;
        }

        if (v30 != 0x786F626C69616DLL)
        {
          if (v30 == 0x35646D6E69616C70)
          {
            goto LABEL_109;
          }

          v34 = 0x617474616C69616DLL;
LABEL_103:
          if (v30 != v34)
          {
            goto LABEL_119;
          }
        }
      }

LABEL_110:
      *a7 = v20;
      *a8 = v28;
      LOBYTE(v20) = 6;
      return v20;
    }
  }

  v29 = *a4;
  if (v29 > 0xEF)
  {
    goto LABEL_55;
  }

  if ((v27 & 0x8000) != 0)
  {
LABEL_52:
    if (v29 >= 0x10)
    {
      goto LABEL_64;
    }

LABEL_53:
    LOBYTE(v20) = 2;
    goto LABEL_61;
  }

LABEL_64:
  *a7 = v20;
  *a8 = v28;
  v32 = *a4;
  if ((*a4 & 0xF0) == 0x10)
  {
    goto LABEL_68;
  }

  if (*a4 < 0x10u != (*(result + 8) & 0x10) >> 4)
  {
    goto LABEL_68;
  }

  if ((*(result + 8) & 0x10) != 0)
  {
    a9.i32[0] = v28;
    if (vaddlv_u8(vcnt_s8(a9)) != 1)
    {
      goto LABEL_68;
    }
  }

  v33 = *(result + 10);
  if (*(result + 10) <= 0xAu)
  {
    if (*(result + 10) <= 4u)
    {
      if ((v33 - 1) < 2)
      {
        if (v28 <= 4u)
        {
          goto LABEL_115;
        }

        goto LABEL_68;
      }

      if ((v33 - 3) >= 2)
      {
        goto LABEL_120;
      }
    }

    else if ((v33 - 5) >= 4)
    {
      if ((v33 - 9) < 2)
      {
        if (a6 >= v28)
        {
          goto LABEL_115;
        }

        goto LABEL_68;
      }

      goto LABEL_120;
    }

    if (v28 < 5u)
    {
      goto LABEL_115;
    }

    goto LABEL_68;
  }

  if (*(result + 10) > 0xFu)
  {
    if (*(result + 10) <= 0x11u)
    {
      if (v33 == 16)
      {
        if ((v32 & 0xF0) == 0x20)
        {
LABEL_115:
          LOBYTE(v20) = 0;
          return v20;
        }
      }

      else if ((v32 & 0xF0) == 0x50)
      {
        goto LABEL_115;
      }

LABEL_68:
      LOBYTE(v20) = 3;
      return v20;
    }

    if (v33 == 18)
    {
      v35 = (v32 >> 4) - 2;
      if (v35 < 7)
      {
        return (0x30303000000uLL >> (8 * (v35 & 0x1F)));
      }

      goto LABEL_68;
    }

    if (v33 == 19)
    {
      if ((v32 & 0xF0) == 0x30)
      {
        goto LABEL_115;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (*(result + 10) > 0xDu)
    {
      if (v28 == 8)
      {
        goto LABEL_115;
      }

      goto LABEL_68;
    }

    if ((v33 - 11) < 2)
    {
      if (v28 < 9u)
      {
        goto LABEL_115;
      }

      goto LABEL_68;
    }

    if (v33 == 13)
    {
      if (v28 == a6)
      {
        goto LABEL_115;
      }

      goto LABEL_68;
    }
  }

LABEL_120:
  qword_27DA52778 = "BUG IN LIBTRACE: Unexpected type";
  qword_27DA527A8 = v33;
  __break(1u);
  return result;
}

unint64_t _os_log_fmt_compose_data(uint64_t a1, uint64_t a2, _BYTE *a3, const char *a4, unsigned int a5, int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = (*(a2 + 12) + 18) & 0x3FFF0;
  MEMORY[0x28223BE20]();
  v14 = &__src - v13;
  result = _os_log_fmt_compose_format_copy(&__src - v13, *v15, *(a2 + 12));
  if ((*a3 & 0xF0) != 0x30)
  {
    if (*(a2 + 10) == 18)
    {
      v14[result - 1] = 115;
    }

    v36 = *(a2 + 8);
    if ((v36 & 2) != 0)
    {
      __src = *(a2 + 20);
      v37 = 1;
      if (a5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v37 = 0;
      if (a5)
      {
LABEL_31:
        if ((v36 & 8) == 0)
        {
          *&v14[result - 1] = 7547438;
          v38 = v37 + 1;
LABEL_43:
          *(&__src + v37) = a5;
          goto LABEL_44;
        }

        v38 = v37 + 1;
        if ((v36 & 4) == 0)
        {
          *strrchr(v14, 46) = 7547438;
          goto LABEL_43;
        }

        v39 = *(a2 + 24);
        if (v39 > a5)
        {
          goto LABEL_43;
        }

        *(&__src + v37) = v39;
LABEL_44:
        if (v38 == 2)
        {
          result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, __src);
          if (!a6)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v38 == 1)
          {
            HIBYTE(v44) = HIBYTE(a4);
            result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, __src);
          }

          else
          {
            result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, a4);
          }

          if (!a6)
          {
            goto LABEL_57;
          }
        }

        v40 = "<…>";
LABEL_56:
        result = os_trace_blob_addns(a1, v40, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_57;
      }
    }

    if (a6)
    {
      a4 = &_CTF_NULLSTR;
    }

    else
    {
      a4 = "(null)";
    }

    if ((v36 & 4) != 0)
    {
      v38 = v37 + 1;
      *(&__src + v37) = 0x7FFFFFFF;
    }

    else
    {
      v38 = v37;
    }

    goto LABEL_44;
  }

  LOBYTE(__src) = 39;
  if ((*(a1 + 20) & 2) != 0)
  {
    goto LABEL_6;
  }

  v23 = *(a1 + 8);
  if (*(a1 + 12) != v23 + (*(a1 + 22) ^ 1))
  {
    *(*a1 + v23) = 39;
    v24 = *(a1 + 8) + 1;
    *(a1 + 8) = v24;
    if ((*(a1 + 22) & 1) == 0)
    {
      *(*a1 + v24) = 0;
    }

LABEL_6:
    if (a5)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

  result = os_trace_blob_add_slow(a1, &__src, 1uLL);
  if (a5)
  {
LABEL_7:
    v25 = 0;
    do
    {
      v26 = a4[v25];
      v27 = *(a1 + 20);
      if (v25)
      {
        LOBYTE(__src) = 32;
        if ((v27 & 2) == 0)
        {
          v28 = *(a1 + 8);
          if (*(a1 + 12) == v28 + (*(a1 + 22) ^ 1))
          {
            result = os_trace_blob_add_slow(a1, &__src, 1uLL);
          }

          else
          {
            *(*a1 + v28) = 32;
            v29 = *(a1 + 8) + 1;
            *(a1 + 8) = v29;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v29) = 0;
            }
          }
        }

        v27 = *(a1 + 20);
      }

      v30 = a0123456789abcd_0[v26 >> 4];
      LOBYTE(__src) = v30;
      if ((v27 & 2) == 0)
      {
        v31 = *(a1 + 8);
        if (*(a1 + 12) == v31 + (*(a1 + 22) ^ 1))
        {
          result = os_trace_blob_add_slow(a1, &__src, 1uLL);
        }

        else
        {
          *(*a1 + v31) = v30;
          v32 = *(a1 + 8) + 1;
          *(a1 + 8) = v32;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v32) = 0;
          }
        }
      }

      v33 = a0123456789abcd_0[v26 & 0xF];
      LOBYTE(__src) = v33;
      if ((*(a1 + 20) & 2) == 0)
      {
        v34 = *(a1 + 8);
        if (*(a1 + 12) == v34 + (*(a1 + 22) ^ 1))
        {
          result = os_trace_blob_add_slow(a1, &__src, 1uLL);
        }

        else
        {
          *(*a1 + v34) = v33;
          v35 = *(a1 + 8) + 1;
          *(a1 + 8) = v35;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v35) = 0;
          }
        }
      }

      ++v25;
    }

    while (a5 != v25);
  }

LABEL_54:
  if (a6)
  {
    v40 = "…'";
    goto LABEL_56;
  }

  LOBYTE(__src) = 39;
  if ((*(a1 + 20) & 2) == 0)
  {
    v42 = *(a1 + 8);
    if (*(a1 + 12) == v42 + (*(a1 + 22) ^ 1))
    {
      result = os_trace_blob_add_slow(a1, &__src, 1uLL);
    }

    else
    {
      *(*a1 + v42) = 39;
      v43 = *(a1 + 8) + 1;
      *(a1 + 8) = v43;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v43) = 0;
      }
    }
  }

LABEL_57:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_log_fmt_compose_format_copy(_BYTE *a1, void *__s, unsigned __int16 a3)
{
  v3 = a3;
  v6 = a3;
  v7 = memchr(__s, 125, a3);
  if (v7)
  {
    v3 += __s - v7;
    v6 = v3;
    memcpy(a1, v7, v3);
    *a1 = 37;
  }

  else
  {
    memcpy(a1, __s, v6);
  }

  a1[v6] = 0;
  return v3;
}

uint64_t os_trace_blob_addf(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 22);
  if (v9 == 1)
  {
    qword_27DA52778 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 12) - *(a1 + 8) - (v9 ^ 1u);
  *__error() = 0;
  v13 = vsnprintf((*a1 + *(a1 + 8)), (v12 + 1), a2, &a9);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 0;
    *(*a1 + *(a1 + 8)) = 0;
  }

  else
  {
    v14 = v13;
    if (v13 > v12)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v12 = os_trace_blob_grow(a1, v13);
        *__error() = 0;
        vsnprintf((*a1 + *(a1 + 8)), (v12 + 1), a2, &a9);
      }

      if (v14 > v12)
      {
        *(a1 + 20) |= 2u;
        v14 = v12;
      }
    }

    *(a1 + 8) += v14;
  }

  return v14;
}

void os_trace_blob_add_unsafe_bytes(uint64_t a1, char *__src, unint64_t a3)
{
  if ((*(a1 + 20) & 2) == 0)
  {
    v3 = a3;
    v6 = *(a1 + 8) + (*(a1 + 22) ^ 1);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7 - v6;
      if (!a3)
      {
        return;
      }

      goto LABEL_8;
    }

    v9 = *(a1 + 12);
    v8 = v9 - v6;
    if (!v9)
    {
      v8 = 0;
    }

    if (a3)
    {
LABEL_8:
      if (!v8)
      {
        return;
      }

      v10 = 0;
      v11 = v8;
      while (1)
      {
        if (!*__src)
        {
          return;
        }

        if (v3 >= v11 - v10)
        {
          v12 = v11 - v10;
        }

        else
        {
          v12 = v3;
        }

        if (_os_trace_unsafe_ascii_once != -1)
        {
          dispatch_once(&_os_trace_unsafe_ascii_once, &__block_literal_global_1203);
        }

        if (v12 >= 1)
        {
          if ((*(_os_trace_unsafe_ascii_tbl + ((*__src >> 3) & 0x18)) >> *__src))
          {
            v12 = 0;
          }

          else
          {
            v13 = 1;
            while (v13 < v12)
            {
              v14 = __src[v13++];
              if ((*(_os_trace_unsafe_ascii_tbl + ((v14 >> 3) & 0x18)) >> v14))
              {
                v12 = v13 - 1;
                break;
              }
            }
          }
        }

        if ((*(a1 + 20) & 2) == 0)
        {
          v15 = *(a1 + 8);
          if (v12 > (*(a1 + 12) - v15 - (*(a1 + 22) ^ 1u)))
          {
            os_trace_blob_add_slow(a1, __src, v12);
          }

          else
          {
            memcpy((*a1 + v15), __src, v12);
            v16 = *(a1 + 8) + v12;
            *(a1 + 8) = v16;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v16) = 0;
            }
          }
        }

        v17 = v3 - v12;
        if (!v17)
        {
          return;
        }

        v18 = v12 + v10;
        if (v18 == v11)
        {
          return;
        }

        v19 = &__src[v12];
        v20 = *v19;
        if (!*v19)
        {
          return;
        }

        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v25 = _os_trace_utf8_len(v19, v17);
        if (v25 == -1)
        {
          v10 = v18 + 4;
          if (v10 > v11)
          {
            return;
          }

          v29 = v20 & 0x7F;
          if ((*(MEMORY[0x277D85DE0] + 4 * (v20 & 0x7F) + 60) & 0x200) == 0)
          {
            qmemcpy(&v37, "\\M-", 3);
            HIBYTE(v37) = v20 & 0x7F;
            if ((*(a1 + 20) & 2) == 0)
            {
              v30 = *(a1 + 8);
              if (*(a1 + 12) - v30 - (*(a1 + 22) ^ 1u) > 3)
              {
                v31 = *a1;
                v32 = v37;
                goto LABEL_56;
              }

              p_srca = &v37;
LABEL_68:
              v35 = a1;
              v36 = 4;
LABEL_69:
              os_trace_blob_add_slow(v35, p_srca, v36);
            }

LABEL_59:
            __src = v19 + 1;
            v3 = v17 - 1;
            goto LABEL_60;
          }

          if (v29 == 127)
          {
            v33 = 63;
          }

          else
          {
            v33 = v29 + 64;
          }

          qmemcpy(&__srca, "\\M^", 3);
          HIBYTE(__srca) = v33;
          if ((*(a1 + 20) & 2) != 0)
          {
            goto LABEL_59;
          }

          v30 = *(a1 + 8);
          if (*(a1 + 12) - v30 - (*(a1 + 22) ^ 1u) <= 3)
          {
            p_srca = &__srca;
            goto LABEL_68;
          }

          v31 = *a1;
          v32 = __srca;
LABEL_56:
          *(v31 + v30) = v32;
          v24 = *(a1 + 8) + 4;
LABEL_57:
          *(a1 + 8) = v24;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v24) = 0;
          }

          goto LABEL_59;
        }

        v26 = v25;
        if (v25 == -2)
        {
          return;
        }

        v10 = v25 + v18;
        if (v10 > v11)
        {
          return;
        }

        if ((*(a1 + 20) & 2) == 0)
        {
          v27 = *(a1 + 8);
          if (v25 > *(a1 + 12) - v27 - (*(a1 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a1, v19, v25);
          }

          else
          {
            memcpy((*a1 + v27), v19, v25);
            v28 = *(a1 + 8) + v26;
            *(a1 + 8) = v28;
            if ((*(a1 + 22) & 1) == 0)
            {
              *(*a1 + v28) = 0;
            }
          }
        }

        __src = &v19[v26];
        v3 = v17 - v26;
LABEL_60:
        if (!v3 || v10 >= v11)
        {
          return;
        }
      }

      v10 = v18 + 3;
      if (v10 > v11)
      {
        return;
      }

      v21 = v20 + 64;
      if (v20 == 127)
      {
        v21 = 63;
      }

      v39 = 24156;
      v40 = v21;
      if ((*(a1 + 20) & 2) != 0)
      {
        goto LABEL_59;
      }

      v22 = *(a1 + 8);
      if (*(a1 + 12) - v22 - (*(a1 + 22) ^ 1u) <= 2)
      {
        p_srca = &v39;
        v35 = a1;
        v36 = 3;
        goto LABEL_69;
      }

      v23 = *a1 + v22;
      *v23 = v39;
      *(v23 + 2) = v40;
      v24 = *(a1 + 8) + 3;
      goto LABEL_57;
    }
  }
}

size_t os_trace_blob_add_slow(uint64_t a1, void *__src, size_t __n)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  v3 = __n;
  v6 = *(a1 + 12);
  v7 = v6 - *(a1 + 8) - (*(a1 + 22) ^ 1);
  if (v7 < __n)
  {
    if (v6 < *(a1 + 16))
    {
      v7 = os_trace_blob_grow(a1, __n);
    }

    if (v7 < v3)
    {
      *(a1 + 20) |= 2u;
      v3 = v7;
    }
  }

  memcpy((*a1 + *(a1 + 8)), __src, v3);
  v8 = *(a1 + 8) + v3;
  *(a1 + 8) = v8;
  if ((*(a1 + 22) & 1) == 0)
  {
    *(*a1 + v8) = 0;
  }

  return v3;
}

unint64_t _os_log_fmt_compose_scalar(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v7 = a2;
  v32 = *MEMORY[0x277D85DE8];
  scalar = os_log_fmt_read_scalar(a2, a4, a5);
  v10 = *(v7 + 8);
  if ((v10 & 2) != 0)
  {
    v31 = *(v7 + 20);
    v11 = 1;
    if ((v10 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if ((v10 & 4) != 0)
  {
LABEL_5:
    *(&v31 + v11++) = *(v7 + 24);
  }

LABEL_6:
  *(v7 + 12);
  MEMORY[0x28223BE20]();
  v13 = &v31 - v12;
  result = _os_log_fmt_compose_format_copy(&v31 - v12, *v7, *(v7 + 12));
  v21 = *(v7 + 10);
  if (*(v7 + 10) > 8u)
  {
    if (*(v7 + 10) > 0xCu)
    {
      if (*(v7 + 10) > 0xEu)
      {
        if (v21 == 15)
        {
          goto LABEL_42;
        }

        if ((v21 - 16) >= 4)
        {
          goto LABEL_47;
        }

        goto LABEL_29;
      }

      if (v21 != 13)
      {
        goto LABEL_42;
      }
    }

    else if ((v21 - 9) >= 2)
    {
      if ((v21 - 11) >= 2)
      {
        goto LABEL_47;
      }

      goto LABEL_42;
    }

    if (a3 == 8 || v21 == 13)
    {
      goto LABEL_42;
    }

    v5 = &v13[result];
    LODWORD(v7) = *(v5 - 1);
    if (a3 == 4)
    {
      if ((v7 & 0x80000000) != 0)
      {
        v22 = __maskrune(*(v5 - 1), 0x8000uLL);
      }

      else
      {
        v22 = *(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x8000;
      }

      if (v22)
      {
        LOBYTE(v22) = __tolower(v7);
      }

      else
      {
        *(v5 - 2) = v7;
      }

      *(v5 - 1) = v22;
      goto LABEL_42;
    }

LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v27 = __maskrune(v7, 0x8000uLL);
    }

    else
    {
      v27 = *(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x8000;
    }

    if (v27)
    {
      v5[1] = __tolower(v7);
      v28 = v5 + 2;
      LOBYTE(v7) = 108;
    }

    else
    {
      v28 = v5 + 1;
      *(v5 - 2) = 108;
    }

    *(v5 - 1) = 108;
    *v5 = v7;
    *v28 = 0;
    goto LABEL_42;
  }

  if ((v21 - 1) < 7)
  {
LABEL_42:
    if (v11 == 2)
    {
      result = os_trace_blob_addf(a1, v13, v15, v16, v17, v18, v19, v20, v31);
    }

    else if (v11 == 1)
    {
      HIWORD(v30) = HIWORD(scalar);
      result = os_trace_blob_addf(a1, v13, v15, v16, v17, v18, v19, v20, v31);
    }

    else
    {
      result = os_trace_blob_addf(a1, v13, v15, v16, v17, v18, v19, v20, scalar);
    }

    goto LABEL_47;
  }

  if (v21 != 8)
  {
    if (*(v7 + 10))
    {
      goto LABEL_47;
    }

LABEL_29:
    HIWORD(v30) = HIWORD(scalar);
    qword_27DA52778 = "BUG IN LIBTRACE: Unexpected type";
    qword_27DA527A8 = v21;
    __break(1u);
    goto LABEL_30;
  }

  v23 = strerror(scalar);
  result = strlen(v23);
  if ((*(a1 + 20) & 2) == 0)
  {
    v24 = result;
    v25 = *(a1 + 8);
    if (result > *(a1 + 12) - v25 - (*(a1 + 22) ^ 1u))
    {
      result = os_trace_blob_add_slow(a1, v23, result);
    }

    else
    {
      result = memcpy((*a1 + v25), v23, result);
      v26 = *(a1 + 8) + v24;
      *(a1 + 8) = v26;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v26) = 0;
      }
    }
  }

LABEL_47:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t os_log_fmt_read_scalar(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 10);
  if (v3 == 15 || v3 == 14)
  {
    return *a2;
  }

  if ((*(a1 + 8) & 0x20) == 0)
  {
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        return *a2;
      }

      if (a3 == 2)
      {
        return *a2;
      }

LABEL_17:
      _os_crash();
      __break(1u);
      return *a2;
    }

    if (a3 == 4)
    {
      return *a2;
    }

LABEL_16:
    if (a3 == 8)
    {
      return *a2;
    }

    goto LABEL_17;
  }

  if (a3 > 3)
  {
    if (a3 != 4)
    {
      goto LABEL_16;
    }

    return *a2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return *a2;
      }

      goto LABEL_17;
    }

    return *a2;
  }
}

BOOL _parse_activity_create(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 513;
  v3 = *(a2 + 2);
  if ((v3 & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = v4;
    v4 = v4 + 8;
    if (v4 > *(a2 + 22))
    {
      return 0;
    }

    *(a1 + 200) = *(a2 + v5 + 24);
    if ((*(a2 + 2) & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!(*(a2 + 16) >> 51))
  {
    return 0;
  }

  *(a1 + 192) = *(a2 + 24);
  v3 = *(a2 + 2);
  LODWORD(v4) = 8;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x200) != 0)
  {
LABEL_9:
    v6 = v4;
    v4 = v4 + 8;
    if (v4 <= *(a2 + 22))
    {
      *(a1 + 64) = *(a2 + v6 + 24);
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  if (v4 + 8 > *(a2 + 22))
  {
    return 0;
  }

  v9 = v4 + 8;
  *(a1 + 56) = *(a2 + v4 + 24);
  result = _parse_location(a1, a2, &v9);
  if (result)
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      if (*(a1 + 64))
      {
        if (*(a1 + 365) == 1)
        {
          _os_activity_map_insert((a1 + 320), v8);
        }
      }
    }

    else
    {
      *(a1 + 176) = "Default/remote activity";
    }

    return 1;
  }

  return result;
}

uint64_t _simple_support_validate_payload(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8) - 72;
  if (v2 < 0xC)
  {
    return 0;
  }

  v3 = *(a1 + 92);
  v4 = *(a1 + 96);
  v5 = v3 + v4 + 12;
  if (v2 < v5 || !v4 || *(a1 + 100 + v3 + (v4 - 1)) || v3 && *(a1 + 100 + (v3 - 1)))
  {
    return 0;
  }

  result = a1 + 88;
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

void **_os_activity_map_insert(void **result, unint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    operator new();
  }

  v3 = v2[1];
  if (!*&v3)
  {
    goto LABEL_20;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*v2 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_20;
    }

LABEL_19:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t _os_log_fmt_builtin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v9 = 0;
  v10 = *(a3 + 40);
  v11 = *(a3 + 16);
  v12 = 17;
  while (1)
  {
    v13 = (v9 + v12) >> 1;
    v14 = &(&_os_log_fmt_builtin_annotated_functions)[2 * v13];
    v15 = *v14;
    v16 = strncmp(v10, *v14, v11);
    if (!v16)
    {
      break;
    }

LABEL_5:
    if (v16 >= 0)
    {
      v9 = v13 + 1;
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }

    if (v9 >= v12)
    {
      return 0;
    }
  }

  if (v15[v11])
  {
    v16 = -v15[v11];
    goto LABEL_5;
  }

  v18 = v14[1];

  return (v18)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _os_log_fmt_builtin_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char *a5, uint64_t a6)
{
  if ((_os_log_fmt_spec_is_integer(*(a3 + 10), 1u) & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v11, v12, v13);
    return 1;
  }

  scalar = os_log_fmt_read_scalar(a3, a5, a6);
  v15 = *(a1 + 20);
  if (**(a3 + 40) == 66)
  {
    if (scalar)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    if (scalar)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v15 & 2) != 0)
    {
      return 1;
    }

LABEL_18:
    v18 = *(a1 + 8);
    if (v17 > *(a1 + 12) - v18 - (*(a1 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(a1, v16, v17);
    }

    else
    {
      memcpy((*a1 + v18), v16, v17);
      v19 = *(a1 + 8) + v17;
      *(a1 + 8) = v19;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v19) = 0;
      }
    }

    return 1;
  }

  if (scalar)
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  if (scalar)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t _os_log_fmt_spec_is_integer(unsigned __int8 a1, unsigned int a2)
{
  if (a1 == 13)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a1 - 1 < 0xC)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t _catalog_uuid_add(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2[3];
  }

  return _os_trace_uuid_map_insert(v2, a2);
}

unsigned int *_catalog_procinfo_for_each_uuidinfo(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___catalog_procinfo_for_each_uuidinfo_block_invoke;
  v5[3] = &unk_2787AD6E8;
  v5[4] = a2;
  result = hashtable_iterate(v2, v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _catalog_procinfo_uuidinfo_add(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6[3];
  }

  _os_trace_uuid_map_insert(v6, (a3 + 14));
  v13[0] = *(a3 + 2) | (*(a3 + 6) << 32);
  v8 = hashtable_lookup(*(a2 + 56), v13);
  if (!v8)
  {
    v9 = _os_trace_calloc_typed();
    v10 = *a3;
    *v9 = *(a3 + 2) | (*(a3 + 6) << 32);
    *(v9 + 8) = v10;
    *(v9 + 16) = *(a3 + 14);
    if ((hashtable_insert(*(a2 + 56), v9, v9) & 1) == 0)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    ++*(a1 + 48);
  }

  result = v8 != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_procinfo_uuidinfo_remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v3 = *(a2 + 56);
  if (*(v3 + 16))
  {
    v5 = (*(v3 + 16) + 8 * ((hash_fn_array)[*(v3 + 8)](v11) % *v3));
    v6 = hashkey_compare_array[*(v3 + 8)];
    while (1)
    {
      v7 = v5;
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v6(v5[1], v11))
      {
        *v7 = *v5;
        v8 = v5[2];
        free(v5);
        --*(v3 + 4);
        if (!v8)
        {
          break;
        }

        --*(a1 + 48);
        free(v8);
        result = 1;
        goto LABEL_8;
      }
    }
  }

  result = 0;
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_procinfo_lookup_subsystem(uint64_t a1, __int16 a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a2;
  result = hashtable_lookup(*(a1 + 64), &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_lookup_procinfo_by_procid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 16);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3[2] == a2)
      {
        return v3[4];
      }
    }
  }

  return 0;
}

uint64_t _catalog_procinfo_create(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v5 = _os_procinfo_map_lookup(*(a1 + 40), *(a2 + 8), *(a2 + 16));
  if (v5)
  {
    return v5;
  }

  v6 = _os_trace_calloc_typed();
  v5 = v6;
  *v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 16) = v7;
  v10 = *v4;
  if (*v4)
  {
    LOWORD(v10) = *(v10 + 12);
  }

  *v6 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = v11[3];
  }

  _os_trace_uuid_map_insert(v11, v5 + 3);
  if (!uuid_is_null(v5 + 40))
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = v13[3];
    }

    _os_trace_uuid_map_insert(v13, v5 + 5);
  }

  v5[7] = hashtable_create(2);
  v5[8] = hashtable_create(1);
  if (_os_procinfo_map_insert(v4, v5[1], *(v5 + 4)))
  {
    return v5;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void *_catalog_subchunk_update_times(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 80))
  {
    result = **(*(a1 + 72) + 8);
  }

  else
  {
    result = _catalog_subchunk_entry_alloc(a1);
  }

  if (result[2] > a2)
  {
    result[2] = a2;
  }

  if (result[3] < a2)
  {
    result[3] = a2;
  }

  return result;
}

uint64_t _catalog_subchunk_procinfo_add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    v4 = **(*(a1 + 72) + 8);
  }

  else
  {
    v4 = _catalog_subchunk_entry_alloc(a1);
  }

  if (_os_procinfo_map_lookup(*(a1 + 40), *(a2 + 8), *(a2 + 16)))
  {
    v5 = v4[6];

    return hashtable_insert(v5, a2, 0);
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL catalog_chunk_parse_section(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((!a2 || (a2 >= v4 ? (v5 = a2 - v4 >= 8) : (v5 = 0), v5)) && (*a1 = (v4 + 1), v4))
  {
    return catalog_chunk_parse_entries(a1, a2, a3, *v4, a4);
  }

  else
  {
    return 0;
  }
}

void _catalog_create()
{
  v0 = _os_trace_calloc_typed();
  v0[8] = 0;
  v0[9] = v0 + 8;
  v0[1] = -1;
  operator new();
}

uint64_t _catalog_update_earliest_fhbuf_ts(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t __catalog_chunk_parse_uuid_legacy_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  _os_trace_uuid_map_insert(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    _chunk_print_uuid(a2, a3);
  }

  return 1;
}

uint64_t __catalog_chunk_parse_procinfo_legacy_block_invoke(uint64_t a1, unint64_t a2, unsigned __int16 *a3, uint64_t **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v9 = (v8 + 16);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9[2] == *(a3 + 1))
      {
        if (v9[4])
        {
          goto LABEL_36;
        }

        break;
      }
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 4) == 17;
  v12 = 32;
  if (*(v10 + 4) == 17)
  {
    v12 = 40;
  }

  v13 = v10 + v12;
  v14 = v10 + *(v10 + 16);
  v15 = v14 + 40;
  v16 = v14 + 32;
  if (v11)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = _os_trace_calloc_typed();
  v19 = v18;
  v20 = *a3;
  v21 = v17 - v13;
  if (v21 >= 16 * v20 && v21 - 16 * v20 > 0xF)
  {
    *(v18 + 24) = *(v13 + 16 * v20);
  }

  else
  {
    _os_assumes_log();
  }

  v23 = a3[1];
  if (v21 >= 16 * v23 && v21 - 16 * v23 > 0xF)
  {
    *(v19 + 40) = *(v13 + 16 * v23);
  }

  else
  {
    _os_assumes_log();
  }

  *(v19 + 4) = *(a3 + 1);
  *(v19 + 8) = *(a3 + 1);
  if (a2 >= 0x10000)
  {
    _os_assumes_log();
  }

  *v19 = a2;
  *(v19 + 2) = 0x8000;
  *(v19 + 56) = hashtable_create(2);
  *(v19 + 64) = hashtable_create(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_31;
  }

  printf("[%03u]\n\t%10s : %llu\n\t%10s : %u\n", a2, "proc id", *(v19 + 8), "pid", *(v19 + 4));
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_31;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v25;
  *&out[16] = v25;
  uuid_unparse((v19 + 24), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  uuid_unparse((v19 + 40), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v26 = *(a1 + 56);
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  if (catalog_chunk_parse_procinfo_uuidinfo(a4, *(a1 + 48), *(a1 + 32), v19, v26 & 1, *(a1 + 40)) & 1) != 0 && (catalog_chunk_parse_procinfo_subsystem(a4, *(a1 + 48), *(a1 + 32), v19, *(a1 + 56), *(a1 + 40)))
  {
    if ((_os_procinfo_map_insert((*(a1 + 32) + 40), *(v19 + 8), *(v19 + 16)) & 1) == 0)
    {
      _os_assumes_log();
    }

LABEL_36:
    result = 1;
  }

  else
  {
    _catalog_procinfo_free(v19);
    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}