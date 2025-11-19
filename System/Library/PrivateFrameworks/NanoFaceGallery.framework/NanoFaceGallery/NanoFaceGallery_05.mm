void sub_25B0AD0C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x2821FD6E8](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_25B0AD2CC(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_25B065C20(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_25B073AE0();
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_25B0E3AF0();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_25B0AD2CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_25B0E3CC0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_25B0E3CD0();

      if (!v16)
      {

        return;
      }

      sub_25B073AE0();
      swift_dynamicCast();
      v17 = sub_25B0E3AF0();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25B0AD448(__int128 *a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = sub_25B0E3CB0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v5 = ~v8;
    v4 = a2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a2 + 64);
    v7 = a2;
  }

  v11 = (v5 + 64) >> 6;

  v13 = 0;
  v14 = 0;
  v25 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v6;
    v16 = v14;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);
    v22 = v20;
    v23 = v21;
    if (!v22)
    {
LABEL_20:
      sub_25B043EC8();
      return MEMORY[0x25F860A80](v13);
    }

    while (1)
    {
      v29 = a1[2];
      v30 = a1[3];
      v31 = *(a1 + 8);
      v27 = *a1;
      v28 = a1[1];
      sub_25B0E3B00();

      sub_25B0E3B00();
      result = sub_25B0E3F50();
      v13 ^= result;
      v14 = v16;
      v6 = v18;
      v7 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v24 = sub_25B0E3CF0();
      if (v24)
      {
        v26 = v24;
        sub_25B073AE0();
        swift_dynamicCast();
        swift_dynamicCast();
        v23 = v26;
        v22 = v27;
        v16 = v14;
        v18 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = v14;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_20;
    }

    v15 = *(v4 + 8 * v16);
    ++v17;
    if (v15)
    {
      v7 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25B0AD668(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  sub_25B0AD0C8(a1[6], a2[6]);
  if (v10 & 1) != 0 && (sub_25B0A379C(a1[7], a2[7]))
  {
    return a1[8] == a2[8];
  }

  return 0;
}

uint64_t sub_25B0AD75C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B0ABF30(a1, v4, v5, v6);
}

uint64_t sub_25B0AD810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B0AC9E4(a1, v4, v5, v7, v6);
}

uint64_t sub_25B0AD8D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_25B0AD90C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15NanoFaceGallery07CuratedC0V0D3RowVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_25B0AD9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0ADA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0ADAA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F30, &qword_25B0E91C8);
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  sub_25B0E3900();
  v64 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0AE15C(a2, &v100);
  v97 = v108;
  v98[0] = v109[0];
  *(v98 + 9) = *(v109 + 9);
  v93 = v104;
  v94 = v105;
  v95 = v106;
  v96 = v107;
  v89 = v100;
  v90 = v101;
  v91 = v102;
  v92 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F38, &qword_25B0E91D0);
  sub_25B0B0178(&qword_27FA31F40, &qword_27FA31F38, &qword_25B0E91D0, sub_25B0B0148);
  v67 = v10;
  sub_25B0E3360();
  v126[8] = v97;
  v127[0] = v98[0];
  *(v127 + 9) = *(v98 + 9);
  v126[4] = v93;
  v126[5] = v94;
  v126[7] = v96;
  v126[6] = v95;
  v126[0] = v89;
  v126[1] = v90;
  v126[3] = v92;
  v126[2] = v91;
  sub_25B058448(v126, &qword_27FA31F38, &qword_25B0E91D0);
  v11 = [objc_opt_self() mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v130.origin.x = v13;
  v130.origin.y = v15;
  v130.size.width = v17;
  v130.size.height = v19;
  Width = CGRectGetWidth(v130);
  if (*a2 <= 0x14uLL && ((1 << *a2) & 0x124842) != 0)
  {
    v21 = v5;
    v22 = 5;
  }

  else
  {
    v21 = v5;
    v22 = 3;
  }

  *(&v65 + 1) = v22;
  v23 = v65;
  v24 = Width * 0.5 + -44.0;
  v62 = a2[11];
  v25 = v62;
  *&v65 = a2[8];
  v129[0] = v65;
  v128 = *(a1 + 192);
  v124 = 0;
  *&v123[7] = v128;
  sub_25B0B00E0(v129, &v100, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0B0A60(&v128, &v100);
  v26 = sub_25B0E3130();
  sub_25B0E2A00();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v125 = 0;
  sub_25B0AE4D0(a2, v83);
  v35 = v63;
  v36 = *(v63 + 16);
  v37 = v66;
  v36(v66, v67, v21);
  v80 = v83[12];
  v81 = v83[13];
  v82[0] = v84[0];
  *(v82 + 9) = *(v84 + 9);
  v76 = v83[8];
  v77 = v83[9];
  v78 = v83[10];
  v79 = v83[11];
  v72 = v83[4];
  v73 = v83[5];
  v74 = v83[6];
  v75 = v83[7];
  v68 = v83[0];
  v69 = v83[1];
  v70 = v83[2];
  v71 = v83[3];
  v36(v23, v37, v21);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F70, &qword_25B0E91F0);
  v39 = &v23[*(v38 + 48)];
  LOBYTE(v85[0]) = 3;
  *(&v85[0] + 1) = v25;
  v85[1] = v65;
  *v86 = v24;
  BYTE8(v86[0]) = 0;
  *(v86 + 9) = *v123;
  *(&v86[1] + 1) = *&v123[15];
  LOBYTE(v87) = v26;
  *(&v87 + 1) = v28;
  *&v88[0] = v30;
  *(&v88[0] + 1) = v32;
  *&v88[1] = v34;
  BYTE8(v88[1]) = 0;
  v40 = v65;
  *v39 = v85[0];
  *(v39 + 1) = v40;
  v41 = v88[0];
  *(v39 + 4) = v87;
  *(v39 + 5) = v41;
  *(v39 + 89) = *(v88 + 9);
  v42 = v86[1];
  *(v39 + 2) = v86[0];
  *(v39 + 3) = v42;
  v43 = *(v38 + 64);
  v44 = v72;
  v45 = v73;
  v93 = v72;
  v94 = v73;
  v46 = v74;
  v47 = v75;
  v95 = v74;
  v96 = v75;
  v48 = v76;
  v49 = v77;
  v97 = v76;
  v98[0] = v77;
  v50 = v78;
  v51 = v79;
  v98[1] = v78;
  v98[2] = v79;
  v52 = v81;
  v98[3] = v80;
  v98[4] = v81;
  v53 = v82[0];
  v99[0] = v82[0];
  *(v99 + 9) = *(v82 + 9);
  v54 = v70;
  v55 = v71;
  v91 = v70;
  v92 = v71;
  v56 = v68;
  v57 = v69;
  v89 = v68;
  v90 = v69;
  v58 = &v23[v43];
  *(v58 + 12) = v80;
  *(v58 + 13) = v52;
  *(v58 + 14) = v53;
  *(v58 + 233) = *(v82 + 9);
  *(v58 + 8) = v48;
  *(v58 + 9) = v49;
  *(v58 + 10) = v50;
  *(v58 + 11) = v51;
  *(v58 + 4) = v44;
  *(v58 + 5) = v45;
  *(v58 + 6) = v46;
  *(v58 + 7) = v47;
  *v58 = v56;
  *(v58 + 1) = v57;
  *(v58 + 2) = v54;
  *(v58 + 3) = v55;
  sub_25B0B00E0(v85, &v100, &qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0B00E0(&v89, &v100, &qword_27FA31F80, &qword_25B0E9200);
  v59 = *(v35 + 8);
  v59(v67, v21);
  v109[3] = v80;
  v109[4] = v81;
  v110[0] = v82[0];
  *(v110 + 9) = *(v82 + 9);
  v108 = v76;
  v109[0] = v77;
  v109[1] = v78;
  v109[2] = v79;
  v104 = v72;
  v105 = v73;
  v106 = v74;
  v107 = v75;
  v100 = v68;
  v101 = v69;
  v102 = v70;
  v103 = v71;
  sub_25B058448(&v100, &qword_27FA31F80, &qword_25B0E9200);
  v111[0] = 3;
  v112 = v62;
  v113 = v65;
  v114 = v24;
  v115 = 0;
  *v116 = *v123;
  *&v116[15] = *&v123[15];
  v117 = v26;
  v118 = v28;
  v119 = v30;
  v120 = v32;
  v121 = v34;
  v122 = 0;
  sub_25B058448(v111, &qword_27FA31F78, &qword_25B0E91F8);
  v59(v66, v21);
}

uint64_t sub_25B0AE15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25B0E24C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25B0E22E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25B0E3710();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25B0E22F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_27FA399C8);
  (*(v7 + 16))(v10, v17, v6);
  sub_25B0E24B0();
  sub_25B0E2300();
  v18 = sub_25B0E3200();
  v20 = v19;
  v22 = v21;
  sub_25B0E31B0();
  sub_25B0E3190();

  v23 = sub_25B0E31F0();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_25B0B0ABC(v18, v20, v22 & 1);

  LOBYTE(v18) = sub_25B0E3120();
  sub_25B0E2A00();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v52[24] = v27 & 1;
  v52[16] = 0;
  LOBYTE(v20) = sub_25B0E3130();
  sub_25B0E2A00();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v52[32] = 0;
  v46 = sub_25B0E3100();
  result = sub_25B0E2A00();
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = v18;
  *(a2 + 40) = v31;
  *(a2 + 48) = v33;
  *(a2 + 56) = v35;
  *(a2 + 64) = v37;
  *(a2 + 72) = 0;
  *(a2 + 80) = v20;
  *(a2 + 88) = v39;
  *(a2 + 96) = v41;
  *(a2 + 104) = v43;
  *(a2 + 112) = v45;
  *(a2 + 120) = 0;
  *(a2 + 128) = v46;
  *(a2 + 136) = v48;
  *(a2 + 144) = v49;
  *(a2 + 152) = v50;
  *(a2 + 160) = v51;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_25B0AE4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25B0E24C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25B0E22E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25B0E3710();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25B0E22F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  if (*(a1 + 32))
  {
    v15 = *(a1 + 24);
  }

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_27FA399C8);
  (*(v7 + 16))(v10, v16, v6);
  sub_25B0E24B0();
  sub_25B0E2300();
  v17 = sub_25B0E3200();
  v19 = v18;
  v21 = v20;
  sub_25B0E3170();
  v48 = sub_25B0E31F0();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_25B0B0ABC(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  sub_25B0E3590();
  sub_25B0E2D30();
  *&v49[55] = v55;
  *&v49[71] = v56;
  *&v49[87] = v57;
  *&v49[103] = v58;
  *&v49[7] = v52;
  *&v49[23] = v53;
  v29 = v25 & 1;
  v50 = v25 & 1;
  *&v49[39] = v54;
  v30 = sub_25B0E3130();
  sub_25B0E2A00();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v51 = 0;
  v39 = sub_25B0E3100();
  result = sub_25B0E2A00();
  v41 = *&v49[80];
  *(a2 + 105) = *&v49[64];
  *(a2 + 121) = v41;
  *(a2 + 137) = *&v49[96];
  v42 = *&v49[16];
  *(a2 + 41) = *v49;
  *(a2 + 57) = v42;
  v43 = *&v49[48];
  *(a2 + 73) = *&v49[32];
  *a2 = v48;
  *(a2 + 8) = v23;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 152) = *&v49[111];
  *(a2 + 89) = v43;
  *(a2 + 160) = v30;
  *(a2 + 168) = v32;
  *(a2 + 176) = v34;
  *(a2 + 184) = v36;
  *(a2 + 192) = v38;
  *(a2 + 200) = 0;
  *(a2 + 208) = v39;
  *(a2 + 216) = v44;
  *(a2 + 224) = v45;
  *(a2 + 232) = v46;
  *(a2 + 240) = v47;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_25B0AE8CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_25B0E2FE0();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E38, &qword_25B0E9138);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v9 = &v73 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E40, &qword_25B0E9140);
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v79);
  v13 = &v73 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E48, &qword_25B0E9148);
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v77 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E50, &qword_25B0E9150);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E58, &qword_25B0E9158);
  v20 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v22 = &v73 - v21;
  v23 = *(v2 + 14);
  v137 = v2[6];
  v24 = *(v2 + 136);
  v25 = *(v2 + 168);
  v134 = *(v2 + 152);
  v135 = v25;
  v136 = *(v2 + 23);
  v132 = *(v2 + 120);
  v133 = v24;
  if (v23)
  {
    v125 = v2[6];
    v128 = *(v2 + 136);
    v129 = *(v2 + 152);
    v130 = *(v2 + 168);
    v26 = *(v2 + 23);
    v126 = v23;
    v131 = v26;
    v127 = *(v2 + 120);
    v82 = v125;
    v84 = v127;
    v83 = v23;
    v88 = v26;
    v87 = v130;
    v86 = v129;
    v85 = v128;
    sub_25B08CE58(&v82, &v110);
    *v19 = sub_25B0E2E90();
    *(v19 + 1) = 0x4030000000000000;
    v19[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F08, &qword_25B0E91A0);
    sub_25B0AF0C8(v2, &v125, &v19[*(v27 + 44)]);
    sub_25B058150(&qword_27FA31EE8, &qword_27FA31E50, &qword_25B0E9150);
    sub_25B0E32D0();
    sub_25B058448(v19, &qword_27FA31E50, &qword_25B0E9150);
    v28 = v2[3];
    v90 = v2[2];
    v91 = v28;
    v29 = v2[5];
    v92 = v2[4];
    v93 = v29;
    v30 = v2[1];
    v89[0] = *v2;
    v89[1] = v30;
    v96 = v90;
    v97 = v28;
    v98 = v92;
    v99 = v29;
    v94 = v89[0];
    v95 = v30;
    v100 = v137;
    sub_25B08CE58(v89, &v110);
    v31 = sub_25B0E3590();
    v32 = v136;
    *&v108[0] = v23;
    *(&v108[4] + 1) = v136;
    v33 = v98;
    v34 = v99;
    v105 = v98;
    v106 = v99;
    v35 = v100;
    v107 = v100;
    v36 = v94;
    v37 = v95;
    v101 = v94;
    v102 = v95;
    v39 = v96;
    v38 = v97;
    v103 = v96;
    v104 = v97;
    v40 = v133;
    *(v108 + 8) = v132;
    v41 = v134;
    *(&v108[3] + 8) = v135;
    v42 = v135;
    *(&v108[2] + 8) = v134;
    v43 = v132;
    *(&v108[1] + 8) = v133;
    *&v109 = v31;
    *(&v109 + 1) = v44;
    v45 = &v22[*(v76 + 36)];
    v46 = v108[4];
    *(v45 + 10) = v108[3];
    *(v45 + 11) = v46;
    *(v45 + 12) = v109;
    v47 = v108[0];
    *(v45 + 6) = v107;
    *(v45 + 7) = v47;
    v48 = v108[2];
    *(v45 + 8) = v108[1];
    *(v45 + 9) = v48;
    v49 = v104;
    *(v45 + 2) = v103;
    *(v45 + 3) = v49;
    v50 = v106;
    *(v45 + 4) = v105;
    *(v45 + 5) = v50;
    v51 = v102;
    *v45 = v101;
    *(v45 + 1) = v51;
    v114 = v33;
    v115 = v34;
    v116 = v35;
    v110 = v36;
    v111 = v37;
    v112 = v39;
    v113 = v38;
    v118 = v43;
    v117 = v23;
    v122 = v32;
    v121 = v42;
    v120 = v41;
    v119 = v40;
    v123 = v31;
    v124 = v44;
    sub_25B0B00E0(&v101, v81, &qword_27FA31F00, &qword_25B0E9198);
    sub_25B058448(&v110, &qword_27FA31F00, &qword_25B0E9198);
    sub_25B0B00E0(v22, v77, &qword_27FA31E58, &qword_25B0E9158);
    swift_storeEnumTagMultiPayload();
    sub_25B0AFF18();
    v52 = sub_25B0AFCF0();
    v81[0] = v78;
    v81[1] = v52;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return sub_25B058448(v22, &qword_27FA31E58, &qword_25B0E9158);
  }

  else
  {
    *v9 = sub_25B0E2F00();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E60, &qword_25B0E9160);
    sub_25B0AF39C(v2, &v9[*(v54 + 44)]);
    v55 = sub_25B0E33B0();
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E68, &qword_25B0E9168) + 36)] = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E70, &qword_25B0E9170);
    v57 = *(v56 + 36);
    v58 = v2[3];
    v59 = v2[1];
    v112 = v2[2];
    v113 = v58;
    v60 = v2[3];
    v61 = v2[5];
    v114 = v2[4];
    v115 = v61;
    v62 = v2[1];
    v110 = *v2;
    v63 = v110;
    v111 = v62;
    v103 = v112;
    v104 = v60;
    v64 = v2[5];
    v105 = v114;
    v106 = v64;
    v9[v57] = 0;
    v101 = v63;
    v102 = v59;
    MEMORY[0x28223BE20](v56);
    *(&v73 - 2) = v2;
    v65 = v78;
    v66 = &v9[*(v78 + 36)];
    sub_25B08CE58(&v110, v81);
    sub_25B0AFC48();
    sub_25B0AFC9C();
    sub_25B0E2BF0();
    v67 = sub_25B0E3590();
    v69 = v68;
    v70 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E88, &qword_25B0E9178) + 36)];
    *v70 = v67;
    v70[1] = v69;
    sub_25B0E2FD0();
    v71 = sub_25B0AFCF0();
    sub_25B0E32E0();
    (*(v73 + 8))(v6, v74);
    sub_25B058448(v9, &qword_27FA31E38, &qword_25B0E9138);
    v72 = v79;
    (*(v10 + 16))(v77, v13, v79);
    swift_storeEnumTagMultiPayload();
    sub_25B0AFF18();
    *&v101 = v65;
    *(&v101 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return (*(v10 + 8))(v13, v72);
  }
}

uint64_t sub_25B0AF0C8@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F10, &qword_25B0E91A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1[3];
  v28[2] = a1[2];
  v28[3] = v17;
  v18 = a1[5];
  v28[4] = a1[4];
  v28[5] = v18;
  v19 = a1[1];
  v28[0] = *a1;
  v28[1] = v19;
  *v16 = sub_25B0E2F00();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F18, &qword_25B0E91B0);
  sub_25B0ADAA0(a1, v28, &v16[*(v20 + 44)]);
  v21 = sub_25B0E33B0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F20, &qword_25B0E91B8);
  *&v16[*(v22 + 36)] = v21;
  v16[*(v4 + 36)] = 0;
  *v14 = sub_25B0E2F00();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_25B0ADAA0(a1, v26, &v14[*(v20 + 44)]);
  *&v14[*(v22 + 36)] = sub_25B0E33B0();
  v14[*(v4 + 36)] = 0;
  sub_25B0B00E0(v16, v11, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B0B00E0(v14, v8, &qword_27FA31F10, &qword_25B0E91A8);
  v23 = v27;
  sub_25B0B00E0(v11, v27, &qword_27FA31F10, &qword_25B0E91A8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F28, &qword_25B0E91C0);
  sub_25B0B00E0(v8, v23 + *(v24 + 48), &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v14, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v16, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v8, &qword_27FA31F10, &qword_25B0E91A8);
  sub_25B058448(v11, &qword_27FA31F10, &qword_25B0E91A8);
}

uint64_t sub_25B0AF39C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F90, &qword_25B0E9240);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v50 - v9;
  sub_25B0E3900();
  v11 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[3];
  v98[2] = a1[2];
  v98[3] = v12;
  v13 = a1[5];
  v99 = a1[4];
  v100 = v13;
  v14 = a1[1];
  v98[0] = *a1;
  v98[1] = v14;
  sub_25B0AE15C(v98, v95);
  v50[1] = v11;
  if (*&v98[0] <= 0x14uLL && ((1 << SLOBYTE(v98[0])) & 0x124842) != 0)
  {
    v15 = 5;
  }

  else
  {
    v15 = 3;
  }

  v16 = *(&v100 + 1);
  v17 = v99;
  v101[0] = v99;
  v97 = a1[12];
  v93 = 1;
  *&v92[7] = v97;
  sub_25B0B00E0(v101, &v84, &qword_27FA31F68, &qword_25B0E91E8);
  sub_25B0B0A60(&v97, &v84);
  v18 = sub_25B0E3130();
  sub_25B0E2A00();
  v94 = 0;
  LOBYTE(v84) = 3;
  *(&v84 + 1) = v16;
  *&v85 = v17;
  *(&v85 + 1) = v15;
  *&v86[0] = 0;
  BYTE8(v86[0]) = 1;
  *(v86 + 9) = *v92;
  *(&v86[1] + 1) = *&v92[15];
  LOBYTE(v87) = v18;
  *(&v87 + 1) = v19;
  *&v88[0] = v20;
  *(&v88[0] + 1) = v21;
  *&v88[1] = v22;
  BYTE8(v88[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0B0178(&qword_27FA31F98, &qword_27FA31F78, &qword_25B0E91F8, sub_25B0B0B20);
  sub_25B0E32D0();
  v76[4] = v87;
  v77[0] = v88[0];
  *(v77 + 9) = *(v88 + 9);
  v76[0] = v84;
  v76[1] = v85;
  v76[2] = v86[0];
  v76[3] = v86[1];
  sub_25B058448(v76, &qword_27FA31F78, &qword_25B0E91F8);
  sub_25B0AE4D0(v98, v78);
  v74 = v95[8];
  v75[0] = v96[0];
  *(v75 + 9) = *(v96 + 9);
  v70 = v95[4];
  v71 = v95[5];
  v72 = v95[6];
  v73 = v95[7];
  v66 = v95[0];
  v67 = v95[1];
  v68 = v95[2];
  v69 = v95[3];
  sub_25B0B00E0(v10, v8, &qword_27FA31F90, &qword_25B0E9240);
  v63 = v78[12];
  v64 = v78[13];
  v65[0] = v79[0];
  *(v65 + 9) = *(v79 + 9);
  v59 = v78[8];
  v60 = v78[9];
  v61 = v78[10];
  v62 = v78[11];
  v55 = v78[4];
  v56 = v78[5];
  v57 = v78[6];
  v58 = v78[7];
  v51 = v78[0];
  v52 = v78[1];
  v53 = v78[2];
  v54 = v78[3];
  v23 = v75[0];
  v80[8] = v74;
  v81[0] = v75[0];
  *(v81 + 9) = *(v75 + 9);
  v24 = v70;
  v25 = v71;
  v80[4] = v70;
  v80[5] = v71;
  v27 = v72;
  v26 = v73;
  v80[6] = v72;
  v80[7] = v73;
  v28 = v66;
  v29 = v67;
  v80[0] = v66;
  v80[1] = v67;
  v31 = v68;
  v30 = v69;
  v80[2] = v68;
  v80[3] = v69;
  a2[8] = v74;
  a2[9] = v23;
  *(a2 + 153) = *(v75 + 9);
  a2[4] = v24;
  a2[5] = v25;
  a2[6] = v27;
  a2[7] = v26;
  *a2 = v28;
  a2[1] = v29;
  a2[2] = v31;
  a2[3] = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FA8, &qword_25B0E9248);
  sub_25B0B00E0(v8, a2 + *(v32 + 48), &qword_27FA31F90, &qword_25B0E9240);
  v33 = *(v32 + 64);
  v34 = v64;
  v82[12] = v63;
  v82[13] = v64;
  v35 = v65[0];
  v83[0] = v65[0];
  *(v83 + 9) = *(v65 + 9);
  v36 = v59;
  v37 = v60;
  v82[8] = v59;
  v82[9] = v60;
  v38 = v61;
  v39 = v62;
  v82[10] = v61;
  v82[11] = v62;
  v40 = v55;
  v41 = v56;
  v82[4] = v55;
  v82[5] = v56;
  v42 = v57;
  v43 = v58;
  v82[6] = v57;
  v82[7] = v58;
  v44 = v51;
  v45 = v52;
  v82[0] = v51;
  v82[1] = v52;
  v46 = v53;
  v47 = v54;
  v82[2] = v53;
  v82[3] = v54;
  v48 = (a2 + v33);
  v48[12] = v63;
  v48[13] = v34;
  v48[14] = v35;
  *(v48 + 233) = *(v65 + 9);
  v48[8] = v36;
  v48[9] = v37;
  v48[10] = v38;
  v48[11] = v39;
  v48[4] = v40;
  v48[5] = v41;
  v48[6] = v42;
  v48[7] = v43;
  *v48 = v44;
  v48[1] = v45;
  v48[2] = v46;
  v48[3] = v47;
  sub_25B0B00E0(v80, &v84, &qword_27FA31F38, &qword_25B0E91D0);
  sub_25B0B00E0(v82, &v84, &qword_27FA31F80, &qword_25B0E9200);
  sub_25B058448(v10, &qword_27FA31F90, &qword_25B0E9240);
  v88[7] = v63;
  v88[8] = v64;
  v89[0] = v65[0];
  *(v89 + 9) = *(v65 + 9);
  v88[3] = v59;
  v88[4] = v60;
  v88[5] = v61;
  v88[6] = v62;
  v87 = v55;
  v88[0] = v56;
  v88[1] = v57;
  v88[2] = v58;
  v84 = v51;
  v85 = v52;
  v86[0] = v53;
  v86[1] = v54;
  sub_25B058448(&v84, &qword_27FA31F80, &qword_25B0E9200);
  sub_25B058448(v8, &qword_27FA31F90, &qword_25B0E9240);
  v90[8] = v74;
  v91[0] = v75[0];
  *(v91 + 9) = *(v75 + 9);
  v90[4] = v70;
  v90[5] = v71;
  v90[7] = v73;
  v90[6] = v72;
  v90[0] = v66;
  v90[1] = v67;
  v90[3] = v69;
  v90[2] = v68;
  sub_25B058448(v90, &qword_27FA31F38, &qword_25B0E91D0);
}

uint64_t sub_25B0AF9D0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25B0E2930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[3];
  v18[2] = a1[2];
  v18[3] = v9;
  v10 = a1[5];
  v18[4] = a1[4];
  v18[5] = v10;
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  if (*&v18[0] == 1 && (sub_25B0D48FC(), v13 = *(v12 + 16), , v13))
  {
    sub_25B0D48FC();
    v15 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25B0E7720;
    if (qword_27FA30D48 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_27FA39A10);
    (*(v5 + 16))(v8, v16, v4);
    *(v15 + 32) = sub_25B0E33D0();
  }

  *a2 = v15;
  a2[1] = &unk_286C58F28;
  return result;
}

uint64_t sub_25B0AFBDC@<X0>(uint64_t a1@<X8>)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_25B0AE8CC(a1);
}

unint64_t sub_25B0AFC48()
{
  result = qword_27FA31E78;
  if (!qword_27FA31E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E78);
  }

  return result;
}

unint64_t sub_25B0AFC9C()
{
  result = qword_27FA31E80;
  if (!qword_27FA31E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E80);
  }

  return result;
}

unint64_t sub_25B0AFCF0()
{
  result = qword_27FA31E90;
  if (!qword_27FA31E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E38, &qword_25B0E9138);
    sub_25B0AFDA8();
    sub_25B058150(&qword_27FA31EC8, &qword_27FA31E88, &qword_25B0E9178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E90);
  }

  return result;
}

unint64_t sub_25B0AFDA8()
{
  result = qword_27FA31E98;
  if (!qword_27FA31E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E70, &qword_25B0E9170);
    sub_25B0AFE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E98);
  }

  return result;
}

unint64_t sub_25B0AFE34()
{
  result = qword_27FA31EA0;
  if (!qword_27FA31EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E68, &qword_25B0E9168);
    sub_25B058150(&qword_27FA31EA8, &qword_27FA31EB0, &unk_25B0E9180);
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31EA0);
  }

  return result;
}

unint64_t sub_25B0AFF18()
{
  result = qword_27FA31ED0;
  if (!qword_27FA31ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E58, &qword_25B0E9158);
    sub_25B0AFFD0();
    sub_25B058150(&qword_27FA31EF8, &qword_27FA31F00, &qword_25B0E9198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31ED0);
  }

  return result;
}

unint64_t sub_25B0AFFD0()
{
  result = qword_27FA31ED8;
  if (!qword_27FA31ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31EE0, &qword_25B0E9190);
    sub_25B058150(&qword_27FA31EE8, &qword_27FA31E50, &qword_25B0E9150);
    sub_25B0B0088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31ED8);
  }

  return result;
}

unint64_t sub_25B0B0088()
{
  result = qword_27FA31EF0;
  if (!qword_27FA31EF0)
  {
    sub_25B0E3080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31EF0);
  }

  return result;
}

uint64_t sub_25B0B00E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B0B0178(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B0B01FC()
{
  result = qword_27FA31F58;
  if (!qword_27FA31F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31F60, &qword_25B0E91E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31F58);
  }

  return result;
}

uint64_t sub_25B0B0280@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FC8, &qword_25B0E9348);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FD0, &qword_25B0E9350);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  sub_25B0E3900();
  v51 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1[3];
  v20 = a1[1];
  v65 = a1[2];
  v66 = v19;
  v21 = a1[3];
  v22 = a1[5];
  v67 = a1[4];
  v68 = v22;
  v23 = a1[1];
  *v64 = *a1;
  *&v64[16] = v23;
  v60 = v65;
  v61 = v21;
  v24 = a1[5];
  v62 = v67;
  v63 = v24;
  *v59 = *v64;
  *&v59[16] = v20;
  sub_25B08CE58(v64, v58);
  v48 = sub_25B0AFC48();
  sub_25B0AFC9C();
  sub_25B0E2BF0();
  v26 = *&v64[24];
  v25 = v65;
  v57 = *&v64[8];

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v25)
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x25F8602F0](v27, v25);

  *v59 = v57;
  v46 = sub_25B058150(&qword_27FA31FD8, &qword_27FA31FC8, &qword_25B0E9348);
  sub_25B04C9BC();
  sub_25B0E32B0();

  v47 = v18;
  v28 = *(v52 + 8);
  v28(v8, v3);
  v29 = a1[9];
  v30 = a1[7];
  v60 = a1[8];
  v61 = v29;
  v31 = a1[9];
  v32 = a1[11];
  v62 = a1[10];
  v63 = v32;
  v33 = a1[7];
  *v59 = a1[6];
  *&v59[16] = v33;
  v58[2] = v60;
  v58[3] = v31;
  v34 = a1[11];
  v58[4] = v62;
  v58[5] = v34;
  v58[0] = *v59;
  v58[1] = v30;
  sub_25B08CE58(v59, &v56);
  v35 = v50;
  sub_25B0E2BF0();
  v37 = *&v59[24];
  v36 = v60;
  v58[0] = *&v59[8];

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (!v36)
  {
    v36 = 0xE000000000000000;
  }

  MEMORY[0x25F8602F0](v38, v36);

  v39 = v49;
  sub_25B0E32B0();

  v28(v35, v3);
  v40 = v47;
  v41 = v53;
  sub_25B0B00E0(v47, v53, &qword_27FA31FD0, &qword_25B0E9350);
  v42 = v54;
  sub_25B0B00E0(v39, v54, &qword_27FA31FD0, &qword_25B0E9350);
  v43 = v55;
  sub_25B0B00E0(v41, v55, &qword_27FA31FD0, &qword_25B0E9350);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FE0, &qword_25B0E9358);
  sub_25B0B00E0(v42, v43 + *(v44 + 48), &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v39, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v40, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v42, &qword_27FA31FD0, &qword_25B0E9350);
  sub_25B058448(v41, &qword_27FA31FD0, &qword_25B0E9350);
}

uint64_t sub_25B0B0814@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_25B0E2930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25B0E7720;
  if (qword_27FA30D48 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27FA39A10);
  (*(v5 + 16))(v8, v10, v4);
  *(v9 + 32) = sub_25B0E33D0();

  *a2 = v9;
  a2[1] = a1;
  return result;
}

uint64_t sub_25B0B09D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v11[8] = v1[8];
  v11[9] = v3;
  v4 = v1[11];
  v11[10] = v1[10];
  v11[11] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[7];
  v11[6] = v1[6];
  v11[7] = v6;
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  *a1 = sub_25B0E2EA0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FC0, &qword_25B0E9340);
  return sub_25B0B0280(v11, a1 + *(v9 + 44));
}

uint64_t sub_25B0B0ABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B0B0ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B0E2DD0();
  *a1 = result;
  return result;
}

unint64_t sub_25B0B0B20()
{
  result = qword_27FA31FA0;
  if (!qword_27FA31FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31FA0);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_25B0B0BA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B0BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0B0C70()
{
  result = qword_27FA31FB0;
  if (!qword_27FA31FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31FB8, ">[");
    sub_25B0AFF18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31E38, &qword_25B0E9138);
    sub_25B0AFCF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31FB0);
  }

  return result;
}

uint64_t type metadata accessor for CuratedGalleryView()
{
  result = qword_27FA32000;
  if (!qword_27FA32000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0B0DE8()
{
  sub_25B0B0E84();
  if (v0 <= 0x3F)
  {
    sub_25B0B0EDC();
    if (v1 <= 0x3F)
    {
      sub_25B0B0F2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25B0B0E84()
{
  if (!qword_27FA32010)
  {
    sub_25B0E2C70();
    v0 = sub_25B0E2A60();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32010);
    }
  }
}

void sub_25B0B0EDC()
{
  if (!qword_27FA32018)
  {
    v0 = sub_25B0E3840();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32018);
    }
  }
}

unint64_t sub_25B0B0F2C()
{
  result = qword_27FA32020;
  if (!qword_27FA32020)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA32020);
  }

  return result;
}

uint64_t sub_25B0B1004()
{
  sub_25B0E3F10();
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  *&v13[13] = *(v0 + 5);
  *&v13[15] = v3;
  v4 = v0[10];
  v13[17] = v0[9];
  *&v13[9] = *(v0 + 1);
  *&v13[11] = v2;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[22];
  v9 = v0[23];
  MEMORY[0x25F860A80](v1);
  sub_25B0AB55C(v13);
  sub_25B0DB028(v13, v4);
  MEMORY[0x25F860A80](v6);
  if (v8)
  {
    v11 = *(v0 + 17);
    v14 = *(v0 + 15);
    v15 = v11;
    v16 = *(v0 + 19);
    v17 = v0[21];
    sub_25B0E3F30();
    MEMORY[0x25F860A80](v5);
    v13[18] = v7;
    v13[19] = v8;
    sub_25B0AB55C(v13);
    sub_25B0DB028(v13, v10);
    MEMORY[0x25F860A80](v9);
  }

  else
  {
    sub_25B0E3F30();
  }

  return sub_25B0E3F50();
}

uint64_t sub_25B0B1130()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25B0B1004();
}

uint64_t sub_25B0B118C(__int128 *a1)
{
  v17 = *(v1 + 40);
  v18 = *(v1 + 56);
  v3 = *(v1 + 80);
  v19 = *(v1 + 72);
  v15 = *(v1 + 8);
  v16 = *(v1 + 24);
  v5 = *(v1 + 88);
  v4 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v9 = *(v1 + 176);
  v8 = *(v1 + 184);
  MEMORY[0x25F860A80](*v1);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v3);
  MEMORY[0x25F860A80](v5);
  if (!v7)
  {
    return sub_25B0E3F30();
  }

  v11 = *(v1 + 120);
  v12 = *(v1 + 136);
  v13 = *(v1 + 152);
  v14 = *(v1 + 168);
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v4);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v9);
  return MEMORY[0x25F860A80](v8);
}

uint64_t sub_25B0B12A4()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  v22 = *(v0 + 5);
  v23 = v3;
  v4 = v0[10];
  v24 = v0[9];
  v20 = *(v0 + 1);
  v21 = v2;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[22];
  v9 = v0[23];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  sub_25B0AB55C(v13);
  sub_25B0DB028(v13, v4);
  MEMORY[0x25F860A80](v6);
  if (v8)
  {
    v11 = *(v0 + 17);
    v16 = *(v0 + 15);
    v17 = v11;
    v18 = *(v0 + 19);
    v19 = v0[21];
    sub_25B0E3F30();
    MEMORY[0x25F860A80](v5);
    v14 = v7;
    v15 = v8;
    sub_25B0AB55C(v13);
    sub_25B0DB028(v13, v10);
    MEMORY[0x25F860A80](v9);
  }

  else
  {
    sub_25B0E3F30();
  }

  return sub_25B0E3F50();
}

uint64_t sub_25B0B13D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v21[2] = v1[2];
  v21[3] = v3;
  v4 = v1[5];
  v21[4] = v1[4];
  v21[5] = v4;
  v5 = v1[1];
  v21[0] = *v1;
  v21[1] = v5;
  v6 = v1[9];
  v22[2] = v1[8];
  v22[3] = v6;
  v7 = v1[11];
  v22[4] = v1[10];
  v22[5] = v7;
  v8 = v1[7];
  v22[0] = v1[6];
  v22[1] = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
  v10 = swift_allocObject();
  v11 = v1[2];
  v12 = v1[4];
  v13 = v1[5];
  *(v10 + 80) = v1[3];
  *(v10 + 96) = v12;
  if (v9)
  {
    v14 = *v1;
    v15 = v1[1];
    *(v10 + 16) = xmmword_25B0E7730;
    *(v10 + 32) = v14;
    *(v10 + 48) = v15;
    *(v10 + 64) = v11;
    v16 = v1[6];
    *(v10 + 112) = v13;
    *(v10 + 128) = v16;
    *(v10 + 144) = v9;
    *(v10 + 152) = *(v1 + 120);
    *(v10 + 216) = *(v1 + 23);
    *(v10 + 200) = *(v1 + 168);
    *(v10 + 184) = *(v1 + 152);
    *(v10 + 168) = *(v1 + 136);
  }

  else
  {
    *(v10 + 112) = v13;
    v17 = *v1;
    v18 = v1[1];
    *(v10 + 16) = xmmword_25B0E7720;
    *(v10 + 32) = v17;
    *(v10 + 48) = v18;
    *(v10 + 64) = v11;
  }

  *a1 = v10;
  sub_25B08CE58(v21, v20);
  return sub_25B0B00E0(v22, v20, &qword_27FA320C0, &qword_25B0E94B8);
}

uint64_t sub_25B0B150C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_25B0B3FD0(v15, v16) & 1;
}

uint64_t sub_25B0B15A0()
{
  v86 = sub_25B0E2E60();
  v1 = *(v86 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  v4 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = (&v82 - v5);
  v97 = sub_25B0E2C70();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v97);
  v96 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = *(type metadata accessor for CuratedGalleryView() + 20);
  v100 = v0;
  v13 = *(v0 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_25B0B33E8(*(v13 + 16), 0);
    v16 = sub_25B0B3764(v123, v15 + 32, v14, v13);

    if (v16 != v14)
    {
      goto LABEL_40;
    }

    if (*(v15 + 2))
    {
      goto LABEL_4;
    }

LABEL_37:

    return MEMORY[0x277D84F90];
  }

  v15 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_37;
  }

LABEL_4:
  v95 = v11;
  v83 = (v6 + 32);
  v84 = (v1 + 8);
  v94 = *MEMORY[0x277CDF9F0];
  v92 = (v6 + 8);
  v93 = (v6 + 104);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v15 + 2);
      if (!v19)
      {
        break;
      }

      goto LABEL_7;
    }

    result = sub_25B0B3A1C(v15);
    v15 = result;
    v19 = *(result + 16);
    if (!v19)
    {
      break;
    }

LABEL_7:
    v20 = v19 - 1;
    v21 = v15 + 32;
    v22 = &v15[96 * v20 + 32];
    v23 = *v22;
    v24 = *(v22 + 8);
    v137 = *(v22 + 24);
    v25 = *(v22 + 40);
    v26 = *(v22 + 56);
    v27 = *(v22 + 72);
    v141 = *(v22 + 88);
    v139 = v26;
    v140 = v27;
    v138 = v25;
    v136 = v24;
    *(v15 + 2) = v20;
    v132 = v138;
    v133 = v139;
    v134 = v140;
    v135 = v141;
    v130 = v24;
    v131 = v137;
    if (v23 <= 0x14 && ((1 << v23) & 0x124842) != 0)
    {
      goto LABEL_11;
    }

    v107 = v18;
    v41 = v98;
    sub_25B0B00E0(v100, v98, &qword_27FA32070, &qword_25B0E9490);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v108 = v15;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v95;
      v44 = v97;
      (*v83)();
    }

    else
    {
      v45 = *v41;
      sub_25B0E3A40();
      v46 = sub_25B0E30D0();
      sub_25B0E2940();

      v44 = v97;
      v47 = v85;
      sub_25B0E2E50();
      v43 = v95;
      swift_getAtKeyPath();

      (*v84)(v47, v86);
    }

    v48 = v96;
    (*v93)(v96, v94, v44);
    sub_25B0B3A30(&qword_27FA320C8, MEMORY[0x277CDFA28]);
    LODWORD(v106) = sub_25B0E36F0();
    v49 = *v92;
    (*v92)(v48, v44);
    v49(v43, v44);
    v18 = v107;
    v15 = v108;
    if (v106)
    {
LABEL_11:
      *(&v123[2] + 8) = v132;
      *(&v123[3] + 8) = v133;
      *(&v123[4] + 8) = v134;
      *(v123 + 8) = v130;
      *&v123[0] = v23;
      *(&v123[5] + 1) = v135;
      *(&v123[1] + 8) = v131;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      sub_25B0B3A78(v123, &v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_25B08A018(0, *(v18 + 2) + 1, 1, v18);
      }

      v30 = *(v18 + 2);
      v29 = *(v18 + 3);
      if (v30 >= v29 >> 1)
      {
        v18 = sub_25B08A018((v29 > 1), v30 + 1, 1, v18);
      }

      *(v18 + 2) = v30 + 1;
      v31 = &v18[192 * v30];
      v32 = v123[0];
      v33 = v123[1];
      v34 = v123[3];
      *(v31 + 4) = v123[2];
      *(v31 + 5) = v34;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v35 = v123[4];
      v36 = v123[5];
      v37 = v125;
      *(v31 + 8) = v124;
      *(v31 + 9) = v37;
      *(v31 + 6) = v35;
      *(v31 + 7) = v36;
      v38 = v126;
      v39 = v127;
      v40 = v129;
      *(v31 + 12) = v128;
      *(v31 + 13) = v40;
      *(v31 + 10) = v38;
      *(v31 + 11) = v39;
      v109 = v23;
      v112 = v132;
      v113 = v133;
      v114 = v134;
      v115 = v135;
      v110 = v130;
      v111 = v131;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      sub_25B0B3AB0(&v109);
      if (!*(v15 + 2))
      {
LABEL_35:

        return v18;
      }
    }

    else
    {
      v50 = *(v108 + 2);
      if (v50 && ((v51 = v21[12 * v50 - 12], v51 > 0x14) || ((1 << v51) & 0x124842) == 0))
      {
        v76 = v50 - 1;
        v77 = &v21[12 * v76];
        v53 = v77[1];
        v52 = v77[2];
        v78 = v77[4];
        v105 = v77[3];
        v106 = v78;
        v79 = v77[5];
        v87 = *(v77 + 3);
        v103 = v77[8];
        v80 = v77[9];
        v101 = v79;
        v102 = v80;
        v54 = v77[11];
        v104 = v77[10];
        *(v108 + 2) = v76;
      }

      else
      {
        v103 = 0;
        v104 = 0;
        v101 = 0;
        v102 = 0;
        v87 = 0uLL;
        v105 = 0;
        v106 = 0;
        v52 = 0;
        v53 = 0;
        v51 = 0;
        v54 = 0;
      }

      memset(v122, 0, sizeof(v122));
      sub_25B058448(v122, &qword_27FA320C0, &qword_25B0E94B8);
      *(&v123[2] + 8) = v132;
      *(&v123[3] + 8) = v133;
      *(&v123[4] + 8) = v134;
      *(v123 + 8) = v130;
      *(&v123[5] + 1) = v135;
      *(&v123[1] + 8) = v131;
      *&v123[0] = v23;
      v89 = v51;
      v90 = v53;
      *&v124 = v51;
      *(&v124 + 1) = v53;
      v91 = v52;
      *&v125 = v52;
      *(&v125 + 1) = v105;
      *&v126 = v106;
      *(&v126 + 1) = v101;
      v55 = v87;
      v127 = v87;
      v56 = *(&v87 + 1);
      *&v128 = v103;
      *(&v128 + 1) = v102;
      *&v129 = v104;
      *(&v129 + 1) = v54;
      sub_25B0B3A78(v123, &v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_25B08A018(0, *(v18 + 2) + 1, 1, v18);
      }

      v59 = *(v18 + 2);
      v58 = *(v18 + 3);
      v61 = v105;
      v60 = v106;
      v63 = v90;
      v62 = v91;
      if (v59 >= v58 >> 1)
      {
        v81 = sub_25B08A018((v58 > 1), v59 + 1, 1, v18);
        v63 = v90;
        v62 = v91;
        v61 = v105;
        v60 = v106;
        v65 = v55;
        v64 = v56;
        v18 = v81;
      }

      else
      {
        v64 = v56;
        v65 = v55;
      }

      *(v18 + 2) = v59 + 1;
      v66 = &v18[192 * v59];
      v67 = v123[0];
      v68 = v123[1];
      v69 = v123[3];
      *(v66 + 4) = v123[2];
      *(v66 + 5) = v69;
      *(v66 + 2) = v67;
      *(v66 + 3) = v68;
      v70 = v123[4];
      v71 = v123[5];
      v72 = v125;
      *(v66 + 8) = v124;
      *(v66 + 9) = v72;
      *(v66 + 6) = v70;
      *(v66 + 7) = v71;
      v73 = v126;
      v74 = v127;
      v75 = v129;
      *(v66 + 12) = v128;
      *(v66 + 13) = v75;
      *(v66 + 10) = v73;
      *(v66 + 11) = v74;
      v112 = v132;
      v113 = v133;
      v114 = v134;
      v115 = v135;
      v110 = v130;
      v111 = v131;
      v109 = v23;
      *&v116 = v89;
      *(&v116 + 1) = v63;
      *&v117 = v62;
      *(&v117 + 1) = v61;
      *&v118 = v60;
      *(&v118 + 1) = v101;
      *&v119 = v65;
      *(&v119 + 1) = v64;
      *&v120 = v103;
      *(&v120 + 1) = v102;
      *&v121 = v104;
      *(&v121 + 1) = v88;
      sub_25B0B3AB0(&v109);
      if (!*(v15 + 2))
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25B0B1E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_25B0E2EF0();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32050, &qword_25B0E9470);
  sub_25B0B1F54(a1, (a2 + *(v4 + 44)));
  v5 = sub_25B0E3110();
  sub_25B0E2A00();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32030, &qword_25B0E9460);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_25B0B1F54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = sub_25B0E2D10();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32058, &qword_25B0E9478);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32060, &qword_25B0E9480);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v41 - v13;
  v45 = type metadata accessor for CuratedGalleryView();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32068, &qword_25B0E9488);
  v16 = *(v48 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v41 - v20;
  sub_25B0E3900();
  v46 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = sub_25B0B15A0();
  sub_25B0B29E8(a1, &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v14 + 80);
  v44 = a1;
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  sub_25B0B2A4C(&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32078, &qword_25B0E9498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32080, &qword_25B0E94A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32088, &qword_25B0E94A8);
  sub_25B058150(&qword_27FA32090, &qword_27FA32078, &qword_25B0E9498);
  v24 = sub_25B0B2B30();
  v25 = sub_25B0B3A30(&qword_27FA320A0, MEMORY[0x277CDDB18]);
  v55 = &type metadata for CuratedGalleryItem;
  v56 = v3;
  v57 = v24;
  v58 = v25;
  v26 = 1;
  swift_getOpaqueTypeConformance2();
  sub_25B0B2B84();
  sub_25B0E3500();
  if (*(*(v44 + *(v45 + 20)) + 16))
  {
    v27 = v42;
    sub_25B0E2D00();
    sub_25B0B2BD8();
    v28 = v41;
    sub_25B0E3240();
    (*(v43 + 8))(v27, v3);
    v30 = v49;
    v29 = v50;
    v31 = v51;
    (*(v50 + 32))(v49, v28, v51);
    v26 = 0;
  }

  else
  {
    v29 = v50;
    v31 = v51;
    v30 = v49;
  }

  (*(v29 + 56))(v30, v26, 1, v31);
  v32 = v16[2];
  v34 = v47;
  v33 = v48;
  v35 = v54;
  v32(v47, v54, v48);
  v36 = v52;
  sub_25B041E9C(v30, v52);
  v37 = v53;
  v32(v53, v34, v33);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320B8, &qword_25B0E94B0);
  sub_25B041E9C(v36, &v37[*(v38 + 48)]);
  sub_25B041F0C(v30);
  v39 = v16[1];
  v39(v35, v33);
  sub_25B041F0C(v36);
  v39(v34, v33);
}

uint64_t sub_25B0B2590(__int128 *a1)
{
  v2 = sub_25B0E2D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v42 = a1[2];
  v43 = v7;
  v8 = a1[5];
  v44 = a1[4];
  v45 = v8;
  v9 = a1[1];
  v40 = *a1;
  v41 = v9;
  v10 = a1[9];
  v48 = a1[8];
  v49 = v10;
  v11 = a1[11];
  v50 = a1[10];
  v51 = v11;
  v12 = a1[7];
  v46 = a1[6];
  v47 = v12;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v27 = v40;
  v28 = v41;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v33 = v46;
  v34 = v47;
  v22 = v48;
  v23 = v49;
  v24 = v50;
  v25 = v51;
  v18 = v44;
  v19 = v45;
  v20 = v46;
  v21 = v47;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  *&v26 = 0x405AC00000000000;
  *(&v26 + 1) = &unk_286C58FE8;
  sub_25B08CE58(&v40, v39);
  sub_25B0B00E0(&v46, v39, &qword_27FA320C0, &qword_25B0E94B8);
  sub_25B0E2D00();
  sub_25B0B2B30();
  sub_25B0B3A30(&qword_27FA320A0, MEMORY[0x277CDDB18]);
  sub_25B0E3240();
  (*(v3 + 8))(v6, v2);
  v39[10] = v24;
  v39[11] = v25;
  v39[12] = v26;
  v39[6] = v20;
  v39[7] = v21;
  v39[8] = v22;
  v39[9] = v23;
  v39[2] = v16;
  v39[3] = v17;
  v39[4] = v18;
  v39[5] = v19;
  v39[0] = v14;
  v39[1] = v15;
  sub_25B0B2C2C(v39);
}

uint64_t sub_25B0B2848()
{
  sub_25B0E30F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32030, &qword_25B0E9460);
  sub_25B0B2930();
  return sub_25B0E2A30();
}

unint64_t sub_25B0B28D4()
{
  result = qword_27FA32028;
  if (!qword_27FA32028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32028);
  }

  return result;
}

unint64_t sub_25B0B2930()
{
  result = qword_27FA32038;
  if (!qword_27FA32038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32030, &qword_25B0E9460);
    sub_25B058150(&qword_27FA32040, &qword_27FA32048, &qword_25B0E9468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32038);
  }

  return result;
}

uint64_t sub_25B0B29E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedGalleryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B2A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedGalleryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B2AB0(__int128 *a1)
{
  v2 = *(*(type metadata accessor for CuratedGalleryView() - 8) + 80);

  return sub_25B0B2590(a1);
}

unint64_t sub_25B0B2B30()
{
  result = qword_27FA32098;
  if (!qword_27FA32098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32098);
  }

  return result;
}

unint64_t sub_25B0B2B84()
{
  result = qword_27FA320A8;
  if (!qword_27FA320A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320A8);
  }

  return result;
}

unint64_t sub_25B0B2BD8()
{
  result = qword_27FA320B0;
  if (!qword_27FA320B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320B0);
  }

  return result;
}

id sub_25B0B2C80@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_25B0E2930();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B0E24C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25B0E22E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B0E3710();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25B0E22F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v43 - v16;
  sub_25B0E3900();
  v45 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_27FA399C8);
  (*(v7 + 16))(v10, v18, v6);
  sub_25B0E24B0();
  sub_25B0E2300();
  v19 = sub_25B0E3200();
  v21 = v20;
  v23 = v22;
  result = BPSBridgeTintColor();
  if (result)
  {
    v57 = sub_25B0E3370();
    v43 = sub_25B0E31E0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_25B0B0ABC(v19, v21, v23 & 1);

    sub_25B0E3590();
    sub_25B0E2D30();
    v31 = v28 & 1;
    v58 = v28 & 1;
    v32 = sub_25B0E3110();
    LOBYTE(v57) = 1;
    if (qword_27FA30D48 != -1)
    {
      swift_once();
    }

    v33 = v48;
    v34 = __swift_project_value_buffer(v48, qword_27FA39A10);
    (*(v47 + 16))(v46, v34, v33);
    v35 = sub_25B0E33D0();
    v36 = sub_25B0E3110();
    v37 = &v17[*(v44 + 36)];
    v38 = *MEMORY[0x277CE0118];
    v39 = sub_25B0E2EC0();
    (*(*(v39 - 8) + 104))(v37, v38, v39);
    *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32158, &qword_25B0E96B8) + 36)] = 256;
    *v17 = v43;
    *(v17 + 1) = v26;
    v17[16] = v31;
    *(v17 + 3) = v30;
    v40 = v55;
    *(v17 + 6) = v54;
    *(v17 + 7) = v40;
    *(v17 + 8) = v56;
    v41 = v51;
    *(v17 + 2) = v50;
    *(v17 + 3) = v41;
    v42 = v53;
    *(v17 + 4) = v52;
    *(v17 + 5) = v42;
    v17[144] = 0;
    v17[152] = v32;
    *(v17 + 10) = 0u;
    *(v17 + 11) = 0u;
    v17[192] = 1;
    *(v17 + 25) = v35;
    v17[208] = v36;
    sub_25B0B3F60(v17, v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B0B324C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  sub_25B0B3C00();
  sub_25B0B3F0C();
  return sub_25B0E2BF0();
}

void *sub_25B0B32DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_25B0B3364(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_25B0B33E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_25B0B3478(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_25B0B3510(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25B0B3664(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_25B0B3764(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 96 * v6 - 64);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = v10[3];
        v16[2] = v10[2];
        v16[3] = v11;
        v12 = v10[5];
        v16[4] = v10[4];
        v16[5] = v12;
        v13 = v10[1];
        v16[0] = *v10;
        v16[1] = v13;
        memmove(v8, v10, 0x60uLL);
        if (a3 + v9 == 1)
        {
          sub_25B08CE58(v16, v15);
          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 96;
        sub_25B08CE58(v16, v15);
        --v9;
        v10 -= 6;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_25B0B3888(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_25B08CEB4(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_25B08CEB4(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25B0B3A30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B0B3B04()
{
  result = qword_27FA320E0;
  if (!qword_27FA320E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320E0);
  }

  return result;
}

unint64_t sub_25B0B3B78()
{
  result = qword_27FA320E8;
  if (!qword_27FA320E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32080, &qword_25B0E94A0);
    sub_25B0AFC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320E8);
  }

  return result;
}

unint64_t sub_25B0B3C00()
{
  result = qword_27FA320F8;
  if (!qword_27FA320F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA320F0, &qword_25B0E9688);
    sub_25B0B3CB8();
    sub_25B058150(&qword_27FA32150, &qword_27FA32158, &qword_25B0E96B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320F8);
  }

  return result;
}

unint64_t sub_25B0B3CB8()
{
  result = qword_27FA32100;
  if (!qword_27FA32100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32108, &qword_25B0E9690);
    sub_25B0B3D70();
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32100);
  }

  return result;
}

unint64_t sub_25B0B3D70()
{
  result = qword_27FA32110;
  if (!qword_27FA32110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32118, &qword_25B0E9698);
    sub_25B0B3DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32110);
  }

  return result;
}

unint64_t sub_25B0B3DFC()
{
  result = qword_27FA32120;
  if (!qword_27FA32120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32128, &qword_25B0E96A0);
    sub_25B0B3E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32120);
  }

  return result;
}

unint64_t sub_25B0B3E88()
{
  result = qword_27FA32130;
  if (!qword_27FA32130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32138, &qword_25B0E96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32130);
  }

  return result;
}

unint64_t sub_25B0B3F0C()
{
  result = qword_27FA32160;
  if (!qword_27FA32160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32160);
  }

  return result;
}

uint64_t sub_25B0B3F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B3FD0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v35 = *(a1 + 80);
  v33 = *(a1 + 88);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v40 = *(a2 + 56);
  v41 = *(a1 + 56);
  v38 = *(a2 + 64);
  v39 = *(a1 + 64);
  v36 = *(a2 + 72);
  v37 = *(a1 + 72);
  v34 = *(a2 + 80);
  v32 = *(a2 + 88);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_25B0E3E30() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    if (!v10)
    {
      return v10 & 1;
    }

    if ((v6 != v11 || v7 != v10) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v10)
  {
    goto LABEL_29;
  }

  sub_25B0AD0C8(v41, v40);
  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

  LOBYTE(v10) = 0;
  if ((sub_25B0A379C(v39, v38) & 1) != 0 && v37 == v36)
  {
    sub_25B0A2BE0(v35, v34);
    LOBYTE(v10) = 0;
    if ((v13 & 1) != 0 && v33 == v32)
    {
      v14 = *(a1 + 144);
      v63 = *(a1 + 128);
      v64 = v14;
      v15 = *(a1 + 176);
      v65 = *(a1 + 160);
      v66 = v15;
      v16 = *(a1 + 112);
      v61 = *(a1 + 96);
      v62 = v16;
      v17 = *(a2 + 144);
      v60[2] = *(a2 + 128);
      v60[3] = v17;
      v18 = *(a2 + 176);
      v60[4] = *(a2 + 160);
      v60[5] = v18;
      v19 = *(a2 + 112);
      v60[0] = *(a2 + 96);
      v60[1] = v19;
      v20 = v62;
      v21 = v19;
      if (v62)
      {
        if (v19)
        {
          v42 = *(a2 + 96);
          *v43 = v19;
          *&v43[8] = *(a2 + 120);
          *&v43[72] = *(a2 + 184);
          *&v43[56] = *(a2 + 168);
          *&v43[40] = *(a2 + 152);
          *&v43[24] = *(a2 + 136);
          v51 = v42;
          *v52 = *v43;
          *&v52[48] = *&v43[48];
          *&v52[64] = *&v43[64];
          *&v52[16] = *&v43[16];
          *&v52[32] = *&v43[32];
          v67 = *(a1 + 96);
          v69 = *(a1 + 120);
          v22 = *(a1 + 136);
          v23 = *(a1 + 152);
          v24 = *(a1 + 184);
          v72 = *(a1 + 168);
          v71 = v23;
          v70 = v22;
          v73 = v24;
          v68 = v62;
          sub_25B0B00E0(&v61, &v44, &qword_27FA320C0, &qword_25B0E94B8);
          sub_25B0B00E0(v60, &v44, &qword_27FA320C0, &qword_25B0E94B8);
          LOBYTE(v10) = sub_25B0D4C90(&v67, &v51);
          sub_25B058448(&v42, &qword_27FA320C0, &qword_25B0E94B8);
          v44 = *(a1 + 96);
          v45 = v20;
          v47 = *(a1 + 136);
          v48 = *(a1 + 152);
          v49 = *(a1 + 168);
          v50 = *(a1 + 184);
          v46 = *(a1 + 120);
          sub_25B058448(&v44, &qword_27FA320C0, &qword_25B0E94B8);
          return v10 & 1;
        }
      }

      else if (!v19)
      {
        v51 = *(a1 + 96);
        *&v52[24] = *(a1 + 136);
        *&v52[40] = *(a1 + 152);
        *&v52[56] = *(a1 + 168);
        v31 = *(a1 + 184);
        *v52 = 0;
        *&v52[72] = v31;
        *&v52[8] = *(a1 + 120);
        sub_25B0B00E0(&v61, &v67, &qword_27FA320C0, &qword_25B0E94B8);
        sub_25B0B00E0(v60, &v67, &qword_27FA320C0, &qword_25B0E94B8);
        sub_25B058448(&v51, &qword_27FA320C0, &qword_25B0E94B8);
        LOBYTE(v10) = 1;
        return v10 & 1;
      }

      v51 = *(a1 + 96);
      *&v52[24] = *(a1 + 136);
      *&v52[40] = *(a1 + 152);
      *&v52[56] = *(a1 + 168);
      v25 = *(a1 + 184);
      *v52 = v62;
      *&v52[72] = v25;
      *&v52[8] = *(a1 + 120);
      v53 = *(a2 + 96);
      v55 = *(a2 + 120);
      v26 = *(a2 + 136);
      v27 = *(a2 + 152);
      v28 = *(a2 + 168);
      v29 = *(a2 + 184);
      v54 = v21;
      v59 = v29;
      v58 = v28;
      v57 = v27;
      v56 = v26;
      sub_25B0B00E0(&v61, &v67, &qword_27FA320C0, &qword_25B0E94B8);
      sub_25B0B00E0(v60, &v67, &qword_27FA320C0, &qword_25B0E94B8);
      sub_25B058448(&v51, &qword_27FA32168, &qword_25B0E96C0);
LABEL_29:
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B0B441C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B4464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25B0B44F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 16) + 16);
  if (v3 >= v1)
  {
    v3 = *(v0 + 24);
  }

  if (v3 / 2 < *(v2 + 16))
  {
    if (v1 < -1)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 16 * (v3 / 2) + 32);
      if (v3)
      {
        v4 = v4 + v4;
      }

      v5 = *(v0 + 48) + v4;
    }
  }
}

double sub_25B0B4548@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32180, &qword_25B0E97B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v35 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32188, &qword_25B0E97B8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32190, &qword_25B0E97C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = v1[1];
  v36 = *v1;
  v37 = v16;
  v17 = v1[3];
  v38 = v1[2];
  v39 = v17;
  *v6 = sub_25B0E3590();
  v6[1] = v18;
  v19 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32198, &qword_25B0E97C8) + 44);
  sub_25B0B485C(&v36);
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v6, v11, &qword_27FA32180, &qword_25B0E97B0);
  v20 = &v11[*(v8 + 44)];
  v21 = v35[9];
  *(v20 + 4) = v35[8];
  *(v20 + 5) = v21;
  *(v20 + 6) = v35[10];
  v22 = v35[5];
  *v20 = v35[4];
  *(v20 + 1) = v22;
  v23 = v35[7];
  *(v20 + 2) = v35[6];
  *(v20 + 3) = v23;
  v24 = 1.0;
  if ((BYTE8(v38) & 1) == 0)
  {
    v25 = *&v38;
    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    v35[3] = v39;
    sub_25B0B44F0();
    v24 = fmin(v25 / v26, 1.0);
  }

  sub_25B0E3620();
  v28 = v27;
  v30 = v29;
  sub_25B0745E4(v11, v15, &qword_27FA32188, &qword_25B0E97B8);
  v31 = &v15[*(v12 + 36)];
  *v31 = v24;
  *(v31 + 1) = v24;
  *(v31 + 2) = v28;
  *(v31 + 3) = v30;
  sub_25B0E33A0();
  v32 = sub_25B0E33C0();

  sub_25B0745E4(v15, a1, &qword_27FA32190, &qword_25B0E97C0);
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321A0, &qword_25B0E97D0) + 36);
  *v33 = v32;
  result = 10.0;
  *(v33 + 8) = xmmword_25B0E96E0;
  *(v33 + 24) = 0x4010000000000000;
  return result;
}

uint64_t sub_25B0B485C(uint64_t a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v14 = v4;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v4 + 16) >= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v4 + 16);
    }

    v6 = *(*(sub_25B0E2750() - 8) + 80);
    v15[0] = 0;
    v15[1] = v5;
    v15[2] = v4;
    v15[3] = v4 + ((v6 + 32) & ~v6);
    v15[4] = 0;
    v15[5] = (2 * v5) | 1;

    v7 = sub_25B0B53EC(v15);
    sub_25B0B5984(&v14);
    v13 = v7;
    swift_getKeyPath();
    v8 = swift_allocObject();
    v9 = *(a1 + 16);
    v8[1] = *a1;
    v8[2] = v9;
    v10 = *(a1 + 48);
    v8[3] = *(a1 + 32);
    v8[4] = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_25B0B59EC;
    *(v11 + 24) = v8;
    sub_25B0B5A5C(a1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321A8, &qword_25B0E97F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321B0, &qword_25B0E9800);
    sub_25B058150(&qword_27FA321B8, &qword_27FA321A8, &qword_25B0E97F8);
    sub_25B0B6024(&qword_27FA312D0, MEMORY[0x277D2BE00]);
    sub_25B0B5A94();
    sub_25B0E34F0();
  }

  return result;
}

void sub_25B0B4AD8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a1;
  v42 = a4;
  v44 = type metadata accessor for FacePlacement.Location(0);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321E0, &qword_25B0E9810);
  v13 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = v39 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  v15 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v17 = v39 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321B0, &qword_25B0E9800);
  v18 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v20 = v39 - v19;
  sub_25B0E3900();
  v39[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, v46, v8);
  v21 = *a3;
  v22 = *(a3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25B0E7730;
  v24 = v47;
  *(v23 + 32) = v22;
  *(v23 + 40) = v24;
  v25 = &v7[*(v44 + 20)];
  MEMORY[0x25F85F060]();
  *v7 = v21;
  v26 = v12;
  v27 = v45;
  FaceView.init(face:location:)(v26, v7, v45);
  v28 = *(a3 + 6);
  v29 = *(a3 + 7);

  sub_25B0E3590();
  sub_25B0E2B50();
  v30 = &v27[*(v43 + 36)];
  v31 = v49;
  *v30 = v48;
  *(v30 + 1) = v31;
  *(v30 + 2) = v50;
  v32 = sub_25B0E2730();
  v33 = [v32 device];

  if (v33)
  {
    v34 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v35 = sub_25B0E3730();
    [v34 initWithSuiteName_];

    v36 = sub_25B0E29E0();
    sub_25B0745E4(v27, v17, &qword_27FA321E0, &qword_25B0E9810);
    v37 = &v17[*(v41 + 36)];
    *v37 = v33;
    *(v37 + 8) = xmmword_25B0E96F0;
    *(v37 + 3) = v36;
    sub_25B0745E4(v17, v20, &qword_27FA321D0, &qword_25B0E9808);
    v38 = &v20[*(v40 + 36)];
    *v38 = v24;
    *(v38 + 1) = v28;
    *(v38 + 2) = v29;
    sub_25B0745E4(v20, v42, &qword_27FA321B0, &qword_25B0E9800);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0B4F70(uint64_t result, uint64_t a2, double a3)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 / 2 >= *(a2 + 16))
  {
    return result;
  }

  if (v3 < -1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *(a2 + 16 * (v3 / 2) + 32) + (a3 - *(a2 + 16 * (v3 / 2) + 40) * a3) * 0.5;
  return result;
}

uint64_t sub_25B0B4FD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32250, &qword_25B0E98E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  v14 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = 1.0;
    if (v14 / 2 >= *(a5 + 16))
    {
LABEL_5:
      sub_25B0E3620();
      v17 = v16;
      v19 = v18;
      v20 = sub_25B0E2D40();
      v21 = sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0]);
      MEMORY[0x25F85F690](v20, v21, v15, v17, v19);
      sub_25B0B4F70(a4, a5, a1);
      v23 = v22;
      v25[0] = v20;
      v25[1] = v21;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25F85F6A0](v8, OpaqueTypeConformance2, v23, 0.0);
      return (*(v9 + 8))(v13, v8);
    }

    if (v14 >= -1)
    {
      v15 = *(a5 + 16 * (v14 / 2) + 40);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0B51EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32238, &qword_25B0E98D8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32240, &qword_25B0E98E0);
  v9 = sub_25B058150(&qword_27FA32248, &qword_27FA32238, &qword_25B0E98D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32250, &qword_25B0E98E8);
  sub_25B0E2D40();
  sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85FDC0](sub_25B0B6014, v6, v7, v8, v9, OpaqueTypeConformance2);

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32260, &qword_25B0E98F0);
    *(a1 + *(result + 36)) = ((v3 + 1) / -2);
  }

  return result;
}

uint64_t sub_25B0B53EC(uint64_t *a1)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32200, &qword_25B0E9818);
  v70 = *(v68 - 8);
  v2 = *(v70 + 64);
  v3 = MEMORY[0x28223BE20](v68);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v58 - v7);
  result = MEMORY[0x28223BE20](v6);
  v66 = &v58 - v10;
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 - *a1;
  if (__OFSUB__(v11, *a1))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v14 = a1[5] >> 1;
  v65 = a1[4];
  if (__OFSUB__(v14, v65))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v15 = a1[2];
  v67 = a1[3];
  if (v14 - v65 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14 - v65;
  }

  v69 = v11;
  if (!v16)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_17:
    v21 = *(v70 + 80);
    v22 = v19[3];

    if (v16 < 0)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v60 = v21;
    v61 = v8;
    v62 = (v21 + 32) & ~v21;
    v63 = a1;
    v23 = v19 + v62;
    v24 = v22 >> 1;
    v64 = v12;
    v58 = v15;
    if (v16)
    {
      v25 = v69;
      if (v69 < v12)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v24 -= v16;
      v26 = v65;
      v27 = v12;
      while (v25 != v27)
      {
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_68;
        }

        if (v14 == v26)
        {
          goto LABEL_69;
        }

        if (v26 >= v14 || v27 >= v25)
        {
          goto LABEL_70;
        }

        v28 = sub_25B0E2750();
        v29 = *(v28 - 8);
        v30 = *(v29 + 16);
        v31 = v67 + *(v29 + 72) * v26;
        v32 = *(v68 + 48);
        *v5 = v27;
        v30(v5 + v32, v31, v28);
        ++v26;
        result = sub_25B0745E4(v5, v23, &qword_27FA32200, &qword_25B0E9818);
        v25 = v69;
        v23 += *(v70 + 72);
        ++v27;
        if (!--v16)
        {
          v8 = v61;
          v12 = v64;
          goto LABEL_29;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v26 = v65;
    v27 = v12;
LABEL_29:
    result = sub_25B0B5D10(v63, v71);
    v33 = v69;
    if (v27 == v69)
    {
LABEL_30:
      v34 = v19;
LABEL_31:
      result = swift_unknownObjectRelease();
      v35 = v34[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v37 = __OFSUB__(v36, v24);
        v38 = v36 - v24;
        if (v37)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v34[2] = v38;
      }

      return v34;
    }

    if (v69 < v12)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v27 > v69)
    {
      v33 = v27;
    }

    v63 = v33;
    v39 = v27;
    v40 = v26;
    while (1)
    {
      if (v27 < v64)
      {
        goto LABEL_71;
      }

      if (v63 == v39)
      {
        goto LABEL_72;
      }

      if (v14 == v40)
      {
        goto LABEL_30;
      }

      if (v26 < v65 || v40 >= v14)
      {
        goto LABEL_73;
      }

      v41 = sub_25B0E2750();
      v42 = *(v41 - 8);
      v43 = *(v42 + 16);
      v44 = v67 + *(v42 + 72) * v40;
      v45 = *(v68 + 48);
      *v8 = v39;
      v43(v8 + v45, v44, v41);
      result = sub_25B0745E4(v8, v66, &qword_27FA32200, &qword_25B0E9818);
      if (v24)
      {
        v34 = v19;
        v37 = __OFSUB__(v24--, 1);
        if (v37)
        {
          goto LABEL_66;
        }

        goto LABEL_40;
      }

      v46 = v19[3];
      if (((v46 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_74;
      }

      v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
      if (v47 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32210, &qword_25B0E9828);
      v49 = *(v70 + 72);
      v50 = v62;
      v34 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v34);
      if (!v49)
      {
        goto LABEL_75;
      }

      v51 = result - v50;
      if (result - v50 == 0x8000000000000000 && v49 == -1)
      {
        goto LABEL_76;
      }

      v53 = v51 / v49;
      v34[2] = v48;
      v34[3] = 2 * (v51 / v49);
      v54 = v34 + v50;
      v55 = v19[3] >> 1;
      v56 = v55 * v49;
      if (v19[2])
      {
        break;
      }

LABEL_64:
      v23 = &v54[v56];
      v57 = (v53 & 0x7FFFFFFFFFFFFFFFLL) - v55;

      v8 = v61;
      v37 = __OFSUB__(v57, 1);
      v24 = v57 - 1;
      if (v37)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_40:
      v39 = (v39 + 1);
      result = sub_25B0745E4(v66, v23, &qword_27FA32200, &qword_25B0E9818);
      v23 += *(v70 + 72);
      ++v40;
      v19 = v34;
      if (v69 == v39)
      {
        goto LABEL_31;
      }
    }

    if (v34 < v19 || v54 >= v19 + v62 + v56)
    {
      v59 = v53;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v34 == v19)
      {
LABEL_63:
        v19[2] = 0;
        goto LABEL_64;
      }

      v59 = v53;
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = v59;
    goto LABEL_63;
  }

  if (v16 <= 0)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_16:

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32210, &qword_25B0E9828);
  v17 = *(v70 + 72);
  v18 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (v17)
  {
    if (result - v18 == 0x8000000000000000 && v17 == -1)
    {
      goto LABEL_84;
    }

    v19[2] = v16;
    v19[3] = 2 * ((result - v18) / v17);
    goto LABEL_16;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_25B0B5984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0B59F4(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32200, &qword_25B0E9818);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_25B0B5A94()
{
  result = qword_27FA321C0;
  if (!qword_27FA321C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321B0, &qword_25B0E9800);
    sub_25B0B5B20();
    sub_25B0B5CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321C0);
  }

  return result;
}

unint64_t sub_25B0B5B20()
{
  result = qword_27FA321C8;
  if (!qword_27FA321C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321D0, &qword_25B0E9808);
    sub_25B0B5BAC();
    sub_25B0B5C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321C8);
  }

  return result;
}

unint64_t sub_25B0B5BAC()
{
  result = qword_27FA321D8;
  if (!qword_27FA321D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321E0, &qword_25B0E9810);
    sub_25B0B6024(&qword_27FA321E8, type metadata accessor for FaceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321D8);
  }

  return result;
}

unint64_t sub_25B0B5C68()
{
  result = qword_27FA321F0;
  if (!qword_27FA321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321F0);
  }

  return result;
}

unint64_t sub_25B0B5CBC()
{
  result = qword_27FA321F8;
  if (!qword_27FA321F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321F8);
  }

  return result;
}

uint64_t sub_25B0B5D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32208, &qword_25B0E9820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B5D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B5DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0B5E28()
{
  result = qword_27FA32218;
  if (!qword_27FA32218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321A0, &qword_25B0E97D0);
    sub_25B0B5EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32218);
  }

  return result;
}

unint64_t sub_25B0B5EB4()
{
  result = qword_27FA32220;
  if (!qword_27FA32220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32190, &qword_25B0E97C0);
    sub_25B0B5F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32220);
  }

  return result;
}

unint64_t sub_25B0B5F40()
{
  result = qword_27FA32228;
  if (!qword_27FA32228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32188, &qword_25B0E97B8);
    sub_25B058150(&qword_27FA32230, &qword_27FA32180, &qword_25B0E97B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32228);
  }

  return result;
}

uint64_t sub_25B0B6024(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B0B606C()
{
  result = qword_27FA32268;
  if (!qword_27FA32268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32260, &qword_25B0E98F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32238, &qword_25B0E98D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32240, &qword_25B0E98E0);
    sub_25B058150(&qword_27FA32248, &qword_27FA32238, &qword_25B0E98D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32250, &qword_25B0E98E8);
    sub_25B0E2D40();
    sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25B058150(&qword_27FA32270, &qword_27FA32278, &qword_25B0E98F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32268);
  }

  return result;
}

uint64_t sub_25B0B625C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B62A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_25B0B630C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25B0E2D20();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_25B0E2EC0();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #16.0 }

  *v10 = _Q0;
  if (*(a1 + 16) < 2uLL)
  {

    sub_25B0E3600();
    sub_25B0E3610();
    MEMORY[0x25F860090](a1);
  }

  else
  {
    sub_25B0B64CC(a1, a2);
    sub_25B0E3600();
    sub_25B0E3610();
    sub_25B0E3520();
  }

  sub_25B0E2BE0();
  v19 = v25;
  v23 = v27;
  v24 = v26;
  sub_25B0B660C(v10, a3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32280, &qword_25B0E9998);
  v21 = a3 + *(v20 + 52);
  *v21 = v19;
  result = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = result;
  *(a3 + *(v20 + 56)) = 256;
  return result;
}

uint64_t sub_25B0B64CC(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 24;
  v6 = a2 + 24;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {
      return v7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    v9 = v3 + 1;
    if (v3++ < *(a2 + 16))
    {
      v11 = *(v5 + 8 * v9);
      v12 = *(v6 + 8 * v9);
      swift_retain_n();
      v13 = sub_25B0E3510();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25B08A138(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_25B08A138((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      v18 = &v7[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v3 = v8;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25B0B660C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2D20();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0B6670()
{
  result = qword_27FA32288;
  if (!qword_27FA32288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32280, &qword_25B0E9998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32288);
  }

  return result;
}

uint64_t sub_25B0B6710@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = sub_25B0E3590();
  a4[1] = v12;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32290, &qword_25B0E9A80) + 44);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32298, &qword_25B0E9A88);
  (*(*(v14 - 8) + 16))(a4 + v13, a1, v14);

  v15 = sub_25B0E3110();
  sub_25B0E2A00();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322A0, &qword_25B0E9A90) + 36);
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_25B0E3590();
  v27 = v26;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a5;
  *(v28 + 32) = a6;
  *(v28 + 40) = a3;
  v29 = a2;

  v30 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322A8, &qword_25B0E9A98) + 36));
  *v30 = sub_25B0B7520;
  v30[1] = v28;
  v30[2] = v25;
  v30[3] = v27;
  v31 = sub_25B0E3590();
  v33 = v32;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = a5;
  *(v34 + 32) = a6;
  *(v34 + 40) = a3;
  v35 = v29;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322B0, &qword_25B0E9AA0);
  v37 = (a4 + *(result + 36));
  *v37 = sub_25B0B7570;
  v37[1] = v34;
  v37[2] = v31;
  v37[3] = v33;
  return result;
}

uint64_t sub_25B0B6A1C@<X0>(void *a1@<X1>, double *a2@<X8>, double a3@<D0>)
{
  v6 = sub_25B0E2930();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 screenCornerRadius];
  v12 = v11;
  [a1 screenBounds];
  v14 = v13;
  v16 = v15;
  type metadata accessor for CGSize(0);
  v29[3] = v17;
  v29[4] = &off_286C5BCB8;
  v29[0] = v14;
  v29[1] = v16;
  v18 = __swift_project_boxed_opaque_existential_1(v29, v17);
  sub_25B0E2B70();
  v20 = v12 * ((v19 - (a3 + a3)) / *v18);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v21 = v20 + a3;
  v22 = *(sub_25B0E2D20() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_25B0E2EC0();
  (*(*(v24 - 8) + 104))(a2 + v22, v23, v24);
  *a2 = v21;
  a2[1] = v21;
  if (qword_27FA30D50 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v6, qword_27FA39A28);
  (*(v7 + 16))(v10, v25, v6);
  v26 = sub_25B0E33D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322F8, &qword_25B0E9AE0);
  *(a2 + *(result + 52)) = v26;
  *(a2 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_25B0B6CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_25B0E3590();
  a4[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322B8, &qword_25B0E9AA8);
  sub_25B0B6DBC(a2, a3, a1, a4 + *(v13 + 44), a5, a6);
}

uint64_t sub_25B0B6DBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v89 = a3;
  *&v85 = a2;
  v88 = a4;
  v9 = sub_25B0E2930();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B0E2D20();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v87 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v85 - v22;
  sub_25B0E3900();
  v86 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 screenCornerRadius];
  v25 = v24;
  [a1 screenBounds];
  v27 = v26;
  v29 = v28;
  type metadata accessor for CGSize(0);
  v31 = v30;
  *(&v97 + 1) = v30;
  v98 = &off_286C5BCB8;
  *&v96 = v27;
  *(&v96 + 1) = v29;
  v32 = __swift_project_boxed_opaque_existential_1(&v96, v30);
  sub_25B0E2B70();
  v33 = a5 + a5;
  v35 = v25 * ((v34 - (a5 + a5)) / *v32);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  v36 = v35 + a5;
  v37 = *(v14 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_25B0E2EC0();
  (*(*(v39 - 8) + 104))(v17 + v37, v38, v39);
  *v17 = v36;
  v17[1] = v36;
  if (qword_27FA30D58 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v9, qword_27FA39A40);
  (*(v10 + 16))(v13, v40, v9);
  v41 = sub_25B0E33D0();
  sub_25B0E2AB0();
  sub_25B0B7580(v17, v23);
  v42 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C8, &qword_25B0E9AB8) + 36)];
  v43 = v97;
  *v42 = v96;
  *(v42 + 1) = v43;
  *(v42 + 4) = v98;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322D0, &qword_25B0E9AC0);
  *&v23[*(v44 + 52)] = v41;
  *&v23[*(v44 + 56)] = 256;
  v45 = sub_25B0E3590();
  v47 = v46;
  sub_25B0B75E4(v17);
  v48 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322D8, &qword_25B0E9AC8) + 36)];
  *v48 = v45;
  v48[1] = v47;
  sub_25B0E29F0();
  if (v90 == 1)
  {
    sub_25B0E2B70();
    v50 = v49 + a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
    v51 = swift_allocObject();
    v85 = xmmword_25B0E7720;
    *(v51 + 16) = xmmword_25B0E7720;
    v52 = MEMORY[0x277D85048];
    *(v51 + 56) = MEMORY[0x277D85048];
    v53 = v52;
    v54 = sub_25B0B77B0();
    *(v51 + 64) = v54;
    *(v51 + 32) = v50;
    v94 = sub_25B0E3750();
    v95 = v55;
    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    sub_25B0E2B70();
    v57 = v56 + a6;
    v58 = swift_allocObject();
    *(v58 + 16) = v85;
    *(v58 + 56) = v53;
    *(v58 + 64) = v54;
    *(v58 + 32) = v57;
    v59 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v59);

    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    [a1 screenCornerRadius];
    v61 = v60;
    [a1 screenBounds];
    v92 = v31;
    v93 = &off_286C5BCB8;
    v90 = v62;
    v91 = v63;
    v64 = __swift_project_boxed_opaque_existential_1(&v90, v31);
    sub_25B0E2B70();
    v66 = v61 * ((v65 - v33) / *v64);
    __swift_destroy_boxed_opaque_existential_1(&v90);
    v67 = swift_allocObject();
    *(v67 + 16) = v85;
    *(v67 + 56) = MEMORY[0x277D85048];
    *(v67 + 64) = v54;
    *(v67 + 32) = v66;
    v68 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v68);

    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    [a1 screenCornerRadius];
    v70 = v69;
    [a1 screenBounds];
    v92 = v31;
    v93 = &off_286C5BCB8;
    v90 = v71;
    v91 = v72;
    v73 = __swift_project_boxed_opaque_existential_1(&v90, v31);
    sub_25B0E2B70();
    v75 = v70 * ((v74 - v33) / *v73);
    __swift_destroy_boxed_opaque_existential_1(&v90);
    v76 = swift_allocObject();
    *(v76 + 16) = v85;
    *(v76 + 56) = MEMORY[0x277D85048];
    *(v76 + 64) = v54;
    *(v76 + 32) = v75 + a5;
    v77 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v77);

    v78 = v94;
    v79 = v95;

    v80 = MEMORY[0x277D84F90];
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  v81 = v87;
  sub_25B0B7640(v23, v87);
  v82 = v88;
  sub_25B0B7640(v81, v88);
  v83 = (v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E0, &unk_25B0E9AD0) + 48));
  sub_25B0B76B0(v78, v79, 0, v80);
  sub_25B0B7704(v78, v79, 0, v80);
  *v83 = v78;
  v83[1] = v79;
  v83[2] = 0;
  v83[3] = v80;
  sub_25B0B7748(v23);
  sub_25B0B7704(v78, v79, 0, v80);
  sub_25B0B7748(v81);
}

uint64_t sub_25B0B7520@<X0>(double *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_25B0B6A1C(*(v1 + 16), a1, *(v1 + 24));
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B0B7580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2D20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B75E4(uint64_t a1)
{
  v2 = sub_25B0E2D20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0B7640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B76B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25B0B76F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25B0B76F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B0B7704(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25B0B0ABC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25B0B7748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B0B77B0()
{
  result = qword_27FA322F0;
  if (!qword_27FA322F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA322F0);
  }

  return result;
}

unint64_t sub_25B0B7804()
{
  result = qword_27FA32300;
  if (!qword_27FA32300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322B0, &qword_25B0E9AA0);
    sub_25B0B78BC();
    sub_25B058150(&qword_27FA32338, &qword_27FA32340, &qword_25B0E9AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32300);
  }

  return result;
}

unint64_t sub_25B0B78BC()
{
  result = qword_27FA32308;
  if (!qword_27FA32308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322A8, &qword_25B0E9A98);
    sub_25B0B7974();
    sub_25B058150(&qword_27FA32328, &qword_27FA32330, &qword_25B0E9AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32308);
  }

  return result;
}

unint64_t sub_25B0B7974()
{
  result = qword_27FA32310;
  if (!qword_27FA32310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322A0, &qword_25B0E9A90);
    sub_25B058150(&qword_27FA32318, &qword_27FA32320, &qword_25B0E9AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32310);
  }

  return result;
}

uint64_t type metadata accessor for FaceButton()
{
  result = qword_27FA32348;
  if (!qword_27FA32348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0B7AA0()
{
  sub_25B0E2750();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FacePlacement.Location(319);
    if (v1 <= 0x3F)
    {
      sub_25B0B7BB0(319, &qword_27FA32358);
      if (v2 <= 0x3F)
      {
        sub_25B0B7BB0(319, &qword_27FA32360);
        if (v3 <= 0x3F)
        {
          sub_25B0B7BFC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25B0B7BB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25B0E3B10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25B0B7BFC()
{
  if (!qword_27FA32368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32370, "ji");
    v0 = sub_25B0E3B10();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32368);
    }
  }
}

uint64_t getEnumTagSinglePayload for FaceButton.SizeConstraint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceButton.SizeConstraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25B0B7D0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x25F860A80](v5);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x25F860AA0](v6);
  }

  MEMORY[0x25F860A80](2);

  return sub_25B0A4D64(*&a2, *&a3);
}

uint64_t sub_25B0B7DA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25B0E3F10();
  sub_25B0B7D0C(v5, v1, v2, v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0B7E08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25B0E3F10();
  sub_25B0B7D0C(v5, v1, v2, v3);
  return sub_25B0E3F50();
}

unint64_t sub_25B0B7E80()
{
  result = qword_27FA32378;
  if (!qword_27FA32378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32378);
  }

  return result;
}

uint64_t sub_25B0B7EF0@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32380, &qword_25B0E9BE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32388, &qword_25B0E9BE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = type metadata accessor for FaceButton();
  v11 = v1 + *(v10 + 28);
  v12 = *(v11 + 8) * 0.5 + 10.0;
  v13 = *(v11 + 16) == 0;
  v14 = 0x4026800000000000;
  if (v13)
  {
    v14 = *&v12;
  }

  *v5 = *(v1 + *(v10 + 44));
  *(v5 + 1) = v14;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32390, &qword_25B0E9BF0);
  sub_25B0B8174(v1, &v5[*(v15 + 44)]);
  strcpy(v27, "face-button-");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  v16 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  MEMORY[0x25F8602F0](v16);

  v17 = v27[0];
  v18 = v27[1];
  sub_25B0745E4(v5, v9, &qword_27FA32380, &qword_25B0E9BE0);
  v19 = &v9[*(v6 + 52)];
  *v19 = v17;
  *(v19 + 1) = v18;
  v20 = sub_25B0E2740();
  v22 = 0x800000025B0EC4D0;
  v23 = 0xD000000000000010;
  if (v21)
  {
    v23 = v20;
    v22 = v21;
  }

  v27[0] = v23;
  v27[1] = v22;
  MEMORY[0x25F8602F0](45, 0xE100000000000000);
  v24 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  MEMORY[0x25F8602F0](v24);

  sub_25B058150(&qword_27FA32398, &qword_27FA32388, &qword_25B0E9BE8);
  sub_25B0E3310();

  return sub_25B058448(v9, &qword_27FA32388, &qword_25B0E9BE8);
}

uint64_t sub_25B0B8174@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v134 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323A0, &qword_25B0E9BF8);
  v3 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = v113 - v4;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323A8, &qword_25B0E9C00);
  v5 = *(*(v124 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v124);
  v116 = v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v117 = v113 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v115 = v113 - v11;
  MEMORY[0x28223BE20](v10);
  v118 = v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323B0, &qword_25B0E9C08);
  v132 = *(v13 - 8);
  v133 = v13;
  v14 = *(v132 + 64);
  MEMORY[0x28223BE20](v13);
  v123 = v113 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323B8, &qword_25B0E9C10);
  v120 = *(v121 - 8);
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = v113 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323C0, &qword_25B0E9C18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v122 = v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323C8, &qword_25B0E9C20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v131 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v113 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323D0, &qword_25B0E9C28);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = v113 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323D8, &qword_25B0E9C30);
  v129 = *(v35 - 8);
  v130 = v35;
  v36 = *(v129 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v128 = v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v137 = v113 - v39;
  sub_25B0E3900();
  v127 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = sub_25B0E2750();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v29, a1, v40);
  v42 = 1;
  v43 = (*(v41 + 56))(v29, 0, 1, v40);
  MEMORY[0x28223BE20](v43);
  v113[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  v136 = a1;
  sub_25B0B5B20();
  sub_25B0B94DC(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  v44 = v136;
  sub_25B0E2BF0();
  sub_25B058150(&qword_27FA323E0, &qword_27FA323D0, &qword_25B0E9C28);
  sub_25B0B924C();
  sub_25B0E3250();
  (*(v31 + 8))(v34, v30);
  v45 = type metadata accessor for FaceButton();
  if (*(v44 + *(v45 + 32)) == 1)
  {
    v46 = v45;
    if (*(v44 + *(v45 + 36)) == 1)
    {
      v47 = sub_25B0E2730();
      v48 = [v47 name];

      if (!v48)
      {
        goto LABEL_13;
      }

      v49 = sub_25B0E3740();
      v51 = v50;
    }

    else
    {
      v52 = sub_25B0E2740();
      if (!v53)
      {
        goto LABEL_13;
      }

      v49 = v52;
      v51 = v53;
    }

    v138 = v49;
    v139 = v51;
    sub_25B04C9BC();
    v54 = sub_25B0E3210();
    v56 = v55;
    v58 = v57;
    sub_25B0E3170();
    v59 = sub_25B0E31F0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v113[1] = v64;

    sub_25B0B0ABC(v54, v56, v58 & 1);

    v66 = v136;
    LOBYTE(v56) = *(v136 + v46[12]);
    v114 = v56;
    KeyPath = swift_getKeyPath();
    v138 = v59;
    v139 = v61;
    v63 &= 1u;
    v140 = v63;
    v141 = v65;
    v142 = KeyPath;
    v143 = v56;
    v68 = *(v66 + v46[13]);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323F8, &qword_25B0E9C70);
    v70 = sub_25B0B92A0();
    v71 = v119;
    sub_25B0E3360();
    sub_25B0B0ABC(v59, v61, v63);

    v138 = v69;
    v139 = v70;
    swift_getOpaqueTypeConformance2();
    v72 = v122;
    v73 = v121;
    sub_25B0E32D0();
    (*(v120 + 8))(v71, v73);
    if (sub_25B0E2B90())
    {
      v74 = sub_25B0E3100();
      v75 = v136 + v46[7];
      v76 = *(v75 + 8);
      *(v75 + 16);
      sub_25B0E2A00();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v85 = v115;
      sub_25B0B00E0(v72, v115, &qword_27FA323C0, &qword_25B0E9C18);
      v86 = v85 + *(v124 + 36);
      *v86 = v74;
      *(v86 + 8) = v78;
      *(v86 + 16) = v80;
      *(v86 + 24) = v82;
      *(v86 + 32) = v84;
      *(v86 + 40) = 0;
      v87 = v118;
      sub_25B0745E4(v85, v118, &qword_27FA323A8, &qword_25B0E9C00);
    }

    else
    {
      v88 = sub_25B0E3140();
      v89 = v136 + v46[7];
      v90 = *(v89 + 8);
      *(v89 + 16);
      sub_25B0E2A00();
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v99 = v116;
      sub_25B0B00E0(v72, v116, &qword_27FA323C0, &qword_25B0E9C18);
      v100 = v99 + *(v124 + 36);
      *v100 = v88;
      *(v100 + 8) = v92;
      *(v100 + 16) = v94;
      *(v100 + 24) = v96;
      *(v100 + 32) = v98;
      *(v100 + 40) = 0;
      v87 = v117;
      sub_25B0745E4(v99, v117, &qword_27FA323A8, &qword_25B0E9C00);
    }

    sub_25B0B00E0(v87, v125, &qword_27FA323A8, &qword_25B0E9C00);
    swift_storeEnumTagMultiPayload();
    sub_25B0B9358();
    v101 = v123;
    sub_25B0E2F30();
    sub_25B058448(v87, &qword_27FA323A8, &qword_25B0E9C00);
    sub_25B058448(v72, &qword_27FA323C0, &qword_25B0E9C18);
    sub_25B0745E4(v101, v135, &qword_27FA323B0, &qword_25B0E9C08);
    v42 = 0;
  }

LABEL_13:
  v102 = v135;
  (*(v132 + 56))(v135, v42, 1, v133);
  v104 = v128;
  v103 = v129;
  v105 = *(v129 + 16);
  v106 = v137;
  v107 = v130;
  v105(v128, v137, v130);
  v108 = v131;
  sub_25B0B00E0(v102, v131, &qword_27FA323C8, &qword_25B0E9C20);
  v109 = v134;
  v105(v134, v104, v107);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323F0, &qword_25B0E9C38);
  sub_25B0B00E0(v108, &v109[*(v110 + 48)], &qword_27FA323C8, &qword_25B0E9C20);
  sub_25B058448(v102, &qword_27FA323C8, &qword_25B0E9C20);
  v111 = *(v103 + 8);
  v111(v106, v107);
  sub_25B058448(v108, &qword_27FA323C8, &qword_25B0E9C20);
  v111(v104, v107);
}

void sub_25B0B8DD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for FacePlacement.Location(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E2750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FaceView();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321E0, &qword_25B0E9810);
  v16 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v18 = &v41 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  v19 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v21 = &v41 - v20;
  sub_25B0E3900();
  v41 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v11, a1, v7);
  v22 = type metadata accessor for FaceButton();
  sub_25B050BB8(a1 + v22[5], v6);
  FaceView.init(face:location:)(v11, v6, v15);
  v23 = (a1 + v22[6]);
  v24 = *v23;
  if (*(v23 + 16) == 2)
  {
    v25 = v23[1];
  }

  sub_25B0E3590();
  sub_25B0E2B50();
  sub_25B0B9524(v15, v18);
  v26 = &v18[*(v44 + 36)];
  v27 = v46;
  *v26 = v45;
  *(v26 + 1) = v27;
  *(v26 + 2) = v47;
  v28 = sub_25B0E2730();
  v29 = [v28 device];

  if (v29)
  {
    v30 = a1 + v22[7];
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    if (v33)
    {
      v34 = 6.25;
    }

    else
    {
      v34 = v31;
    }

    if (v33)
    {
      v35 = 2.5;
    }

    else
    {
      v35 = v32;
    }

    v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v37 = sub_25B0E3730();
    [v36 initWithSuiteName_];

    v38 = sub_25B0E29E0();
    sub_25B0745E4(v18, v21, &qword_27FA321E0, &qword_25B0E9810);
    v39 = v43;
    v40 = &v21[*(v42 + 36)];
    *v40 = v29;
    *(v40 + 1) = v34;
    *(v40 + 2) = v35;
    *(v40 + 3) = v38;
    sub_25B0745E4(v21, v39, &qword_27FA321D0, &qword_25B0E9808);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25B0B924C()
{
  result = qword_27FA323E8;
  if (!qword_27FA323E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA323E8);
  }

  return result;
}

unint64_t sub_25B0B92A0()
{
  result = qword_27FA32400;
  if (!qword_27FA32400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323F8, &qword_25B0E9C70);
    sub_25B058150(&qword_27FA32408, &qword_27FA32410, &qword_25B0E9C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32400);
  }

  return result;
}

unint64_t sub_25B0B9358()
{
  result = qword_27FA32418;
  if (!qword_27FA32418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323A8, &qword_25B0E9C00);
    sub_25B0B93E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32418);
  }

  return result;
}

unint64_t sub_25B0B93E4()
{
  result = qword_27FA32420;
  if (!qword_27FA32420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323C0, &qword_25B0E9C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323F8, &qword_25B0E9C70);
    sub_25B0B92A0();
    swift_getOpaqueTypeConformance2();
    sub_25B0B94DC(&qword_27FA31EF0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32420);
  }

  return result;
}

uint64_t sub_25B0B94DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B0B9524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_25B0B9588(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = *&a1 == *&a4;
    if (a6 != 1)
    {
      v6 = 0;
    }

    v7 = *&a1 == *&a4;
    if (*&a2 != *&a5)
    {
      v7 = 0;
    }

    v8 = a6 == 2 && v7;
    if (a3 == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return !a6 && *&a1 == *&a4;
  }
}

unint64_t sub_25B0B95FC()
{
  result = qword_27FA32428;
  if (!qword_27FA32428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32430, &unk_25B0E9C80);
    sub_25B058150(&qword_27FA32398, &qword_27FA32388, &qword_25B0E9BE8);
    sub_25B0B94DC(&qword_27FA31EF0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32428);
  }

  return result;
}

uint64_t sub_25B0B96E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B972C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0B97A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3B00();
  return sub_25B0E3F50();
}

uint64_t sub_25B0B9800()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3780();
  return sub_25B0E3B00();
}

uint64_t sub_25B0B9834()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3B00();
  return sub_25B0E3F50();
}

uint64_t sub_25B0B9890(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  sub_25B0954F8();
  return sub_25B0E3AF0() & 1;
}

uint64_t sub_25B0B9904@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v15 = *(v1 + 8);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  sub_25B0E3450();
  v5 = v10;
  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
  sub_25B0E3470();
  sub_25B0E3440();
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = v15;
  v13[0] = v16;
  *&v13[8] = v15;
  *&v13[24] = 0xD000000000000016;
  *&v14 = 0x800000025B0E9D20;
  *(&v14 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32448, "xl");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32450, &qword_25B0E9D60);
  sub_25B058150(&qword_27FA32458, &qword_27FA32448, "xl");
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32460, &qword_25B0E9D68);
  sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68);
  swift_getOpaqueTypeConformance2();
  sub_25B0E3350();
  v17 = *v13;
  v18 = *&v13[16];
  v19 = v14;
  v15 = v11;
  v16 = v12;
  sub_25B058448(&v15, &qword_27FA32448, "xl");
  v6 = sub_25B0E2CC0();
  v7 = sub_25B0E3130();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32470, &qword_25B0E9D70);
  v9 = a1 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_25B0B9B6C(uint64_t a1)
{
  v2 = sub_25B0E2F50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32460, &qword_25B0E9D68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_25B0E2F40();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32478, &qword_25B0E9D78);
  sub_25B0BA660();
  sub_25B0E2AC0();
  v10 = sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68);
  MEMORY[0x25F85FAD0](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

id sub_25B0B9DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32490, &qword_25B0E9D80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32478, &qword_25B0E9D78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v14 = result;
    v15 = [result isPaired];

    if (v15)
    {
      v26 = a2;
      v16 = *a1;
      v17 = *(a1 + 8);
      v29 = *(a1 + 24);
      v30 = v17;
      v18 = swift_allocObject();
      v25[1] = v25;
      v19 = *(a1 + 16);
      *(v18 + 16) = *a1;
      *(v18 + 32) = v19;
      *(v18 + 48) = *(a1 + 32);
      MEMORY[0x28223BE20](v18);
      v25[-2] = a1;
      v20 = v16;
      sub_25B0B00E0(&v30, &v28, &qword_27FA32438, &qword_25B0E9D28);
      sub_25B0B00E0(&v29, &v28, &qword_27FA32440, &unk_25B0E9D30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324B8, &qword_25B0E9D98);
      sub_25B0BA7D8();
      sub_25B0E3490();
      v28 = v29;
      a2 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
      sub_25B0E3450();
      v21 = v27 != 0;
      KeyPath = swift_getKeyPath();
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      v24 = &v8[*(v4 + 36)];
      *v24 = KeyPath;
      v24[1] = sub_25B0BB234;
      v24[2] = v23;
      sub_25B0745E4(v8, v12, &qword_27FA32490, &qword_25B0E9D80);
      (*(v5 + 56))(v12, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v12, 1, 1, v4);
    }

    sub_25B0745E4(v12, a2, &qword_27FA32478, &qword_25B0E9D78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B0BA160(uint64_t a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 8);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_25B0B00E0(&v6, &v3, &qword_27FA32500, &qword_25B0E9DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  result = sub_25B0E3450();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v5;
    ++v3;
    sub_25B0E3460();
    sub_25B058448(&v5, &qword_27FA32438, &qword_25B0E9D28);
  }

  return result;
}

uint64_t sub_25B0BA28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F0, &qword_25B0E9DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F8, &qword_25B0E9DE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324B8, &qword_25B0E9D98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
  sub_25B0E3450();
  if (v20 == 1)
  {
    sub_25B0E2AD0();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0);
    sub_25B0E2F30();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v16 = sub_25B0E3400();
    v17 = sub_25B0E2F80();
    *v11 = v16;
    *(v11 + 2) = v17;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0);
    sub_25B0E2F30();
  }

  sub_25B0745E4(v15, v19, &qword_27FA324B8, &qword_25B0E9D98);
}

uint64_t sub_25B0BA614@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_25B0B9904(a1);
}

unint64_t sub_25B0BA660()
{
  result = qword_27FA32480;
  if (!qword_27FA32480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32478, &qword_25B0E9D78);
    sub_25B0BA6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32480);
  }

  return result;
}

unint64_t sub_25B0BA6E4()
{
  result = qword_27FA32488;
  if (!qword_27FA32488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32490, &qword_25B0E9D80);
    sub_25B058150(&qword_27FA32498, &qword_27FA324A0, &qword_25B0E9D88);
    sub_25B058150(&qword_27FA324A8, &qword_27FA324B0, &qword_25B0E9D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32488);
  }

  return result;
}

unint64_t sub_25B0BA7D8()
{
  result = qword_27FA324C0;
  if (!qword_27FA324C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA324B8, &qword_25B0E9D98);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA324C0);
  }

  return result;
}

unint64_t sub_25B0BA890()
{
  result = qword_27FA324C8;
  if (!qword_27FA324C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B058150(&qword_27FA324D8, &qword_27FA324E0, &qword_25B0E9DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA324C8);
  }

  return result;
}

id sub_25B0BA948()
{
  v1 = [*v0 addFaceDetailViewController];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v4 = *(v0 + 16);
  *(v3 + 24) = *v0;
  *(v3 + 16) = v2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(v0 + 32);
  *(v3 + 72) = *(v0 + 48);
  aBlock[4] = sub_25B0BB74C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B0BABA4;
  aBlock[3] = &block_descriptor_38;
  v5 = _Block_copy(aBlock);
  sub_25B0BB708(v0, v7);

  [v1 setShareButtonChangedHandler_];
  _Block_release(v5);
  return v1;
}

uint64_t sub_25B0BAA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = *(a2 + 32);
    v14 = v6;
    v11 = v6;
    v12 = v5;
    v13 = v7;

    sub_25B0BB638(&v14, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
    MEMORY[0x25F860020](&v10);
    if (v10 > 1u)
    {
      if (v10 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (!v10)
    {
LABEL_4:
      v8 = [v4 _isShareButtonEnabled];
      v11 = v6;
      v12 = v5;
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      v13 = v7;
      LOBYTE(v10) = v9;
      sub_25B0E34D0();

      sub_25B0BB694(&v14);
    }

    sub_25B0BB694(&v14);
  }

  return result;
}

uint64_t sub_25B0BABA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_25B0BABE8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v24 = *(v1 + 40);
  v15 = *(v1 + 40);
  v25 = *(&v24 + 1);
  sub_25B0B00E0(&v25, &aBlock, &qword_27FA32500, &qword_25B0E9DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  sub_25B0E3450();
  if (v4 == aBlock)
  {
    goto LABEL_4;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v23 = v6;
  *&v15 = v6;
  *(&v15 + 1) = v5;
  LOBYTE(v16) = v7;
  sub_25B0BB638(&v23, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  MEMORY[0x25F860020](&aBlock);
  if (aBlock)
  {
    sub_25B0BB694(&v23);

LABEL_4:
    sub_25B058448(&v24, &qword_27FA32438, &qword_25B0E9D28);
    return;
  }

  aBlock = v4;
  sub_25B0E3460();
  sub_25B058448(&v24, &qword_27FA32438, &qword_25B0E9D28);
  *&v15 = v6;
  *(&v15 + 1) = v5;
  LOBYTE(v16) = v7;
  LOBYTE(aBlock) = 1;
  sub_25B0E34D0();
  sub_25B0BB694(&v23);

  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = *(v1 + 48);
  v21 = sub_25B0BB6E8;
  v22 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25B0BABA4;
  v20 = &block_descriptor_1;
  v10 = _Block_copy(&aBlock);
  sub_25B0BB708(v2, &v15);

  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  *(v11 + 72) = a1;
  v21 = sub_25B0BB740;
  v22 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25B0BABA4;
  v20 = &block_descriptor_29;
  v13 = _Block_copy(&aBlock);
  sub_25B0BB708(v2, &v15);
  v14 = a1;

  [v14 shareFaceWithPreparingCompletion:v10 shareCompletion:{v13, v15, v16}];
  _Block_release(v13);
  _Block_release(v10);
}

uint64_t sub_25B0BAEF8(uint64_t a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  sub_25B0E34D0();
}

uint64_t sub_25B0BAFC8(uint64_t a1, void *a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 _isShareButtonEnabled];
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  sub_25B0E34D0();
}

id sub_25B0BB0BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_25B0BA948();
}

void sub_25B0BB100(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 6);
  sub_25B0BABE8(a1);
}

uint64_t sub_25B0BB144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0BB758();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25B0BB1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0BB758();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25B0BB20C()
{
  sub_25B0BB758();
  sub_25B0E3050();
  __break(1u);
}

uint64_t sub_25B0BB24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0BB294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0BB2E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0BB32C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0BB398()
{
  result = qword_27FA32508;
  if (!qword_27FA32508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32470, &qword_25B0E9D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32448, "xl");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32450, &qword_25B0E9D60);
    sub_25B058150(&qword_27FA32458, &qword_27FA32448, "xl");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32460, &qword_25B0E9D68);
    sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32508);
  }

  return result;
}

unint64_t sub_25B0BB534()
{
  result = qword_27FA32510;
  if (!qword_27FA32510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32510);
  }

  return result;
}

unint64_t sub_25B0BB58C()
{
  result = qword_27FA32518;
  if (!qword_27FA32518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32518);
  }

  return result;
}

unint64_t sub_25B0BB5E4()
{
  result = qword_27FA32520;
  if (!qword_27FA32520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32520);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25B0BB758()
{
  result = qword_27FA32530;
  if (!qword_27FA32530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32530);
  }

  return result;
}

uint64_t FaceView.init(face:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32538, &qword_25B0EA020);
  sub_25B0E3440();
  *a3 = v16;
  v4 = type metadata accessor for FaceView();
  v5 = v4[7];
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_25B0E3730();
  [v6 initWithSuiteName_];

  *&a3[v5] = sub_25B0E29E0();
  v8 = v4[8];
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_25B0E3730();
  [v9 initWithSuiteName_];

  *&a3[v8] = sub_25B0E29E0();
  v11 = v4[5];
  v12 = sub_25B0E2750();
  (*(*(v12 - 8) + 32))(&a3[v11], a1, v12);
  return sub_25B0C2004(a2, &a3[v4[6]], type metadata accessor for FacePlacement.Location);
}

uint64_t type metadata accessor for FaceView()
{
  result = qword_27FA325D0;
  if (!qword_27FA325D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0BB9D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25B0E2580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, *MEMORY[0x277D2BDE8], v4);
  v9 = sub_25B0E2570();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    return 1;
  }

  v11 = *(v2 + *(a1 + 64));
  sub_25B0E29F0();
  return v12[15];
}

uint64_t sub_25B0BBAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v48 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_25B0E3590();
  a2[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C0, &qword_25B0EA178);
  v10 = *(a1 + 24);
  v11 = (a2 + *(v9 + 44));
  v12 = *(a1 + 16);
  v45 = v12;
  sub_25B0BBED0(v2, v12, v11);
  v13 = sub_25B0E35C0();
  v14 = v2;
  v50 = *(v2 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3450();
  v15 = v49;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D0, &qword_25B0EA188) + 36));
  v43 = a2;
  *v16 = v13;
  v16[1] = v15;
  v17 = sub_25B0E35C0();
  v18 = v14 + *(a1 + 60);
  v47 = v14;
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v50) = v19;
  *(&v50 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
  sub_25B0E3450();
  LOBYTE(v15) = v49;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326E0, &qword_25B0EA198) + 36);
  *v21 = v17;
  v21[8] = v15;
  v46 = *(v5 + 16);
  v22 = v7;
  v40 = v7;
  v46(v7, v14, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  *(v24 + 24) = v10;
  v25 = v10;
  v42 = v10;
  v44 = *(v5 + 32);
  v44(v24 + v23, v22, a1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326E8, &qword_25B0EA1B0);
  v27 = v43;
  v28 = (v43 + *(v26 + 36));
  v41 = sub_25B0E2BA0();
  v29 = v28 + *(v41 + 20);
  sub_25B0E3920();
  *v28 = &unk_25B0EA1A8;
  v28[1] = v24;
  v30 = v40;
  v46(v40, v47, a1);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = v25;
  v32 = v30;
  v33 = v44;
  v44(v31 + v23, v30, a1);
  v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326F0, &qword_25B0EA1C8) + 36));
  v35 = v34 + *(v41 + 20);
  sub_25B0E3920();
  *v34 = &unk_25B0EA1C0;
  v34[1] = v31;
  v46(v32, v47, a1);
  v36 = swift_allocObject();
  v37 = v42;
  *(v36 + 16) = v45;
  *(v36 + 24) = v37;
  v33(v36 + v23, v32, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326F8, &qword_25B0EA1D0);
  v39 = (v27 + *(result + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_25B0C12E0;
  v39[3] = v36;
  return result;
}

uint64_t sub_25B0BBED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a3;
  v157 = a1;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32730, &qword_25B0EA210);
  v4 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v6 = &v134 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32738, &qword_25B0EA218);
  v7 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v148 = (&v134 - v8);
  v145 = sub_25B0E2E80();
  v142 = *(v145 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x28223BE20](v145);
  v139 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B0E2CD0();
  v12 = *(v11 - 8);
  v140 = v11;
  v141 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32740, &qword_25B0EA220);
  v146 = *(v16 - 8);
  v147 = v16;
  v17 = *(v146 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v144 = &v134 - v20;
  v21 = sub_25B0E3410();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32748, &qword_25B0EA228);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v155 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v153 = &v134 - v30;
  v31 = sub_25B0E3900();
  v154 = sub_25B0E38F0();
  v137 = v31;
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v152 = sub_25B0E33A0();
  v138 = a2;
  v32 = type metadata accessor for FaceSnapshotView();
  v176[0] = *(v157 + v32[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3450();
  v150 = v32;
  if (*&v175[0])
  {
    v135 = *&v175[0];
    sub_25B0E33F0();
    (*(v22 + 104))(v25, *MEMORY[0x277CE0FE0], v21);
    v136 = sub_25B0E3420();

    (*(v22 + 8))(v25, v21);
    sub_25B0E3620();
    sub_25B0E2CE0();
    v33 = v139;
    sub_25B0E2E70();
    v34 = sub_25B0C2404(&qword_27FA32770, MEMORY[0x277CDFAE8]);
    v35 = sub_25B0C2404(&qword_27FA32778, MEMORY[0x277CE0068]);
    v36 = v144;
    v37 = v145;
    v38 = v140;
    sub_25B0E2A40();
    (*(v142 + 8))(v33, v37);
    (*(v141 + 8))(v15, v38);
    v40 = v146;
    v39 = v147;
    (*(v146 + 16))(v143, v36, v147);
    *&v176[0] = v38;
    *(&v176[0] + 1) = v37;
    *&v176[1] = v34;
    *(&v176[1] + 1) = v35;
    swift_getOpaqueTypeConformance2();
    v41 = sub_25B0E2B60();
    (*(v40 + 8))(v36, v39);
    v42 = sub_25B0E3590();
    v44 = v43;
    v45 = v157;
    v46 = v135;
    sub_25B0BD2B4(v176);
    v158[0] = v176[0];
    v158[1] = v176[1];
    *&v159 = *&v176[2];
    BYTE8(v159) = BYTE8(v176[2]);
    *&v160 = v42;
    *(&v160 + 1) = v44;
    LOBYTE(v174[0]) = 1;
    v176[3] = v160;
    v176[2] = v159;
    v162 = v176[0];
    v163 = v176[1];
    *&v164 = v159;
    BYTE8(v164) = BYTE8(v159);
    *&v165 = v42;
    *(&v165 + 1) = v44;
    sub_25B0B00E0(v158, v175, &qword_27FA327D8, &qword_25B0EA2A8);
    sub_25B058448(&v162, &qword_27FA327D8, &qword_25B0EA2A8);
    v173[0] = v136;
    LOWORD(v173[1]) = LOBYTE(v174[0]);
    *(&v173[1] + 2) = v175[0];
    WORD3(v173[1]) = WORD2(v175[0]);
    *(&v173[1] + 1) = v41;
    v173[2] = v176[0];
    v173[3] = v176[1];
    v173[4] = v176[2];
    v173[5] = v176[3];
    v176[1] = v173[1];
    v176[0] = v136;
    v176[5] = v176[3];
    v176[4] = v176[2];
    v176[3] = v173[3];
    v176[2] = v173[2];
    sub_25B0C1EE0(v176);
    v174[8] = v176[8];
    v174[9] = v176[9];
    *(&v174[9] + 9) = *(&v176[9] + 9);
    v174[4] = v176[4];
    v174[5] = v176[5];
    v174[6] = v176[6];
    v174[7] = v176[7];
    v174[0] = v176[0];
    v174[1] = v176[1];
    v174[2] = v176[2];
    v174[3] = v176[3];
    v47 = &qword_27FA32798;
    v48 = &qword_25B0EA288;
    sub_25B0B00E0(v173, v175, &qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1930();
    sub_25B0C1B24();
    v32 = v150;
    sub_25B0E2F30();
    v49 = v175[9];
    v50 = v148;
    v148[8] = v175[8];
    v50[9] = v49;
    *(v50 + 153) = *(&v175[9] + 9);
    v51 = v175[5];
    v50[4] = v175[4];
    v50[5] = v51;
    v52 = v175[7];
    v50[6] = v175[6];
    v50[7] = v52;
    v53 = v175[1];
    *v50 = v175[0];
    v50[1] = v53;
    v54 = v175[3];
    v50[2] = v175[2];
    v50[3] = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C18A4();
    sub_25B0C1D18();
    v55 = v153;
    sub_25B0E2F30();

    v56 = v173;
LABEL_5:
    sub_25B058448(v56, v47, v48);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
    goto LABEL_14;
  }

  v58 = v6;
  v45 = v157;
  v176[0] = *(v157 + v32[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
  v59 = sub_25B0E3450();
  v60 = *&v175[0];
  if (*&v175[0])
  {
    v61 = MEMORY[0x25F860BB0](v59);
    v55 = v153;
    if (v61)
    {
      v62 = sub_25B0E2EF0();
      LOBYTE(v162) = 1;
      sub_25B0BD448(v176);
      v174[2] = v176[2];
      v174[3] = v176[3];
      v174[4] = v176[4];
      *&v174[5] = *&v176[5];
      v174[0] = v176[0];
      v174[1] = v176[1];
      *&v175[5] = *&v176[5];
      v175[2] = v176[2];
      v175[3] = v176[3];
      v175[4] = v176[4];
      v175[0] = v176[0];
      v175[1] = v176[1];
      sub_25B0B00E0(v174, v173, &qword_27FA32840, &qword_25B0EA2E8);
      sub_25B058448(v175, &qword_27FA32840, &qword_25B0EA2E8);
      *(&v161[2] + 7) = v174[2];
      *(&v161[3] + 7) = v174[3];
      *(&v161[4] + 7) = v174[4];
      *(&v161[5] + 7) = *&v174[5];
      *(v161 + 7) = v174[0];
      *(&v161[1] + 7) = v174[1];
      v63 = v162;
      v64 = sub_25B0E3110();
      sub_25B0E2A00();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      LOBYTE(v176[0]) = 0;
      v73 = sub_25B0E33B0();
      *(&v176[3] + 1) = v161[2];
      *(&v176[4] + 1) = v161[3];
      *(&v176[5] + 1) = v161[4];
      v176[6] = *(&v161[4] + 15);
      *(&v176[1] + 1) = v161[0];
      v176[0] = v62;
      LOBYTE(v176[1]) = v63;
      *(&v176[2] + 1) = v161[1];
      LOBYTE(v176[7]) = v64;
      *(&v176[7] + 1) = v66;
      *&v176[8] = v68;
      *(&v176[8] + 1) = v70;
      *&v176[9] = v72;
      BYTE8(v176[9]) = 0;
      *&v176[10] = v73;
      nullsub_1(v176);
      v170 = v176[8];
      v171 = v176[9];
      v172 = *&v176[10];
      v166 = v176[4];
      v167 = v176[5];
      v168 = v176[6];
      v169 = v176[7];
      v162 = v176[0];
      v163 = v176[1];
      v164 = v176[2];
      v165 = v176[3];
    }

    else
    {
      sub_25B0C1EB4(&v162);
    }

    v175[8] = v170;
    v175[9] = v171;
    *&v175[10] = v172;
    v175[4] = v166;
    v175[5] = v167;
    v175[7] = v169;
    v175[6] = v168;
    v175[0] = v162;
    v175[1] = v163;
    v175[3] = v165;
    v175[2] = v164;
    sub_25B0C1ED4(v175);
    v176[8] = v175[8];
    v176[9] = v175[9];
    *(&v176[9] + 9) = *(&v175[9] + 9);
    v176[4] = v175[4];
    v176[5] = v175[5];
    v176[7] = v175[7];
    v176[6] = v175[6];
    v176[0] = v175[0];
    v176[1] = v175[1];
    v176[3] = v175[3];
    v176[2] = v175[2];
    sub_25B0B00E0(&v162, v174, &qword_27FA327E8, &qword_25B0EA2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1930();
    sub_25B0C1B24();
    sub_25B0E2F30();
    v90 = v174[9];
    v176[8] = v174[8];
    v176[9] = v174[9];
    *(&v176[9] + 9) = *(&v174[9] + 9);
    v91 = v174[4];
    v92 = v174[5];
    v176[4] = v174[4];
    v176[5] = v174[5];
    v94 = v174[6];
    v93 = v174[7];
    v176[7] = v174[7];
    v176[6] = v174[6];
    v95 = v174[0];
    v96 = v174[1];
    v176[0] = v174[0];
    v176[1] = v174[1];
    v98 = v174[2];
    v97 = v174[3];
    v176[3] = v174[3];
    v176[2] = v174[2];
    v99 = v148;
    v148[8] = v174[8];
    v99[9] = v90;
    *(v99 + 153) = *(&v174[9] + 9);
    v99[4] = v91;
    v99[5] = v92;
    v99[6] = v94;
    v99[7] = v93;
    *v99 = v95;
    v99[1] = v96;
    v99[2] = v98;
    v99[3] = v97;
    swift_storeEnumTagMultiPayload();
    sub_25B0B00E0(v176, v173, &qword_27FA32780, &qword_25B0EA280);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C18A4();
    sub_25B0C1D18();
    sub_25B0E2F30();

    sub_25B058448(v176, &qword_27FA32780, &qword_25B0EA280);
    sub_25B058448(&v162, &qword_27FA327E8, &qword_25B0EA2B0);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v100 - 8) + 56))(v55, 0, 1, v100);
    v45 = v157;
    v32 = v150;
  }

  else
  {
    v74 = (v45 + v32[15]);
    v75 = *v74;
    v76 = *(v74 + 1);
    LOBYTE(v176[0]) = v75;
    *(&v176[0] + 1) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
    sub_25B0E3450();
    v55 = v153;
    if (v175[0])
    {
      v77 = v58;
      v136 = v58;
      sub_25B0E2AD0();
      v78 = sub_25B0E33B0();
      KeyPath = swift_getKeyPath();
      v80 = &v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32768, &qword_25B0EA278) + 36)];
      *v80 = KeyPath;
      v80[1] = v78;
      sub_25B0E3620();
      sub_25B0E2CE0();
      v81 = v139;
      sub_25B0E2E70();
      v138 = sub_25B0C2404(&qword_27FA32770, MEMORY[0x277CDFAE8]);
      v82 = sub_25B0C2404(&qword_27FA32778, MEMORY[0x277CE0068]);
      v83 = v144;
      v84 = v145;
      v85 = v140;
      sub_25B0E2A40();
      (*(v142 + 8))(v81, v84);
      (*(v141 + 8))(v15, v85);
      v87 = v146;
      v86 = v147;
      (*(v146 + 16))(v143, v83, v147);
      *&v176[0] = v85;
      *(&v176[0] + 1) = v84;
      *&v176[1] = v138;
      *(&v176[1] + 1) = v82;
      swift_getOpaqueTypeConformance2();
      v88 = sub_25B0E2B60();
      (*(v87 + 8))(v83, v86);
      v89 = v136;
      *(v136 + *(v151 + 36)) = v88;
      v47 = &qword_27FA32730;
      v48 = &qword_25B0EA210;
      sub_25B0B00E0(v89, v148, &qword_27FA32730, &qword_25B0EA210);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
      sub_25B0C18A4();
      sub_25B0C1D18();
      v32 = v150;
      sub_25B0E2F30();
      v56 = v89;
      goto LABEL_5;
    }

    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v133 - 8) + 56))(v55, 1, 1, v133);
  }

LABEL_14:
  if (*(v45 + v32[10]) == 1 && (v101 = v45 + v32[12], v102 = *(v101 + 16), v176[0] = *v101, *&v176[1] = v102, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0), sub_25B0E3450(), *(&v175[0] + 1)))
  {
    v103 = sub_25B0E3400();
    v104 = sub_25B0E3110();
    sub_25B0E2A00();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    LOBYTE(v173[0]) = 0;
    LOBYTE(v162) = 0;
    v113 = sub_25B0E3590();
    v115 = v114;
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v116 = sub_25B0E3390();

    v117 = sub_25B0E3110();
    sub_25B0E2A00();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    LOBYTE(v174[0]) = 0;
    v126 = sub_25B0E33B0();
    v127 = swift_getKeyPath();
    sub_25B0E3570();
    sub_25B0E2D30();
    *&v175[0] = v103;
    *(&v175[0] + 1) = 0x3FF0000000000000;
    LOWORD(v175[1]) = 256;
    BYTE8(v175[1]) = v104;
    *&v175[2] = v106;
    *(&v175[2] + 1) = v108;
    *&v175[3] = v110;
    *(&v175[3] + 1) = v112;
    LOBYTE(v175[4]) = 0;
    *(&v175[4] + 1) = v116;
    LOWORD(v175[5]) = 256;
    *(&v175[5] + 1) = v113;
    *&v175[6] = v115;
    BYTE8(v175[6]) = v117;
    *&v175[7] = v119;
    *(&v175[7] + 1) = v121;
    *&v175[8] = v123;
    *(&v175[8] + 1) = v125;
    LOBYTE(v175[9]) = 0;
    *(&v175[9] + 1) = v127;
    *&v175[10] = v126;
    BYTE8(v175[17]) = 0;
    nullsub_1(v175);
    memcpy(v176, v175, 0x119uLL);
  }

  else
  {
    sub_25B0C1870(v176);
  }

  v128 = v155;
  sub_25B0B00E0(v55, v155, &qword_27FA32748, &qword_25B0EA228);
  memcpy(v173, v176, 0x119uLL);
  v129 = v156;
  *v156 = v152;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32758, &qword_25B0EA238);
  sub_25B0B00E0(v128, v129 + *(v130 + 48), &qword_27FA32748, &qword_25B0EA228);
  v131 = *(v130 + 64);
  memcpy(v174, v173, 0x119uLL);
  memcpy(v129 + v131, v173, 0x119uLL);

  sub_25B0B00E0(v174, v175, &qword_27FA32760, &qword_25B0EA240);
  sub_25B058448(v55, &qword_27FA32748, &qword_25B0EA228);
  memcpy(v175, v173, 0x119uLL);
  sub_25B058448(v175, &qword_27FA32760, &qword_25B0EA240);
  sub_25B058448(v128, &qword_27FA32748, &qword_25B0EA228);
}

uint64_t sub_25B0BD2B4@<X0>(uint64_t a1@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for FaceSnapshotView();
  if (sub_25B0BB9D0(v2))
  {
    CLKUIComputeImageAPL();
    v4 = v3 * 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25B0E7720;
    *(v5 + 56) = MEMORY[0x277D85048];
    *(v5 + 64) = sub_25B0B77B0();
    *(v5 + 32) = v4;
    v6 = sub_25B0E3750();
    v8 = v7;
    v9 = sub_25B0E33A0();
    v10 = sub_25B0E3110();

    v12 = MEMORY[0x277D84F90];
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = v12;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_25B0BD448@<X0>(uint64_t a1@<X8>)
{
  sub_25B0E3900();
  v20[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[0] = sub_25B0E3400();
  sub_25B0E31A0();
  v2 = sub_25B0E3190();

  KeyPath = swift_getKeyPath();
  v4 = sub_25B0E3380();
  ErrorValue = swift_getErrorValue();
  v6 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue);
  (*(v8 + 16))(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_25B0E3760();
  v22 = v9;
  sub_25B04C9BC();
  v10 = sub_25B0E3210();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = sub_25B0E33B0();
  v14 &= 1u;
  LOBYTE(v21) = v14;
  *a1 = v20[0];
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0x3FC999999999999ALL;
  *(a1 + 80) = v18;

  sub_25B0B76F4(v10, v12, v14);

  sub_25B0B0ABC(v10, v12, v14);
}

uint64_t sub_25B0BD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = sub_25B0E3900();
  v3[13] = sub_25B0E38F0();
  v11 = swift_task_alloc();
  v3[14] = v11;
  v12 = type metadata accessor for FaceSnapshotView();
  v3[15] = v12;
  *v11 = v3;
  v11[1] = sub_25B0BD8DC;

  return sub_25B0BE044(v12);
}

uint64_t sub_25B0BD8DC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v6 = sub_25B0E3850();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return MEMORY[0x2822009F8](sub_25B0BDA20, v6, v5);
}

uint64_t sub_25B0BDA20()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  (*(v0[4] + 32))(v0[3]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[13];
    v6 = v0[8];

    sub_25B058448(v6, &qword_27FA313B8, &unk_25B0E72A0);
    v7 = v0[11];
    v8 = v0[7];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[7];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    sub_25B0E39A0();
    v13 = v0[12];
    v14 = sub_25B0E38F0();
    v0[18] = v14;
    v15 = *(MEMORY[0x277D85798] + 4);
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_25B0BDBD4;
    v17 = v0[7];
    v18 = v0[5];
    v19 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 21, v14, v19, v18);
  }
}

uint64_t sub_25B0BDBD4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25B0BDD18, v5, v4);
}

uint64_t sub_25B0BDD18()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 104);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    v8 = *(v0 + 88);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_25B0BDE68;
    v14 = *(v0 + 120);
    v15 = *(v0 + 16);

    return sub_25B0BE044(v14);
  }
}

uint64_t sub_25B0BDE68()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25B0BDF88, v4, v3);
}

uint64_t sub_25B0BDF88()
{
  v1 = v0[12];
  v2 = sub_25B0E38F0();
  v0[18] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_25B0BDBD4;
  v5 = v0[7];
  v6 = v0[5];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 21, v2, v7, v6);
}

uint64_t sub_25B0BE044(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = *(a1 + 24);
  v2[50] = v3;
  v4 = *(a1 + 16);
  v2[51] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[52] = AssociatedTypeWitness;
  v6 = sub_25B0E3B10();
  v2[53] = v6;
  v7 = *(v6 - 8);
  v2[54] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[55] = v9;
  v10 = *(AssociatedTypeWitness - 8);
  v2[56] = v10;
  v11 = *(v10 + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = sub_25B0E3900();
  v2[60] = sub_25B0E38F0();
  v12 = *(v3 + 24);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v2[61] = v14;
  *v14 = v2;
  v14[1] = sub_25B0BE280;

  return v16(v9, v4, v3);
}

uint64_t sub_25B0BE280()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  v6 = *(v3 + 480);
  v7 = *(v3 + 472);
  v9 = sub_25B0E3850();
  if (v2)
  {
    v10 = sub_25B0BE820;
  }

  else
  {
    v10 = sub_25B0BE3D8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_25B0BE3D8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v4 = *(v0 + 416);

  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
  }

  else
  {
    v5 = *(v0 + 496);
    v6 = *(v0 + 416);
    v7 = *(v0 + 400);
    (*(*(v0 + 448) + 32))(*(v0 + 464), *(v0 + 440), v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 32))(v6, AssociatedConformanceWitness);
    v10 = *(v0 + 464);
    if (v5)
    {
      (*(*(v0 + 448) + 8))(*(v0 + 464), *(v0 + 416));
      v12 = *(v0 + 384);
      v11 = *(v0 + 392);
      *(v0 + 264) = *(v11 + v12[11]);
      *(v0 + 360) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
      sub_25B0E3460();
      v13 = v11 + v12[12];
      v14 = *(v13 + 16);
      *(v0 + 192) = *v13;
      *(v0 + 208) = v14;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
      sub_25B0E3460();
      *(v0 + 296) = *(v11 + v12[13]);
      *(v0 + 368) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
      sub_25B0E3460();
    }

    else
    {
      v16 = *(v0 + 448);
      v15 = *(v0 + 456);
      v17 = *(v0 + 416);
      *(v0 + 312) = *(*(v0 + 392) + *(*(v0 + 384) + 44));
      *(v0 + 376) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
      sub_25B0E3460();
      (*(v16 + 16))(v15, v10, v17);
      if (swift_dynamicCast())
      {
        v18 = 0x656E6F687069;
        v19 = *(v0 + 128);
        *(v0 + 72) = *(v0 + 112);
        *(v0 + 88) = v19;
        *(v0 + 104) = *(v0 + 144);
        sub_25B049F48(v0 + 72, v0 + 152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32728, &qword_25B0EA208);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 16);
          v21 = *(v0 + 40);
          v22 = *(v0 + 56);
          v23 = *(v0 + 64);

          if (!v20)
          {
            v18 = 0x746177656C707061;
          }

          v24 = 0xEA00000000006863;
          if (v20)
          {
            v24 = 0xE600000000000000;
          }
        }

        else
        {
          v24 = 0xE600000000000000;
        }

        v32 = *(v0 + 464);
        v33 = *(v0 + 448);
        v34 = *(v0 + 416);
        v35 = *(v0 + 392) + *(*(v0 + 384) + 48);
        v36 = *(v35 + 16);
        *(v0 + 240) = *v35;
        *(v0 + 256) = v36;
        *(v0 + 344) = v18;
        *(v0 + 352) = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
        sub_25B0E3460();
        sub_25B0C181C(v0 + 72);
        (*(v33 + 8))(v32, v34);
      }

      else
      {
        v25 = *(v0 + 464);
        v26 = *(v0 + 448);
        v27 = *(v0 + 416);
        v29 = *(v0 + 384);
        v28 = *(v0 + 392);
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0u;
        *(v0 + 144) = 0;
        sub_25B058448(v0 + 112, &qword_27FA32720, &qword_25B0EA200);
        v30 = v28 + *(v29 + 48);
        v31 = *(v30 + 16);
        *(v0 + 216) = *v30;
        *(v0 + 232) = v31;
        *(v0 + 328) = 0;
        *(v0 + 336) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
        sub_25B0E3460();
        (*(v26 + 8))(v25, v27);
      }
    }
  }

  v38 = *(v0 + 456);
  v37 = *(v0 + 464);
  v39 = *(v0 + 440);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25B0BE820()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 496);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  *(v0 + 264) = *(v3 + v4[11]);
  *(v0 + 360) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3460();
  v5 = v3 + v4[12];
  v6 = *(v5 + 16);
  *(v0 + 192) = *v5;
  *(v0 + 208) = v6;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
  sub_25B0E3460();
  *(v0 + 296) = *(v3 + v4[13]);
  *(v0 + 368) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
  sub_25B0E3460();
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v9 = *(v0 + 440);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B0BE960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_25B0E3C90();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  sub_25B0E3900();
  v3[10] = sub_25B0E38F0();
  v8 = sub_25B0E3850();
  v3[11] = v8;
  v3[12] = v7;

  return MEMORY[0x2822009F8](sub_25B0BEA58, v8, v7);
}

uint64_t sub_25B0BEA58()
{
  v1 = *(v0 + 72);
  sub_25B0E3EB0();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_25B0BEB2C;
  v3 = *(v0 + 72);

  return sub_25B0C1364(2000000000000000000, 0, 250000000000000000, 0, 0);
}

uint64_t sub_25B0BEB2C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_25B0BED8C;
  }

  else
  {
    v10 = sub_25B0BECC4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_25B0BECC4()
{
  v1 = *(v0 + 80);

  if ((sub_25B0E39F0() & 1) == 0)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = (v4 + *(type metadata accessor for FaceSnapshotView() + 60));
    v6 = *v5;
    v7 = *(v5 + 1);
    *(v0 + 120) = 1;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
    sub_25B0E3460();
  }

  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25B0BED8C()
{
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25B0BEE00(uint64_t a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for FaceSnapshotView() + 60));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
  sub_25B0E3460();
}

void sub_25B0BEEF8()
{
  v0 = *(type metadata accessor for FaceView() + 20);
  v1 = sub_25B0E2730();
  v2 = [v1 device];

  if (v2)
  {
    [v2 screenBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    CGRectGetWidth(v21);
    v11 = sub_25B0E2730();
    v12 = [v11 device];

    if (v12)
    {
      [v12 screenBounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v22.origin.x = v14;
      v22.origin.y = v16;
      v22.size.width = v18;
      v22.size.height = v20;
      CGRectGetHeight(v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FaceView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v35 = type metadata accessor for FaceView();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E3590();
  v33 = v8;
  v34 = v7;
  sub_25B0BF684(v1, v39);
  v45 = v39[4];
  v46 = v39[5];
  v47 = v39[6];
  v48 = v39[7];
  v41 = v39[0];
  v42 = v39[1];
  v43 = v39[2];
  v44 = v39[3];
  v49[0] = v39[0];
  v49[1] = v39[1];
  v49[2] = v39[2];
  v49[3] = v39[3];
  v49[4] = v39[4];
  v49[5] = v39[5];
  v49[6] = v39[6];
  v49[7] = v39[7];
  sub_25B0B00E0(&v41, v38, &qword_27FA32540, &qword_25B0EA028);
  sub_25B058448(v49, &qword_27FA32540, &qword_25B0EA028);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  sub_25B0BEEF8();
  v10 = v9;
  v40 = 0;
  v11 = sub_25B0E3590();
  v31 = v12;
  v32 = v11;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0C1F40(v1, v6, type metadata accessor for FaceView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v30 = swift_allocObject();
  sub_25B0C2004(v6, v30 + v13, type metadata accessor for FaceView);

  v14 = sub_25B0E3590();
  v28 = v15;
  v29 = v14;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v1 + *(v35 + 32));
  sub_25B0E29F0();
  if (LOBYTE(v39[0]) == 1)
  {
    sub_25B0C1F40(v1, v6, type metadata accessor for FaceView);
    *(&v27 + 1) = swift_allocObject();
    sub_25B0C2004(v6, *(&v27 + 1) + v13, type metadata accessor for FaceView);

    *&v27 = sub_25B0C06C0;
  }

  else
  {

    v27 = 0uLL;
  }

  sub_25B0C1F40(v1, v6, type metadata accessor for FaceView);
  v17 = swift_allocObject();
  sub_25B0C2004(v6, v17 + v13, type metadata accessor for FaceView);
  sub_25B0C1F40(v2, v6, type metadata accessor for FaceView);
  v18 = swift_allocObject();
  sub_25B0C2004(v6, v18 + v13, type metadata accessor for FaceView);
  *&v39[0] = v34;
  *(&v39[0] + 1) = v33;
  v39[5] = v54;
  v39[6] = v55;
  v39[7] = v56;
  v39[8] = v57;
  v39[1] = v50;
  v39[2] = v51;
  v39[3] = v52;
  v39[4] = v53;
  *&v39[9] = v10;
  WORD4(v39[9]) = 0;
  *&v39[10] = v32;
  *(&v39[10] + 1) = v31;
  *&v39[11] = sub_25B0BFC10;
  *(&v39[11] + 1) = v30;
  v39[12] = v27;
  *&v39[13] = v29;
  *(&v39[13] + 1) = v28;
  *&v39[14] = sub_25B0C01A4;
  *(&v39[14] + 1) = v17;
  memset(&v39[15], 0, 32);
  *&v39[17] = sub_25B0C0280;
  *(&v39[17] + 1) = v18;
  v19 = v2 + *(v35 + 20);
  v20 = sub_25B0E2730();
  v21 = [v20 namesOfSelectedOptionsForCustomEditModes];

  if (v21)
  {
    v22 = sub_25B0E37F0();

    v38[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CD8, &qword_25B0EA030);
    sub_25B058150(&qword_27FA32548, &qword_27FA31CD8, &qword_25B0EA030);
    v23 = sub_25B0E36E0();
    v25 = v24;

    v36 = v23;
    v37 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32550, &qword_25B0EA038);
    sub_25B0C206C(&qword_27FA32558, &qword_27FA32550, &qword_25B0EA038, sub_25B0C030C);
    sub_25B04C9BC();
    sub_25B0E32B0();

    memcpy(v38, v39, sizeof(v38));
    sub_25B058448(v38, &qword_27FA32550, &qword_25B0EA038);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0BF684@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = sub_25B0E33A0();
  v39 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3450();
  v4 = v31;
  if (v31)
  {

    sub_25B0BEEF8();
    v6 = v5;
    v7 = *(a1 + *(type metadata accessor for FaceView() + 28));
    sub_25B0E29F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32688, "jn");
    sub_25B0E3440();
    v31 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31630, &qword_25B0EA100);
    sub_25B0E3440();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326A0, &qword_25B0EA108);
    sub_25B0E3440();
    v9 = *(&v39 + 1);
    v8 = v39;
    *&v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326B0, qword_25B0EA110);
    sub_25B0E3440();
    v10 = *(&v39 + 1);
    v11 = v39;
    sub_25B0E3440();
    v12 = v39;
    v13 = *(&v39 + 1);
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_25B0E3730();
    [v14 initWithSuiteName_];

    v16 = sub_25B0E29E0();

    v18 = v40;
    v17 = *(&v39 + 1);
    v19 = *(&v39 + 1);
    v20 = v39;
    v22 = v39;
    v21 = v39;
  }

  else
  {
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
    v16 = 0;
    v12 = 0;
    v21 = 0;
    v6 = 0;
  }

  *&v31 = v4;
  *(&v31 + 1) = v6;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  *&v33 = v19;
  *(&v33 + 1) = v20;
  *&v34 = v17;
  *(&v34 + 1) = v18;
  *&v35 = v8;
  *(&v35 + 1) = v9;
  *&v36 = v11;
  *(&v36 + 1) = v10;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  v38 = v16;
  *a2 = v29;
  v23 = v31;
  v24 = v35;
  *(a2 + 56) = v34;
  v25 = v32;
  *(a2 + 40) = v33;
  *(a2 + 24) = v25;
  *(a2 + 8) = v23;
  v26 = v36;
  v27 = v37;
  *(a2 + 120) = v16;
  *(a2 + 104) = v27;
  *(a2 + 88) = v26;
  *(a2 + 72) = v24;
  *&v39 = v4;
  *(&v39 + 1) = v6;
  v40 = v21;
  v41 = v22;
  v42 = v19;
  v43 = v20;
  v44 = v17;
  v45 = v18;
  v46 = v8;
  v47 = v9;
  v48 = v11;
  v49 = v10;
  v50 = v12;
  v51 = v13;
  v52 = v16;

  sub_25B0B00E0(&v31, v30, &qword_27FA32850, &qword_25B0EA360);
  sub_25B058448(&v39, &qword_27FA32850, &qword_25B0EA360);
}

void sub_25B0BFA20(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25B0E2D20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1 + *(type metadata accessor for FaceView() + 20);
  v9 = sub_25B0E2730();
  v10 = [v9 device];

  if (v10)
  {
    [v10 screenBounds];
    v12 = v11;
    [v10 screenCornerRadius];
    v14 = v13;
    sub_25B0E2B70();
    v16 = v15;

    v17 = v14 * (v16 / v12);
    v18 = *(v4 + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_25B0E2EC0();
    (*(*(v20 - 8) + 104))(v7 + v18, v19, v20);
    *v7 = v17;
    v7[1] = v17;
    sub_25B0C2004(v7, a2, MEMORY[0x277CDFC08]);
  }

  else
  {
    __break(1u);
  }
}

void sub_25B0BFC10(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_25B0BFA20(v4, a1);
}

void sub_25B0BFC90(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2B70();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25B0E7720;
  v7 = MEMORY[0x277D85048];
  *(v6 + 56) = MEMORY[0x277D85048];
  v8 = sub_25B0B77B0();
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  v25 = sub_25B0E3750();
  v26 = v9;
  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  sub_25B0E2B70();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25B0E7720;
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
  *(v12 + 32) = v11;
  v13 = sub_25B0E3750();
  MEMORY[0x25F8602F0](v13);

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  v14 = a1 + *(type metadata accessor for FaceView() + 20);
  v15 = sub_25B0E2730();
  v16 = [v15 device];

  if (v16)
  {
    [v16 screenBounds];
    v18 = v17;
    [v16 screenCornerRadius];
    v20 = v19;
    sub_25B0E2B70();
    v22 = v21;

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25B0E7720;
    *(v23 + 56) = v7;
    *(v23 + 64) = v8;
    *(v23 + 32) = v20 * (v22 / v18);
    v24 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v24);

    *a2 = v25;
    *(a2 + 8) = v26;
    *(a2 + 16) = 0;
    *(a2 + 24) = MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0BFF1C(char *a1)
{
  v2 = type metadata accessor for FacePlacement.Location(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *a1;
  v12 = *(a1 + 1);
  *&v19[0] = *a1;
  *(&v19[0] + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3450();
  if (v20)
  {
  }

  else
  {
    v13 = type metadata accessor for FaceView();
    (*(v7 + 16))(v10, &a1[*(v13 + 20)], v6);
    sub_25B0C1F40(&a1[*(v13 + 24)], v5, type metadata accessor for FacePlacement.Location);
    v14 = type metadata accessor for FaceSnapshotProvider();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    sub_25B048944(v5, v19);
    sub_25B0C1FA8(v5);
    (*(v7 + 32))(v17 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_face, v10, v6);
    sub_25B04A114(v19, v17 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_underlyingProvider);
    *&v19[0] = v11;
    *(&v19[0] + 1) = v12;
    v20 = v17;
    sub_25B0E3460();
  }
}

uint64_t sub_25B0C01BC(__int128 *a1)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3460();
}

uint64_t sub_25B0C0298(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FaceView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25B0C033C()
{
  result = qword_27FA32570;
  if (!qword_27FA32570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32578, &qword_25B0EA048);
    sub_25B0C03F4();
    sub_25B058150(&qword_27FA325C0, &qword_27FA325C8, &qword_25B0EA070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32570);
  }

  return result;
}

unint64_t sub_25B0C03F4()
{
  result = qword_27FA32580;
  if (!qword_27FA32580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32588, &qword_25B0EA050);
    sub_25B0C04AC();
    sub_25B058150(&qword_27FA325B0, &qword_27FA325B8, &qword_25B0EA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32580);
  }

  return result;
}

unint64_t sub_25B0C04AC()
{
  result = qword_27FA32590;
  if (!qword_27FA32590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32598, &qword_25B0EA058);
    sub_25B058150(&qword_27FA325A0, &qword_27FA325A8, &qword_25B0EA060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32590);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for FaceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_25B0E2750();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[8];
  v10 = v9 + *(type metadata accessor for FacePlacement.Location(0) + 20);
  v11 = sub_25B0E2540();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[9]);

  v13 = *(v0 + v3 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_25B0C06C0(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_25B0BFC90(v4, a1);
}

void sub_25B0C0788()
{
  sub_25B0C0EC4(319, &qword_27FA325E0, &qword_27FA32538, &qword_25B0EA020);
  if (v0 <= 0x3F)
  {
    sub_25B0E2750();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FacePlacement.Location(319);
      if (v2 <= 0x3F)
      {
        sub_25B0C0F18(319, &qword_27FA325E8, MEMORY[0x277CDD630]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_25B0C0870()
{
  result = qword_27FA325F0;
  if (!qword_27FA325F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FA325F8, &qword_25B0EA0D8);
    sub_25B0C206C(&qword_27FA32558, &qword_27FA32550, &qword_25B0EA038, sub_25B0C030C);
    sub_25B0C2404(&qword_27FA31EF0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA325F0);
  }

  return result;
}

void sub_25B0C0960(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_25B0C0EC4(319, &qword_27FA32680, &qword_27FA32688, "jn");
    if (v3 <= 0x3F)
    {
      sub_25B0C0EC4(319, &qword_27FA32690, &qword_27FA31630, &qword_25B0EA100);
      if (v4 <= 0x3F)
      {
        sub_25B0C0EC4(319, &qword_27FA32698, &qword_27FA326A0, &qword_25B0EA108);
        if (v5 <= 0x3F)
        {
          sub_25B0C0EC4(319, &qword_27FA326A8, &qword_27FA326B0, qword_25B0EA110);
          if (v6 <= 0x3F)
          {
            sub_25B0C0F18(319, &qword_27FA326B8, MEMORY[0x277CE10B8]);
            if (v7 <= 0x3F)
            {
              sub_25B0C0F18(319, &qword_27FA325E8, MEMORY[0x277CDD630]);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25B0C0B10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((((((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_25B0C0C9C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((((((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_25B0C0EC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25B0E3480();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25B0C0F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25B0C0FB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for FaceSnapshotView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B0498DC;

  return sub_25B0BD6F8(v0 + v5, v2, v3);
}

uint64_t sub_25B0C1098()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for FaceSnapshotView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B05859C;

  return sub_25B0BE960(v0 + v5, v2, v3);
}

uint64_t objectdestroy_19Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FaceSnapshotView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);
  v7 = v0 + v5 + v3[13];

  v8 = *(v7 + 8);

  v9 = v0 + v5 + v3[14];
  v10 = *(v9 + 8);

  v11 = *(v9 + 16);

  v12 = v0 + v5 + v3[15];

  v13 = *(v12 + 8);

  v14 = v0 + v5 + v3[16];

  v15 = *(v14 + 8);

  v16 = *(v0 + v5 + v3[17] + 8);

  v17 = *(v0 + v5 + v3[18]);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_25B0C12E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for FaceSnapshotView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25B0BEE00(v4);
}

uint64_t sub_25B0C1364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25B0E3C80();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25B0C1464, 0, 0);
}

uint64_t sub_25B0C1464()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_25B0E3C90();
  v7 = sub_25B0C2404(&qword_27FA32700, MEMORY[0x277D85928]);
  sub_25B0E3E90();
  sub_25B0C2404(&qword_27FA32708, MEMORY[0x277D858F8]);
  sub_25B0E3CA0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_25B0C15F4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_25B0C15F4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B0C17B0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_25B0C17B0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

double sub_25B0C1870(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 265) = 0u;
  return result;
}

unint64_t sub_25B0C18A4()
{
  result = qword_27FA32788;
  if (!qword_27FA32788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C1930();
    sub_25B0C1B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32788);
  }

  return result;
}

unint64_t sub_25B0C1930()
{
  result = qword_27FA32790;
  if (!qword_27FA32790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32798, &qword_25B0EA288);
    sub_25B0C19E8();
    sub_25B058150(&qword_27FA327D0, &qword_27FA327D8, &qword_25B0EA2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32790);
  }

  return result;
}

unint64_t sub_25B0C19E8()
{
  result = qword_27FA327A0;
  if (!qword_27FA327A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327A8, &qword_25B0EA290);
    sub_25B0C1AA0();
    sub_25B058150(&qword_27FA327C0, &qword_27FA327C8, &qword_25B0EA2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327A0);
  }

  return result;
}

unint64_t sub_25B0C1AA0()
{
  result = qword_27FA327B0;
  if (!qword_27FA327B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327B8, &qword_25B0EA298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327B0);
  }

  return result;
}

unint64_t sub_25B0C1B24()
{
  result = qword_27FA327E0;
  if (!qword_27FA327E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327E0);
  }

  return result;
}

unint64_t sub_25B0C1BA8()
{
  result = qword_27FA327F0;
  if (!qword_27FA327F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327F8, &qword_25B0EA2B8);
    sub_25B0C1C60();
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327F0);
  }

  return result;
}

unint64_t sub_25B0C1C60()
{
  result = qword_27FA32800;
  if (!qword_27FA32800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32808, &qword_25B0EA2C0);
    sub_25B058150(&qword_27FA32810, &qword_27FA32818, &qword_25B0EA2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32800);
  }

  return result;
}

unint64_t sub_25B0C1D18()
{
  result = qword_27FA32820;
  if (!qword_27FA32820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32730, &qword_25B0EA210);
    sub_25B0C1DD0();
    sub_25B058150(&qword_27FA327C0, &qword_27FA327C8, &qword_25B0EA2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32820);
  }

  return result;
}

unint64_t sub_25B0C1DD0()
{
  result = qword_27FA32828;
  if (!qword_27FA32828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32768, &qword_25B0EA278);
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0);
    sub_25B058150(&qword_27FA32830, &qword_27FA32838, &qword_25B0EA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32828);
  }

  return result;
}

double sub_25B0C1EB4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25B0C1EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B0E2DF0();
  *a1 = result;
  return result;
}

uint64_t sub_25B0C1F14(uint64_t *a1)
{
  v1 = *a1;

  return sub_25B0E2E00();
}

uint64_t sub_25B0C1F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C1FA8(uint64_t a1)
{
  v2 = type metadata accessor for FacePlacement.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0C2004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C206C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B0C20F0()
{
  result = qword_27FA32860;
  if (!qword_27FA32860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326F0, &qword_25B0EA1C8);
    sub_25B0C21AC();
    sub_25B0C2404(&qword_27FA30DB8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32860);
  }

  return result;
}

unint64_t sub_25B0C21AC()
{
  result = qword_27FA32868;
  if (!qword_27FA32868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326E8, &qword_25B0EA1B0);
    sub_25B0C2268();
    sub_25B0C2404(&qword_27FA30DB8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32868);
  }

  return result;
}

unint64_t sub_25B0C2268()
{
  result = qword_27FA32870;
  if (!qword_27FA32870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326E0, &qword_25B0EA198);
    sub_25B0C2320();
    sub_25B058150(&qword_27FA328A0, &qword_27FA328A8, &qword_25B0EA378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32870);
  }

  return result;
}

unint64_t sub_25B0C2320()
{
  result = qword_27FA32878;
  if (!qword_27FA32878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326D0, &qword_25B0EA188);
    sub_25B058150(&qword_27FA32880, &qword_27FA32888, &qword_25B0EA368);
    sub_25B058150(&qword_27FA32890, &qword_27FA32898, &qword_25B0EA370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32878);
  }

  return result;
}

uint64_t sub_25B0C2404(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B0C2478@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B0E2FA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E2FB0();
  if (sub_25B0E2FC0())
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  (*(v3 + 32))(a1, v6, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328B0, &qword_25B0EA3D0);
  *(a1 + *(result + 36)) = v7;
  return result;
}

unint64_t sub_25B0C258C()
{
  result = qword_27FA328B8;
  if (!qword_27FA328B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA328B0, &qword_25B0EA3D0);
    sub_25B0C2618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA328B8);
  }

  return result;
}

unint64_t sub_25B0C2618()
{
  result = qword_27FA328C0;
  if (!qword_27FA328C0)
  {
    sub_25B0E2FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA328C0);
  }

  return result;
}

uint64_t type metadata accessor for SingleFaceRow()
{
  result = qword_27FA328C8;
  if (!qword_27FA328C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0C26E4()
{
  sub_25B0E2750();
  if (v0 <= 0x3F)
  {
    sub_25B0B7BB0(319, &qword_27FA328D8);
    if (v1 <= 0x3F)
    {
      sub_25B0B7BB0(319, &qword_27FA32360);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25B0C27F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328E8, &qword_25B0EA440);
  v3 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v105 = &v102 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328F0, &qword_25B0EA448);
  v114 = *(v116 - 8);
  v5 = *(v114 + 64);
  v6 = MEMORY[0x28223BE20](v116);
  v104 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328F8, &qword_25B0EA450);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v117 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v102 - v13;
  v14 = type metadata accessor for FacePlacement.Location(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B0E2750();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FaceButton();
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32900, &qword_25B0EA458);
  v27 = *(*(v110 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v110);
  v113 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v109 = &v102 - v31;
  MEMORY[0x28223BE20](v30);
  v111 = &v102 - v32;
  sub_25B0E3900();
  v112 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = type metadata accessor for SingleFaceRow();
  (*(v19 + 16))(v22, &a1[v33[6]], v18);
  v34 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25B0E7720;
  *(v35 + 32) = *(a1 + 9);
  v36 = &v17[*(v14 + 20)];
  MEMORY[0x25F85F060]();
  *v17 = v34;
  v37 = v33[9];
  v38 = &a1[v33[8]];
  v39 = *v38;
  LODWORD(v38) = v38[8];
  v40 = (v38 << 31) >> 31;
  if (v38)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39;
  }

  v42 = &a1[v37];
  v106 = *&a1[v37];
  v43 = v18;
  v44 = *&a1[v37 + 8];
  v45 = v22;
  v46 = a1[v33[10]];
  v108 = *&a1[v33[11]];
  v47 = v19;
  v48 = v42[16];
  v107 = a1[v33[12]];
  (*(v47 + 32))(v26, v45, v43);
  sub_25B0C3298(v17, &v26[v23[5]], type metadata accessor for FacePlacement.Location);
  v49 = &v26[v23[6]];
  *v49 = v41;
  *(v49 + 1) = 0;
  v49[16] = v40;
  v50 = &v26[v23[7]];
  *v50 = v106;
  *(v50 + 1) = v44;
  v50[16] = v48;
  v26[v23[8]] = v46;
  v26[v23[9]] = 0;
  v51 = &v26[v23[10]];
  *v51 = 0;
  *(v51 + 1) = 0;
  *&v26[v23[11]] = v108;
  v26[v23[12]] = v107;
  v26[v23[13]] = 0;
  v52 = &a1[v33[7]];
  v53 = *v52;
  v54 = *(v52 + 8);
  sub_25B0E3590();
  sub_25B0E2B50();
  v55 = v26;
  v56 = v109;
  sub_25B0C3298(v55, v109, type metadata accessor for FaceButton);
  v57 = (v56 + *(v110 + 36));
  v58 = v124;
  *v57 = v123;
  v57[1] = v58;
  v57[2] = v125;
  v59 = v111;
  sub_25B0745E4(v56, v111, &qword_27FA32900, &qword_25B0EA458);
  if (a1[v33[13]] == 1 && (v60 = *(a1 + 4)) != 0)
  {
    *&v119 = *(a1 + 3);
    *(&v119 + 1) = v60;
    sub_25B04C9BC();

    v61 = sub_25B0E3210();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_25B0E3590();
    sub_25B0E2B50();
    v68 = v65 & 1;
    LOBYTE(v122[0]) = v65 & 1;
    KeyPath = swift_getKeyPath();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32910, &qword_25B0EA498);
    v71 = v105;
    v72 = &v105[*(v70 + 36)];
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32918, &qword_25B0EA4A0) + 28);
    v74 = *MEMORY[0x277CE0B28];
    v75 = sub_25B0E31D0();
    (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
    *v72 = swift_getKeyPath();
    *v71 = v61;
    *(v71 + 8) = v63;
    *(v71 + 16) = v68;
    *(v71 + 17) = v122[0];
    *(v71 + 20) = *(v122 + 3);
    *(v71 + 24) = v67;
    v76 = v120;
    *(v71 + 32) = v119;
    *(v71 + 48) = v76;
    *(v71 + 64) = v121;
    *(v71 + 80) = KeyPath;
    *(v71 + 88) = 0;
    v77 = sub_25B0E3170();
    v78 = swift_getKeyPath();
    v79 = (v71 + *(v102 + 36));
    *v79 = v78;
    v79[1] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32920, &qword_25B0EA508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25B0E7730;
    LOBYTE(v63) = sub_25B0E3120();
    *(inited + 32) = v63;
    v81 = sub_25B0E3130();
    *(inited + 33) = v81;
    v82 = sub_25B0E3150();
    sub_25B0E3150();
    if (sub_25B0E3150() != v63)
    {
      v82 = sub_25B0E3150();
    }

    sub_25B0E3150();
    if (sub_25B0E3150() != v81)
    {
      v82 = sub_25B0E3150();
    }

    v83 = v115;
    sub_25B0E2A00();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v104;
    sub_25B0745E4(v71, v104, &qword_27FA328E8, &qword_25B0EA440);
    v93 = v116;
    v94 = v92 + *(v116 + 36);
    *v94 = v82;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    v95 = v92;
    v96 = v103;
    sub_25B0745E4(v95, v103, &qword_27FA328F0, &qword_25B0EA448);
    sub_25B0745E4(v96, v83, &qword_27FA328F0, &qword_25B0EA448);
    (*(v114 + 56))(v83, 0, 1, v93);
  }

  else
  {
    v83 = v115;
    (*(v114 + 56))(v115, 1, 1, v116);
  }

  v97 = v113;
  sub_25B0B00E0(v59, v113, &qword_27FA32900, &qword_25B0EA458);
  v98 = v117;
  sub_25B0B00E0(v83, v117, &qword_27FA328F8, &qword_25B0EA450);
  v99 = v118;
  sub_25B0B00E0(v97, v118, &qword_27FA32900, &qword_25B0EA458);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32908, &qword_25B0EA460);
  sub_25B0B00E0(v98, v99 + *(v100 + 48), &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v83, &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v59, &qword_27FA32900, &qword_25B0EA458);
  sub_25B058448(v98, &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v97, &qword_27FA32900, &qword_25B0EA458);
}