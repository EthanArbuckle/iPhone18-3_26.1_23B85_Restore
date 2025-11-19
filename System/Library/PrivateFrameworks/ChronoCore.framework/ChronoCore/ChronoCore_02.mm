uint64_t sub_224A5DE40()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A5DF04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_224DAED88();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_224A3CE84(&qword_281351A10, MEMORY[0x277CC95F0]);
      v23 = sub_224DAEDD8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_224A5E1E4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_224A5E1E4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE02F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CC95F0], &qword_27D6F3540, &unk_224DB3AE0);
      goto LABEL_12;
    }

    sub_224AE74A8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0]);
  v15 = sub_224DAED88();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_224A3CE84(&qword_281351A10, MEMORY[0x277CC95F0]);
      v23 = sub_224DAEDD8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void *sub_224A5E4AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_224DAF8E8();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

unint64_t sub_224A5E6E4(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_224A5C3D0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_224B138AC(v14, a3 & 1);
      v18 = *v4;
      result = sub_224A5C3D0(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_224B27BD8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_224A5E830(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_224DAF858();

    if (v17)
    {

      sub_224A3B79C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_224DAF838();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_224ADD644(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_224A5B698(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_224AE1A40(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_224A3B79C(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_224DAF698();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_224DAF6A8();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_224A5EAC8(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

void sub_224A5EAC8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_224A5B698(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_224A4A5EC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_224A3DCC0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_224DAF698();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_224A3B79C(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_224DAF6A8();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224A5EC60(uint64_t a1)
{
  v34 = a1;
  v1 = sub_224DAE918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-v7];
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = v9;
    v33 = v6;
    (*(v10 + 16))(v13, result + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v9);
    v31 = *(v2 + 16);
    v31(v8, v34, v1);
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v18 = 136446210;
      sub_224A43A4C(&qword_281350C28, MEMORY[0x277CE3D70]);
      v28 = v17;
      v19 = sub_224DAFD28();
      v21 = v20;
      (*(v2 + 8))(v8, v1);
      v22 = sub_224A33F74(v19, v21, &v35);

      v23 = v29;
      *(v29 + 1) = v22;
      v24 = v23;
      _os_log_impl(&dword_224A2F000, v16, v28, "Protection Type changed to %{public}s", v23, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }

    (*(v10 + 8))(v13, v32);
    v26 = *(v15 + 336);
    v31(v33, v34, v1);

    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224A5F008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v94 = a5;
  v93 = a4;
  v8 = sub_224DAE6E8();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB98();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  v92 = *(v14 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v14);
  v91 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DABE18();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v88 = &v75 - v22;
  v96 = sub_224DAB258();
  v23 = *(v96 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v96);
  v81 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v29 = *(a2 + 16);
  if (v29)
  {
    v76 = a3;
    v77 = a1;
    v89 = &v75 - v27;
    v90 = v14;
    v78 = v18;
    v79 = v17;
    v30 = sub_224A61A78(v29, 0);
    v31 = *(sub_224DAC268() - 8);
    v32 = sub_224A61B9C(&v97, (v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80))), v29, a2);

    result = sub_224A3B7E4();
    if (v32 != v29)
    {
      __break(1u);
      return result;
    }

    v17 = v79;
    v18 = v78;
    v28 = v89;
    v14 = v90;
    a1 = v77;
    a3 = v76;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v34 = v95;
  v35 = sub_224A5FA18(a1, v30, a3);
  v37 = v92;
  if (v35)
  {
    v87 = v36;

    (*(v23 + 16))(v28, v34 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v96);
    v38 = v88;
    (*(v18 + 16))(v88, a1, v17);
    (*(v37 + 16))(v91, a3, v14);
    v39 = v28;
    v40 = sub_224DAB228();
    v41 = sub_224DAF268();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v90 = v14;
      v43 = v18;
      v44 = v42;
      v45 = v37;
      v95 = swift_slowAlloc();
      v97 = v95;
      *v44 = 136446466;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
      v89 = v39;
      v46 = sub_224DAFD28();
      v86 = v23;
      v48 = v47;
      (*(v43 + 8))(v38, v17);
      v49 = sub_224A33F74(v46, v48, &v97);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      v50 = v91;
      v51 = v82;
      sub_224DACC68();
      sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v52 = v84;
      v53 = sub_224DAFD28();
      v55 = v54;
      (*(v83 + 8))(v51, v52);
      (*(v45 + 8))(v50, v90);
      v56 = sub_224A33F74(v53, v55, &v97);

      *(v44 + 14) = v56;
      _os_log_impl(&dword_224A2F000, v40, v41, "%{public}s Fetched from cache for %{public}s", v44, 0x16u);
      v57 = v95;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v57, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);

      (*(v86 + 8))(v89, v96);
    }

    else
    {

      (*(v37 + 8))(v91, v14);
      (*(v18 + 8))(v38, v17);
      (*(v23 + 8))(v39, v96);
    }

    v93(v87, 0);
  }

  else
  {

    v58 = sub_224DABDB8();
    v59 = [v58 isRemote];

    if ((v59 & 1) == 0)
    {
      v73 = (*(*v95 + 184))(a1, v30, a3, v93, v94);

      return v73;
    }

    v60 = v81;
    (*(v23 + 16))(v81, v95 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v96);
    v61 = v80;
    (*(v18 + 16))(v80, a1, v17);
    v62 = sub_224DAB228();
    v63 = sub_224DAF268();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v17;
      v65 = v23;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v97 = v67;
      *v66 = 136446210;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
      v68 = sub_224DAFD28();
      v69 = v61;
      v71 = v70;
      (*(v18 + 8))(v69, v64);
      v72 = sub_224A33F74(v68, v71, &v97);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_224A2F000, v62, v63, "%{public}s Failed to fetch from cache", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x22AA5EED0](v67, -1, -1);
      MEMORY[0x22AA5EED0](v66, -1, -1);

      (*(v65 + 8))(v60, v96);
    }

    else
    {

      (*(v18 + 8))(v61, v17);
      (*(v23 + 8))(v60, v96);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v86 + 104))(v85, *MEMORY[0x277CE3BF0], v87);
    v74 = sub_224DAF638();
    v93(v74, 1);
  }

  return 0;
}

BOOL sub_224A5FA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = a3;
  v7 = sub_224DACB98();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACC88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DABE18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB258();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  LOBYTE(v88) = 0;
  v82 = v27;
  v83 = v26;
  v28 = *(v27 + 16);
  v74 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v75 = v28;
  v76 = v27 + 16;
  (v28)(&v69 - v24, &v4[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger]);
  v29 = *(v16 + 16);
  v84 = a1;
  v29(v19, a1, v15);
  v78 = v11;
  v79 = v14;
  v30 = *(v11 + 16);
  v31 = v85;
  v81 = v10;
  v30(v14);

  v80 = v25;
  v32 = sub_224DAB228();
  v33 = sub_224DAF268();
  v34 = a2;

  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v87 = v36;
    *v35 = 136446722;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v69 = v32;
    v37 = sub_224DAFD28();
    v70 = v34;
    v39 = v38;
    (*(v16 + 8))(v19, v15);
    v40 = sub_224A33F74(v37, v39, &v87);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2082;
    v41 = v71;
    v42 = v33;
    v43 = v79;
    sub_224DACC68();
    sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v44 = v73;
    v45 = sub_224DAFD28();
    v47 = v46;
    (*(v72 + 8))(v41, v44);
    (*(v78 + 8))(v43, v81);
    v48 = sub_224A33F74(v45, v47, &v87);

    *(v35 + 14) = v48;
    *(v35 + 22) = 2082;
    v49 = v70;
    v50 = sub_224DAC268();
    v34 = v49;
    v51 = MEMORY[0x22AA5D380](v49, v50);
    v53 = sub_224A33F74(v51, v52, &v87);

    *(v35 + 24) = v53;
    v54 = v69;
    _os_log_impl(&dword_224A2F000, v69, v42, "%{public}s Trying cache for %{public}s of %{public}s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v36, -1, -1);
    v31 = v85;
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  else
  {

    (*(v78 + 8))(v79, v81);
    (*(v16 + 8))(v19, v15);
  }

  v55 = v83;
  v56 = *(v82 + 8);
  v56(v80, v83);
  v87 = sub_224A60D5C(MEMORY[0x277D84F90]);
  if (sub_224A601D4(v84, v31))
  {
    v57 = *(v34 + 16);
    if (v57)
    {
      v58 = *(sub_224DAC268() - 8);
      v59 = (v34 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
      v60 = *(v58 + 72);
      v61 = v57 - 1;
      do
      {
        v62 = v61;
        v86 = 0;
        v63 = MEMORY[0x22AA5E4C0]();
        sub_224A60F4C(v4, v59, &v87, &v88, &v86);
        objc_autoreleasePoolPop(v63);
        if (v86)
        {
          break;
        }

        v61 = v62 - 1;
        v59 += v60;
      }

      while (v62);
    }
  }

  else
  {
    LOBYTE(v88) = 1;
    v64 = v77;
    v75(v77, &v4[v74], v55);
    v65 = sub_224DAB228();
    v66 = sub_224DAF268();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_224A2F000, v65, v66, "Cache should not be consulted", v67, 2u);
      MEMORY[0x22AA5EED0](v67, -1, -1);
    }

    v56(v64, v55);
  }

  return (v88 & 1) == 0;
}

uint64_t sub_224A60144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A6018C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A601D4(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v112 = sub_224DACC88();
  v106 = *(v112 - 8);
  v3 = *(v106 + 64);
  v4 = MEMORY[0x28223BE20](v112);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v113 = &v99 - v6;
  v7 = sub_224DABE18();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v100 = &v99 - v12;
  MEMORY[0x28223BE20](v11);
  v105 = &v99 - v13;
  v14 = sub_224DAB258();
  v114 = *(v14 - 8);
  v115 = v14;
  v15 = *(v114 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v103 = (&v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v99 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v99 - v20;
  v22 = sub_224DACB98();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v99 - v28;
  sub_224DACC68();
  v30 = v23[13];
  v30(v27, *MEMORY[0x277CF9BF0], v22);
  v31 = sub_224DACB88();
  v32 = v23[1];
  v32(v27, v22);
  v107 = v32;
  v32(v29, v22);
  if (v31 & 1) != 0 || (sub_224DACC68(), v30(v27, *MEMORY[0x277CF9B60], v22), v33 = sub_224DACB88(), v34 = v107, v107(v27, v22), v34(v29, v22), (v33))
  {
    v35 = v114;
    v36 = v21;
    (*(v114 + 16))(v21, &v108[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v115);
    v37 = v110;
    v38 = v105;
    v39 = v111;
    (*(v110 + 16))(v105, v109, v111);
    v40 = v106;
    v41 = a2;
    v42 = v112;
    (*(v106 + 16))(v113, v41, v112);
    v109 = v36;
    v43 = sub_224DAB228();
    LODWORD(v108) = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v108))
    {
      v44 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v116 = v104;
      *v44 = 136446466;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
      v103 = v43;
      v45 = sub_224DAFD28();
      v47 = v46;
      (*(v37 + 8))(v38, v39);
      v48 = sub_224A33F74(v45, v47, &v116);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = v113;
      sub_224DACC68();
      sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v50 = sub_224DAFD28();
      v52 = v51;
      v107(v29, v22);
      (*(v40 + 8))(v49, v112);
      v53 = sub_224A33F74(v50, v52, &v116);

      *(v44 + 14) = v53;
      v54 = v103;
      _os_log_impl(&dword_224A2F000, v103, v108, "%{public}s Checking cache because config reason is %{public}s", v44, 0x16u);
      v55 = v104;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);

      (*(v114 + 8))(v109, v115);
    }

    else
    {

      (*(v40 + 8))(v113, v42);
      (*(v37 + 8))(v38, v39);
      (*(v35 + 8))(v109, v115);
    }

    return 1;
  }

  v56 = v109;
  v57 = sub_224DABDB8();
  v58 = [v57 isRemote];

  v59 = *(v114 + 16);
  v60 = v110;
  v61 = (v110 + 16);
  if (v58)
  {
    v62 = v101;
    v63 = v115;
    (v59)(v101, &v108[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v115);
    v64 = v100;
    v65 = v111;
    (*v61)(v100, v56, v111);
    v66 = sub_224DAB228();
    v67 = sub_224DAF2A8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v64;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v116 = v70;
      *v69 = 136446210;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
      v71 = sub_224DAFD28();
      v72 = v60;
      v74 = v73;
      (*(v72 + 8))(v68, v65);
      v75 = sub_224A33F74(v71, v74, &v116);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_224A2F000, v66, v67, "%{public}s Checking cache because extension is remote", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      MEMORY[0x22AA5EED0](v69, -1, -1);
    }

    else
    {

      (*(v60 + 8))(v64, v65);
    }

    (*(v114 + 8))(v62, v63);
    return 1;
  }

  v76 = v103;
  v59();
  v77 = v111;
  (*v61)(v104, v56, v111);
  v78 = v106;
  v79 = v102;
  v80 = a2;
  v81 = v112;
  (*(v106 + 16))(v102, v80, v112);
  v82 = sub_224DAB228();
  LODWORD(v113) = sub_224DAF2A8();
  if (os_log_type_enabled(v82, v113))
  {
    v83 = swift_slowAlloc();
    v84 = v77;
    v109 = swift_slowAlloc();
    v116 = v109;
    *v83 = 136446466;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v85 = v104;
    v86 = sub_224DAFD28();
    v108 = v82;
    v87 = v86;
    v89 = v88;
    (*(v60 + 8))(v85, v84);
    v90 = sub_224A33F74(v87, v89, &v116);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2082;
    v91 = v102;
    sub_224DACC68();
    sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v92 = sub_224DAFD28();
    v94 = v93;
    v107(v29, v22);
    (*(v78 + 8))(v91, v112);
    v95 = sub_224A33F74(v92, v94, &v116);

    *(v83 + 14) = v95;
    v96 = v108;
    _os_log_impl(&dword_224A2F000, v108, v113, "%{public}s Not checking cache (%{public}s)", v83, 0x16u);
    v97 = v109;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v97, -1, -1);
    MEMORY[0x22AA5EED0](v83, -1, -1);

    (*(v114 + 8))(v103, v115);
  }

  else
  {

    (*(v78 + 8))(v79, v81);
    (*(v60 + 8))(v104, v77);
    (*(v114 + 8))(v76, v115);
  }

  return 0;
}

unint64_t sub_224A60D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E8, &unk_224DC3CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70F0, &qword_224DB4968);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70E8, &unk_224DC3CD0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_224A36F98(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_224A60F4C(void *a1, char *a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  v109 = a4;
  v108 = a5;
  v103 = a3;
  v7 = sub_224DAC268();
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v107 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v98 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v106 = (&v98 - v15);
  v16 = sub_224DAB258();
  v113 = *(v16 - 8);
  v17 = *(v113 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v118 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v98 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v98 - v23;
  v25 = sub_224DAE6C8();
  v105 = *(v25 - 8);
  v26 = *(v105 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[9];
  v29 = a1[10];
  swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v110;
  sub_224DAC418();
  if (!v32)
  {
    v107 = v28;
    v108 = v25;
    v100 = v24;
    v99 = v22;
    v110 = 0;
    v52 = a1[8];
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    v118 = a2;
    v53 = sub_224DAC248();
    v54 = [v53 extensionIdentity];

    sub_224DAC6D8();
    v55 = a1;
    if (v115)
    {
      v98 = a1;
      sub_224A36F98(&v114, v116);
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      v56 = v107;
      sub_224DAEAA8();
      v57 = sub_224DAE6B8();
      v59 = v58;
      (*(v105 + 8))(v56, v108);
      __swift_project_boxed_opaque_existential_1(v116, v116[3]);
      if (v57 == sub_224DAE398() && v59 == v60)
      {

        v61 = v16;
        v62 = v112;
        v63 = v100;
        v64 = v106;
        v55 = v98;
LABEL_12:
        v101 = v61;
        v68 = v113;
        (*(v113 + 16))(v63, v55 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v61);
        v69 = v111;
        v70 = *(v111 + 16);
        v70(v64, v118, v62);
        v71 = sub_224DAB228();
        v72 = v62;
        v73 = sub_224DAF268();
        if (os_log_type_enabled(v71, v73))
        {
          v74 = swift_slowAlloc();
          v112 = v70;
          v75 = v74;
          v109 = swift_slowAlloc();
          *&v114 = v109;
          *v75 = 136446210;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
          v76 = sub_224DAFD28();
          v77 = v64;
          v78 = v76;
          v80 = v79;
          (*(v69 + 8))(v77, v72);
          v81 = sub_224A33F74(v78, v80, &v114);

          *(v75 + 4) = v81;
          _os_log_impl(&dword_224A2F000, v71, v73, "%{public}s Cache hit", v75, 0xCu);
          v82 = v109;
          __swift_destroy_boxed_opaque_existential_1(v109);
          MEMORY[0x22AA5EED0](v82, -1, -1);
          v83 = v75;
          v70 = v112;
          MEMORY[0x22AA5EED0](v83, -1, -1);

          (*(v68 + 8))(v100, v101);
        }

        else
        {

          (*(v69 + 8))(v64, v72);
          (*(v68 + 8))(v63, v101);
        }

        v84 = v102;
        v70(v102, v118, v72);
        sub_224A3317C(v117, &v114);
        sub_224A61F30(&v114, v84);
        __swift_destroy_boxed_opaque_existential_1(v116);
        return __swift_destroy_boxed_opaque_existential_1(v117);
      }

      v67 = sub_224DAFD88();

      v61 = v16;
      v62 = v112;
      v63 = v100;
      v64 = v106;
      v55 = v98;
      if (v67)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(v116);
      v66 = v113;
    }

    else
    {
      sub_224A3311C(&v114, &unk_27D6F4700, &unk_224DB3A10);
      v61 = v16;
      v62 = v112;
      v66 = v113;
    }

    v85 = v99;
    (*(v66 + 16))(v99, v55 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v61);
    v86 = v111;
    v87 = v104;
    (*(v111 + 16))(v104, v118, v62);
    v88 = sub_224DAB228();
    v89 = sub_224DAF2A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v101 = v61;
      v92 = v91;
      v116[0] = v91;
      *v90 = 136446210;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
      v93 = sub_224DAFD28();
      v94 = v62;
      v96 = v95;
      (*(v86 + 8))(v87, v94);
      v97 = sub_224A33F74(v93, v96, v116);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_224A2F000, v88, v89, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x22AA5EED0](v92, -1, -1);
      MEMORY[0x22AA5EED0](v90, -1, -1);

      (*(v66 + 8))(v99, v101);
    }

    else
    {

      (*(v86 + 8))(v87, v62);
      (*(v66 + 8))(v85, v61);
    }

    *v109 = 1;
    return __swift_destroy_boxed_opaque_existential_1(v117);
  }

  v33 = v113;
  (*(v113 + 16))(v118, a1 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v16);
  v34 = v111;
  v35 = v112;
  v36 = v107;
  (*(v111 + 16))(v107, a2, v112);
  v37 = v32;
  v38 = sub_224DAB228();
  v39 = v16;
  v40 = sub_224DAF2A8();

  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v101 = v39;
    v42 = v41;
    v106 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v117[0] = v110;
    *v42 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
    v43 = sub_224DAFD28();
    v45 = v44;
    (*(v34 + 8))(v36, v35);
    v46 = sub_224A33F74(v43, v45, v117);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2114;
    v47 = v32;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v48;
    v49 = v106;
    *v106 = v48;
    _os_log_impl(&dword_224A2F000, v38, v40, "%{public}s Cache miss: %{public}@", v42, 0x16u);
    sub_224A3311C(v49, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v49, -1, -1);
    v50 = v110;
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x22AA5EED0](v50, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);

    result = (*(v33 + 8))(v118, v101);
  }

  else
  {

    (*(v34 + 8))(v36, v35);
    result = (*(v33 + 8))(v118, v39);
  }

  v65 = v108;
  *v109 = 1;
  *v65 = 1;
  return result;
}

size_t sub_224A61AA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224A61BB4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_224A61E5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_224DAC268();
  v5 = MEMORY[0x277CF9978];
  sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978]);
  v6 = sub_224DAED88();
  return sub_224A43000(a1, v6, MEMORY[0x277CF9978], &qword_281350E48, v5, MEMORY[0x277CF9990]);
}

uint64_t sub_224A61F30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_224A36F98(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_224B230AC(v10, a2, isUniquelyReferenced_nonNull_native, &qword_27D6F70F0, &qword_224DB4968, sub_224A39D14, sub_224A39D14);
    v6 = sub_224DAC268();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_224A3311C(a1, &unk_27D6F3CB0, &unk_224DB7860);
    sub_224B0E3B8(a2, sub_224A39D14, &qword_27D6F70F0, &qword_224DB4968, sub_224A39D14, v10);
    v8 = sub_224DAC268();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_224A3311C(v10, &unk_27D6F3CB0, &unk_224DB7860);
  }

  return result;
}

uint64_t sub_224A620C0@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v251 = a3;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v258 = *(v230 - 8);
  v5 = *(v258 + 8);
  MEMORY[0x28223BE20](v230);
  v229 = v195 - v6;
  v228 = sub_224DAC268();
  v247 = *(v228 - 8);
  v7 = *(v247 + 64);
  v8 = MEMORY[0x28223BE20](v228);
  v227 = v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v226 = v195 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v208 = v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v220 = v195 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v219 = v195 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v238 = v195 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v239 = v195 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v225 = v195 - v24;
  MEMORY[0x28223BE20](v23);
  v236 = v195 - v25;
  v254 = sub_224DA9878();
  v237 = *(v254 - 8);
  v26 = *(v237 + 64);
  v27 = MEMORY[0x28223BE20](v254);
  v207 = v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v195 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v221 = v195 - v33;
  MEMORY[0x28223BE20](v32);
  v249 = v195 - v34;
  v217 = sub_224DACB08();
  v216 = *(v217 - 8);
  v35 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v218 = v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_224DACB28();
  v213 = *(v214 - 8);
  v37 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v215 = v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_224DAE4F8();
  v242 = *(v246 - 8);
  v39 = *(v242 + 8);
  MEMORY[0x28223BE20](v246);
  v245 = v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_224DAB728();
  v41 = *(v244 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v244);
  v243 = v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_224DABE18();
  v205 = *(v206 - 8);
  v44 = *(v205 + 64);
  v45 = MEMORY[0x28223BE20](v206);
  v201 = v195 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v203 = v195 - v48;
  MEMORY[0x28223BE20](v47);
  v202 = v195 - v49;
  v257 = sub_224DAE928();
  v50 = *(v257 - 1);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v257);
  v256 = (v195 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_224DACB98();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v211 = v195 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = v195 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v223 = v195 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v210 = v195 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = v195 - v66;
  v68 = sub_224DACC88();
  v222 = *(v68 - 8);
  v69 = *(v222 + 56);
  v250 = v67;
  v248 = v68;
  v241 = v222 + 56;
  v240 = v69;
  (v69)(v67, 1, 1);
  sub_224DACC68();
  v70 = (*(v54 + 88))(v59, v53);
  LODWORD(v67) = *MEMORY[0x277CF9BF0];
  v209 = v54;
  v71 = *(v54 + 8);
  v212 = v53;
  v71(v59, v53);
  v255 = a2;
  if (v70 != v67)
  {
    goto LABEL_35;
  }

  v204 = a1;
  v235 = v31;
  v72 = a2 + 64;
  v73 = 1 << *(a2 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(a2 + 64);
  v76 = (v73 + 63) >> 6;
  v233 = *MEMORY[0x277CE3D90];
  v252 = (v50 + 8);
  v253 = (v50 + 104);
  v232 = (v41 + 8);
  v231 = (v242 + 8);
  v224 = *MEMORY[0x277CE3D98];
  v199 = (v247 + 8);
  v198 = (v258 + 8);
  v197 = (v237 + 48);
  v195[0] = v237 + 32;
  v200 = (v237 + 8);

  v77 = 0;
  if (!v75)
  {
LABEL_7:
    while (1)
    {
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v78 >= v76)
      {

        v31 = v235;
        goto LABEL_35;
      }

      v75 = *(v72 + 8 * v78);
      ++v77;
      if (v75)
      {
        v77 = v78;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_75;
  }

  while (1)
  {
LABEL_11:
    while (1)
    {
      v79 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v80 = *(*(a2 + 56) + ((v77 << 9) | (8 * v79)));
      sub_224DABE68();
      if (v260)
      {
        break;
      }

      sub_224A3311C(&v259, &unk_27D6F3CB0, &unk_224DB7860);
      if (!v75)
      {
        goto LABEL_7;
      }
    }

    v258 = v80;
    sub_224A39D14(&v259, &v261);
    __swift_project_boxed_opaque_existential_1(&v261, v262);
    v81 = sub_224DAEA98();
    v82 = *v253;
    v84 = v256;
    v83 = v257;
    (*v253)(v256, v233, v257);
    v85 = sub_224CD6930(v84, v81);

    v59 = *v252;
    (*v252)(v84, v83);
    if (v85)
    {
      v158 = v205;
      v159 = v202;
      v160 = v206;
      (*(v205 + 16))(v202, v204, v206);
      v161 = sub_224DAB228();
      v162 = sub_224DAF2A8();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v259 = v164;
        *v163 = 136446210;
        sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0]);
        v165 = sub_224DAFD28();
        v167 = v166;
        (*(v158 + 8))(v159, v160);
        v168 = sub_224A33F74(v165, v167, &v259);

        *(v163 + 4) = v168;
        _os_log_impl(&dword_224A2F000, v161, v162, "%{public}s Timeline will reload since it is stale", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v164);
        MEMORY[0x22AA5EED0](v164, -1, -1);
        MEMORY[0x22AA5EED0](v163, -1, -1);
      }

      else
      {

        (*(v158 + 8))(v159, v160);
      }

      v31 = v235;
      v181 = v250;
      goto LABEL_70;
    }

    v242 = v82;
    sub_224DABE38();
    __swift_project_boxed_opaque_existential_1(&v259, v260);
    v86 = v243;
    sub_224DAD168();
    v247 = sub_224DAB668();
    v88 = v87;
    (*v232)(v86, v244);
    __swift_destroy_boxed_opaque_existential_1(&v259);
    __swift_project_boxed_opaque_existential_1(&v261, v262);
    v89 = v245;
    sub_224DAEA78();
    swift_getKeyPath();
    v90 = sub_224DAE4A8();

    (*v231)(v89, v246);
    if (v90)
    {
      if (v90[2])
      {
        v91 = v90[4];
        v92 = v90[5];
        sub_224A77FD0(v91, v92);
      }

      else
      {
        v91 = 0;
        v92 = 0xF000000000000000;
      }

      v93 = v88;
    }

    else
    {
      v91 = 0;
      v92 = 0xF000000000000000;
      v93 = v88;
    }

    v94 = v247;
    if (v93 >> 60 == 15)
    {
      if (v92 >> 60 != 15)
      {
        goto LABEL_63;
      }

      v95 = v247;
      v96 = v93;
      goto LABEL_25;
    }

    if (v92 >> 60 == 15)
    {
LABEL_63:
      sub_224A77FD0(v247, v93);
      sub_224AECAB0(v91, v92);
      sub_224AC1D9C(v94, v93);
      sub_224AC1D9C(v91, v92);
LABEL_64:
      v169 = v205;
      v170 = v203;
      v171 = v206;
      (*(v205 + 16))(v203, v204, v206);
      v172 = sub_224DAB228();
      v173 = sub_224DAF2A8();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        *&v259 = v257;
        *v174 = 136446210;
        sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0]);
        v175 = sub_224DAFD28();
        v176 = v170;
        v178 = v177;
        (*(v169 + 8))(v176, v171);
        v179 = sub_224A33F74(v175, v178, &v259);

        *(v174 + 4) = v179;
        _os_log_impl(&dword_224A2F000, v172, v173, "%{public}s Timeline will reload since its locale token is out of date", v174, 0xCu);
        v180 = v257;
        __swift_destroy_boxed_opaque_existential_1(v257);
        MEMORY[0x22AA5EED0](v180, -1, -1);
        MEMORY[0x22AA5EED0](v174, -1, -1);
        sub_224A78024(v247, v93);
        sub_224AC1D9C(v91, v92);
      }

      else
      {
        sub_224A78024(v94, v93);
        sub_224AC1D9C(v91, v92);

        (*(v169 + 8))(v170, v171);
      }

      v31 = v235;
      v181 = v250;
LABEL_70:
      (*(v213 + 104))(v215, *MEMORY[0x277CF9B50], v214);
      (*(v216 + 104))(v218, *MEMORY[0x277CF9B40], v217);
      (*(v209 + 104))(v211, *MEMORY[0x277CF9BE8], v212);
      sub_224DACC48();
      v182 = v210;
      sub_224DACC38();

      goto LABEL_71;
    }

    sub_224A77FD0(v247, v93);
    sub_224A77FD0(v94, v93);
    sub_224AECAB0(v91, v92);
    v97 = sub_224CCC88C(v94, v93, v91, v92);
    sub_224A78024(v94, v93);
    sub_224AC1D9C(v91, v92);
    sub_224AC1D9C(v94, v93);
    if ((v97 & 1) == 0)
    {
      goto LABEL_64;
    }

    sub_224A78024(v94, v93);
    v95 = v91;
    v96 = v92;
LABEL_25:
    sub_224AC1D9C(v95, v96);
    __swift_project_boxed_opaque_existential_1(&v261, v262);
    a1 = sub_224DAEA98();
    v99 = v256;
    v98 = v257;
    (v242)(v256, v224, v257);
    v100 = sub_224CD6930(v99, a1);

    (v59)(v99, v98);
    if ((v100 & 1) == 0)
    {

LABEL_31:
      a2 = v255;
      goto LABEL_32;
    }

    v247 = v76;
    __swift_project_boxed_opaque_existential_1(&v261, v262);
    sub_224DAEA88();
    v196 = v234[10];
    v242 = v234[11];
    v195[1] = __swift_project_boxed_opaque_existential_1(v234 + 7, v196);
    v101 = v226;
    sub_224DABE58();
    v102 = sub_224DAC248();
    v103 = *v199;
    v104 = v228;
    (*v199)(v101, v228);
    v105 = [v102 extensionIdentity];

    v106 = v229;
    sub_224DAF528();

    v107 = v227;
    sub_224DABE58();
    v108 = sub_224DAC248();
    v103(v107, v104);
    v109 = [v108 kind];

    sub_224DAEE18();
    v59 = v236;
    sub_224DAD1A8();

    (*v198)(v106, v230);
    v110 = v225;
    sub_224A3796C(v59, v225, &qword_27D6F32B0, &qword_224DB3EA0);
    a1 = v254;
    if ((*v197)(v110, 1, v254) != 1)
    {
      break;
    }

    sub_224A3311C(v59, &qword_27D6F32B0, &qword_224DB3EA0);
    (*v200)(v249, a1);
    sub_224A3311C(v110, &qword_27D6F32B0, &qword_224DB3EA0);
    a2 = v255;
    v76 = v247;
LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v261);
    if (!v75)
    {
      goto LABEL_7;
    }
  }

  v59 = v221;
  (*v195[0])(v221, v110, a1);
  v111 = sub_224DA9788();
  v76 = v247;
  if ((v111 & 1) == 0)
  {
    v112 = a1;

    a1 = *v200;
    (*v200)(v59, v112);
    sub_224A3311C(v236, &qword_27D6F32B0, &qword_224DB3EA0);
    (a1)(v249, v112);
    goto LABEL_31;
  }

  v76 = v205;
  v75 = v201;
  v72 = v206;
  (*(v205 + 16))(v201, v204, v206);
  a1 = sub_224DAB228();
  v183 = sub_224DAF2A8();
  if (!os_log_type_enabled(a1, v183))
  {
LABEL_75:

    (*(v76 + 8))(v75, v72);
    goto LABEL_76;
  }

  v184 = swift_slowAlloc();
  v185 = swift_slowAlloc();
  *&v259 = v185;
  *v184 = 136446210;
  sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0]);
  v186 = sub_224DAFD28();
  v187 = v75;
  v189 = v188;
  (*(v76 + 8))(v187, v72);
  v190 = sub_224A33F74(v186, v189, &v259);

  *(v184 + 4) = v190;
  _os_log_impl(&dword_224A2F000, a1, v183, "%{public}s Timeline will reload since it was previously removed from the store and its reload date is > current archive creation date.", v184, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v185);
  MEMORY[0x22AA5EED0](v185, -1, -1);
  MEMORY[0x22AA5EED0](v184, -1, -1);

LABEL_76:
  v31 = v235;
  v191 = v249;
  v181 = v250;
  v192 = v236;
  (*(v213 + 104))(v215, *MEMORY[0x277CF9B50], v214);
  (*(v216 + 104))(v218, *MEMORY[0x277CF9B40], v217);
  (*(v209 + 104))(v211, *MEMORY[0x277CF9BE8], v212);
  sub_224DACC48();
  v182 = v210;
  sub_224DACC38();

  v193 = *v200;
  v194 = v254;
  (*v200)(v59, v254);
  sub_224A3311C(v192, &qword_27D6F32B0, &qword_224DB3EA0);
  (v193)(v191, v194);
LABEL_71:
  sub_224A3311C(v181, &qword_27D6F61E0, &unk_224DBE988);
  v240(v182, 0, 1, v248);
  sub_224A64134(v182, v181);
  __swift_destroy_boxed_opaque_existential_1(&v261);
LABEL_35:
  v113 = sub_224DABDB8();
  v114 = &v113[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v115 = *(v114 + 1);

  if (v115)
  {

    sub_224A3311C(v250, &qword_27D6F61E0, &unk_224DBE988);
    return (v240)(v251, 1, 1, v248);
  }

  v117 = v250;
  v118 = v223;
  sub_224A3796C(v250, v223, &qword_27D6F61E0, &unk_224DBE988);
  v119 = (*(v222 + 48))(v118, 1, v248);
  sub_224A3311C(v118, &qword_27D6F61E0, &unk_224DBE988);
  v120 = v251;
  if (v119 != 1)
  {
    return sub_224A64134(v117, v120);
  }

  v121 = (v237 + 56);
  v252 = *(v237 + 56);
  (v252)(v239, 1, 1, v254);
  v122 = v255;
  v123 = v255 + 64;
  v124 = 1 << *(v255 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  v126 = v125 & *(v255 + 64);
  v127 = (v124 + 63) >> 6;
  v258 = (v121 - 1);
  v256 = (v121 - 3);
  v253 = v121;
  v249 = (v121 - 6);

  v128 = 0;
  v235 = v31;
  while (v126)
  {
LABEL_48:
    v131 = __clz(__rbit64(v126));
    v126 &= v126 - 1;
    v132 = *(*(v122 + 56) + ((v128 << 9) | (8 * v131)));
    sub_224DABE68();
    v133 = v262;
    if (!v262)
    {

      sub_224A3311C(&v261, &unk_27D6F3CB0, &unk_224DB7860);
      v129 = v238;
      (v252)(v238, 1, 1, v254);
LABEL_42:
      result = sub_224A3311C(v129, &qword_27D6F32B0, &qword_224DB3EA0);
      continue;
    }

    v134 = __swift_project_boxed_opaque_existential_1(&v261, v262);
    v257 = v195;
    v135 = *(v133 - 8);
    v136 = *(v135 + 64);
    MEMORY[0x28223BE20](v134);
    v138 = v195 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v135 + 16))(v138);
    sub_224A3311C(&v261, &unk_27D6F3CB0, &unk_224DB7860);
    v139 = v238;
    sub_224DAEAD8();
    v140 = v133;
    v129 = v139;
    (*(v135 + 8))(v138, v140);
    v141 = *v258;
    v142 = v254;
    if ((*v258)(v139, 1, v254) == 1)
    {

      v120 = v251;
      v122 = v255;
      goto LABEL_42;
    }

    v257 = *v256;
    (v257)(v235, v139, v142);
    v143 = v239;
    v144 = v220;
    sub_224A3796C(v239, v220, &qword_27D6F32B0, &qword_224DB3EA0);
    v145 = v141(v144, 1, v142);
    v122 = v255;
    if (v145 == 1)
    {

      sub_224A3311C(v144, &qword_27D6F32B0, &qword_224DB3EA0);
      v146 = v235;
LABEL_55:
      v150 = v239;
      sub_224A3311C(v239, &qword_27D6F32B0, &qword_224DB3EA0);
      (v257)(v150, v146, v142);
      result = (v252)(v150, 0, 1, v142);
      v120 = v251;
      continue;
    }

    sub_224A3311C(v144, &qword_27D6F32B0, &qword_224DB3EA0);
    v147 = v208;
    sub_224A3796C(v143, v208, &qword_27D6F32B0, &qword_224DB3EA0);
    result = (v141)(v147, 1, v142);
    if (result == 1)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v146 = v235;
    v148 = sub_224DA9798();

    v149 = *v249;
    (*v249)(v147, v142);
    if (v148)
    {
      goto LABEL_55;
    }

    result = v149(v146, v142, &qword_224DB3EA0);
    v120 = v251;
  }

  while (1)
  {
    v130 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v130 >= v127)
    {
      break;
    }

    v126 = *(v123 + 8 * v130);
    ++v128;
    if (v126)
    {
      v128 = v130;
      goto LABEL_48;
    }
  }

  v151 = v239;
  v152 = v219;
  sub_224A3796C(v239, v219, &qword_27D6F32B0, &qword_224DB3EA0);
  v153 = v254;
  if ((*v258)(v152, 1, v254) == 1)
  {
    sub_224A3311C(v151, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224A3311C(v152, &qword_27D6F32B0, &qword_224DB3EA0);
    v117 = v250;
  }

  else
  {
    v154 = v237;
    v155 = v207;
    (*(v237 + 32))(v207, v152, v153);
    v156 = v215;
    (*(v154 + 16))(v215, v155, v153);
    (*(v213 + 104))(v156, *MEMORY[0x277CF9B58], v214);
    (*(v216 + 104))(v218, *MEMORY[0x277CF9B48], v217);
    (*(v209 + 104))(v211, *MEMORY[0x277CF9BA0], v212);
    sub_224DACC48();
    v157 = v210;
    sub_224DACC38();
    (*(v154 + 8))(v155, v153);
    sub_224A3311C(v151, &qword_27D6F32B0, &qword_224DB3EA0);
    v117 = v250;
    sub_224A3311C(v250, &qword_27D6F61E0, &unk_224DBE988);
    v240(v157, 0, 1, v248);
    sub_224A64134(v157, v117);
  }

  return sub_224A64134(v117, v120);
}

uint64_t sub_224A64134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A641C8@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a1;
  v64 = a3;
  v4 = sub_224DACB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_224DABE18();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_224DACB08();
  v63 = *(v10 - 8);
  v11 = v63[8];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v54[-v15];
  v17 = sub_224DACB28();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v54[-v23];
  sub_224DACC58();
  (*(v18 + 104))(v22, *MEMORY[0x277CF9B50], v17);
  v25 = MEMORY[0x22AA5AE80](v24, v22);
  v26 = *(v18 + 8);
  v26(v22, v17);
  v59 = v24;
  v26(v24, v17);
  v27 = a2;
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_224DACC08();
  v28 = v63;
  v29 = v63[13];
  (v29)(v14, *MEMORY[0x277CF9B48], v10);
  v30 = sub_224DACAF8();
  v31 = v28[1];
  v31(v14, v10);
  v31(v16, v10);
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((sub_224DACBD8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v32 = __swift_project_boxed_opaque_existential_1(v62 + 2, v62[5]);
  v33 = sub_224DABDB8();
  v34 = *v32;
  v65 = 0;
  v66 = 1;
  sub_224A42660(v33, &v65);
  LOBYTE(v32) = v35;

  if (v32 & 1) != 0 || (v36 = __swift_project_boxed_opaque_existential_1(v62 + 2, v62[5]), v37 = sub_224DABDB8(), v38 = *v36, LOBYTE(v36) = sub_224A4507C(), v37, (v36))
  {
    v63 = v29;
    v40 = v56;
    v39 = v57;
    v41 = v58;
    (*(v57 + 16))(v56, v61, v58);
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v61 = v44;
      v62 = swift_slowAlloc();
      v65 = v62;
      *v44 = 136446210;
      sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0]);
      v55 = v43;
      v45 = sub_224DAFD28();
      v47 = v46;
      (*(v39 + 8))(v40, v41);
      v48 = sub_224A33F74(v45, v47, &v65);

      v49 = v61;
      *(v61 + 1) = v48;
      v50 = v49;
      _os_log_impl(&dword_224A2F000, v42, v55, "%{public}s Overriding budgeted configuration with free", v49, 0xCu);
      v51 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    sub_224DACC58();
    (v63)(v16, *MEMORY[0x277CF9B40], v10);
    sub_224DACC68();
    sub_224DACBB8();
    sub_224DACBE8();
    return sub_224DACC18();
  }

  else
  {
LABEL_8:
    v52 = sub_224DACC88();
    return (*(*(v52 - 8) + 16))(v64, v27, v52);
  }
}

uint64_t sub_224A647BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v320 = a5;
  v319 = a4;
  v343 = a3;
  v335 = a2;
  v336 = a1;
  v328 = sub_224DACC88();
  v324 = *(v328 - 8);
  v5 = *(v324 + 64);
  v6 = MEMORY[0x28223BE20](v328);
  v314 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = v7;
  MEMORY[0x28223BE20](v6);
  v327 = &v300 - v8;
  v333 = sub_224DABE18();
  v337 = *(v333 - 8);
  v9 = *(v337 + 64);
  v10 = MEMORY[0x28223BE20](v333);
  v313 = &v300 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = v11;
  MEMORY[0x28223BE20](v10);
  v311 = &v300 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v304 = &v300 - v15;
  v309 = sub_224DA9908();
  v308 = *(v309 - 8);
  v16 = *(v308 + 64);
  MEMORY[0x28223BE20](v309);
  v307 = &v300 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = type metadata accessor for ExtensionTask.Identifier(0);
  v18 = *(*(v306 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v306);
  v326 = &v300 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v334 = &v300 - v21;
  v359 = sub_224DAB258();
  v339 = *(v359 - 8);
  v22 = *(v339 + 64);
  v23 = MEMORY[0x28223BE20](v359);
  v317 = &v300 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v301 = &v300 - v26;
  MEMORY[0x28223BE20](v25);
  v353 = &v300 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v345 = &v300 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v346 = &v300 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v300 - v34;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v365 = *(v374 - 8);
  v36 = *(v365 + 64);
  v37 = MEMORY[0x28223BE20](v374);
  v316 = &v300 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v315 = &v300 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v341 = &v300 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v351 = &v300 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v360 = &v300 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v366 = &v300 - v48;
  MEMORY[0x28223BE20](v47);
  v364 = &v300 - v49;
  v354 = sub_224DAC268();
  v372 = *(v354 - 8);
  v50 = *(v372 + 8);
  v51 = MEMORY[0x28223BE20](v354);
  v321 = &v300 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v300 - v54;
  MEMORY[0x28223BE20](v53);
  v340 = &v300 - v56;
  v357 = sub_224DACB08();
  v356 = *(v357 - 8);
  v57 = v356[8];
  MEMORY[0x28223BE20](v357);
  v355 = &v300 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v59);
  v367 = (&v300 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v62);
  v342 = &v300 - v65;
  MEMORY[0x28223BE20](v64);
  v303 = &v300 - v66;
  v362 = sub_224DACB28();
  v361 = *(v362 - 8);
  v67 = *(v361 + 64);
  v68 = MEMORY[0x28223BE20](v362);
  v349 = &v300 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v318 = &v300 - v70;
  v323 = sub_224DA9878();
  v322 = *(v323 - 8);
  v71 = *(v322 + 64);
  v72 = MEMORY[0x28223BE20](v323);
  v305 = &v300 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v302 = &v300 - v74;
  v332 = sub_224DACB98();
  v331 = *(v332 - 8);
  v75 = *(v331 + 64);
  v76 = MEMORY[0x28223BE20](v332);
  v350 = &v300 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v330 = &v300 - v78;
  v79 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v325 = &v300 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v84 = &v300 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v86 = *(v60 + 72);
  v87 = *(v60 + 80);
  v88 = ((v87 + 32) & ~v87);
  v373 = v86;
  v358 = v85;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_224DB3100;
  v90 = *MEMORY[0x277CE3D30];
  v91 = sub_224DAE8B8();
  v92 = *(v91 - 8);
  v371 = *(v92 + 104);
  (v371)(&v88[v89], v90, v91);
  v93 = *(v92 + 56);
  v93(&v88[v89], 0, 5, v91);
  v378 = v89;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v95 = *(v94 - 8);
  v96 = *(v95 + 56);
  v338 = v84;
  v348 = v94;
  v347 = v96;
  *&v344 = v95 + 56;
  (v96)(v84, 1, 1);
  v329 = *(v352 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview);
  v368 = v93;
  v369 = (v92 + 56);
  v370 = v88;
  v363 = (v92 + 104);
  if (v329 == 1)
  {

    v97 = v373;
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_224DB30F0;
    v93(&v88[v98], 3, 5, v91);
    (v371)(&v88[v98 + v97], *MEMORY[0x277CE3D18], v91);
    v93(&v88[v98 + v97], 0, 5, v91);
    v378 = v98;
    v99 = v330;
    sub_224DACC68();
    LOBYTE(v98) = sub_224DACB48();
    (*(v331 + 8))(v99, v332);
    v100 = v91;
    if ((v98 & 1) == 0)
    {
      v113 = 0;
      v112 = 1;
      v122 = v354;
      v105 = v360;
      if ((sub_224DACBC8() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    v101 = v318;
    sub_224DACC58();
    v102 = v361;
    v103 = v362;
    v104 = (*(v361 + 88))(v101, v362);
    v105 = v360;
    if (v104 == *MEMORY[0x277CF9B58])
    {
      v106 = v338;
      sub_224A3D238(v338, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      (*(v102 + 96))(v101, v103);
      v107 = *(v322 + 32);
      v108 = v302;
      v109 = v101;
      v110 = v323;
      v107(v302, v109, v323);
      v111 = v348;
      v362 = *(v348 + 48);
      v107(v106, v108, v110);
      *(v106 + v362) = 0x408C200000000000;
      v112 = 1;
      (v347)(v106, 0, 1, v111);
      v113 = 0;
    }

    else
    {
      (*(v102 + 8))(v101, v103);
      v113 = 0;
      v112 = 1;
    }

    goto LABEL_25;
  }

  v318 = v87;
  v114 = v91;
  v115 = v349;
  sub_224DACC58();
  v116 = v361;
  v117 = v362;
  v118 = (*(v361 + 88))(v115, v362);
  if (v118 == *MEMORY[0x277CF9B58])
  {
    v119 = v338;
    sub_224A3D238(v338, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v116 + 96))(v115, v117);
    v120 = v348;
    v121 = *(v348 + 48);
    (*(v322 + 32))(v119, v115, v323);
    *(v119 + v121) = 0x408C200000000000;
    (v347)(v119, 0, 1, v120);
    v105 = v360;
    v100 = v114;
  }

  else
  {
    v105 = v360;
    v100 = v114;
    if (v118 == *MEMORY[0x277CF9B50])
    {
      v123 = v303;
      (v371)(v303, *MEMORY[0x277CE3D28], v100);
      (v368)(v123, 0, 5, v100);
      v125 = *(v89 + 16);
      v124 = *(v89 + 24);
      if (v125 >= v124 >> 1)
      {
        v89 = sub_224AD946C(v124 > 1, v125 + 1, 1, v89);
      }

      *(v89 + 16) = v125 + 1;
      sub_224B442EC(v123, &v370[v89 + v125 * v373]);
      v378 = v89;
    }

    else
    {
      (*(v116 + 8))(v115, v117);
    }
  }

  v126 = v330;
  sub_224DACC68();
  v127 = v331;
  v128 = v350;
  v129 = v332;
  (*(v331 + 104))(v350, *MEMORY[0x277CF9BC0], v332);
  v130 = sub_224DACB88();
  v131 = *(v127 + 8);
  v131(v128, v129);
  v131(v126, v129);
  if (v130)
  {
    v132 = v373;
    v133 = v370;
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_224DB30F0;
    v135 = &v133[v134];
    (v371)(v135, *MEMORY[0x277CE3D18], v100);
    v136 = v368;
    (v368)(v135, 0, 5, v100);
    v136(&v132[v135], 3, 5, v100);
    sub_224B42B34(v134);
  }

  v137 = v355;
  sub_224DACC08();
  v138 = v356;
  v139 = v357;
  if ((v356[11])(v137, v357) != *MEMORY[0x277CF9B40])
  {
    (v138[1])(v137, v139);
    v112 = 0;
    v113 = 1;
LABEL_25:
    v122 = v354;
    goto LABEL_26;
  }

  v140 = v342;
  (v368)(v342, 3, 5, v100);
  v141 = v378;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = v354;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v141 = sub_224AD946C(0, *(v141 + 16) + 1, 1, v141);
  }

  v144 = *(v141 + 16);
  v143 = *(v141 + 24);
  if (v144 >= v143 >> 1)
  {
    v141 = sub_224AD946C(v143 > 1, v144 + 1, 1, v141);
  }

  *(v141 + 16) = v144 + 1;
  sub_224B442EC(v140, &v370[v141 + v144 * v373]);
  v113 = 0;
  v378 = v141;
  v112 = 1;
LABEL_26:
  if ((sub_224DACBC8() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v145 = v367;
  (v371)(v367, *MEMORY[0x277CE3D20], v100);
  (v368)(v145, 0, 5, v100);
  v146 = v378;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v146 = sub_224AD946C(0, *(v146 + 16) + 1, 1, v146);
  }

  v147 = v370;
  v149 = *(v146 + 16);
  v148 = *(v146 + 24);
  if (v149 >= v148 >> 1)
  {
    v146 = sub_224AD946C(v148 > 1, v149 + 1, 1, v146);
  }

  *(v146 + 16) = v149 + 1;
  sub_224B442EC(v367, &v147[v146 + v149 * v373]);
  v378 = v146;
LABEL_32:
  v150 = *(v335 + 16);
  if (v150)
  {
    v302 = v113;
    LODWORD(v303) = v112;
    v151 = v372 + 16;
    v152 = v150;
    v153 = v335 + ((v372[80] + 32) & ~v372[80]);
    v371 = *(v372 + 2);
    (v371)(v340, v153, v122);
    v368 = *(v151 + 7);
    v372 = v151;
    v154 = v151 - 8;
    v370 = (v365 + 48);
    v363 = (v365 + 32);
    v373 = MEMORY[0x277D84F90];
    v362 = v153;
    v155 = v153;
    v318 = v152;
    v113 = &unk_224DB3580;
    do
    {
      (v371)(v55, v155, v122);
      sub_224DAC218();
      v369 = *v154;
      v369(v55, v122);
      v157 = v374;
      v367 = *v370;
      if ((v367)(v35, 1, v374) == 1)
      {
        sub_224A3311C(v35, &qword_27D6F56C0, &unk_224DB3580);
      }

      else
      {
        v158 = *v363;
        (*v363)(v364, v35, v157);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v159 = v373;
        }

        else
        {
          v159 = sub_224AD9734(0, v373[2] + 1, 1, v373);
        }

        v161 = v159[2];
        v160 = v159[3];
        if (v161 >= v160 >> 1)
        {
          v159 = sub_224AD9734(v160 > 1, v161 + 1, 1, v159);
        }

        v159[2] = v161 + 1;
        v162 = (*(v365 + 80) + 32) & ~*(v365 + 80);
        v373 = v159;
        v158(v159 + v162 + *(v365 + 72) * v161, v364, v374);
        v122 = v354;
        v105 = v360;
      }

      v155 += v368;
      --v152;
    }

    while (v152);
    v347 = v154;
    v163 = v373;
    v358 = v373[2];
    if (v358)
    {
      v164 = 0;
      v356 = (v352 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
      v350 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
      v349 = (v339 + 16);
      v348 = v339 + 8;
      v342 = MEMORY[0x277D84F90];
      v355 = (v365 + 8);
      v165 = (v365 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      *&v156 = 136315138;
      v344 = v156;
      v166 = v374;
      v357 = v365 + 16;
      while (1)
      {
        if (v164 >= *(v163 + 2))
        {
          __break(1u);
          goto LABEL_90;
        }

        v364 = v165;
        v167 = (*(v365 + 80) + 32) & ~*(v365 + 80);
        v168 = *(v365 + 72);
        v169 = *(v365 + 16);
        v170 = v366;
        v169(v366, &v163[v167 + v168 * v164], v166);
        v169(v105, v170, v166);
        v171 = v356[3];
        v113 = v356[4];
        __swift_project_boxed_opaque_existential_1(v356, v171);
        if ((*(v113 + 40))(v105, v171, v113))
        {
          v166 = v374;
          sub_224DAA1F8();
          v172 = sub_224DAA048();

          v173 = *v355;
          (*v355)(v105, v166);
          if (v172)
          {
            v174 = *v363;
            (*v363)(v341, v366, v166);
            v175 = v342;
            v176 = swift_isUniquelyReferenced_nonNull_native();
            v376[0] = v175;
            if (v176)
            {
              v177 = v175;
            }

            else
            {
              sub_224ADA564(0, *(v175 + 16) + 1, 1);
              v166 = v374;
              v177 = v376[0];
            }

            v113 = *(v177 + 16);
            v178 = *(v177 + 24);
            if (v113 >= v178 >> 1)
            {
              sub_224ADA564(v178 > 1, v113 + 1, 1);
              v166 = v374;
              v177 = v376[0];
            }

            *(v177 + 16) = v113 + 1;
            v342 = v177;
            v174((v177 + v167 + v113 * v168), v341, v166);
            v165 = v364;
            goto LABEL_52;
          }

          v165 = v364;
        }

        else
        {
          v173 = *v355;
          v166 = v374;
          v165 = v364;
          (*v355)(v105, v374);
        }

        v173(v366, v166);
LABEL_52:
        ++v164;
        v163 = v373;
        if (v358 == v164)
        {
          goto LABEL_60;
        }
      }
    }

    v342 = MEMORY[0x277D84F90];
LABEL_60:

    v179 = (v365 + 8);
    v180 = v318 + 1;
    v113 = v354;
    v181 = v321;
    while (1)
    {
      if (!--v180)
      {
        v188 = sub_224A67760(v342);

        v377 = v188;
        goto LABEL_70;
      }

      (v371)(v181, v362, v113);
      v182 = v346;
      sub_224DAC218();
      v183 = v374;
      v184 = v367;
      if ((v367)(v182, 1, v374) == 1)
      {
        break;
      }

      sub_224A3311C(v182, &qword_27D6F56C0, &unk_224DB3580);
      v185 = v345;
      sub_224DAC218();
      result = v184(v185, 1, v183);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v362 += v368;
      sub_224DAA1F8();
      (*v179)(v185, v183);
      v187 = sub_224DAA048();

      v369(v181, v113);
      if ((v187 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v369(v181, v113);
    sub_224A3311C(v182, &qword_27D6F56C0, &unk_224DB3580);
LABEL_68:
    v189 = sub_224A67760(v342);

    v377 = v189;
    if (qword_281351880 != -1)
    {
      goto LABEL_91;
    }
  }

  else
  {
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v190 = v374;
  v191 = __swift_project_value_buffer(v374, qword_281365198);
  v192 = v365 + 16;
  v193 = v316;
  (*(v365 + 16))(v316, v191, v190);
  v194 = v315;
  sub_224A67790(v315, v193);
  (*(v192 - 8))(v194, v190);
  v188 = v377;
LABEL_70:
  v195 = v334;
  v196 = v333;
  if (!*(v188 + 16))
  {

    v197 = v301;
    v198 = v359;
    (*(v339 + 16))(v301, v352 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v359);
    v199 = sub_224DAB228();
    v200 = sub_224DAF288();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_224A2F000, v199, v200, "No hosts to schedule reloads for.", v201, 2u);
      v202 = v201;
      v198 = v359;
      MEMORY[0x22AA5EED0](v202, -1, -1);
    }

    (*(v339 + 8))(v197, v198);
    v319(0, 0);
    v369(v340, v113);
    sub_224A3D238(v338, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    return 0;
  }

  if (!v329)
  {
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v205 = *(v204 + 48);
    (*(v337 + 16))(v195, v336, v196);
    *(v195 + v205) = sub_224A67D38();
    v206 = *(v188 + 16);
    if (v206)
    {
      v207 = sub_224A6DE18(*(v188 + 16), 0);
      v208 = sub_224A6DF20(v376, (v207 + ((*(v365 + 80) + 32) & ~*(v365 + 80))), v206, v188);
      sub_224A3B7E4();
      if (v208 == v206)
      {
LABEL_80:
        *(v195 + *(v204 + 64)) = v207;
        goto LABEL_81;
      }

      __break(1u);
    }

    v207 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  (*(v337 + 16))(v195, v336, v196);
LABEL_81:
  swift_storeEnumTagMultiPayload();
  v209 = v326;
  sub_224A4152C(v195, v326, type metadata accessor for ExtensionTask.Identifier);
  v210 = sub_224DAC248();
  v211 = [v210 extensionIdentity];

  v212 = v325;
  sub_224A4152C(v338, v325, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v370 = v378;
  LODWORD(v374) = sub_224DACBD8();
  v371 = type metadata accessor for ExtensionTask(0);
  v213 = objc_allocWithZone(v371);
  sub_224DAE908();
  v214 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v215 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v216 = sub_224DAC938();
  v368 = *(v216 - 1);
  v372 = *(v368 + 56);
  v373 = v216;
  (v372)(&v213[v215], 1, 1);
  v217 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v217 = 0;
  v217[1] = 0;
  v218 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v218 = 0;
  v218[1] = 0;
  v219 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v219 = 0;
  v219[1] = 0;
  v220 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v220 = 0;
  v220[1] = 0;
  v221 = v305;
  sub_224DA9868();
  (*(v322 + 32))(&v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v221, v323);
  *&v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v211;
  sub_224A4152C(v212, &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v222 = *&v213[v214];
  *&v213[v214] = v370;
  v370 = v211;

  v223 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v223 = v302;
  v223[8] = v303;
  sub_224A4152C(v209, &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v224 = v307;
  sub_224DA98F8();
  v225 = v308;
  v226 = v309;
  (*(v308 + 16))(&v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v224, v309);
  v376[0] = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v227 = sub_224A3D19C(8);
  v229 = v228;
  v231 = v230;
  v233 = v232;

  v234 = MEMORY[0x22AA5D1C0](v227, v229, v231, v233);
  v236 = v235;

  v237 = &v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v237 = v234;
  v237[1] = v236;
  v213[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v374 & 1;
  v375.receiver = v213;
  v375.super_class = v371;
  v374 = objc_msgSendSuper2(&v375, sel_init);

  (*(v225 + 8))(v224, v226);
  sub_224A3D238(v325, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D238(v326, type metadata accessor for ExtensionTask.Identifier);
  if (v329)
  {
    v238 = v304;
    v239 = v373;
    (*(v368 + 104))(v304, *MEMORY[0x277CF9B00], v373);
    v240 = v324;
    v241 = v337;
    v242 = v343;
    v243 = v239;
  }

  else
  {
    v244 = v330;
    v242 = v343;
    sub_224DACC68();
    v238 = v304;
    sub_224DACB38();
    (*(v331 + 8))(v244, v332);
    v240 = v324;
    v241 = v337;
    v243 = v373;
  }

  (v372)(v238, 0, 1, v243);
  v245 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v246 = v374;
  swift_beginAccess();
  sub_224A6E1D0(v238, v246 + v245);
  swift_endAccess();
  v247 = swift_allocObject();
  v247[2] = 0;
  v248 = *(v241 + 16);
  v371 = (v241 + 16);
  v372 = v248;
  v249 = v311;
  v250 = v333;
  (v248)(v311, v336, v333);
  v251 = *(v240 + 16);
  v368 = v240 + 16;
  v370 = v251;
  (v251)(v327, v242, v328);
  v252 = (*(v241 + 80) + 24) & ~*(v241 + 80);
  v253 = (v310 + v252 + 7) & 0xFFFFFFFFFFFFFFF8;
  v254 = (*(v240 + 80) + v253 + 8) & ~*(v240 + 80);
  v255 = (v312 + v254 + 7) & 0xFFFFFFFFFFFFFFF8;
  v256 = swift_allocObject();
  *(v256 + 16) = v352;
  (*(v241 + 32))(v256 + v252, v249, v250);
  *(v256 + v253) = v335;
  v257 = *(v240 + 32);
  v258 = v328;
  v257(v256 + v254, v327, v328);
  *(v256 + v255) = v247;
  v259 = v374;
  v260 = (v374 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v261 = *(v374 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v262 = *(v374 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v260 = sub_224A8EDA4;
  v260[1] = v256;
  v263 = v352;

  v264 = v250;

  sub_224A3D418(v261);
  v265 = swift_allocObject();
  v266 = v320;
  *(v265 + 2) = v319;
  *(v265 + 3) = v266;
  *(v265 + 4) = v247;
  v267 = (v259 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v268 = *(v259 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v269 = *(v259 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v267 = sub_224A8B280;
  v267[1] = v265;
  v373 = v247;

  sub_224A3D418(v268);
  v270 = v339;
  v271 = v317;
  v272 = v359;
  (*(v339 + 16))(v317, v263 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v359);
  v273 = v313;
  (v372)(v313, v336, v250);
  v274 = v314;
  (v370)(v314, v343, v258);
  v275 = sub_224DAB228();
  v276 = sub_224DAF2A8();
  if (os_log_type_enabled(v275, v276))
  {
    v277 = v273;
    v278 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    v376[0] = v279;
    *v278 = 136446466;
    sub_224A6E240();
    v280 = sub_224DAFD28();
    v281 = v264;
    v283 = v282;
    (*(v337 + 8))(v277, v281);
    v284 = sub_224A33F74(v280, v283, v376);

    *(v278 + 4) = v284;
    *(v278 + 12) = 2082;
    v285 = sub_224DACBA8();
    v287 = v286;
    (*(v324 + 8))(v274, v258);
    v288 = sub_224A33F74(v285, v287, v376);

    *(v278 + 14) = v288;
    _os_log_impl(&dword_224A2F000, v275, v276, "%{public}s scheduled %{public}s", v278, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v279, -1, -1);
    MEMORY[0x22AA5EED0](v278, -1, -1);

    (*(v270 + 8))(v317, v359);
  }

  else
  {

    (*(v324 + 8))(v274, v258);
    (*(v337 + 8))(v273, v264);
    (*(v270 + 8))(v271, v272);
  }

  sub_224DAD358();
  v289 = *(v352 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService + 24);
  v290 = *(v352 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v352 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService), v289);
  v291 = v374;
  v292 = (*(v290 + 16))(v374, v289, v290);
  v294 = v293;
  v296 = v295;
  v298 = v297;
  v376[3] = &type metadata for TaskCancellable;
  v376[4] = sub_224A8B0FC();
  v299 = swift_allocObject();
  v376[0] = v299;
  v299[2] = v292;
  v299[3] = v294;
  v299[4] = v296;
  v299[5] = v298;
  v203 = sub_224DAD368();

  sub_224A3D238(v334, type metadata accessor for ExtensionTask.Identifier);
  v369(v340, v354);
  sub_224A3D238(v338, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v203;
}

uint64_t sub_224A67378()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A673B0()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DACC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_224A67528()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A67568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A675A8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 16);
  v19 = sub_224A33088(a4, a2, a3);
  result = MEMORY[0x22AA5D540](v18, v10, v19);
  v27 = result;
  if (v18)
  {
    v21 = v11 + 16;
    v26 = *(v11 + 16);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = a5;
    v25 = (v21 - 8);
    do
    {
      v26(v15, v22, v10);
      v24(v17, v15);
      (*v25)(v17, v10);
      v22 += v23;
      --v18;
    }

    while (v18);
    return v27;
  }

  return result;
}

uint64_t sub_224A67790(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
  v34 = a2;
  v13 = sub_224DAED88();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
      v21 = sub_224DAEDD8();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224A67A74(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224A67A74(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADF928(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&unk_27D6F30D0, &unk_224DB2AC0, &qword_27D6F3620, &qword_224DB3BF8);
      goto LABEL_12;
    }

    sub_224AE6B90(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
  v15 = sub_224DAED88();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
      v23 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224A67D38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v34 - v8;
  v36 = 0;
  v10 = *(v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService + 24);
  v11 = *(v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService), v10);
  (*(v11 + 32))(v35, 768, v10, v11);
  if (!v35[5])
  {
    sub_224A3311C(v35, &qword_27D6F50E0, &qword_224DB41A0);
    return v36;
  }

  v12 = sub_224DABDB8();
  v13 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v5, &v12[v13], v1);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = type metadata accessor for HostDescriptorPredicate();
  v9[v15[5]] = 3;
  v9[v15[6]] = 3;
  v16 = v15[7];
  v17 = *(v2 + 56);
  v17(&v9[v16], 1, 1, v1);
  v18 = v15[8];
  v19 = sub_224DABE18();
  (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
  v20 = v15[9];
  v21 = sub_224DAC268();
  (*(*(v21 - 8) + 56))(&v9[v20], 1, 1, v21);
  v22 = &v9[v15[10]];
  *v22 = 0;
  v22[8] = 1;
  sub_224A3311C(&v9[v16], &unk_27D6F6140, qword_224DBB6B0);
  (*(v2 + 32))(&v9[v16], v5, v1);
  v17(&v9[v16], 0, 1, v1);
  (*(*(v15 - 1) + 56))(v9, 0, 1, v15);
  v23 = sub_224A6BAF8(v9);
  sub_224A3311C(v9, &qword_27D6F46D0, &unk_224DBD6D0);
  result = sub_224A699F0(v35);
  if (!v23)
  {
    return v36;
  }

  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_19:

    return v36;
  }

  result = sub_224DAF838();
  v25 = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AA5DCC0](v26, v23);
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 widget];
      v31 = sub_224DABE08();

      if (v31)
      {
        v32 = v36;
        if (!v36)
        {
          v32 = v27;
        }

        v36 = v32;
        v33 = v29;
        MEMORY[0x22AA5D350]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34[1] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A68228(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v7 = type metadata accessor for _HostFilterableChange();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = *(*a2 + 112);
  swift_beginAccess();
  v14 = *(v8 + 32);
  v15 = sub_224DAA428();
  v16 = *(*(v15 - 8) + 16);
  v16(&v11[v14], a2 + v13, v15);
  v16(&v11[*(v8 + 28)], &v11[v14], v15);
  LOBYTE(a4) = sub_224A687B0(v11, a4);
  sub_224A6951C(v11);
  return a4 & 1;
}

uint64_t type metadata accessor for _HostFilterableChange()
{
  result = qword_2813576B0;
  if (!qword_2813576B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_224A68420@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + qword_28135C9F0);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = qword_28135CA28;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v7 = sub_224A69378(v6, sub_224A694F8);

  if (*(v7 + 16))
  {
    v8 = sub_224A68A40(v7);

    v9 = sub_224A68EC0(v8);
    os_unfair_lock_unlock(*(v3 + 16));
    if (v9)
    {
      v10 = qword_28135A7E8;
      swift_beginAccess();
      sub_224A68ED8(v1 + v10, v12);
      sub_224A68F48(v9, v12, a1);
      return result;
    }
  }

  else
  {

    os_unfair_lock_unlock(*(v3 + 16));
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_224A68560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(*(v34 - 8) + 64);
  result = MEMORY[0x28223BE20](v34);
  v32 = &v26 - v8;
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v21 = v33;
    v22 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v21 + 8))(v15, v22);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224A69578(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_224A69578(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_224A687B0(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + qword_28135C9F0) + 16));
  if (v4 >= 0x100 && HIBYTE(a2) != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v10)
    {

      if (HIBYTE(a2) != 2)
      {
        return 0;
      }
    }

    else if (HIBYTE(a2) != 1)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 == 1)
  {
    v11 = type metadata accessor for _HostFilterableChange();
    v12 = *(v11 + 20);
    v13 = MEMORY[0x277CFA040];
  }

  else
  {
    v11 = type metadata accessor for _HostFilterableChange();
    v14 = *(v11 + 20);
    v13 = MEMORY[0x277CFA038];
  }

  v15 = *v13;
  v20 = v6[13];
  v20(v9, v15, v5);
  sub_224A86C64(&qword_281351828, MEMORY[0x277CFA048]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v16 = v6[1];
  v16(v9, v5);
  if (v22 == v21)
  {
    return 1;
  }

  v17 = *(v11 + 24);
  v20(v9, v15, v5);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v16(v9, v5);
  return v22 == v21;
}

uint64_t sub_224A68A40(uint64_t a1)
{
  v53 = sub_224DAA428();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v41 = v1;
    v56 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v11 = a1 + 64;
    v12 = -1 << *(a1 + 32);
    result = sub_224DAF798();
    v13 = result;
    v14 = 0;
    v55 = *(a1 + 36);
    v47 = (v3 + 16);
    v48 = (v6 + 16);
    v45 = (v3 + 32);
    v46 = (v6 + 32);
    v42 = a1 + 72;
    v43 = a1 + 64;
    v49 = a1;
    v44 = v9;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_21;
      }

      if (v55 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v54 = v14;
      v17 = *(*(a1 + 56) + 8 * v13);
      v19 = v50;
      v18 = v51;
      (*v48)(v50, v17 + qword_281365430, v51);
      v20 = *(*v17 + 104);
      swift_beginAccess();
      v21 = *(v17 + v20);
      v22 = *(*v17 + 112);
      swift_beginAccess();
      v23 = v17 + v22;
      v24 = v52;
      v25 = v53;
      (*v47)(v52, v23, v53);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4070, &qword_224DB5668);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      v30 = v18;
      a1 = v49;
      (*v46)(v29 + qword_281365418, v19, v30);
      *(v29 + *(*v29 + 104)) = v21;
      (*v45)(v29 + *(*v29 + 112), v24, v25);
      v31 = v21;
      sub_224DAF9B8();
      v32 = *(v56 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v15 = 1 << *(a1 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v11 = v43;
      v33 = v44;
      v34 = *(v43 + 8 * v16);
      if ((v34 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v55 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v35 = v34 & (-2 << (v13 & 0x3F));
      if (v35)
      {
        v15 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v16 << 6;
        v37 = v16 + 1;
        v38 = (v42 + 8 * v16);
        while (v37 < (v15 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_224A3E204(v13, v55, 0);
            v15 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v13, v55, 0);
      }

LABEL_4:
      v14 = v54 + 1;
      v13 = v15;
      if (v54 + 1 == v33)
      {
        return v56;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224A68ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52B8, &unk_224DBB690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A68F48@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v32 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v37 = &v29 - v8;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a1 >> 62)
  {
LABEL_26:
    v9 = sub_224DAF838();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v29 = a3;
      v30 = a2;
      v10 = 0;
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v36 = (v32 + 16);
      v34 = (v32 + 8);
      v11 = MEMORY[0x277D84F98];
      v33 = a1;
      while (1)
      {
        if (v35)
        {
          v13 = MEMORY[0x22AA5DCC0](v10, a1);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 >= *(v31 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a1 + 8 * v10 + 32);

          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v15 = v37;
        a1 = *v36;
        v16 = isUniquelyReferenced_nonNull_native;
        (*v36)(v37, v13 + qword_281365418, isUniquelyReferenced_nonNull_native);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v11;
        a2 = sub_224A683FC(v15);
        v18 = v11[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_23;
        }

        v21 = v17;
        if (v11[3] >= v20)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B250D8();
          }
        }

        else
        {
          sub_224A69A44(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_224A683FC(v37);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_224DAFDD8();
            __break(1u);
            return result;
          }

          a2 = v22;
        }

        isUniquelyReferenced_nonNull_native = v16;
        v11 = v38;
        if (v21)
        {
          v12 = v38[7];
          a3 = *(v12 + 8 * a2);
          *(v12 + 8 * a2) = v13;

          (*v34)(v37, v16);
        }

        else
        {
          v38[(a2 >> 6) + 8] |= 1 << a2;
          a3 = v32;
          v24 = v37;
          (a1)(v11[6] + *(v32 + 72) * a2, v37, isUniquelyReferenced_nonNull_native);
          *(v11[7] + 8 * a2) = v13;

          (*(a3 + 8))(v24, isUniquelyReferenced_nonNull_native);
          v25 = v11[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_24;
          }

          v11[2] = v27;
        }

        ++v10;
        a1 = v33;
        if (v14 == v9)
        {

          a3 = v29;
          a2 = v30;
          goto LABEL_28;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_28:
  *(a3 + 40) = v11;
  return sub_224A69A58(a2, a3);
}

unint64_t sub_224A692B0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = v5;
  v12 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_224A33088(a4, a2, a3);
  v13 = sub_224DAED88();
  return sub_224A3ADF0(a1, v13, a2, a3, a5, MEMORY[0x277CFA020]);
}

uint64_t sub_224A69378(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_224A68560(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_224D7213C(v11, v6, v4, a2);
  result = MEMORY[0x22AA5EED0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224A6951C(uint64_t a1)
{
  v2 = type metadata accessor for _HostFilterableChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224A6958C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_224DAFB98();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
      result = sub_224DAED88();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t (*sub_224A6996C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_224A699EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A69A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52B8, &unk_224DBB690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit31ConfiguredWidgetMetadataCaching_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t *sub_224A69AE8(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 104));
  v5 = *(*v1 + 112);
  v6 = sub_224DAA428();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  return v1;
}

uint64_t sub_224A69BFC(uint64_t *a1)
{
  sub_224A69AE8(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224A69C60(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_224DAF838();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_224A8695C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224A69CFC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v39 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_224DAFBB8();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v44;
  }

  v19 = 0;
  v41 = v11 + 16;
  v42 = result;
  v50 = v11 + 32;
  v20 = result + 64;
  v40 = a4;
  v43 = v11;
  v21 = v52;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v25 = v22 | (v19 << 6);
    v26 = a4[6];
    v49 = *(v11 + 72);
    v27 = v45;
    (*(v11 + 16))(v45, v26 + v49 * v25, v21);
    v28 = *(a4[7] + 8 * v25);
    v47 = *(v11 + 32);
    v47(v51, v27, v21);
    v17 = v42;
    v29 = *(v42 + 40);
    sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
    v48 = v28;

    result = sub_224DAED88();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v11 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v20 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
LABEL_26:
    *(v20 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v17 + 48) + v33 * v49, v51, v52);
    *(*(v17 + 56) + 8 * v33) = v48;
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v23 = v19;
  while (1)
  {
    v19 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v24 = v44[v19];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v46 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_224A6A0E0(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services];
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue];
  v5 = a1;
  v6 = [v5 remoteProcess];
  v7 = type metadata accessor for WidgetRendererClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_connection] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] = v3;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v4;

  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v9 + 16) = v12;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock] = v9;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle] = v6;
  v13 = v6;
  sub_224DAF938();

  aBlock = 0x6552746567646957;
  v47 = 0xEF5B72657265646ELL;
  LODWORD(v52) = [v13 pid];
  v14 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v14);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v15 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier];
  *v15 = 0x6552746567646957;
  *(v15 + 1) = 0xEF5B72657265646ELL;
  v53.receiver = v8;
  v53.super_class = v7;
  v16 = objc_msgSendSuper2(&v53, sel_init);
  sub_224A3317C(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 408, &aBlock);
  v17 = *__swift_project_boxed_opaque_existential_1(&aBlock, v49);
  v52 = 0;
  v18 = *(v17 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v19 = *(v18 + 16);
  v20 = v16;
  os_unfair_lock_lock(v19);
  sub_224A6A874(v17, v13, &v52);
  os_unfair_lock_unlock(*(v18 + 16));
  sub_224A6AF54();
  v21 = v52;
  if (v52)
  {

    v22 = *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion);
    *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion) = v21;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);

    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = v20;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_224A75A4C;
    *(v24 + 24) = v23;
    v50 = sub_224A75AA4;
    v51 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_224A37E38;
    v49 = &block_descriptor_81_0;
    v25 = _Block_copy(&aBlock);
    v26 = v20;
    v27 = v2;

    [v10 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = &off_27853F000;
      isEscapingClosureAtFileLocation = [v10 remoteProcess];
      sub_224DAA7B8();
      v29 = sub_224DAEDE8();

      v30 = [isEscapingClosureAtFileLocation hasEntitlement_];

      if (v30)
      {
        v31 = *&v27[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
        os_unfair_lock_lock(*(v31 + 16));
        swift_beginAccess();
        sub_224A6A0A4(&v52, v26);
        swift_endAccess();

        os_unfair_lock_unlock(*(v31 + 16));
        v32 = &selRef_activate;
LABEL_9:
        [v10 *v32];

        return;
      }

      if (qword_281351580 == -1)
      {
LABEL_6:
        v33 = sub_224DAB258();
        __swift_project_value_buffer(v33, qword_281364EC8);
        v34 = v10;
        v35 = sub_224DAB228();
        v36 = sub_224DAF2A8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock = v45;
          *v37 = 136446466;
          v38 = [v34 v20[393]];
          v39 = v26;
          v40 = [v38 description];

          v41 = sub_224DAEE18();
          v43 = v42;

          v26 = v39;
          v44 = sub_224A33F74(v41, v43, &aBlock);

          *(v37 + 4) = v44;
          *(v37 + 12) = 2082;
          *(v37 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, &aBlock);
          _os_log_impl(&dword_224A2F000, v35, v36, "Chrono render service connection from %{public}s failed to authenticate <entitled: %{public}s>", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v45, -1, -1);
          MEMORY[0x22AA5EED0](v37, -1, -1);
        }

        v32 = &selRef_invalidate;
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v18 + 16));
  __break(1u);
}

uint64_t sub_224A6A768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A6A874(uint64_t a1, void *a2, id *a3)
{
  v5 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16))
  {
    v7 = *(a1 + v5);

    v8 = sub_224A6AC2C(a2);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);

      goto LABEL_6;
    }
  }

  v10 = MEMORY[0x277D84FA0];
LABEL_6:
  v26 = v10;
  v11 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v12 = [v11 UUIDString];

  if (!v12)
  {
    sub_224DAEE18();
    v12 = sub_224DAEDE8();
  }

  sub_224DAF938();

  v25 = [a2 pid];
  v13 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v16 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

  v17 = a2;
  v18 = sub_224DAEDE8();

  aBlock[4] = sub_224B4832C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_9;
  v19 = _Block_copy(aBlock);
  v20 = [v16 initWithIdentifier:v12 forReason:v18 invalidationBlock:v19];

  _Block_release(v19);

  v21 = *a3;
  *a3 = v20;

  if (*a3)
  {
    sub_224A6AC7C(aBlock, *a3);

    v22 = v26;
    swift_beginAccess();

    sub_224A6ACA0(v22, v17);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224A6ABB4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A6ABEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_224A6AC2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_224DAF698();
  return sub_224A5C288(a1, v5, &qword_281350AF0, 0x277CF0CD0);
}

void sub_224A6ACA0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_224A6ADB4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_224A6AC2C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_224B2AC58(&qword_27D6F3AC8, &qword_224DB4800);
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_224A58C3C(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

id sub_224A6ADB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A6AC2C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224A6FB90(v13, a3 & 1, &qword_27D6F3AC8, &qword_224DB4800);
      v17 = *v4;
      v8 = sub_224A6AC2C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_224B2AC58(&qword_27D6F3AC8, &qword_224DB4800);
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void sub_224A6AF54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService + 24);
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService), v2);
  (*(v3 + 32))(v16, 768, v2, v3);
  if (v17)
  {
    if (*(v17 + 16))
    {
      v4 = sub_224A79FA8(v17);
      sub_224A699F0(v16);
      goto LABEL_7;
    }

    sub_224A699F0(v16);
  }

  else
  {
    sub_224A3311C(v16, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_7:
  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService + 24);
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService), v5);
  v7 = (*(v6 + 24))(768, v5, v6);
  if (v7)
  {
    v8 = sub_224A7B208(v7);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364FD0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349312;
    if (v4 >> 62)
    {
      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    *(v12 + 12) = 2050;
    if (v8 >> 62)
    {
      v14 = sub_224DAF838();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 14) = v14;

    _os_log_impl(&dword_224A2F000, v10, v11, "Received new configured container descriptors: widgets  %{public}ld, controls %{public}ld", v12, 0x16u);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }

  v15 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v15 + 16));
  sub_224A75AB0(v4, v8);

  os_unfair_lock_unlock(*(v15 + 16));
}

uint64_t sub_224A6B208(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_224A6B274(void *a1, const char *a2)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281364E20);
    oslog = sub_224DAB228();
    v4 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_224DAEEB8();
      v9 = sub_224A33F74(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v4, a2, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x22AA5EED0](v6, -1, -1);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_224A6B3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = *(v5 + 16);
  v12(v45 - v10, v2, v4);
  v13 = *(v5 + 88);
  v14 = v13(v11, v4);
  if (v14 == *MEMORY[0x277CF9B70])
  {
    (*(v5 + 96))(v11, v4);
    v15 = *(*v11 + 16) == 0xD000000000000019 && 0x8000000224DC58C0 == *(*v11 + 24);
    if (v15 || (sub_224DAFD88() & 1) != 0)
    {
      v16 = MEMORY[0x277D46828];
    }

    else
    {
      v16 = MEMORY[0x277D46820];
    }

    v42 = *v16;
    v43 = sub_224DAB0B8();
    (*(*(v43 - 8) + 104))(a1, v42, v43);
  }

  else if (v14 == *MEMORY[0x277CF9B80])
  {
    (*(v5 + 96))(v11, v4);
    v45[1] = *v11;
    v17 = swift_projectBox();
    v12(v9, v17, v4);
    v18 = v13(v9, v4);
    v19 = *MEMORY[0x277CF9BE8];
    v20 = *MEMORY[0x277CF9BF0];
    v21 = *MEMORY[0x277CF9B88];
    v22 = *MEMORY[0x277CF9B68];
    v23 = *MEMORY[0x277CF9B60];
    v24 = sub_224DAB0B8();
    v25 = *(*(v24 - 8) + 104);
    if (v18 == v19 || v18 == v20 || v18 == v21 || v18 == v22 || v18 == v23)
    {
      v25(a1, *MEMORY[0x277D46828], v24);
    }

    else
    {
      v25(a1, *MEMORY[0x277D46820], v24);
      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    v30 = *MEMORY[0x277CF9BE8];
    v31 = *MEMORY[0x277CF9BF0];
    v32 = *MEMORY[0x277CF9B88];
    v33 = *MEMORY[0x277CF9B68];
    v34 = *MEMORY[0x277CF9B60];
    v35 = v14;
    v36 = sub_224DAB0B8();
    v37 = *(*(v36 - 8) + 104);
    if (v35 == v30 || v35 == v31 || v35 == v32 || v35 == v33 || v35 == v34)
    {
      return v37(a1, *MEMORY[0x277D46828], v36);
    }

    else
    {
      v37(a1, *MEMORY[0x277D46820], v36);
      return (*(v5 + 8))(v11, v4);
    }
  }
}

uint64_t sub_224A6B804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_224A6B84C()
{
  result = qword_281350BA0;
  if (!qword_281350BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4710, &unk_224DB65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BA0);
  }

  return result;
}

uint64_t type metadata accessor for HostDescriptorPredicate()
{
  result = qword_281356820;
  if (!qword_281356820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A6B910(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5]) = a2 + 3;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_224A6BAF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22[-1] - v5;
  v7 = *(v1 + 40);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v24 = 0;
  sub_224A3796C(a1, v6, &qword_27D6F46D0, &unk_224DBD6D0);
  v8 = type metadata accessor for HostDescriptorPredicate();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    v9 = sub_224A3311C(v6, &qword_27D6F46D0, &unk_224DBD6D0);
  }

  else
  {
    v11 = &v6[*(v8 + 40)];
    v12 = *v11;
    v13 = v11[8];
    v9 = sub_224A6C020(v6);
    if ((v13 & 1) == 0)
    {
      sub_224A3796C(v1, v22, &qword_27D6F52B8, &unk_224DBB690);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v14 = sub_224DADE28();
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_224A3311C(v22, &qword_27D6F52B8, &unk_224DBB690);
        v14 = MEMORY[0x277D84F90];
      }

      v15 = sub_224AE8AF4(v14);

      v24 = v15;
    }
  }

  MEMORY[0x28223BE20](v9);
  *(&v21 - 2) = a1;

  v16 = sub_224A6C07C(sub_224A6CCBC, (&v21 - 4), v7);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = sub_224A6CF18(v16);

  MEMORY[0x28223BE20](v19);
  *(&v21 - 4) = a1;
  *(&v21 - 3) = &v24;
  *(&v21 - 2) = v17;
  sub_224A6D2D0(sub_224A6D3D0, (&v21 - 6), v18);

  swift_beginAccess();
  v10 = *(v17 + 16);

  return v10;
}

uint64_t sub_224A6BDE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A6BE30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v11 = *(a1 + a3[5]);
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a1 + a3[5]);
    }

    v13 = v12 - 3;
    if (v11 >= 3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v16 = *(v15 - 8);
    v17 = a3[7];
LABEL_14:
    v9 = *(v16 + 48);
    v10 = a1 + v17;
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v16 = *(v18 - 8);
    v17 = a3[8];
    goto LABEL_14;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_224A6C020(uint64_t a1)
{
  v2 = type metadata accessor for HostDescriptorPredicate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_224A6C0AC(uint64_t a1)
{
  v101 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v92 = *(v100 - 8);
  v1 = *(v92 + 64);
  MEMORY[0x28223BE20](v100);
  v83 = &v83 - v2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  v3 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v91 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v83 - v14;
  v97 = sub_224DAC268();
  v99 = *(v97 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAA428();
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v17);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v93 = &v83 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v83 - v33;
  v35 = type metadata accessor for HostDescriptorPredicate();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v101, v34, &qword_27D6F46D0, &unk_224DBD6D0);
  v40 = *(v36 + 48);
  v101 = v35;
  if (v40(v34, 1, v35) == 1)
  {
    v41 = &qword_27D6F46D0;
    v42 = &unk_224DBD6D0;
    v43 = v34;
LABEL_24:
    sub_224A3311C(v43, v41, v42);
    return 1;
  }

  sub_224A6CEB4(v34, v39);
  v85 = v39;
  sub_224A3796C(v39, v23, &qword_27D6F3390, &qword_224DB35B8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_224A3311C(v23, &qword_27D6F3390, &qword_224DB35B8);
    v45 = v97;
    v44 = v98;
    v46 = v96;
  }

  else
  {
    v47 = v93;
    (*(v25 + 32))(v93, v23, v24);
    v46 = v96;
    sub_224DAA238();
    sub_224A33088(&qword_27D6F52C0, &qword_27D6F30E0, &unk_224DB2AD0);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v45 = v97;
    if (v104 == v102 && v105 == v103)
    {
      v48 = *(v25 + 8);
      v48(v29, v24);
      v48(v47, v24);

      v44 = v98;
    }

    else
    {
      v49 = sub_224DAFD88();
      v50 = *(v25 + 8);
      v50(v29, v24);
      v50(v47, v24);

      v44 = v98;
      if ((v49 & 1) == 0)
      {
        v68 = v85;
        goto LABEL_34;
      }
    }
  }

  v51 = v100;
  v52 = v101;
  v53 = v85;
  v54 = v85[*(v101 + 24)];
  v55 = v99;
  if (v54 == 3)
  {
    goto LABEL_16;
  }

  sub_224DAA1F8();
  if (!v54)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v54 != 1)
  {
    if (!v56)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v56)
  {

LABEL_26:
    v68 = v53;
LABEL_34:
    sub_224A6C020(v68);
    return 0;
  }

LABEL_16:
  if (*(v53 + *(v52 + 20)) > 1u)
  {
    if (*(v53 + *(v52 + 20)) != 2)
    {
      goto LABEL_22;
    }

    v59 = *(*v46 + 112);
    v58 = MEMORY[0x277CFA038];
  }

  else
  {
    if (!*(v53 + *(v52 + 20)))
    {
      goto LABEL_22;
    }

    v57 = *(*v46 + 112);
    v58 = MEMORY[0x277CFA040];
  }

  v60 = v88;
  v61 = v89;
  v62 = v45;
  v63 = v90;
  (*(v89 + 104))(v88, *v58, v90);
  sub_224C16D98();
  sub_224DAEFA8();
  sub_224DAEFA8();
  v64 = v60;
  v65 = v63;
  v45 = v62;
  v55 = v99;
  v51 = v100;
  (*(v61 + 8))(v64, v65);
  v52 = v101;
  if (v104 != v102)
  {
    goto LABEL_26;
  }

LABEL_22:
  v66 = v94;
  sub_224A3796C(v53 + *(v52 + 36), v94, &qword_27D6F4A18, &qword_224DB9070);
  if ((*(v55 + 48))(v66, 1, v45) == 1)
  {
    sub_224A6C020(v53);
    v41 = &qword_27D6F4A18;
    v42 = &qword_224DB9070;
    v43 = v66;
    goto LABEL_24;
  }

  (*(v55 + 32))(v95, v66, v45);
  v69 = v91;
  sub_224DAC218();
  v70 = v92;
  (*(v92 + 16))(v44, v46 + qword_281365418, v51);
  (*(v70 + 56))(v44, 0, 1, v51);
  v71 = *(v86 + 48);
  v72 = v55;
  v73 = v45;
  v74 = v87;
  sub_224A3796C(v69, v87, &qword_27D6F56C0, &unk_224DB3580);
  v101 = v71;
  sub_224A3796C(v44, v74 + v71, &qword_27D6F56C0, &unk_224DB3580);
  v75 = v44;
  v76 = *(v70 + 48);
  if (v76(v74, 1, v51) == 1)
  {
    sub_224A3311C(v75, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v69, &qword_27D6F56C0, &unk_224DB3580);
    (*(v72 + 8))(v95, v73);
    sub_224A6C020(v85);
    if (v76(v74 + v101, 1, v51) == 1)
    {
      v41 = &qword_27D6F56C0;
      v42 = &unk_224DB3580;
      v43 = v74;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v77 = v84;
  sub_224A3796C(v74, v84, &qword_27D6F56C0, &unk_224DB3580);
  v78 = v101;
  if (v76(v74 + v101, 1, v51) == 1)
  {
    sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
    (*(v72 + 8))(v95, v73);
    sub_224A6C020(v85);
    (*(v92 + 8))(v77, v51);
LABEL_32:
    sub_224A3311C(v74, &qword_27D6F33C8, &qword_224DB3600);
    return 0;
  }

  v79 = v92;
  v80 = v83;
  (*(v92 + 32))(v83, v74 + v78, v51);
  sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
  v81 = sub_224DAEDD8();
  v82 = *(v79 + 8);
  v82(v80, v51);
  sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
  sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
  (*(v72 + 8))(v95, v73);
  sub_224A6C020(v85);
  v82(v77, v51);
  sub_224A3311C(v74, &qword_27D6F56C0, &unk_224DB3580);
  return (v81 & 1) != 0;
}

BOOL sub_224A6CCBC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_224A6C0AC(v2);
}

uint64_t sub_224A6CD14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = result;
  v6 = 0;
  v19 = MEMORY[0x277D84F90];
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {

      return v19;
    }

    v10 = *(v7 + 8 * v14);
    ++v6;
  }

  while (!v10);
  while (1)
  {
    v18 = *(*(v4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));

    v15 = v17(&v18);
    if (v3)
    {
      break;
    }

    v10 &= v10 - 1;
    if (v15)
    {
      sub_224DAF9B8();
      v12 = a2;
      v13 = *(v19 + 16);
      sub_224DAF9F8();
      a2 = v12;
      v4 = a3;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v6 = v14;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v6 = v14;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = v6;
  }
}

uint64_t sub_224A6CEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostDescriptorPredicate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A6CF18(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v7 = [*(v4 + *(*v4 + 104)) containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_224DAF838() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_224DAF838();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
              v20 = sub_224A6996C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

void sub_224A6D2D0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_224A6D3F0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v8 = sub_224DAF008();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  v9 = sub_224DAF838();
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    v16 = v9;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AA5DCC0](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = *a3;

      v15 = sub_224A6D624(a2, v14);

      if (v15)
      {
        swift_beginAccess();
        if (!*(a4 + 16))
        {
          swift_beginAccess();
          *(a4 + 16) = MEMORY[0x277D84F90];
        }

        swift_beginAccess();
        v11 = v13;
        MEMORY[0x22AA5D350]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        swift_endAccess();
        v9 = v16;
      }

      ++v10;
    }

    while (v9 != v10);
    goto LABEL_17;
  }

  __break(1u);
}

BOOL sub_224A6D624(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v64 - v4;
  v5 = sub_224DABE18();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v64 - v10;
  v11 = sub_224DAC268();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v64 - v25;
  v27 = type metadata accessor for HostDescriptorPredicate();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v75, v26, &qword_27D6F46D0, &unk_224DBD6D0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_224A3311C(v26, &qword_27D6F46D0, &unk_224DBD6D0);
    return 1;
  }

  sub_224A6CEB4(v26, v31);
  sub_224A3796C(&v31[v27[7]], v17, &unk_27D6F6140, qword_224DBB6B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_224A3311C(v17, &unk_27D6F6140, qword_224DBB6B0);
LABEL_9:
    v41 = v73;
    goto LABEL_10;
  }

  v33 = v31;
  (*(v19 + 32))(v22, v17, v18);
  v34 = sub_224DA9FE8();
  v36 = v35;
  v37 = [v74 extensionBundleIdentifier];
  v38 = sub_224DAEE18();
  v40 = v39;

  if (v34 == v38 && v36 == v40)
  {

    (*(v19 + 8))(v22, v18);
    v31 = v33;
    goto LABEL_9;
  }

  v63 = sub_224DAFD88();

  (*(v19 + 8))(v22, v18);
  v31 = v33;
  v41 = v73;
  if ((v63 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v42 = v70;
  sub_224A3796C(&v31[v27[9]], v70, &qword_27D6F4A18, &qword_224DB9070);
  v44 = v71;
  v43 = v72;
  if ((*(v71 + 48))(v42, 1, v72) == 1)
  {
    sub_224A3311C(v42, &qword_27D6F4A18, &qword_224DB9070);
    v45 = v74;
  }

  else
  {
    (*(v44 + 32))(v41, v42, v43);
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v45 = v74;
    v50 = [v74 widget];
    v51 = sub_224DAC248();
    v52 = sub_224DAF6A8();

    if ((v52 & 1) == 0)
    {
      (*(v44 + 8))(v41, v43);
      goto LABEL_24;
    }

    v53 = [v45 metrics];
    v54 = sub_224DAC258();
    v55 = sub_224DAF6A8();

    (*(v44 + 8))(v41, v43);
    if ((v55 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v46 = v66;
  sub_224A3796C(&v31[v27[8]], v66, &unk_27D6F6130, &unk_224DBB6A0);
  v48 = v67;
  v47 = v68;
  if ((*(v67 + 48))(v46, 1, v68) == 1)
  {
    sub_224A3311C(v46, &unk_27D6F6130, &unk_224DBB6A0);
    v49 = v69;
    goto LABEL_18;
  }

  v56 = v65;
  (*(v48 + 32))(v65, v46, v47);
  v57 = [v45 widget];
  v58 = sub_224DABE08();

  (*(v48 + 8))(v56, v47);
  v49 = v69;
  if ((v58 & 1) == 0)
  {
LABEL_24:
    sub_224A6C020(v31);
    return 0;
  }

LABEL_18:
  if (!v49)
  {
    sub_224A6C020(v31);
    return 1;
  }

  v59 = [v45 uniqueIdentifier];
  v60 = sub_224DAEE18();
  v62 = v61;

  LOBYTE(v59) = sub_224A3A53C(v60, v62, v49);

  sub_224A6C020(v31);
  return (v59 & 1) != 0;
}

size_t sub_224A6DE18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B90, &qword_224DB3CB8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224A6DF20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224A6E1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A6E240()
{
  result = qword_281350E70;
  if (!qword_281350E70)
  {
    sub_224DABE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350E70);
  }

  return result;
}

uint64_t sub_224A6E298(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v8);
  v13 = &v28[-v12];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v1[5];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14 - 1;
  v1[5] = v15;
  if (v15)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v1 + 32) = 1;
    if ((a1 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = v1[6];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16 - 1;
  v1[6] = v17;
  if (!v17)
  {
    a1 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v1 + a1, &v29, &unk_27D6F4700, &unk_224DB3A10);
    if (v30)
    {
      sub_224A36F98(&v29, v31);
      a1 = v32;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v2 = v1;
      if (sub_224DAE278())
      {
        v3 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v1 + v3, v13, &qword_27D6F3948, &qword_224DB5C10);
        a1 = sub_224DAC378();
        v4 = *(a1 - 8);
        v18 = (*(v4 + 48))(v13, 1, a1);
        sub_224A3311C(v13, &qword_27D6F3948, &qword_224DB5C10);
        if (v18 != 1)
        {
          goto LABEL_25;
        }

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          if (qword_281351430 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_26;
        }
      }

      goto LABEL_17;
    }

    result = sub_224A3311C(&v29, &unk_27D6F4700, &unk_224DB3A10);
  }

LABEL_19:
  while (v1[5] < v1[6])
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_14:
    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364D60);

    v1 = v2;
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      *v23 = 138543362;
      v24 = v1[2];
      *(v23 + 4) = v24;
      *v2 = v24;
      v25 = v24;
      _os_log_impl(&dword_224A2F000, v21, v22, "[ext:%{public}@] starting grace", v23, 0xCu);
      sub_224A3311C(v2, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v2, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    v26 = *&v13[OBJC_IVAR____TtC10ChronoCore15LocationService_inUseNanosecondsOfGrace];
    sub_224DAC308();

    v27 = *(v4 + 56);
    v4 += 56;
    v27(v10, 0, 1, a1);
    swift_beginAccess();
    sub_224A838C0(v10, v1 + v3, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();
LABEL_17:
    result = __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return result;
}

void sub_224A6E6A4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364EC8);
  v8 = a1;
  v9 = a2;
  v10 = sub_224DAB228();
  v11 = sub_224DAF278();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 1026;
    v14 = v9;
    v15 = [v8 BOOLValue];

    *(v12 + 14) = v15;
    _os_log_impl(&dword_224A2F000, v10, v11, "Received setVisiblySettled for %{public}@: %{BOOL,public}d", v12, 0x12u);
    sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {

    v10 = v8;
  }

  v16 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v16 + 16));
  v17 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v18 = *(v3 + v17);

  v19 = sub_224A71D20(v9, v18);

  os_unfair_lock_unlock(*(v16 + 16));
  if (v19)
  {
    v20 = [v8 BOOLValue];
    v21 = *(v19 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled);
    *(v19 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled) = v20;
    sub_224A6F948(v21);
  }
}

uint64_t sub_224A6E964(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_224DAC378();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v64[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v64[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v64[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v76 = &v64[-v26];
  result = MEMORY[0x28223BE20](v25);
  v79 = &v64[-v31];
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    return result;
  }

  v67 = v30;
  v68 = v29;
  v74 = a3;
  v75 = v7;
  v69 = v28;
  v32 = *(a2 + 16);
  v33 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v71 = v32;
  v72 = a1;
  v34 = sub_224A71E2C(v32, *(a1 + v33), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  result = swift_endAccess();
  if (!v34)
  {
    __break(1u);
    return result;
  }

  v35 = v76;
  if (v34 != a2)
  {
    __break(1u);
    goto LABEL_33;
  }

  a1 = a2;
  sub_224A71B08(v24);
  *(a2 + 32) = 0;
  sub_224A6E298(v74 & 1);
  v36 = *(a2 + 32);
  *(a2 + 32) = 2;
  v70 = v3;
  if ((v36 & 1) == 0)
  {
    sub_224A71DBC(v24, v35);
    goto LABEL_9;
  }

  sub_224A6FDF8();
  v66 = a2;
  sub_224A71B08(v21);
  sub_224A3796C(v21, v35, &qword_27D6F3948, &qword_224DB5C10);
  v37 = *(v10 + 48);
  sub_224A3796C(v24, v13, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3796C(v21, &v13[v37], &qword_27D6F3948, &qword_224DB5C10);
  v38 = *(v77 + 48);
  v39 = v75;
  if (v38(v13, 1, v75) == 1)
  {
    sub_224A3311C(v21, &qword_27D6F3948, &qword_224DB5C10);
    v35 = v76;
    sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
    v40 = v38(&v13[v37], 1, v39);
    a1 = v66;
    if (v40 == 1)
    {
      sub_224A3311C(v13, &qword_27D6F3948, &qword_224DB5C10);
LABEL_9:
      LOBYTE(a2) = 0;
LABEL_13:
      v24 = v79;
      goto LABEL_14;
    }

LABEL_12:
    sub_224A3311C(v13, &qword_27D6F6938, &qword_224DC0A70);
    LOBYTE(a2) = 1;
    goto LABEL_13;
  }

  a2 = v67;
  sub_224A3796C(v13, v67, &qword_27D6F3948, &qword_224DB5C10);
  if (v38(&v13[v37], 1, v39) == 1)
  {
    sub_224A3311C(v21, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
    (*(v77 + 8))(a2, v39);
    a1 = v66;
    goto LABEL_12;
  }

  v62 = v73;
  (*(v77 + 32))(v73, &v13[v37], v39);
  sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
  v65 = sub_224DAEDD8();
  v63 = *(v77 + 8);
  v63(v62, v39);
  sub_224A3311C(v21, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
  v63(a2, v39);
  sub_224A3311C(v13, &qword_27D6F3948, &qword_224DB5C10);
  LOBYTE(a2) = v65 ^ 1;
  v24 = v79;
  a1 = v66;
LABEL_14:
  sub_224A71DBC(v35, v24);
  if (qword_281351430 != -1)
  {
LABEL_33:
    swift_once();
  }

  v41 = sub_224DAB258();
  __swift_project_value_buffer(v41, qword_281364D60);

  v42 = sub_224DAB228();
  v43 = sub_224DAF278();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v78 = v46;
    *v44 = 138543618;
    v47 = v71;
    *(v44 + 4) = v71;
    *v45 = v47;
    *(v44 + 12) = 2082;
    if (v74)
    {
      v48 = 0x7465736572;
    }

    else
    {
      v48 = 1701736302;
    }

    v49 = a1;
    if (v74)
    {
      v50 = 0xE500000000000000;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    v51 = v47;
    v52 = sub_224A33F74(v48, v50, &v78);
    a1 = v49;

    *(v44 + 14) = v52;
    v24 = v79;
    _os_log_impl(&dword_224A2F000, v42, v43, "[ext:%{public}@] released assertion marking visible with grace policy %{public}s", v44, 0x16u);
    sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);
  }

  v53 = v72;
  if (a2)
  {
    v54 = (*(v77 + 48))(v24, 1, v75);
    v55 = *(v53 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    if (v54 == 1)
    {
      swift_beginAccess();

      v56 = v69;
      sub_224B0E020(v71, v69);
      sub_224A3311C(v56, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
    }

    else
    {
      v57 = a1;
      v58 = v69;
      sub_224A3796C(v24, v69, &qword_27D6F3948, &qword_224DB5C10);
      v59 = v68;
      sub_224A3796C(v58, v68, &qword_27D6F3948, &qword_224DB5C10);
      swift_beginAccess();
      v60 = v71;

      sub_224A83A8C(v59, v60);
      swift_endAccess();

      v61 = v58;
      a1 = v57;
      sub_224A3311C(v61, &qword_27D6F3948, &qword_224DB5C10);
    }

    sub_224A83EBC();
    sub_224A6F4FC(a1);
    sub_224A843F0();
  }

  else
  {
    sub_224A6F4FC(a1);
  }

  return sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
}

void sub_224A6F268(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2)
  {
    v6 = sub_224A3E7EC(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2993C();
        v11 = v15;
      }

      sub_224A58C3C(v8, v11);
      *v4 = v11;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_224A8A0B0(a1, a3, v13);

    *v4 = v16;
  }
}

uint64_t sub_224A6F360(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16))
  {
    v6 = sub_224A3E7EC(a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      swift_beginAccess();
      if (v8 <= 1)
      {
        sub_224A6F268(0, 1, a2);
      }

      else
      {
        v9 = *(a1 + v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(a1 + v4);
        *(a1 + v4) = 0x8000000000000000;
        sub_224A8A0B0(v8 - 1, a2, isUniquelyReferenced_nonNull_native);
        *(a1 + v4) = v12;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_224A6F460(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 240);
    os_unfair_lock_lock(*(v5 + 16));
    sub_224A6F360(v4, a2);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

void sub_224A6F4FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(a1 + 40))
  {
    return;
  }

  v10 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  sub_224A3796C(a1 + v10, v9, &qword_27D6F3948, &qword_224DB5C10);
  v11 = sub_224DAC378();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  sub_224A3311C(v9, &qword_27D6F3948, &qword_224DB5C10);
  if (v13 != 1 || *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount) || *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount) || (*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) & 1) != 0)
  {
    return;
  }

  sub_224A71B08(v7);
  v14 = v12(v7, 1, v11);
  sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
  if (v14 != 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  swift_beginAccess();
  sub_224B0E8A4(v7);
  swift_endAccess();

  if (qword_281351430 != -1)
  {
LABEL_13:
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281364D60);

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v7;
    *v19 = v7;
    v20 = v7;
    _os_log_impl(&dword_224A2F000, v16, v17, "[ext:%{public}@] stopped tracking", v18, 0xCu);
    sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }
}

uint64_t sub_224A6F83C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v7 + 16));
    sub_224A6E964(v6, a2, a3 & 1);
    os_unfair_lock_unlock(*(v7 + 16));
  }

  return result;
}

uint64_t objectdestroy_72Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_224A6F948(char a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled) != (a1 & 1))
  {
    v3 = v1;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364EB0);
    swift_retain_n();
    v5 = sub_224DAB228();
    v6 = sub_224DAF2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543618;
      v9 = *(v3 + 24);
      *(v7 + 4) = v9;
      *v8 = v9;
      *(v7 + 12) = 1026;
      v10 = *(v3 + v2);
      v11 = v9;

      *(v7 + 14) = v10;

      _os_log_impl(&dword_224A2F000, v5, v6, "[%{public}@] Visibility did change: %{BOOL,public}d", v7, 0x12u);
      sub_224A3311C(v8, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v8, -1, -1);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }

    else
    {
    }

    v12 = *(v3 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion);
    if (v12)
    {
      v13 = *(v3 + v2);
      v14 = *(v12 + 144);
      v15 = *(v14 + 16);

      os_unfair_lock_lock(v15);
      sub_224A71EF0(v12, v13);
      os_unfair_lock_unlock(*(v14 + 16));
    }
  }
}

char *sub_224A6FB70(char *a1, int64_t a2, char a3)
{
  result = sub_224A737DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_224A6FB90(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_224DAF698();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_224A6FDF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v223 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v223 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v223 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v223 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v231 = *(v20 - 8);
  v232 = v20;
  v21 = *(v231 + 64);
  MEMORY[0x28223BE20](v20);
  v230 = &v223 - v22;
  if (*(v1 + 32) != 2)
  {
    __break(1u);
    goto LABEL_120;
  }

  v229 = v14;
  v23 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v1 + v23, &v237, &unk_27D6F4700, &unk_224DB3A10);
  v24 = &unk_28135B000;
  if (!*(&v238 + 1))
  {
    sub_224A3311C(&v237, &unk_27D6F4700, &unk_224DB3A10);
    v6 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
    if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility))
    {
      goto LABEL_17;
    }

    v17 = v6[1];
    v50 = qword_281351430;
    swift_unknownObjectRetain();
    if (v50 == -1)
    {
LABEL_14:
      v51 = sub_224DAB258();
      __swift_project_value_buffer(v51, qword_281364D60);

      v52 = sub_224DAB228();
      v53 = sub_224DAF2A8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138543362;
        v56 = *(v1 + 16);
        *(v54 + 4) = v56;
        *v55 = v56;
        v57 = v56;
        _os_log_impl(&dword_224A2F000, v52, v53, "[ext:%{public}@] invalidating underlying visibility assertion : ambiguous", v54, 0xCu);
        sub_224A3311C(v55, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v55, -1, -1);
        MEMORY[0x22AA5EED0](v54, -1, -1);
      }

      ObjectType = swift_getObjectType();
      (*(v17 + 2))(ObjectType, v17);
      swift_unknownObjectRelease();
      v59 = *v6;
      *v6 = 0;
      v6[1] = 0;
      swift_unknownObjectRelease();
      v24 = &unk_28135B000;
LABEL_17:
      if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount))
      {
        v112 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
        if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
        {
          v113 = v112[1];
          v114 = qword_281351430;
          v115 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
          swift_unknownObjectRetain();
          if (v114 != -1)
          {
            swift_once();
          }

          v116 = sub_224DAB258();
          __swift_project_value_buffer(v116, qword_281364D60);

          v117 = sub_224DAB228();
          v118 = sub_224DAF2A8();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            *v119 = 138543362;
            v121 = *(v1 + 16);
            *(v119 + 4) = v121;
            *v120 = v121;
            v122 = v121;
            _os_log_impl(&dword_224A2F000, v117, v118, "[ext:%{public}@] invalidating underlying activity assertion : ambiguous", v119, 0xCu);
            sub_224A3311C(v120, &unk_27D6F69F0, &unk_224DB3900);
            v123 = v120;
            v24 = &unk_28135B000;
            MEMORY[0x22AA5EED0](v123, -1, -1);
            MEMORY[0x22AA5EED0](v119, -1, -1);
          }

          v124 = swift_getObjectType();
          (*(v113 + 16))(v124, v113);
          swift_unknownObjectRelease();
          v125 = *v112;
          *v112 = 0;
          v112[1] = 0;
          swift_unknownObjectRelease();
        }

        goto LABEL_114;
      }

      v60 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      sub_224A3796C(v1 + v60, v11, &qword_27D6F3948, &qword_224DB5C10);
      v61 = sub_224DAC378();
      LODWORD(v60) = (*(*(v61 - 8) + 48))(v11, 1, v61);
      sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
      if (v60 == 1 || (v62 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity), *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity)) || (Strong = swift_weakLoadStrong()) == 0)
      {
LABEL_114:
        v221 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
        swift_beginAccess();
        sub_224A3796C(v1 + v221, &v237, &qword_27D6F3AE8, &unk_224DB9600);
        if (!*(&v238 + 1))
        {
          result = sub_224A3311C(&v237, &qword_27D6F3AE8, &unk_224DB9600);
          goto LABEL_117;
        }

        sub_224A36F98(&v237, v240);
        __swift_project_boxed_opaque_existential_1(v240, v241);
        sub_224DAE1F8();
        v239 = 0;
        v237 = 0u;
        v238 = 0u;
        swift_beginAccess();
        sub_224A838C0(&v237, v1 + v221, &qword_27D6F3AE8, &unk_224DB9600);
        swift_endAccess();
        goto LABEL_116;
      }

      v64 = v232;
      v65 = *(Strong + 80);
      v66 = *(Strong + 88);
      v67 = *(v1 + 16);
      v68 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v69 = v231;
      v70 = &v67[v68];
      v71 = v230;
      (*(v231 + 16))(v230, v70, v64);
      v72 = (*(v66 + 8))(v71, v65, v66);
      v74 = v73;
      (*(v69 + 8))(v71, v64);
      v75 = *v62;
      *v62 = v72;
      v62[1] = v74;
      swift_unknownObjectRelease();
      if (*v62)
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v76 = sub_224DAB258();
        __swift_project_value_buffer(v76, qword_281364D60);

        v77 = sub_224DAB228();
        v78 = sub_224DAF2A8();

        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_113;
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        *(v79 + 4) = v67;
        *v80 = v67;
        v81 = v67;
        v82 = "[ext:%{public}@] acquired new underlying activity assertion : ambiguous";
      }

      else
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v219 = sub_224DAB258();
        __swift_project_value_buffer(v219, qword_281364D60);

        v77 = sub_224DAB228();
        v78 = sub_224DAF288();

        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_113;
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        *(v79 + 4) = v67;
        *v80 = v67;
        v220 = v67;
        v82 = "[ext:%{public}@] failed to acquire new underlying activity assertion : ambiguous";
      }

      _os_log_impl(&dword_224A2F000, v77, v78, v82, v79, 0xCu);
      sub_224A3311C(v80, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v79, -1, -1);
LABEL_113:

      v24 = &unk_28135B000;
      goto LABEL_114;
    }

LABEL_120:
    swift_once();
    goto LABEL_14;
  }

  v226 = v6;
  v227 = v3;
  v228 = v2;
  sub_224A36F98(&v237, v240);
  v25 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  v26 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  v225 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility + 8);
  __swift_project_boxed_opaque_existential_1(v240, v241);
  v233 = v26;
  swift_unknownObjectRetain();
  if ((sub_224DAE278() & 1) == 0)
  {
    if (*v25)
    {
      v83 = v25[1];
      v84 = qword_281351430;
      v85 = *v25;
      swift_unknownObjectRetain();
      if (v84 != -1)
      {
        swift_once();
      }

      v86 = sub_224DAB258();
      __swift_project_value_buffer(v86, qword_281364D60);

      v87 = sub_224DAB228();
      v88 = sub_224DAF2A8();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = 138543362;
        v91 = *(v1 + 16);
        *(v89 + 4) = v91;
        *v90 = v91;
        v92 = v91;
        _os_log_impl(&dword_224A2F000, v87, v88, "[ext:%{public}@] invalidating underlying visibility assertion : extension doesn't want location", v89, 0xCu);
        sub_224A3311C(v90, &unk_27D6F69F0, &unk_224DB3900);
        v93 = v90;
        v24 = &unk_28135B000;
        MEMORY[0x22AA5EED0](v93, -1, -1);
        MEMORY[0x22AA5EED0](v89, -1, -1);
      }

      v94 = swift_getObjectType();
      (*(v83 + 16))(v94, v83);
      swift_unknownObjectRelease();
      v95 = *v25;
      *v25 = 0;
      v25[1] = 0;
      swift_unknownObjectRelease();
    }

    v96 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
    if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
    {
      v97 = v96[1];
      v98 = qword_281351430;
      v99 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
      swift_unknownObjectRetain();
      if (v98 != -1)
      {
        swift_once();
      }

      v100 = sub_224DAB258();
      __swift_project_value_buffer(v100, qword_281364D60);

      v101 = sub_224DAB228();
      v102 = sub_224DAF2A8();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v224 = v25;
        v105 = v104;
        *v103 = 138543362;
        v106 = *(v1 + 16);
        *(v103 + 4) = v106;
        *v104 = v106;
        v107 = v106;
        _os_log_impl(&dword_224A2F000, v101, v102, "[ext:%{public}@] invalidating underlying activity assertion : extension doesn't want location", v103, 0xCu);
        sub_224A3311C(v105, &unk_27D6F69F0, &unk_224DB3900);
        v108 = v105;
        v24 = &unk_28135B000;
        v25 = v224;
        MEMORY[0x22AA5EED0](v108, -1, -1);
        MEMORY[0x22AA5EED0](v103, -1, -1);
      }

      v109 = swift_getObjectType();
      (*(v97 + 16))(v109, v97);
      swift_unknownObjectRelease();
      v110 = *v96;
      *v96 = 0;
      v96[1] = 0;
      swift_unknownObjectRelease();
    }

    v111 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v1 + v111, &v234, &qword_27D6F3AE8, &unk_224DB9600);
    if (!*(&v235 + 1))
    {
      goto LABEL_80;
    }

    goto LABEL_39;
  }

  v27 = *v25;
  if (*(v1 + 40))
  {
    if (!v27)
    {
      v28 = swift_weakLoadStrong();
      if (v28)
      {
        v29 = *(v28 + 80);
        v30 = *(v28 + 88);
        v31 = *(v1 + 16);
        v32 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v33 = v231;
        v34 = *(v231 + 16);
        v224 = v31;
        v35 = v31 + v32;
        v36 = v230;
        v37 = v232;
        v34(v230, v35, v232);
        v38 = (*(v30 + 8))(v36, v29, v30);
        v40 = v39;
        (*(v33 + 8))(v36, v37);
        v41 = *v25;
        *v25 = v38;
        v25[1] = v40;
        swift_unknownObjectRelease();
        if (*v25)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v42 = sub_224DAB258();
          __swift_project_value_buffer(v42, qword_281364D60);

          v43 = sub_224DAB228();
          v44 = sub_224DAF2A8();

          if (!os_log_type_enabled(v43, v44))
          {
            goto LABEL_59;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138543362;
          v47 = v224;
          *(v45 + 4) = v224;
          *v46 = v47;
          v48 = v47;
          v49 = "[ext:%{public}@] acquired new underlying visibility assertion";
        }

        else
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v138 = sub_224DAB258();
          __swift_project_value_buffer(v138, qword_281364D60);

          v43 = sub_224DAB228();
          v44 = sub_224DAF288();

          if (!os_log_type_enabled(v43, v44))
          {
            goto LABEL_59;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138543362;
          v139 = v224;
          *(v45 + 4) = v224;
          *v46 = v139;
          v140 = v139;
          v49 = "[ext:%{public}@] failed to acquire new underlying visibility assertion";
        }

        _os_log_impl(&dword_224A2F000, v43, v44, v49, v45, 0xCu);
        sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v46, -1, -1);
        MEMORY[0x22AA5EED0](v45, -1, -1);
LABEL_59:
      }
    }
  }

  else if (v27)
  {
    v126 = v25[1];
    v127 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    sub_224A3796C(v1 + v127, v19, &qword_27D6F3948, &qword_224DB5C10);
    v128 = sub_224DAC378();
    if ((*(*(v128 - 8) + 48))(v19, 1, v128) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10);
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v129 = sub_224DAB258();
      __swift_project_value_buffer(v129, qword_281364D60);

      v130 = sub_224DAB228();
      v131 = sub_224DAF2A8();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v132 = 138543362;
        v134 = *(v1 + 16);
        *(v132 + 4) = v134;
        *v133 = v134;
        v135 = v134;
        _os_log_impl(&dword_224A2F000, v130, v131, "[ext:%{public}@] invalidating underlying visibility assertion", v132, 0xCu);
        sub_224A3311C(v133, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v133, -1, -1);
        MEMORY[0x22AA5EED0](v132, -1, -1);
      }

      v136 = swift_getObjectType();
      (*(v126 + 16))(v136, v126);
      swift_unknownObjectRelease();
      v137 = *v25;
      *v25 = 0;
      v25[1] = 0;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10);
    }
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount))
  {
    if (*(v1 + 40) || (v141 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, swift_beginAccess(), sub_224A3796C(v1 + v141, v17, &qword_27D6F3948, &qword_224DB5C10), v142 = sub_224DAC378(), LODWORD(v141) = (*(*(v142 - 8) + 48))(v17, 1, v142), sub_224A3311C(v17, &qword_27D6F3948, &qword_224DB5C10), v141 != 1))
    {
      v143 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
      if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
      {
        v144 = swift_weakLoadStrong();
        if (v144)
        {
          v224 = v25;
          v145 = *(v144 + 80);
          v146 = *(v144 + 88);
          v147 = *(v1 + 16);
          v148 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v149 = v231;
          v150 = v232;
          v151 = &v147[v148];
          v152 = v230;
          (*(v231 + 16))(v230, v151, v232);
          v153 = (*(v146 + 8))(v152, v145, v146);
          v155 = v154;
          (*(v149 + 8))(v152, v150);
          v156 = *v143;
          *v143 = v153;
          v143[1] = v155;
          swift_unknownObjectRelease();
          if (*v143)
          {
            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v157 = sub_224DAB258();
            __swift_project_value_buffer(v157, qword_281364D60);

            v158 = sub_224DAB228();
            v159 = sub_224DAF2A8();

            v160 = os_log_type_enabled(v158, v159);
            v25 = v224;
            if (v160)
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              *v161 = 138543362;
              *(v161 + 4) = v147;
              *v162 = v147;
              v163 = v147;
              v164 = "[ext:%{public}@] acquired new underlying activity assertion";
LABEL_86:
              _os_log_impl(&dword_224A2F000, v158, v159, v164, v161, 0xCu);
              sub_224A3311C(v162, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v162, -1, -1);
              MEMORY[0x22AA5EED0](v161, -1, -1);
            }
          }

          else
          {
            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v182 = sub_224DAB258();
            __swift_project_value_buffer(v182, qword_281364D60);

            v158 = sub_224DAB228();
            v159 = sub_224DAF288();

            v183 = os_log_type_enabled(v158, v159);
            v25 = v224;
            if (v183)
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              *v161 = 138543362;
              *(v161 + 4) = v147;
              *v162 = v147;
              v184 = v147;
              v164 = "[ext:%{public}@] failed to acquire new underlying activity assertion";
              goto LABEL_86;
            }
          }

          if (*(v1 + 40))
          {
            goto LABEL_88;
          }

          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    v165 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
    if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
    {
      v166 = v165[1];
      v167 = qword_281351430;
      v168 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
      swift_unknownObjectRetain();
      if (v167 != -1)
      {
        swift_once();
      }

      v169 = sub_224DAB258();
      __swift_project_value_buffer(v169, qword_281364D60);

      v170 = sub_224DAB228();
      v171 = sub_224DAF2A8();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *v172 = 138543362;
        v174 = *(v1 + 16);
        *(v172 + 4) = v174;
        *v173 = v174;
        v175 = v174;
        _os_log_impl(&dword_224A2F000, v170, v171, "[ext:%{public}@] invalidating underlying activity assertion", v172, 0xCu);
        sub_224A3311C(v173, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v173, -1, -1);
        MEMORY[0x22AA5EED0](v172, -1, -1);
      }

      v176 = swift_getObjectType();
      (*(v166 + 16))(v176, v166);
      swift_unknownObjectRelease();
      v177 = *v165;
      *v165 = 0;
      v165[1] = 0;
      swift_unknownObjectRelease();
    }
  }

  if (*(v1 + 40))
  {
    goto LABEL_88;
  }

LABEL_77:
  v178 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  v179 = v229;
  sub_224A3796C(v1 + v178, v229, &qword_27D6F3948, &qword_224DB5C10);
  v180 = sub_224DAC378();
  LODWORD(v178) = (*(*(v180 - 8) + 48))(v179, 1, v180);
  sub_224A3311C(v179, &qword_27D6F3948, &qword_224DB5C10);
  if (v178 != 1 || *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount))
  {
LABEL_88:
    v185 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v1 + v185, &v237, &qword_27D6F3AE8, &unk_224DB9600);
    v186 = *(&v238 + 1);
    sub_224A3311C(&v237, &qword_27D6F3AE8, &unk_224DB9600);
    v24 = &unk_28135B000;
    v181 = v233;
    if (!v186 && swift_weakLoadStrong())
    {
      __swift_project_boxed_opaque_existential_1(v240, v241);
      sub_224DAE328();
      v187 = v226;
      sub_224DA9FF8();
      sub_224D26978(v187, &v237);

      (*(v227 + 8))(v187, v228);
      swift_beginAccess();
      sub_224A838C0(&v237, v1 + v185, &qword_27D6F3AE8, &unk_224DB9600);
      swift_endAccess();
    }

    goto LABEL_91;
  }

  v111 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
  swift_beginAccess();
  sub_224A3796C(v1 + v111, &v234, &qword_27D6F3AE8, &unk_224DB9600);
  v24 = &unk_28135B000;
  if (!*(&v235 + 1))
  {
LABEL_80:
    sub_224A3311C(&v234, &qword_27D6F3AE8, &unk_224DB9600);
    goto LABEL_81;
  }

LABEL_39:
  sub_224A36F98(&v234, &v237);
  __swift_project_boxed_opaque_existential_1(&v237, *(&v238 + 1));
  sub_224DAE1F8();
  v236 = 0;
  v234 = 0u;
  v235 = 0u;
  swift_beginAccess();
  sub_224A838C0(&v234, v1 + v111, &qword_27D6F3AE8, &unk_224DB9600);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v237);
LABEL_81:
  v181 = v233;
LABEL_91:
  if (*(v1 + v24[488]) != 1 || !*v25)
  {
LABEL_102:
    swift_unknownObjectRelease();
    goto LABEL_116;
  }

  if (v181)
  {
    if (v181 == *v25)
    {
      v188 = swift_weakLoadStrong();
      if (v188)
      {
        v189 = *(v188 + 80);
        v190 = *(v188 + 88);
        v191 = *(v1 + 16);
        v192 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v193 = v231;
        v194 = &v191[v192];
        v195 = v230;
        v196 = v25;
        v197 = v232;
        (*(v231 + 16))(v230, v194, v232);
        v198 = (*(v190 + 8))(v195, v189, v190);
        v200 = v199;
        (*(v193 + 8))(v195, v197);
        v201 = *v196;
        *v196 = v198;
        v196[1] = v200;
        swift_unknownObjectRelease();
        if (*v196)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v202 = sub_224DAB258();
          __swift_project_value_buffer(v202, qword_281364D60);

          v203 = sub_224DAB228();
          v204 = sub_224DAF2A8();

          if (os_log_type_enabled(v203, v204))
          {
            v205 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            *v205 = 138543362;
            *(v205 + 4) = v191;
            *v206 = v191;
            v207 = v191;
            _os_log_impl(&dword_224A2F000, v203, v204, "[ext:%{public}@] refreshing underlying visibility assertion", v205, 0xCu);
            sub_224A3311C(v206, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v206, -1, -1);
            MEMORY[0x22AA5EED0](v205, -1, -1);
          }

          v208 = swift_getObjectType();
          v209 = v225;
          v210 = *(v225 + 16);
          swift_unknownObjectRetain();
          v210(v208, v209);

          swift_unknownObjectRelease_n();
          v24 = &unk_28135B000;
        }

        else
        {
          v211 = v225;
          *v196 = v233;
          v196[1] = v211;
          v212 = qword_281351430;
          swift_unknownObjectRetain();
          if (v212 != -1)
          {
            swift_once();
          }

          v213 = sub_224DAB258();
          __swift_project_value_buffer(v213, qword_281364D60);

          v214 = sub_224DAB228();
          v215 = sub_224DAF288();

          if (os_log_type_enabled(v214, v215))
          {
            v216 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *v216 = 138543362;
            *(v216 + 4) = v191;
            *v217 = v191;
            v218 = v191;
            _os_log_impl(&dword_224A2F000, v214, v215, "[ext:%{public}@] failed to refresh underlying visibility assertion", v216, 0xCu);
            sub_224A3311C(v217, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v217, -1, -1);
            MEMORY[0x22AA5EED0](v216, -1, -1);
          }

          swift_unknownObjectRelease();
          v24 = &unk_28135B000;
        }

        goto LABEL_116;
      }
    }

    goto LABEL_102;
  }

LABEL_116:
  result = __swift_destroy_boxed_opaque_existential_1(v240);
LABEL_117:
  *(v1 + v24[488]) = 0;
  return result;
}

uint64_t sub_224A71B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v2 + v4, &v10, &unk_27D6F4700, &unk_224DB3A10);
  if (v11)
  {
    sub_224A36F98(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    if (sub_224DAE278())
    {
      if (*(v2 + 48))
      {
        sub_224DAC2E8();
        v5 = sub_224DAC378();
        (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
      }

      else
      {
        v9 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v2 + v9, a1, &qword_27D6F3948, &qword_224DB5C10);
      }
    }

    else
    {
      v8 = sub_224DAC378();
      (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_224A3311C(&v10, &unk_27D6F4700, &unk_224DB3A10);
    v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    return sub_224A3796C(v2 + v6, a1, &qword_27D6F3948, &qword_224DB5C10);
  }
}

unint64_t sub_224A71CD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_224DAF698();
  return sub_224A5C288(a1, v5, &qword_2813508E8, 0x277D7BC20);
}

uint64_t sub_224A71D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AE8, &unk_224DB9600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A71DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A71E2C(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_224DAFB08();

    if (v7)
    {
      a4(0);
      swift_dynamicCast();
      return v12;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
    }
  }

  return 0;
}

void sub_224A71EF0(uint64_t a1, char a2)
{
  if (*(a1 + 272) != (a2 & 1))
  {
    *(a1 + 272) = a2 & 1;
    if (a2)
    {
      sub_224A3796C(a1 + 24, v15, &qword_27D6F4200, &unk_224DB5FC0);
      if (v16)
      {
        v4 = *__swift_project_boxed_opaque_existential_1(v15, v16);
        sub_224A883DC(*(a1 + 16), 1, &v17);
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(v15, &qword_27D6F4200, &unk_224DB5FC0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      swift_beginAccess();
      sub_224A71D4C(&v17, a1 + 152);
      swift_endAccess();
      sub_224A3796C(a1 + 64, v15, &qword_27D6F5EF8, &qword_224DBE1F0);
      if (v16)
      {
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v5 = *(a1 + 16);
        sub_224DAE028();
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(v15, &qword_27D6F5EF8, &qword_224DBE1F0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      swift_beginAccess();
      sub_224A71D4C(&v17, a1 + 192);
      swift_endAccess();
      sub_224A3796C(a1 + 104, v15, &qword_27D6F5F00, qword_224DBE1F8);
      if (v16)
      {
        v6 = __swift_project_boxed_opaque_existential_1(v15, v16);
        v7 = *(a1 + 16);
        v8 = *v6;
        v9 = sub_224DAC198();
        v10 = swift_allocObject();
        swift_weakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v7;
        v12 = v7;
        v13 = sub_224DAC1A8();
        v14 = v8[3];
        os_unfair_lock_lock(*(v14 + 16));
        sub_224CBF61C(v8, v12, v13, &v17);
        if (v2)
        {

          os_unfair_lock_unlock(*(v14 + 16));
          __break(1u);
          return;
        }

        os_unfair_lock_unlock(*(v14 + 16));

        *(&v18 + 1) = v9;
        v19 = MEMORY[0x277CF9950];
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(v15, &qword_27D6F5F00, qword_224DBE1F8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }
    }

    else
    {
      swift_beginAccess();
      sub_224A3796C(a1 + 152, &v17, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v18 + 1))
      {
        sub_224A3317C(&v17, v15);
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      swift_beginAccess();
      sub_224A71D4C(&v17, a1 + 152);
      swift_endAccess();
      swift_beginAccess();
      sub_224A3796C(a1 + 192, &v17, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v18 + 1))
      {
        sub_224A3317C(&v17, v15);
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      swift_beginAccess();
      sub_224A71D4C(&v17, a1 + 192);
      swift_endAccess();
      swift_beginAccess();
      sub_224A3796C(a1 + 232, &v17, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v18 + 1))
      {
        sub_224A3317C(&v17, v15);
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_224A3311C(&v17, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    swift_beginAccess();
    sub_224A71D4C(&v17, a1 + 232);
    swift_endAccess();
  }
}

uint64_t sub_224A7244C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A72484()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A724C4(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for _SessionPriorityInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v37 = v8;
  v38 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v36 = v10;
    sub_224ADEB50(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_224AE46B8();
      goto LABEL_16;
    }

    v36 = v10;
    sub_224A72A50(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*a1);
  v17 = sub_224DAFEA8();
  v39 = v15 + 56;
  v40 = v15;
  v18 = -1 << *(v15 + 32);
  a2 = v17 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      sub_224A7358C(*(v40 + 48) + v20 * a2, v12);
      v21 = v12[4];
      v22 = v12[5];
      __swift_project_boxed_opaque_existential_1(v12 + 1, v21);
      v23 = (*(v22 + 16))(v21, v22);
      v25 = v24;
      v27 = a1[4];
      v26 = a1[5];
      __swift_project_boxed_opaque_existential_1(a1 + 1, v27);
      if (v23 == (*(v26 + 16))(v27, v26) && v25 == v28)
      {
        goto LABEL_19;
      }

      v30 = sub_224DAFD88();

      sub_224A8EA6C(v12);
      if (v30)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v31 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_224A72CFC(a1, *(v31 + 48) + *(v37 + 72) * a2);
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v31 + 16) = v35;
    return result;
  }

  __break(1u);
LABEL_19:

  sub_224A8EA6C(v12);
LABEL_20:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224A7277C(uint64_t a1, void *a2)
{
  v37 = a1;
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v36 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*a2);
  v14 = sub_224DAFEA8();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  v39 = v12 + 56;
  v17 = *(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16;
  v35 = v11;
  if (v17)
  {
    v38 = ~v15;
    v40 = *(v5 + 72);
    while (1)
    {
      v18 = v40 * v16;
      sub_224A7358C(*(v12 + 48) + v40 * v16, v9);
      v19 = v9[4];
      v20 = v9[5];
      __swift_project_boxed_opaque_existential_1(v9 + 1, v19);
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      v25 = a2[4];
      v24 = a2[5];
      __swift_project_boxed_opaque_existential_1(a2 + 1, v25);
      if (v21 == (*(v24 + 16))(v25, v24) && v23 == v26)
      {
        break;
      }

      v28 = sub_224DAFD88();

      sub_224A8EA6C(v9);
      if (v28)
      {
        goto LABEL_11;
      }

      v16 = (v16 + 1) & v38;
      if (((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_224A8EA6C(v9);
LABEL_11:
    sub_224A8EA6C(a2);
    sub_224A7358C(*(v12 + 48) + v18, v37);
    return 0;
  }

  else
  {
LABEL_9:
    v29 = v36;
    v30 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v35;
    sub_224A7358C(a2, v35);
    v41 = *v29;
    sub_224A724C4(v32, v16, isUniquelyReferenced_nonNull_native);
    *v29 = v41;
    sub_224A72CFC(a2, v37);
    return 1;
  }
}

uint64_t sub_224A72A50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3658, &qword_224DB3C30);
  result = sub_224DAF8F8();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_224A7358C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
      v23 = *(v11 + 40);
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](*v7);
      result = sub_224DAFEA8();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_224A72CFC(v7, *(v11 + 48) + v18 * v22);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_224A72CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A72D60(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_224DA9F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for _SessionPriorityInfo(0);
  v10 = *(*(v31 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v31);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 24))(v16, v17);
  swift_beginAccess();
  v33 = v2;
  v19 = *(v2 + 32);
  if (!*(v19 + 16))
  {
    goto LABEL_5;
  }

  v20 = *(v3 + 32);

  v21 = sub_224A3E7EC(v18);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v23 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

LABEL_6:
  v37 = v23;
  sub_224A3317C(a2, v34);
  v24 = *(v6 + 16);
  v24(v9, v32, v5);
  sub_224A3317C(v34, (v13 + 1));
  v24(v13 + *(v31 + 24), v9, v5);
  v25 = v35;
  v26 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v27 = (*(v26 + 16))(v25, v26);
  v28 = MEMORY[0x22AA5D270](v27);

  (*(v6 + 8))(v9, v5);
  *v13 = v28;
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_224A7277C(v15, v13);
  sub_224A424D8(v15, type metadata accessor for _SessionPriorityInfo);
  swift_beginAccess();

  sub_224A7305C(v29, v18);
  swift_endAccess();
}

id sub_224A73070(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A71CD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224A7487C(v13, a3 & 1, &qword_27D6F3B20, &qword_224DB4838);
      v17 = *v4;
      v8 = sub_224A71CD0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_224B2A574(&qword_27D6F3B20, &qword_224DB4838);
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void *sub_224A73210(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_224DAF798();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_224A73280(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_224A73280(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_224A732D0(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_224A3E7EC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_224A7487C(v17, a3 & 1, a4, a5);
      v21 = *v8;
      v12 = sub_224A3E7EC(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_224B2A574(a4, a5);
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

uint64_t sub_224A73474()
{
  v1 = *(*(sub_224DAC268() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_224A73BC8(v2);
}

id sub_224A734DC()
{
  v1 = [*v0 widget];
  v2 = [v1 extensionIdentity];

  return v2;
}

uint64_t sub_224A73534()
{
  v1 = [*v0 identifier];
  v2 = sub_224DAEE18();

  return v2;
}

uint64_t sub_224A7358C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_224A735F0(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_224DAF838();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_224A6FB70(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x22AA5DCC0](i, a1);
        sub_224A3B79C(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_224A6FB70((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_224A739A4(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_224A3B79C(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_224A6FB70((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_224A739A4(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_224A737DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3618, &qword_224DB3BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_224A73900(void *a1, unint64_t a2, SEL *a3)
{
  sub_224A738EC(a2);
  v5 = sub_224DAEFF8();

  [a1 *a3];
}

_OWORD *sub_224A739A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_224A73A64(char *a1, void *a2, uint64_t a3)
{
  if ([*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_connection] remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    return sub_224A3311C(v10, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6128, &qword_224DBE878);
  result = swift_dynamicCast();
  if (result)
  {

    swift_unknownObjectRetain();
    sub_224A78078(a1, a2, a3, v7);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

id sub_224A73B8C@<X0>(void *a1@<X8>)
{
  result = sub_224CEB940();
  *a1 = result;
  return result;
}

uint64_t sub_224A73BC8(void *a1)
{
  v2 = sub_224DADA98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[27];
  __swift_project_boxed_opaque_existential_1(a1 + 23, a1[26]);
  v8 = *(v7 + 24);
  result = sub_224DADA38();
  if (result)
  {
    v10 = sub_224DAC248();
    v11 = [v10 extensionIdentity];

    sub_224DACA18();
    sub_224DACF08();

    (*(v3 + 8))(v6, v2);
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v12 = sub_224DACF38();
    v13 = v12;
    v14 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors;
    v15 = *(a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);
    if (v15)
    {
      v16 = *(a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);

      v17 = sub_224A73DB4(v13, v15);
    }

    else
    {
      v17 = sub_224AE8EB4(v12);
    }

    v18 = v17;

    v19 = *(a1 + v14);
    *(a1 + v14) = v18;
  }

  return result;
}

id sub_224A73DB4(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AA5DCC0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_224A5E830(&v10, v5, &unk_2813509D0, 0x277CFA378, &qword_27D6F3638, &qword_224DB3C10);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_224DAF838();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t objectdestroy_47Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_224A73F30(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v6 = sub_224DAA888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a3[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
  _Block_copy(a4);
  BSDispatchQueueAssert();
  v53 = 0;
  v12 = sub_224DA94D8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_224DA94C8();
  sub_224DAA868();
  sub_224A7940C(&qword_281351780, MEMORY[0x277D7BBE8]);
  sub_224DA94B8();
  v51 = v7;

  v15 = v52;
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  v17 = __swift_project_value_buffer(v16, qword_281364EC8);
  v18 = a3;

  v19 = sub_224DAB228();
  v20 = sub_224DAF278();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v17;
    v24 = v23;
    v25 = v15;
    v26 = swift_slowAlloc();
    v52 = v26;
    *v22 = 136446466;
    *(v22 + 4) = sub_224A33F74(*&v18[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v18[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v52);
    *(v22 + 12) = 2114;
    v27 = sub_224DAA818();
    *(v22 + 14) = v27;
    *v24 = v27;
    _os_log_impl(&dword_224A2F000, v19, v20, "[%{public}s] Received message to subscribe to %{public}@.", v22, 0x16u);
    sub_224A3311C(v24, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v28 = v26;
    v15 = v25;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v22;
    v6 = v50;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  v30 = *&v18[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v30 + 16));
  _Block_copy(a4);
  sub_224A7E9B8(v15, v18, &v53, a4);
  os_unfair_lock_unlock(*(v30 + 16));
  if (v53)
  {
  }

  else
  {
    sub_224DAA878();
    v31 = sub_224DA9508();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_224DA94F8();
    sub_224A7940C(&unk_281351770, MEMORY[0x277D7BBF8]);
    v34 = sub_224DA94E8();
    v35 = v6;
    v36 = v34;
    v38 = v37;
    v50 = v35;

    v39 = v18;

    v40 = sub_224DAB228();
    v41 = sub_224DAF2A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v40;
      v45 = v44;
      v52 = v44;
      *v42 = 136446466;
      *(v42 + 4) = sub_224A33F74(*&v39[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v39[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v52);
      *(v42 + 12) = 2114;
      v46 = sub_224DAA818();
      *(v42 + 14) = v46;
      *v43 = v46;
      v47 = v49;
      _os_log_impl(&dword_224A2F000, v49, v41, "[%{public}s] Successfully subscribed to session: %{public}@", v42, 0x16u);
      sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);
    }

    else
    {
    }

    sub_224A77FD0(v36, v38);
    v48 = sub_224DA96B8();
    (a4)[2](a4, v48, 0);

    sub_224A78024(v36, v38);
    sub_224A78024(v36, v38);

    (*(v51 + 8))(v10, v50);
  }

  _Block_release(a4);
}

uint64_t sub_224A7487C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_224DAF698();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t type metadata accessor for WidgetRendererSession()
{
  result = qword_281357978;
  if (!qword_281357978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224A74B30(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v116 = a5;
  v115 = a4;
  v8 = sub_224DAB258();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v118 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_224DAB7B8();
  v111 = *(v112 - 1);
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DAB848();
  v107 = *(v109 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v106 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_224DACB98();
  v102 = *(v104 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_224DACB08();
  v99 = *(v100 - 8);
  v17 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DACB28();
  v96 = *(v97 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DACC88();
  v113 = *(v21 - 8);
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v21);
  v117 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DAE918();
  v93 = *(v94 - 8);
  v24 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAC268();
  v121 = *(v27 - 8);
  v122 = v27;
  v28 = *(v121 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v114 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v110 = &v89 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v105 = &v89 - v33;
  MEMORY[0x28223BE20](v32);
  v95 = &v89 - v34;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  aBlock[0] = a2;
  sub_224DAD3D8();
  v36 = v126;
  if (!v126)
  {
    v90 = v21;
    v37 = v115;
    v38 = v115[16];
    __swift_project_boxed_opaque_existential_1(v115 + 12, v115[15]);
    v89 = a2;
    sub_224DADA58();
    sub_224DABE88();
    v39 = *(v121 + 16);
    v91 = v121 + 16;
    v92 = v39;
    v40 = v95;
    v39(v95, a3, v122);
    (*(v93 + 104))(v26, *MEMORY[0x277CE3D68], v94);
    sub_224A3317C(&v125, aBlock);
    sub_224A3317C(v37 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver, &v124);
    v41 = v40;
    v42 = sub_224DABE48();
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v44 = v89;
    aBlock[0] = v89;
    v94 = v42;
    v124 = v42;
    sub_224DAD3B8();
    (*(v96 + 104))(v98, *MEMORY[0x277CF9B50], v97);
    (*(v99 + 104))(v101, *MEMORY[0x277CF9B40], v100);
    (*(v102 + 104))(v103, *MEMORY[0x277CF9BF0], v104);
    sub_224DACC48();
    sub_224DACC38();
    v45 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    aBlock[0] = v44;
    sub_224DAD3E8();
    v46 = v115;
    v47 = *(v115 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
    v48 = v122;
    v92(v41, v116, v122);
    v49 = v121;
    v50 = (*(v121 + 80) + 24) & ~*(v121 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    (*(v49 + 32))(v51 + v50, v41, v48);
    aBlock[4] = sub_224A73474;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_171;
    v52 = _Block_copy(aBlock);
    v53 = v47;
    v54 = v46;

    v55 = v106;
    sub_224DAB7E8();
    v124 = MEMORY[0x277D84F90];
    sub_224A828F0(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v56 = v108;
    v57 = v112;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v55, v56, v52);
    _Block_release(v52);

    (*(v111 + 8))(v56, v57);
    (*(v107 + 8))(v55, v109);

    (*(v119 + 16))(v118, v54 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v120);
    v58 = v105;
    v59 = v116;
    v60 = v122;
    v61 = v92;
    v92(v105, v116, v122);
    v62 = v110;
    v61(v110, v59, v60);
    v61(v114, v59, v60);
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v112 = v66;
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v65 = 138543874;
      LODWORD(v115) = v64;
      v67 = sub_224DAC248();
      v68 = [v67 extensionIdentity];

      v69 = *(v121 + 8);
      v70 = v58;
      v71 = v122;
      v69(v70, v122);
      *(v65 + 4) = v68;
      *v66 = v68;
      *(v65 + 12) = 2082;
      v72 = sub_224DAC248();
      v73 = [v72 kind];

      v74 = sub_224DAEE18();
      v76 = v75;

      v69(v62, v71);
      v77 = sub_224A33F74(v74, v76, aBlock);

      *(v65 + 14) = v77;
      *(v65 + 22) = 2082;
      v78 = v114;
      v79 = sub_224DAC248();
      [v79 family];

      v80 = NSStringFromWidgetFamily();
      v81 = sub_224DAEE18();
      v83 = v82;

      v69(v78, v71);
      v84 = sub_224A33F74(v81, v83, aBlock);

      *(v65 + 24) = v84;
      _os_log_impl(&dword_224A2F000, v63, v115, "Acquired lifetime assertion for: %{public}@:%{public}s:%{public}s", v65, 0x20u);
      v85 = v112;
      sub_224A3311C(v112, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      v86 = v116;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v86, -1, -1);
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    else
    {

      v87 = v122;
      v88 = *(v121 + 8);
      v88(v114, v122);
      v88(v62, v87);
      v88(v58, v87);
    }

    (*(v119 + 8))(v118, v120);
    (*(v113 + 8))(v117, v90);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    v36 = v94;
  }
}