uint64_t sub_2279F00A0(uint64_t a1, uint64_t a2)
{
  v60[2] = *MEMORY[0x277D85DE8];
  v44 = 0;
  v4 = sub_227A720EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v52 = &v43 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_26;
  }

  v60[0] = a1;
  v13 = *(a1 + 16);
  v54 = (a2 + 56);
  v58 = (v5 + 8);
  v59 = v5 + 16;

  v14 = 0;
  v46 = v13;
  v47 = v5;
LABEL_3:
  if (v14 == v13)
  {
LABEL_24:

LABEL_26:
    v37 = *MEMORY[0x277D85DE8];
    return a2;
  }

  v15 = *(v5 + 72);
  v50 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v53 = v14 + 1;
  v60[1] = v14 + 1;
  v56 = *(v5 + 16);
  v57 = v15;
  v56(v52, v50 + v15 * v14, v4);
  v16 = *(a2 + 40);
  v49 = sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248]);
  v17 = sub_227A7244C();
  v51 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v18 = v17 & v51;
    v19 = (v17 & v51) >> 6;
    v20 = 1 << (v17 & v51);
    if ((v20 & v54[v19]) == 0)
    {
      (*v58)(v52, v4);
      v14 = v53;
      v13 = v46;
      v5 = v47;
      goto LABEL_3;
    }

    v56(v11, *(a2 + 48) + v18 * v57, v4);
    sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248]);
    v21 = sub_227A7248C();
    v22 = *v58;
    (*v58)(v11, v4);
    if (v21)
    {
      break;
    }

    v17 = v18 + 1;
  }

  v23 = (v22)(v52, v4);
  v24 = *(a2 + 32);
  v45 = ((1 << v24) + 63) >> 6;
  v25 = 8 * v45;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v46 = &v43;
    MEMORY[0x28223BE20](v23);
    v18 = &v43 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v18, v54, v25);
    v26 = *(a2 + 16);
    *(v18 + 8 * v19) &= ~v20;
    v27 = v26 - 1;
    v28 = *(a1 + 16);
    v51 = v18;
    v52 = v28;
    v29 = v53;
    v48 = a1;
    while (1)
    {
      v47 = v27;
      v30 = v29;
LABEL_12:
      if (v30 == v52)
      {
        sub_227A58C8C();
        a2 = v36;
        goto LABEL_24;
      }

      if (v30 >= *(a1 + 16))
      {
        break;
      }

      v53 = v30 + 1;
      v25 = v55;
      v56(v55, v50 + v30 * v57, v4);
      v31 = *(a2 + 40);
      v32 = sub_227A7244C();
      v33 = a2;
      v20 = ~(-1 << *(a2 + 32));
      do
      {
        v34 = v32 & v20;
        v19 = (v32 & v20) >> 6;
        v18 = 1 << (v32 & v20);
        if ((v18 & v54[v19]) == 0)
        {
          v22(v55, v4);
          v30 = v53;
          a2 = v33;
          a1 = v48;
          goto LABEL_12;
        }

        v56(v11, *(v33 + 48) + v34 * v57, v4);
        v25 = sub_227A7248C();
        v22(v11, v4);
        v32 = v34 + 1;
      }

      while ((v25 & 1) == 0);
      v22(v55, v4);
      v35 = *(v51 + 8 * v19);
      *(v51 + 8 * v19) = v35 & ~v18;
      v29 = v53;
      v30 = v53;
      a2 = v33;
      a1 = v48;
      if ((v35 & v18) == 0)
      {
        goto LABEL_12;
      }

      v27 = v47 - 1;
      if (__OFSUB__(v47, 1))
      {
        __break(1u);
      }

      if (v47 == 1)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();
  v40 = v44;
  v41 = sub_2279F16D0(v39, v45, v54, v45, a2, v18, v60);
  if (!v40)
  {
    v42 = v41;

    MEMORY[0x22AAA1930](v39, -1, -1);
    a2 = v42;
    goto LABEL_24;
  }

  result = MEMORY[0x22AAA1930](v39, -1, -1);
  __break(1u);
  return result;
}

void sub_2279F06B8(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  v5 = OUTLINED_FUNCTION_149(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v13 = sub_227A720EC();
  v14 = OUTLINED_FUNCTION_92(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v97 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v21);
  v94 = &v78 - v23;
  if (!*(a2 + 2))
  {

    goto LABEL_44;
  }

  v84 = v9;
  v79 = 0;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v88 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v24;
  v85 = (63 - v26) >> 6;
  v87 = (v22 + 32);
  v95 = (a2 + 56);
  v92 = v22;
  v98 = v22 + 16;
  v99 = (v22 + 8);
  v89 = a1;

  v29 = 0;
  v86 = a1 + 56;
  v81 = v12;
LABEL_6:
  v30 = v28;
  v31 = v29;
  v96 = v29;
  if (v28)
  {
LABEL_12:
    a1 = (v30 - 1) & v30;
    v34 = v89;
    v92[2](v12, *(v89 + 48) + v92[9] * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
    v35 = 0;
    v32 = v12;
    v33 = v31;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v32, v35, 1, v13);
    v100 = v34;
    v101 = v25;
    OUTLINED_FUNCTION_169();
    if (v36)
    {
      goto LABEL_46;
    }

    v83 = *v87;
    v83(v94, v32, v13);
    v37 = *(a2 + 5);
    OUTLINED_FUNCTION_2_1();
    v82 = sub_2279F2038(&qword_27D7DC560, v38);
    v39 = sub_227A7244C();
    v93 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v25 = v39 & v93;
      if (((1 << (v39 & v93)) & v95[(v39 & v93) >> 6]) == 0)
      {
        (*v99)(v94, v13);
        v29 = v33;
        v28 = a1;
        v25 = v86;
        v12 = v81;
        goto LABEL_6;
      }

      v90 = 1 << v25;
      v91 = v25 >> 6;
      v31 = a2;
      v40 = *(a2 + 6);
      v41 = v92;
      v96 = v92[9];
      v42 = v92[2];
      (v42)(v20, v40 + v96 * v25, v13);
      OUTLINED_FUNCTION_2_1();
      v44 = sub_2279F2038(&qword_27D7DC5C8, v43);
      v45 = sub_227A7248C();
      a2 = v41[1];
      (a2)(v20, v13);
      if (v45)
      {
        break;
      }

      v39 = v25 + 1;
      a2 = v31;
    }

    v92 = v42;
    v93 = v44;
    v46 = (a2)(v94, v13);
    v47 = *(v31 + 32);
    v80 = ((1 << v47) + 63) >> 6;
    v28 = 8 * v80;
    if ((v47 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v94 = a2;
      v81 = &v78;
      MEMORY[0x28223BE20](v46);
      v48 = &v78 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v48, v95, v28);
      v49 = *&v48[8 * v91] & ~v90;
      v50 = *(v31 + 16);
      v90 = v48;
      *&v48[8 * v91] = v49;
      v51 = v50 - 1;
      v32 = v84;
      v52 = v86;
      v53 = v85;
      v54 = v89;
      v55 = v31;
      v56 = v92;
      while (1)
      {
        v91 = v51;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v57 = v33;
LABEL_29:
        v58 = __clz(__rbit64(a1));
        v59 = (a1 - 1) & a1;
        (v56)(v32, *(v54 + 48) + (v58 | (v57 << 6)) * v96, v13);
        v60 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v32, v60, 1, v13);
        v100 = v54;
        v101 = v52;
        OUTLINED_FUNCTION_169();
        if (v36)
        {
          sub_2279F3774(v32, &qword_27D7DC5C0, &qword_227AA0538);
          sub_227A58C8C();
          goto LABEL_42;
        }

        v92 = v59;
        v61 = v56;
        v62 = OUTLINED_FUNCTION_115();
        (v83)(v62);
        v63 = *(v55 + 40);
        v64 = sub_227A7244C();
        v65 = v55;
        v66 = ~(-1 << *(v55 + 32));
        do
        {
          v67 = v64 & v66;
          v68 = (v64 & v66) >> 6;
          v69 = 1 << (v64 & v66);
          if ((v69 & v95[v68]) == 0)
          {
            OUTLINED_FUNCTION_140();
            v74();
            v55 = v65;
            v54 = v89;
            v32 = v84;
            v52 = v86;
            v53 = v85;
            v56 = v61;
            a1 = v92;
            goto LABEL_23;
          }

          (v61)(v20, *(v65 + 48) + v67 * v96, v13);
          v70 = sub_227A7248C();
          OUTLINED_FUNCTION_140();
          v71();
          v64 = v67 + 1;
        }

        while ((v70 & 1) == 0);
        OUTLINED_FUNCTION_140();
        v72();
        v73 = *(v90 + 8 * v68);
        *(v90 + 8 * v68) = v73 & ~v69;
        v36 = (v73 & v69) == 0;
        v55 = v65;
        v54 = v89;
        v32 = v84;
        v52 = v86;
        v53 = v85;
        v56 = v61;
        a1 = v92;
        if (v36)
        {
          goto LABEL_23;
        }

        v51 = v91 - 1;
        if (__OFSUB__(v91, 1))
        {
          __break(1u);
        }

        if (v91 == 1)
        {

          goto LABEL_42;
        }
      }

      while (1)
      {
        v57 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v57 >= v53)
        {
          v59 = 0;
          v60 = 1;
          goto LABEL_30;
        }

        a1 = *(v52 + 8 * v57);
        ++v33;
        if (a1)
        {
          v33 = v57;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_2279F3774(v32, &qword_27D7DC5C0, &qword_227AA0538);
LABEL_42:
      sub_2279F34F8();
LABEL_44:
      v75 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v32 = v12;
    v33 = v29;
    while (1)
    {
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v31 >= v85)
      {
        a1 = 0;
        v35 = 1;
        v34 = v89;
        goto LABEL_13;
      }

      v30 = *(v25 + 8 * v31);
      ++v33;
      if (v30)
      {
        v12 = v32;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v76 = swift_slowAlloc();
  v77 = v79;
  sub_2279F1758(v76, v80, v95, v80, v31, v25, &v100);
  if (!v77)
  {

    OUTLINED_FUNCTION_103();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_103();
  __break(1u);
}

void sub_2279F0F38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35[1] = a2;
  v9 = sub_227A720EC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = v35 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16) & ((-1 << a4) - 1);
  v37 = a1;
  v38 = v18;
  *(a1 + v16) = v17;
  v19 = v15 - 1;
  v43 = v18 + 16;
  v44 = a3;
  v39 = a5;
  v40 = a3 + 56;
  v20 = (v18 + 8);
  while (1)
  {
    v36 = v19;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = *(*a5 + 16);
    if (v22 == v23)
    {

      sub_227A58C8C();
      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    v24 = *(v38 + 80);
    v42 = *(v38 + 72);
    v41 = *(v38 + 16);
    v41(v45, v21 + ((v24 + 32) & ~v24) + v42 * v22, v9);
    a5[1] = v22 + 1;
    v25 = v44;
    v26 = *(v44 + 40);
    sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248]);
    v27 = sub_227A7244C();
    v28 = ~(-1 << *(v25 + 32));
    do
    {
      v29 = v27 & v28;
      v30 = (v27 & v28) >> 6;
      v31 = 1 << (v27 & v28);
      if ((v31 & *(v40 + 8 * v30)) == 0)
      {
        (*v20)(v45, v9);
        a5 = v39;
        goto LABEL_3;
      }

      v41(v13, *(v44 + 48) + v29 * v42, v9);
      sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248]);
      v32 = sub_227A7248C();
      v33 = *v20;
      (*v20)(v13, v9);
      v27 = v29 + 1;
    }

    while ((v32 & 1) == 0);
    v33(v45, v9);
    v34 = *(v37 + 8 * v30);
    *(v37 + 8 * v30) = v34 & ~v31;
    a5 = v39;
    if ((v34 & v31) == 0)
    {
      goto LABEL_3;
    }

    v19 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_16;
    }

    if (v36 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_2279F1280(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_227A720EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v52 = &v41 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v22 = v21 - 1;
  v43 = a1;
  v44 = (v14 + 32);
  v48 = a3 + 56;
  v49 = v14 + 16;
  v50 = (v14 + 8);
  v51 = a3;
  v45 = v12;
  v46 = a5;
  while (1)
  {
    v42 = v22;
LABEL_3:
    v24 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v26 = a5[3];
    v27 = a5[4];
    v47 = v25;
    if (!v27)
    {
      break;
    }

    v28 = v26;
LABEL_9:
    v29 = (v27 - 1) & v27;
    (*(v14 + 16))(v12, *(v24 + 48) + *(v14 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v13, v19);
    v30 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v12, v30, 1, v13);
    *a5 = v24;
    a5[1] = v23;
    a5[2] = v47;
    a5[3] = v26;
    a5[4] = v29;
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_2279F3774(v12, &qword_27D7DC5C0, &qword_227AA0538);

      sub_227A58C8C();
      return;
    }

    (*v44)(v52, v12, v13);
    v31 = v51;
    v32 = *(v51 + 40);
    sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248]);
    v33 = sub_227A7244C();
    v34 = ~(-1 << *(v31 + 32));
    do
    {
      v35 = v33 & v34;
      v36 = (v33 & v34) >> 6;
      v37 = 1 << (v33 & v34);
      if ((v37 & *(v48 + 8 * v36)) == 0)
      {
        (*v50)(v52, v13);
        v12 = v45;
        a5 = v46;
        goto LABEL_3;
      }

      (*(v14 + 16))(v17, *(v51 + 48) + *(v14 + 72) * v35, v13);
      sub_2279F2038(&qword_27D7DC5C8, MEMORY[0x277CCB248]);
      v38 = sub_227A7248C();
      v39 = *(v14 + 8);
      v39(v17, v13);
      v33 = v35 + 1;
    }

    while ((v38 & 1) == 0);
    v39(v52, v13);
    v40 = *(v43 + 8 * v36);
    *(v43 + 8 * v36) = v40 & ~v37;
    v12 = v45;
    a5 = v46;
    if ((v40 & v37) == 0)
    {
      goto LABEL_3;
    }

    v22 = v42 - 1;
    if (__OFSUB__(v42, 1))
    {
      goto LABEL_23;
    }

    if (v42 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= ((v25 + 64) >> 6))
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_10;
    }

    v27 = *(v23 + 8 * v28);
    ++v26;
    if (v27)
    {
      v26 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_2279F16D0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2279F0F38(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2279F1758(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_2279F1280(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void sub_2279F17E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_227A7240C();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_2279F187C(void *a1)
{
  v2 = [a1 icons];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A7241C();

  return v3;
}

id sub_2279F18F4(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  v23 = type metadata accessor for DefaultGKGroupActivityManagerSupport();
  v24 = &off_283AF9AB0;
  v22[0] = a1;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession + a4;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger + a4;
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_previousMatchRequest] = 0;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver] = 0;
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken] = xmmword_227AA0100;
  a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin] = 0;
  sub_2279F4B58(v22, &a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport]);
  swift_unknownObjectWeakAssign();
  type metadata accessor for GroupActivityInviteesManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager] = v9;
  v10 = *__swift_project_boxed_opaque_existential_1(v22, v23);
  *&a4[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionEligibilityObserver] = sub_2279E35B0();
  v21.receiver = a4;
  v21.super_class = type metadata accessor for GKGroupActivityManager();
  v11 = objc_msgSendSuper2(&v21, sel_init);
  if (a3)
  {
    v12 = [objc_opt_self() defaultCenter];
    v13 = [objc_opt_self() willTerminate];
    v14 = [objc_opt_self() mainQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    aBlock[4] = sub_2279F4BBC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2279E42A0;
    aBlock[3] = &block_descriptor_214;
    v16 = _Block_copy(aBlock);
    v17 = v11;

    v18 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v16];
    swift_unknownObjectRelease();
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return v11;
}

id sub_2279F1BC0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DefaultGKGroupActivityManagerSupport();
  v16[3] = v6;
  v16[4] = &off_283AF9AB0;
  v16[0] = a1;
  v7 = objc_allocWithZone(type metadata accessor for GKGroupActivityManager());
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_2279F18F4(*v11, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v13;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2279F1D24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2279F1D74()
{
  result = qword_280B550A8;
  if (!qword_280B550A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B550A8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2279F1E10()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76_0(v3);
  v5 = OUTLINED_FUNCTION_86();

  return sub_2279E59B0(v5, v6);
}

uint64_t sub_2279F1E9C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_91_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24(v3);
  *v4 = v5;
  v4[1] = sub_2279F50E8;
  OUTLINED_FUNCTION_161();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2279F1FEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_177(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_86();
  v9(v8);
  return v4;
}

uint64_t sub_2279F2038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2279F20A4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 8);
  v15 = v0 + 8;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_76_0(v4);
  OUTLINED_FUNCTION_105();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_2279F22E0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 24);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_53(v4);

  return v8(v6);
}

uint64_t sub_2279F23E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_86();

  return v7(v6);
}

uint64_t sub_2279F24D0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_76_0(v4);
  v6 = OUTLINED_FUNCTION_82();

  return v8(v6);
}

uint64_t sub_2279F25F0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of GKGroupActivityManager.activate(game:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_52(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_76_0(v6);

  return v9(v2);
}

uint64_t dispatch thunk of GKGroupActivityManager.end()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x180);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_76_0(v4);

  return v7();
}

uint64_t dispatch thunk of GKGroupActivityManager.leave()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x188);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_76_0(v4);

  return v7();
}

uint64_t dispatch thunk of GKGroupActivityManager.reset()()
{
  OUTLINED_FUNCTION_42();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x190);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_76_0(v4);

  return v7();
}

uint64_t dispatch thunk of GKGroupActivityManager.playerDisconnect(player:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1A0);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_52(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_76_0(v6);

  return v9(v2);
}

uint64_t sub_2279F3044(uint64_t a1)
{
  result = sub_2279F2038(&qword_27D7DC5B0, type metadata accessor for DefaultGKGroupActivitySession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2279F30C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279E45A0(v5, v6, v7, v1);
}

uint64_t sub_2279F3158()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;
  v7 = OUTLINED_FUNCTION_87();

  return v8(v7);
}

uint64_t sub_2279F3200()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_49(v4);

  return v7(v6);
}

uint64_t sub_2279F3290()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_49(v4);

  return v7(v6);
}

uint64_t objectdestroy_99Tm()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2279F3358()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_49(v4);

  return v7(v6);
}

uint64_t objectdestroy_94Tm()
{
  _Block_release(*(v0 + 24));

  v1 = OUTLINED_FUNCTION_95();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2279F3428()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;
  v7 = OUTLINED_FUNCTION_87();

  return v8(v7);
}

uint64_t sub_2279F3500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_177(a1, a2, a3, a4);
  OUTLINED_FUNCTION_51(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_86();
  v9(v8);
  return v4;
}

uint64_t sub_2279F354C(uint64_t a1)
{
  v2 = type metadata accessor for GKGroupActivityMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2279F35A8()
{
  result = qword_27D7DC5D0;
  if (!qword_27D7DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC5D0);
  }

  return result;
}

uint64_t sub_2279F35FC()
{
  OUTLINED_FUNCTION_91_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F0, &qword_227AA0568);
  OUTLINED_FUNCTION_149(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_75();

  return sub_2279E1CD0(v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2279F3694()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_111();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_161();

  return sub_2279E2B78(v6, v7, v8, v9, v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2279F3774(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_51(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2279F37CC(uint64_t a1, uint64_t a2)
{
  v2[35] = a2;
  v4 = sub_227A71C6C();
  v2[36] = v4;
  v5 = *(v4 - 8);
  v2[37] = v5;
  v6 = *(v5 + 64) + 15;
  v2[38] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v8 = type metadata accessor for DefaultGKGroupActivitySession();
  v2[40] = v8;
  v2[12] = v8;
  v2[13] = sub_2279F2038(&qword_27D7DC608, type metadata accessor for DefaultGKGroupActivitySession);
  v2[9] = a1;

  return MEMORY[0x2822009F8](sub_2279F3920, 0, 0);
}

uint64_t sub_2279F3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 320);
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_19((v14 + 72), v15);
  v16 = sub_227A71F9C();
  MEMORY[0x22AA9FE40](v16);

  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v17 = sub_227A7227C();
  v18 = __swift_project_value_buffer(v17, qword_280B54DB8);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_143())
  {
    v19 = OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_173();
    *v19 = 136315138;
    v20 = OUTLINED_FUNCTION_82();
    sub_227A46730(v20, v21, v22);
    OUTLINED_FUNCTION_133();
    *(v19 + 4) = 0xD000000000000029;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_180(v23, v24, v25, v26);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v27 = *(v14 + 312);
  v28 = *(v14 + 280);
  sub_2279F4B58(v14 + 72, v14 + 112);
  v29 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_125();
  sub_2279F1FEC(v14 + 112, v29 + v28, &qword_27D7DC540, &qword_227AA0158);
  swift_endAccess();
  OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
  sub_2279E05F0((v14 + 152));
  sub_2279F4B58(v14 + 152, v14 + 192);
  v30 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger;
  OUTLINED_FUNCTION_125();
  sub_2279F1FEC(v14 + 192, v30 + v28, &qword_27D7DC550, &qword_227AA0170);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC618, &qword_227AA05A0);
  v31 = swift_allocObject();
  *(v31 + 1) = xmmword_227AA00E0;
  OUTLINED_FUNCTION_168((v14 + 72), *(v14 + 96));
  OUTLINED_FUNCTION_110();
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  v33 = *v30;
  v34 = v28;
  v35 = sub_2279E0E5C(&unk_227AA05B0, v32, &unk_283AF9E50, &unk_227AA06B0);

  *(v31 + 4) = v35;
  OUTLINED_FUNCTION_168((v14 + 72), *(v14 + 96));
  OUTLINED_FUNCTION_110();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v37 = *v35;
  v38 = v34;
  v39 = sub_2279E0E5C(&unk_227AA05C0, v36, &unk_283AF9E28, &unk_227AA0680);

  *(v31 + 5) = v39;
  OUTLINED_FUNCTION_168((v14 + 152), *(v14 + 176));
  OUTLINED_FUNCTION_110();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v41 = *v39;
  v42 = v38;
  v43 = sub_2279DECC0(&unk_227AA05D0, v40);

  sub_227A36E5C(v43);
  sub_227A7276C();
  v44 = OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v31;
  v48 = OUTLINED_FUNCTION_170();
  v53 = sub_227A2EC1C(v48, v49, v50, v51, v52);
  v54 = *&v42[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver];
  *&v42[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver] = v53;

  sub_227A7289C();
  v55 = OUTLINED_FUNCTION_151();
  if (OUTLINED_FUNCTION_127(v55))
  {
    OUTLINED_FUNCTION_94();
    v104 = OUTLINED_FUNCTION_100();
    *v31 = 136315138;
    OUTLINED_FUNCTION_167();
    *(v31 + 4) = sub_227A46730(v56, v57, v58);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_154(v59, v60, v61, v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v104);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
  sub_2279DFD8C(v14 + 16);
  sub_2279F1F98(v14 + 16);
  v63 = *(v14 + 48);
  sub_227A7289C();
  switch(v63)
  {
    case 1:
      v88 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v88))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD00000000000003ELL, v89);
        OUTLINED_FUNCTION_35(&dword_227904000, v90, v91, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v92 = swift_task_alloc();
      *(v14 + 328) = v92;
      *v92 = v14;
      OUTLINED_FUNCTION_137(v92);
      goto LABEL_20;
    case 2:
      v78 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v78))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD000000000000042, v79);
        OUTLINED_FUNCTION_35(&dword_227904000, v80, v81, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v82 = swift_task_alloc();
      *(v14 + 336) = v82;
      *v82 = v14;
      OUTLINED_FUNCTION_137(v82);
      goto LABEL_20;
    case 3:
      v83 = sub_227A7226C();
      if (OUTLINED_FUNCTION_127(v83))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_101();
        *v18 = 136315138;
        *(v18 + 1) = OUTLINED_FUNCTION_156(0xD000000000000043, v84);
        OUTLINED_FUNCTION_35(&dword_227904000, v85, v86, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      v87 = swift_task_alloc();
      *(v14 + 344) = v87;
      *v87 = v14;
      OUTLINED_FUNCTION_137(v87);
LABEL_20:
      OUTLINED_FUNCTION_65_0();

      result = sub_2279EC590(v93);
      break;
    default:
      v65 = *(v14 + 296);
      v64 = *(v14 + 304);
      v66 = *(v14 + 288);
      OUTLINED_FUNCTION_16_0();
      sub_227A72B1C();

      OUTLINED_FUNCTION_85();
      v105 = v67;
      OUTLINED_FUNCTION_19((v14 + 72), *(v14 + 96));
      sub_227A71FDC();
      OUTLINED_FUNCTION_0_12();
      sub_2279F2038(v68, v69);
      v70 = OUTLINED_FUNCTION_112();
      MEMORY[0x22AA9FE40](v70);

      v71 = OUTLINED_FUNCTION_93();
      v72(v71);

      sub_227A7226C();
      OUTLINED_FUNCTION_129();
      if (OUTLINED_FUNCTION_143())
      {
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_114();
        *v18 = 136315138;
        v73 = OUTLINED_FUNCTION_82();
        sub_227A46730(v73, v74, v75);
        OUTLINED_FUNCTION_133();
        *(v18 + 1) = 0xD000000000000021;
        OUTLINED_FUNCTION_35(&dword_227904000, v76, v77, "SharePlay - %s");
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_78();
      }

      else
      {
      }

      OUTLINED_FUNCTION_134((v14 + 72), *(v14 + 96));
      sub_2279E00A8();
      OUTLINED_FUNCTION_182();

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_65_0();

      result = v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, 0xD000000000000021, v105, a12, a13, a14);
      break;
  }

  return result;
}

uint64_t sub_2279F40FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279F41E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_182();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_2279F423C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279F4320()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279F4404()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53(v3);

  return sub_2279EA40C();
}

uint64_t sub_2279F4498()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_53(v3);

  return sub_2279EAD04();
}

uint64_t sub_2279F452C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_52(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53(v3);

  return sub_2279EB3BC(v5, v6);
}

uint64_t sub_2279F45C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279EBECC(v5, v6, v7, v1);
}

uint64_t sub_2279F4654()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;

  return sub_2279EC11C(v2, v3);
}

uint64_t sub_2279F46F0()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279DEE74(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2279F4780()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279DF598(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2279F4810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GKGroupActivityMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2279F487C()
{
  OUTLINED_FUNCTION_91_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
  OUTLINED_FUNCTION_149(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = OUTLINED_FUNCTION_75();

  return sub_2279E2480(v6, v7, v8, v9);
}

uint64_t sub_2279F4900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2279F495C()
{
  result = qword_27D7DC660;
  if (!qword_27D7DC660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC660);
  }

  return result;
}

uint64_t sub_2279F49A0()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279E0658(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_164Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2279F4A78()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_54();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_175();

  return sub_2279E0F48(v3, v4, v5, v6, v7, v8);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2279F4B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_153Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  v4 = OUTLINED_FUNCTION_95();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2279F4C28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_111();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_24(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5(v3);

  return sub_2279E3690(v5, v6, v7, v1);
}

uint64_t sub_2279F4CBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GKGroupActivityMessengerErrors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GKGroupActivityMessengerErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2279F4E1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2279F4E3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2279F4FEC()
{
  result = qword_27D7DC730;
  if (!qword_27D7DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC730);
  }

  return result;
}

uint64_t sub_2279F5088()
{
  sub_227A724EC();
  v0 = sub_227A724BC();

  return v0;
}

void *OUTLINED_FUNCTION_6_1()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v2 = *(*result + 16);
  return result;
}

void OUTLINED_FUNCTION_10_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_11_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_12_0()
{
  *(v0 + 8) = sub_2279E7DD0;
  result = v1[56];
  v3 = v1[52];
  v4 = v1[50];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{
  *(a1 + 8) = sub_2279E2E84;
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  return v1 + 120;
}

uint64_t OUTLINED_FUNCTION_14_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t result)
{
  *(result + 8) = sub_2279E81D0;
  v2 = *(v1 + 392);
  return result;
}

void *OUTLINED_FUNCTION_19(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v3 = *(*result + 16);
  return result;
}

void OUTLINED_FUNCTION_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[14];
  v4 = v2[12];
  return v2[8];
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_27(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_30(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_227A46730(v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_33()
{
  *(v1 + 536) = *(v2 + 8);
  *(v1 + 544) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void OUTLINED_FUNCTION_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_39()
{

  JUMPOUT(0x22AAA1930);
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{
  *(a1 + 8) = sub_2279EEB48;
  result = v1[40];
  v3 = v1[37];
  v4 = v1[38];
  return result;
}

void OUTLINED_FUNCTION_61()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1)
{
  *(a1 + 8) = sub_2279E12E8;
  v2 = v1[21];
  v3 = v1[19];
  return v1[12];
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1)
{
  *(a1 + 8) = sub_2279E393C;
  v2 = *(v1 + 176);
  v3 = *(v1 + 160);
  return v1 + 208;
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_71()
{
  *(v0 + 208) = 0;
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_74(uint64_t result)
{
  *(result + 8) = sub_2279E8058;
  v2 = *(v1 + 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_77()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_78()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_96()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_97()
{
  v3 = v1[63];
  v5 = v1[58];
  v4 = v1[59];
  v6 = v1[57];
  v7 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_103()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_112()
{

  return sub_227A72E1C();
}

uint64_t OUTLINED_FUNCTION_113()
{
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_116()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_118(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v11 = a1;

  return sub_227A46730(v12, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_119(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_227A46730(v12 + 67, v11 | 0x8000000000000000, &a10);
}

void OUTLINED_FUNCTION_120()
{

  JUMPOUT(0x22AA9FE40);
}

uint64_t OUTLINED_FUNCTION_121()
{
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;

  return MEMORY[0x2822008D8]();
}

uint64_t OUTLINED_FUNCTION_122()
{
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[52];

  return MEMORY[0x282200630]();
}

void OUTLINED_FUNCTION_123()
{

  JUMPOUT(0x22AA9FBC0);
}

uint64_t OUTLINED_FUNCTION_125()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_127(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

BOOL OUTLINED_FUNCTION_128(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_129()
{
}

uint64_t OUTLINED_FUNCTION_130()
{
}

uint64_t OUTLINED_FUNCTION_131()
{
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
}

uint64_t OUTLINED_FUNCTION_133()
{
}

uint64_t *OUTLINED_FUNCTION_134(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_137(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_142(uint64_t *a1)
{
  v5 = (v3 + *(v1 + 28));
  v7 = *v5;
  v6 = v5[1];
  v8 = *a1;

  return sub_2279EDF10(v7, v6, v2);
}

BOOL OUTLINED_FUNCTION_143()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_145()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = *(v0[13] + 8);
  return v0[14];
}

void OUTLINED_FUNCTION_147()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[3];
}

uint64_t OUTLINED_FUNCTION_151()
{

  return sub_227A7226C();
}

uint64_t OUTLINED_FUNCTION_152()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_154(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_155()
{

  return sub_227A72E5C();
}

uint64_t OUTLINED_FUNCTION_156(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_227A46730(a1, v2 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_157()
{

  return sub_227A7283C();
}

uint64_t OUTLINED_FUNCTION_158()
{

  return sub_227A722CC();
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1)
{

  return MEMORY[0x28211FCC8](v1, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_227A72E1C();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_165()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  return v0[22];
}

uint64_t OUTLINED_FUNCTION_169()
{
  *(v4 - 120) = *(v4 - 240);
  *(v4 - 112) = v3;
  *(v4 - 104) = v1;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

void OUTLINED_FUNCTION_176(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_180(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_181(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2279F1FEC(v5, v4 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_182()
{
  v1 = v0[38];
  v2 = v0[39];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
}

uint64_t sub_2279F6194()
{
  sub_227A71D0C();
  type metadata accessor for GKTextModerator();
  sub_2279F8C54(&qword_27D7DC7C8, MEMORY[0x277CC9788]);
  v0 = sub_227A7243C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7D0, &qword_227AA0B68);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27D7DC758 = result;
  return result;
}

char *sub_2279F6244()
{
  result = sub_2279F6264();
  qword_27D7DC760 = result;
  return result;
}

char *sub_2279F6264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC788, &qword_227AA0B38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LexiconTextModerator(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  sub_2279F6574(v3, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2279F3774(v7, &qword_27D7DC788, &qword_227AA0B38);
    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v16 = sub_227A7227C();
    __swift_project_value_buffer(v16, qword_280B551E8);
    v17 = sub_227A7226C();
    v18 = sub_227A728BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_227904000, v17, v18, "Locale-agnostic text moderation is unavailable.", v19, 2u);
      MEMORY[0x22AAA1930](v19, -1, -1);
    }

    if (qword_27D7DBFF8 != -1)
    {
      swift_once();
    }

    v20 = qword_27D7DC768;

    return v20;
  }

  else
  {
    sub_2279F8D54(v7, v14, type metadata accessor for LexiconTextModerator);
    sub_2279F8C9C(v14, v12, type metadata accessor for LexiconTextModerator);
    v22 = sub_2279F8A7C(v12, type metadata accessor for LexiconTextModerator, &off_283AFA130, type metadata accessor for LexiconTextModerator);
    sub_2279F8CFC(v14, type metadata accessor for LexiconTextModerator);
    return v22;
  }
}

uint64_t sub_2279F6574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC790, &unk_227AA0B40);
  OUTLINED_FUNCTION_149(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = sub_227A71CEC();
  v10 = OUTLINED_FUNCTION_92(v9);
  v66 = v11;
  v67 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  v16 = v15 - v14;
  v68 = sub_227A71C9C();
  v17 = OUTLINED_FUNCTION_92(v68);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_2();
  v62 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v24 = OUTLINED_FUNCTION_149(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_2();
  v65 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v62 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v62 - v32;
  v34 = sub_227A71D0C();
  v35 = OUTLINED_FUNCTION_92(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_2();
  v64 = v40;
  v42 = MEMORY[0x28223BE20](v41);
  v69 = &v62 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v62 - v44;
  v73 = type metadata accessor for LexiconTextModerator(0);
  v46 = OUTLINED_FUNCTION_51(v73);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_2();
  v72 = v50 - v49;
  sub_2279F8B40(a1, v50 - v49, &qword_27D7DC778, &qword_227AA0B00);
  v71 = a1;
  sub_2279F8B40(a1, v33, &qword_27D7DC778, &qword_227AA0B00);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_2279F3774(v33, &qword_27D7DC778, &qword_227AA0B00);
    v51 = 0;
    v53 = v72;
    v52 = v73;
  }

  else
  {
    (*(v37 + 32))(v45, v33, v34);
    sub_227A71CFC();
    sub_227A71CDC();
    (*(v66 + 8))(v16, v67);
    v54 = v68;
    v55 = v37;
    if (__swift_getEnumTagSinglePayload(v8, 1, v68) == 1)
    {
      sub_2279F3774(v71, &qword_27D7DC778, &qword_227AA0B00);
      (*(v37 + 8))(v45, v34);
      sub_2279F3774(v8, &qword_27D7DC790, &unk_227AA0B40);
      sub_2279F3774(v72, &qword_27D7DC778, &qword_227AA0B00);
      return __swift_storeEnumTagSinglePayload(v70, 1, 1, v73);
    }

    v57 = v62;
    v56 = v63;
    (*(v63 + 32))(v62, v8, v54);
    sub_227A71C8C();
    v51 = sub_227A724BC();

    (*(v56 + 8))(v57, v54);
    (*(v55 + 8))(v45, v34);
    v53 = v72;
    v52 = v73;
  }

  *(v53 + *(v52 + 24)) = v51;
  v58 = v71;
  sub_2279F8B40(v71, v31, &qword_27D7DC778, &qword_227AA0B00);
  v59 = sub_2279F7FF4(v31);
  sub_2279F3774(v58, &qword_27D7DC778, &qword_227AA0B00);
  *(v53 + *(v52 + 20)) = v59;
  v60 = v70;
  sub_2279F8C9C(v53, v70, type metadata accessor for LexiconTextModerator);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v52);
  return sub_2279F8CFC(v53, type metadata accessor for LexiconTextModerator);
}

uint64_t sub_2279F6EF0()
{
  v0 = type metadata accessor for NullTextModerator(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_2279F8C9C(v6, v4, type metadata accessor for NullTextModerator);
  v8 = sub_2279F8A7C(v4, type metadata accessor for NullTextModerator, &off_283AFA148, type metadata accessor for NullTextModerator);
  result = sub_2279F8CFC(v6, type metadata accessor for NullTextModerator);
  qword_27D7DC768 = v8;
  return result;
}

id sub_2279F6FFC()
{
  v1 = &v0[OBJC_IVAR___GKTextModerator_implementation];
  v1[3] = type metadata accessor for NullTextModerator(0);
  v1[4] = &off_283AFA148;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = sub_227A71D0C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = GKTextModerator;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GKTextModerator.locale.getter()
{
  v1 = (v0 + OBJC_IVAR___GKTextModerator_implementation);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  (*(v4 + 16))(v1);
  (*(v3 + 8))(v2, v3);
  return (*(v4 + 8))(v1, v2);
}

Swift::Bool __swiftcall GKTextModerator.shouldFilter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR___GKTextModerator_implementation;
  swift_beginAccess();
  sub_2279F4B58(v1 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(object) = (*(v6 + 16))(countAndFlagsBits, object, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return object & 1;
}

id static GKTextModerator.localeAgnostic.getter()
{
  if (qword_27D7DBFF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7DC760;

  return v1;
}

id static GKTextModerator.default.getter()
{
  v1 = sub_227A71D0C();
  v2 = OUTLINED_FUNCTION_92(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_1();
  v7 = objc_opt_self();
  sub_227A71CCC();
  v8 = sub_227A71CAC();
  (*(v4 + 8))(v0, v1);
  v9 = [v7 forLocale_];

  return v9;
}

BOOL static GKTextModerator.isAvailable()()
{
  v1 = sub_227A71D0C();
  v2 = OUTLINED_FUNCTION_92(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v14 = [objc_opt_self() defaultTextModerator];
  v15 = [v14 locale];

  if (v15)
  {
    sub_227A71CBC();

    (*(v4 + 32))(v0, v9, v1);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v16, 1, v1);
  sub_2279F3774(v0, &qword_27D7DC778, &qword_227AA0B00);
  return v15 != 0;
}

BOOL static GKTextModerator.isAvailable(locale:)()
{
  v0 = sub_227A71D0C();
  v1 = OUTLINED_FUNCTION_92(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = objc_opt_self();
  v16 = sub_227A71CAC();
  v17 = [v15 forLocale_];

  v18 = [v17 locale];
  if (v18)
  {
    sub_227A71CBC();

    (*(v3 + 32))(v14, v8, v0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v19, 1, v0);
  sub_2279F3774(v14, &qword_27D7DC778, &qword_227AA0B00);
  return v18 != 0;
}

char *static GKTextModerator.for (locale:)(uint64_t a1)
{
  if (qword_27D7DBFE8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27D7DC758;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_2279F7D88((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_2279F7A48(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for LexiconTextModerator(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC788, &qword_227AA0B38);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  v23 = *a1;
  if (*(*a1 + 16) && (v24 = sub_2279FDB38(), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    *v32 = v26;
    v27 = v26;
  }

  else
  {
    v28 = sub_227A71D0C();
    (*(*(v28 - 8) + 16))(v15, a2, v28);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v28);
    sub_2279F6574(v15, v22);
    sub_2279F8B40(v22, v20, &qword_27D7DC788, &qword_227AA0B38);
    if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
    {
      sub_2279F3774(v22, &qword_27D7DC788, &qword_227AA0B38);
      v29 = [objc_opt_self() localeAgnosticTextModerator];
    }

    else
    {
      sub_2279F8D54(v20, v11, type metadata accessor for LexiconTextModerator);
      sub_2279F8C9C(v11, v9, type metadata accessor for LexiconTextModerator);
      v29 = sub_2279F8A7C(v9, type metadata accessor for LexiconTextModerator, &off_283AFA130, type metadata accessor for LexiconTextModerator);
      sub_2279F8CFC(v11, type metadata accessor for LexiconTextModerator);
      sub_2279F3774(v22, &qword_27D7DC788, &qword_227AA0B38);
    }

    v30 = v29;
    v31 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = *a1;
    sub_227A62254(v30);
    *a1 = v33;
    *v32 = v30;
  }
}

unint64_t type metadata accessor for GKTextModerator()
{
  result = qword_27D7DC780;
  if (!qword_27D7DC780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC780);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2279F7FBC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2279F7FF4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  OUTLINED_FUNCTION_149(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_227A71D0C();
  v10 = OUTLINED_FUNCTION_92(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_1();
  v28 = 0;
  sub_2279F8B40(a1, v8, &qword_27D7DC778, &qword_227AA0B00);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2279F3774(v8, &qword_27D7DC778, &qword_227AA0B00);
    sub_227A7243C();
    v15 = sub_227A7240C();
  }

  else
  {
    (*(v12 + 32))(v1, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7B0, &qword_227AA0B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    v27 = a1;
    v17 = *MEMORY[0x277D23168];
    *(inited + 32) = *MEMORY[0x277D23168];
    sub_227A71C7C();
    v18 = v17;
    v19 = sub_227A724BC();

    *(inited + 40) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7B8, &qword_227AA0B60);
    type metadata accessor for CFString(0);
    sub_2279F8BA0();
    sub_227A7243C();
    a1 = v27;
    v15 = sub_227A7240C();

    (*(v12 + 8))(v1, v9);
  }

  result = LXLexiconCreate();
  if (result)
  {
    v21 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC7A8, &qword_227AA0B50);
    v22 = swift_allocObject();
    v22[6] = 0;
    *(v22 + 2) = v21;

    sub_2279F3774(a1, &qword_27D7DC778, &qword_227AA0B00);
LABEL_8:
    v25 = *MEMORY[0x277D85DE8];
    return v22;
  }

  v22 = v28;
  if (v28)
  {
    type metadata accessor for CFError(0);
    sub_2279F8C54(&qword_27D7DC7A0, type metadata accessor for CFError);
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    v24 = v22;

    sub_2279F3774(a1, &qword_27D7DC778, &qword_227AA0B00);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_2279F83CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LexiconTextModerator(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  sub_2279F8C9C(v2, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LexiconTextModerator);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2279F8D54(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LexiconTextModerator);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  sub_2279F86B0(a1, a2);

  swift_beginAccess();
  LOBYTE(a2) = *(v8 + 16);

  return (a2 & 1) == 0;
}

uint64_t sub_2279F8570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + *(type metadata accessor for LexiconTextModerator(0) + 20));
  MEMORY[0x22AA9FE00](a1, a2, a3, a4);

  os_unfair_lock_lock((v11 + 24));
  sub_2279F908C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));

  swift_beginAccess();
  return *(a6 + 16);
}

BOOL sub_2279F8660(uint64_t a1, uint64_t a2)
{
  v3 = (LXEntryGetMetaFlags() & 0x1800000) == 0;
  swift_beginAccess();
  *(a2 + 16) = v3;
  return v3;
}

void sub_2279F86B0(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  if (*(v2 + *(type metadata accessor for LexiconTextModerator(0) + 24)))
  {
    [v5 setLanguage_];
  }

  sub_2279F8A24(a1, a2, v5);
  MEMORY[0x28223BE20](v6);
  sub_227A7287C();
}

uint64_t sub_2279F87BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_227A7260C();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

void sub_2279F8814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_227A724BC();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v11[4] = sub_2279F90AC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2279F89A0;
  v11[3] = &block_descriptor_0;
  v10 = _Block_copy(v11);

  LXLexiconEnumerateEntriesForString();
  _Block_release(v10);
}

void sub_2279F8918(void *a1, _BYTE *a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v5 = a1;
    if ((a3() & 1) == 0)
    {
      if (!a2)
      {
        __break(1u);
        return;
      }

      *a2 = 1;
    }
  }
}

void sub_2279F89A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void sub_2279F8A24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();
  [a3 setString_];
}

char *sub_2279F8A7C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v13 = a2(0);
  v14 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_2279F8D54(a1, boxed_opaque_existential_1, a4);
  v8 = [objc_allocWithZone(GKTextModerator) init];
  v9 = OBJC_IVAR___GKTextModerator_implementation;
  swift_beginAccess();
  v10 = v8;
  __swift_destroy_boxed_opaque_existential_0Tm(&v8[v9]);
  sub_22790B104(&v12, &v8[v9]);
  swift_endAccess();

  return v10;
}

uint64_t sub_2279F8B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_51(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2279F8BA0()
{
  result = qword_27D7DC7C0;
  if (!qword_27D7DC7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC7B8, &qword_227AA0B60);
    sub_2279F8C54(&qword_27D7DC710, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC7C0);
  }

  return result;
}

uint64_t sub_2279F8C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2279F8C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_51(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2279F8CFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2279F8D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_51(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_2279F8DDC()
{
  sub_2279F8EA0(319, &qword_27D7DC7E8, MEMORY[0x277CC9788]);
  if (v0 <= 0x3F)
  {
    sub_2279F8EA0(319, &qword_27D7DC7F0, type metadata accessor for NLLanguage);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2279F8EA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227A729BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2279F8F2C()
{
  sub_2279F8EA0(319, &qword_27D7DC7E8, MEMORY[0x277CC9788]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2279F8FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for LexiconTextModerator(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2279F8570(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_2279F9078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_2279F87BC(a1, a2, a3, *(v3 + 16));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2279F9104@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2279FDBCC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2279F4900(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2279F9168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2279FDBCC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_2279F91B8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2279FDAF8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2279F4900(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

GameCenterFoundation::MultiplayerActivityReporter::LogEventLevel_optional __swiftcall MultiplayerActivityReporter.LogEventLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227A72CFC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MultiplayerActivityReporter.LogEventLevel.rawValue.getter()
{
  v1 = 0x6972637365446F6ELL;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

unint64_t sub_2279F9300(char a1)
{
  result = 0x65746F5674736F68;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x657469766E69;
      break;
    case 3:
      result = 6778732;
      break;
    case 4:
      result = 0x6E6F6973736573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2279F93A0@<X0>(uint64_t *a1@<X8>)
{
  result = MultiplayerActivityReporter.LogEventLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2279F93D8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return v0;
}

uint64_t sub_2279F9410()
{
  v0 = sub_2279F93D8();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id MultiplayerActivityReporter.init(localPlayerID:matchDataDelegate:apiReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_227A7291C();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v12 = v11 - v10;
  v13 = sub_227A728FC();
  v14 = OUTLINED_FUNCTION_51(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_2();
  v17 = sub_227A7237C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1_2();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = &v4[OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_apiReporter] = a4;
  type metadata accessor for MultiplayerActivityReporter.MutableState();
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0;
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_mutableState] = v20;
  sub_2279FF044(0, &qword_27D7DC828, 0x277D85C78);
  v23 = a4;
  sub_227A7234C();
  v28 = MEMORY[0x277D84F90];
  sub_2279FF27C(&qword_27D7DC830, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC838, &unk_227AA0C10);
  sub_2279FED64(&qword_27D7DC840, &qword_27D7DC838, &unk_227AA0C10);
  sub_227A729FC();
  (*(v24 + 104))(v12, *MEMORY[0x277D85260], v25);
  *&v4[OBJC_IVAR___GKMultiplayerActivityReporter_stateQueue] = sub_227A7294C();
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  swift_unknownObjectRelease();

  return v21;
}

uint64_t MultiplayerActivityReporter.instrument(clientDelegate:transportContext:)(uint64_t a1, void *a2)
{
  type metadata accessor for InstrumentedTransportClientDelegate();
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_2279FCCB8(a1, v2, a2);
}

void (*MultiplayerActivityReporter.instrument(errorHandler:transportContext:)(uint64_t a1, uint64_t a2, void *a3))(void *a1)
{
  OUTLINED_FUNCTION_12_1();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;
  v9 = a3;
  sub_2279FCD50(a1);
  return sub_2279FCD44;
}

void sub_2279F99D4(void *a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1);
    v10[2] = v7;
    v10[3] = a1;
    v10[4] = v8;
    v9 = a1;
    sub_2279FA2E8(a3, 0, 0, sub_2279FF2D8, v10);
  }

  if (a4)
  {

    a4(a1);
    sub_22790D4C0(a4);
  }
}

void *MultiplayerActivityReporter.onTransportError(error:transportContext:)()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  return sub_2279FA2E8(v0, v1, v2, v3, v4);
}

void sub_2279F9C14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_227A71A4C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2279F9C78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t (*MultiplayerActivityReporter.instrument(bestHostHandler:transportContext:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;
  v9 = a3;

  return sub_2279FCD6C;
}

uint64_t sub_2279F9D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a2)
  {
    sub_2279F9DCC(a1, a2, a4);
  }

  return a5(a1, a2);
}

void *sub_2279F9DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  ObjectType = swift_getObjectType();
  return sub_2279FA2E8(v9, 0, 0, sub_2279FF25C, &v5);
}

void sub_2279F9F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_227A724BC();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

Swift::Void __swiftcall MultiplayerActivityReporter.onDisconnect(transportContext:)(GKTransportContext *transportContext)
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  sub_2279FA2E8(v1, v2, v3, v4, v5);
}

uint64_t sub_2279F9FE0(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a3[6];
  if (v4)
  {
    v6 = result;
    v7 = a3[5] == result && v4 == a2;
    if (v7 || (result = sub_227A72E5C(), (result & 1) != 0))
    {
      v8 = a3[8];
      if (!v8 || ((result = a3[7], result == v6) ? (v9 = v8 == a2) : (v9 = 0), !v9 && (v10 = a3[8], result = sub_227A72E5C(), (result & 1) == 0)))
      {
        a3[7] = v6;
        a3[8] = a2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227AA00F0;
        *(inited + 32) = 0xD000000000000015;
        *(inited + 40) = 0x8000000227A98610;
        v12 = a3[2];
        *(inited + 72) = MEMORY[0x277D83B88];
        *(inited + 48) = v12;

        v13 = sub_227A7243C();
        v14 = sub_2279FA168(0);
        v15 = sub_2279FA1C4(v6, a2, 4, 6581861, 0xE300000000000000, v13, v14);

        sub_2279FA25C(v15);
      }
    }
  }

  return result;
}

uint64_t sub_2279FA168(char a1)
{
  if (a1)
  {
    return -1;
  }

  v3 = [v1 selectedTransport];
  v4 = [v3 version];

  return v4;
}

void sub_2279FA25C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___GKMultiplayerActivityReporter_apiReporter);
  sub_227A25094(a1);
  v3 = sub_227A7240C();

  [v2 recordMultiplayerActivityMetrics_];
}

void *sub_2279FA2E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = a3;
  if (a3)
  {
    goto LABEL_5;
  }

  result = sub_227A23D8C(result);
  if (v10 || (result = sub_2279FEC00(v8), v10))
  {
    v9 = v10;
LABEL_5:
    MEMORY[0x28223BE20](result);
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v5;
    v12[5] = v8;
    v12[6] = a4;
    v12[7] = a5;

    sub_2279FBA5C(sub_2279FF26C, v12);
  }

  return result;
}

Swift::Void __swiftcall MultiplayerActivityReporter.onGameplayStarted(transportContext:)(GKTransportContext *transportContext)
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  sub_2279FA2E8(v1, v2, v3, v4, v5);
}

uint64_t sub_2279FA460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2279FA500(a1, a2, a5, a3);
  v7 = sub_2279FA168(0);
  v8 = sub_2279FA1C4(a1, a2, 0, 0x7472617473, 0xE500000000000000, 0, v7);
  sub_2279FA25C(v8);
}

uint64_t sub_2279FA500(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = [result currentPlayerCountIncludingLocalPlayer];
    result = swift_unknownObjectRelease();
    v10 = a4[6];
    if (!v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227AA00F0;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x8000000227A987A0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 48) = v9;
      v20 = sub_227A7243C();
      v21 = sub_2279FA168(0);
      v18 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 4, 0x7472617473, 0xE500000000000000, v20, v21);
      goto LABEL_10;
    }

    v11 = a4[5];
    if (v11 != a1 || v10 != a2)
    {
      v13 = a4[5];
      v14 = a4[6];
      result = sub_227A72E5C();
      if ((result & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_227AA00F0;
        *(v15 + 32) = 0x6553657461647075;
        *(v15 + 40) = 0xEF64496E6F697373;
        *(v15 + 72) = MEMORY[0x277D837D0];
        *(v15 + 48) = v11;
        *(v15 + 56) = v10;

        v16 = sub_227A7243C();
        v17 = sub_2279FA168(0);
        v18 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 4, 0x657461647075, 0xE600000000000000, v16, v17);
LABEL_10:
        v22 = v18;

        v23 = a4[6];
        a4[5] = a1;
        a4[6] = a2;

        v24 = a4[4];
        a4[3] = a1;
        a4[4] = a2;

        sub_2279FA25C(v22);
      }
    }
  }

  return result;
}

void *MultiplayerActivityReporter.onGameplayEnded(reason:error:transportContext:)()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_124();
  return sub_2279FA2E8(v0, v1, v2, v3, v4);
}

void sub_2279FA850(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v12 = a4;
    v13 = sub_2279FA168(0);
    sub_2279FAB6C(a1, a2, a4, v13);
  }

  v14 = *(a3 + 80);
  if (!v14 || (*(a3 + 72) == a1 ? (v15 = v14 == a2) : (v15 = 0), !v15 && (v16 = *(a3 + 80), (sub_227A72E5C() & 1) == 0)))
  {
    *(a3 + 72) = a1;
    *(a3 + 80) = a2;

    if (!a4 || a7 == 3)
    {
      if ((a7 - 1) < 2)
      {
        a7 = 0;
        v25 = 0;
        v18 = 0xE900000000000065;
        v19 = 0x6D6147664F646E65;
        v17 = 1;
      }

      else if (a7)
      {
        if (a7 == 3)
        {
          v17 = 0;
          v18 = 0xE700000000000000;
          v19 = 0x6572756C696166;
          v25 = 0xEC000000726F7272;
          a7 = 0x456B726F7774656ELL;
        }

        else
        {
          a7 = 0;
          v25 = 0;
          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
          v17 = 1;
        }
      }

      else
      {
        v18 = 0xE400000000000000;
        v17 = 1;
        v19 = 1953069157;
        v25 = 0;
      }
    }

    else
    {
      v17 = 0;
      v25 = 0xEA0000000000726FLL;
      v18 = 0xE700000000000000;
      v19 = 0x6572756C696166;
      a7 = 0x727245726568746FLL;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = 0x73616552706F7473;
    *(inited + 40) = 0xEA00000000006E6FLL;
    v21 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v19;
    *(inited + 56) = v18;

    v22 = sub_227A7243C();
    if ((v17 & 1) == 0)
    {
      v28 = v21;
      *&v27 = a7;
      *(&v27 + 1) = v25;
      sub_2279FF11C(&v27, v26);
      swift_isUniquelyReferenced_nonNull_native();
      sub_227A623E4(v26, 0x73616552706F7473, 0xEE00657079546E6FLL);
    }

    v23 = sub_2279FA168(0);
    v24 = sub_2279FA1C4(a1, a2, 0, 6581861, 0xE300000000000000, v22, v23);

    sub_2279FA25C(v24);
  }
}

uint64_t sub_2279FAB6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  *(inited + 32) = 0x73616552706F7473;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v10 = static MultiplayerActivityReporter.makeLogStopReason(error:)(a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = sub_227A7243C();
  v13 = sub_2279FB754(*(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID), *(v4 + OBJC_IVAR___GKMultiplayerActivityReporter_localPlayerID + 8), a1, a2, 3, 0, 0, v12, a4);

  sub_2279FA25C(v13);
}

uint64_t MultiplayerActivityReporter.onInviteSent(approach:isHosted:recipients:transportContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  sub_2279FEC00(a4);
  v6 = v5;
  OUTLINED_FUNCTION_7_3();
  sub_2279FA2E8(a4, v7, v6, v8, v9);
}

void sub_2279FADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = sub_227A06998(a4);
  for (i = 0; v11 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAA03F0](i, a4);
    }

    else
    {
      if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v13 = *(a4 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v19 = v13;
    sub_2279FAEB8(&v19, a5, a1, a2, a6, a7, a8 & 1);
  }
}

uint64_t sub_2279FAEB8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00E0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000227A98820;
  v12 = [v10 playerID];
  v13 = sub_227A724EC();
  v15 = v14;

  v16 = sub_2279FB06C(v13, v15, a3, a4);
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 0x7954657469766E69;
  *(inited + 88) = 0xEA00000000006570;
  v20 = sub_2279FB338(a5);
  *(inited + 120) = v19;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  v22 = sub_227A7243C();
  v23 = sub_2279FA168(a7);
  v24 = sub_2279FA1C4(a3, a4, 2, 1684956531, 0xE400000000000000, v22, v23);

  sub_2279FA25C(v24);
}

uint64_t sub_2279FB06C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227A723FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_227A723EC();
  v13 = *(v24[0] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24[0]);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;

  MEMORY[0x22AA9FE40](64, 0xE100000000000000);
  MEMORY[0x22AA9FE40](a3, a4);
  v17 = sub_2279FC314(v25, v26);
  v19 = v18;
  sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
  sub_227A723DC();
  sub_2279E3EE4(v17, v19);
  sub_2279FE5E8(v17, v19);
  sub_2279E3FA4(v17, v19);
  sub_227A723CC();
  (*(v9 + 8))(v12, v8);
  sub_2279E3FA4(v17, v19);
  sub_2279FC81C(v16);
  v21 = v20;
  (*(v13 + 8))(v16, v24[0]);
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_2279FED64(&qword_27D7DC858, &qword_27D7DC850, &qword_227AA0C20);
  v22 = sub_227A7246C();

  return v22;
}

unint64_t sub_2279FB338(uint64_t a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6374614D6F747561;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x616C506572616873;
      break;
    default:
      strcpy(v4, "unsupported-");
      v3 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v3);

      result = v4[0];
      break;
  }

  return result;
}

uint64_t static MultiplayerActivityReporter.makeInviteReceivedFields(approach:isHosted:localPlayerID:senderPlayerID:sessionID:transportVersion:)(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00E0;
  strcpy((inited + 32), "senderPlayerId");
  *(inited + 47) = -18;
  v17 = sub_2279FB06C(a5, a6, a7, a8);
  v18 = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 72) = v18;
  *(inited + 80) = 0x7954657469766E69;
  *(inited + 88) = 0xEA00000000006570;
  v20 = sub_2279FB338(a1);
  *(inited + 120) = v18;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  v22 = sub_227A7243C();
  if (a10)
  {
    v23 = 0;
  }

  else
  {
    v23 = a9;
  }

  if (a2)
  {
    v23 = -1;
  }

  v24 = sub_2279FB754(a3, a4, a7, a8, 2, 0x65766965636572, 0xE700000000000000, v22, v23);

  return v24;
}

uint64_t sub_2279FB754(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA0BF0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  v16 = sub_2279F9300(a5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000227A98450;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v17;
  *(inited + 128) = 0x6449726579616C70;
  *(inited + 136) = 0xE800000000000000;

  *(inited + 144) = sub_2279FB06C(a1, a2, a3, a4);
  *(inited + 152) = v19;
  *(inited + 168) = v17;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 184) = 0x8000000227A987C0;
  *(inited + 192) = a9;
  v20 = sub_227A7243C();
  if (a7)
  {
    v27 = v17;
    *&v26 = a6;
    *(&v26 + 1) = a7;
    sub_2279FF11C(&v26, v25);

    swift_isUniquelyReferenced_nonNull_native();
    sub_227A623E4(v25, 0x79546E6F69746361, 0xEA00000000006570);
  }

  if (a8)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26 = v20;
    sub_2279FE81C(a8, sub_2279FE7E4, 0, isUniquelyReferenced_nonNull_native, &v26);
    return v26;
  }

  return v20;
}

uint64_t static MultiplayerActivityReporter.extractSessionID(fields:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_2279FDBCC(0xD000000000000014, 0x8000000227A98450);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_2279F4900(*(a1 + 56) + 32 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall MultiplayerActivityReporter.onConnect(multiplayerSessionID:transportContext:)(Swift::String multiplayerSessionID, GKTransportContext *transportContext)
{
  v3 = multiplayerSessionID;
  v4 = transportContext;
  sub_2279FBA5C(sub_2279FEC98, &v2);
}

uint64_t sub_2279FBA5C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___GKMultiplayerActivityReporter_stateQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2279FF0D8;
  *(v7 + 24) = v6;
  v12[4] = sub_2279FF114;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2279FF6D4;
  v12[3] = &block_descriptor_44;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t static MultiplayerActivityReporter.makeLogStopReason(error:)(void *a1)
{
  v1 = sub_2279FBDD0(a1);
  v3 = v2;
  sub_2279FD74C();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_2279FD74C();
    v5 = v23;
  }

  *(v5 + 16) = v6 + 1;
  v7 = v5 + 16 * v6;
  *(v7 + 32) = v1;
  *(v7 + 40) = v3;
  swift_getErrorValue();
  v8 = sub_227A138F8(v24);
  v9 = *(v8 + 16);
  for (i = 32; v9; --v9)
  {
    v11 = *(v8 + i);
    v12 = v11;
    v13 = sub_2279FBDD0(v11);
    v15 = v14;
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24) >> 1)
    {
      sub_2279FD74C();
      v5 = v18;
    }

    *(v5 + 16) = v16 + 1;
    v17 = v5 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;

    i += 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  sub_2279FED64(&qword_27D7DC858, &qword_27D7DC850, &qword_227AA0C20);
  v19 = sub_227A7246C();
  v21 = v20;

  MEMORY[0x22AA9FE40](v19, v21);

  MEMORY[0x22AA9FE40](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_2279FBDD0(void *a1)
{
  v2 = sub_227A71A4C();
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC898, &qword_227AA0E30);
  if (swift_dynamicCast())
  {
    sub_22790B104(v18, &v20);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(&v20, v22);
    v6 = sub_227A13BC4(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2279F3774(v18, &qword_27D7DC8A0, &qword_227AA0E38);
    v9 = [v2 domain];
    v6 = sub_227A724EC();
    v8 = v10;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_227A72B1C();

  v20 = 0x6E69616D6F64277BLL;
  v21 = 0xEB00000000273A27;
  *&v18[0] = v6;
  *(&v18[0] + 1) = v8;
  v17 = sub_2279FF084();
  v16 = MEMORY[0x277D837D0];
  v11 = sub_227A729DC();
  v13 = v12;

  MEMORY[0x22AA9FE40](v11, v13);

  MEMORY[0x22AA9FE40](0x2765646F63272C27, 0xE90000000000003ALL);
  *&v18[0] = [v2 code];
  v14 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v14);

  MEMORY[0x22AA9FE40](125, 0xE100000000000000);

  return v20;
}

uint64_t sub_2279FC020(uint64_t result)
{
  v1 = *(result + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2279FC038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  strcpy((inited + 32), "votedPlayerId");
  *(inited + 46) = -4864;
  v11 = sub_2279FB06C(a5, a6, a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v13 = sub_227A7243C();
  v14 = sub_2279FA168(0);
  v15 = sub_2279FA1C4(a1, a2, 1, 0, 0, v13, v14);

  sub_2279FA25C(v15);
}

uint64_t sub_2279FC174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(a1 + 24);
    if (v11 != a2 || v10 != a3)
    {
      v13 = *(a1 + 24);
      if ((sub_227A72E5C() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227AA00F0;
        *(inited + 32) = 0x6553657461647075;
        *(inited + 40) = 0xEF64496E6F697373;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v11;
        *(inited + 56) = v10;

        v15 = sub_227A7243C();
        v16 = sub_2279FA168(0);
        v17 = sub_2279FA1C4(a2, a3, 4, 0x657461647075, 0xE600000000000000, v15, v16);

        sub_2279FA25C(v17);
      }
    }
  }

  v18 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  return a6(a2, a3, a1);
}

uint64_t sub_2279FC314(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8D0, &qword_227AA0E50);
  if (swift_dynamicCast())
  {
    sub_22790B104(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_227A71A3C();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_2279F3774(v35, &qword_27D7DC8D8, &qword_227AA0E58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_227A72B6C();
  }

  sub_2279FE090(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x22AA9F410](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_2279FE1AC(sub_2279FF220);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_227A71B4C();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_2279FF164(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_227A7259C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_227A725CC();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_227A72B6C();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_2279FF164(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_227A725AC();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_227A71B6C();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_227A71B6C();
    sub_2279E3F90(v34, v6);
    goto LABEL_58;
  }

  sub_2279E3F90(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_2279E3EE4(*&v35[0], *(&v35[0] + 1));

  sub_2279E3FA4(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_2279FC81C(uint64_t a1)
{
  v2 = sub_227A723EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2279FF27C(&qword_27D7DC8C0, MEMORY[0x277CC5290]);
  v7 = sub_227A7262C();
  v37 = MEMORY[0x277D84F90];
  sub_227A20388(0, v7 & ~(v7 >> 63), 0);
  v8 = v37;
  (*(v3 + 16))(v6, a1, v2);
  sub_227A7261C();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v9 = v36;
      v10 = *(v35 + 16);
      v33 = v35;
      *&v34 = v10;
      v32 = v35 + 32;
      v31 = xmmword_227AA00F0;
      v11 = v36;
      while (v34 != v9)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v9 >= *(v33 + 16))
        {
          goto LABEL_21;
        }

        v12 = *(v32 + v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8C8, &qword_227AA0E48);
        v13 = swift_allocObject();
        *(v13 + 16) = v31;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        v14 = sub_227A724FC();
        v16 = v15;
        v37 = v8;
        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_227A20388(v17 > 1, v18 + 1, 1);
          v8 = v37;
        }

        *(v8 + 16) = v18 + 1;
        v19 = v8 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        ++v9;
        if (!--v7)
        {
          v36 = v9;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v20 = v35;
      v34 = xmmword_227AA00F0;
      while (1)
      {
        v21 = *(v20 + 16);
        if (v36 == v21)
        {

          return;
        }

        if (v36 >= v21)
        {
          break;
        }

        v22 = *(v20 + 32 + v36++);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8C8, &qword_227AA0E48);
        v23 = swift_allocObject();
        *(v23 + 16) = v34;
        *(v23 + 56) = MEMORY[0x277D84B78];
        *(v23 + 64) = MEMORY[0x277D84BC0];
        *(v23 + 32) = v22;
        v24 = sub_227A724FC();
        v26 = v25;
        v37 = v8;
        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_227A20388(v27 > 1, v28 + 1, 1);
          v8 = v37;
        }

        *(v8 + 16) = v28 + 1;
        v29 = v8 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

id MultiplayerActivityReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiplayerActivityReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2279FCCB8(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_2279FCD50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2279FCD78(uint64_t result, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_2279F9FE0(result, a2, a3);
}

uint64_t sub_2279FCD94(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2279FBA5C(sub_2279FC020, 0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_227A724BC();
    [v5 connectionDidChangeWithState:a1 playerID:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2279FCEF4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong respondsToSelector_];
    _Block_copy(a3);
    if (v7)
    {
      v8 = sub_227A7240C();
      v10[4] = sub_2279FF01C;
      v10[5] = v4;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = sub_2279FF2E8;
      v10[3] = &block_descriptor_1;
      v9 = _Block_copy(v10);

      [v6 relayDidReceivePushData:v8 completionHandler:v9];
      _Block_release(v9);

      swift_unknownObjectRelease();

      _Block_release(a3);
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a3);
  }

  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_2279FD0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_227A724EC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

uint64_t sub_2279FD1D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      MEMORY[0x28223BE20](v7);
      OUTLINED_FUNCTION_124();
      sub_2279FA2E8(v9, v10, v11, a2, v12);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_227A71A4C();
    [v14 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2279FD2EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v7 = a3;

  sub_2279FD1D8(v7, a4, a5);
}

uint64_t sub_2279FD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_227A724BC();
    if (a5)
    {
      a5 = sub_227A724BC();
    }

    [v8 transportDidReceivePacket:a1 fromPlayerID:v9 remoteRecipientID:a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2279FD4E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_227A7240C();
    [v1 transportDidUpdateWithInfo_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2279FD5F4()
{
  sub_22790D450(v0 + 16);
  MEMORY[0x22AAA19E0](v0 + 24);
  MEMORY[0x22AAA19E0](v0 + 32);
  return v0;
}

uint64_t sub_2279FD624()
{
  v0 = sub_2279FD5F4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2279FD654()
{
  OUTLINED_FUNCTION_14_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_11_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC618, &qword_227AA05A0);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_6_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[8 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_109();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8E8, &qword_227AA3620);
    OUTLINED_FUNCTION_109();
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD74C()
{
  OUTLINED_FUNCTION_14_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_11_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_6_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD824()
{
  OUTLINED_FUNCTION_14_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_11_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC878, &unk_227AA0E10);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_6_2(v10 - 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[8 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_109();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    OUTLINED_FUNCTION_109();
    swift_arrayInitWithCopy();
  }
}

void sub_2279FD91C()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_2_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC880, &unk_227AA0E20);
    v9 = OUTLINED_FUNCTION_15_2();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

char *sub_2279FD9FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_2279FDA1C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = sub_227A7212C(), result = OUTLINED_FUNCTION_51(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    sub_227A7212C();
    OUTLINED_FUNCTION_10_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_10_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2279FDAD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

unint64_t sub_2279FDAF8()
{
  v1 = *(v0 + 40);
  sub_227A72A9C();
  v2 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDC84(v2, v3);
}

unint64_t sub_2279FDB38()
{
  v1 = *(v0 + 40);
  sub_227A71D0C();
  sub_2279FF27C(&qword_27D7DC7C8, MEMORY[0x277CC9788]);
  sub_227A7244C();
  v2 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDD48(v2, v3);
}

unint64_t sub_2279FDBCC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  v6 = sub_227A72F4C();

  return sub_2279FDF04(a1, a2, v6);
}

unint64_t sub_2279FDC44()
{
  v1 = *(v0 + 40);
  sub_227A7298C();
  v2 = OUTLINED_FUNCTION_8_3();

  return sub_2279FDFB8(v2, v3);
}

unint64_t sub_2279FDC84(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2279FEF6C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x22AAA0360](v8, a1);
    sub_2279FEFC8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDD48(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_227A71D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2279FF27C(&qword_27D7DC8E0, MEMORY[0x277CC9788]);
    v10 = sub_227A7248C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_227A72E5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2279FDFB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2279FF044(0, &qword_27D7DC890, 0x277D82BB8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_227A7299C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2279FE090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_227A71AEC();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_227A71A2C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_227A719EC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_227A71B3C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2279FE158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_2279FE6CC(sub_2279FF23C, v5, a1, a2);
}

uint64_t sub_2279FE1AC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2279E3FA4(v6, v5);
      *v4 = xmmword_227AA0C00;
      sub_2279E3FA4(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_227A719FC() && __OFSUB__(v6, sub_227A71A1C()))
      {
        goto LABEL_24;
      }

      v13 = sub_227A71A2C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_227A719DC();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_2279FE730(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2279E3FA4(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_227AA0C00;
      sub_2279E3FA4(0, 0xC000000000000000);
      sub_227A71AFC();
      v6 = v20;
      v9 = sub_2279FE730(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_2279E3FA4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_2279FE570@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_227A71AEC();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x22AA9F3C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x22AA9F3D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2279FE5E8(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_2279FEB20(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_2279FEA4C();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_2279FE684(uint64_t result)
{
  if (result)
  {
    result = sub_227A72B2C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2279FE6CC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_2279FE730(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_227A719FC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_227A71A1C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_227A71A0C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2279FE7E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227A386D0((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2279FE81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_227A389B4(v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_227A389F4(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_2279F34F8();
    }

    v8 = v29;
    sub_2279FF11C(v30, v28);
    v9 = *a5;
    v11 = sub_2279FDBCC(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8B0, &qword_227AA0E40);
        sub_227A72C3C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_227A3FD10(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_2279FDBCC(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_2279F4900(v28, v27);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        sub_2279FF11C(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_2279FF11C(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_227A72EAC();
  __break(1u);
  return result;
}

uint64_t sub_2279FEA4C()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_227A723FC();
  sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
  result = sub_227A723BC();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2279FEB20(uint64_t a1, uint64_t a2)
{
  result = sub_227A719FC();
  if (!result || (result = sub_227A71A1C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_227A71A0C();
      sub_227A723FC();
      sub_2279FF27C(&qword_27D7DC8B8, MEMORY[0x277CC5540]);
      return sub_227A723BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2279FEC00(void *a1)
{
  v1 = [a1 sessionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_2279FEC98(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  return sub_2279FA500(v3, v4, v5, a1);
}

unint64_t sub_2279FECCC()
{
  result = qword_27D7DC860;
  if (!qword_27D7DC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC860);
  }

  return result;
}

uint64_t sub_2279FED64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_8_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiplayerActivityReporter.LogEventLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MultiplayerActivityReporter.LogEventLevel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2279FF044(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2279FF084()
{
  result = qword_27D7DC8A8;
  if (!qword_27D7DC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC8A8);
  }

  return result;
}

_OWORD *sub_2279FF11C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_2279FF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_2279FE158(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_2279FF164(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_227A725DC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA9FE70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2279FF1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_2279FE684(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_2279FF25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  v5 = v3[6];
  return sub_2279FC038(a1, a2, a3, v3[2], v3[3], v3[4]);
}

uint64_t sub_2279FF27C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_8_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_allocObject();
}

id static GKDispatchGroup.namedGroup(with:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2279FF460();

  MEMORY[0x22AA9FE40](58, 0xE100000000000000);
  v7 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v7);

  MEMORY[0x22AA9FE40](32, 0xE100000000000000);
  MEMORY[0x22AA9FE40](a4, a5);
  return sub_2279FF4A4();
}

unint64_t sub_2279FF460()
{
  result = qword_27D7DC8F0;
  if (!qword_27D7DC8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC8F0);
  }

  return result;
}

id sub_2279FF4A4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_227A724BC();

  v2 = [v0 initWithName_];

  return v2;
}

uint64_t sub_2279FF518(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(*(a1 + 56) + 8 * v10);
        v15 = *a2;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = *(v15 + 16);
          sub_2279FD74C();
          v15 = v20;
          *a2 = v20;
        }

        v17 = *(v15 + 16);
        if (v17 >= *(v15 + 24) >> 1)
        {
          sub_2279FD74C();
          v15 = v21;
          *a2 = v21;
        }

        v5 &= v5 - 1;
        *(v15 + 16) = v17 + 1;
        v18 = v15 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v12;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t TransportMonitorConfiguration.maxIteration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void __swiftcall TransportMonitorConfiguration.init(maxIteration:pingInterval:pingTimeout:reportFrequency:)(GameCenterFoundation::TransportMonitorConfiguration *__return_ptr retstr, Swift::Int_optional maxIteration, Swift::Int pingInterval, Swift::Int pingTimeout, Swift::Int reportFrequency)
{
  value = 10;
  if (maxIteration.value > 10)
  {
    value = maxIteration.value;
  }

  if (maxIteration.is_nil)
  {
    value = maxIteration.value;
  }

  v6 = 500;
  if (pingInterval > 500)
  {
    v6 = pingInterval;
  }

  v7.i64[0] = pingTimeout;
  v7.i64[1] = reportFrequency;
  v8 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v7), v7, xmmword_227AA0E70);
  retstr->maxIteration.value = value;
  retstr->maxIteration.is_nil = maxIteration.is_nil;
  retstr->pingInterval = v6;
  *&retstr->pingTimeout = vbslq_s8(vcgtq_s64(v8, xmmword_227AA0E80), v8, xmmword_227AA0E80);
}

void __swiftcall TransportMonitorConfiguration.init(testOverrideMaxIteration:testOverridePingInterval:testOverridePingTimeout:testOverrideReportFrequency:)(GameCenterFoundation::TransportMonitorConfiguration *__return_ptr retstr, Swift::Int_optional testOverrideMaxIteration, Swift::Int testOverridePingInterval, Swift::Int testOverridePingTimeout, Swift::Int testOverrideReportFrequency)
{
  retstr->maxIteration.value = testOverrideMaxIteration.value;
  retstr->maxIteration.is_nil = testOverrideMaxIteration.is_nil;
  retstr->pingInterval = testOverridePingInterval;
  retstr->pingTimeout = testOverridePingTimeout;
  retstr->reportFrequency = testOverrideReportFrequency;
}

uint64_t TransportPeerMonitorState.hashValue.getter()
{
  v1 = *v0;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

uint64_t sub_2279FF870()
{
  v1 = *v0;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

__n128 TransportPeerMonitor.configuration.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[8];
  v3 = v1[5].n128_u64[0];
  a1->n128_u64[0] = v1[3].n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[4];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  return result;
}

uint64_t sub_2279FF8D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2279FF94C(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_2279FF914(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2279FF98C(&v4);
}

uint64_t sub_2279FF94C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_9_2();
  result = swift_beginAccess();
  *a1 = *(v1 + 153);
  return result;
}

uint64_t sub_2279FF98C(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 153) = v2;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_2279FFA44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    sub_227A727DC();

    v2 = *(v0 + 40);
  }

  *(v0 + 40) = 0;
}

void sub_2279FFACC()
{
  v1 = *(v0 + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 120) = v3;
  }
}

uint64_t sub_2279FFAE4()
{
  v1 = v0;
  v2 = sub_227A71C2C();
  v3 = OUTLINED_FUNCTION_92(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 - v8;
  sub_227A71C1C();
  sub_227A71BFC();
  v12 = v11;
  result = (*(v5 + 8))(v10, v2);
  *(v1 + 144) = v12;
  *(v1 + 152) = 0;
  v14 = *(v1 + 104);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 104) = v16;
  }

  return result;
}

uint64_t sub_2279FFBC0()
{
  v1 = OUTLINED_FUNCTION_87();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_227A7274C();
  v7 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OUTLINED_FUNCTION_110();
  v8 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_19_0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v10 = sub_227A005B8(0, 0, v6, &unk_227AA10A8, v9);
  sub_227A04918(v6, &qword_27D7DC5B8, &qword_227AA04D0);
  v11 = *(v0 + 40);
  *(v0 + 40) = v10;
}

uint64_t sub_2279FFCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_227A72BFC();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279FFDB0, 0, 0);
}

uint64_t sub_2279FFDB0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[8];
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v3 = v0[12];
  if (Strong)
  {
    sub_227A00584(*(Strong + 72));
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_18_1(dword_227AA40D0);
    v12 = v4;
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_2279FFEC8;
    v6 = v0[12];
    v7 = OUTLINED_FUNCTION_5_0();

    return v12(v7);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[12];

    OUTLINED_FUNCTION_23();

    return v11();
  }
}

uint64_t sub_2279FFEC8()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[12];
  v6 = v2[10];
  v7 = v2[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  v3[15] = v0;

  v10 = *(v6 + 8);
  v3[16] = v10;
  v3[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  if (v0)
  {
    v11 = sub_227A002B0;
  }

  else
  {
    v11 = sub_227A00040;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_227A00040()
{
  v30 = v0;
  if (sub_227A727FC())
  {
    v1 = v0[13];

    v3 = v0[11];
    v2 = v0[12];

    OUTLINED_FUNCTION_23();

    return v4();
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v6 = v0[13];
    v7 = sub_227A7227C();
    __swift_project_value_buffer(v7, qword_280B54DB8);

    v8 = sub_227A7226C();
    v9 = sub_227A7289C();
    v10 = OUTLINED_FUNCTION_27_0(v9);
    v11 = v0[13];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_107();
      v29 = v13;
      *v12 = 136315394;
      v14 = v11[11];
      v15 = v11[12];

      v16 = sub_227A46730(v14, v15, &v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v11[15];

      _os_log_impl(&dword_227904000, v8, v9, "Ping monitor[%s] ping timeout SEQ:%ld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    else
    {
      v17 = v0[13];
    }

    v18 = v0[13];
    result = swift_beginAccess();
    *(v18 + 153) = 3;
    v19 = *(v18 + 120);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v22 = v0[13];
      v23 = v0[11];
      *(v18 + 120) = v21;
      sub_227A00584(*(v22 + 72));
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_18_1(dword_227AA40D0);
      v28 = v24;
      v25 = swift_task_alloc();
      v0[18] = v25;
      *v25 = v0;
      v25[1] = sub_227A00328;
      v26 = v0[11];
      v27 = OUTLINED_FUNCTION_5_0();

      return v28(v27);
    }
  }

  return result;
}

uint64_t sub_227A002B0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A00328()
{
  OUTLINED_FUNCTION_36();
  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[11];
  v7 = v2[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 152) = v0;

  v11 = OUTLINED_FUNCTION_87();
  v5(v11);
  if (v0)
  {
    v12 = sub_227A0050C;
  }

  else
  {
    v12 = sub_227A00498;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_227A00498()
{
  v1 = v0[13];
  sub_227A007F8();
  v2 = v0[13];

  v4 = v0[11];
  v3 = v0[12];

  OUTLINED_FUNCTION_23();

  return v5();
}

uint64_t sub_227A0050C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A005B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_227A046CC(a3, v23 - v10);
  v12 = sub_227A7276C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_227A04918(v11, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_227A726EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_227A7253C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_227A007F8()
{
  v1 = v0;
  if ((*(v0 + 56) & 1) != 0 || *(v0 + 104) < *(v0 + 48))
  {
    sub_2279FFA44();
    OUTLINED_FUNCTION_11_2();
    *(v0 + 153) = 2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v1 + 88);
      v5 = *(v1 + 96);
      v6 = sub_227A724BC();
      [v3 sendPingTo:v6 sequence:*(v1 + 120)];

      swift_unknownObjectRelease();
    }

    *(v1 + 144) = 0;
    *(v1 + 152) = 1;
    sub_2279FFAE4();
    return sub_2279FFBC0();
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_227A7227C();
    __swift_project_value_buffer(v8, qword_280B54DB8);
    OUTLINED_FUNCTION_13();

    v9 = sub_227A7226C();
    v10 = sub_227A7289C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_107();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_227A46730(*(v1 + 88), *(v1 + 96), &v15);
      _os_log_impl(&dword_227904000, v9, v10, "Ping monitor[%s] stopping due to max iteration reached.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    sub_227A00AC0();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(*(v1 + 88), *(v1 + 96), ObjectType, v13);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_227A00A00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 1);
  v9 = a1[4];
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 1;
  *(v4 + 40) = 0;
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  *(v4 + 64) = v11;
  *(v4 + 80) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  return v4;
}

uint64_t sub_227A00AC0()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 152) = 1;
  result = OUTLINED_FUNCTION_11_2();
  *(v0 + 153) = 4;
  return result;
}

uint64_t sub_227A00B04()
{
  sub_2279FFA44();
  OUTLINED_FUNCTION_11_2();
  *(v0 + 153) = 1;
  return sub_227A007F8();
}

void sub_227A00B40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227A7232C();
  v5 = OUTLINED_FUNCTION_92(v4);
  v92 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v90 = v10 - v9;
  OUTLINED_FUNCTION_24_0();
  v91 = sub_227A7237C();
  v11 = OUTLINED_FUNCTION_92(v91);
  v89 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_2();
  v88 = v16 - v15;
  OUTLINED_FUNCTION_24_0();
  v17 = sub_227A7231C();
  v18 = OUTLINED_FUNCTION_92(v17);
  v84 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_2();
  v24 = (v23 - v22);
  v25 = sub_227A7239C();
  v26 = OUTLINED_FUNCTION_92(v25);
  v86 = v27;
  v87 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v85 = &v80 - v33;
  OUTLINED_FUNCTION_24_0();
  v34 = sub_227A7233C();
  v35 = OUTLINED_FUNCTION_92(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_2();
  v42 = v41 - v40;
  if (*(v2 + 152))
  {
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v43 = sub_227A7227C();
    __swift_project_value_buffer(v43, qword_280B54DB8);
    OUTLINED_FUNCTION_13();

    v92 = sub_227A7226C();
    v44 = sub_227A728BC();

    if (os_log_type_enabled(v92, v44))
    {
      v45 = swift_slowAlloc();
      v46 = OUTLINED_FUNCTION_107();
      aBlock[0] = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
      *(v45 + 12) = 2048;
      *(v45 + 14) = a1;
      _os_log_impl(&dword_227904000, v92, v44, "Ping monitor[%s] error: lastSentTime is nil, discard pong packet for sequence number %ld", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();

LABEL_23:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    OUTLINED_FUNCTION_25_0();

    return;
  }

  v47 = *(v2 + 120);
  v83 = a1;
  if (v47 == a1)
  {
    v82 = v4;
    v48 = *(v2 + 144);
    swift_beginAccess();
    *(v2 + 153) = 1;
    sub_2279FFA44();
    sub_227A71BFC();
    v50 = v49 - v48;
    *(v2 + 136) = v50;
    v51 = *(v2 + 112);
    v52 = v51 + 1;
    if (!__OFADD__(v51, 1))
    {
      v53 = v50 + *(v2 + 128) * v51;
      *(v2 + 112) = v52;
      *(v2 + 128) = v53 / v52;
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v54 = sub_227A7227C();
      __swift_project_value_buffer(v54, qword_280B54DB8);
      OUTLINED_FUNCTION_13();

      v55 = sub_227A7226C();
      v56 = sub_227A728AC();
      if (OUTLINED_FUNCTION_27_0(v56))
      {
        v57 = swift_slowAlloc();
        v81 = OUTLINED_FUNCTION_107();
        aBlock[0] = v81;
        *v57 = 136316418;
        v58 = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
        v59 = *(v2 + 128);
        *(v57 + 24) = *(v2 + 136);
        *(v57 + 4) = v58;
        *(v57 + 14) = v83;
        v60 = *(v2 + 104);
        *(v57 + 44) = *(v2 + 112);
        *(v57 + 12) = 2048;
        *(v57 + 22) = 2048;
        *(v57 + 32) = 2048;
        *(v57 + 34) = v59;
        *(v57 + 42) = 2048;
        *(v57 + 52) = 2048;
        *(v57 + 54) = v60;

        _os_log_impl(&dword_227904000, v55, v56, "Ping monitor[%s] received pong[%ld], RTT: %f, aRTT: %f, c: %ld/%ld", v57, 0x3Eu);
        __swift_destroy_boxed_opaque_existential_0Tm(v81);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }

      sub_227A045E4();
      (*(v37 + 104))(v42, *MEMORY[0x277D851C0], v34);
      v83 = sub_227A7295C();
      (*(v37 + 8))(v42, v34);
      sub_227A7238C();
      *v24 = *(v2 + 64);
      v69 = v84;
      (*(v84 + 104))(v24, *MEMORY[0x277D85178], v17);
      v70 = v85;
      MEMORY[0x22AA9FC60](v32, v24);
      (*(v69 + 8))(v24, v17);
      v71 = v87;
      v86 = *(v86 + 8);
      (v86)(v32, v87);
      aBlock[4] = sub_227A04628;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_3_3();
      aBlock[2] = v72;
      aBlock[3] = &block_descriptor_75;
      v73 = _Block_copy(aBlock);

      v74 = v88;
      sub_227A7235C();
      v93 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_3();
      sub_227A04980(v75, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
      sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
      v77 = v90;
      v78 = v82;
      sub_227A729FC();
      v79 = v83;
      MEMORY[0x22AAA01C0](v70, v74, v77, v73);
      _Block_release(v73);

      (v92[1].isa)(v77, v78);
      (*(v89 + 8))(v74, v91);
      (v86)(v70, v71);

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_280B54DB0 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_1_1();
  }

  v63 = sub_227A7227C();
  __swift_project_value_buffer(v63, qword_280B54DB8);
  OUTLINED_FUNCTION_13();

  v64 = sub_227A7226C();
  v65 = sub_227A728BC();
  if (OUTLINED_FUNCTION_27_0(v65))
  {
    v66 = OUTLINED_FUNCTION_107();
    v67 = OUTLINED_FUNCTION_107();
    aBlock[0] = v67;
    *v66 = 136315650;
    *(v66 + 4) = sub_227A46730(*(v2 + 88), *(v2 + 96), aBlock);
    *(v66 + 12) = 2048;
    *(v66 + 14) = v83;
    *(v66 + 22) = 2048;
    *(v66 + 24) = *(v2 + 120);

    _os_log_impl(&dword_227904000, v64, v65, "Ping monitor[%s] error: sequence number mismatch. %ld != %ld", v66, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_227A013FC(uint64_t result)
{
  v1 = *(result + 120);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 120) = v3;
    return sub_227A007F8();
  }

  return result;
}

uint64_t sub_227A01434(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_227A01478()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 136) * 1000.0;
  v4 = *(v0 + 128) * 1000.0;
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = objc_allocWithZone(type metadata accessor for TransportMonitorPlayerStat());

  OUTLINED_FUNCTION_87();
  return TransportMonitorPlayerStat.init(monitoring:latency:averageLatency:sentCount:receivedCount:)();
}

uint64_t TransportPeerMonitor.deinit()
{
  sub_22790D450(v0 + 16);
  sub_22790D450(v0 + 32);
  v1 = *(v0 + 40);

  v2 = *(v0 + 96);

  return v0;
}

uint64_t TransportPeerMonitor.__deallocating_deinit()
{
  TransportPeerMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 154, 7);
}

uint64_t TransportMonitor.monitors.getter()
{
  v1 = OBJC_IVAR___GKTransportMonitor_monitors;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t TransportMonitor.monitors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GKTransportMonitor_monitors;
  OUTLINED_FUNCTION_11_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransportMonitor.clientDelegate.getter()
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t TransportMonitor.clientDelegate.setter()
{
  OUTLINED_FUNCTION_11_2();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_227A01784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_227A017E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*TransportMonitor.clientDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___GKTransportMonitor_clientDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_227A018C0;
}

void sub_227A018C0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_227A01940(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_227A7291C();
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227A728FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_227A7237C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v19 = *a1;
  v18 = *(a1 + 8);
  v17 = *(a1 + 1);
  v11 = a1[4];
  v15 = OBJC_IVAR___GKTransportMonitor_serialQueue;
  v16 = v11;
  v14[1] = sub_227A045E4();
  sub_227A7236C();
  v24 = MEMORY[0x277D84F90];
  sub_227A04980(&qword_27D7DC830, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC838, &unk_227AA0C10);
  sub_227A049C8(&qword_27D7DC840, &qword_27D7DC838, &unk_227AA0C10);
  sub_227A729FC();
  (*(v20 + 104))(v6, *MEMORY[0x277D85260], v21);
  *&v1[v15] = sub_227A7294C();
  *&v1[OBJC_IVAR___GKTransportMonitor_reportTask] = 0;
  *&v1[OBJC_IVAR___GKTransportMonitor_monitors] = MEMORY[0x277D84F98];
  swift_unknownObjectWeakInit();
  v12 = &v1[OBJC_IVAR___GKTransportMonitor_configuration];
  *v12 = v19;
  v12[8] = v18;
  *(v12 + 1) = v17;
  *(v12 + 4) = v16;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_227A01C40()
{
  v14 = MEMORY[0x277D84F90];
  v1 = *&v0[OBJC_IVAR___GKTransportMonitor_serialQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v14;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_227A04978;
  *(v3 + 24) = v2;
  aBlock[4] = sub_227A04A34;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2279FF6D4;
  aBlock[3] = &block_descriptor_106;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v14;
    v9 = type metadata accessor for TransportMonitorStat();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___GKTransportMonitorStat_playerStats] = v8;
    v12.receiver = v10;
    v12.super_class = v9;

    v11 = objc_msgSendSuper2(&v12, sel_init);

    return v11;
  }

  return result;
}

uint64_t sub_227A01DFC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___GKTransportMonitor_monitors;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));

        sub_227A01478();
        MEMORY[0x22AA9FF30]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_227A726BC();
        }

        v8 &= v8 - 1;
        sub_227A726DC();
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227A01F60()
{
  v1 = sub_227A7232C();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227A7237C();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___GKTransportMonitor_serialQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_227A0473C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_89;
  v10 = _Block_copy(aBlock);

  sub_227A7235C();
  v15 = MEMORY[0x277D84F90];
  sub_227A04980(&qword_27D7DC910, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_227A0223C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR___GKTransportMonitor_reportTask;
    if (*(result + OBJC_IVAR___GKTransportMonitor_reportTask))
    {
      v7 = *(result + OBJC_IVAR___GKTransportMonitor_reportTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
      sub_227A727DC();
    }

    v8 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v11 = sub_227A005B8(0, 0, v3, &unk_227AA10C0, v10);
    sub_227A04918(v3, &qword_27D7DC5B8, &qword_227AA04D0);
    v12 = *&v5[v6];
    *&v5[v6] = v11;
  }

  return result;
}

uint64_t sub_227A023E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_227A72BFC();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A024A4, 0, 0);
}

uint64_t sub_227A024A4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[8];
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  v3 = v0[11];
  if (Strong)
  {
    sub_227A46FBC(*(Strong + OBJC_IVAR___GKTransportMonitor_configuration + 32));
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_18_1(dword_227AA40D0);
    v11 = v4;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_227A025BC;
    v6 = v0[11];
    v7 = OUTLINED_FUNCTION_5_0();

    return v11(v7);
  }

  else
  {
    v9 = v0[11];

    OUTLINED_FUNCTION_23();

    return v10();
  }
}

uint64_t sub_227A025BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v3 = v2[13];
  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v9 + 112) = v0;

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_87();
  v12(v11);
  if (v0)
  {
    v13 = sub_227A028DC;
  }

  else
  {
    v13 = sub_227A02718;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_227A02718()
{
  if (sub_227A727FC())
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 96);
    v3 = sub_227A01C40();
    OUTLINED_FUNCTION_9_2();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong monitorStatsUpdated_];
      swift_unknownObjectRelease();
    }

    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v5 = sub_227A7227C();
    __swift_project_value_buffer(v5, qword_280B54DB8);
    v6 = v3;
    v7 = sub_227A7226C();
    v8 = sub_227A728AC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_227904000, v7, v8, "Monitor reported stats: %@", v9, 0xCu);
      sub_227A04918(v10, &unk_27D7DD270, &qword_227AA10E0);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    v1 = *(v0 + 96);

    sub_227A01F60();
  }

  v12 = *(v0 + 88);

  OUTLINED_FUNCTION_23();

  return v13();
}

uint64_t sub_227A028DC()
{
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_41();
  v3 = *(v0 + 112);

  return v2();
}

id TransportMonitor.init(maxIteration:pingInterval:pingTimeout:reportFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = 10;
  if (a1 > 10)
  {
    v9 = a1;
  }

  v10 = 500;
  if (a2 > 500)
  {
    v10 = a2;
  }

  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v12 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v11), v11, xmmword_227AA0E70);
  v15 = v9;
  v16 = 0;
  v17 = v10;
  v18 = vbslq_s8(vcgtq_s64(v12, xmmword_227AA0E80), v12, xmmword_227AA0E80);
  v13 = objc_allocWithZone(ObjectType);
  sub_227A01940(&v15);
  OUTLINED_FUNCTION_13();
  swift_getObjectType();
  OUTLINED_FUNCTION_26_0();
  return v13;
}

id TransportMonitor.init(pingInterval:pingTimeout:reportFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = 500;
  if (a1 > 500)
  {
    v7 = a1;
  }

  v8.i64[0] = a2;
  v8.i64[1] = a3;
  v9 = vbslq_s8(vcgtq_s64(xmmword_227AA0E70, v8), v8, xmmword_227AA0E70);
  v12 = 0;
  v13 = 1;
  v14 = v7;
  v15 = vbslq_s8(vcgtq_s64(v9, xmmword_227AA0E80), v9, xmmword_227AA0E80);
  v10 = objc_allocWithZone(ObjectType);
  sub_227A01940(&v12);
  OUTLINED_FUNCTION_13();
  swift_getObjectType();
  OUTLINED_FUNCTION_26_0();
  return v10;
}

id TransportMonitor.__allocating_init(testConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 16);
  v9 = v3;
  v4 = objc_allocWithZone(v1);
  return sub_227A01940(&v6);
}

Swift::Void __swiftcall TransportMonitor.startMonitor(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *&v1[OBJC_IVAR___GKTransportMonitor_serialQueue];
  OUTLINED_FUNCTION_19_0();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_227A030D0;
  *(v6 + 24) = v5;
  v10[4] = sub_227A030DC;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_8_4();
  v10[2] = v7;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(object) = swift_isEscapingClosureAtFileLocation();

  if (object)
  {
    __break(1u);
  }

  else
  {
    sub_227A01F60();
  }
}

void sub_227A02D7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___GKTransportMonitor_monitors;
  swift_beginAccess();
  v7 = sub_2279F9168(a2, a3, *(a1 + v6));
  swift_endAccess();
  if (v7)
  {

    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v8 = sub_227A7227C();
    __swift_project_value_buffer(v8, qword_280B54DB8);
    v9 = sub_227A7226C();
    v10 = sub_227A728BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_227904000, v9, v10, "Monitor[monitoring] already started. Return.", v11, 2u);
      MEMORY[0x22AAA1930](v11, -1, -1);
    }
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v12 = sub_227A7227C();
    __swift_project_value_buffer(v12, qword_280B54DB8);

    v13 = sub_227A7226C();
    v14 = sub_227A7289C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(a2, a3, &v23);
      _os_log_impl(&dword_227904000, v13, v14, "Starting monitor for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AAA1930](v16, -1, -1);
      MEMORY[0x22AAA1930](v15, -1, -1);
    }

    v17 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 8);
    v18 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 32);
    v23 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration);
    v24 = v17;
    v25 = *(a1 + OBJC_IVAR___GKTransportMonitor_configuration + 16);
    v26 = v18;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for TransportPeerMonitor();
    v20 = swift_allocObject();

    sub_227A00A00(&v23, Strong, a2, a3);
    *(v20 + 24) = &protocol witness table for TransportMonitor;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();

    v21 = *(a1 + v6);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + v6);
    sub_227A62510(v20, a2, a3);
    *(a1 + v6) = v22;
    swift_endAccess();
    sub_227A00B04();
  }
}

uint64_t sub_227A030DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall TransportMonitor.stopMonitor(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_227A7232C();
  v6 = OUTLINED_FUNCTION_92(v5);
  v29 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_2();
  v12 = v11 - v10;
  v28 = sub_227A7237C();
  v13 = OUTLINED_FUNCTION_92(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  v20 = v19 - v18;
  v27 = *(v2 + OBJC_IVAR___GKTransportMonitor_serialQueue);
  OUTLINED_FUNCTION_110();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_19_0();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = countAndFlagsBits;
  v22[4] = object;
  v34 = sub_227A0365C;
  v35 = v22;
  OUTLINED_FUNCTION_7_4();
  v31 = 1107296256;
  OUTLINED_FUNCTION_3_3();
  v32 = v23;
  v33 = &block_descriptor_12;
  v24 = _Block_copy(aBlock);

  sub_227A7235C();
  OUTLINED_FUNCTION_2_3();
  sub_227A04980(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v20, v12, v24);
  _Block_release(v24);
  (*(v29 + 8))(v12, v5);
  (*(v15 + 8))(v20, v28);
}

void sub_227A033DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v7 = sub_227A7227C();
    __swift_project_value_buffer(v7, qword_280B54DB8);

    v8 = sub_227A7226C();
    v9 = sub_227A7289C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_227A46730(a2, a3, &v16);
      _os_log_impl(&dword_227904000, v8, v9, "Stopping monitor for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AAA1930](v11, -1, -1);
      MEMORY[0x22AAA1930](v10, -1, -1);
    }

    v12 = OBJC_IVAR___GKTransportMonitor_monitors;
    swift_beginAccess();
    if (sub_2279F9168(a2, a3, *&v6[v12]))
    {
      swift_endAccess();
      sub_227A00AC0();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    sub_227A3F780(a2, a3);
    swift_endAccess();

    if (*(*&v6[v12] + 16))
    {
    }

    else
    {
      v13 = OBJC_IVAR___GKTransportMonitor_reportTask;
      if (*&v6[OBJC_IVAR___GKTransportMonitor_reportTask])
      {
        v14 = *&v6[OBJC_IVAR___GKTransportMonitor_reportTask];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
        sub_227A727DC();

        v15 = *&v6[v13];
      }

      *&v6[v13] = 0;
    }
  }
}

Swift::Void __swiftcall TransportMonitor.stopMonitoringAll()()
{
  v1 = v0;
  if (qword_280B54DB0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = sub_227A7227C();
    __swift_project_value_buffer(v2, qword_280B54DB8);
    v3 = sub_227A7226C();
    v4 = sub_227A7289C();
    if (OUTLINED_FUNCTION_27_0(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_227904000, v3, v4, "Stopping monitoring all", v5, 2u);
      OUTLINED_FUNCTION_103();
    }

    v20 = MEMORY[0x277D84F90];
    v6 = *(v1 + OBJC_IVAR___GKTransportMonitor_serialQueue);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = &v20;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_227A04230;
    *(v8 + 24) = v7;
    aBlock[4] = sub_227A04A34;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    aBlock[2] = v9;
    aBlock[3] = &block_descriptor_22;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v1 = v20;
    v13 = v20[2];

    v14 = 0;
    for (i = v1 + 5; ; i += 2)
    {
      if (v13 == v14)
      {

        return;
      }

      if (v14 >= v1[2])
      {
        break;
      }

      ++v14;
      v17 = *(i - 1);
      v16 = *i;

      v18._countAndFlagsBits = v17;
      v18._object = v16;
      TransportMonitor.stopMonitor(_:)(v18);
    }

    __break(1u);
LABEL_11:
    OUTLINED_FUNCTION_1_1();
  }

  __break(1u);
}

uint64_t sub_227A038EC(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR___GKTransportMonitor_monitors;
  swift_beginAccess();
  v5 = *(a1 + v4);

  sub_2279FF518(v6, a2);
}

Swift::Void __swiftcall TransportMonitor.receivedPing(_:sequenceNumber:)(Swift::String _, Swift::Int sequenceNumber)
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_227A724BC();
    [v4 sendPongTo:v5 sequence:sequenceNumber];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TransportMonitor.receivedPong(_:sequenceNumber:)(Swift::String _, Swift::Int sequenceNumber)
{
  countAndFlagsBits = _._countAndFlagsBits;
  v40 = sequenceNumber;
  object = _._object;
  v44 = sub_227A7232C();
  v4 = OUTLINED_FUNCTION_92(v44);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v42 = v9 - v8;
  OUTLINED_FUNCTION_24_0();
  v45 = sub_227A7237C();
  v10 = OUTLINED_FUNCTION_92(v45);
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  v16 = v15 - v14;
  v17 = sub_227A71C2C();
  v18 = OUTLINED_FUNCTION_92(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v24 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - v25;
  sub_227A71C1C();
  v41 = *(v2 + OBJC_IVAR___GKTransportMonitor_serialQueue);
  OUTLINED_FUNCTION_110();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v20 + 16))(v24, v26, v17);
  v28 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v29 = swift_allocObject();
  v31 = countAndFlagsBits;
  v30 = v40;
  *(v29 + 2) = v27;
  *(v29 + 3) = v31;
  *(v29 + 4) = object;
  *(v29 + 5) = v30;
  (*(v20 + 32))(&v29[v28], v24, v17);
  v52 = sub_227A04238;
  v53 = v29;
  OUTLINED_FUNCTION_7_4();
  v49 = 1107296256;
  OUTLINED_FUNCTION_3_3();
  v50 = v32;
  v51 = &block_descriptor_29_0;
  v33 = _Block_copy(aBlock);

  sub_227A7235C();
  v47 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_3();
  sub_227A04980(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A049C8(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0);
  v36 = v42;
  v37 = v44;
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v16, v36, v33);
  _Block_release(v33);
  (*(v46 + 8))(v36, v37);
  (*(v43 + 8))(v16, v45);
  (*(v20 + 8))(v26, v17);
}

void sub_227A03E0C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___GKTransportMonitor_monitors;
    swift_beginAccess();
    if (sub_2279F9168(a2, a3, *&v8[v9]))
    {
      swift_endAccess();
      sub_227A00B40(a4);
    }

    else
    {
      swift_endAccess();
      if (qword_280B54DB0 != -1)
      {
        swift_once();
      }

      v10 = sub_227A7227C();
      __swift_project_value_buffer(v10, qword_280B54DB8);

      v11 = sub_227A7226C();
      v12 = sub_227A728BC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_227A46730(a2, a3, &v15);
        _os_log_impl(&dword_227904000, v11, v12, "Monitor received pong from unknown player %s. Return.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x22AAA1930](v14, -1, -1);
        MEMORY[0x22AAA1930](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_227A0400C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_227A724EC();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a4);
}

id TransportMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransportMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A041C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_227A724EC();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_227A04238()
{
  v1 = *(*(sub_227A71C2C() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  sub_227A03E0C(v2, v3, v4, v5);
}

unint64_t sub_227A042A4()
{
  result = qword_27D7DC928;
  if (!qword_27D7DC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC928);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227A0430C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A0432C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TransportPeerMonitorState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransportPeerMonitorState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227A045E4()
{
  result = qword_27D7DC828;
  if (!qword_27D7DC828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC828);
  }

  return result;
}

uint64_t sub_227A04630()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_16_1(v5);

  return sub_2279FFCE4(v6, v7, v8, v9);
}

uint64_t sub_227A046CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_227A04798()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_16_1(v5);

  return sub_227A023E4(v6, v7, v8, v9);
}

uint64_t sub_227A04834()
{
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A04918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227A04980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227A049C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return MEMORY[0x2822008D8]();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_deallocPartialClassInstance();
}

BOOL OUTLINED_FUNCTION_27_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t static InviteMessageSupport.makeInviteMessageDone(properties:)(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = xmmword_227AA0C00;
  sub_227A04F34(4);
  if (a1)
  {
    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC940, &qword_227AA10D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = 0x69747265706F7270;
    *(inited + 40) = 0xEA00000000007365;
    *(inited + 48) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC948, &qword_227AA10D8);
    sub_227A7243C();
    v4 = sub_227A7240C();

    v32 = 0;
    v5 = [v2 dataWithPropertyList:v4 format:200 options:0 error:&v32];

    v6 = v32;
    if (v5)
    {
      v7 = sub_227A71B9C();
      v9 = v8;

      sub_227A71BAC();
      sub_2279E3FA4(v7, v9);
    }

    else
    {
      v14 = v6;
      v15 = sub_227A71A5C();

      swift_willThrow();
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v16 = sub_227A7227C();
      __swift_project_value_buffer(v16, qword_280B551E8);
      v17 = v15;
      v18 = sub_227A7226C();
      v19 = sub_227A728BC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v15;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        OUTLINED_FUNCTION_3_4(&dword_227904000, v24, v25, "Failed to serialize match properties when making GKInviteMessageDone, error: %@");
        sub_227A04918(v21, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v10 = sub_227A7227C();
    __swift_project_value_buffer(v10, qword_280B54DB8);
    v11 = sub_227A728DC();
    v12 = sub_227A7226C();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_227904000, v12, v11, "No match provided when making GKInviteMessageDone, skipping properties.", v13, 2u);
      OUTLINED_FUNCTION_103();
    }
  }

  v26 = OUTLINED_FUNCTION_115();
  sub_2279E3EE4(v26, v27);
  v28 = OUTLINED_FUNCTION_115();
  sub_2279E3FA4(v28, v29);
  v30 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_115();
}

uint64_t sub_227A04F34(int a1)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = &v6;
  v7[1] = v7;
  v1 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x277D838B0]);
  v3 = *v1;
  v2 = v1[1];
  sub_227A71B6C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static InviteMessageSupport.extractProperties(data:)(uint64_t a1, unint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v4 = a1;
  v5 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v6 = v6;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_32;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    case 3uLL:
      goto LABEL_30;
    default:
      v6 = BYTE6(a2);
LABEL_6:
      if (v6 < 5)
      {
        goto LABEL_29;
      }

      if (v2 == 2)
      {
        a1 = *(a1 + 16);
        v10 = *(v4 + 24);
      }

      else
      {
        if (v2 != 1)
        {
          goto LABEL_13;
        }

        if (a1 >> 32 < a1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          OUTLINED_FUNCTION_3_1();
LABEL_26:
          v30 = sub_227A7227C();
          __swift_project_value_buffer(v30, qword_280B551E8);
          v31 = sub_227A7226C();
          v32 = sub_227A728BC();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_227904000, v31, v32, "Failed to cast match properties when reading GKInviteMessageDone", v33, 2u);
            OUTLINED_FUNCTION_103();
          }

          goto LABEL_29;
        }

        a1 = a1;
      }

      LODWORD(a1) = sub_227A05960(a1);
LABEL_13:
      if (a1 != 4)
      {
        goto LABEL_29;
      }

      v11 = objc_opt_self();
      v12 = OUTLINED_FUNCTION_115();
      sub_2279E3EE4(v12, v13);
      sub_227A05574(4, v4, a2, &v37);
      v14 = v37;
      v15 = sub_227A71B8C();
      sub_2279E3FA4(v14, *(&v14 + 1));
      *&v37 = 0;
      v16 = [v11 propertyListWithData:v15 options:0 format:0 error:&v37];

      if (v16)
      {
        v17 = v37;
        sub_227A729EC();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC950, qword_227AA10E8);
        if (OUTLINED_FUNCTION_4_2())
        {
          sub_2279F9104(0x69747265706F7270, 0xEA00000000007365, v36, &v37);

          if (v38)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC948, &qword_227AA10D8);
            if (OUTLINED_FUNCTION_4_2())
            {
              v5 = v36;
              goto LABEL_30;
            }
          }

          else
          {
            sub_227A04918(&v37, &qword_27D7DC610, &qword_227AA0590);
          }
        }

        if (qword_280B551E0 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v18 = v37;
      v19 = sub_227A71A5C();

      swift_willThrow();
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v20 = sub_227A7227C();
      __swift_project_value_buffer(v20, qword_280B551E8);
      v21 = v19;
      v22 = sub_227A7226C();
      v23 = sub_227A728BC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        OUTLINED_FUNCTION_3_4(&dword_227904000, v28, v29, "Failed to deserialize match properties when reading GKInviteMessageDone, error: %@");
        sub_227A04918(v25, &unk_27D7DD270, &qword_227AA10E0);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      else
      {
      }

LABEL_29:
      v5 = 0;
LABEL_30:
      v34 = *MEMORY[0x277D85DE8];
      return v5;
  }
}

unint64_t sub_227A054A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_227A7256C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_227A7260C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227A05574@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_227A05A58(v11, v9, a2, a3);
    if (v7 && v12 < v7)
    {
      switch(v5)
      {
        case 2:
          goto LABEL_15;
        default:
          break;
      }
    }

    else
    {
      v13 = sub_227A059F0(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
LABEL_15:
        v15 = *(a2 + 24);
      }
    }

    v16 = sub_227A71B7C();
    v18 = v17;
    result = sub_2279E3FA4(a2, a3);
    *a4 = v16;
    a4[1] = v18;
  }

  return result;
}

id InviteMessageSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InviteMessageSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InviteMessageSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A0588C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_227A058EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_227A05960(uint64_t a1)
{
  v2 = sub_227A719FC();
  if (v2)
  {
    v3 = v2;
    result = sub_227A71A1C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_227A71A0C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227A059F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_227A05A58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t ACAccount.GKConstants.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_227A72CFC();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ACAccount.GKConstants.rawValue.getter()
{
  result = 0x7361696C61;
  switch(*v0)
  {
    case 1:
      result = 0x6D614E7473726966;
      break;
    case 2:
      result = 0x656D614E7473616CLL;
      break;
    case 3:
      result = 0x64692D656C707061;
      break;
    case 4:
      result = 7761509;
      break;
    case 5:
      result = 1684632420;
      break;
    case 6:
      result = 0x44495344746C61;
      break;
    case 7:
      result = 0x74616E7265746C61;
      break;
    case 8:
      result = 0x692D726579616C70;
      break;
    case 9:
      v2 = 0x742D68747561;
      goto LABEL_6;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      v2 = 0x54766E454B47;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6B6F000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A05CC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2279E9634();
}

uint64_t sub_227A05CEC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ACAccount.GKConstants.init(rawValue:)(a1);
}

uint64_t sub_227A05CF8@<X0>(uint64_t *a1@<X8>)
{
  result = ACAccount.GKConstants.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t ACAccount.gkScope(for:)(uint64_t a1)
{
  if (sub_227A065F0(0xD000000000000011, 0x8000000227A96BA0, a1, v1))
  {
    sub_227A729EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_22790AB88(v9);
    goto LABEL_8;
  }

  sub_227A0665C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  v2 = [v6 unsignedIntValue];

  v3 = 0;
  v4 = v2;
  return v4 | (v3 << 32);
}

void Array<A>.gkExistingAccount(matchingAltDSID:matchingDSID:matchingUserName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_227A065CC(a7);
  for (i = 0; v11 != i; ++i)
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAA03F0](i, a7);
    }

    else
    {
      if (i >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v13 = *(a7 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v19 = v13;
    sub_227A05F04(&v19, a5, a6, a1, a2, a3, a4);
    if (v15)
    {
      return;
    }
  }
}

void sub_227A05F04(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_227A066A0(*a1);
  if (v15)
  {
    if (v14 == a2 && v15 == a3)
    {
    }

    else
    {
      v17 = sub_227A72E5C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (qword_27D7DC4C0 != -1)
    {
      swift_once();
    }

    v18 = sub_227A7227C();
    __swift_project_value_buffer(v18, qword_27D7DE1B0);
    v19 = v13;
    v20 = sub_227A7226C();
    v21 = sub_227A728DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v47 = v23;
      *v22 = 136315138;
      v24 = sub_227A066A0(v19);
      v26 = v25;

      if (v26)
      {
        v27 = sub_227A46730(v24, v26, &v47);

        *(v22 + 4) = v27;
        v28 = "Found existing account '%s' with production token";
LABEL_16:
        _os_log_impl(&dword_227904000, v20, v21, v28, v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x22AAA1930](v23, -1, -1);
        MEMORY[0x22AAA1930](v22, -1, -1);
LABEL_54:

        return;
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_7:
  if (a5)
  {
    if (sub_227A06704(0x44495344746C61, 0xE700000000000000, v13))
    {
      sub_227A729EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v43 == a4 && v44 == a5)
        {

          goto LABEL_42;
        }

        v30 = sub_227A72E5C();

        if (v30)
        {
LABEL_42:
          if (qword_27D7DC4C0 != -1)
          {
            swift_once();
          }

          v33 = sub_227A7227C();
          __swift_project_value_buffer(v33, qword_27D7DE1B0);
          v19 = v13;
          v20 = sub_227A7226C();
          v21 = sub_227A728DC();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *&v47 = v23;
            *v22 = 136315138;
            v34 = sub_227A066A0(v19);
            v36 = v35;

            if (v36)
            {
              v37 = sub_227A46730(v34, v36, &v47);

              *(v22 + 4) = v37;
              v28 = "Found a gamecenter ACAccount (%s) with same altDSID as incoming account.";
              goto LABEL_16;
            }

LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_22790AB88(&v47);
    }
  }

  if (a7)
  {
    if (sub_227A06704(1684632420, 0xE400000000000000, v13))
    {
      sub_227A729EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v43 == a6 && v44 == a7)
        {

          goto LABEL_48;
        }

        v32 = sub_227A72E5C();

        if (v32)
        {
LABEL_48:
          if (qword_27D7DC4C0 != -1)
          {
            swift_once();
          }

          v38 = sub_227A7227C();
          __swift_project_value_buffer(v38, qword_27D7DE1B0);
          v19 = v13;
          v20 = sub_227A7226C();
          v21 = sub_227A728DC();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *&v47 = v23;
            *v22 = 136315138;
            v39 = sub_227A066A0(v19);
            v41 = v40;

            if (v41)
            {
              v42 = sub_227A46730(v39, v41, &v47);

              *(v22 + 4) = v42;
              v28 = "Found a gamecenter ACAccount (%s) with same dsid as incoming account.";
              goto LABEL_16;
            }

            goto LABEL_57;
          }

          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_22790AB88(&v47);
    }
  }
}

void Array<A>.gkHasPrimaryAccount(in:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_227A065CC(a2);
  for (i = 0; v3 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAA03F0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v7 = [v5 credential];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = sub_227A06768(v7);
    if (!v9)
    {
LABEL_14:

      continue;
    }

    if (v8 == 0x3E656E6F673CLL && v9 == 0xE600000000000000)
    {
    }

    else
    {
      v11 = sub_227A72E5C();

      if (v11)
      {
        goto LABEL_14;
      }

      v12 = ACAccount.gkScope(for:)(a1);

      if ((v12 & 0x100000004) == 4)
      {
        return;
      }
    }
  }
}

uint64_t sub_227A065CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_227A72A4C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_227A065F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_227A724BC();

  v7 = [a4 _gkPropertyForKey_environment_];

  return v7;
}

unint64_t sub_227A0665C()
{
  result = qword_27D7DC958;
  if (!qword_27D7DC958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC958);
  }

  return result;
}