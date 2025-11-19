uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

id sub_1CEFF45EC(void *a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFF4768(a2, a3 & 0x1FF);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1CF7CFA08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CEFF4C14(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1CEFF4768(a2, a3 & 0x1FF);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 888 * v11;

    return sub_1CF1D5618(a1, v23);
  }

  else
  {
    sub_1CEFF5390(v11, a2, a3 | (((a3 >> 8) & 1) << 8), a1, v22);

    return sub_1CEFD0988(a2, a3, BYTE1(a3) & 1);
  }
}

unint64_t sub_1CEFF4768(void *a1, __int16 a2)
{
  v5 = *(v2 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v8, a1, a2 & 0x1FF);
  v6 = sub_1CF9E8228();

  return sub_1CEFF48B4(a1, a2 & 0x1FF, v6);
}

uint64_t sub_1CEFF47E0(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    MEMORY[0x1D386A470](1);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E69C8();
  }

  else
  {
    v4 = a3;
    MEMORY[0x1D386A470](0);
    if (v4)
    {
      if (v4 == 1)
      {
        MEMORY[0x1D386A470](1);
        return MEMORY[0x1D386A4A0](a2);
      }

      else
      {
        if (a2)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        return MEMORY[0x1D386A470](v6);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      return sub_1CF9E8208();
    }
  }
}

unint64_t sub_1CEFF48B4(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v9 = ~v5;
  v10 = a2 == 2;
  v11 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v10 = 0;
  }

  v29 = v10;
  v30 = v11;
  v12 = (a2 >> 8) & 1;
  v31 = v12;
  while (1)
  {
    v16 = *(v3 + 48) + 16 * v6;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v20 = v4;
    v21 = *v16;
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;
    if (v22 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v24 == v25)
    {
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(a1, a2, 1);

      sub_1CEFD0994(a1, a2, 1);
      goto LABEL_36;
    }

    v27 = sub_1CF9E8048();
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(a1, a2, 1);

    sub_1CEFD0994(a1, a2, 1);
    if (v27)
    {
      goto LABEL_36;
    }

    sub_1CEFD0994(v17, v18, 1);
    v4 = v20;
    v9 = v32;
    v3 = v33;
    LOBYTE(v12) = v31;
LABEL_10:
    v6 = (v6 + 1) & v9;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(*v16, *(v16 + 8), *(v16 + 9));
    sub_1CEFD0988(a1, a2, v12);
    sub_1CEFD0994(v17, v18, v19);
    v13 = a1;
    v14 = a2;
    v15 = v12;
LABEL_9:
    sub_1CEFD0994(v13, v14, v15);
    goto LABEL_10;
  }

  if (!*(v16 + 8))
  {
    if (!a2 && v17 == a1)
    {
      sub_1CEFD0988(*v16, 0, 0);
      sub_1CEFD0988(a1, 0, 0);
      v18 = 0;
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v18 == 1)
  {
    if (a2 == 1 && v17 == a1)
    {
      v18 = 1;
      sub_1CEFD0988(a1, 1, 0);
      sub_1CEFD0988(a1, 1, 0);
      v17 = a1;
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v17)
  {
    if (v30)
    {
      v18 = 2;
      sub_1CEFD0988(1, 2, 0);
      sub_1CEFD0988(1, 2, 0);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v29)
  {
LABEL_32:
    sub_1CEFD0988(v17, v18, 0);
    sub_1CEFD0988(a1, a2, 0);
    v13 = v17;
    v14 = v18;
    v15 = 0;
    goto LABEL_9;
  }

  v18 = 2;
  sub_1CEFD0988(0, 2, 0);
  sub_1CEFD0988(0, 2, 0);
  v17 = 0;
LABEL_36:
  sub_1CEFD0994(v17, v18, v19);
  return v6;
}

uint64_t sub_1CEFF4C14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B60, &qword_1CFA170F0);
  v46 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v44 = (v11 + 63) >> 6;
    v45 = v5;
    v14 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      if (v46)
      {
        v65 = *v23;
        v64 = *(v23 + 8);
        v24 = *(v23 + 9);
        v25 = v22 + 888 * v21;
        memcpy(__src, v25, sizeof(__src));
        v53 = *(v25 + 520);
        v54 = *(v25 + 521);
        v56 = *(v25 + 528);
        v57 = *(v25 + 544);
        v55 = *(v25 + 552);
        v47 = *(v25 + 536);
        v48 = *(v25 + 568);
        v58 = *(v25 + 560);
        v59 = *(v25 + 576);
        v49 = *(v25 + 584);
        v50 = *(v25 + 600);
        v60 = *(v25 + 592);
        v61 = *(v25 + 608);
        v62 = *(v25 + 624);
        v51 = *(v25 + 616);
        v52 = *(v25 + 632);
        v63 = *(v25 + 633);
        v26 = *(v25 + 634);
        v78 = *(v25 + 832);
        v79 = *(v25 + 848);
        v80 = *(v25 + 864);
        v81 = *(v25 + 880);
        v74 = *(v25 + 768);
        v75 = *(v25 + 784);
        v76 = *(v25 + 800);
        v77 = *(v25 + 816);
        v70 = *(v25 + 704);
        v71 = *(v25 + 720);
        v72 = *(v25 + 736);
        v73 = *(v25 + 752);
        v66 = *(v25 + 640);
        v67 = *(v25 + 656);
        v68 = *(v25 + 672);
        v69 = *(v25 + 688);
      }

      else
      {
        v27 = *v23;
        v28 = *(v23 + 8);
        v29 = v8;
        v30 = v13;
        v31 = *(v23 + 9);
        memcpy(__dst, (v22 + 888 * v21), sizeof(__dst));
        v63 = __dst[633];
        v52 = __dst[632];
        v61 = *&__dst[608];
        v62 = *&__dst[624];
        v60 = *&__dst[592];
        v50 = __dst[600];
        v51 = __dst[616];
        v49 = __dst[584];
        v58 = *&__dst[560];
        v59 = *&__dst[576];
        v57 = *&__dst[544];
        v55 = __dst[552];
        v56 = *&__dst[528];
        v47 = __dst[536];
        v48 = __dst[568];
        v53 = __dst[520];
        v54 = __dst[521];
        v65 = v27;
        v64 = v28;
        v32 = v28;
        v24 = v31;
        v13 = v30;
        v8 = v29;
        v26 = __dst[634];
        sub_1CEFD0988(v27, v32, v24);
        sub_1CEFF4514(__dst, &v66);
        memcpy(__src, __dst, sizeof(__src));
        v78 = *&__dst[832];
        v79 = *&__dst[848];
        v80 = *&__dst[864];
        v81 = *&__dst[880];
        v74 = *&__dst[768];
        v75 = *&__dst[784];
        v76 = *&__dst[800];
        v77 = *&__dst[816];
        v70 = *&__dst[704];
        v71 = *&__dst[720];
        v72 = *&__dst[736];
        v73 = *&__dst[752];
        v66 = *&__dst[640];
        v67 = *&__dst[656];
        v68 = *&__dst[672];
        v69 = *&__dst[688];
      }

      v33 = *(v8 + 40);
      sub_1CF9E81D8();
      if (v24)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v64)
        {
          if (v64 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v65);
          }

          else
          {
            if (v65)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            MEMORY[0x1D386A470](v34);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      result = sub_1CF9E8228();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *&__dst[197] = v78;
      *&__dst[213] = v79;
      *&__dst[229] = v80;
      *&__dst[245] = v81;
      *&__dst[133] = v74;
      *&__dst[149] = v75;
      *&__dst[165] = v76;
      *&__dst[181] = v77;
      *&__dst[69] = v70;
      *&__dst[85] = v71;
      *&__dst[101] = v72;
      *&__dst[117] = v73;
      *&__dst[5] = v66;
      *&__dst[21] = v67;
      *&__dst[37] = v68;
      *&__dst[53] = v69;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v8 + 48) + 16 * v15;
      *v16 = v65;
      *(v16 + 8) = v64;
      *(v16 + 9) = v24;
      v17 = *(v8 + 56) + 888 * v15;
      result = memcpy(v17, __src, 0x208uLL);
      *(v17 + 520) = v53;
      *(v17 + 521) = v54;
      *(v17 + 528) = v56;
      *(v17 + 536) = v47;
      *(v17 + 544) = v57;
      *(v17 + 552) = v55;
      *(v17 + 560) = v58;
      *(v17 + 568) = v48;
      *(v17 + 576) = v59;
      *(v17 + 584) = v49;
      *(v17 + 592) = v60;
      *(v17 + 600) = v50;
      *(v17 + 608) = v61;
      *(v17 + 616) = v51;
      *(v17 + 624) = v62;
      *(v17 + 632) = v52;
      *(v17 + 633) = v63;
      *(v17 + 634) = v26;
      *(v17 + 827) = *&__dst[192];
      *(v17 + 843) = *&__dst[208];
      *(v17 + 859) = *&__dst[224];
      *(v17 + 872) = *&__dst[237];
      *(v17 + 763) = *&__dst[128];
      *(v17 + 779) = *&__dst[144];
      *(v17 + 795) = *&__dst[160];
      *(v17 + 811) = *&__dst[176];
      *(v17 + 699) = *&__dst[64];
      *(v17 + 715) = *&__dst[80];
      *(v17 + 731) = *&__dst[96];
      *(v17 + 747) = *&__dst[112];
      *(v17 + 635) = *__dst;
      *(v17 + 651) = *&__dst[16];
      *(v17 + 667) = *&__dst[32];
      *(v17 + 683) = *&__dst[48];
      ++*(v8 + 16);
      v5 = v45;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v9 >= v44)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_46;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_46:
  *v3 = v8;
  return result;
}

void *sub_1CEFF5390(unint64_t a1, uint64_t a2, __int16 a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a5[6] + 16 * a1;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 9) = HIBYTE(a3) & 1;
  result = memcpy((a5[7] + 888 * a1), __src, 0x378uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CEFF5464@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1CEFF54BC@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v193 = a1;
  v173 = sub_1CF9E6118();
  v172 = *(v173 - 1);
  v3 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v175 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v160 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v160 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v179 = &v160 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v160 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v160 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v190 = &v160 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v160 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v185 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v191 = &v160 - v35;
  v36 = sub_1CF9E5FF8();
  v183 = *(v36 - 8);
  v184 = v36;
  v37 = *(v183 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v177 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v160 - v40;
  v41 = [v1 documentSize];
  if (!v41)
  {
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v41 = sub_1CF9E7548();
  }

  v187 = v5;
  v42 = v41;
  v178 = sub_1CF9E8198();

  v43 = fpfs_supports_vfs_ignore_permissions_iopolicy();
  v192 = v6;
  v189 = v24;
  v186 = v27;
  v181 = v13;
  v182 = v19;
  v180 = v10;
  if (v43)
  {
    v44 = ([v2 fileSystemFlags] << 7) & 0x100;
  }

  else
  {
    v44 = 292;
  }

  v45 = (32 * [v2 fileSystemFlags]) & 0x80;
  v188 = v45 & 0xFFFFFFBF | (([v2 &selRef_initWithPhotoLibraryURL_ + 7] & 1) << 6) | v44;
  v46 = [v2 itemID];
  v47 = [v46 identifier];

  v48 = *MEMORY[0x1E6967258];
  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;
  if (v49 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v51 == v52)
  {
    goto LABEL_8;
  }

  v53 = sub_1CF9E8048();

  if (v53)
  {
    goto LABEL_10;
  }

  v60 = [v2 itemID];
  v47 = [v60 identifier];

  v61 = *MEMORY[0x1E6967280];
  v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v64 = v63;
  if (v62 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v64 == v65)
  {
LABEL_8:

LABEL_10:
    v54 = v189;
    goto LABEL_11;
  }

  v66 = sub_1CF9E8048();

  v54 = v189;
  if ((v66 & 1) == 0)
  {
    v55 = v185;
    v56 = v183;
    goto LABEL_13;
  }

LABEL_11:
  v55 = v185;
  v56 = v183;
  if (!v188)
  {
    v188 = v44 | 0x1C0;
  }

LABEL_13:
  v57 = [v2 isPackage];
  v58 = v184;
  if (v57)
  {
    v59 = 0;
  }

  else if ([v2 isFolder])
  {
    v59 = 1;
  }

  else
  {
    v67 = [v2 contentType];
    v68 = v174;
    sub_1CF9E5F48();

    v69 = v177;
    sub_1CF9E5F18();
    LOBYTE(v67) = sub_1CF9E5FB8();
    v70 = *(v56 + 8);
    v70(v69, v58);
    v70(v68, v58);
    if (v67)
    {
      v59 = 2;
    }

    else
    {
      v71 = [v2 contentType];
      sub_1CF9E5F48();

      sub_1CF9E5FC8();
      LOBYTE(v71) = sub_1CF9E5FB8();
      v70(v69, v58);
      v70(v68, v58);
      if (v71)
      {
        v59 = 3;
      }

      else
      {
        v59 = 0;
      }
    }

    v55 = v185;
    v54 = v189;
  }

  if (([v2 isPackage] & 1) == 0 && !objc_msgSend(v2, sel_isFolder))
  {
    goto LABEL_31;
  }

  v72 = [v2 childItemCount];
  if (v72)
  {

LABEL_31:
    v73 = [v2 childItemCount];
    if (v73)
    {
      v74 = v73;
      LODWORD(v183) = [v73 unsignedIntValue];

      LODWORD(v177) = 0;
    }

    else
    {
      LODWORD(v183) = 0;
      LODWORD(v177) = 1;
    }

    goto LABEL_35;
  }

  LODWORD(v177) = 0;
  LODWORD(v183) = 65533;
LABEL_35:
  v75 = v187;
  v76 = [v2 creationDate];
  if (v76)
  {
    v77 = v76;
    sub_1CF9E5CB8();

    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  v79 = v192;
  v80 = *(v192 + 56);
  v80(v55, v78, 1, v75);
  v81 = v55;
  v82 = v191;
  sub_1CEFF67F4(v81, v191);
  sub_1CEFCCBDC(v82, v32, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v83 = *(v79 + 48);
  v184 = v79 + 48;
  if (v83(v32, 1, v75) == 1)
  {
    sub_1CEFCCC44(v32, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_48;
  }

  (*(v79 + 32))(v176, v32, v75);
  result = sub_1CF9E5C98();
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    return result;
  }

  if (fpfs_is_busy_date())
  {
    v185 = v83;
    v86 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v87 = v2;
    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E7298();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138543362;
      *(v90 + 4) = v87;
      *v91 = v87;
      v92 = v87;
      _os_log_impl(&dword_1CEFC7000, v88, v89, "🏗 Dropping busy date for remotely provided file %{public}@", v90, 0xCu);
      sub_1CEFCCC44(v91, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v91, -1, -1);
      v93 = v90;
      v54 = v189;
      MEMORY[0x1D386CDC0](v93, -1, -1);
    }

    (*(v172 + 8))(v175, v173);
    (*(v192 + 8))(v176, v75);
    v94 = v191;
    sub_1CEFCCC44(v191, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v80(v94, 1, 1, v75);
    v83 = v185;
  }

  else
  {
    (*(v192 + 8))(v176, v75);
  }

LABEL_48:
  v95 = [v2 extendedAttributes];
  if (v95 && (v96 = v95, v97 = sub_1CF9E6638(), v96, v98 = *(v97 + 16), , v98) && (v99 = [v2 extendedAttributes]) != 0)
  {
    v100 = v99;
    v176 = sub_1CF9E6638();
  }

  else
  {
    v176 = 0;
  }

  v101 = 0;
  if (v59 > 1)
  {
    if (v59 == 2)
    {
      v175 = 0;
LABEL_63:
      v108 = [v2 typeAndCreator];
      v109 = v187;
      if (v108)
      {
        v174 = [v2 typeAndCreator];
        LODWORD(v185) = 0;
        LODWORD(v172) = 0;
        v173 = 0;
      }

      else
      {
        LODWORD(v185) = 0;
        v174 = 0;
        v173 = 0;
        LODWORD(v172) = 1;
      }

      v171 = 1;
      goto LABEL_69;
    }
  }

  else
  {
    v101 = v59 != 0;
  }

  v102 = [v2 tags];
  if (v102)
  {
    v103 = v102;
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v104 = sub_1CF9E6D48();
  }

  else
  {
    v104 = 0;
  }

  v175 = sub_1CEFF6864(v104);
  if (!v101)
  {
    goto LABEL_63;
  }

  v105 = [v2 favoriteRank];
  if (v105)
  {
    v106 = v105;
    v173 = [v105 unsignedLongLongValue];

    v174 = 0;
    v171 = 0;
    LODWORD(v185) = 1;
    v107 = &v197;
  }

  else
  {
    v174 = 0;
    v173 = 0;
    LODWORD(v185) = 1;
    LODWORD(v172) = 1;
    v107 = &v196 + 4;
  }

  *(v107 - 64) = 1;
  v109 = v187;
LABEL_69:
  sub_1CEFCCBDC(v191, v190, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v110 = [v2 contentModificationDate];
  if (v110)
  {
    v111 = v186;
    v112 = v110;
    sub_1CF9E5CB8();

    v113 = 0;
  }

  else
  {
    v113 = 1;
    v111 = v186;
  }

  v114 = 1;
  v80(v111, v113, 1, v109);
  v164 = [v2 capabilities];
  v170 = [v2 fileSystemFlags];
  v169 = [v2 fileSystemFlags];
  v115 = [v2 lastUsedDate];
  v116 = v83;
  if (v115)
  {
    v117 = v115;
    sub_1CF9E5CB8();

    v114 = 0;
  }

  v118 = v178;
  v80(v54, v114, 1, v109);
  v119 = v59;
  v194 = v59;
  sub_1CEFF6A20(&v194, &v195);
  v120 = v195;
  v163 = [v2 isContentZoneRoot];
  v121 = [v2 isPackage];
  v122 = [v2 collaborationIdentifier];
  LODWORD(v178) = v120;
  if (v122)
  {
    v123 = v122;
    v162 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v187 = v124;
  }

  else
  {
    v162 = 0;
    v187 = 0;
  }

  v125 = v179;
  v126 = type metadata accessor for ItemMetadata();
  v127 = v193;
  v128 = &v193[v126[14]];
  *v128 = 0;
  v128[1] = 0;
  v168 = v128;
  v127[v126[17]] = 2;
  v179 = v126[23];
  v127[v179] = 6;
  v165 = v126[30];
  v80(&v127[v165], 1, 1, v109);
  v167 = &v127[v126[34]];
  v166 = xmmword_1CF9F4E20;
  *v167 = xmmword_1CF9F4E20;
  v129 = &v127[v126[38]];
  v130 = v185 | v121;
  *v129 = 0;
  v129[1] = 0;
  v161 = v129;
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v131 = v188 | 0x40;
    if ((v130 & 1) == 0)
    {
      v131 = v188;
    }
  }

  else
  {
    v132 = v188 | (v188 >> 2) & 0x40 | 0x80;
    if ((v130 & 1) == 0)
    {
      LOWORD(v132) = v188;
    }

    v131 = (4 * v132) & 0x100 | v132;
  }

  v133 = v193;
  *v193 = v119;
  v133[v126[20]] = 0;
  v133[v126[28]] = v121;
  v133[v126[29]] = v121;
  *&v133[v126[26]] = v118;
  *&v133[v126[27]] = 0;
  v134 = (*v133 == 1) | v121;
  v135 = v183;
  if (!((*v133 == 1) | v121 & 1))
  {
    v135 = 0;
  }

  v136 = v177;
  *(v133 + 1) = v135;
  v133[8] = v136 & 1 | ((v134 & 1) == 0);
  v137 = &v133[v126[37]];
  *v137 = 0;
  v137[4] = 1;
  *(v133 + 5) = v131;
  sub_1CEFCCBDC(v190, v125, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v116(v125, 1, v109) == 1)
  {
    v138 = v181;
    sub_1CF9E5C88();
    v139 = v116(v125, 1, v109);
    v140 = v192;
    v141 = v182;
    if (v139 != 1)
    {
      sub_1CEFCCC44(v125, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v140 = v192;
    v138 = v181;
    (*(v192 + 32))(v181, v125, v109);
    v141 = v182;
  }

  v142 = v164 & 0xE;
  v188 = v185 & v163;
  v143 = *(v140 + 32);
  v143(&v193[v126[7]], v138, v109);
  v144 = v186;
  sub_1CEFCCBDC(v186, v141, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v145 = v116(v141, 1, v109);
  v192 = v140 + 32;
  if (v145 == 1)
  {
    v146 = v180;
    sub_1CF9E5C88();
    sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v190, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v191, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v116(v141, 1, v109) != 1)
    {
      sub_1CEFCCC44(v141, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v144, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v190, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v191, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v146 = v180;
    v143(v180, v141, v109);
  }

  v147 = v142 == 0;
  v148 = v126[31];
  v149 = v193;
  v150 = &v193[v126[32]];
  v151 = v126[33];
  v152 = &v193[v126[35]];
  v143(&v193[v126[8]], v146, v109);
  v149[v126[9]] = v147;
  v149[v126[10]] = (v170 & 8) != 0;
  v149[v126[13]] = (v169 & 0x10) != 0;
  *&v149[v126[19]] = 0;
  v149[v126[21]] = v178;
  v149[v126[15]] = v188;
  v149[v126[16]] = 0;
  v149[v126[11]] = 0;
  v149[v126[12]] = 0;
  v149[v126[18]] = 0;
  sub_1CEFE4804(v189, &v149[v165]);
  *&v149[v148] = v175;
  *v150 = v173;
  v150[8] = v171;
  *&v149[v151] = v176;
  v153 = v168;
  v154 = v168[1];

  *v153 = 0;
  v153[1] = 0;
  v155 = v167;
  result = sub_1CEFE48D8(*v167, *(v167 + 1));
  *v155 = v166;
  *v152 = v174;
  v152[8] = v172;
  v149[v126[36]] = 0;
  if (v187)
  {
    if ((v187 & 0x2000000000000000) != 0)
    {
      v156 = HIBYTE(v187) & 0xF;
    }

    else
    {
      v156 = v162 & 0xFFFFFFFFFFFFLL;
    }

    if (v156)
    {
      v157 = v161;
      v158 = v187;
      *v161 = v162;
      v157[1] = v158;
    }

    else
    {
    }
  }

  v159 = v193;
  v193[v126[24]] = 0;
  v159[v126[25]] = 0;
  v159[v126[22]] = 0;
  v159[v179] = 6;
  return result;
}

uint64_t sub_1CEFF67F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1CEFF6864(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_21:

    v5 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      return v5;
    }

    goto LABEL_22;
  }

LABEL_20:
  v2 = sub_1CF9E7818();
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_4:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680B0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3869C30](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 label];
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;

      v12 = [v7 color];
      if ((v12 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v12 > 0xFF)
      {
        goto LABEL_19;
      }

      if (!v12)
      {
        LOBYTE(v12) = 1;
      }

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1CF680B0C((v13 > 1), v14 + 1, 1);
      }

      ++v4;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 24 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
    }

    while (v2 != v4);

    if (*(v16 + 16))
    {
      return v5;
    }

LABEL_22:

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEFF6A20@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*result - 1 < 2)
  {
    goto LABEL_5;
  }

  result = [v2 isUploaded];
  if (!result)
  {
    goto LABEL_5;
  }

  result = [v2 isExcludedFromSync];
  if (result)
  {
    goto LABEL_5;
  }

  result = [v2 capabilities];
  if ((result & 0x40) == 0)
  {
    goto LABEL_5;
  }

  sub_1CF06C190(v4);
  v6[12] = v4[12];
  v7 = v4[13];
  v8 = v4[14];
  v9 = v5;
  v6[8] = v4[8];
  v6[9] = v4[9];
  v6[10] = v4[10];
  v6[11] = v4[11];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[6] = v4[6];
  v6[7] = v4[7];
  v6[0] = v4[0];
  v6[1] = v4[1];
  v6[2] = v4[2];
  v6[3] = v4[3];
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v6);
  if (result == 1)
  {
    goto LABEL_7;
  }

  result = sub_1CEFCCC44(v4, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  if (v7 != 3 && v7 != 1002)
  {
    if (v7 == 500)
    {
LABEL_5:
      *a2 = 0;
      return result;
    }

LABEL_7:
    *a2 = 4;
    return result;
  }

  *a2 = 5;
  return result;
}

uint64_t sub_1CEFF6B78(uint64_t *a1, id obj)
{
  v3 = *a1;
  v9 = 0;
  v4 = objc_sync_enter(obj);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v8 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CEFF6CDC(obj, v3, &v9);
  v5 = objc_sync_exit(obj);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

uint64_t sub_1CEFF6CDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v21 = v5;
  while (v9)
  {
LABEL_12:
    sub_1CEFF6FC0(*(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))), v23);
    sub_1CEFF701C(v23, v22);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_5;
    }

    type metadata accessor for FPFSEnumerator();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
LABEL_5:
      result = sub_1CEFF70F4(v22);
      goto LABEL_6;
    }

    v15 = v14;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
    {
      if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8) != 1)
      {
        goto LABEL_19;
      }

      v24 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    }

    else
    {
      LODWORD(v24) = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    }

    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_19:
    sub_1CEFE4E68();
    v17 = sub_1CF9E7698();

    sub_1CEFF70F4(v22);
    if (v17)
    {
      v18 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator);
      result = swift_unknownObjectRelease();
      v19 = v18 == 1;
      v5 = v21;
      if (v19)
      {

        *a3 = 1;
        return result;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
      v5 = v21;
    }

LABEL_6:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FPFSEnumerator()
{
  result = qword_1EDEA7C48;
  if (!qword_1EDEA7C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEFF70C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CEFF7124(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CEFF7134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a5;
  v31 = a1;
  v33 = a3;
  v32 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v29 - v14;
  v16 = sub_1CF9E6068();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a4, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    v22 = a7;
    sub_1CF9E6048();
    if (v21(v15, 1, v16) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  (*(v17 + 16))(a8, v20, v16);
  v23 = type metadata accessor for Signpost(0);
  *(a8 + *(v23 + 20)) = a7;
  v24 = a8 + *(v23 + 24);
  v25 = v32;
  *v24 = v31;
  *(v24 + 8) = v25;
  *(v24 + 16) = v33;
  if (a6)
  {
    v29[1] = a7;

    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1CEFD51C4();
    *(v26 + 32) = v30;
    *(v26 + 40) = a6;
    sub_1CF9E6028();
  }

  else
  {
    v27 = a7;
    sub_1CF9E7468();
    sub_1CF9E6038();
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1CEFF7450(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

id sub_1CEFF74D0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69674A8]);
  v1 = sub_1CF9E6D28();
  v2 = sub_1CF9E6D28();
  v3 = [v0 initWithKeys:v1 values:v2];

  return v3;
}

uint64_t sub_1CEFF7560(int *a1, unsigned int a2, void *a3)
{
  v4 = a3[4];
  v5 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v67 = *(v70 + 84);
  if (v67)
  {
    v6 = v67 - 1;
  }

  else
  {
    v6 = 0;
  }

  v69 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v69 + 84);
  v54 = swift_getAssociatedTypeWitness();
  v68 = *(v54 - 8);
  v8 = *(v68 + 84);
  v53 = v8;
  if (v7 > v8)
  {
    v8 = v7;
  }

  v56 = v8;
  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v59 = v8;
  v60 = v7;
  v9 = v8 - 1;
  if (v6 > v9)
  {
    v9 = v6;
  }

  v62 = v6;
  v63 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = a3[5];
  v12 = a3[3];
  v66 = *(swift_getAssociatedTypeWitness() - 8);
  v72 = *(v66 + 84);
  if (v72)
  {
    v13 = v72 - 1;
  }

  else
  {
    v13 = 0;
  }

  v52 = swift_getAssociatedTypeWitness();
  v65 = *(v52 - 8);
  v14 = *(v65 + 84);
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = v15;
  v55 = v14;
  if (v14 <= *(v15 + 84))
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  v58 = v13;
  if (v13 <= v18 - 1)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  v61 = v10;
  if (v20 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = *(v68 + 80);
  v23 = *(v69 + 64);
  v24 = *(v15 + 80);
  v25 = *(v65 + 64);
  if (v67)
  {
    v26 = *(v70 + 64);
  }

  else
  {
    v26 = *(v70 + 64) + 1;
  }

  if (v72)
  {
    v27 = *(v66 + 64);
  }

  else
  {
    v27 = *(v66 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = *(v69 + 80) & 0xF8 | v22 | 7;
  v29 = v23 + 7;
  v30 = *(v65 + 80) & 0xF8 | v24 | 7;
  v31 = v30 | *(v66 + 80) & 0xF8;
  v32 = ((((((((v28 + ((((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28) + ((((*(v68 + 64) + ((v22 + 8 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v31 + 8;
  v33 = v27 + 7;
  v34 = ((((((((v30 + 9 + (((v33 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v30) + ((((*(v15 + 64) + ((v24 + 8 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a2)
  {
    v35 = ((((((v34 + (v32 & ~v31) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
    v36 = v35 & 0xFFFFFFF8;
    if ((v35 & 0xFFFFFFF8) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = a2 - v21 + 1;
    }

    if (v37 >= 0x10000)
    {
      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    if (v37 >= 2)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v40 = *(a1 + v35);
        if (v40)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v40 = *(a1 + v35);
        if (v40)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v39)
    {
      v40 = *(a1 + v35);
      if (v40)
      {
LABEL_55:
        v41 = v40 - 1;
        if (v36)
        {
          v41 = 0;
          v42 = *a1;
        }

        else
        {
          v42 = 0;
        }

        return v21 + (v42 | v41) + 1;
      }
    }
  }

  if (v63 == v21)
  {
    if (v62 == v61)
    {
      if (v67 >= 2)
      {
        v43 = (*(v70 + 48))(a1, v67, AssociatedTypeWitness);
        goto LABEL_90;
      }

      return 0;
    }

    v46 = (((((a1 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 9) & ~v28;
    if (v60 == v59)
    {
      v43 = (*(v69 + 48))(v46);
      goto LABEL_90;
    }

    v49 = ((v29 + v46) & 0xFFFFFFFFFFFFFFF8);
    if (v56 <= 0x7FFFFFFE)
    {
      v50 = *v49;
LABEL_83:
      if (v50 >= 0xFFFFFFFF)
      {
        LODWORD(v50) = -1;
      }

      if ((v50 + 1) >= 2)
      {
        v43 = v50;
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_90;
    }

    v43 = (*(v68 + 48))((v49 + v22 + 8) & ~v22, v53, v54);
    goto LABEL_90;
  }

  v44 = (a1 + v32) & ~v31;
  if (v19 == v21)
  {
    if (v58 == v20)
    {
      if (v72 < 2)
      {
        return 0;
      }

      v43 = (*(v66 + 48))(v44);
    }

    else
    {
      v48 = (v30 + 9 + ((((v33 + v44) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v30;
      if (v55 == v18)
      {
        v43 = (*(v65 + 48))(v48, v55, v52);
      }

      else
      {
        v51 = ((v25 + 7 + v48) & 0xFFFFFFFFFFFFFFF8);
        if (v17 <= 0x7FFFFFFE)
        {
          v50 = *v51;
          goto LABEL_83;
        }

        v43 = (*(v16 + 48))((v51 + v24 + 8) & ~v24);
      }
    }

LABEL_90:
    if (v43 >= 2)
    {
      return v43 - 1;
    }

    else
    {
      return 0;
    }
  }

  v47 = *(((v34 + v44) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v47 >= 0xFFFFFFFF)
  {
    LODWORD(v47) = -1;
  }

  return (v47 + 1);
}

void sub_1CEFF7CA4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[4];
  v6 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v75 = v83;
  v76 = AssociatedTypeWitness;
  v91 = *(v83 + 84);
  if (v91)
  {
    v8 = v91 - 1;
  }

  else
  {
    v8 = 0;
  }

  v71 = swift_getAssociatedTypeWitness();
  v79 = *(v71 - 8);
  v89 = v79;
  v9 = *(v79 + 84);
  v69 = swift_getAssociatedTypeWitness();
  v82 = *(v69 - 8);
  v10 = *(v82 + 84);
  v68 = v10;
  if (v9 > v10)
  {
    v10 = v9;
  }

  v70 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  v73 = v9;
  v74 = v10;
  v11 = v10 - 1;
  if (v8 > v11)
  {
    v11 = v8;
  }

  v77 = v8;
  v78 = v11;
  if (v11 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  v92 = v11;
  v12 = a4[5];
  v13 = a4[3];
  v72 = swift_getAssociatedTypeWitness();
  v85 = *(v72 - 8);
  v90 = *(v85 + 84);
  if (v90)
  {
    v14 = v90 - 1;
  }

  else
  {
    v14 = 0;
  }

  v67 = swift_getAssociatedTypeWitness();
  v81 = *(v67 - 8);
  v15 = *(v81 + 84);
  v16 = 0;
  v17 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = v17;
  v19 = *(v83 + 64);
  v20 = v79;
  v80 = v15;
  if (v15 <= *(v17 + 84))
  {
    v21 = *(v17 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = v21;
  }

  v84 = v14;
  if (v14 <= v22 - 1)
  {
    v23 = v22 - 1;
  }

  else
  {
    v23 = v14;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v82 + 80);
  v26 = *(v20 + 64);
  v27 = *(v17 + 80);
  v28 = *(v81 + 64);
  v29 = *(v17 + 64);
  if (v24 <= v92)
  {
    v30 = v92;
  }

  else
  {
    v30 = v24;
  }

  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

  if (v91)
  {
    v32 = v19;
  }

  else
  {
    v32 = v19 + 1;
  }

  v33 = *(v89 + 80) & 0xF8 | v25 | 7;
  v34 = v26 + 7;
  v35 = ((((*(v82 + 64) + ((v25 + 8 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v36 = *(v81 + 80) & 0xF8 | v27 | 7;
  v37 = v36 | *(v85 + 80) & 0xF8;
  v38 = ((((((((v33 + ((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v33) + v35 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v37 + 8;
  if (v90)
  {
    v39 = *(v85 + 64);
  }

  else
  {
    v39 = *(v85 + 64) + 1;
  }

  v40 = v28 + 7;
  v41 = ((((v29 + ((v27 + 8 + ((v28 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v42 = v39 + 7;
  v43 = (((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = v36 + 9;
  v45 = ((((((((v36 + 9 + v43) & ~v36) + v41 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v46 = ((((((v45 + (v38 & ~v37) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v31 < a3)
  {
    if (((((((v45 + (v38 & ~v37) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v47 = a3 - v31 + 1;
    }

    else
    {
      v47 = 2;
    }

    if (v47 >= 0x10000)
    {
      v48 = 4;
    }

    else
    {
      v48 = 2;
    }

    if (v47 < 0x100)
    {
      v48 = 1;
    }

    if (v47 >= 2)
    {
      v16 = v48;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v31)
  {
    if (((((((v45 + (v38 & ~v37) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v49 = a2 - v31;
    }

    else
    {
      v49 = 1;
    }

    if (((((((v45 + (v38 & ~v37) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v50 = ~v31 + a2;
      bzero(a1, ((((((v45 + (v38 & ~v37) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v50;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        *(a1 + v46) = v49;
      }

      else
      {
        *(a1 + v46) = v49;
      }
    }

    else if (v16)
    {
      *(a1 + v46) = v49;
    }

    return;
  }

  if (v16 > 1)
  {
    v51 = a1;
    if (v16 != 2)
    {
      *(a1 + v46) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_69;
    }

    *(a1 + v46) = 0;
  }

  else
  {
    v51 = a1;
    if (v16)
    {
      *(a1 + v46) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_69;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_69:
  if (v78 == v31)
  {
    v52 = ~v33;
    if (v92 < a2)
    {
      v53 = (((((v35 + ((((((v32 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v33 + 9) & v52) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v51, (v53 + 8));
        *v51 = ~v92 + a2;
      }

      return;
    }

    if (v77 == v92)
    {
      v58 = v76;
      v59 = *(v75 + 56);
      v60 = a2 + 1;
      v61 = v51;
      v62 = v91;
LABEL_100:

      v59(v61, v60, v62, v58);
      return;
    }

    v54 = ((((((v51 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v33 + 9) & v52);
    v57 = a2 - v74;
    if (a2 < v74)
    {
      v60 = a2 + 1;
      v62 = v73;
      if (v73 == v74)
      {
        v59 = *(v89 + 56);
        v61 = (((((v51 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v33 + 9) & v52;
        v58 = v71;
        goto LABEL_100;
      }

      v65 = ((v54 + v34) & 0xFFFFFFFFFFFFFFF8);
      if (v70 > 0x7FFFFFFE)
      {
        v59 = *(v82 + 56);
        v61 = (v65 + v25 + 8) & ~v25;
        v62 = v68;
        v58 = v69;
        goto LABEL_100;
      }

LABEL_106:
      if (a2 > 0x7FFFFFFD)
      {
        *v65 = 0;
        *v65 = a2 - 2147483646;
      }

      else
      {
        *v65 = v60;
      }

      return;
    }

    if (!v35)
    {
      return;
    }

    goto LABEL_95;
  }

  v54 = ((v51 + v38) & ~v37);
  if (v23 != v31)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v63 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v63 = a2 - 1;
    }

    *(((v54 + v45) & 0xFFFFFFFFFFFFFFF8) + 8) = v63;
    return;
  }

  v55 = ~v36;
  if (v24 < a2)
  {
    v56 = (((((v41 + ((v44 + (((v42 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v55) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
    v35 = (v56 + 8);
    if (v56 == -8)
    {
      return;
    }

    v57 = ~v24 + a2;
LABEL_95:
    v64 = v54;
    goto LABEL_96;
  }

  if (v84 == v24)
  {
    v59 = *(v85 + 56);
    v60 = a2 + 1;
    v61 = (v51 + v38) & ~v37;
    v62 = v90;
    v58 = v72;
    goto LABEL_100;
  }

  v54 = ((v44 + ((((v54 + v42) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v55);
  v57 = a2 - v22;
  if (a2 >= v22)
  {
    if (!v41)
    {
      return;
    }

    v64 = v54;
    v35 = v41;
LABEL_96:
    bzero(v64, v35);
    *v54 = v57;
    return;
  }

  v60 = a2 + 1;
  if (v80 == v22)
  {
    v59 = *(v81 + 56);
    v61 = v54;
    v62 = v80;
    v58 = v67;
    goto LABEL_100;
  }

  v65 = ((v54 + v40) & 0xFFFFFFFFFFFFFFF8);
  if (v21 <= 0x7FFFFFFE)
  {
    goto LABEL_106;
  }

  v66 = *(v18 + 56);

  v66((v65 + v27 + 8) & ~v27, v60);
}

uint64_t sub_1CEFF8538(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6)
{
  if (result <= 500)
  {
    if (result <= 2)
    {
      if ((result - 1) < 2)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_76;
      }

      goto LABEL_29;
    }

    if (result == 3)
    {
      goto LABEL_57;
    }

    if (result == 500)
    {
      goto LABEL_22;
    }

LABEL_76:

    return sub_1CF67DFC4(a4);
  }

  if (result > 1000)
  {
    if ((result - 1002) < 2)
    {
      goto LABEL_13;
    }

    if (result == 1001)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

  v6 = a5;
  v7 = a4;
  if (result != 501)
  {
    if (result == 502)
    {
      return result;
    }

    v8 = result == 1000;
LABEL_6:
    LOBYTE(a4) = v7;
    a5 = v6;
    if (!v8)
    {
      goto LABEL_76;
    }

LABEL_13:
    if ((a5 & 1) == 0)
    {
LABEL_14:
      if ((result - 1000) >= 3)
      {
        v9 = 502;
      }

      else
      {
        v9 = result - 999;
      }

      return sub_1CF67DF08(a4, v9);
    }

    return 500;
  }

  v10 = a2;
  v11 = a6;
  v12 = a3;
  v13 = fpfs_supports_indexAllRemoteItems();
  a3 = v12;
  a6 = v11;
  a2 = v10;
  a4 = v7;
  a5 = v6;
  if (v13)
  {
LABEL_29:
    if (a3)
    {
LABEL_30:
      if (qword_1EDEAB628 != -1)
      {
        v22 = a4;
        swift_once();
        LOBYTE(a4) = v22;
      }

      if ((dword_1EDEBBA40 - 1) < 2)
      {
        if ((a4 - 1) < 3u)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        v14 = 1;
        if ((a4 & 0xFE) != 2)
        {
          v14 = 2;
        }

        if (dword_1EDEBBA40 == 9)
        {
          v14 = 1;
        }

        if (dword_1EDEBBA40 == 3)
        {
          return 1;
        }

        else
        {
          return v14;
        }
      }
    }

    if (a2 > 500)
    {
      if (a2 <= 1000)
      {
        v6 = a5;
        v7 = a4;
        if (a2 != 501)
        {
          if (a2 != 502)
          {
            result = a2;
            v8 = a2 == 1000;
            goto LABEL_6;
          }

          return a2;
        }

        v16 = a6;
        v17 = fpfs_supports_indexAllRemoteItems();
        a4 = v7;
        if (v17)
        {
          goto LABEL_30;
        }

        a6 = v16;
        a5 = v6;
        a2 = 0;
        a3 = 1;
        goto LABEL_72;
      }

      if ((a2 - 1002) < 2)
      {
        result = a2;
        if ((a5 & 1) == 0)
        {
          goto LABEL_14;
        }

        return 500;
      }

      if (a2 != 1001)
      {
        goto LABEL_76;
      }

LABEL_25:
      if (a5)
      {
        return 500;
      }

      else
      {
        return 2;
      }
    }

    if (a2 <= 2)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2)
        {
          goto LABEL_76;
        }

        goto LABEL_30;
      }

      return a2;
    }

    if (a2 != 3)
    {
      if (a2 != 500)
      {
        goto LABEL_76;
      }

LABEL_22:
      if (a5)
      {
        return 500;
      }

      goto LABEL_30;
    }

LABEL_57:
    if ((a4 | 2) == 3)
    {
      return 3;
    }

    if (qword_1EDEAB628 != -1)
    {
      v23 = a4;
      swift_once();
      LOBYTE(a4) = v23;
    }

    v15 = 1;
    if (a4 != 2)
    {
      v15 = 2;
    }

    if ((dword_1EDEBBA40 - 1) <= 1)
    {
      return v15;
    }

    else
    {
      return 3;
    }
  }

LABEL_72:
  if (a3)
  {
    if ((a6 & 1) == 0 && (a5 & 1) == 0)
    {
      return 501;
    }

    goto LABEL_76;
  }

  v18 = a5;
  v19 = a6;
  v20 = sub_1CEFF8538(a2, 0, 1, a4, a5 & 1, a6 & 1);
  v21 = 501;
  if ((v19 | v18))
  {
    v21 = v20;
  }

  if (v20 == 3)
  {
    return 3;
  }

  else
  {
    return v21;
  }
}

id sub_1CEFF889C()
{
  v1 = [v0 itemID];
  v2 = [v1 identifier];

  return v2;
}

uint64_t sub_1CEFF88F4()
{
  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v0 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  if (v0 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CF9E8048();
  }

  return v5 & 1;
}

uint64_t sub_1CEFF89C0()
{
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v0 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  if (v0 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CF9E8048();
  }

  return v5 & 1;
}

uint64_t sub_1CEFF8A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2778, &unk_1CFA12990);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v29 = v7;
      sub_1CF9E69C8();
      v9 = sub_1CF9E8228();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = v19;
        if (v18 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1CF9E8048();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

__n128 sub_1CEFF8C90@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[88] = 1;
  v6[80] = 1;
  v7 = a1;
  v8.n128_u16[0] = 601;
  v8.n128_u64[1] = 0;
  LOWORD(v9) = 513;
  *(&v9 + 1) = a2;
  *v10 = 0;
  *&v10[8] = 601;
  *&v10[16] = 0;
  *&v10[24] = 513;
  v11[0] = a1;
  v11[1] = 0;
  v12 = 601;
  v13 = 0;
  v14 = 513;
  v15 = a2;
  v16 = 0;
  v17 = 601;
  v18 = 0;
  v19 = 513;
  sub_1CEFF8D38(&v7, v6);
  sub_1CEFF8D94(v11);
  v4 = *v10;
  *(a3 + 32) = v9;
  *(a3 + 48) = v4;
  *(a3 + 58) = *&v10[10];
  result = v8;
  *a3 = v7;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1CEFF8E18(void *a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  if (*(v1 + 8) != 1)
  {
    v2 = (v2 != 0) << 63;
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v2 = -v2;
  }

LABEL_7:
  v3 = [a1 bindLongParameter_];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v4;
}

uint64_t sub_1CEFF8EA0(uint64_t a1)
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  sub_1CEFF95C8(a1, v30);
  if (!v31)
  {
    sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v13 = [v1 bindObjectParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v12;
  }

  sub_1CEFE9EB8(v30, v32);
  sub_1CEFD1104(v32, v30);
  if (swift_dynamicCast())
  {
    (*(v4 + 32))(v8, v10, v3);
    sub_1CF9E5C98();
    v11 = [v1 bindDoubleParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    (*(v4 + 8))(v8, v3);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v12;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindDoubleParameter_];
LABEL_27:
    v15 = v14;
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindBooleanParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindCharParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindUnsignedCharParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindShortParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindUnsignedShortParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindIntegerParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v14 = [v1 bindUnsignedIntegerParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
LABEL_22:
    v14 = [v1 bindLongParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
LABEL_26:
    v14 = [v1 bindUnsignedLongParameter_];
    goto LABEL_27;
  }

  v17 = v1;
  if (swift_dynamicCast())
  {
    v18 = v28;
    v19 = v29;
    v20 = sub_1CF9E5B48();
    v21 = [v17 bindObjectParameter_];

    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CEFE4714(v18, v19);

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    sub_1CEFE42D4(v28, v29);
    v24 = sub_1CF9E5B48();
    sub_1CEFE4714(v22, v23);
    v25 = [v17 bindObjectParameter_];

    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CEFE4714(v22, v23);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v32);
        __swift_destroy_boxed_opaque_existential_1(v30);
        return 0;
      }

      v26 = sub_1CF9E6888();

      v27 = [v1 bindStringParameter_];

      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      goto LABEL_28;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CEFF95C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFF9674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 888))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 464);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CEFF96D0(void *a1)
{
  v2 = [a1 providerID];
  v3 = [v2 fp_isiCloudDriveIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 parentFormerIdentifier];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E6967160];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  if (v7 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v9 == v10)
  {

    return 0;
  }

  v12 = sub_1CF9E8048();

  if (v12)
  {
    return 0;
  }

LABEL_8:
  if ([a1 isContainer])
  {
    v13 = [a1 parentItemIdentifier];
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v17)
    {

LABEL_20:

      return 1;
    }

    v19 = sub_1CF9E8048();

    if (v19)
    {
      return 1;
    }
  }

  v20 = [a1 filename];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  if (v21 == 0x746E656D75636F44 && v23 == 0xE900000000000073)
  {
    goto LABEL_20;
  }

  v24 = sub_1CF9E8048();

  return v24 & 1;
}

uint64_t sub_1CEFF9944(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1CEFF9990(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1CEFF99E0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1CEFF9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CF9E57E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1CEFF9AE4(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  if (a1)
  {
    v25 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CFA00250;
    *(v13 + 32) = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1CEFFA3CC;
    *(v14 + 24) = v12;
    v15 = swift_allocObject();
    v16 = a4;
    v15[2] = sub_1CEFFA3C4;
    v15[3] = v14;
    v15[4] = v13;
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = 16;
    v17[4] = sub_1CEFFA3C4;
    v17[5] = v14;
    v18 = a1;
    swift_retain_n();
    v19 = v18;

    v20 = v16;
    v21 = a2;

    sub_1CEFD4024("decorate(_:options:completionHandler:)", 38, 2, sub_1CF9274EC, v15, sub_1CEFF9D84, v17);
  }

  else
  {

    v22 = a4;
    v23 = a2;
    sub_1CEFFA4F4(0, a2, v22, a5, a6);
  }
}

uint64_t sub_1CEFF9D14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CEFF9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF8F0DF0;
  *(v13 + 24) = v11;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1CF7AAF88("decorate(_:options:completionHandler:)", 38, 2, 2, sub_1CF8F6DD8, v13, sub_1CF8F6DAC, v12);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_71Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void *sub_1CEFFA068(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1CEFFA19C(void *a1, int64_t a2, char a3)
{
  result = sub_1CEFFA068(a1, a2, a3, *v3, &unk_1EC4C4730, &unk_1CFA16880, &unk_1EC4BFC10, &qword_1CF9FE510);
  *v3 = result;
  return result;
}

void sub_1CEFFA1DC(void *a1@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v6 = *(v2 + 8);
  v7 = *(*v2 + 16);
  if (v6 == v7)
  {
    goto LABEL_8;
  }

  if (v6 >= v7)
  {
    __break(1u);
  }

  else
  {
    v8 = *v2 + 16 * v6;
    v1 = *(v8 + 32);
    v3 = *(v8 + 40);
    v4 = *(v8 + 41);
    *(v2 + 8) = v6 + 1;
    v5 = *(v2 + 16);
    if (!(v5 >> 62))
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v15 = a1;
  v9 = sub_1CF9E7818();
  a1 = v15;
LABEL_7:
  v10 = *(v2 + 24);
  if (v10 == v9)
  {
LABEL_8:
    *(v2 + 32) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v11 = a1;
    sub_1CEFD0988(v1, v3, v4);
    v13 = MEMORY[0x1D3869C30](v10, v5);
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = a1;
  if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v5 + 8 * v10 + 32);
    sub_1CEFD0988(v1, v3, v4);
    v13 = v12;
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
LABEL_13:
      *(v2 + 24) = v14;
      *v11 = v1;
      *(v11 + 8) = v3;
      *(v11 + 9) = v4;
      v11[2] = v13;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1CEFFA334(char a1, unsigned __int16 a2, char a3)
{
  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    result = *MEMORY[0x1E6967238] | 0x2CLL;
    if (a1)
    {
      if ((~a2 & 0x140) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((a2 & 0x100) == 0)
    {
LABEL_17:
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    result |= 1uLL;
    goto LABEL_17;
  }

  if (a1)
  {
    if ((~a2 & 0x140) != 0)
    {
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      result = 44;
LABEL_18:
      result |= 2uLL;
LABEL_19:
      if ((a3 & 1) == 0)
      {
        return result;
      }

      return result | 0x10;
    }

LABEL_15:
    result = 44;
    goto LABEL_16;
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_15;
  }

  if ((a2 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  result = 44;
  if (a3)
  {
    return result | 0x10;
  }

  return result;
}

void sub_1CEFFA3D8(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1;
  v5 = sub_1CF9E7818();
  a1 = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v3 = MEMORY[0x1D3869C30](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v3 = *(a1 + 32);
LABEL_6:
  v6 = v3;
  a2();
}

void sub_1CEFFA4F4(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getErrorValue();
    v14 = Error.prettyDescription.getter(v42);
  }

  else
  {
    sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
    v14 = sub_1CF9E7598();
  }

  v15 = v14;
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = a1;
  v18 = v15;
  v19 = a3;
  v20 = a1;
  v21 = v19;
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E7298();

  v24 = os_log_type_enabled(v22, v23);
  v41 = v20;
  if (v24)
  {
    v36 = a2;
    v37 = a5;
    v38 = a4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v25 = 138412802;
    *(v25 + 4) = v21;
    *v26 = v21;
    *(v25 + 12) = 2080;
    v27 = v21;
    if (v20)
    {
      v28 = [v17 description];
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v30;
    }

    else
    {
      v31 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    v32 = sub_1CEFD0DF0(v29, v31, &v43);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v18;
    v26[1] = v18;
    v33 = v18;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "result of fetch id for %@: %s, %@", v25, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v26, -1, -1);
    v34 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D386CDC0](v34, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);

    (*(v39 + 8))(v13, v40);
    a4 = v38;
    a2 = v36;
  }

  else
  {

    (*(v39 + 8))(v13, v40);
  }

  a4(v41, a2);
}

uint64_t sub_1CEFFA838()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong session];

    v5 = v0[3];
    [v4 unregisterLifetimeExtensionForObject_];

    swift_unknownObjectRelease();
  }

  return swift_deallocClassInstance();
}

void sub_1CEFFAEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

id sub_1CEFFAF68(void *a1)
{
  v53 = a1;
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for LocalDomain();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E7388();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E7318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v45 = sub_1CF9E6448();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  v47 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue;
  v44 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CF9E63F8();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v21 = v45;
  (*(v14 + 16))(v18, v20, v45);
  (*(v8 + 16))(v46, v13, v7);
  (*(v49 + 104))(v48, *MEMORY[0x1E69E8098], v50);
  v22 = sub_1CF9E73B8();
  (*(v8 + 8))(v13, v7);
  (*(v14 + 8))(v20, v21);
  v23 = v52;
  *&v52[v47] = v22;
  v24 = v53;
  v25 = v53;
  v26 = v51;
  sub_1CEFFB72C(v24, v51);
  sub_1CEFFC48C(v26, v23 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, type metadata accessor for LocalDomain);
  v58.receiver = v23;
  v58.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v58, sel_init);
  sub_1CEFFC55C();
  sub_1CEFFC714();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1CF9E7948();
    v28 = MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA3F890);
    v55 = MEMORY[0x1D38683F0](v28);
    v29 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v29);

    v30 = v56;
    v31 = v57;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1CF9FA450;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1CEFD51C4();
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    sub_1CF9E6018();
  }

  v33 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v34 = sub_1CF9E6888();
  v35 = [v33 initWithSuiteName_];

  if (v35 && (v36 = sub_1CF9E6888(), v37 = [v35 BOOLForKey_], v35, v36, (v37 & 1) != 0) && (fpfs_set_vfs_parent_mtime_iopolicy() & 0x80000000) != 0)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1CF9E7948();

    v56 = 0xD00000000000002CLL;
    v57 = 0x80000001CFA3F860;
    v55 = MEMORY[0x1D38683F0](v39);
    v40 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v40);

    v41 = v56;
    v42 = v57;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1CF9FA450;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1CEFD51C4();
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
    sub_1CF9E6018();
  }

  else
  {
  }

  return v27;
}

uint64_t type metadata accessor for LocalDomain()
{
  result = qword_1EDEAA2F8;
  if (!qword_1EDEAA2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEFFB72C@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v33 - v10;
  v12 = [objc_opt_self() legacyDefaultManager];
  v13 = [v12 documentStorageURL];
  sub_1CF9E59D8();

  sub_1CEFFBA1C(v11);
  v15 = v5 + 8;
  v14 = *(v5 + 8);
  v14(v9, v4);
  if (a1)
  {
    a1 = a1;
    v16 = [a1 identifier];
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;

    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
    v20 = [a1 displayName];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    *(a2 + 32) = v21;
    *(a2 + 40) = v23;
    v24 = [a1 pathRelativeToDocumentStorage];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33[1] = v15;

    v25 = type metadata accessor for LocalDomain();
    v26 = a2 + *(v25 + 32);
    sub_1CF9E5958();

    *(a2 + *(v25 + 36)) = 0;
  }

  else
  {
    v27 = *MEMORY[0x1E6967178];
    *(a2 + 16) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(a2 + 24) = v28;
    *(a2 + 32) = 0x6C75616665645F5FLL;
    *(a2 + 40) = 0xEB000000005F5F74;
    v25 = type metadata accessor for LocalDomain();
    (*(v5 + 16))(a2 + *(v25 + 32), v11, v4);
    *(a2 + *(v25 + 36)) = 1;
  }

  type metadata accessor for LocalDomain();
  v29 = sub_1CEFFBB54(a2 + *(v25 + 32));
  v31 = v30;

  result = (v14)(v11, v4);
  *a2 = v31;
  *(a2 + 8) = v29;
  return result;
}

uint64_t sub_1CEFFBA1C@<X0>(uint64_t a1@<X8>)
{
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
  }

  sub_1CF9E5A18();
  v3 = sub_1CF9E6AE8();

  if (v3)
  {
    v4 = sub_1CF9E5A18();
    MEMORY[0x1D3868CC0](v4);

    sub_1CF9E58C8();
  }

  else
  {
    v6 = sub_1CF9E5A58();
    v7 = *(*(v6 - 8) + 16);

    return v7(a1, v1, v6);
  }
}

uint64_t sub_1CEFFBB54(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v58 = sub_1CF9E53C8();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6118();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_1CF9E5A18();
  v62 = objc_opt_self();
  v8 = 0;
  v59 = "can't clear trash info for ";
  v56 = (v2 + 8);
  memset(&v66[1], 0, sizeof(stat));
  v61 = "tainer.monitor.";
  v60 = 9939394;
  v64 = xmmword_1CF9FA450;
  while (1)
  {
    v9 = v8;
    v10 = [v62 defaultManager];
    v11 = sub_1CF9E5928();
    *&v66[0].st_dev = 0;
    v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v66];

    if (v12)
    {
      v13 = *&v66[0].st_dev;
    }

    else
    {
      v14 = *&v66[0].st_dev;
      v15 = sub_1CF9E57F8();

      swift_willThrow();
      *&v66[0].st_dev = 0;
      v66[0].st_ino = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001DLL, v59 | 0x8000000000000000);
      v16 = sub_1CF9E6888();
      v17 = [v16 fp_prettyPath];

      v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;

      MEMORY[0x1D3868CC0](v18, v20);

      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v67 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v21 = *&v66[0].st_dev;
      st_ino = v66[0].st_ino;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v23 = swift_allocObject();
      *(v23 + 16) = v64;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1CEFD51C4();
      *(v23 + 32) = v21;
      *(v23 + 40) = st_ino;
      sub_1CF9E6018();
    }

    v66[0] = v66[1];
    v24 = sub_1CF9E6978();
    v25 = lstat((v24 + 32), v66);

    if ((v25 & 0x80000000) == 0)
    {

      result = v66[0].st_dev;
      goto LABEL_20;
    }

    if (!MEMORY[0x1D38683F0](v26))
    {
      break;
    }

    if (MEMORY[0x1D38683F0]() == v60)
    {
      v27 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v28 = sub_1CF9E6138();
      if ((v28 & 0x100000000) != 0)
      {
        LODWORD(v67) = 22;
      }

      else
      {
        LODWORD(v67) = v28;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E824(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v30 = v57;
      v29 = v58;
      sub_1CF9E57D8();
      v27 = sub_1CF9E53A8();
      (*v56)(v30, v29);
    }

    swift_willThrow();
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000020, v61 | 0x8000000000000000);
    v31 = sub_1CF9E6888();
    v32 = [v31 fp_prettyPath];

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;

    MEMORY[0x1D3868CC0](v33, v35);

    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v65 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    v36 = v67;
    v37 = v68;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v38 = swift_allocObject();
    *(v38 + 16) = v64;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = sub_1CEFD51C4();
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    sub_1CF9E6018();

    v8 = 1;
    if (v9)
    {

      result = 0;
LABEL_20:
      v40 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1CF9E7948();

  v67 = 0xD00000000000001ALL;
  v68 = 0x80000001CFA2DF30;
  LODWORD(v65) = v25;
  v41 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v41);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v42 = v67;
  v43 = v68;
  v44 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v45 = sub_1CF9E6108();
  v46 = sub_1CF9E72B8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v67 = v48;
    *v47 = 136315650;
    v49 = sub_1CF9E7988();
    v51 = sub_1CEFD0DF0(v49, v50, &v67);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 315;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_1CEFD0DF0(v42, v43, &v67);
    _os_log_impl(&dword_1CEFC7000, v45, v46, "[ASSERT] ‼️  %s:%lu: %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
  }

  (*(v54 + 8))(v53, v55);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CEFFC48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFC4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CEFFC55C()
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CF9FA450;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1CEFD51C4();
  *(v0 + 32) = 0xD00000000000002DLL;
  *(v0 + 40) = 0x80000001CFA3F910;
  sub_1CF9E6018();

  v1 = [objc_opt_self() legacyDefaultManager];
  v2 = *MEMORY[0x1E6967298];
  v4[4] = nullsub_1;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1CF00A468;
  v4[3] = &block_descriptor_376;
  v3 = _Block_copy(v4);
  [v1 signalEnumeratorForContainerItemIdentifier:v2 completionHandler:v3];
  _Block_release(v3);
}

void sub_1CEFFC714()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1CF9E6888();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      type metadata accessor for LocalItem(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, sel_isUploadedTestingImpl);
      if (!InstanceMethod)
      {
        __break(1u);
        goto LABEL_13;
      }

      v7 = InstanceMethod;
      Implementation = method_getImplementation(InstanceMethod);
      TypeEncoding = method_getTypeEncoding(v7);
      class_addMethod(ObjCClassFromMetadata, sel_isUploaded, Implementation, TypeEncoding);
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1CF9E6888();
  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    return;
  }

  v13 = sub_1CF9E6888();
  v14 = [v12 BOOLForKey_];

  if (!v14)
  {
    return;
  }

  type metadata accessor for LocalItem(0);
  v15 = swift_getObjCClassFromMetadata();
  v16 = class_getInstanceMethod(v15, sel_isDownloadedTestingImpl);
  if (!v16)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = method_getImplementation(v16);
  v19 = method_getTypeEncoding(v17);

  class_addMethod(v15, sel_isDownloaded, v18, v19);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1CEFFCAE4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  v9 = a5(v7);

  return v9;
}

uint64_t sub_1CEFFCBA8(void *a1)
{
  sub_1CF9E7948();

  v18[0] = 0xD000000000000010;
  v18[1] = 0x80000001CFA3F5C0;
  v15 = a1;
  v2 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v2);

  v3 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CF9FA440;
  v19 = v3;
  sub_1CEFFD0A8();
  v5 = sub_1CF9E7718();
  v14 = v3;
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD000000000000010;
  *(v4 + 80) = 0x80000001CFA3F5C0;
  sub_1CF9E6018();

  sub_1CEFFD0FC(v15, v16, v18);
  sub_1CF9E7298();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CF9FA450;
  v19 = v14;
  v11 = sub_1CF9E7718();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = v9;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CF9E6018();
  if (v17)
  {
  }

  return v18[0];
}

uint64_t sub_1CEFFCE80()
{
  v7 = 0;
  if (qword_1EDEA8510 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDEA8518;
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1CEFFD084;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_26;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

uint64_t sub_1CEFFD05C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1CEFFD084()
{
  v1 = qword_1EDEA7CB8;
  **(v0 + 16) = qword_1EDEA7CB8;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_1EDEA7CB8 = v1 + 1;
  }
}

unint64_t sub_1CEFFD0A8()
{
  result = qword_1EDEAB4F0;
  if (!qword_1EDEAB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB4F0);
  }

  return result;
}

id sub_1CEFFD0FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LocalDomain();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEFFD30C(a2 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v9, type metadata accessor for LocalDomain);
  v10 = sub_1CEFFD444(a1, v9);
  if (v10)
  {
    v11 = v10;
    v20 = 0x20646E756F66;
    v21 = 0xE600000000000000;
    v12 = [v10 description];
    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    MEMORY[0x1D3868CC0](v13, v15);

    v16 = v20;
    v17 = v21;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1CF9FA450;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1CEFD51C4();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_1CF9E6018();

    *a3 = v11;
  }

  else
  {
    result = FPItemNotFoundError();
    if (result)
    {
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CEFFD30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFD374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFD3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1CEFFD444(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LocalDomain();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11F0, &unk_1CFA084F0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v48 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v42 - v19;
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v42 - v26;
  sub_1CEFFD89C(a2, 1, a1, v11);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v28 - 8) + 48))(v11, 1, v28) == 1)
  {
    sub_1CF000630(a2, type metadata accessor for LocalDomain);

    sub_1CEFCCC44(v11, &qword_1EC4BF5F8, &qword_1CFA01DB8);
  }

  else
  {
    v29 = *(v28 + 48);
    v44 = a2;
    v45 = v7;
    v43 = v25;
    v30 = v47;
    v31 = *(v47 + 48);
    v46 = a1;
    v32 = *(v21 + 32);
    v32(v14, v11, v20);
    sub_1CEFE55D0(&v11[v29], &v14[v31], &unk_1EC4BEC00, &unk_1CF9FCB60);
    v33 = *(v30 + 48);
    v32(v27, v14, v20);
    v34 = v49;
    sub_1CEFE55D0(&v14[v33], v49, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v35 = v43;
    (*(v21 + 16))(v43, v27, v20);
    v36 = v44;
    v37 = v45;
    sub_1CF001614(v44, v45, type metadata accessor for LocalDomain);
    v38 = v48;
    sub_1CEFCCBDC(v34, v48, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v39 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v40 = sub_1CF001704(v35, v37, v38);

    sub_1CF000630(v36, type metadata accessor for LocalDomain);
    sub_1CEFCCC44(v34, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v21 + 8))(v27, v20);
    result = v40;
    if (v40)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1CEFFD89C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v150 = a2;
  v158 = a4;
  v169 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v152 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v145 = (&v144 - v11);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v156 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v144 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v153 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v147 = &v144 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v149 = (&v144 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v144 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v154 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v146 = &v144 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v148 = &v144 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v144 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v144 - v39;
  v157 = a1;
  v163 = sub_1CEFFEB98();
  v159 = v13;
  v160 = v12;
  v41 = v40;
  v42 = v40;
  v43 = v6;
  v44 = v7;
  v155 = *(v13 + 56);
  v155(v42, 1, 1, v12);
  v45 = *(v7 + 7);
  v162 = v27;
  v45(v27, 1, 1, v43);
  v46 = *MEMORY[0x1E6967258];
  v161 = a3;
  v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v48;
  if (v47 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v49 == v50)
  {

LABEL_5:
    sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
    v52 = type metadata accessor for LocalDomain();
    v53 = v159;
    v54 = v160;
    (*(v159 + 16))(v41, v157 + *(v52 + 32), v160);
    v155(v41, 0, 1, v54);
    v55 = v162;
LABEL_6:
    v56 = v156;
    goto LABEL_7;
  }

  v51 = sub_1CF9E8048();

  if (v51)
  {
    goto LABEL_5;
  }

  v58 = *MEMORY[0x1E6967280];
  v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v61 = v60;
  if (v59 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v61 == v62)
  {
  }

  else
  {
    v71 = sub_1CF9E8048();

    if ((v71 & 1) == 0)
    {
      v101 = sub_1CF7E2BAC();
      if (v102)
      {
        v103 = sub_1CF7E2CEC();
        if ((v103 & 0x100000000) != 0)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v117 = sub_1CF9E6AE8();

          v55 = v162;
          v53 = v159;
          v54 = v160;
          v56 = v156;
          if (v117)
          {
            v151 = v44;
            v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v120 = sub_1CF4F5F14(1uLL, v118, v119);
            v122 = v121;
            v124 = v123;
            v126 = v125;

            v127 = MEMORY[0x1D3868C10](v120, v122, v124, v126);
            v129 = v128;

            v130 = type metadata accessor for LocalContainerMonitor(0);
            v131 = v130;
            if (qword_1EDEA56B8 != -1)
            {
              v130 = swift_once();
            }

            MEMORY[0x1EEE9AC00](v130);
            v132 = v157;
            *(&v144 - 2) = v131;
            *(&v144 - 1) = v132;
            v133 = sub_1CF9E7398();
            v134 = v164;
            v135 = *(v164 + OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue);
            MEMORY[0x1EEE9AC00](v133);
            *(&v144 - 4) = v134;
            *(&v144 - 3) = v127;
            *(&v144 - 2) = v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF640, qword_1CFA01DD8);
            sub_1CF9E7398();

            v136 = v164;
            if (v164)
            {
              v137 = [v164 documentsURL];

              v138 = v146;
              sub_1CF9E59D8();

              sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
              v139 = 0;
              v55 = v162;
              v53 = v159;
              v56 = v156;
              v44 = v151;
            }

            else
            {
              sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);

              v139 = 1;
              v55 = v162;
              v53 = v159;
              v56 = v156;
              v44 = v151;
              v138 = v146;
            }

            v54 = v160;
            v155(v138, v139, 1, v160);
            sub_1CF007D78(v138, v41);
          }
        }

        else
        {
          v104 = v103;
          type metadata accessor for LocalFileProvider(0);
          sub_1CF313858(v104, &v164);
          v105 = v164;
          v106 = v165;
          v151 = v7;
          v108 = v166;
          v107 = v167;
          v109 = v168;
          v146 = v168;
          type metadata accessor for VFSFileTree(0);
          v164 = v105;
          v165 = v106;
          v166 = v108;
          v167 = v107;
          v168 = v109;
          v110 = v149;
          sub_1CF7DFDE0(v104, &v164, v163, v150, 0, v149);
          v111 = v108;
          v44 = v151;
          sub_1CF1E6520(v105, v106, v111, v107, v146);
          v55 = v162;
          sub_1CF7E2E40(v110, v162);
          v112 = v147;
          sub_1CEFCCBDC(v55, v147, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v113 = *(v44 + 6);
          if (v113(v112, 1, v43) == 1)
          {
            sub_1CEFCCC44(v112, &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          else
          {
            v140 = v112;
            v141 = v145;
            sub_1CF5634F4(v140, v145);
            sub_1CF0082A0(v141, v157);
            sub_1CF574A68(v141);
          }

          v54 = v160;
          v142 = v148;
          v143 = v113(v55, 1, v43);
          v56 = v156;
          if (v143)
          {
            sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
            v155(v142, 1, 1, v54);
          }

          else
          {
            sub_1CF25116C(v142);
            sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          v53 = v159;
          sub_1CF007D78(v142, v41);
        }
      }

      else
      {
        v114 = v101;
        type metadata accessor for VFSFileTree(0);
        v115 = v149;
        sub_1CF7DD394(v114, v163, v150, 0, v149);
        v55 = v162;
        sub_1CF7E2E40(v115, v162);
        v116 = (*(v44 + 6))(v55, 1, v43);
        v56 = v156;
        if (v116)
        {
          sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
          v155(v38, 1, 1, v160);
        }

        else
        {
          sub_1CF25116C(v38);
          sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        v53 = v159;
        sub_1CF007D78(v38, v41);
        v54 = v160;
      }

LABEL_7:
      if (sub_1CF0012A0())
      {
        v57 = v153;
        sub_1CEFCCBDC(v55, v153, &unk_1EC4BEC00, &unk_1CF9FCB60);
        if ((*(v44 + 6))(v57, 1, v43) == 1)
        {
          sub_1CEFCCC44(v57, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          v63 = v55;
          v64 = v152;
          sub_1CF5634F4(v57, v152);
          if (*(v64 + *(v43 + 40)))
          {
            v164 = 0;
            v165 = 0xE000000000000000;
            sub_1CF9E7948();

            v164 = 0xD000000000000018;
            v165 = 0x80000001CFA5B460;
            v65 = sub_1CF255338();
            MEMORY[0x1D3868CC0](v65);

            v66 = v164;
            v67 = v165;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1CF9FA450;
            *(v68 + 56) = MEMORY[0x1E69E6158];
            *(v68 + 64) = sub_1CEFD51C4();
            *(v68 + 32) = v66;
            *(v68 + 40) = v67;
            sub_1CF9E6018();

            sub_1CF574A68(v64);
            sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
            (*(*(v69 - 8) + 56))(v158, 1, 1, v69);
            v70 = v63;
            goto LABEL_32;
          }

          sub_1CF574A68(v64);
          v55 = v63;
        }
      }

      v80 = v154;
      sub_1CEFCCBDC(v41, v154, &unk_1EC4BE310, qword_1CF9FCBE0);
      if ((*(v53 + 48))(v80, 1, v54) == 1)
      {
        sub_1CEFCCC44(v80, &unk_1EC4BE310, qword_1CF9FCBE0);
        v81 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v82 = sub_1CF9E6888();
        v79 = [v81 initWithDomain:v82 code:-1005 userInfo:0];

        swift_willThrow();

        goto LABEL_26;
      }

      v89 = *(v53 + 32);
      v89(v56, v80, v54);
      v164 = 0;
      v165 = 0xE000000000000000;
      sub_1CF9E7948();

      v164 = 0x6465766C6F736572;
      v165 = 0xE900000000000020;
      v90 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v90);

      MEMORY[0x1D3868CC0](0x22206F7420, 0xE500000000000000);
      v91 = sub_1CF9E5A18();
      MEMORY[0x1D3868CC0](v91);

      MEMORY[0x1D3868CC0](34, 0xE100000000000000);
      v92 = v164;
      v93 = v165;
      v94 = v56;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1CF9FA450;
      *(v95 + 56) = MEMORY[0x1E69E6158];
      *(v95 + 64) = sub_1CEFD51C4();
      *(v95 + 32) = v92;
      *(v95 + 40) = v93;
      sub_1CF9E6018();

      sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
      v97 = *(v96 + 48);
      v98 = v158;
      v89(v158, v94, v54);
      v99 = v162;
      sub_1CEFCCBDC(v162, &v98[v97], &unk_1EC4BEC00, &unk_1CF9FCB60);
      (*(*(v96 - 8) + 56))(v98, 0, 1, v96);
      v70 = v99;
LABEL_32:
      result = sub_1CEFCCC44(v70, &unk_1EC4BEC00, &unk_1CF9FCB60);
      goto LABEL_33;
    }
  }

  v72 = *(type metadata accessor for LocalDomain() + 32);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v73 = v151;
  sub_1CF9E5958();
  v74 = [objc_opt_self() defaultManager];
  v75 = sub_1CF9E5928();
  v164 = 0;
  v76 = [v74 createDirectoryAtURL:v75 withIntermediateDirectories:1 attributes:0 error:&v164];

  v54 = v160;
  if (v76)
  {
    v77 = v164;
    sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
    v53 = v159;
    (*(v159 + 32))(v41, v73, v54);
    v155(v41, 0, 1, v54);
    v55 = v162;
    goto LABEL_6;
  }

  v78 = v164;
  v79 = sub_1CF9E57F8();

  swift_willThrow();

  (*(v159 + 8))(v73, v54);
  v55 = v162;
LABEL_26:
  sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCC44(v55, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v164 = 0;
  v165 = 0xE000000000000000;
  sub_1CF9E7948();

  v164 = 0xD000000000000012;
  v165 = 0x80000001CFA5B440;
  v83 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v83);

  v84 = v164;
  v85 = v165;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CF9FA450;
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 64) = sub_1CEFD51C4();
  *(v86 + 32) = v84;
  *(v86 + 40) = v85;
  sub_1CF9E6018();

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  result = (*(*(v87 - 8) + 56))(v158, 1, 1, v87);
LABEL_33:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CEFFEB98()
{
  v1 = v0;
  v2 = sub_1CF9E5868();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v41 - v7;
  v48 = sub_1CF9E5A58();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = *(type metadata accessor for LocalDomain() + 32);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  sub_1CF9E5958();
  v15 = *MEMORY[0x1E6967578];
  v16 = *(MEMORY[0x1E6967578] + 16);
  v51 = *(MEMORY[0x1E6967578] + 17);
  LODWORD(v52) = v16;
  v50 = *(MEMORY[0x1E6967578] + 18);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  v18 = swift_allocObject();
  v54 = xmmword_1CF9FA450;
  *(v18 + 16) = xmmword_1CF9FA450;
  v19 = *v1;
  *(v18 + 32) = *v1;
  v47 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v20 = *(v8 + 72);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v14;
  v24 = v22;
  *(v22 + 16) = v54;
  v49 = v8;
  v25 = *(v8 + 16);
  v46 = v21;
  v26 = v22 + v21;
  v27 = v48;
  v25(v26, v1 + v23, v48);
  _Block_copy(v15);
  v28 = sub_1CEFFF0B4();
  v55 = v24;
  sub_1CF000FB8(v28);
  v29 = v55;
  v30 = v53;
  *&v54 = v13;
  v25(v53, v13, v27);
  v31 = type metadata accessor for VFSLookupScope();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  *(v34 + 40) = 0;
  *(v34 + 48) = 1;
  *(v34 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v34 + 16) = v47;
  if (*(v18 + 16))
  {
    v35 = v19;
  }

  else
  {
    v35 = 0;
  }

  *(v34 + 24) = v35;
  *(v34 + 32) = v18;
  *(v34 + 40) = 0;
  *(v34 + 48) = 1;
  *(v34 + 56) = 0;
  *(v34 + 64) = sub_1CF4F6888;
  *(v34 + 72) = v17;
  *(v34 + 80) = *(MEMORY[0x1E6967578] + 8);
  v36 = v51;
  *(v34 + 88) = v52;
  *(v34 + 89) = v36;
  *(v34 + 90) = v50;
  v37 = *(v29 + 16);
  v52 = v17;

  if (v37)
  {
    v25(v34 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, (v29 + v46), v27);
    v38 = v49;
  }

  else
  {
    v39 = v49;
    (*(v49 + 56))(v42, 1, 1, v27);
    (*(v44 + 104))(v43, *MEMORY[0x1E6968F70], v45);
    sub_1CF9E5A38();
    v38 = v39;
  }

  (*(v38 + 8))(v54, v27);
  *(v34 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v29;
  (*(v38 + 32))(v34 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v30, v27);
  *(v34 + 49) = 0;
  return v34;
}

uint64_t sub_1CEFFF07C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t *sub_1CEFFF0B4()
{
  v29 = type metadata accessor for LocalContainer(0);
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalContainerSnapshot(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalContainerMonitor(0);
  v15 = v14;
  if (qword_1EDEA56B8 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v14);
  v27[-2] = v15;
  v27[-1] = v0;
  sub_1CF9E7398();
  v16 = v30;
  sub_1CEFFF6AC(v13);

  v17 = *&v13[*(v10 + 32)];

  sub_1CF000CD0(v13, type metadata accessor for LocalContainerSnapshot);
  v18 = *(v17 + 16);
  if (v18)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1CF000F0C(0, v18, 0);
    v19 = v30;
    v20 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v27[0] = v17;
    v21 = v17 + v20;
    v22 = *(v1 + 72);
    v27[1] = v6 + 32;
    v28 = v22;
    do
    {
      sub_1CF000F50(v21, v4, type metadata accessor for LocalContainer);
      (*(v6 + 16))(v9, &v4[*(v29 + 28)], v5);
      sub_1CF000CD0(v4, type metadata accessor for LocalContainer);
      v30 = v19;
      v23 = v5;
      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        sub_1CF000F0C(v24 > 1, v25 + 1, 1);
        v19 = v30;
      }

      v19[2] = v25 + 1;
      (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v9, v23);
      v21 += v28;
      --v18;
      v5 = v23;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

id sub_1CEFFF4C4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA56D0 != -1)
  {
    swift_once();
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v10 = off_1EDEA56E0;
  if (*(off_1EDEA56E0 + 2) && (v11 = sub_1CEFE4328(v9, v8), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    swift_endAccess();
    *a2 = v13;
    return v13;
  }

  else
  {
    swift_endAccess();
    sub_1CEFFD374(a1, v7, type metadata accessor for LocalDomain);
    v15 = objc_allocWithZone(type metadata accessor for LocalContainerMonitor(0));
    v16 = sub_1CF4EE4F4(v7);
    swift_beginAccess();

    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1EDEA56E0;
    off_1EDEA56E0 = 0x8000000000000000;
    sub_1CF1D2600(v17, v9, v8, isUniquelyReferenced_nonNull_native);

    off_1EDEA56E0 = v19;
    result = swift_endAccess();
    *a2 = v17;
  }

  return result;
}

uint64_t sub_1CEFFF6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalDomain();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = type metadata accessor for LocalContainer(0);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v48 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = sub_1CF9E5D98();
  v51 = *(v22 - 8);
  v52 = v22;
  (*(v51 + 56))(v21, 1, 1);
  v60 = MEMORY[0x1E69E7CC0];
  v23 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v1;
  v24[4] = &v60;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CEFFFD54;
  *(v25 + 24) = v24;
  v50 = v24;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_21;
  v26 = _Block_copy(aBlock);
  v27 = v1;

  dispatch_sync(v23, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v56 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
    v57 = v27;
    sub_1CEFFD374(v27 + OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain, v8, type metadata accessor for LocalDomain);
    sub_1CF000318(v8, v14);
    v23 = sub_1CF0008CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    isEscapingClosureAtFileLocation = v23[2].isa;
    isa = v23[3].isa;
    v27 = (isEscapingClosureAtFileLocation + 1);
    v26 = v8;
    v48 = v19;
    v49 = v21;
    if (isEscapingClosureAtFileLocation < isa >> 1)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_1CF0008CC(isa > 1, v27, 1, v23);
LABEL_3:
  v23[2].isa = v27;
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v30 = *(v54 + 72);
  sub_1CF0008F4(v14, v23 + v55 + v30 * isEscapingClosureAtFileLocation, type metadata accessor for LocalContainer);
  v31 = v60;
  if (v60 >> 62)
  {
    v32 = sub_1CF9E7818();
    if (!v32)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_14;
    }
  }

  if (v32 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v33 = v26;
  v54 = a1;

  v34 = 0;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1D3869C30](v34, v31);
    }

    else
    {
      v35 = *(v31 + 8 * v34 + 32);
    }

    v36 = v35;
    sub_1CEFFD374(v57 + v56, v33, type metadata accessor for LocalDomain);
    v37 = v36;
    sub_1CF00095C(v37, v33, v58);
    v39 = v23[2].isa;
    v38 = v23[3].isa;
    if (v39 >= v38 >> 1)
    {
      v23 = sub_1CF0008CC(v38 > 1, v39 + 1, 1, v23);
    }

    ++v34;

    v23[2].isa = (v39 + 1);
    sub_1CF0008F4(v58, v23 + v55 + v39 * v30, type metadata accessor for LocalContainer);
  }

  while (v32 != v34);

  a1 = v54;
LABEL_14:
  v40 = v53;
  sub_1CEFFD374(v57 + v56, v53, type metadata accessor for LocalDomain);
  v42 = v48;
  v41 = v49;
  sub_1CEFCCBDC(v49, v48, &unk_1EC4BEDE0, qword_1CF9FA390);
  v44 = v51;
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 168);
  }

  v45 = type metadata accessor for LocalContainerSnapshot(0);
  *(a1 + *(v45 + 20)) = 0;
  *(a1 + *(v45 + 24)) = 0;
  if (!v23[2].isa)
  {
    goto LABEL_23;
  }

  v46 = v45;
  sub_1CF0008F4(v40, a1, type metadata accessor for LocalDomain);
  (*(v44 + 32))(a1 + *(v46 + 28), v42, v43);
  *(a1 + *(v46 + 32)) = v23;

  sub_1CEFCCC44(v41, &unk_1EC4BEDE0, qword_1CF9FA390);
}

uint64_t sub_1CEFFFD0C()
{

  return swift_deallocObject();
}

uint64_t sub_1CEFFFD60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15[-v6];
  v8 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
  swift_beginAccess();
  v9 = sub_1CF9E5D98();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a2 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_1CEFFFEB8(v7, a1);
  v11 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
  swift_beginAccess();
  v12 = *(a2 + v11);

  return sub_1CEFFFF28(v13);
}

uint64_t sub_1CEFFFEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFFFF28(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *v1;
  if (!(*v1 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    v17 = *v1;
  }

  v18 = sub_1CF9E7818();
  v8 = __OFADD__(v18, v5);
  result = v18 + v5;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1CF1F9400(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  result = sub_1CF0001C4(&v36, (v3 + 8 * v10 + 32), v11, v4);
  if (result < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v8)
    {
      __break(1u);
LABEL_18:
      v21 = (v13 + 64) >> 6;
      while (1)
      {
        v22 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          goto LABEL_8;
        }

        v23 = *(v12 + 8 * v22);
        ++v3;
        if (v23)
        {
          v19 = (v23 - 1) & v23;
          v20 = __clz(__rbit64(v23)) | (v22 << 6);
          v3 = v22;
          goto LABEL_23;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  result = v36;
  if (v14 != v11)
  {
LABEL_8:
    result = sub_1CEFCB59C();
    *v1 = v2;
    return result;
  }

LABEL_15:
  v4 = *(v3 + 16);
  v12 = v37;
  v13 = v38;
  v3 = v39;
  v35 = v37;
  if (!v40)
  {
    goto LABEL_18;
  }

  v19 = (v40 - 1) & v40;
  v20 = __clz(__rbit64(v40)) | (v39 << 6);
  v21 = (v38 + 64) >> 6;
LABEL_23:
  v24 = result;
  v25 = *(*(result + 56) + 8 * v20);
  v26 = v25;
  v27 = v25;
  v28 = v35;
  while (1)
  {
LABEL_25:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = v27;
      sub_1CF9E6D88();
      v27 = v34;
      v28 = v35;
    }

    v2 = *v1;
    v29 = *v1 & 0xFFFFFFFFFFFFFF8;
    v30 = *(v29 + 0x18) >> 1;
    if (v4 < v30)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v29 + 32 + 8 * v4++) = v27;
    if (!v19)
    {
      break;
    }

    result = v24;
LABEL_35:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(*(result + 56) + ((v3 << 9) | (8 * v33)));
    v28 = v35;
    if (v4 == v30)
    {
      v4 = v30;
      *(v29 + 16) = v30;
      goto LABEL_25;
    }
  }

  v31 = v3;
  result = v24;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v21)
    {
      *(v29 + 16) = v4;
      goto LABEL_8;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v3 = v32;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1CF0001C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF000318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x1E6967258];
  (*(v10 + 16))(v13, a1 + *(v5 + 40), v9);
  sub_1CEFFD374(a1, v8, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = sub_1CF9E6AE8();

  if ((v15 & 1) == 0)
  {
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v18 = v17;
    if (v16 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_1CF9E8048();

      if ((v21 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  *a2 = v14;
  v22 = type metadata accessor for LocalContainer(0);
  a2[1] = 0;
  a2[2] = 0;
  sub_1CEFFD374(v8, a2 + v22[6], type metadata accessor for LocalDomain);
  v23 = v22[7];
  v24 = v14;
  sub_1CEFFBA1C(a2 + v23);
  sub_1CF0005D0(a1, type metadata accessor for LocalDomain);
  sub_1CF0005D0(v8, type metadata accessor for LocalDomain);
  result = (*(v10 + 8))(v13, v9);
  *(a2 + v22[8]) = 1;
  return result;
}

uint64_t sub_1CF0005D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF000630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF000690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1CF0006F0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1CF0008F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00095C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LocalDomain();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CF9E5A58();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 bundleID];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  v39 = 35;
  v40 = 0xE100000000000000;
  MEMORY[0x1D3868CC0](v15, v17);

  v18 = sub_1CF9E6888();

  v19 = [a1 displayName];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v21;
  v36 = v20;

  v22 = [a1 documentsURL];
  sub_1CF9E59D8();

  v38 = a2;
  sub_1CEFFD374(a2, v9, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  LOBYTE(v15) = sub_1CF9E6AE8();

  if ((v15 & 1) == 0)
  {
    v23 = *MEMORY[0x1E6967258];
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
    {
    }

    else
    {
      v28 = sub_1CF9E8048();

      if ((v28 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  v29 = v35;
  v30 = v36;
  *a3 = v18;
  a3[1] = v30;
  a3[2] = v29;
  v31 = type metadata accessor for LocalContainer(0);
  sub_1CEFFD374(v9, a3 + v31[6], type metadata accessor for LocalDomain);
  v32 = v31[7];
  v33 = v18;
  sub_1CEFFBA1C(a3 + v32);

  sub_1CF0005D0(v38, type metadata accessor for LocalDomain);
  sub_1CF0005D0(v9, type metadata accessor for LocalDomain);
  result = (*(v10 + 8))(v13, v37);
  *(a3 + v31[8]) = 1;
  return result;
}

uint64_t sub_1CF000CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1CF000D30(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1CF000F0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1CF000D30(a1, a2, a3, *v3, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

uint64_t sub_1CF000F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF000FB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1CF0006F0(isUniquelyReferenced_nonNull_native, v16, 1, v3, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1CF9E5A58();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CF001108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B28, &unk_1CFA079C0);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = sub_1CF7BF2C0(v4, v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v8;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = v3[6] + 16 * v12;
    *v15 = v4;
    *(v15 + 8) = v5;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v9;
    *(v16 + 24) = result;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 6;
    v4 = *(v14 - 5);
    v5 = *(v14 - 32);
    v6 = *(v14 - 3);
    v7 = *(v14 - 16);
    v9 = *(v14 - 1);
    v21 = *v14;

    v12 = sub_1CF7BF2C0(v4, v5);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for VFSLookupScope()
{
  result = qword_1EDEAF0C8;
  if (!qword_1EDEAF0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF0012A0()
{
  v0 = sub_1CF9E5A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() legacyDefaultManager];
  v6 = [v5 documentStorageURL];

  sub_1CF9E59D8();
  v7 = sub_1CF9E58E8();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v7 == 0xD000000000000015 && 0x80000001CFA50000 == v9)
  {
  }

  else
  {
    v11 = sub_1CF9E8048();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v13 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v14 = sub_1CF9E6888();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    return 0;
  }

  v16 = sub_1CF9E6888();
  v17 = [v15 BOOLForKey_];

  return v17;
}

uint64_t VFSLookupScope.__deallocating_deinit()
{
  v1 = *(v0 + 4);

  sub_1CF2B9AAC((v0 + 64));
  v2 = *(v0 + 12);

  v3 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v4 = sub_1CF9E5A58();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v6 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs];

  v5(&v0[OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL], v4);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0015AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF001614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00167C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1CF001704(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v402 = a3;
  v404 = a2;
  v405 = a1;
  v437 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v382 = &v365 - v6;
  v389 = sub_1CF9E6938();
  v384 = *(v389 - 8);
  v7 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v389);
  v383 = &v365 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v375 = &v365 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v376 = &v365 - v13;
  v372 = type metadata accessor for FSDirectoryEnumerator();
  v14 = *(*(v372 - 8) + 64);
  MEMORY[0x1EEE9AC00](v372);
  v390 = (&v365 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v374 = &v365 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v371 = &v365 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v399 = &v365 - v23;
  v24 = type metadata accessor for LocalContainer(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v395 = (&v365 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v398 = type metadata accessor for ItemMetadata();
  v27 = *(*(v398 - 1) + 64);
  MEMORY[0x1EEE9AC00](v398);
  v397 = &v365 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v386 = &v365 - v31;
  v32 = sub_1CF9E5FF8();
  v387 = *(v32 - 8);
  v388 = v32;
  v33 = *(v387 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v373 = &v365 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v378 = &v365 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v377 = &v365 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v393 = &v365 - v41;
  v394 = type metadata accessor for VFSItem(0);
  v392 = *(v394 - 8);
  v42 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v394);
  v396 = &v365 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1188, &unk_1CFA084B0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v365 - v46;
  v48 = type metadata accessor for LocalItemContext(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v365 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileID;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileID) = 0;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isUploadedTestingImpl) = 1;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isDownloadedTestingImpl) = 1;
  v53 = v17;
  v54 = v17 + 56;
  v55 = *(v17 + 56);
  v400 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  v56 = v16;
  v380 = v55;
  v381 = v54;
  v55(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL, 1, 1, v16);
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isUbiquitous) = 0;
  v406 = v3;
  v407 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem) = 1;
  v57 = v404;
  v58 = v405;
  sub_1CF00409C(v404, v47);
  v59 = *(v49 + 48);
  v391 = v48;
  if (v59(v47, 1, v48) == 1)
  {
    sub_1CEFCCC44(v402, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v57, type metadata accessor for LocalDomain);
    (*(v53 + 8))(v58, v56);
    v60 = &qword_1EC4C1188;
    v61 = &unk_1CFA084B0;
    v62 = v47;
LABEL_3:
    sub_1CEFCCC44(v62, v60, v61);
LABEL_6:
    v65 = v406;
    sub_1CEFCCC44(v406 + v400, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF00D644(*&v407[v65]);
    v66 = *((*MEMORY[0x1E69E7D40] & *v65) + 0x30);
    v67 = *((*MEMORY[0x1E69E7D40] & *v65) + 0x34);
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_7;
  }

  v379 = v53;
  v403 = v56;
  sub_1CF005114(v47, v52, type metadata accessor for LocalItemContext);
  v63 = v58;
  sub_1CF9E58E8();
  v64 = sub_1CF4C4044();

  if (v64)
  {
    sub_1CEFCCC44(v402, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v404, type metadata accessor for LocalDomain);
    (*(v379 + 8))(v58, v403);
    sub_1CF000630(v52, type metadata accessor for LocalItemContext);
    goto LABEL_6;
  }

  v70 = v393;
  v71 = v402;
  v72 = v404;
  sub_1CF00517C(v402, v58, v404, v393);
  v73 = v394;
  if ((*(v392 + 48))(v70, 1, v394) == 1)
  {
    sub_1CEFCCC44(v71, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v72, type metadata accessor for LocalDomain);
    (*(v379 + 8))(v58, v403);
    sub_1CF000630(v52, type metadata accessor for LocalItemContext);
    v62 = v70;
    v60 = &unk_1EC4BEC00;
    v61 = &unk_1CF9FCB60;
    goto LABEL_3;
  }

  sub_1CF005114(v70, v396, type metadata accessor for VFSItem);
  if ((sub_1CF9E5848() & 1) == 0)
  {
    goto LABEL_249;
  }

  v74 = objc_autoreleasePoolPush();
  v75 = v386;
  sub_1CF007DE8(v63, v386);
  v407 = 0;
  objc_autoreleasePoolPop(v74);
  v77 = v387;
  v76 = v388;
  v78 = (*(v387 + 48))(v75, 1, v388);
  v79 = v397;
  if (v78 == 1)
  {
    sub_1CEFCCC44(v75, &unk_1EC4C50C0, &unk_1CFA084A0);
    v80 = *(v73 + 28);
    v81 = v396;
    v82 = *(v396 + 40);
    v425 = *(v396 + 32);
    v426 = v82;

    v83 = v378;
    sub_1CEFE6798(&v425, v378);

    (*(v77 + 32))(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType, v83, v76);
  }

  else
  {
    v84 = *(v77 + 32);
    v85 = v377;
    v84(v377, v75, v76);
    v84(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType, v85, v76);
    v81 = v396;
  }

  sub_1CF0082A0(v81, v404);
  sub_1CF001614(v81 + *(v73 + 28), v79, type metadata accessor for ItemMetadata);
  LODWORD(v393) = *v79;
  v86 = v81;
  if (v393 == 1)
  {
    v87 = 0;
    LODWORD(v377) = 0;
  }

  else
  {
    LODWORD(v377) = v79[v398[28]];
    v87 = v377 ^ 1;
  }

  LODWORD(v392) = *(v79 + 5);
  v88 = sub_1CF9E6248();
  v89 = sub_1CF9E6228();
  v370 = sub_1CF9E6238();
  v90 = v395;
  sub_1CF001614(v52, v395, type metadata accessor for LocalContainer);
  v91 = (v86 + *(v73 + 36));
  v92 = *v91;
  *(v406 + v385) = *v91;
  v93 = v52[v391[5]];
  v94 = MEMORY[0x1E6967258];
  LODWORD(v394) = v52[v391[8]];
  v386 = v52;
  v368 = v87;
  v369 = v93;
  v366 = v91;
  v367 = v92;
  if (v394 != 1)
  {
    if (v52[v391[9]] == 1)
    {
      v103 = *MEMORY[0x1E6967280];
      v104 = v406;
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = *MEMORY[0x1E6967280];
      *(v104 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier) = v103;
      v105 = (v104 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
      *v105 = 0x68736172542ELL;
      v105[1] = 0xE600000000000000;
      v106 = v103;
      LODWORD(v385) = 0;
      goto LABEL_66;
    }

    v107 = *v396;
    v108 = *(v396 + 8);
    v109 = MEMORY[0x1E69E6158];
    if (v93)
    {
      LODWORD(v365) = v89;
      v110 = v88;
      if (v108)
      {
        if (v108 != 1)
        {
          if (v107)
          {
            v122 = *MEMORY[0x1E6967280];
          }

          else
          {
            v122 = *MEMORY[0x1E6967258];
          }

          v121 = v122;
          goto LABEL_49;
        }

        v425 = 1029990758;
        v426 = 0xE400000000000000;
        v413 = v107;
      }

      else
      {
        v425 = 1029990756;
        v426 = 0xE400000000000000;
        LODWORD(v413) = v107;
      }

      v120 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v120);

      v121 = sub_1CF9E6888();

LABEL_49:
      v129 = v406;
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = v121;
      v130 = MEMORY[0x1E6967280];
LABEL_53:
      v131 = *v130;
      *(v129 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier) = *v130;
      v132 = *(v396 + 40);
      v425 = *(v396 + 32);
      v426 = v132;
      v413 = 47;
      v414 = 0xE100000000000000;
      v411 = 58;
      v412 = 0xE100000000000000;
      v133 = sub_1CEFE4E68();
      v134 = v131;
      v363 = v133;
      v364 = v133;
      *&v362 = v109;
      *(&v362 + 1) = v133;
      v135 = sub_1CF9E7668();
      LODWORD(v385) = 0;
      v136 = (v129 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
      *v136 = v135;
      v136[1] = v137;
      v88 = v110;
      v89 = v365;
      goto LABEL_66;
    }

    if (v52[v391[10]])
    {
      LODWORD(v365) = v89;
      v110 = v88;
      if (v108)
      {
        if (v108 != 1)
        {
          if (v107)
          {
            v127 = *MEMORY[0x1E6967280];
          }

          else
          {
            v127 = *MEMORY[0x1E6967258];
          }

          v124 = v127;
          goto LABEL_52;
        }

        v425 = 1029990758;
        v426 = 0xE400000000000000;
        v413 = v107;
      }

      else
      {
        v425 = 1029990756;
        v426 = 0xE400000000000000;
        LODWORD(v413) = v107;
      }

      v123 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v123);

      v124 = sub_1CF9E6888();

LABEL_52:
      v129 = v406;
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = v124;
      v130 = v395;
      goto LABEL_53;
    }

    if (*(v396 + 8))
    {
      if (v108 != 1)
      {
        v119 = v88;
        if (v107)
        {
          v128 = *MEMORY[0x1E6967280];
        }

        else
        {
          v128 = *MEMORY[0x1E6967258];
        }

        v126 = v128;
LABEL_56:
        *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = v126;
        v138 = v396;
        v139 = *(v396 + 16);
        if (*(v396 + 24))
        {
          if (*(v396 + 24) != 1)
          {
            if (v139)
            {
              v142 = *MEMORY[0x1E6967280];
            }

            else
            {
              v142 = *v94;
            }

            v141 = v142;
            goto LABEL_65;
          }

          v425 = 1029990758;
          v426 = 0xE400000000000000;
          v413 = v139;
        }

        else
        {
          v425 = 1029990756;
          v426 = 0xE400000000000000;
          LODWORD(v413) = v139;
        }

        v140 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v140);

        v141 = sub_1CF9E6888();

LABEL_65:
        v88 = v119;
        v143 = v406;
        *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier) = v141;
        v144 = *(v138 + 40);
        v425 = *(v138 + 32);
        v426 = v144;
        v413 = 47;
        v414 = 0xE100000000000000;
        v411 = 58;
        v412 = 0xE100000000000000;
        v363 = sub_1CEFE4E68();
        v364 = v363;
        *(&v362 + 1) = v363;
        *&v362 = MEMORY[0x1E69E6158];
        v145 = sub_1CF9E7668();
        LODWORD(v385) = 0;
        v146 = (v143 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
        *v146 = v145;
        v146[1] = v147;
        goto LABEL_66;
      }

      v119 = v88;
      v425 = 1029990758;
      v426 = 0xE400000000000000;
      v413 = v107;
    }

    else
    {
      v119 = v88;
      v425 = 1029990756;
      v426 = 0xE400000000000000;
      LODWORD(v413) = v107;
    }

    v125 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v125);

    v126 = sub_1CF9E6888();

    goto LABEL_56;
  }

  v95 = v89;
  v96 = v90[2];
  if (v96)
  {
    v97 = *v90;
    v98 = v406;
    *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = *v90;
    v99 = *v94;
    *(v98 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier) = *v94;
    v100 = (v98 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
    *v100 = v90[1];
    v100[1] = v96;

    v101 = v97;
    v102 = v99;
    LODWORD(v385) = 1;
  }

  else
  {
    v111 = *MEMORY[0x1E6967258];
    v112 = v406;
    *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier) = *MEMORY[0x1E6967258];
    *(v112 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier) = v111;
    v113 = *(v396 + 40);
    v425 = *(v396 + 32);
    v426 = v113;
    v413 = 47;
    v414 = 0xE100000000000000;
    v411 = 58;
    v412 = 0xE100000000000000;
    v114 = sub_1CEFE4E68();
    v115 = v111;
    v363 = v114;
    v364 = v114;
    *&v362 = MEMORY[0x1E69E6158];
    *(&v362 + 1) = v114;
    v116 = sub_1CF9E7668();
    LODWORD(v385) = 0;
    v117 = (v112 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
    *v117 = v116;
    v117[1] = v118;
  }

  v89 = v95;
LABEL_66:
  v370 = (v89 | v88 | v370) & v392;
  v148 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v149 = sub_1CF9E6888();
  v150 = [v148 initWithSuiteName_];

  if (!v150 || (v151 = sub_1CF9E6888(), v152 = [v150 BOOLForKey_], v150, v151, !v152))
  {
    v160 = v406;
    *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isExcludedFromSync) = 0;
    v161 = (v160 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath);
    *v161 = 0;
    v161[1] = 0;
    v162 = &unk_1EC4C1000;
    if (v370)
    {
      v156 = 3;
    }

    else
    {
      v156 = 1;
    }

    goto LABEL_91;
  }

  v153 = *&v397[v398[33]];
  v365 = "[DEBUG] ┏%@ %@";
  if (v153)
  {
    v154 = &unk_1EDEBB000;
    if (*(v153 + 16))
    {
      sub_1CEFE4328(0xD00000000000002DLL, 0x80000001CFA50CA0);
      if (v155)
      {
        v156 = 1;
      }

      else
      {
        v156 = 65;
      }

      if (*(v153 + 16))
      {
        sub_1CEFE4328(0xD000000000000031, 0x80000001CFA50CD0);
        if (v157)
        {
          v158 = 1;
          v159 = v387;
          goto LABEL_83;
        }
      }
    }

    else
    {
      v156 = 65;
    }

    v159 = v387;
  }

  else
  {
    v156 = 65;
    v159 = v387;
    v154 = &unk_1EDEBB000;
  }

  v158 = 0;
LABEL_83:
  v163 = v406;
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isExcludedFromSync) = v158;
  v164 = v163 + v154[208];
  v165 = v378;
  v166 = v159;
  v167 = v388;
  (*(v159 + 16))(v378, v164, v388);
  v168 = v373;
  sub_1CF9E5F18();
  v169 = sub_1CF9E5FB8();
  v170 = *(v166 + 8);
  v170(v168, v167);
  v170(v165, v167);
  if (v169)
  {
    v171 = swift_slowAlloc();
    bzero(v171, 0x401uLL);
    sub_1CF9E5A18();
    v172 = sub_1CF9E6978();

    v173 = readlink((v172 + 32), v171, 0x401uLL);

    if (v173 < 0)
    {
      v178 = (v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath);
      *v178 = 0;
      v178[1] = 0;
    }

    else
    {
      *(v171 + v173) = 0;
      v174 = sub_1CF9E6878();
      v175 = (v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath);
      *v175 = v174;
      v175[1] = v176;
    }

    v94 = MEMORY[0x1E6967258];
    MEMORY[0x1D386CDC0](v171, -1, -1);
  }

  else
  {
    v177 = (v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath);
    *v177 = 0;
    v177[1] = 0;
    v94 = MEMORY[0x1E6967258];
  }

  v162 = &unk_1EC4C1000;
  if (v370)
  {
    v156 |= 2uLL;
  }

LABEL_91:
  v179 = v406;
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isContainer) = v385;
  v180 = v162[45];
  v181 = *(v179 + v180);
  v182 = *v94;
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v185 = v184;
  if (v183 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v185 == v186)
  {
LABEL_93:

    goto LABEL_99;
  }

  v187 = sub_1CF9E8048();

  if ((v187 & 1) == 0)
  {
    v188 = *(v406 + v180);
    v189 = *MEMORY[0x1E6967280];
    v190 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v192 = v191;
    if (v190 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v192 != v193)
    {
      v194 = sub_1CF9E8048();

      if (!(v385 & 1 | ((~v156 & 0x3C) == 0) | v194 & 1))
      {
        v156 |= 0x3CuLL;
      }

      goto LABEL_99;
    }

    goto LABEL_93;
  }

LABEL_99:
  v195 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v196 = sub_1CF9E6888();
  v197 = [v195 initWithSuiteName_];

  if (v197 && (v198 = sub_1CF9E6888(), v199 = [v197 BOOLForKey_], v197, v198, v199))
  {
    v200 = v397;
    v201 = *&v397[v398[33]];
    if (v201)
    {
      if (*(v201 + 16))
      {
        sub_1CEFE4328(0xD000000000000029, 0x80000001CFA50C70);
        if (v202)
        {
          v156 &= 0xFFFFFFFFFFFFFFF1;
        }
      }
    }
  }

  else
  {
    v200 = v397;
  }

  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_capabilities) = v156;
  if (!v394)
  {
    v204 = v398;
    if (v393 != 1)
    {
      goto LABEL_126;
    }

    if (sub_1CF0088DC() & 1) != 0 && (v205 = *&v200[v204[33]]) != 0 && *(v205 + 16) && (sub_1CEFE4328(0xD000000000000032, 0x80000001CFA50C30), (v206))
    {
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount) = 0;
    }

    else
    {
      v217 = swift_allocObject();
      v218 = v217;
      if ((v200[8] & 1) != 0 || (v219 = *(v200 + 1), *(v217 + 16) = v219, v219 <= 0x63))
      {
        *(v217 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v220 = v379;
        v221 = (*(v379 + 80) + 32) & ~*(v379 + 80);
        v387 = *(v379 + 72);
        v222 = swift_allocObject();
        *(v222 + 16) = xmmword_1CF9FA450;
        v223 = v222 + v221;
        v224 = *(v220 + 16);
        v399 = v220 + 16;
        v388 = v224;
        v224(v222 + v221, v405, v403);
        v225 = v372;
        v226 = v390;
        sub_1CF001614(v404, v390 + *(v372 + 20), type metadata accessor for LocalDomain);
        v227 = (v226 + v225[9]);
        *v227 = 0;
        v227[1] = 0;
        *v226 = v222;
        *(v226 + v225[6]) = 0;
        *(v226 + v225[7]) = 0;
        *(v226 + v225[8]) = 100;
        v425 = 0;
        LOBYTE(v413) = 1;
        v228 = *(v222 + 16);

        v385 = v228;
        if (v228)
        {
          v229 = 0;
          v230 = (v220 + 8);
          v231 = v371;
          while (1)
          {
            if (v229 >= *(v222 + 16))
            {
              __break(1u);
            }

            v388(v231, v223, v403);
            if ((v413 & 1) == 0)
            {
              break;
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v232 = objc_autoreleasePoolPush();
            MEMORY[0x1EEE9AC00](v232);
            *(&v365 - 8) = v231;
            *(&v365 - 7) = &v425;
            *&v361 = v390;
            *(&v361 + 1) = &v413;
            *&v362 = 7;
            *(&v362 + 1) = sub_1CF4F5FC4;
            v233 = v218;
            v363 = v218;
            LOBYTE(v364) = 1;
            v234 = v407;
            sub_1CF9E59B8();
            v407 = v234;
            if (v234)
            {
              objc_autoreleasePoolPop(v232);
              (*v230)(v231, v403);
              __break(1u);
LABEL_249:
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 80);
            }

            ++v229;
            objc_autoreleasePoolPop(v232);
            (*v230)(v231, v403);
            v223 += v387;
            v218 = v233;
            if (v385 == v229)
            {
              goto LABEL_140;
            }
          }

          (*v230)(v231, v403);
        }

LABEL_140:
        sub_1CF000630(v390, type metadata accessor for FSDirectoryEnumerator);

        v200 = v397;
        v204 = v398;
      }

      swift_beginAccess();
      v235 = *(v218 + 16);
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount) = sub_1CF9E8258();
    }

    if (v377)
    {
      goto LABEL_143;
    }

    goto LABEL_147;
  }

  if (v200[8])
  {
    v203 = 0;
    goto LABEL_128;
  }

  v207 = 0;
  v208 = 0;
  LODWORD(v388) = *(v200 + 1);
  v209 = (v379 + 8);
  v200 = MEMORY[0x1E69E6370];
  do
  {
    LODWORD(v390) = v207;
    if (v208 == 2)
    {
LABEL_127:
      swift_arrayDestroy();
      v203 = sub_1CF9E8258();
      v200 = v397;
LABEL_128:
      v204 = v398;
      v216 = v393 != 1;
      *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount) = v203;
      if ((v216 | v377))
      {
        goto LABEL_143;
      }

      goto LABEL_147;
    }

    v210 = (&unk_1F4BED6E0 + 16 * v208++ + 40);
    while (1)
    {
      v211 = *(v210 - 1);
      v212 = *v210;

      v213 = v399;
      sub_1CF9E5958();

      v214 = sub_1CF9E5848();
      if ((v214 & 1) == 0)
      {
        goto LABEL_247;
      }

      v204 = &v365;
      MEMORY[0x1EEE9AC00](v214);
      LODWORD(v363) = 4;
      v215 = v407;
      sub_1CF9E59B8();
      v407 = v215;
      if (!v215)
      {
        break;
      }

      (*v209)(v213, v403);
      v407 = 0;
LABEL_120:
      v210 += 2;
      if (++v208 == 3)
      {
        goto LABEL_127;
      }
    }

    (*v209)(v213, v403);
    if ((v425 & 1) == 0)
    {
      goto LABEL_120;
    }

    v207 = v390 + 1;
  }

  while (v390 != -1);
  __break(1u);
LABEL_126:
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount) = 0;
LABEL_143:
  if (sub_1CF0088DC() & 1) != 0 && (v236 = *&v200[v204[33]]) != 0 && *(v236 + 16) && (sub_1CEFE4328(0xD000000000000030, 0x80000001CFA50BF0), (v237))
  {
LABEL_147:
    v238 = 0;
  }

  else
  {
    v239 = *&v200[v204[26]];
    v238 = sub_1CF9E81A8();
  }

  v240 = v200;
  v241 = v406;
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_documentSize) = v238;
  v242 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_creationDate;
  v243 = v204[7];
  v244 = sub_1CF9E5CF8();
  v245 = *(v244 - 8);
  v246 = *(v245 + 16);
  v246(&v241[v242], &v240[v243], v244);
  v247 = *(v245 + 56);
  v247(&v241[v242], 0, 1, v244);
  v248 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentModificationDate;
  v246(&v241[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentModificationDate], &v240[v398[8]], v244);
  v249 = v398;
  v247(&v241[v248], 0, 1, v244);
  sub_1CEFCCBDC(&v240[v249[30]], &v241[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_lastUsedDate], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v250 = *&v240[v249[31]];
  if (v250)
  {
    sub_1CF6601AC(v250);
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v251 = sub_1CF9E6D28();

    v252 = FPGetTagsDataForTags();

    v253 = sub_1CF9E5B88();
    v255 = v254;

    v240 = v397;
  }

  else
  {
    v253 = 0;
    v255 = 0xF000000000000000;
  }

  v256 = (v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_tagData);
  *v256 = v253;
  v256[1] = v255;
  v257 = &v240[v249[32]];
  if (v257[8])
  {
    v258 = 0;
  }

  else
  {
    v259 = *v257;
    v258 = sub_1CF9E8268();
  }

  v260 = v369;
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_favoriteRank) = v258;
  v261 = &v240[v249[35]];
  if (v261[8])
  {
    v262 = 0;
    v263 = 0;
  }

  else
  {
    v262 = *v261;
    v263 = *(v261 + 1);
  }

  v264 = v386;
  v265 = v391;
  v266 = v406;
  v267 = (v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_typeAndCreator);
  *v267 = v262;
  v267[1] = v263;
  *(v266 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed) = v260;
  *(v266 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash) = *(v264 + v265[6]);
  if (sub_1CF0088DC())
  {
    v268 = sub_1CF9E5748();
    v269 = *(*(v268 - 8) + 56);
    v270 = v375;
    v269(v375, 1, 1, v268);
    v363 = v270;
    v361 = 0u;
    v362 = 0u;
    v271 = v376;
    sub_1CF9E5718();
    v269(v271, 0, 1, v268);
    sub_1CEFE55D0(v271, v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents, &qword_1EC4C1180, &unk_1CFA18170);
    if (!v394)
    {
      goto LABEL_160;
    }

LABEL_165:
    v296 = v383;
    sub_1CF9E6928();
    v297 = sub_1CF9E68C8();
    v299 = v298;
    v300 = *(v384 + 8);
    v301 = v389;
    v300(v296, v389);
    if (v299 >> 60 != 15)
    {
      sub_1CF9E6918();
      v302 = sub_1CF9E68C8();
      v303 = v296;
      v305 = v304;
      v300(v303, v301);
      if (v305 >> 60 != 15)
      {
        v306 = objc_allocWithZone(MEMORY[0x1E69674E8]);
        v307 = sub_1CF9E5B48();
        v308 = sub_1CF9E5B48();
        v309 = [v306 initWithContentVersion:v307 metadataVersion:v308];

        sub_1CEFE48D8(v302, v305);
        sub_1CEFE48D8(v297, v299);
        v310 = v406;
        *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemVersion) = v309;
        goto LABEL_170;
      }

LABEL_246:
      __break(1u);
LABEL_247:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
    }

LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v294 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents;
  v295 = sub_1CF9E5748();
  (*(*(v295 - 8) + 56))(v406 + v294, 1, 1, v295);
  if (v394)
  {
    goto LABEL_165;
  }

LABEL_160:
  LODWORD(v388) = sub_1CF0088DC();
  v272 = v367;
  v273 = *(v366 + 2);
  v274 = v366[2];
  v275 = *(v366 + 24);
  v276 = v396;
  v277 = *(v396 + 16);
  v278 = *(v396 + 24);
  v280 = *(v396 + 32);
  v279 = *(v396 + 40);
  LOBYTE(v413) = v275;
  v425 = v367;
  LODWORD(v426) = v273;
  v427 = v274;
  v428 = v275;
  v429 = 0;
  v430 = v277;
  v431 = v278;
  v432 = v280;
  v433 = v279;
  v434 = 0;
  v435 = 0;
  v436 = 0;

  sub_1CEFCCC44(&v425, &unk_1EC4BE330, &unk_1CF9FF010);
  LODWORD(v391) = v273;
  sub_1CF25174C(v272, v273, v274, v275);
  v281 = v383;
  sub_1CF9E6928();
  v399 = sub_1CF9E68C8();
  v283 = v282;

  v390 = *(v384 + 8);
  (v390)(v281, v389);
  v394 = v283;
  if (v283 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_244;
  }

  v284 = *(v276 + 16);
  v286 = *(v276 + 32);
  v285 = *(v276 + 40);
  LOBYTE(v409) = v275;
  v413 = v272;
  LODWORD(v414) = v391;
  v415 = v274;
  v416 = v275;
  v417 = 0;
  v418 = v284;
  v419 = *(v276 + 24);
  v287 = v419;
  v420 = v286;
  v421 = v285;
  v423 = 0;
  v424 = 0;
  v422 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v413, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF4F507C(v284, v287);

  sub_1CF9E6918();
  v288 = sub_1CF9E68C8();
  v290 = v289;

  (v390)(v281, v389);
  if (v290 >> 60 == 15)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v291 = sub_1CF9E5B48();
  v292 = sub_1CF9E5B48();
  if (v388)
  {
    v293 = sub_1CF9E6888();
  }

  else
  {
    v293 = 0;
  }

  v311 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v291 metadataVersion:v292 lastEditorDeviceName:v293];

  sub_1CEFE48D8(v288, v290);
  sub_1CEFE48D8(v399, v394);
  v310 = v406;
  *(v406 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemVersion) = v311;
LABEL_170:
  v312 = v382;
  sub_1CEFFBA1C(v382);
  v313 = v403;
  v380(v312, 0, 1, v403);
  v314 = v400;
  swift_beginAccess();
  sub_1CEFDA9E0(v312, &v310[v314], &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  v315 = *v395;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v316 = sub_1CF9E6AE8();

  v317 = 0;
  v318 = 0;
  v319 = v404;
  if (v316)
  {
    v320 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v322 = sub_1CF4F5F14(1uLL, v320, v321);
    v324 = v323;
    v326 = v325;
    v328 = v327;

    v317 = MEMORY[0x1D3868C10](v322, v324, v326, v328);
    v318 = v329;
  }

  v330 = &v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier];
  *v330 = v317;
  v330[1] = v318;
  v331 = v397;
  v332 = v396;
  if (v397[v398[10]] != 1)
  {
    v335 = *(v396 + 40);
    v425 = *(v396 + 32);
    v426 = v335;
    v413 = 47;
    v414 = 0xE100000000000000;
    v409 = 58;
    v410 = 0xE100000000000000;
    v363 = sub_1CEFE4E68();
    v364 = v363;
    *&v362 = MEMORY[0x1E69E6158];
    *(&v362 + 1) = v363;
    v336 = sub_1CF9E7668();
    v338 = sub_1CEFE7394(v336, v337);
    v340 = v339;

    v333 = v405;
    if (v340)
    {
      if (v338 == 46 && v340 == 0xE100000000000000)
      {

        v331 = v397;
        v334 = v392;
        if ((v392 & 0x40) == 0)
        {
          if ((v392 & 0x100) == 0)
          {
            if ((v392 & 0x80) == 0)
            {
              goto LABEL_196;
            }

            goto LABEL_183;
          }

          goto LABEL_191;
        }

        if ((v392 & 0x100) != 0)
        {
          goto LABEL_208;
        }

        if ((v392 & 0x80) != 0)
        {
          goto LABEL_210;
        }

LABEL_207:
        v341 = 1;
        goto LABEL_223;
      }

      v342 = sub_1CF9E8048();

      v331 = v397;
      v334 = v392;
      if ((v392 & 0x40) == 0)
      {
        if ((v392 & 0x100) == 0)
        {
          if ((v392 & 0x80) != 0)
          {
            v341 = 0;
            goto LABEL_222;
          }

          if (v342)
          {
            goto LABEL_196;
          }

LABEL_218:
          v341 = 0;
          if (*(v331 + v398[13]))
          {
            goto LABEL_225;
          }

          goto LABEL_226;
        }

        goto LABEL_212;
      }

      if ((v392 & 0x100) == 0)
      {
        if ((v392 & 0x80) != 0)
        {
          v341 = 1;
          goto LABEL_222;
        }

        if (v342)
        {
          goto LABEL_207;
        }

LABEL_203:
        v341 = 1;
        if (*(v331 + v398[13]))
        {
          goto LABEL_225;
        }

        goto LABEL_226;
      }
    }

    else
    {
      v334 = v392;
      if ((v392 & 0x40) == 0)
      {
        v331 = v397;
        if ((v392 & 0x100) == 0)
        {
          if ((v392 & 0x80) != 0)
          {
            v341 = 4;
            goto LABEL_224;
          }

          goto LABEL_218;
        }

        v342 = 0;
LABEL_212:
        v341 = 2;
        if ((v334 & 0x80) == 0)
        {
LABEL_216:
          if (v342)
          {
            goto LABEL_223;
          }

          goto LABEL_224;
        }

LABEL_222:
        v341 |= 4uLL;
        if (v342)
        {
          goto LABEL_223;
        }

        goto LABEL_224;
      }

      v331 = v397;
      if ((v392 & 0x100) == 0)
      {
        if ((v392 & 0x80) != 0)
        {
          v341 = 5;
          goto LABEL_224;
        }

        goto LABEL_203;
      }

      v342 = 0;
    }

    v341 = 3;
    if ((v334 & 0x80) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_222;
  }

  v333 = v405;
  v334 = v392;
  if ((v392 & 0x40) != 0)
  {
    if ((v392 & 0x100) == 0)
    {
      if ((v392 & 0x80) == 0)
      {
        goto LABEL_207;
      }

LABEL_210:
      v341 = 5;
      goto LABEL_223;
    }

LABEL_208:
    v342 = 1;
    v341 = 3;
    if ((v334 & 0x80) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_222;
  }

  if ((v392 & 0x100) != 0)
  {
LABEL_191:
    v342 = 1;
    goto LABEL_212;
  }

  if ((v392 & 0x80) == 0)
  {
LABEL_196:
    v341 = 8;
    goto LABEL_224;
  }

LABEL_183:
  v341 = 4;
LABEL_223:
  v341 |= 8uLL;
LABEL_224:
  if (*(v331 + v398[13]) == 1)
  {
LABEL_225:
    v341 |= 0x10uLL;
  }

LABEL_226:
  *&v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileSystemFlags] = v341;
  v343 = sub_1CF0089A8();
  if (v343)
  {
    v344 = sub_1CF008FD8(v343);
  }

  else
  {
    v344 = MEMORY[0x1E69E7CC0];
  }

  *&v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions] = v344;
  v345 = *(v331 + v398[33]);
  if (v345)
  {
    v346 = sub_1CF4F5130(v345);
  }

  else
  {
    v346 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
  }

  v347 = v393 == 1;
  *&v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_extendedAttributes] = v346;
  sub_1CF001614(v319, &v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain], type metadata accessor for LocalDomain);
  v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] = v347;
  v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isPackage] = v377;
  v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isRegularItem] = v368;
  if (sub_1CF009180())
  {
    v348 = v379;
    v349 = v374;
    (*(v379 + 16))(v374, v333, v313);
    v350 = sub_1CF9E5928();
    v351 = [objc_opt_self() documentAttributesForFileAtURL_];

    (*(v348 + 8))(v349, v313);
    if (v351)
    {
      v425 = 0;
      v352 = [v351 dataRepresentationWithError_];
      v353 = v425;
      if (v352)
      {
        v354 = sub_1CF9E5B88();
        v356 = v355;
      }

      else
      {
        v357 = v353;
        v358 = sub_1CF9E57F8();

        swift_willThrow();
        v354 = 0;
        v356 = 0xF000000000000000;
      }

      v331 = v397;
    }

    else
    {
      v354 = 0;
      v356 = 0xF000000000000000;
    }

    v332 = v396;
  }

  else
  {
    v354 = 0;
    v356 = 0xF000000000000000;
  }

  sub_1CF000630(v386, type metadata accessor for LocalItemContext);
  sub_1CF000630(v395, type metadata accessor for LocalContainer);
  v359 = &v310[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_originatorInfo];
  *v359 = v354;
  v359[1] = v356;
  sub_1CF000630(v331, type metadata accessor for ItemMetadata);
  sub_1CF000630(v332, type metadata accessor for VFSItem);
  v408.receiver = v310;
  v408.super_class = ObjectType;
  v360 = objc_msgSendSuper2(&v408, sel_init);
  sub_1CEFCCC44(v402, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CF000630(v319, type metadata accessor for LocalDomain);
  (*(v379 + 8))(v333, v313);
  result = v360;
LABEL_7:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for FSDirectoryEnumerator()
{
  result = qword_1EDEA5808;
  if (!qword_1EDEA5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF00409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v63 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v60 - v10);
  v12 = type metadata accessor for LocalContainer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF9E5848())
  {
    sub_1CF0047A0(a1, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1CF7E2A3C(v11);
LABEL_24:
      v51 = type metadata accessor for LocalItemContext(0);
      result = (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
      goto LABEL_25;
    }

    sub_1CF004DCC(v11, v16);
    v31 = &v16[*(v12 + 28)];
    v32 = *(sub_1CF9E5898() + 16);

    sub_1CEFFBA1C(v7);
    v33 = sub_1CF9E5898();
    (*(v4 + 8))(v7, v3);
    v34 = *(v33 + 16);
    v35 = v34 == v32;
    if (v16[*(v12 + 32)])
    {
      v36 = v34 == v32 + 1;
      v37 = v34 - v32;
      if (v34 > v32)
      {
        v38 = v34 == v32 + 1;
        v39 = v33 + 16 * v32;
        v41 = *(v39 + 32);
        v40 = *(v39 + 40);
        v42 = v41 == 0x786F626E49 && v40 == 0xE500000000000000;
        if (v42 || (v43 = *(v39 + 32), v44 = *(v39 + 40), (sub_1CF9E8048() & 1) != 0))
        {

          sub_1CF008240(v16, type metadata accessor for LocalContainer);

LABEL_23:

          goto LABEL_24;
        }

        v53 = v41 == 0x68736172542ELL && v40 == 0xE600000000000000;
        if (v53 || (sub_1CF9E8048() & 1) != 0)
        {

          v45 = v37 == 1;
          v48 = v37 == 2;
          v46 = v37 != 2;
          v47 = v37 > 2;
          v36 = v38;
          goto LABEL_21;
        }

        v54 = (v39 + 40);
        v55 = v37 + 1;
        v36 = v38;
        while (--v55)
        {
          v56 = v54 + 2;
          v58 = *(v54 - 1);
          v57 = *v54;

          LOBYTE(v58) = sub_1CF9E6AE8();

          v54 = v56;
          if (v58)
          {

            v45 = 0;
            v47 = 0;
            v48 = 0;
            v46 = 1;
            goto LABEL_21;
          }
        }

        LOBYTE(v61) = 0;
        sub_1CF9E5A18();
        sub_1CF9E6978();

        is_package_item = fpfs_pkg_is_package_item();

        v46 = (is_package_item >= 0) & v61;

        v45 = 0;
LABEL_20:
        v47 = 0;
        v48 = 0;
LABEL_21:
        v49 = v60;
        sub_1CF004DCC(v16, v60);
        v50 = type metadata accessor for LocalItemContext(0);
        *(v49 + v50[5]) = v48;
        *(v49 + v50[6]) = v47;
        *(v49 + v50[7]) = v46;
        *(v49 + v50[8]) = v35;
        *(v49 + v50[9]) = v45;
        *(v49 + v50[10]) = v36;
        result = (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
LABEL_25:
        v52 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    else
    {
      if (v34 != v32)
      {
        sub_1CF008240(v16, type metadata accessor for LocalContainer);
        goto LABEL_23;
      }

      v36 = 0;
      v35 = 1;
    }

    v45 = 0;
    v46 = 0;
    goto LABEL_20;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA5B3D0);
  v17 = sub_1CF9E5928();
  v18 = [v17 fp_shortDescription];

  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);

  v22 = v61;
  v23 = v62;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1CF9FA450;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1CEFD51C4();
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  sub_1CF9E6018();

  v25 = type metadata accessor for LocalItemContext(0);
  v26 = *(*(v25 - 8) + 56);
  v27 = *MEMORY[0x1E69E9840];
  v28 = v25;
  v29 = v60;

  return v26(v29, 1, 1, v28);
}

uint64_t sub_1CF0047A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF9E5848() & 1) == 0)
  {
LABEL_8:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
  }

  sub_1CEFFBA1C(v12);
  v13 = sub_1CF9E5A18();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = a1 + *(v4 + 32);
  sub_1CF9E5A18();
  v17 = sub_1CF9E6AE8();

  if (v17)
  {

    sub_1CF004C30(a1, v7);
    sub_1CF000318(v7, a2);
    v18 = type metadata accessor for LocalContainer(0);
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  v20 = type metadata accessor for LocalContainer(0);
  (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  v21 = type metadata accessor for LocalContainerMonitor(0);
  v22 = v21;
  if (qword_1EDEA56B8 != -1)
  {
    v21 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v30 - 2) = v22;
  *(&v30 - 1) = a1;
  v23 = sub_1CF9E7398();
  v24 = aBlock[0];
  MEMORY[0x1EEE9AC00](v23);
  *(&v30 - 4) = v13;
  *(&v30 - 3) = v15;
  *(&v30 - 2) = a2;
  *(&v30 - 1) = a1;
  v25 = *&v24[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = sub_1CF326300;
  v26[4] = &v30 - 6;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1CF32630C;
  *(v27 + 24) = v26;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_9_2;
  v28 = _Block_copy(aBlock);
  v29 = v24;

  dispatch_sync(v25, v28);
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1CF004BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF004C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDomain();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1CF004CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LocalDomain();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1CF9E5A58();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CF004DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF004E44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalDomain();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1CF9E5A58();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1CF004F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalContainer(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF005048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalContainer(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF005114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CF00517C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v7 = sub_1CF9E53C8();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v23 = type metadata accessor for VFSItem(0);
  v74 = *(v23 - 8);
  v24 = *(v74 + 48);
  if (v24(a1, 1, v23) != 1)
  {
    sub_1CEFCCBDC(a1, v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v24(v17, 1, v23) != 1)
    {
      sub_1CF005114(v17, a4, type metadata accessor for VFSItem);
      (*(v74 + 56))(a4, 0, 1, v23);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v73 = v23;
  v25 = sub_1CF9E5928();
  v26 = [v25 fp_checkSandboxFileMetadataRead];

  if (v26)
  {
    v27 = a2;
    v68 = a4;
    v28 = sub_1CF0012A0();
    v29 = *(v74 + 56);
    v74 += 56;
    v66 = v29;
    v30 = (v29)(v22, 1, 1, v73);
    v67 = &v65;
    v75 = 0;
    MEMORY[0x1EEE9AC00](v30);
    *(&v65 - 6) = v27;
    *(&v65 - 5) = &v75;
    *(&v65 - 32) = v28 & 1;
    v31 = v72;
    *(&v65 - 3) = v22;
    *(&v65 - 2) = v31;
    v32 = sub_1CF9E5848();
    if ((v32 & 1) == 0)
    {
      goto LABEL_27;
    }

    MEMORY[0x1EEE9AC00](v32);
    *(&v65 - 2) = sub_1CF006540;
    *(&v65 - 1) = (&v65 - 8);
    sub_1CF9E59B8();
    v35 = v75;
    if (v75)
    {
      swift_willThrow();
      v36 = v35;
      v37 = v68;

      sub_1CEFCCC44(v22, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v77 = v35;
      v38 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v39 = v71;
      if (swift_dynamicCast())
      {

        (*(v70 + 32))(v69, v12, v39);
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_1CF9E7948();

        v75 = 0xD000000000000019;
        v76 = 0x80000001CFA50D50;
        v40 = sub_1CF9E5A18();
        MEMORY[0x1D3868CC0](v40);

        v42 = v75;
        v41 = v76;
        v43 = sub_1CF008708(&unk_1F4BED6B8);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57A8();
        v44 = sub_1CF9E6148();
        v45 = sub_1CF008830(v44, v43);

        if (v45)
        {
          v46 = v66;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1CF9FA440;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1CEFD51C4();
          *(v47 + 32) = v42;
          *(v47 + 40) = v41;
          v48 = v69;
          sub_1CF9E57A8();
          v49 = sub_1CF9E6148();
          v50 = MEMORY[0x1E69E7358];
          *(v47 + 96) = MEMORY[0x1E69E72F0];
          *(v47 + 104) = v50;
          *(v47 + 72) = v49;
        }

        else
        {
          v46 = v66;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          sub_1CF9E72A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1CF9FA440;
          *(v59 + 56) = MEMORY[0x1E69E6158];
          *(v59 + 64) = sub_1CEFD51C4();
          *(v59 + 32) = v42;
          *(v59 + 40) = v41;
          v48 = v69;
          sub_1CF9E57A8();
          v60 = sub_1CF9E6148();
          v61 = MEMORY[0x1E69E7358];
          *(v59 + 96) = MEMORY[0x1E69E72F0];
          *(v59 + 104) = v61;
          *(v59 + 72) = v60;
        }

        sub_1CF9E6018();

        (*(v70 + 8))(v48, v39);
        v46(v37, 1, 1, v73);
      }

      else
      {

        v75 = 0;
        v76 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA50D30);
        sub_1CF9E5A18();
        v51 = sub_1CF9E6888();

        v52 = [v51 fp_prettyPath];

        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;

        MEMORY[0x1D3868CC0](v53, v55);

        MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
        v77 = v35;
        sub_1CF9E7B58();
        v56 = v75;
        v57 = v76;
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1CF9FA450;
        *(v58 + 56) = MEMORY[0x1E69E6158];
        *(v58 + 64) = sub_1CEFD51C4();
        *(v58 + 32) = v56;
        *(v58 + 40) = v57;
        sub_1CF9E6018();

        v66(v37, 1, 1, v73);
      }

      return;
    }

    sub_1CEFCCBDC(v22, v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v62 = v73;
    v63 = v24(v20, 1, v73);
    v64 = v68;
    if (v63 != 1)
    {
      sub_1CF005114(v20, v68, type metadata accessor for VFSItem);
      v66(v64, 0, 1, v62);
      sub_1CEFCCC44(v22, &unk_1EC4BEC00, &unk_1CF9FCB60);
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
  }

  v33 = v73;
  v34 = *(v74 + 56);

  v34(a4, 1, 1, v33);
}

uint64_t sub_1CF005B8C@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF005B60(a1);
}

uint64_t sub_1CF005BA8@<X0>(unint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  result = sub_1CEFE1894(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF005C0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_1CF005DC8;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CF005DF8;
  v9[3] = &block_descriptor_47;
  v7 = _Block_copy(v9);

  LODWORD(a1) = fpfs_open();
  _Block_release(v7);
  *a3 = a1;
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF005DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF005F04(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v35 = a5;
  v34 = a4;
  v36 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for LocalDomain();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF006550();
  v31 = v9;
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v30 - 4) = v36;
    sub_1CEFE1894(sub_1CF4F6080);
  }

  v16 = *(MEMORY[0x1E6967578] + 16);
  v17 = *(MEMORY[0x1E6967578] + 17);
  v18 = *(MEMORY[0x1E6967578] + 18);
  aBlock[7] = *MEMORY[0x1E6967578];
  aBlock[8] = *(MEMORY[0x1E6967578] + 8);
  v38 = v16;
  v39 = v17;
  v40 = v18;
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  sub_1CF001614(v33, v32, type metadata accessor for LocalDomain);
  v19 = (*(v12 + 80) + 17) & ~*(v12 + 80);
  v20 = (v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v33 = a3;
  v21 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
  v22 = v36;
  v23 = (*(v31 + 80) + v21 + 8) & ~*(v31 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v34 & 1;
  (*(v12 + 32))(v24 + v19, v14, v11);
  *(v24 + v20) = v22;
  *(v24 + v21) = v35;
  sub_1CF005114(v32, v24 + v23, type metadata accessor for LocalDomain);
  *(v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF0066EC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1CEFDB240;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFDB270;
  aBlock[3] = &block_descriptor_22;
  v26 = _Block_copy(aBlock);

  v27 = fpfs_fgetfileattrs();
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  result = v27;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF006318()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for LocalDomain() - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = *(v0 + v6 + 24);

  v10 = *(v0 + v6 + 40);

  v8(v0 + v6 + v5[10], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF006550()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = sub_1CF0065A8(MEMORY[0x1E695DBA0]);
  v1 = *MEMORY[0x1E69E9840];
  return v0 & 1;
}

uint64_t sub_1CF0065A8(uint64_t *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5928();
  v3 = *a1;
  v11 = 0;
  v12[0] = 0;
  v4 = [v2 getResourceValue:v12 forKey:v3 error:&v11];
  v5 = v12[0];
  v6 = v11;
  if (!v4)
  {
    v8 = v6;
    swift_unknownObjectRetain();
    sub_1CF9E57F8();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_9;
  }

  if (!v5)
  {

LABEL_8:
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  swift_unknownObjectRetain_n();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    swift_unknownObjectRelease_n();
    goto LABEL_8;
  }

  LOBYTE(v8) = [v7 BOOLValue];
  swift_unknownObjectRelease_n();

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t sub_1CF0066EC(_DWORD *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for LocalDomain() - 8);
  v8 = *(v1 + v5);
  v9 = *(v1 + 16);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((*(v7 + 64) + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF006814(a1, v9, v1 + v4, v8, v10);
}

uint64_t sub_1CF006814(_DWORD *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  if ((a2 & 1) == 0 || (sub_1CF9E5A18(), v12 = sub_1CF9E6888(), , v13 = [v12 fpfs:a1[10] == 1 isSafeSaveTempFile:?], v12, !v13))
  {
    if (a1[4])
    {
LABEL_7:
      v20 = sub_1CF9E5A18();
      v22 = v21;
      v23 = sub_1CEFFEB98();
      sub_1CF006B90(a1, v20, v22, v23, v11);
      v24 = type metadata accessor for VFSItem(0);
      (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
      sub_1CEFDA9E0(v11, a5, &unk_1EC4BEC00, &unk_1CF9FCB60);
      result = 0;
      goto LABEL_10;
    }

    v30 = 0;
    if (fpfs_should_be_tracked())
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_10;
    }

    v26 = 0;
    LODWORD(v28) = 0;
    if (v30 == 1)
    {
      if (fpfs_track_document())
      {
        goto LABEL_9;
      }

      v26 = v28;
    }

    a1[4] = v26;
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1CF9E7948();

  v28 = 0xD000000000000011;
  v29 = 0x80000001CFA50D70;
  v14 = sub_1CF9E5A18();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA50D90);
  v15 = fpfs_tempfile_pattern_t.description.getter(a1[65]);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v16 = v28;
  v17 = v29;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CF9FA450;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1CEFD51C4();
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  sub_1CF9E6018();

  MEMORY[0x1D3868400](2);
  result = 0xFFFFFFFFLL;
LABEL_10:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF006B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v146 = a4;
  v133 = a5;
  v134 = a3;
  v124 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v131 = *(v129 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v108 - v7;
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE358, &qword_1CF9FD978);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v108 - v15;
  v17 = type metadata accessor for ItemMetadata();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v128 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v108 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v126 = &v108 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v108 - v26;
  v28 = *(a1 + 216);
  v145[10] = *(a1 + 200);
  v145[11] = v28;
  v29 = *(a1 + 248);
  v145[12] = *(a1 + 232);
  v145[13] = v29;
  v30 = *(a1 + 152);
  v145[6] = *(a1 + 136);
  v145[7] = v30;
  v31 = *(a1 + 184);
  v145[8] = *(a1 + 168);
  v145[9] = v31;
  v32 = *(a1 + 88);
  v145[2] = *(a1 + 72);
  v145[3] = v32;
  v33 = *(a1 + 120);
  v145[4] = *(a1 + 104);
  v145[5] = v33;
  v34 = *(a1 + 56);
  v145[0] = *(a1 + 40);
  v145[1] = v34;
  sub_1CEFE2F88(v145, v16);
  v35 = *(v18 + 48);
  v127 = v17;
  if (v35(v16, 1, v17) == 1)
  {

    sub_1CEFCCC44(v16, &qword_1EC4BE358, &qword_1CF9FD978);
    LODWORD(v143[0]) = 45;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v9 + 8))(v12, v8);
    swift_willThrow();
  }

  v37 = v134;
  sub_1CEFE4874(v16, v27);
  if (*v27 - 1 < 2)
  {
    v38 = *a1;
    if (!*a1)
    {
      goto LABEL_67;
    }

    v116 = 1;
    v120 = v38;
LABEL_8:
    v121 = v38;
    v109 = *(a1 + 8);
    v39 = *(a1 + 20);
    if (*(a1 + 24))
    {
      *&v143[0] = sub_1CF9E6A58();
      *(&v143[0] + 1) = v40;
      v135 = 58;
      v136 = 0xE100000000000000;
      v139 = 47;
      v140 = 0xE100000000000000;
      sub_1CEFE4E68();
      v41 = sub_1CF9E7668();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = v126;
    sub_1CF0015AC(v27, v126, type metadata accessor for ItemMetadata);
    v45 = *v44;
    if (v45 == 1)
    {
      v46 = 0;
      v47 = 0;
      v48 = 1;
    }

    else
    {
      v47 = 0;
      v46 = 0;
      v48 = 1;
      if (v45 != 2 && !v44[v127[20]])
      {
        if (v44[v127[28]])
        {
          v46 = 0;
        }

        else
        {
          v48 = 0;
          v46 = *&v44[v127[26]];
        }

        v47 = v39;
      }
    }

    v117 = v47;
    v118 = v48;
    v119 = v46;
    sub_1CF007B38(v44, type metadata accessor for ItemMetadata);
    if (v43)
    {
      v115 = *(a1 + 16);
      *&v143[0] = v41;
      *(&v143[0] + 1) = v43;
      v122 = v43;
      v135 = 47;
      v136 = 0xE100000000000000;
      v139 = 58;
      v140 = 0xE100000000000000;
      sub_1CEFE4E68();
      v49 = sub_1CF9E7668();
      v126 = v50;
      v123 = v27;
      sub_1CF0015AC(v27, v132, type metadata accessor for ItemMetadata);
      v51 = v133;
      if ((*(a1 + 208) & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v52 = *(a1 + 260);
        v113 = *(a1 + 208);
        v114 = v52;
        if (v37)
        {

          v53 = v130;
          sub_1CF9E58C8();
          swift_bridgeObjectRelease_n();
          v54 = 0;
        }

        else
        {
          v54 = 1;
          v53 = v130;
        }

        v55 = v131;
        v56 = sub_1CF9E5A58();
        (*(*(v56 - 8) + 56))(v53, v54, 1, v56);
        sub_1CEFE528C(v143);
        v112 = type metadata accessor for VFSItem(0);
        v57 = *(v112 + 48);
        v58 = *(v55 + 56);
        v131 = v55 + 56;
        v134 = v57;
        v111 = v58;
        v58(&v51[v57], 1, 1, v129);
        v59 = v126;
        v135 = v49;
        v136 = v126;
        v139 = 58;
        v140 = 0xE100000000000000;
        v141 = 47;
        v142 = 0xE100000000000000;
        v124 = sub_1CF9E7668();
        v61 = v60;
        v110 = v49;
        v135 = v49;
        v136 = v59;
        v139 = 58;
        v140 = 0xE100000000000000;
        v141 = 47;
        v142 = 0xE100000000000000;
        v135 = sub_1CF9E7668();
        v136 = v62;
        v63 = v125;
        sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v135);
        if (v63)
        {

          sub_1CEFCCC44(v130, &unk_1EC4BE310, qword_1CF9FCBE0);
          sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
          sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
          return sub_1CEFCCC44(v134 + v133, &unk_1EC4BED30, &unk_1CFA00710);
        }

        v64 = v124;
        v125 = v61;

        sub_1CF0015AC(v132, v128, type metadata accessor for ItemMetadata);
        v65 = v146;
        if (v121 == *(v146 + 24))
        {
          v37 = v133;
          if (v120 != v121 || (v116 & 1) == 0)
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
          }

          v49 = v64;
          *v133 = 0;
          LOBYTE(v9) = 2;
          *(v37 + 8) = 2;
          v37[2] = 0;
          v66 = 3;
          goto LABEL_33;
        }

        swift_beginAccess();
        v68 = *(v65 + 96);
        v37 = v133;
        LOBYTE(v9) = v116;
        v49 = v64;
        if (*(v68 + 16))
        {
          v69 = sub_1CF7BF2C0(v120, v116);
          if (v70)
          {
            v71 = v69;

            v72 = *(v68 + 56) + 32 * v71;
            v73 = *v72;
            LOBYTE(v71) = *(v72 + 8);
            v49 = *(v72 + 16);
            v125 = *(v72 + 24);

            *v37 = v120;
            *(v37 + 8) = v9;
            v66 = 3;
            LOBYTE(v9) = v71;
            v37[2] = v73;
LABEL_33:
            v74 = v127;
            goto LABEL_34;
          }
        }

        v83 = v109;
        if (*(v65 + 24) != v109)
        {
          v74 = v127;
          if ((*(v65 + 48) & 1) != 0 || *(v65 + 40) != v109)
          {
            *v37 = v120;
            *(v37 + 8) = v9;
            LOBYTE(v9) = 1;
            v66 = 3;
            v37[2] = v83;
          }

          else
          {
            *v37 = v120;
            *(v37 + 8) = v9;
            v37[2] = 1;
            LOBYTE(v9) = 2;
            v66 = 3;
          }

LABEL_34:
          LOBYTE(v37[v66]) = v9;
          v75 = (v128 + v74[14]);
          if (!v75[1])
          {

            sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
            sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
            v82 = v125;
LABEL_61:
            v88 = v115;
            v89 = v115 == 0;
            v90 = v133;
            *(v133 + 4) = v49;
            v90[5] = v82;
            v91 = v112;
            v92 = v90 + *(v112 + 36);
            *v92 = v121;
            *(v92 + 2) = v117;
            *(v92 + 2) = v119;
            v92[24] = v118;
            v93 = v128;
            sub_1CF0015AC(v128, v90 + v91[7], type metadata accessor for ItemMetadata);
            v94 = v134;
            sub_1CEFCCC44(v134 + v90, &unk_1EC4BED30, &unk_1CFA00710);
            sub_1CF007D78(v130, &v94[v90]);
            v111(&v94[v90], 0, 1, v129);
            LODWORD(v94) = *(v146 + 16);

            *(v90 + v91[13]) = v94;
            v95 = v90 + v91[14];
            *v95 = v88;
            v95[4] = v89;
            v96 = v90 + v91[11];
            *v96 = v113;
            v96[4] = 0;
            v97 = v90 + v91[8];
            v98 = v143[13];
            v99 = v143[14];
            v100 = v143[11];
            *(v97 + 12) = v143[12];
            *(v97 + 13) = v98;
            *(v97 + 14) = v99;
            v101 = v143[9];
            v102 = v143[10];
            v103 = v143[7];
            *(v97 + 8) = v143[8];
            *(v97 + 9) = v101;
            *(v97 + 10) = v102;
            *(v97 + 11) = v100;
            v104 = v143[5];
            v105 = v143[6];
            v106 = v143[3];
            *(v97 + 4) = v143[4];
            *(v97 + 5) = v104;
            *(v97 + 30) = v144;
            *(v97 + 6) = v105;
            *(v97 + 7) = v103;
            v107 = v143[1];
            *v97 = v143[0];
            *(v97 + 1) = v107;
            *(v97 + 2) = v143[2];
            *(v97 + 3) = v106;
            *(v90 + v91[10]) = v114;
            v67 = v93;
            return sub_1CF007B38(v67, type metadata accessor for ItemMetadata);
          }

          v124 = v49;
          v76 = *v75;
          sub_1CF51B588(&v135);
          v77 = v135;
          v78 = v136;
          v79 = v138;
          v127 = v137;

          sub_1CF51B588(&v135);
          v80 = v137;
          v81 = v138;
          if (v77 == v135 && v78 == v136)
          {
          }

          else
          {
            v85 = sub_1CF9E8048();

            if ((v85 & 1) == 0)
            {

              sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
              v49 = v124;
              v82 = v125;
              goto LABEL_60;
            }
          }

          v49 = v124;
          v82 = v125;
          if (v79)
          {
            if (v81)
            {
              if (v127 == v80 && v79 == v81)
              {

                sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
                sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
                goto LABEL_61;
              }

              v86 = sub_1CF9E8048();

              sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
              if (v86)
              {
                goto LABEL_61;
              }
            }

            else
            {

              sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
            }
          }

          else
          {

            sub_1CF007B38(v132, type metadata accessor for ItemMetadata);
            sub_1CF007B38(v123, type metadata accessor for ItemMetadata);
            if (!v81)
            {
              goto LABEL_61;
            }
          }

LABEL_60:
          v87 = v75[1];

          *v75 = 0;
          v75[1] = 0;
          goto LABEL_61;
        }

        v74 = v127;
        if (qword_1EDEAEE10 == -1)
        {
LABEL_41:
          if (__PAIR128__(v126, v110) == xmmword_1EDEBBE48 || (v84 = sub_1CF9E8048(), v74 = v127, (v84 & 1) != 0))
          {
            *v37 = 1;
            LOBYTE(v9) = 2;
            *(v37 + 8) = 2;
            v37[2] = 1;
            v66 = 3;
          }

          else
          {
            v37[2] = 0;
            *(v37 + 24) = 2;
            *v37 = v120;
            v66 = 1;
          }

          goto LABEL_34;
        }
      }

      swift_once();
      v74 = v127;
      goto LABEL_41;
    }

    __break(1u);
LABEL_67:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 359);
  }

  if (*(a1 + 16))
  {
    v120 = *(a1 + 16);
    v116 = 0;
    v38 = *a1;
    goto LABEL_8;
  }

  LODWORD(v143[0]) = 22;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v9 + 8))(v12, v8);
  swift_willThrow();

  v67 = v27;
  return sub_1CF007B38(v67, type metadata accessor for ItemMetadata);
}

uint64_t sub_1CF007B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF007DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1CF9E5648();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v14 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v15 = v14;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CF008240(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();

  if (v2)
  {

    v16 = sub_1CF9E5FF8();
    (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
  }

  else
  {
    sub_1CF9E55E8();
    (*(v19 + 8))(v7, v20);
  }

  sub_1CF9E5998();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CF008180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF0081E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF008240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned int *sub_1CF0082A0(unsigned int *result, uint64_t *a2)
{
  if (!*(result + 8))
  {
    v2 = result;
    v3 = *result;
    if (*result)
    {
      v5 = type metadata accessor for VFSItem(0);
      v6 = v2 + *(v5 + 36);
      v7 = *v6;
      v8 = (v2 + *(v5 + 56));
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v6 + 2);
      result = swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        if (v9)
        {
          if (qword_1EC4BCD10 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          os_unfair_lock_lock(&dword_1EC4BF380);
          swift_endAccess();

          v13 = *(v2 + 4);
          v12 = *(v2 + 5);

          v14 = *(v2 + 2);
          v15 = *(v2 + 24);
          if (v15 != 1)
          {
            if (v15 == 2 && !v14)
            {
              v14 = *a2;
            }

            else
            {
              v14 = 0;
            }
          }

          v16 = qword_1EC4BF350;
          v17 = unk_1EC4BF358;
          v18 = v9 | (v11 << 32);
          v19 = qword_1EC4BF360;
          v20 = qword_1EC4BF368;
          v21 = qword_1EC4BF370;
          v22 = qword_1EC4BF378;
          qword_1EC4BF350 = v3;
          unk_1EC4BF358 = v7;
          qword_1EC4BF360 = v14;
          qword_1EC4BF368 = v18;
          qword_1EC4BF370 = v13;
          qword_1EC4BF378 = v12;

          sub_1CF3260EC(v16, v17, v19, v20, v21, v22);

          swift_beginAccess();
          os_unfair_lock_unlock(&dword_1EC4BF380);
          return swift_endAccess();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF00856C@<X0>(const char *a1@<X0>, int a2@<W1>, BOOL *a3@<X8>)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF008708(&unk_1F4BEF378);
  v12 = access(a1, a2);
  if ((v12 & 0x80000000) == 0 || !MEMORY[0x1D38683F0]())
  {

LABEL_3:
    *a3 = v12 == 0;
    return result;
  }

  v14 = MEMORY[0x1D38683F0]();
  v15 = sub_1CF008830(v14, v11);

  if (v15)
  {
    goto LABEL_3;
  }

  MEMORY[0x1D38683F0](result);
  v16 = sub_1CF9E6138();
  if ((v16 & 0x100000000) != 0)
  {
    v17 = 22;
  }

  else
  {
    v17 = v16;
  }

  v18[3] = v17;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF198A44();
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v7 + 8))(v10, v6);
  return swift_willThrow();
}