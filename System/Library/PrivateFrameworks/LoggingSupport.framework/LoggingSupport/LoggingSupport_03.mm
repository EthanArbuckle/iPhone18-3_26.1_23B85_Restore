uint64_t ctf_lookup_by_id(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if ((*(*a1 + 556) & 2) != 0 && (*(*v4 + 24))(a2) && (v4 = v4[66]) == 0)
  {
    result = 0;
    *(*a1 + 560) = 1011;
  }

  else
  {
    v5 = (*(*v4 + 40))(a2);
    if (v5 && v4[64] >= v5)
    {
      *a1 = v4;
      return *(v4[62] + 4 * v5) + v4[58];
    }

    else
    {
      result = 0;
      *(v4 + 140) = 1020;
    }
  }

  return result;
}

uint64_t ctf_func_info(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a1 + 88))
  {
    v10 = 1010;
LABEL_11:
    *(a1 + 560) = v10;
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 488) <= a2)
  {
    v10 = 22;
    goto LABEL_11;
  }

  v5 = *(*(a1 + 480) + 4 * a2);
  if (v5 == -1 || ((v7 = (*(a1 + 464) + v5), *(a1 + 564) != 4) ? (LOWORD(v9) = *v7, v8 = *(v7 + 1)) : (v9 = *v7, v8 = v7[1]), v11 = (**a1)(v9), v12 = (*(*a1 + 16))(v9), !(v11 | v12)))
  {
    v10 = 1031;
    goto LABEL_11;
  }

  if (v11 != 5)
  {
    v10 = 1007;
    goto LABEL_11;
  }

  *a3 = v8;
  *(a3 + 8) = v12;
  *(a3 + 12) = 0;
  v15 = *(*(a1 + 480) + 4 * a2) + *(a1 + 464);
  if (*(a1 + 564) == 4)
  {
    v16 = *(v15 + 4 * v12 + 4);
  }

  else
  {
    v16 = *(v15 + 2 * v12 + 2);
  }

  v17 = v16 == 0;
  if (v12)
  {
    v18 = !v17;
  }

  else
  {
    v18 = 1;
  }

  v13 = 0;
  if (!v18)
  {
    *(a3 + 8) = v12 - 1;
    *(a3 + 12) = 1;
  }

  return v13;
}

uint64_t ctf_func_args(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v15 = 0;
  v16 = 0;
  result = ctf_func_info(a1, a2, &v15);
  if (result != -1)
  {
    v9 = v16;
    if (v16 >= a3)
    {
      v9 = a3;
    }

    if (v9)
    {
      v10 = *(a1 + 564);
      v11 = 8;
      if (v10 < 4)
      {
        v11 = 4;
      }

      v12 = (v11 + *(a1 + 464) + *(*(a1 + 480) + 4 * a2));
      do
      {
        if (v10 == 4)
        {
          v13 = *v12;
          v14 = 4;
        }

        else
        {
          v13 = *v12;
          v14 = 2;
        }

        v12 = (v12 + v14);
        *a4++ = v13;
        --v9;
      }

      while (v9);
    }

    return 0;
  }

  return result;
}

uint64_t ctf_bufopen(__int128 *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (a2 == 0) == (a3 != 0))
  {
    if (a4)
    {
      v38 = 0;
      v39 = 22;
LABEL_20:
      *a4 = v39;
      return v38;
    }

    return 0;
  }

  if (a2)
  {
    v12 = *(a2 + 40);
    if (v12 != 12 && v12 != 16)
    {
      if (a4)
      {
        v38 = 0;
        v39 = 1004;
        goto LABEL_20;
      }

      return 0;
    }

    if (!*(a2 + 24))
    {
      if (a4)
      {
        v38 = 0;
        v39 = 1005;
        goto LABEL_20;
      }

      return 0;
    }
  }

  if (a3 && !*(a3 + 24))
  {
    if (a4)
    {
      v38 = 0;
      v39 = 1006;
      goto LABEL_20;
    }

    return 0;
  }

  if (*(a1 + 4) <= 3uLL)
  {
    goto LABEL_43;
  }

  v14 = *(a1 + 3);
  v108 = *(v14 + 2);
  ctf_dprintf("ctf_bufopen: magic=0x%x version=%u\n", a2, a3, a4, a5, a6, a7, a8, *v14);
  if (*v14 != 53233)
  {
    goto LABEL_43;
  }

  v22 = *(v14 + 2);
  if ((v22 - 2) >= 3)
  {
    if (v22 != 1)
    {
      if (a4)
      {
        v38 = 0;
        v39 = 1002;
        goto LABEL_20;
      }

      return 0;
    }

    if (*(a1 + 4) >= 0x18uLL)
    {
      v40 = *(a1 + 3);
      *(&v112 + 4) = 0;
      HIDWORD(v112) = 0;
      LODWORD(v112) = *v40;
      v113 = *(v40 + 4);
      v25 = *(v40 + 20);
      v114 = v25;
      v26 = HIDWORD(v113);
      v28 = v25 + HIDWORD(v113);
      ctf_dprintf("ctf_bufopen: uncompressed size=%lu\n", v15, v16, v17, v18, v19, v20, v21, v25 + BYTE12(v113));
      v27 = 0;
      v36 = v113;
      v37 = 24;
      goto LABEL_30;
    }

LABEL_43:
    if (a4)
    {
      v38 = 0;
      v39 = 1009;
      goto LABEL_20;
    }

    return 0;
  }

  if (*(a1 + 4) <= 0x23uLL)
  {
    goto LABEL_43;
  }

  v23 = *(a1 + 3);
  v24 = v23[1];
  v112 = *v23;
  v113 = v24;
  v25 = *(v23 + 8);
  v114 = v25;
  v26 = HIDWORD(v24);
  v27 = HIDWORD(v112);
  v28 = v25 + HIDWORD(v24);
  ctf_dprintf("ctf_bufopen: uncompressed size=%lu\n", v15, v16, v17, v18, v19, v20, v21, v25 + BYTE12(v24));
  if (HIDWORD(v112) > v28)
  {
    goto LABEL_41;
  }

  v36 = v113;
  v37 = 36;
LABEL_30:
  if (v36 > v28 || DWORD1(v113) > v28 || (v26 <= v28 ? (v41 = DWORD2(v113) > v28) : (v41 = 1), v41 || DWORD2(v113) > v26 || v27 > v36 || v36 > DWORD1(v113) || DWORD1(v113) > DWORD2(v113) || (BYTE8(v113) | v27) & 3 | (BYTE4(v113) | v36) & 1))
  {
LABEL_41:
    if (a4)
    {
      v38 = 0;
      v39 = 1007;
      goto LABEL_20;
    }

    return 0;
  }

  v110 = v26;
  v111 = v25;
  if ((BYTE3(v112) & 1) == 0)
  {
    v42 = *(a1 + 3);
    v109 = &v42[v37];
    goto LABEL_49;
  }

  if (!ctf_zopen(a4, v29, v30, v31, v32, v33, v34, v35))
  {
    return 0;
  }

  v66 = mmap(0, v37 + v28, 3, 4098, -1, 0);
  if (v66 == -1)
  {
    if (!a4)
    {
      return 0;
    }

    v77 = 1016;
    goto LABEL_115;
  }

  v42 = v66;
  memmove(v66, *(a1 + 3), v37);
  v42[3] &= ~1u;
  v67 = *(a1 + 3);
  v68 = *(a1 + 4) - v37;
  v109 = &v42[v37];
  if (zlib())
  {
    v69 = off_27DA52AE0();
    ctf_dprintf("zlib inflate err: %s\n", v70, v71, v72, v73, v74, v75, v76, v69);
    munmap(v42, v37 + v28);
    if (!a4)
    {
      return 0;
    }

    v77 = 1017;
LABEL_115:
    *a4 = v77;
    return 0;
  }

  mprotect(v42, v37 + v28, 1);
LABEL_49:
  v43 = malloc_type_malloc(0x278uLL, 0x610CB5CCuLL);
  if (!v43)
  {
    if (a4)
    {
      v38 = 0;
      v39 = 35;
      goto LABEL_20;
    }

    return 0;
  }

  v38 = v43;
  bzero(v43 + 8, 0x270uLL);
  v51 = BYTE2(v112);
  *(v38 + 564) = BYTE2(v112);
  *v38 = &ctf_fileops + 72 * v51;
  v52 = *a1;
  v53 = a1[1];
  v54 = a1[2];
  *(v38 + 56) = *(a1 + 6);
  *(v38 + 40) = v54;
  *(v38 + 24) = v53;
  *(v38 + 8) = v52;
  if (a2)
  {
    v55 = *a2;
    v56 = *(a2 + 16);
    v57 = *(a2 + 32);
    *(v38 + 112) = *(a2 + 48);
    *(v38 + 80) = v56;
    *(v38 + 96) = v57;
    *(v38 + 64) = v55;
    v58 = *a3;
    v59 = *(a3 + 16);
    v60 = *(a3 + 32);
    *(v38 + 168) = *(a3 + 48);
    *(v38 + 152) = v60;
    *(v38 + 136) = v59;
    *(v38 + 120) = v58;
  }

  v61 = *(v38 + 8);
  if (v61)
  {
    *(v38 + 8) = ctf_strdup(v61);
  }

  v62 = *(v38 + 64);
  if (v62)
  {
    *(v38 + 64) = ctf_strdup(v62);
  }

  v63 = *(v38 + 120);
  if (v63)
  {
    v64 = ctf_strdup(v63);
    *(v38 + 120) = v64;
    v65 = v64 == 0;
  }

  else
  {
    v65 = 1;
  }

  if (!*(v38 + 8))
  {
    *(v38 + 8) = &_CTF_NULLSTR;
  }

  if (!*(v38 + 64))
  {
    *(v38 + 64) = &_CTF_NULLSTR;
  }

  if (v65)
  {
    *(v38 + 120) = &_CTF_NULLSTR;
  }

  *(v38 + 424) = &v109[v110];
  *(v38 + 432) = v111;
  if (a3)
  {
    v78 = *(a3 + 32);
    *(v38 + 440) = *(a3 + 24);
    *(v38 + 448) = v78;
  }

  v79 = v38 + 424;
  *(v38 + 456) = v42;
  *(v38 + 464) = v109;
  *(v38 + 472) = v37 + v28;
  v80 = "(?)";
  if (DWORD1(v112))
  {
    v81 = (v79 + ((DWORD1(v112) >> 27) & 0x10));
    if (*v81)
    {
      v82 = DWORD1(v112) & 0x7FFFFFFF;
      if (v81[1] <= v82)
      {
        v83 = 0;
      }

      else
      {
        v83 = (*v81 + v82);
      }
    }

    else
    {
      v83 = 0;
    }

    if (!v83)
    {
      v83 = "(?)";
    }

    *(v38 + 536) = v83;
  }

  if (DWORD2(v112))
  {
    v84 = (v79 + ((DWORD2(v112) >> 27) & 0x10));
    if (*v84)
    {
      v85 = DWORD2(v112) & 0x7FFFFFFF;
      if (v84[1] <= v85)
      {
        v86 = 0;
      }

      else
      {
        v86 = (*v84 + v85);
      }
    }

    else
    {
      v86 = 0;
    }

    if (v86)
    {
      v80 = v86;
    }

    *(v38 + 544) = v80;
  }

  else
  {
    v80 = *(v38 + 544);
  }

  if (!v80)
  {
    v80 = "<NULL>";
  }

  if (*(v38 + 536))
  {
    v87 = *(v38 + 536);
  }

  ctf_dprintf("ctf_bufopen: parent name %s (label %s)\n", v44, v45, v46, v47, v48, v49, v50, v80);
  if (a2)
  {
    v94 = *(a2 + 32) / *(a2 + 40);
    *(v38 + 488) = v94;
    v95 = 2;
    if (*(v38 + 564) == 4)
    {
      v95 = 3;
    }

    v96 = malloc_type_malloc(v94 << v95, 0x610CB5CCuLL);
    *(v38 + 480) = v96;
    if (!v96)
    {
      inited = 35;
      goto LABEL_111;
    }

    init_symtab(v38, &v112, a2, a3, v100, v101, v102, v103);
  }

  inited = init_types(v38, &v112, v88, v89, v90, v91, v92, v93);
  if (inited)
  {
LABEL_111:
    if (a4)
    {
      *a4 = inited;
    }

    ctf_close(v38, v97, v98, v99, v100, v101, v102, v103);
    return 0;
  }

  *(v38 + 304) = "struct";
  *(v38 + 312) = 6;
  *(v38 + 320) = v38 + 176;
  *(v38 + 328) = "union";
  *(v38 + 336) = 5;
  *(v38 + 344) = v38 + 208;
  *(v38 + 352) = "enum";
  *(v38 + 360) = 4;
  *(v38 + 368) = v38 + 240;
  *(v38 + 376) = &_CTF_NULLSTR;
  *(v38 + 384) = 0;
  *(v38 + 392) = v38 + 272;
  *(v38 + 408) = 0;
  *(v38 + 416) = 0;
  *(v38 + 400) = 0;
  if (a2 && ((v105 = *(a2 + 40), v105 == 12) || v105 != 40 && v105 != 16))
  {
    v106 = &_libctf_models;
  }

  else
  {
    v106 = &off_2787AF520;
  }

  *(v38 + 520) = v106;
  *(v38 + 552) = 1;
  return v38;
}

const char *init_symtab(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 488);
  if (v8 >= 1)
  {
    v11 = *(a1 + 480);
    v12 = &v11[v8];
    v13 = *(a1 + 564);
    v14 = *(a3 + 24);
    v40 = a2[4];
    v42 = a2[5];
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    if (v13 < 4)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v13 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    v37 = v15;
    v38 = v16;
    v17 = *(a3 + 40);
    while (1)
    {
      switch(v17)
      {
        case 12:
          v23 = *v14;
          if (!v23)
          {
LABEL_27:
            v18 = 0;
            goto LABEL_34;
          }

          v24 = *(a4 + 24);
          v25 = (v24 + v23);
          if (*v25 == 95)
          {
            LODWORD(v25) = v25 + 1;
          }

          v18 = (v25 - v24);
          *&v44 = v14[2];
          BYTE8(v43) = 0;
          v22 = -2;
          break;
        case 16:
          v19 = *v14;
          if (!v19)
          {
            goto LABEL_27;
          }

          v20 = *(a4 + 24);
          v21 = (v20 + v19);
          if (*v21 == 95)
          {
            LODWORD(v21) = v21 + 1;
          }

          v18 = (v21 - v20);
          *&v44 = *(v14 + 1);
          BYTE8(v43) = 0;
          v22 = -3;
          break;
        case 20:
          v18 = *v14;
          *&v44 = v14[1];
          BYTE8(v43) = *(v14 + 12);
          WORD5(v43) = *(v14 + 7);
          goto LABEL_34;
        default:
          v18 = *v14;
          v28 = v14;
          goto LABEL_35;
      }

      WORD5(v43) = v22;
      v26 = *(v14 + 4);
      if (v26 >= 0x20)
      {
        if (v26 == 32)
        {
          goto LABEL_32;
        }

        if (v26 == 36)
        {
          v29 = 18;
LABEL_33:
          BYTE8(v43) = v29;
        }
      }

      else
      {
        v27 = v26 & 0xF;
        if (v27 != 1)
        {
          if (v27 == 15 || v27 == 3)
          {
            BYTE8(v43) = *(v14 + 6) & 0xF | 0x10;
          }

          goto LABEL_34;
        }

        if (!*(v14 + 5))
        {
LABEL_32:
          v29 = 17;
          goto LABEL_33;
        }
      }

LABEL_34:
      v28 = &v43;
LABEL_35:
      v30 = &_CTF_NULLSTR;
      if (v18 < *(a4 + 32))
      {
        v30 = (*(a4 + 24) + v18);
      }

      if (!v18)
      {
        goto LABEL_50;
      }

      v31 = *(v28 + 5);
      if (!*(v28 + 5) || !strcmp(v30, "_START_") || !strcmp(v30, "_END_"))
      {
        goto LABEL_50;
      }

      v32 = *(v28 + 8) & 0xF;
      if (v32 == 2)
      {
        if (v42 < a2[6])
        {
          *v11 = v42;
          v33 = *(a1 + 464);
          if (*(a1 + 564) == 4)
          {
            v34 = *(v33 + v42);
          }

          else
          {
            v34 = *(v33 + v42);
          }

          v35 = (*(*a1 + 16))(v34);
          if ((**a1)(v34) | v35)
          {
            v42 += (v35 + 2) << v37;
          }

          else
          {
            v42 += v38;
          }

          goto LABEL_51;
        }

LABEL_50:
        *v11 = -1;
        goto LABEL_51;
      }

      if (v32 != 1 || v40 >= a2[5] || v31 == 65521 && !*(v28 + 2))
      {
        goto LABEL_50;
      }

      *v11 = v40;
      v40 += v38;
LABEL_51:
      ++v11;
      v17 = *(a3 + 40);
      v14 = (v14 + v17);
      if (v11 >= v12)
      {
        v8 = *(a1 + 488);
        return ctf_dprintf("loaded %lu symtab entries\n", a2, a3, a4, a5, a6, a7, a8, v8);
      }
    }
  }

  return ctf_dprintf("loaded %lu symtab entries\n", a2, a3, a4, a5, a6, a7, a8, v8);
}

uint64_t init_types(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v147 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 464);
  v10 = a2[6];
  v11 = a2[7];
  v12 = v9 + v10;
  v13 = v9 + v11;
  v145 = 0u;
  memset(v146, 0, sizeof(v146));
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v14 = a2[2] != 0;
  v134 = v10;
  v135 = (v9 + v10);
  if (v10 < v11)
  {
    while (1)
    {
      v15 = *(a1 + 564) > 3 ? *(v12 + 4) : *(v12 + 4);
      v16 = (**a1)(v15);
      v17 = *(a1 + 564) > 3 ? *(v12 + 4) : *(v12 + 4);
      v18 = (*(*a1 + 16))(v17);
      v137 = 0;
      v140 = 0;
      ctf_get_ctt_size(a1, v12, &v137, &v140);
      if (v16 <= 7)
      {
        break;
      }

      if (v16 > 9)
      {
        if ((v16 - 10) < 4)
        {
          goto LABEL_16;
        }

        if (v16 != 14)
        {
LABEL_213:
          ctf_dprintf("detected invalid CTF kind -- %u\n", a2, a3, a4, a5, a6, a7, a8, v16);
          result = 1007;
          goto LABEL_214;
        }

        if (*(a1 + 564) > 3)
        {
          v29 = *(v12 + 8);
        }

        else
        {
          v29 = *(v12 + 6);
        }

        v14 |= (*(*a1 + 32))(v29);
LABEL_62:
        v23 = 4;
        goto LABEL_63;
      }

      if (v16 != 8)
      {
        if (*(a1 + 564) > 3)
        {
          v24 = &v144;
          if (*(v12 + 8))
          {
            v24 = &v144;
            if (*(v12 + 8) <= 0x1Eu)
            {
              v25 = *(v12 + 8);
LABEL_57:
              v24 = (&v141 + 8 * v25);
            }
          }
        }

        else
        {
          v24 = &v144;
          if (*(v12 + 6))
          {
            v24 = &v144;
            if (*(v12 + 6) <= 0x1Eu)
            {
              v25 = *(v12 + 6);
              goto LABEL_57;
            }
          }
        }

        ++*v24;
LABEL_59:
        v23 = 0;
        goto LABEL_63;
      }

      v23 = 8 * v18;
LABEL_63:
      v12 += v23 + v140;
      ++*(&v141 + v16);
      ++*(a1 + 512);
      if (v13 <= v12)
      {
        goto LABEL_69;
      }
    }

    if (v16 > 3)
    {
      if ((v16 - 6) < 2)
      {
        v26 = *(a1 + 564);
        if (v26 == 1 || v137 < 0x2000)
        {
          if (v26 == 4)
          {
            v23 = 12 * v18;
            if (v18)
            {
              v30 = (v140 + v12 + 4);
              do
              {
                v31 = *v30;
                v30 += 3;
                v14 |= (*(*a1 + 32))(v31);
                LODWORD(v18) = v18 - 1;
              }

              while (v18);
            }
          }

          else
          {
            v23 = 8 * v18;
            if (v18)
            {
              v32 = (v140 + v12 + 4);
              do
              {
                v33 = *v32;
                v32 += 4;
                v14 |= (*(*a1 + 32))(v33);
                LODWORD(v18) = v18 - 1;
              }

              while (v18);
            }
          }
        }

        else
        {
          v23 = 16 * v18;
          if (v26 == 4)
          {
            if (v18)
            {
              v27 = (v140 + v12 + 4);
              do
              {
                v28 = *v27;
                v27 += 4;
                v14 |= (*(*a1 + 32))(v28);
                LODWORD(v18) = v18 - 1;
              }

              while (v18);
            }
          }

          else if (v18)
          {
            v34 = (v140 + v12 + 4);
            do
            {
              v35 = *v34;
              v34 += 8;
              v14 |= (*(*a1 + 32))(v35);
              LODWORD(v18) = v18 - 1;
            }

            while (v18);
          }
        }
      }

      else if (v16 == 4)
      {
        if (*(a1 + 564) == 4)
        {
          v23 = 12;
        }

        else
        {
          v23 = 8;
        }
      }

      else
      {
        if (v16 != 5)
        {
          goto LABEL_213;
        }

        v20 = (v18 & 1) + v18;
        v21 = 2 * v20;
        v22 = 4 * v20;
        if (*(a1 + 564) == 4)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }
      }

      goto LABEL_63;
    }

    if ((v16 - 1) < 2)
    {
      goto LABEL_62;
    }

    if (v16)
    {
      if (v16 != 3)
      {
        goto LABEL_213;
      }

LABEL_16:
      if (*(a1 + 564) > 3)
      {
        v19 = *(v12 + 8);
      }

      else
      {
        v19 = *(v12 + 6);
      }

      v23 = 0;
      v14 |= (*(*a1 + 32))(v19);
      goto LABEL_63;
    }

    goto LABEL_59;
  }

LABEL_69:
  if (v14)
  {
    ctf_dprintf("CTF container %p is a child\n", a2, a3, a4, a5, a6, a7, a8, a1);
    *(a1 + 556) |= 2u;
  }

  else
  {
    ctf_dprintf("CTF container %p is a parent\n", a2, a3, a4, a5, a6, a7, a8, a1);
  }

  result = ctf_hash_create(a1 + 176, v144);
  if (!result)
  {
    result = ctf_hash_create(a1 + 208, *(&v144 + 1));
    if (!result)
    {
      result = ctf_hash_create(a1 + 240, v145);
      if (!result)
      {
        result = ctf_hash_create(a1 + 272, vaddvq_s64(vaddq_s64(*(v146 + 8), *(&v146[1] + 8))) + v142 + *(&v141 + 1) + *(&v143 + 1) + v146[0].i64[0] + *(&v142 + 1));
        if (!result)
        {
          *(a1 + 496) = malloc_type_malloc(4 * *(a1 + 512) + 4, 0x610CB5CCuLL);
          v37 = malloc_type_malloc(4 * *(a1 + 512) + 4, 0x610CB5CCuLL);
          *(a1 + 504) = v37;
          result = 35;
          v136 = *(a1 + 496);
          if (v136)
          {
            if (v37)
            {
              *v136 = 0;
              bzero(v136, 4 * *(a1 + 512) + 4);
              bzero(*(a1 + 504), 4 * *(a1 + 512) + 4);
              if (v134 < v11)
              {
                v132 = 0;
                v133 = 0;
                v45 = 1;
                while (1)
                {
                  v46 = *(a1 + 564) > 3 ? v135[1] : *(v135 + 2);
                  v47 = (**a1)(v46);
                  v48 = *(a1 + 564) > 3 ? v135[1] : *(v135 + 2);
                  v49 = (*(*a1 + 16))(v48);
                  v139 = 0;
                  v140 = 0;
                  v138 = 0;
                  v137 = 0;
                  ctf_get_ctt_size(a1, v135, &v140, &v139);
                  v50 = *v135;
                  v51 = (a1 + 424 + ((v50 >> 27) & 0x10));
                  if (*v51)
                  {
                    v52 = v50 & 0x7FFFFFFF;
                    v53 = v51[1] <= v52 ? 0 : (*v51 + v52);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = 0;
                  v55 = v49;
                  v56 = v53 ? v53 : "(?)";
                  if (v47 > 7)
                  {
                    break;
                  }

                  if (v47 <= 4)
                  {
                    if ((v47 - 1) < 2)
                    {
                      v60 = strlen(v56);
                      v61 = ctf_hash_lookup(a1 + 272, a1, v56, v60);
                      if (!v61)
                      {
                        goto LABEL_122;
                      }

                      v62 = v61;
                      v63 = ctf_type_encoding(a1, v61[1], &v137);
                      if (!(v63 | v138))
                      {
                        v62[1] = (*(*a1 + 48))(v45, v14 != 0);
                      }

                      goto LABEL_124;
                    }

                    if (v47 != 3)
                    {
                      if (v47 == 4)
                      {
                        v54 = 12;
                        if (*(a1 + 564) < 4)
                        {
                          v54 = 8;
                        }
                      }

                      goto LABEL_174;
                    }

                    if (*(a1 + 564) > 3)
                    {
                      v65 = v135[2];
                    }

                    else
                    {
                      v65 = *(v135 + 3);
                    }

                    if (v14 == (*(*a1 + 32))(v65))
                    {
                      v74 = *(a1 + 564) > 3 ? v135[2] : *(v135 + 3);
                      if (*(a1 + 512) >= (*(*a1 + 40))(v74))
                      {
                        if (*(a1 + 564) > 3)
                        {
                          v80 = v135[2];
                        }

                        else
                        {
                          v80 = *(v135 + 3);
                        }

                        v81 = *(a1 + 504);
                        *(v81 + 4 * (*(*a1 + 40))(v80)) = v45;
                      }
                    }

                    goto LABEL_171;
                  }

                  if (v47 == 5)
                  {
                    v66 = (*(*a1 + 48))(v45, v14 != 0);
                    result = ctf_hash_insert((a1 + 272), a1, v66, *v135);
                    if (result != 1018 && result != 0)
                    {
                      goto LABEL_214;
                    }

                    v68 = (v55 & 1) + v55;
                    if (*(a1 + 564) > 3)
                    {
                      goto LABEL_160;
                    }

                    v54 = 2 * v68;
                  }

                  else if (v47 == 6)
                  {
                    v71 = (*(*a1 + 48))(v45, v14 != 0);
                    result = ctf_hash_define((a1 + 176), a1, v71, *v135);
                    if (result != 1018 && result != 0)
                    {
                      goto LABEL_214;
                    }

                    v59 = *(a1 + 564);
                    if (v59 == 1 || v140 < 0x2000)
                    {
LABEL_149:
                      if (v59 > 3)
                      {
                        v68 = 3 * v55;
LABEL_160:
                        v54 = 4 * v68;
                        goto LABEL_174;
                      }

                      goto LABEL_150;
                    }

                    v54 = 16 * v55;
                    ++v132;
                  }

                  else
                  {
                    v57 = (*(*a1 + 48))(v45, v14 != 0);
                    result = ctf_hash_define((a1 + 208), a1, v57, *v135);
                    if (result != 1018 && result != 0)
                    {
                      goto LABEL_214;
                    }

                    v59 = *(a1 + 564);
                    if (v59 == 1 || v140 < 0x2000)
                    {
                      goto LABEL_149;
                    }

                    v54 = 16 * v55;
                    ++v133;
                  }

LABEL_174:
                  v136[v45++] = v135 - *(a1 + 464);
                  v135 = (v135 + v54 + v139);
                  if (v13 <= v135)
                  {
                    goto LABEL_175;
                  }
                }

                if (v47 <= 10)
                {
                  if (v47 == 8)
                  {
                    v69 = (*(*a1 + 48))(v45, v14 != 0);
                    result = ctf_hash_define((a1 + 240), a1, v69, *v135);
                    if (result != 1018 && result != 0)
                    {
                      goto LABEL_214;
                    }

LABEL_150:
                    v54 = 8 * v55;
                    goto LABEL_174;
                  }

                  if (v47 != 9)
                  {
                    goto LABEL_171;
                  }

                  if (*(a1 + 564) > 3)
                  {
                    v73 = v135[2];
                  }

                  else
                  {
                    v73 = *(v135 + 3);
                  }

                  if (v73 == 8)
                  {
                    v75 = a1 + 240;
                  }

                  else
                  {
                    v75 = a1 + 176;
                    if (v73 == 7)
                    {
                      v75 = a1 + 208;
                    }
                  }

                  v76 = strlen(v56);
                  if (ctf_hash_lookup(v75, a1, v56, v76))
                  {
                    v54 = 0;
                    goto LABEL_174;
                  }

                  v77 = (*(*a1 + 48))(v45, v14 != 0);
                  v78 = *v135;
                  v79 = v75;
                }

                else
                {
                  if ((v47 - 11) >= 3)
                  {
                    if (v47 != 14)
                    {
                      goto LABEL_174;
                    }

LABEL_122:
                    v64 = (*(*a1 + 48))(v45, v14 != 0);
                    result = ctf_hash_insert((a1 + 272), a1, v64, *v135);
                    if (result)
                    {
                      v54 = 4;
LABEL_173:
                      if (result != 1018)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_174;
                    }

LABEL_124:
                    v54 = 4;
                    goto LABEL_174;
                  }

LABEL_171:
                  v77 = (*(*a1 + 48))(v45, v14 != 0);
                  v78 = *v135;
                  v79 = (a1 + 272);
                }

                result = ctf_hash_insert(v79, a1, v77, v78);
                v54 = 0;
                if (result)
                {
                  goto LABEL_173;
                }

                goto LABEL_174;
              }

LABEL_175:
              ctf_dprintf("%lu total types processed\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 512));
              v89 = *(a1 + 260);
              v90 = v89 != 0;
              v91 = v89 - 1;
              if (!v90)
              {
                v91 = 0;
              }

              ctf_dprintf("%u enum names hashed\n", v82, v83, v84, v85, v86, v87, v88, v91);
              v99 = *(a1 + 196);
              v90 = v99 != 0;
              v100 = v99 - 1;
              if (!v90)
              {
                v100 = 0;
              }

              ctf_dprintf("%u struct names hashed (%d long)\n", v92, v93, v94, v95, v96, v97, v98, v100);
              v108 = *(a1 + 228);
              v90 = v108 != 0;
              v109 = v108 - 1;
              if (!v90)
              {
                v109 = 0;
              }

              ctf_dprintf("%u union names hashed (%d long)\n", v101, v102, v103, v104, v105, v106, v107, v109);
              v117 = *(a1 + 292);
              v90 = v117 != 0;
              v118 = v117 - 1;
              if (!v90)
              {
                v118 = 0;
              }

              ctf_dprintf("%u base type names hashed\n", v110, v111, v112, v113, v114, v115, v116, v118);
              if (*(a1 + 512))
              {
                v119 = 1;
                do
                {
                  v120 = *(*(a1 + 504) + 4 * v119);
                  if (v120)
                  {
                    v121 = (*(*(a1 + 496) + 4 * v119) + *(a1 + 464));
                    v122 = *(a1 + 564) > 3 ? v121[1] : *(v121 + 2);
                    if ((**a1)(v122) == 10)
                    {
                      v123 = *v121;
                      v124 = (a1 + 424 + ((v123 >> 27) & 0x10));
                      if (*v124)
                      {
                        v125 = v123 & 0x7FFFFFFF;
                        if (v124[1] <= v125)
                        {
                          v126 = 0;
                        }

                        else
                        {
                          v126 = (*v124 + v125);
                        }
                      }

                      else
                      {
                        v126 = 0;
                      }

                      if (!v126)
                      {
                        v126 = "(?)";
                      }

                      if (!*v126)
                      {
                        v127 = *(a1 + 564) > 3 ? v121[2] : *(v121 + 3);
                        if (v14 == (*(*a1 + 32))(v127))
                        {
                          v128 = *(a1 + 564) > 3 ? v121[2] : *(v121 + 3);
                          if (*(a1 + 512) >= (*(*a1 + 40))(v128))
                          {
                            if (*(a1 + 564) > 3)
                            {
                              v129 = v121[2];
                            }

                            else
                            {
                              v129 = *(v121 + 3);
                            }

                            v130 = *(a1 + 504);
                            *(v130 + 4 * (*(*a1 + 40))(v129)) = v120;
                          }
                        }
                      }
                    }
                  }

                  result = 0;
                  v90 = v119++ >= *(a1 + 512);
                }

                while (!v90);
              }

              else
              {
                result = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_214:
  v131 = *MEMORY[0x277D85DE8];
  return result;
}

void ctf_close(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v26 = *(a1 + 552);
    ctf_dprintf("ctf_close(%p) refcnt=%u\n", a2, a3, a4, a5, a6, a7, a8, a1);
    v9 = *(a1 + 552);
    if (v9 < 2)
    {
      if (*(a1 + 528))
      {
        ctf_close();
      }

      v10 = *(a1 + 584);
      if (v10)
      {
        do
        {
          v11 = *v10;
          ctf_dtd_delete(a1, v10);
          v10 = v11;
        }

        while (v11);
      }

      free(*(a1 + 568));
      if (*(a1 + 556))
      {
        v12 = *(a1 + 32);
        if (v12)
        {
          v13 = getpagesize();
          munmap((v12 - ((v13 - 1) & v12)), ((v13 - 1) & v12) + *(a1 + 40));
        }

        v14 = *(a1 + 88);
        if (v14)
        {
          v15 = getpagesize();
          munmap((v14 - ((v15 - 1) & v14)), ((v15 - 1) & v14) + *(a1 + 96));
        }

        v16 = *(a1 + 144);
        if (v16)
        {
          v17 = getpagesize();
          munmap((v16 - ((v17 - 1) & v16)), ((v17 - 1) & v16) + *(a1 + 152));
        }
      }

      v18 = *(a1 + 8);
      if (v18 != &_CTF_NULLSTR && v18 != 0)
      {
        free(v18);
      }

      v20 = *(a1 + 64);
      if (v20 != &_CTF_NULLSTR && v20)
      {
        free(v20);
      }

      v21 = *(a1 + 120);
      if (v21 != &_CTF_NULLSTR && v21)
      {
        free(v21);
      }

      v22 = *(a1 + 456);
      if (v22 && v22 != *(a1 + 32))
      {
        munmap(v22, *(a1 + 472));
      }

      v23 = *(a1 + 480);
      if (v23)
      {
        free(v23);
      }

      v24 = *(a1 + 496);
      if (v24)
      {
        free(v24);
      }

      v25 = *(a1 + 504);
      if (v25)
      {
        free(v25);
      }

      ctf_hash_destroy(a1 + 176);
      ctf_hash_destroy(a1 + 208);
      ctf_hash_destroy(a1 + 240);
      ctf_hash_destroy(a1 + 272);

      free(a1);
    }

    else
    {
      *(a1 + 552) = v9 - 1;
    }
  }
}

uint64_t index_to_type_v4(uint64_t result, int a2)
{
  if (a2)
  {
    return result | 0x80000000;
  }

  else
  {
    return result;
  }
}

uint64_t index_to_type_v1(uint64_t result, int a2)
{
  if (a2)
  {
    return result | 0x8000;
  }

  else
  {
    return result;
  }
}

uint64_t ctf_setmodel(uint64_t a1, int a2)
{
  for (i = &_libctf_models; *(i + 2) != a2; i += 7)
  {
    if (!i[7])
    {
      *(a1 + 560) = 22;
      return 0xFFFFFFFFLL;
    }
  }

  v4 = 0;
  *(a1 + 520) = i;
  return v4;
}

uint64_t ctf_import(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || a1 == a2)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (!*(a2 + 552))
  {
LABEL_7:
    v10 = 22;
    goto LABEL_8;
  }

  if (*(a2 + 520) != *(a1 + 520))
  {
    v10 = 1012;
LABEL_8:
    *(a1 + 560) = v10;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  v12 = *(a1 + 528);
  if (v12)
  {
    ctf_close(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a2)
  {
    *(a1 + 556) |= 2u;
    ++*(a2 + 552);
  }

  result = 0;
  *(a1 + 528) = a2;
  return result;
}

const char *ctf_dprintf(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_libctf_debug)
  {
    v9 = result;
    v10 = MEMORY[0x277D85DF8];
    fputs("libctf DEBUG: ", *MEMORY[0x277D85DF8]);
    return vfprintf(*v10, v9, &a9);
  }

  return result;
}

uint64_t get_type_ctt_info(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 564) > 3)
  {
    return *(a2 + 4);
  }

  else
  {
    return *(a2 + 4);
  }
}

uint64_t get_type_ctt_type(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 564) > 3)
  {
    return *(a2 + 8);
  }

  else
  {
    return *(a2 + 6);
  }
}

uint64_t get_type_ctt_size(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 564) > 3)
  {
    return *(a2 + 8);
  }

  else
  {
    return *(a2 + 6);
  }
}

unint64_t ctf_get_ctt_lsize(uint64_t a1, uint64_t a2)
{
  v2 = 12;
  v3 = 8;
  if (*(a1 + 564) >= 4)
  {
    v3 = 12;
    v2 = 16;
  }

  return *(a2 + v2) | (*(a2 + v3) << 32);
}

unint64_t ctf_get_ctt_size(_DWORD *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = a1[141];
  if (v7 < 2)
  {
    goto LABEL_15;
  }

  if (v7 > 3)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 6);
  }

  v10 = (*(*a1 + 64))(a1);
  v11 = a1[141];
  if (v9 != v10)
  {
    if (v11 > 3)
    {
      v18 = *(a2 + 8);
      v17 = 12;
LABEL_16:
      result = v18;
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_15:
    v18 = *(a2 + 6);
    v17 = 8;
    goto LABEL_16;
  }

  v12 = v11 < 4;
  v13 = 12;
  v14 = 8;
  if (!v12)
  {
    v14 = 12;
  }

  v15 = *(a2 + v14);
  if (!v12)
  {
    v13 = 16;
  }

  result = *(a2 + v13) | (v15 << 32);
  v17 = 20;
  if (v12)
  {
    v17 = 16;
  }

  if (a3)
  {
LABEL_17:
    *a3 = result;
  }

LABEL_18:
  if (a4)
  {
    *a4 = v17;
  }

  return result;
}

uint64_t ctf_member_iter(int *a1, uint64_t a2, uint64_t (*a3)(const char *, void, unint64_t, uint64_t), uint64_t a4)
{
  v50 = a1;
  v7 = ctf_type_resolve(a1, a2);
  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v48 = 0;
  v49 = 0;
  v8 = ctf_lookup_by_id(&v50, v7);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = v50;
  ctf_get_ctt_size(v50, v8, &v49, &v48);
  if (v10[141] > 3)
  {
    v11 = *(v9 + 4);
  }

  else
  {
    v11 = *(v9 + 4);
  }

  if ((**v10)(v11) - 8 <= 0xFFFFFFFD)
  {
    a1[140] = 1021;
    return 0xFFFFFFFFLL;
  }

  v13 = v10[141];
  v14 = v48;
  v15 = *(*v10 + 16);
  if (v13 == 1 || v49 < 0x2000)
  {
    if (v13 > 3)
    {
      result = v15(*(v9 + 4));
      if (result)
      {
        v32 = result;
        v33 = (v14 + v9);
        v34 = v10 + 106;
        do
        {
          v35 = *v33;
          v36 = (v34 + ((v35 >> 27) & 0x10));
          if (*v36)
          {
            v37 = v35 & 0x7FFFFFFF;
            if (v36[1] <= v37)
            {
              v38 = 0;
            }

            else
            {
              v38 = (*v36 + v37);
            }
          }

          else
          {
            v38 = 0;
          }

          if (v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = "(?)";
          }

          result = a3(v39, v33[1], *(v33 + 4), a4);
          if (result)
          {
            break;
          }

          v33 += 3;
          --v32;
        }

        while (v32);
      }
    }

    else
    {
      result = v15(*(v9 + 4));
      if (result)
      {
        v24 = result;
        v25 = (v14 + v9);
        v26 = v10 + 106;
        do
        {
          v27 = *v25;
          v28 = (v26 + ((v27 >> 27) & 0x10));
          if (*v28)
          {
            v29 = v27 & 0x7FFFFFFF;
            if (v28[1] <= v29)
            {
              v30 = 0;
            }

            else
            {
              v30 = (*v28 + v29);
            }
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = "(?)";
          }

          result = a3(v31, *(v25 + 2), *(v25 + 3), a4);
          if (result)
          {
            break;
          }

          v25 += 2;
          --v24;
        }

        while (v24);
      }
    }
  }

  else if (v13 > 3)
  {
    result = v15(*(v9 + 4));
    if (result)
    {
      v40 = result;
      v41 = (v14 + v9);
      v42 = v10 + 106;
      do
      {
        v43 = *v41;
        v44 = (v42 + ((v43 >> 27) & 0x10));
        if (*v44)
        {
          v45 = v43 & 0x7FFFFFFF;
          if (v44[1] <= v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = (*v44 + v45);
          }
        }

        else
        {
          v46 = 0;
        }

        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = "(?)";
        }

        result = a3(v47, v41[1], v41[3] | (v41[2] << 32), a4);
        if (result)
        {
          break;
        }

        v41 += 4;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    result = v15(*(v9 + 4));
    if (result)
    {
      v16 = result;
      v17 = (v14 + v9);
      v18 = v10 + 106;
      do
      {
        v19 = *v17;
        v20 = (v18 + ((v19 >> 27) & 0x10));
        if (*v20)
        {
          v21 = v19 & 0x7FFFFFFF;
          if (v20[1] <= v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = (*v20 + v21);
          }
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = "(?)";
        }

        result = a3(v23, *(v17 + 2), v17[3] | (v17[2] << 32), a4);
        if (result)
        {
          break;
        }

        v17 += 4;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t ctf_type_resolve(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = a2;
  v5 = a2;
  while (1)
  {
    v6 = ctf_lookup_by_id(&v21, v5);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = v21;
    if (*(v21 + 564) > 3)
    {
      v9 = *(v6 + 4);
    }

    else
    {
      v9 = *(v6 + 4);
    }

    if ((**v21)(v9) - 10 > 3)
    {
      return v5;
    }

    if (*(v8 + 564) > 3)
    {
      v17 = *(v7 + 8);
    }

    else
    {
      v17 = *(v7 + 6);
    }

    v19 = v5 == v17 || v17 == a2 || v4 == v17;
    v4 = v5;
    v5 = v17;
    if (v19)
    {
      ctf_dprintf("type %ld cycle detected\n", v10, v11, v12, v13, v14, v15, v16, a2);
      *(a1 + 560) = 1007;
      return -1;
    }
  }

  return -1;
}

uint64_t ctf_enum_iter(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, void, uint64_t), uint64_t a4)
{
  v24 = a1;
  v7 = ctf_type_resolve(a1, a2);
  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = 0;
  v8 = ctf_lookup_by_id(&v24, v7);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = v24;
  if (v24[141] > 3)
  {
    v11 = *(v8 + 4);
  }

  else
  {
    v11 = *(v8 + 4);
  }

  if ((**v24)(v11) != 8)
  {
    *(a1 + 560) = 1022;
    return 0xFFFFFFFFLL;
  }

  ctf_get_ctt_size(v10, v9, 0, &v23);
  if (v10[141] > 3)
  {
    v12 = *(v9 + 4);
  }

  else
  {
    v12 = *(v9 + 4);
  }

  v14 = v23;
  result = (*(*v10 + 16))(v12);
  if (result)
  {
    v15 = result;
    v16 = (v14 + v9);
    v17 = v10 + 106;
    while (1)
    {
      v18 = *v16;
      v19 = (v17 + ((v18 >> 27) & 0x10));
      if (*v19)
      {
        v20 = v18 & 0x7FFFFFFF;
        v21 = v19[1] <= v20 ? 0 : (*v19 + v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21 ? v21 : "(?)";
      result = a3(v22, v16[1], a4);
      if (result)
      {
        break;
      }

      v16 += 2;
      if (!--v15)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ctf_type_iter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 512);
  if (v3 >= 1)
  {
    v7 = 1;
    v8 = (*(a1 + 556) >> 1) & 1;
    do
    {
      v9 = *(*(a1 + 496) + 4 * v7) + *(a1 + 464);
      if (*(a1 + 564) > 3)
      {
        if ((*(v9 + 4) & 0x400) != 0)
        {
LABEL_7:
          v10 = (*(*a1 + 48))(v7, v8);
          result = a2(v10, a3);
          if (result)
          {
            return result;
          }
        }
      }

      else if ((*(v9 + 4) & 0x400) != 0)
      {
        goto LABEL_7;
      }

      ++v7;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t ctf_type_lname(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = -1;
  if (a1 || a2 != -1)
  {
    v23 = 0;
    v27 = 0u;
    memset(v20, 0, sizeof(v20));
    v21 = -1;
    v22 = -1;
    v24 = a3;
    v25 = a3;
    v26 = a3 + a4;
    ctf_decl_push(v20, a1, a2);
    if (DWORD2(v27))
    {
      ctf_decl_fini(v20);
      a1[140] = DWORD2(v27);
      return -1;
    }

    else
    {
      v7 = 0;
      if (SHIDWORD(v21) > 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      v9 = 2;
      if (v22 > 2)
      {
        v8 = 2;
      }

      v17 = a4;
      v18 = v8;
      if (v22 <= 2)
      {
        v9 = 0xFFFFFFFFLL;
      }

      if (SHIDWORD(v21) > 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = 3;
      do
      {
        for (i = *(&v20[v7] + 1); i; i = *(i + 8))
        {
          v19 = a1;
          v13 = *ctf_lookup_by_id(&v19, *(i + 16));
          v14 = v19 + ((v13 >> 27) & 0x10);
          if (*(v14 + 53))
          {
            *(v14 + 54);
          }

          if ((v11 - 5) <= 0xFFFFFFFD)
          {
            ctf_decl_sprintf(v20, " ");
          }

          if (v7 == v10)
          {
            ctf_decl_sprintf(v20, "(");
            v10 = 0xFFFFFFFFLL;
          }

          switch(*(i + 24))
          {
            case 1:
            case 2:
            case 0xA:
              ctf_decl_sprintf(v20, "%s");
              break;
            case 3:
              ctf_decl_sprintf(v20, "*", v16);
              break;
            case 4:
              v15 = *(i + 28);
              ctf_decl_sprintf(v20, "[%u]");
              break;
            case 5:
              ctf_decl_sprintf(v20, "()", v16);
              break;
            case 6:
            case 9:
              ctf_decl_sprintf(v20, "struct %s");
              break;
            case 7:
              ctf_decl_sprintf(v20, "union %s");
              break;
            case 8:
              ctf_decl_sprintf(v20, "enum %s");
              break;
            case 0xB:
              ctf_decl_sprintf(v20, "volatile");
              break;
            case 0xC:
              ctf_decl_sprintf(v20, "const", v16);
              break;
            case 0xD:
              ctf_decl_sprintf(v20, "restrict", v16);
              break;
            case 0xE:
              ctf_decl_sprintf(v20, "ptrauth", v16);
              break;
            default:
              break;
          }

          v11 = *(i + 24);
        }

        if (v18 == v7)
        {
          ctf_decl_sprintf(v20, ")");
        }

        ++v7;
      }

      while (v7 != 4);
      if (v27 >= v17)
      {
        a1[140] = 1027;
      }

      ctf_decl_fini(v20);
      return v27;
    }
  }

  return result;
}

char *__cdecl ctf_type_name(ctf_file_t *a1, ctf_id_t a2, char *a3, size_t a4)
{
  v6 = ctf_type_lname(a1, a2, a3, a4);
  if (v6 >= a4 || v6 <= -1)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t ctf_type_size(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  result = ctf_type_resolve(a1, a2);
  if (result == -1)
  {
    return result;
  }

  v3 = result;
  v4 = ctf_lookup_by_id(&v11, result);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = v11;
  if (*(v11 + 564) > 3)
  {
    v7 = *(v4 + 4);
  }

  else
  {
    v7 = *(v4 + 4);
  }

  v8 = (**v11)(v7);
  if (v8 <= 4)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        result = ctf_get_ctt_size(v6, v5, 0, 0);
        if (result > 0)
        {
          return result;
        }

        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        if (ctf_array_info(v6, v3, v9) != -1)
        {
          result = ctf_type_size(v6, v9[0]);
          if (result != -1)
          {
            result *= v10;
          }

          return result;
        }

        return -1;
      }

      goto LABEL_17;
    }

    return *(*(v6 + 520) + 16);
  }

  if (v8 == 5)
  {
    return 0;
  }

  if (v8 == 14)
  {
    return *(*(v6 + 520) + 16);
  }

LABEL_17:

  return ctf_get_ctt_size(v6, v5, 0, 0);
}

uint64_t ctf_array_info(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = a1;
  v5 = ctf_lookup_by_id(&v15, a2);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = v15;
  if (v15[141] > 3)
  {
    v8 = *(v5 + 4);
  }

  else
  {
    v8 = *(v5 + 4);
  }

  if ((**v15)(v8) != 4)
  {
    a1[140] = 1025;
    return 0xFFFFFFFFLL;
  }

  ctf_get_ctt_size(v7, v6, 0, &v14);
  v9 = (v14 + v6);
  result = 0;
  if (v7[141] == 4)
  {
    *&v11 = *v9;
    *(&v11 + 1) = HIDWORD(*v9);
    *a3 = v11;
    v12 = *(v9 + 2);
  }

  else
  {
    v13 = v9[1];
    *a3 = *v9;
    *(a3 + 8) = v13;
    v12 = *(v9 + 1);
  }

  *(a3 + 16) = v12;
  return result;
}

unint64_t ctf_type_align(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v29 = a1;
    v2 = ctf_type_resolve(a1, a2);
    if (v2 == -1)
    {
      return v2;
    }

    v3 = ctf_lookup_by_id(&v29, v2);
    if (!v3)
    {
      return -1;
    }

    v4 = v3;
    v5 = v29;
    v6 = v29[141] > 3 ? *(v3 + 4) : *(v3 + 4);
    v7 = (**v29)(v6);
    if (v7 > 0xE)
    {
      break;
    }

    if (((1 << v7) & 0x4028) != 0)
    {
      return *(*(v5 + 65) + 16);
    }

    if (((1 << v7) & 0xC0) != 0)
    {
      if (v5[141] > 3)
      {
        v8 = *(v4 + 4);
      }

      else
      {
        v8 = *(v4 + 4);
      }

      v10 = (*(*v5 + 16))(v8);
      v27 = 0;
      v28[0] = 0;
      ctf_get_ctt_size(v5, v4, v28, &v27);
      if (v5[141] > 3)
      {
        v11 = *(v4 + 4);
      }

      else
      {
        v11 = *(v4 + 4);
      }

      v12 = v27;
      if ((**v5)(v11) == 6)
      {
        v13 = v10 != 0;
      }

      else
      {
        v13 = v10;
      }

      v14 = v5[141];
      if (v14 == 1 || v28[0] < 0x2000)
      {
        if (v14 == 4)
        {
          if (v13)
          {
            v2 = 0;
            v18 = (v12 + v4 + 4);
            do
            {
              v19 = *v18;
              v18 += 3;
              v20 = ctf_type_align(v5, v19);
              if (v2 <= v20)
              {
                v2 = v20;
              }

              --v13;
            }

            while (v13);
            return v2;
          }
        }

        else if (v13)
        {
          v2 = 0;
          v21 = (v12 + v4 + 4);
          do
          {
            v22 = *v21;
            v21 += 4;
            v23 = ctf_type_align(v5, v22);
            if (v2 <= v23)
            {
              v2 = v23;
            }

            --v13;
          }

          while (v13);
          return v2;
        }
      }

      else if (v14 == 4)
      {
        if (v13)
        {
          v2 = 0;
          v15 = (v12 + v4 + 4);
          do
          {
            v16 = *v15;
            v15 += 4;
            v17 = ctf_type_align(v5, v16);
            if (v2 <= v17)
            {
              v2 = v17;
            }

            --v13;
          }

          while (v13);
          return v2;
        }
      }

      else if (v13)
      {
        v2 = 0;
        v24 = (v12 + v4 + 4);
        do
        {
          v25 = *v24;
          v24 += 8;
          v26 = ctf_type_align(v5, v25);
          if (v2 <= v26)
          {
            v2 = v26;
          }

          --v13;
        }

        while (v13);
        return v2;
      }

      return 0;
    }

    if (v7 != 4)
    {
      break;
    }

    memset(v28, 0, sizeof(v28));
    if (ctf_array_info(v5, v2, v28) == -1)
    {
      return -1;
    }

    a2 = v28[0];
    a1 = v5;
  }

  return ctf_get_ctt_size(v5, v4, 0, 0);
}

uint64_t ctf_type_kind(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v2 = ctf_lookup_by_id(&v5, a2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 564) > 3)
  {
    v3 = *(v2 + 4);
  }

  else
  {
    v3 = *(v2 + 4);
  }

  return (**v5)(v3);
}

uint64_t ctf_type_reference(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v3 = ctf_lookup_by_id(&v11, a2);
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = v11;
  if (*(v11 + 564) > 3)
  {
    v6 = *(v3 + 4);
  }

  else
  {
    v6 = *(v3 + 4);
  }

  v7 = (**v11)(v6);
  if ((v7 - 10) >= 5 && v7 != 3)
  {
    *(a1 + 560) = 1026;
    return -1;
  }

  if (*(v5 + 564) > 3)
  {
    return *(v4 + 8);
  }

  else
  {
    return *(v4 + 6);
  }
}

uint64_t ctf_type_pointer(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  if (!ctf_lookup_by_id(&v12, a2))
  {
    return -1;
  }

  v4 = v12;
  v5 = v12[63];
  if (!*(v5 + 4 * (*(*v12 + 40))(a2)))
  {
    v9 = ctf_type_resolve(v4, a2);
    if (v9 == -1 || (v10 = v9, !ctf_lookup_by_id(&v12, v9)) || (v4 = v12, v11 = v12[63], !*(v11 + 4 * (*(*v12 + 40))(v10))))
    {
      *(a1 + 560) = 1028;
      return -1;
    }
  }

  v6 = *(*v4 + 48);
  v7 = (v4[139] >> 1) & 1;

  return v6();
}

uint64_t ctf_type_encoding(uint64_t (***a1)(uint64_t), uint64_t a2, unsigned int *a3)
{
  v12 = 0;
  v13 = a1;
  v5 = ctf_lookup_by_id(&v13, a2);
  if (v5)
  {
    v6 = v5;
    v7 = v13;
    ctf_get_ctt_size(v13, v5, 0, &v12);
    if (*(v7 + 141) > 3)
    {
      v8 = *(v6 + 4);
    }

    else
    {
      v8 = *(v6 + 4);
    }

    v9 = (**v7)(v8);
    if (v9 == 2 || v9 == 1)
    {
      result = 0;
      v11 = *(v12 + v6);
      *a3 = HIBYTE(v11);
      a3[1] = BYTE2(v11);
      a3[2] = v11;
      return result;
    }

    *(a1 + 140) = 1024;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ctf_type_ptrauth(unsigned int (***a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = a1;
  v5 = ctf_lookup_by_id(&v12, a2);
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    ctf_get_ctt_size(v12, v5, 0, &v11);
    if (*(v7 + 141) > 3)
    {
      v8 = *(v6 + 4);
    }

    else
    {
      v8 = *(v6 + 4);
    }

    if ((**v7)(v8) == 14)
    {
      result = 0;
      v10 = *(v11 + v6);
      *a3 = BYTE2(v10);
      *(a3 + 2) = v10;
      *(a3 + 4) = (v10 & 0xFF000000) != 0;
      return result;
    }

    *(a1 + 140) = 1046;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ctf_type_cmp(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < a4)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2 > a4;
  }

  if (a1 != a3)
  {
    v6 = a3;
    v7 = a1;
    if ((*(*a1 + 24))(a2) && *(v7 + 528))
    {
      v7 = *(v7 + 528);
    }

    if ((*(*v6 + 24))(a4) && v6[66])
    {
      v6 = v6[66];
    }

    if (v7 > v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= v6)
    {
      return v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t ctf_type_compat_helper(uint64_t (***a1)(uint64_t), uint64_t a2, uint64_t (***a3)(uint64_t), uint64_t a4, int a5)
{
  while (1)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v49 = a3;
    v50 = a1;
    if (!ctf_type_cmp(a1, a2, a3, a4))
    {
      return 1;
    }

    v48 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v10 = ctf_type_resolve(v9, v8);
    v11 = ctf_type_kind(v9, v10);
    v12 = ctf_type_resolve(v7, v6);
    v13 = ctf_type_kind(v7, v12);
    v14 = ctf_lookup_by_id(&v50, v10);
    v15 = ctf_lookup_by_id(&v49, v12);
    if (v5)
    {
      v16 = v15;
      result = 0;
      if (v11 != v13 || !v14 || !v16)
      {
        return result;
      }

      v18 = *v14;
      v19 = v50 + ((v18 >> 27) & 0x10);
      v20 = *(v19 + 53);
      if (v20)
      {
        v21 = v18 & 0x7FFFFFFF;
        v22 = v20 + v21;
        v23 = *(v19 + 54) <= v21 ? 0 : v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 ? v23 : "(?)";
      v25 = *v16;
      v26 = v49 + ((v25 >> 27) & 0x10);
      v27 = *(v26 + 53);
      if (v27)
      {
        v28 = v25 & 0x7FFFFFFF;
        v29 = v27 + v28;
        v30 = *(v26 + 54) <= v28 ? 0 : v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30 ? v30 : "(?)";
      if (strcmp(v24, v31))
      {
        return 0;
      }
    }

    if (v11 > 5)
    {
      if ((v11 - 6) < 2)
      {
        v35 = ctf_type_size(v50, v10);
        return v35 == ctf_type_size(v49, v12);
      }

      if ((v11 - 8) < 2)
      {
        return 1;
      }

      if (v11 != 14)
      {
        return 0;
      }

      v10 = ctf_type_reference(v50, v10);
LABEL_46:
      v36 = v49;
      if (v13 == 14)
      {
        v12 = ctf_type_reference(v49, v12);
      }

      v37 = v50;
      v38 = ctf_type_reference(v50, v10);
      a4 = ctf_type_reference(v36, v12);
      a1 = v37;
      a2 = v38;
      a3 = v36;
      goto LABEL_49;
    }

    if ((v11 - 1) < 2)
    {
      break;
    }

    if (v11 == 3)
    {
      goto LABEL_46;
    }

    if (v11 != 4)
    {
      return 0;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v32 = v50;
    if (ctf_array_info(v50, v10, &v42))
    {
      return 0;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    v33 = v49;
    if (ctf_array_info(v49, v12, &v39) || v44 != v41)
    {
      return 0;
    }

    result = ctf_type_compat_helper(v32, v42, v33, v39, 1);
    if (!result)
    {
      return result;
    }

    a2 = v43;
    a4 = v40;
    a1 = v32;
    a3 = v33;
LABEL_49:
    a5 = 1;
  }

  if (ctf_type_encoding(v50, v10, &v47) || ctf_type_encoding(v49, v12, &v45))
  {
    return 0;
  }

  return v47 == v45 && v48 == v46;
}

uint64_t _ctf_member_info(int *a1, uint64_t a2, const char *a3, uint64_t a4, void *a5)
{
  v58 = a1;
  v9 = ctf_type_resolve(a1, a2);
  if (v9 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v56 = 0;
  v57 = 0;
  v10 = ctf_lookup_by_id(&v58, v9);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = v58;
  ctf_get_ctt_size(v58, v10, &v57, &v56);
  if (v12[141] > 3)
  {
    v13 = *(v11 + 4);
  }

  else
  {
    v13 = *(v11 + 4);
  }

  if ((**v12)(v13) - 8 > 0xFFFFFFFD)
  {
    v15 = v12[141];
    if (v15 == 1 || v57 < 0x2000)
    {
      if (v15 == 4)
      {
        v26 = v56;
        v27 = (*(*v12 + 16))(*(v11 + 4));
        if (v27)
        {
          v28 = v27;
          v29 = v26 + v11;
          while (1)
          {
            v30 = *v29;
            if (!*v29)
            {
              result = _ctf_member_info(v12, *(v29 + 4), a3, *(v29 + 8) + a4, a5);
              if (!result)
              {
                return result;
              }

              v30 = *v29;
            }

            v31 = &v12[4 * (v30 >> 31) + 106];
            if (*v31)
            {
              v32 = v30 & 0x7FFFFFFF;
              v33 = *(v31 + 1) <= v32 ? 0 : (*v31 + v32);
            }

            else
            {
              v33 = 0;
            }

            v34 = v33 ? v33 : "(?)";
            result = strcmp(v34, a3);
            if (!result)
            {
              break;
            }

            v29 += 12;
            if (!--v28)
            {
              goto LABEL_81;
            }
          }

          v54 = *(v29 + 4);
          v55 = *(v29 + 8);
          goto LABEL_90;
        }
      }

      else
      {
        if (v15 > 3)
        {
          v35 = *(v11 + 4);
        }

        else
        {
          v35 = *(v11 + 4);
        }

        v37 = v56;
        v38 = (*(*v12 + 16))(v35);
        if (v38)
        {
          v39 = v38;
          v40 = v37 + v11;
          while (1)
          {
            v41 = *v40;
            if (!*v40)
            {
              result = _ctf_member_info(v12, *(v40 + 4), a3, *(v40 + 6) + a4, a5);
              if (!result)
              {
                return result;
              }

              v41 = *v40;
            }

            v42 = &v12[4 * (v41 >> 31) + 106];
            if (*v42)
            {
              v43 = v41 & 0x7FFFFFFF;
              v44 = *(v42 + 1) <= v43 ? 0 : (*v42 + v43);
            }

            else
            {
              v44 = 0;
            }

            v45 = v44 ? v44 : "(?)";
            result = strcmp(v45, a3);
            if (!result)
            {
              break;
            }

            v40 += 8;
            if (!--v39)
            {
              goto LABEL_81;
            }
          }

          v54 = *(v40 + 4);
          v55 = *(v40 + 6);
          goto LABEL_90;
        }
      }
    }

    else if (v15 == 4)
    {
      v16 = v56;
      v17 = (*(*v12 + 16))(*(v11 + 4));
      if (v17)
      {
        v18 = v17;
        v19 = (v16 + v11);
        while (1)
        {
          v20 = *v19;
          if (!*v19)
          {
            result = _ctf_member_info(v12, 0, a3, (v19[3] | (v19[2] << 32)) + a4, a5);
            if (!result)
            {
              return result;
            }

            v20 = *v19;
          }

          v22 = &v12[4 * (v20 >> 31) + 106];
          if (*v22)
          {
            v23 = v20 & 0x7FFFFFFF;
            v24 = *(v22 + 1) <= v23 ? 0 : (*v22 + v23);
          }

          else
          {
            v24 = 0;
          }

          v25 = v24 ? v24 : "(?)";
          result = strcmp(v25, a3);
          if (!result)
          {
            break;
          }

          v19 += 4;
          if (!--v18)
          {
            goto LABEL_81;
          }
        }

        v54 = v19[1];
LABEL_89:
        v55 = v19[3] | (v19[2] << 32);
LABEL_90:
        *a5 = v54;
        a5[1] = v55 + a4;
        return result;
      }
    }

    else
    {
      if (v15 > 3)
      {
        v36 = *(v11 + 4);
      }

      else
      {
        v36 = *(v11 + 4);
      }

      v46 = v56;
      v47 = (*(*v12 + 16))(v36);
      if (v47)
      {
        v48 = v47;
        v19 = (v46 + v11);
        while (1)
        {
          v49 = *v19;
          if (!*v19)
          {
            result = _ctf_member_info(v12, 0, a3, (v19[3] | (v19[2] << 32)) + a4, a5);
            if (!result)
            {
              return result;
            }

            v49 = *v19;
          }

          v50 = &v12[4 * (v49 >> 31) + 106];
          if (*v50)
          {
            v51 = v49 & 0x7FFFFFFF;
            v52 = *(v50 + 1) <= v51 ? 0 : (*v50 + v51);
          }

          else
          {
            v52 = 0;
          }

          v53 = v52 ? v52 : "(?)";
          result = strcmp(v53, a3);
          if (!result)
          {
            break;
          }

          v19 += 4;
          if (!--v48)
          {
            goto LABEL_81;
          }
        }

        v54 = *(v19 + 2);
        goto LABEL_89;
      }
    }

LABEL_81:
    v14 = 1038;
    goto LABEL_82;
  }

  v14 = 1021;
LABEL_82:
  a1[140] = v14;
  return 0xFFFFFFFFLL;
}

const char *ctf_enum_name(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a1;
  v5 = ctf_type_resolve(a1, a2);
  if (v5 == -1)
  {
    return 0;
  }

  v21 = 0;
  result = ctf_lookup_by_id(&v22, v5);
  if (result)
  {
    v7 = result;
    v8 = v22;
    if (v22[141] > 3)
    {
      v9 = *(result + 1);
    }

    else
    {
      v9 = *(result + 2);
    }

    if ((**v22)(v9) == 8)
    {
      ctf_get_ctt_size(v8, v7, 0, &v21);
      if (v8[141] > 3)
      {
        v10 = *(v7 + 4);
      }

      else
      {
        v10 = *(v7 + 4);
      }

      v12 = v21;
      v13 = (*(*v8 + 16))(v10);
      if (v13)
      {
        v14 = (v12 + v7);
        while (v14[1] != a3)
        {
          v14 += 2;
          if (!--v13)
          {
            goto LABEL_16;
          }
        }

        v15 = *v14;
        v16 = v8 + ((v15 >> 27) & 0x10);
        v17 = *(v16 + 53);
        if (v17)
        {
          v18 = v15 & 0x7FFFFFFF;
          v19 = v17 + v18;
          if (*(v16 + 54) <= v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          return v20;
        }

        else
        {
          return "(?)";
        }
      }

LABEL_16:
      result = 0;
      v11 = 1037;
    }

    else
    {
      result = 0;
      v11 = 1022;
    }

    *(a1 + 560) = v11;
  }

  return result;
}

uint64_t ctf_enum_value(uint64_t a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v27 = a1;
  v7 = ctf_type_resolve(a1, a2);
  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = 0;
  v26 = 0;
  v8 = ctf_lookup_by_id(&v27, v7);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = v27;
  if (v27[141] > 3)
  {
    v11 = *(v8 + 4);
  }

  else
  {
    v11 = *(v8 + 4);
  }

  if ((**v27)(v11) != 8)
  {
    v13 = 1022;
LABEL_24:
    *(a1 + 560) = v13;
    return 0xFFFFFFFFLL;
  }

  ctf_get_ctt_size(v10, v9, &v26, &v25);
  if (v10[141] > 3)
  {
    v12 = *(v9 + 4);
  }

  else
  {
    v12 = *(v9 + 4);
  }

  v14 = v25;
  v15 = (*(*v10 + 16))(v12);
  if (!v15)
  {
LABEL_23:
    v13 = 1037;
    goto LABEL_24;
  }

  v16 = v15;
  v17 = (v14 + v9);
  v18 = v10 + 106;
  while (1)
  {
    v19 = *v17;
    v20 = (v18 + ((v19 >> 27) & 0x10));
    if (*v20)
    {
      v21 = v19 & 0x7FFFFFFF;
      v22 = v20[1] <= v21 ? 0 : (*v20 + v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 ? v22 : "(?)";
    if (!strcmp(v23, a3))
    {
      break;
    }

    v17 += 2;
    if (!--v16)
    {
      goto LABEL_23;
    }
  }

  result = 0;
  if (a4)
  {
    *a4 = v17[1];
  }

  return result;
}

uint64_t ctf_type_rvisit(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a1;
  v13 = ctf_type_resolve(a1, a2);
  if (v13 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v54 = 0;
  v55 = 0;
  v14 = ctf_lookup_by_id(&v56, v13);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  result = a3(a5, a2, a6, a7, a4);
  if (!result)
  {
    v17 = v56;
    if (v56[141] > 3)
    {
      v18 = *(v15 + 4);
    }

    else
    {
      v18 = *(v15 + 4);
    }

    if ((**v56)(v18) - 8 >= 0xFFFFFFFE)
    {
      ctf_get_ctt_size(v17, v15, &v55, &v54);
      v19 = v17[141];
      if (v19 == 1 || v55 < 0x2000)
      {
        if (v19 == 4)
        {
          v28 = v54;
          result = (*(*v17 + 16))(*(v15 + 4));
          if (result)
          {
            v29 = result;
            v30 = (v28 + v15 + 8);
            do
            {
              v31 = *(v30 - 2);
              v32 = (v17 + ((v31 >> 27) & 0x10) + 424);
              if (*v32)
              {
                v33 = v31 & 0x7FFFFFFF;
                if (v32[1] <= v33)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = (*v32 + v33);
                }
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v35 = v34;
              }

              else
              {
                v35 = "(?)";
              }

              result = ctf_type_rvisit(v17, *(v30 - 1), a3, a4, v35, *v30 + a6, (a7 + 1));
              if (result)
              {
                break;
              }

              v30 += 6;
              --v29;
            }

            while (v29);
          }
        }

        else
        {
          if (v19 > 3)
          {
            v36 = *(v15 + 4);
          }

          else
          {
            v36 = *(v15 + 4);
          }

          v38 = v54;
          result = (*(*v17 + 16))(v36);
          if (result)
          {
            v39 = result;
            v40 = (v38 + v15 + 6);
            do
            {
              v41 = *(v40 - 3);
              v42 = (v17 + ((v41 >> 27) & 0x10) + 424);
              if (*v42)
              {
                v43 = v41 & 0x7FFFFFFF;
                if (v42[1] <= v43)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = (*v42 + v43);
                }
              }

              else
              {
                v44 = 0;
              }

              if (v44)
              {
                v45 = v44;
              }

              else
              {
                v45 = "(?)";
              }

              result = ctf_type_rvisit(v17, *(v40 - 1), a3, a4, v45, *v40 + a6, (a7 + 1));
              if (result)
              {
                break;
              }

              v40 += 4;
              --v39;
            }

            while (v39);
          }
        }
      }

      else if (v19 == 4)
      {
        v20 = v54;
        result = (*(*v17 + 16))(*(v15 + 4));
        if (result)
        {
          v21 = result;
          v22 = (v20 + v15 + 8);
          do
          {
            v23 = *(v22 - 2);
            v24 = (v17 + ((v23 >> 27) & 0x10) + 424);
            if (*v24)
            {
              v25 = v23 & 0x7FFFFFFF;
              if (v24[1] <= v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = (*v24 + v25);
              }
            }

            else
            {
              v26 = 0;
            }

            if (v26)
            {
              v27 = v26;
            }

            else
            {
              v27 = "(?)";
            }

            result = ctf_type_rvisit(v17, *(v22 - 1), a3, a4, v27, (v22[1] | (*v22 << 32)) + a6, (a7 + 1));
            if (result)
            {
              break;
            }

            v22 += 4;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        if (v19 > 3)
        {
          v37 = *(v15 + 4);
        }

        else
        {
          v37 = *(v15 + 4);
        }

        v46 = v54;
        result = (*(*v17 + 16))(v37);
        if (result)
        {
          v47 = result;
          v48 = (v46 + v15 + 8);
          do
          {
            v49 = *(v48 - 2);
            v50 = (v17 + ((v49 >> 27) & 0x10) + 424);
            if (*v50)
            {
              v51 = v49 & 0x7FFFFFFF;
              if (v50[1] <= v51)
              {
                v52 = 0;
              }

              else
              {
                v52 = (*v50 + v51);
              }
            }

            else
            {
              v52 = 0;
            }

            if (v52)
            {
              v53 = v52;
            }

            else
            {
              v53 = "(?)";
            }

            result = ctf_type_rvisit(v17, *(v48 - 2), a3, a4, v53, (v48[1] | (*v48 << 32)) + a6, (a7 + 1));
            if (result)
            {
              break;
            }

            v48 += 4;
            --v47;
          }

          while (v47);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *ctf_list_append(void *result, void *a2)
{
  v2 = *result;
  *result = a2;
  *a2 = v2;
  a2[1] = 0;
  if (!v2)
  {
    v2 = result;
  }

  v2[1] = a2;
  return result;
}

void *ctf_list_prepend(void *result, void *a2)
{
  v2 = result[1];
  result[1] = a2;
  *a2 = 0;
  a2[1] = v2;
  if (!v2)
  {
    v2 = result;
  }

  *v2 = a2;
  return result;
}

void *ctf_list_delete(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = result;
  }

  v4[1] = v3;
  if (!v3)
  {
    v3 = result;
  }

  *v3 = v2;
  return result;
}

uint64_t ctf_strraw(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 16 * (a2 >> 31);
  v3 = *(v2 + 424);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & 0x7FFFFFFF;
  v5 = v3 + v4;
  if (*(v2 + 432) <= v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

const char *ctf_strptr(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 16 * (a2 >> 31);
  v3 = *(v2 + 424);
  if (v3)
  {
    v4 = a2 & 0x7FFFFFFF;
    v5 = v3 + v4;
    if (*(v2 + 432) <= v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return "(?)";
  }
}

char *ctf_strdup(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0x610CB5CCuLL);
  if (result)
  {

    return strcpy(result, a1);
  }

  return result;
}

uint64_t ctf_set_open_errno(_DWORD *a1, int a2)
{
  if (a1)
  {
    *a1 = a2;
  }

  return 0;
}

size_t _os_log_fmt_decode_error(size_t result)
{
  if ((*(result + 20) & 2) == 0)
  {
    v1 = *(result + 8);
    if (*(result + 12) - v1 - (*(result + 22) ^ 1u) <= 0x15)
    {
      return os_trace_blob_add_slow(result, "<decode: missing data>", 0x16uLL);
    }

    else
    {
      qmemcpy((*result + v1), "<decode: missing data>", 22);
      v2 = *(result + 8) + 22;
      *(result + 8) = v2;
      if ((*(result + 22) & 1) == 0)
      {
        *(*result + v2) = 0;
      }
    }
  }

  return result;
}

uint64_t _os_log_fmt_decode_cmd_mismatch(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  os_trace_blob_addf(a1, "<decode: mismatch for [%.*s] got [", a3, a4, a5, a6, a7, a8, a3);
  v17 = *a4;
  if (v17 > 0x4F)
  {
    os_trace_blob_addf(a1, "%d", v11, v12, v13, v14, v15, v16, *a4 >> 4);
  }

  else
  {
    v18 = _cmd_type2str[v17 >> 4];
    v19 = strlen(v18);
    if ((*(a1 + 20) & 2) == 0)
    {
      v26 = v19;
      v27 = *(a1 + 8);
      if (v19 > *(a1 + 12) - v27 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v18, v19);
      }

      else
      {
        memcpy((*a1 + v27), v18, v19);
        v28 = *(a1 + 8) + v26;
        *(a1 + 8) = v28;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v28) = 0;
        }
      }
    }
  }

  if ((*a4 & 2) != 0 && (*(a1 + 20) & 2) == 0)
  {
    v29 = *(a1 + 8);
    if (*(a1 + 12) - v29 - (*(a1 + 22) ^ 1u) <= 6)
    {
      os_trace_blob_add_slow(a1, " public", 7uLL);
    }

    else
    {
      v30 = (*a1 + v29);
      *(v30 + 3) = 1667853410;
      *v30 = 1651863584;
      v31 = *(a1 + 8) + 7;
      *(a1 + 8) = v31;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v31) = 0;
      }
    }
  }

  if ((*a4 & 1) != 0 && (*(a1 + 20) & 2) == 0)
  {
    v32 = *(a1 + 8);
    if (*(a1 + 12) - v32 - (*(a1 + 22) ^ 1u) <= 7)
    {
      os_trace_blob_add_slow(a1, " private", 8uLL);
    }

    else
    {
      *(*a1 + v32) = 0x6574617669727020;
      v33 = *(a1 + 8) + 8;
      *(a1 + 8) = v33;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v33) = 0;
      }
    }
  }

  return os_trace_blob_addf(a1, " sz:%d]>", v20, v21, v22, v23, v24, v25, v8);
}

uint64_t _os_log_fmt_decode_masked_unknown(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 8) >= 3)
  {
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v9 = off_2787ADBF8[(a4 - 8)];
    return os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, a2);
  }

  return result;
}

id _OSLogFailWithPOSIXError(id result, void *a2)
{
  if (a2)
  {
    result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:result userInfo:0];
    *a2 = result;
  }

  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}