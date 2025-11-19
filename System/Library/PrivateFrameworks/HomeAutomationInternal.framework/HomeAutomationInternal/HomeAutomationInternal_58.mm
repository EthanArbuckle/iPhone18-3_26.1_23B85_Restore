uint64_t sub_252D7798C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_252E349A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_252E34A84();
  v25 = v7;
  MEMORY[0x2530AD570](123, 0xE100000000000000);
  v23 = sub_252E34AA4();

  sub_252D77FDC(&v23);

  v8 = v23[2];
  if (v8)
  {
    v9 = *(v3 + 72);
    v10 = *(v3 + 16);
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v19 = v23;
    v21 = v3 + 16;
    v22 = v9;
    v20 = v10;
    v10(v6, v23 + v18, v2);
    sub_252E34964();
    v11 = sub_252E36F94();
    MEMORY[0x2530AD570](v11);

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v8 - 1;
    if (v8 != 1)
    {
      v14 = v19 + v22 + v18;
      do
      {
        v20(v6, v14, v2);
        MEMORY[0x2530AD570](43, 0xE100000000000000);
        sub_252E34964();
        v15 = sub_252E36F94();
        MEMORY[0x2530AD570](v15);

        v12(v6, v2);
        v14 += v22;
        --v13;
      }

      while (v13);
    }
  }

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v24;
}

uint64_t sub_252D77C44(void **a1)
{
  v44 = sub_252E32E04();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v31 - v7;
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2529346DC(v8);
  }

  v9 = v8[2];
  v36 = v8 + 4;
  v50[0] = v8 + 4;
  v50[1] = v9;
  result = sub_252E37D74();
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v33 = a1;
      v34 = v1;
      v40 = (v3 + 8);
      v41 = (v3 + 16);
      v32 = v8;
      v13 = v8 + 5;
      v14 = -1;
      v15 = 1;
      v35 = v9;
      do
      {
        v37 = v15;
        v38 = v14;
        v16 = &v36[3 * v15];
        v17 = v16[1];
        v18 = v16[2];
        v45 = v14;
        v39 = v13;
        do
        {
          v19 = v13[1];
          v50[4] = *v13;
          v20 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
          v47 = v17;
          swift_beginAccess();
          v21 = v42;
          v22 = *v41;
          v23 = v44;
          (*v41)(v42, v18 + v20, v44);
          v24 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
          swift_beginAccess();
          v25 = v19 + v24;
          v26 = v43;
          v22(v43, v25, v23);

          v46 = sub_252E32DD4();
          v27 = *v40;
          (*v40)(v26, v23);
          v27(v21, v23);

          if (v46 >= 2)
          {
            break;
          }

          v28 = v13[2];
          v17 = v13[3];
          v18 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v28;
          *v13 = v17;
          v13[1] = v18;
          v13 -= 3;
        }

        while (!__CFADD__(v45++, 1));
        v15 = v37 + 1;
        v13 = v39 + 3;
        v14 = v38 - 1;
      }

      while (v37 + 1 != v35);
      a1 = v33;
      v8 = v32;
    }
  }

  else
  {
    v11 = result;
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540200, &qword_252E3C028);
      v12 = sub_252E372B4();
      *(v12 + 16) = v9 >> 1;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v49[0] = v12 + 32;
    v49[1] = v9 >> 1;
    v30 = v12;
    sub_252D78888(v49, v48, v50, v11);
    *(v30 + 16) = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_252D77FDC(void **a1)
{
  v2 = *(sub_252E349A4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2529347B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_252D78108(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_252D78084(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_252D78108(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_252E349A4();
        v6 = sub_252E372B4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_252E349A4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_252D793D4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D7833C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D78234(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252D7A0B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D786E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D7833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v39 - v9;
  v10 = sub_252E349A4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v39 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v50 = (v21 - 8);
    v51 = v22;
    v53 = v10;
    v54 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v46 = -v23;
    v47 = (v21 + 16);
    v25 = a1 - a3;
    v48 = v20;
    v40 = v23;
    v26 = v20 + v23 * a3;
    v52 = &v39 - v17;
LABEL_6:
    v44 = v24;
    v45 = a3;
    v42 = v26;
    v43 = v25;
    v28 = v25;
    while (1)
    {
      v29 = v51;
      v51(v19, v26, v10);
      v29(v57, v24, v10);
      sub_252E34964();
      v30 = sub_252E36F94();
      v32 = v31;
      sub_252E34964();
      if (v30 == sub_252E36F94() && v32 == v33)
      {

        v27 = *v50;
        v10 = v53;
        (*v50)(v57, v53);
        v19 = v52;
        result = (v27)(v52, v10);
LABEL_5:
        a3 = v45 + 1;
        v24 = v44 + v40;
        v25 = v43 - 1;
        v26 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_6;
      }

      v34 = sub_252E37DB4();

      v35 = *v50;
      v10 = v53;
      (*v50)(v57, v53);
      v19 = v52;
      result = (v35)(v52, v10);
      if ((v34 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v36 = *v47;
      v37 = v49;
      (*v47)(v49, v26, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v36)(v24, v37, v10);
      v24 += v46;
      v26 += v46;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D786E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = a3;
    v16 = v6;
    v17 = v5;
    while (1)
    {
      sub_252929E74(v5, &v19);
      sub_252929E74(v5 - 40, v18);
      __swift_project_boxed_opaque_existential_1(&v19, v20);
      v7 = sub_252E34624();
      v9 = v8;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      if (v7 == sub_252E34624() && v9 == v10)
      {

        __swift_destroy_boxed_opaque_existential_1(v18);
        result = __swift_destroy_boxed_opaque_existential_1(&v19);
LABEL_5:
        a3 = v21 + 1;
        v5 = v17 + 40;
        v6 = v16 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_252E37DB4();

      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v19);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_252927BEC(v5, &v19);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_252927BEC(&v19, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D78888(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v129 = a1;
  v140 = sub_252E32E04();
  v9 = *(*(v140 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v140);
  v139 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v138 = &v123 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v129;
    if (!*v129)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_252934564(v17);
      v17 = result;
    }

    v119 = v6;
    v144 = v17;
    v120 = *(v17 + 2);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v6 = *&v17[16 * v120];
        v121 = *&v17[16 * v120 + 24];
        sub_252D7A914((*a3 + 24 * v6), (*a3 + 24 * *&v17[16 * v120 + 16]), (*a3 + 24 * v121), v5);
        if (v119)
        {
        }

        if (v121 < v6)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_252934564(v17);
        }

        if (v120 - 2 >= *(v17 + 2))
        {
          goto LABEL_116;
        }

        v122 = &v17[16 * v120];
        *v122 = v6;
        *(v122 + 1) = v121;
        v144 = v17;
        result = sub_2529344D8(v120 - 1);
        v17 = v144;
        v120 = *(v144 + 2);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v124 = a4;
  v16 = 0;
  v137 = (v13 + 16);
  v136 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v125 = a3;
  while (1)
  {
    v130 = v16;
    if (v16 + 1 >= v15)
    {
      v32 = v16 + 1;
    }

    else
    {
      v134 = v15;
      v128 = v6;
      v127 = v17;
      v18 = *a3;
      v19 = *a3 + 24 * (v16 + 1);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v126 = 24 * v16;
      v22 = v18 + 24 * v16;
      v23 = *(v22 + 16);
      v142 = *(v22 + 8);
      v143 = v22;
      v24 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
      swift_beginAccess();
      v25 = *v137;
      v26 = v138;
      v27 = v140;
      (*v137)(v138, v21 + v24, v140);
      v28 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
      swift_beginAccess();
      v5 = v139;
      v132 = v25;
      (v25)(v139, v23 + v28, v27);

      v133 = sub_252E32DD4();
      v29 = *v136;
      (*v136)(v5, v27);
      v131 = v29;
      v29(v26, v27);

      v30 = v130 + 2;
      v31 = (v143 + 64);
      while (1)
      {
        v32 = v134;
        if (v134 == v30)
        {
          break;
        }

        LODWORD(v141) = v133 < 2;
        v5 = *v31;
        v143 = *(v31 - 1);
        v33 = *(v31 - 3);
        v135 = *(v31 - 4);
        v34 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        v142 = v30;
        swift_beginAccess();
        v35 = v138;
        v36 = v140;
        v37 = v132;
        (v132)(v138, v5 + v34, v140);
        v38 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v39 = v139;
        v37(v139, v33 + v38, v36);

        v40 = sub_252E32DD4();
        v41 = v39;
        v42 = v131;
        v131(v41, v36);
        v42(v35, v36);

        v30 = v142 + 1;
        v31 += 3;
        if (v141 != v40 < 2)
        {
          v32 = v142;
          break;
        }
      }

      a3 = v125;
      v17 = v127;
      v6 = v128;
      v16 = v130;
      v43 = v126;
      if (v133 <= 1)
      {
        if (v32 < v130)
        {
          goto LABEL_119;
        }

        if (v130 < v32)
        {
          v44 = 0;
          v45 = 24 * v32;
          v46 = v130;
          do
          {
            if (v46 != v32 + v44 - 1)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v47 = (v52 + v43);
              v48 = v52 + v45;
              v49 = *v47;
              v50 = *(v47 + 1);
              v51 = *(v48 - 24);
              v47[2] = *(v48 - 8);
              *v47 = v51;
              *(v48 - 24) = v49;
              *(v48 - 16) = v50;
            }

            ++v46;
            --v44;
            v45 -= 24;
            v43 += 24;
          }

          while (v46 < v32 + v44);
        }
      }
    }

    v53 = a3[1];
    if (v32 < v53)
    {
      if (__OFSUB__(v32, v16))
      {
        goto LABEL_118;
      }

      if (v32 - v16 < v124)
      {
        if (__OFADD__(v16, v124))
        {
          goto LABEL_120;
        }

        if (v16 + v124 >= v53)
        {
          v54 = a3[1];
        }

        else
        {
          v54 = (v16 + v124);
        }

        if (v54 < v16)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v32 != v54)
        {
          break;
        }
      }
    }

    v55 = v32;
    if (v32 < v16)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v57 = *(v17 + 2);
    v56 = *(v17 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_252934578((v56 > 1), v57 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v58;
    v59 = &v17[16 * v57];
    *(v59 + 4) = v130;
    *(v59 + 5) = v55;
    v60 = *v129;
    if (!*v129)
    {
      goto LABEL_127;
    }

    v131 = v55;
    if (v57)
    {
      while (1)
      {
        v5 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v17 + 4);
          v62 = *(v17 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_48:
          if (v64)
          {
            goto LABEL_106;
          }

          v77 = &v17[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_109;
          }

          v83 = &v17[16 * v5 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_113;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v5 = v58 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v87 = &v17[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_62:
        if (v82)
        {
          goto LABEL_108;
        }

        v90 = &v17[16 * v5];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_111;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_69:
        v98 = v5 - 1;
        if (v5 - 1 >= v58)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v99 = *&v17[16 * v98 + 32];
        v100 = *&v17[16 * v5 + 40];
        sub_252D7A914((*a3 + 24 * v99), (*a3 + 24 * *&v17[16 * v5 + 32]), (*a3 + 24 * v100), v60);
        if (v6)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_252934564(v17);
        }

        if (v98 >= *(v17 + 2))
        {
          goto LABEL_103;
        }

        v101 = &v17[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        v144 = v17;
        result = sub_2529344D8(v5);
        v17 = v144;
        v58 = *(v144 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v17[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_104;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_105;
      }

      v72 = &v17[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_107;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_110;
      }

      if (v76 >= v68)
      {
        v94 = &v17[16 * v5 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_114;
        }

        if (v63 < v97)
        {
          v5 = v58 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v15 = a3[1];
    v16 = v131;
    if (v131 >= v15)
    {
      goto LABEL_89;
    }
  }

  v127 = v17;
  v128 = v6;
  v135 = *a3;
  v102 = (v135 + 24 * v32);
  v103 = (v16 - v32);
  v131 = v54;
LABEL_80:
  v134 = v32;
  v104 = v135 + 24 * v32;
  v105 = *(v104 + 8);
  v5 = *(v104 + 16);
  v132 = v103;
  v106 = v103;
  v133 = v102;
  while (1)
  {
    v141 = v106;
    v142 = v105;
    v107 = *(v102 - 1);
    v143 = *(v102 - 2);
    v108 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v109 = *v137;
    v110 = v138;
    v111 = v140;
    (*v137)(v138, v5 + v108, v140);
    v112 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v113 = v139;
    (v109)(v139, v107 + v112, v111);

    v114 = sub_252E32DD4();
    v115 = *v136;
    (*v136)(v113, v111);
    v115(v110, v111);

    if (v114 > 1)
    {
LABEL_79:
      v32 = v134 + 1;
      v102 = (v133 + 24);
      v103 = v132 - 1;
      v55 = v131;
      if ((v134 + 1) != v131)
      {
        goto LABEL_80;
      }

      v6 = v128;
      a3 = v125;
      v17 = v127;
      if (v131 < v130)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    v116 = v141;
    if (!v135)
    {
      break;
    }

    v117 = *v102;
    v105 = v102[1];
    v5 = v102[2];
    *v102 = *(v102 - 3);
    v102[2] = *(v102 - 1);
    *(v102 - 2) = v105;
    *(v102 - 1) = v5;
    *(v102 - 3) = v117;
    v102 -= 3;
    v118 = __CFADD__(v116, 1);
    v106 = v116 + 1;
    if (v118)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_252D793D4(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v138 = a1;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v9 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v132 - v10;
  v11 = sub_252E349A4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v161 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v132 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v149 = &v132 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v137 = &v132 - v26;
  result = MEMORY[0x28223BE20](v25);
  v136 = &v132 - v29;
  v30 = *(a3 + 1);
  v146 = v28;
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_104:
    v33 = *v138;
    if (!*v138)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v146;
    if (result)
    {
LABEL_106:
      v163 = v32;
      v126 = *(v32 + 16);
      if (v126 >= 2)
      {
        while (1)
        {
          v127 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v128 = a3;
          v129 = v32;
          v32 = *(v32 + 16 * v126);
          a3 = v129;
          v130 = *&v129[16 * v126 + 24];
          sub_252D7AE94(v127 + *(v5 + 72) * v32, v127 + *(v5 + 72) * *&v129[16 * v126 + 16], (v127 + *(v5 + 72) * v130), v33);
          if (v6)
          {
          }

          if (v130 < v32)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_252934564(a3);
          }

          if (v126 - 2 >= *(a3 + 2))
          {
            goto LABEL_130;
          }

          v131 = &a3[16 * v126];
          *v131 = v32;
          v131[1] = v130;
          v163 = a3;
          result = sub_2529344D8(v126 - 1);
          v32 = v163;
          v126 = *(v163 + 16);
          a3 = v128;
          if (v126 <= 1)
          {
          }
        }
      }
    }

LABEL_136:
    result = sub_252934564(v32);
    v32 = result;
    goto LABEL_106;
  }

  v133 = a4;
  v31 = 0;
  v156 = v28 + 16;
  v157 = (v28 + 8);
  v155 = (v28 + 32);
  v32 = MEMORY[0x277D84F90];
  v140 = a3;
  v158 = v11;
  while (1)
  {
    v33 = v31;
    v34 = v31 + 1;
    if (v34 < v30)
    {
      v144 = v30;
      v35 = *a3;
      v36 = *(v146 + 72);
      v147 = v34;
      v37 = v35 + v36 * v34;
      v38 = *(v146 + 16);
      v38(v136, v37, v11);
      v139 = v33;
      v148 = v36;
      v143 = v38;
      v38(v137, v35 + v36 * v33, v11);
      sub_252E34964();
      v5 = v160;
      v39 = sub_252E36F94();
      v41 = v40;
      sub_252E34964();
      v42 = sub_252E36F94();
      v135 = v6;
      if (v39 == v42 && v41 == v43)
      {
        LODWORD(v145) = 0;
      }

      else
      {
        LODWORD(v145) = sub_252E37DB4();
      }

      v134 = v32;

      v11 = v158;
      v44 = *v157;
      (*v157)(v137, v158);
      v142 = v44;
      result = (v44)(v136, v11);
      v45 = (v139 + 2);
      v46 = v147;
      v47 = v148 * (v139 + 2);
      v48 = v35 + v47;
      v49 = v148 * v147;
      v50 = v35 + v148 * v147;
      do
      {
        a3 = v45;
        v6 = v46;
        v32 = v49;
        v52 = v47;
        if (v45 >= v144)
        {
          break;
        }

        v151 = v46;
        v152 = v47;
        v154 = v45;
        v53 = v143;
        v143(v149, v48, v11);
        v53(v150, v50, v11);
        sub_252E34964();
        v54 = sub_252E36F94();
        v56 = v55;
        sub_252E34964();
        if (v54 != sub_252E36F94())
        {
          goto LABEL_10;
        }

        if (v56 == v57)
        {
          v5 = 0;
        }

        else
        {
LABEL_10:
          v5 = sub_252E37DB4();
        }

        a3 = v154;

        v11 = v158;
        v51 = v142;
        v142(v150, v158);
        result = v51(v149, v11);
        v45 = a3 + 1;
        v48 += v148;
        v50 += v148;
        v6 = v151;
        v52 = v152;
        v46 = v151 + 1;
        v49 = &v148[v32];
        v47 = &v148[v152];
      }

      while (((v145 ^ v5) & 1) == 0);
      if (v145)
      {
        v33 = v139;
        if (a3 < v139)
        {
          goto LABEL_133;
        }

        if (v139 >= a3)
        {
          v34 = a3;
          v6 = v135;
          a3 = v140;
          v32 = v134;
          goto LABEL_32;
        }

        v58 = v139;
        v59 = v139 * v148;
        do
        {
          if (v58 != v6)
          {
            v5 = *v140;
            if (!*v140)
            {
              goto LABEL_139;
            }

            v154 = *v155;
            (v154)(v141, v5 + v59, v11);
            if (v59 < v32 || v5 + v59 >= (v5 + v52))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v154)(v5 + v32, v141, v11);
          }

          ++v58;
          v32 -= v148;
          v52 -= v148;
          v59 += v148;
        }

        while (v58 < v6--);
      }

      v34 = a3;
      v6 = v135;
      a3 = v140;
      v32 = v134;
      v33 = v139;
    }

LABEL_32:
    v61 = *(a3 + 1);
    if (v34 < v61)
    {
      if (__OFSUB__(v34, v33))
      {
        goto LABEL_132;
      }

      if (v34 - v33 < v133)
      {
        break;
      }
    }

LABEL_52:
    if (v34 < v33)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v147 = v34;
    v77 = v33;
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v32 + 16) + 1, 1, v32);
      v32 = result;
    }

    v79 = *(v32 + 16);
    v78 = *(v32 + 24);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      result = sub_252934578((v78 > 1), v79 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 16) = v80;
    v81 = v32 + 16 * v79;
    v82 = v147;
    *(v81 + 32) = v77;
    *(v81 + 40) = v82;
    if (!*v138)
    {
      goto LABEL_141;
    }

    if (v79)
    {
      v83 = *v138;
      while (1)
      {
        v33 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v32 + 32);
          v85 = *(v32 + 40);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_73:
          if (v87)
          {
            goto LABEL_120;
          }

          v100 = (v32 + 16 * v80);
          v102 = *v100;
          v101 = v100[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_123;
          }

          v106 = (v32 + 32 + 16 * v33);
          v108 = *v106;
          v107 = v106[1];
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_127;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v33 = v80 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v110 = (v32 + 16 * v80);
        v112 = *v110;
        v111 = v110[1];
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_87:
        if (v105)
        {
          goto LABEL_122;
        }

        v113 = v32 + 16 * v33;
        v115 = *(v113 + 32);
        v114 = *(v113 + 40);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_125;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_94:
        v121 = v33 - 1;
        if (v33 - 1 >= v80)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v122 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v5 = a3;
        a3 = v32;
        v123 = *(v32 + 32 + 16 * v121);
        v124 = *(v32 + 32 + 16 * v33);
        v32 = *(v32 + 32 + 16 * v33 + 8);
        sub_252D7AE94(v122 + *(v146 + 72) * v123, v122 + *(v146 + 72) * v124, (v122 + *(v146 + 72) * v32), v83);
        if (v6)
        {
        }

        if (v32 < v123)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_252934564(a3);
        }

        if (v121 >= *(a3 + 2))
        {
          goto LABEL_117;
        }

        v125 = &a3[16 * v121];
        *(v125 + 4) = v123;
        *(v125 + 5) = v32;
        v163 = a3;
        result = sub_2529344D8(v33);
        v32 = v163;
        v80 = *(v163 + 16);
        a3 = v5;
        if (v80 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = v32 + 32 + 16 * v80;
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_118;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_119;
      }

      v95 = (v32 + 16 * v80);
      v97 = *v95;
      v96 = v95[1];
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_121;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_124;
      }

      if (v99 >= v91)
      {
        v117 = (v32 + 32 + 16 * v33);
        v119 = *v117;
        v118 = v117[1];
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_128;
        }

        if (v86 < v120)
        {
          v33 = v80 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v30 = *(a3 + 1);
    v31 = v147;
    if (v147 >= v30)
    {
      goto LABEL_104;
    }
  }

  v62 = (v33 + v133);
  if (__OFADD__(v33, v133))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = *(a3 + 1);
  }

  if (v62 < v33)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v34 == v62)
  {
    goto LABEL_52;
  }

  v134 = v32;
  v135 = v6;
  v63 = *a3;
  v64 = *(v146 + 72);
  v154 = *(v146 + 16);
  v65 = (v63 + v64 * (v34 - 1));
  v151 = -v64;
  v139 = v33;
  v66 = v33 - v34;
  v152 = v63;
  v142 = v64;
  v143 = v62;
  v67 = (v63 + v34 * v64);
LABEL_43:
  v147 = v34;
  v148 = v65;
  v144 = v67;
  v145 = v66;
  v69 = v65;
  while (1)
  {
    v70 = v154;
    (v154)(v161, v67, v11);
    (v70)(v162, v69, v11);
    sub_252E34964();
    v5 = sub_252E36F94();
    v72 = v71;
    sub_252E34964();
    if (v5 == sub_252E36F94() && v72 == v73)
    {

      v11 = v158;
      v68 = *v157;
      (*v157)(v162, v158);
      v68(v161, v11);
LABEL_42:
      v34 = v147 + 1;
      v65 = v142 + v148;
      v66 = v145 - 1;
      v67 = v142 + v144;
      if ((v147 + 1) == v143)
      {
        v34 = v143;
        v6 = v135;
        a3 = v140;
        v32 = v134;
        v33 = v139;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_252E37DB4();

    v11 = v158;
    v74 = *v157;
    (*v157)(v162, v158);
    result = (v74)(v161, v11);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v152)
    {
      break;
    }

    v75 = *v155;
    v5 = v153;
    (*v155)(v153, v67, v11);
    swift_arrayInitWithTakeFrontToBack();
    (v75)(v69, v5, v11);
    v69 += v151;
    v67 += v151;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_252D7A0B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v101;
    if (!*v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v94 = v5;
      v117 = v8;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v96 = *&v8[16 * v95];
          v5 = *&v8[16 * v95 + 24];
          sub_252D7B5F0((*a3 + 40 * v96), (*a3 + 40 * *&v8[16 * v95 + 16]), *a3 + 40 * v5, v6);
          if (v94)
          {
          }

          if (v5 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_252934564(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v97 = &v8[16 * v95];
          *v97 = v96;
          *(v97 + 1) = v5;
          v117 = v8;
          result = sub_2529344D8(v95 - 1);
          v8 = v117;
          v95 = *(v117 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_252934564(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    v110 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_252929E74(*a3 + 40 * v7, &v115);
      v102 = v9;
      sub_252929E74(v10 + 40 * v9, v112);
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v11 = sub_252E34624();
      v13 = v12;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v15 = v11 == sub_252E34624() && v13 == v14;
      v99 = v5;
      if (v15)
      {
        v108 = 0;
      }

      else
      {
        v108 = sub_252E37DB4();
      }

      __swift_destroy_boxed_opaque_existential_1(v112);
      result = __swift_destroy_boxed_opaque_existential_1(&v115);
      v16 = (v102 + 2);
      v17 = v10 + 40 * v102 + 80;
      v106 = v6;
      v18 = 40 * v102 + 40;
      do
      {
        v20 = v16;
        v21 = v7;
        v5 = v18;
        if (v16 >= v6)
        {
          break;
        }

        sub_252929E74(v17, &v115);
        sub_252929E74(v17 - 40, v112);
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v22 = sub_252E34624();
        v24 = v23;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v26 = v22 == sub_252E34624() && v24 == v25;
        v19 = v26 ? 0 : sub_252E37DB4();

        __swift_destroy_boxed_opaque_existential_1(v112);
        result = __swift_destroy_boxed_opaque_existential_1(&v115);
        v16 = (v20 + 1);
        v17 += 40;
        ++v7;
        v18 = v5 + 40;
        v8 = v110;
        v6 = v106;
      }

      while (((v108 ^ v19) & 1) == 0);
      if (v108)
      {
        v9 = v102;
        if (v20 < v102)
        {
          goto LABEL_134;
        }

        if (v102 < v20)
        {
          v6 = v102;
          v27 = 40 * v102;
          do
          {
            if (v6 != v21)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v30 = v29 + v27;
              v31 = v29 + v5;
              sub_252927BEC((v29 + v27), &v115);
              v32 = *(v31 + 32);
              v33 = *(v31 + 16);
              *v30 = *v31;
              *(v30 + 16) = v33;
              *(v30 + 32) = v32;
              result = sub_252927BEC(&v115, v31);
            }

            ++v6;
            v5 -= 40;
            v27 += 40;
          }

          while (v6 < v21--);
        }

        v7 = v20;
        v5 = v99;
      }

      else
      {
        v7 = v20;
        v5 = v99;
        v9 = v102;
      }
    }

    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_252934578((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_73:
          if (v56)
          {
            goto LABEL_121;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_124;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_128;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_87:
        if (v74)
        {
          goto LABEL_123;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_126;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_94:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_252D7B5F0((*a3 + 40 * v91), (*a3 + 40 * *&v8[16 * v52 + 32]), *a3 + 40 * v92, v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v117 = v8;
        result = sub_2529344D8(v52);
        v8 = v117;
        v49 = *(v117 + 2);
        v7 = v6;
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_119;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_120;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_122;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_125;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_129;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v35 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v35)
  {
    goto LABEL_53;
  }

  v100 = v5;
  v36 = *a3;
  v37 = *a3 + 40 * v7;
  v103 = v9;
  v104 = v35;
  v38 = v9 - v7;
LABEL_42:
  v107 = v37;
  v109 = v7;
  v105 = v38;
  while (1)
  {
    sub_252929E74(v37, &v115);
    sub_252929E74(v37 - 40, v112);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v39 = sub_252E34624();
    v41 = v40;
    v6 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    if (v39 == sub_252E34624() && v41 == v42)
    {

      __swift_destroy_boxed_opaque_existential_1(v112);
      __swift_destroy_boxed_opaque_existential_1(&v115);
LABEL_41:
      v7 = v109 + 1;
      v37 = v107 + 40;
      v38 = v105 - 1;
      if (v109 + 1 == v104)
      {
        v7 = v104;
        v5 = v100;
        v8 = v110;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v44 = sub_252E37DB4();

    __swift_destroy_boxed_opaque_existential_1(v112);
    result = __swift_destroy_boxed_opaque_existential_1(&v115);
    if ((v44 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v36)
    {
      break;
    }

    sub_252927BEC(v37, &v115);
    v45 = *(v37 - 24);
    *v37 = *(v37 - 40);
    *(v37 + 16) = v45;
    *(v37 + 32) = *(v37 - 8);
    sub_252927BEC(&v115, v37 - 40);
    v37 -= 40;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_252D7A914(char *a1, char *a2, char *a3, char *a4)
{
  v62 = sub_252E32E04();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v55 - v12;
  v13 = (a2 - a1) / 24;
  v14 = (a3 - a2) / 24;
  if (v13 >= v14)
  {
    v30 = a2;
    if (a4 != a2 || &a2[24 * v14] <= a4)
    {
      memmove(a4, a2, 24 * v14);
    }

    v15 = &a4[24 * v14];
    if (a3 - a2 >= 24 && a2 > a1)
    {
      v56 = (v8 + 8);
      v57 = (v8 + 16);
      v59 = a1;
      v65 = a4;
      v31 = v62;
LABEL_22:
      v32 = a3 - 24;
      v67 = v30;
      do
      {
        v66 = v32;
        v58 = v32 + 24;
        v33 = *(v15 - 2);
        v34 = *(v15 - 1);
        v35 = *(v30 - 2);
        v36 = *(v30 - 1);
        v63 = v35;
        v64 = v15;
        v37 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v38 = *v57;
        v39 = v60;
        (*v57)(v60, v34 + v37, v31);
        v40 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v41 = v61;
        (v38)(v61, v36 + v40, v31);

        v42 = sub_252E32DD4();
        v43 = *v56;
        (*v56)(v41, v31);
        v43(v39, v31);

        if (v42 <= 1)
        {
          v48 = v64;
          v49 = v67;
          v50 = v67 - 24;
          v51 = v59;
          a3 = v66;
          if (v58 != v67)
          {
            v52 = *v50;
            *(v66 + 2) = *(v67 - 1);
            *a3 = v52;
          }

          a4 = v65;
          v15 = v48;
          if (v48 <= v65 || (v30 = v49 - 24, v50 <= v51))
          {
            v30 = v49 - 24;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v44 = v64;
        v45 = v64 - 24;
        v46 = v66;
        if (v58 != v64)
        {
          v47 = *v45;
          *(v66 + 2) = *(v64 - 1);
          *v46 = v47;
        }

        v32 = v46 - 24;
        v15 = v44 - 24;
        a4 = v65;
        v30 = v67;
      }

      while (v45 > v65);
      v15 = v44 - 24;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v13] <= a4)
    {
      memmove(a4, a1, 24 * v13);
    }

    v15 = &a4[24 * v13];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v57 = (v8 + 8);
      v58 = (v8 + 16);
      v66 = a3;
      v64 = &a4[24 * v13];
      while (1)
      {
        v65 = a4;
        v67 = a2;
        v59 = a1;
        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        v18 = *(a4 + 2);
        v63 = *(a4 + 1);
        v19 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v20 = *v58;
        v21 = v60;
        v22 = v62;
        (*v58)(v60, v17 + v19, v62);
        v23 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v24 = v61;
        v20(v61, v18 + v23, v22);

        v25 = sub_252E32DD4();
        v26 = *v57;
        (*v57)(v24, v22);
        v26(v21, v22);

        if (v25 > 1)
        {
          break;
        }

        v27 = v67;
        a2 = v67 + 24;
        v28 = v59;
        a4 = v65;
        if (v59 != v67)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 = v28 + 24;
        v15 = v64;
        if (a4 >= v64 || a2 >= v66)
        {
          goto LABEL_15;
        }
      }

      v27 = v65;
      a4 = v65 + 24;
      v28 = v59;
      a2 = v67;
      if (v59 == v65)
      {
        goto LABEL_13;
      }

LABEL_12:
      v29 = *v27;
      *(v28 + 2) = *(v27 + 2);
      *v28 = v29;
      goto LABEL_13;
    }

LABEL_15:
    v30 = a1;
  }

LABEL_33:
  v53 = (v15 - a4) / 24;
  if (v30 != a4 || v30 >= &a4[24 * v53])
  {
    memmove(v30, a4, 24 * v53);
  }

  return 1;
}

uint64_t sub_252D7AE94(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v61 - v9;
  v75 = sub_252E349A4();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v61 - v17;
  result = MEMORY[0x28223BE20](v16);
  v73 = &v61 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_68;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v23 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v68 = v21;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v25;
    if (v25 >= 1)
    {
      v45 = -v68;
      v64 = a4;
      v65 = (v10 + 16);
      v63 = (v10 + 8);
      v46 = a4 + v25;
      v66 = -v68;
      while (2)
      {
        while (1)
        {
          v62 = v44;
          v47 = a2;
          v48 = (a2 + v45);
          v73 = v48;
          v68 = v47;
          while (1)
          {
            if (v47 <= a1)
            {
              v78 = v47;
              v76 = v62;
              goto LABEL_66;
            }

            v49 = a3;
            v67 = v44;
            v50 = *v65;
            v74 = (v46 + v45);
            v51 = v75;
            (v50)(v69);
            (v50)(v70, v48, v51);
            sub_252E34964();
            v52 = sub_252E36F94();
            v54 = v53;
            sub_252E34964();
            if (v52 != sub_252E36F94())
            {
              goto LABEL_49;
            }

            if (v54 == v55)
            {
              v56 = 0;
            }

            else
            {
LABEL_49:
              v56 = sub_252E37DB4();
            }

            v45 = v66;
            a3 = (v49 + v66);
            v57 = *v63;
            v58 = v75;
            (*v63)(v70, v75);
            v57(v69, v58);
            v59 = v64;
            if (v56)
            {
              break;
            }

            v60 = v74;
            v44 = v74;
            if (v49 < v46 || a3 >= v46)
            {
              swift_arrayInitWithTakeFrontToBack();
              v48 = v73;
            }

            else
            {
              v48 = v73;
              if (v49 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v46 = v44;
            v47 = v68;
            if (v60 <= v59)
            {
              a2 = v68;
              goto LABEL_65;
            }
          }

          if (v49 < v68 || a3 >= v68)
          {
            break;
          }

          a2 = v73;
          v44 = v67;
          if (v49 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v59)
          {
            goto LABEL_65;
          }
        }

        a2 = v73;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v67;
        if (v46 > v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v78 = a2;
    v76 = v44;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = (a4 + v24);
    v76 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v27 = *(v10 + 16);
      v69 = (v10 + 16);
      v65 = (v10 + 8);
      v66 = v27;
      v67 = a3;
      do
      {
        v28 = a2;
        v29 = a2;
        v30 = v75;
        v31 = v66;
        (v66)(v73, v29, v75);
        v31(v74, a4, v30);
        sub_252E34964();
        v32 = sub_252E36F94();
        v34 = v33;
        sub_252E34964();
        if (v32 == sub_252E36F94() && v34 == v35)
        {

          v36 = *v65;
          v37 = v75;
          (*v65)(v74, v75);
          v36(v73, v37);
        }

        else
        {
          v38 = sub_252E37DB4();

          v39 = *v65;
          v40 = v75;
          (*v65)(v74, v75);
          v39(v73, v40);
          if (v38)
          {
            v41 = v68;
            a2 = v28 + v68;
            if (a1 < v28 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v67;
            }

            else
            {
              v42 = v67;
              if (a1 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_35;
          }
        }

        v41 = v68;
        v43 = a4 + v68;
        a2 = v28;
        if (a1 < a4 || a1 >= v43)
        {
          swift_arrayInitWithTakeFrontToBack();
          v42 = v67;
        }

        else
        {
          v42 = v67;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v77 = v43;
        a4 += v41;
LABEL_35:
        a1 += v41;
        v78 = a1;
      }

      while (a4 < v70 && a2 < v42);
    }
  }

LABEL_66:
  sub_252D7BA24(&v78, &v77, &v76, MEMORY[0x277D5E658]);
  return 1;
}

uint64_t sub_252D7B5F0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v48 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v24 = v7;
      v43 = v4;
      do
      {
        __dst = v24;
        v25 = (v24 - 40);
        v26 = (v48 - 40);
        v5 -= 40;
        while (1)
        {
          sub_252929E74(v26, v46);
          v29 = v25;
          sub_252929E74(v25, v44);
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v30 = sub_252E34624();
          v32 = v31;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v34 = v30 == sub_252E34624() && v32 == v33;
          v35 = v34 ? 0 : sub_252E37DB4();

          __swift_destroy_boxed_opaque_existential_1(v44);
          __swift_destroy_boxed_opaque_existential_1(v46);
          if (v35)
          {
            break;
          }

          if (v5 + 40 != v26 + 40)
          {
            v36 = *v26;
            v37 = *(v26 + 16);
            *(v5 + 32) = *(v26 + 32);
            *v5 = v36;
            *(v5 + 16) = v37;
          }

          v27 = v26 - 40;
          v5 -= 40;
          v28 = v26 > v43;
          v26 -= 40;
          v25 = v29;
          if (!v28)
          {
            v48 = (v27 + 40);
            v7 = __dst;
            v4 = v43;
            goto LABEL_43;
          }
        }

        v7 = v29;
        if ((v5 + 40) != __dst)
        {
          v38 = *v29;
          v39 = *(v29 + 1);
          *(v5 + 32) = *(v29 + 4);
          *v5 = v38;
          *(v5 + 16) = v39;
        }

        v48 = (v26 + 40);
        v4 = v43;
        if (v26 + 40 <= v43)
        {
          break;
        }

        v24 = v7;
      }

      while (v7 > __src);
      v48 = (v26 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v48 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_252929E74(v7, v46);
        sub_252929E74(v4, v44);
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v14 = sub_252E34624();
        v16 = v15;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v18 = v14 == sub_252E34624() && v16 == v17;
        if (v18)
        {
          break;
        }

        v19 = sub_252E37DB4();

        __swift_destroy_boxed_opaque_existential_1(v44);
        __swift_destroy_boxed_opaque_existential_1(v46);
        if ((v19 & 1) == 0)
        {
          goto LABEL_15;
        }

        v20 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v48 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      __swift_destroy_boxed_opaque_existential_1(v46);
LABEL_15:
      v20 = v4;
      v18 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v21 = *v20;
      v22 = *(v20 + 1);
      *(__src + 4) = *(v20 + 4);
      *__src = v21;
      *(__src + 1) = v22;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v40 = (v48 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v40])
  {
    memmove(v7, v4, 40 * v40);
  }

  return 1;
}

uint64_t sub_252D7BA24(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_252D7BB0C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_252E36DF4();
      sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588]);
      result = sub_252E36DC4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_252D7BCEC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252D7BCEC(uint64_t a1, uint64_t a2)
{
  result = sub_252E32AB4();
  if (!result || (result = sub_252E32AE4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_252E32AD4();
      sub_252E36DF4();
      sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588]);
      return sub_252E36DC4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252D7BDCC()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99B20, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F710 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F545B00 = 0;

  return sub_252E37614();
}

uint64_t sub_252D7BEB8()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  MEMORY[0x2530AD570](v0[2], v0[3]);
  sub_252CC3D90(0x206873756C46, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);

  result = swift_beginAccess();
  v4 = v0[5];
  if (v4)
  {
    v5 = v1[4];
    result = swift_beginAccess();
    v6 = v1[7];
    if (!v6 || (v5 != v1[6] || v4 != v6) && (result = sub_252E37DB4(), (result & 1) == 0))
    {
      type metadata accessor for CacheInvalidationSignalRecord();
      v7 = swift_allocObject();
      v7[2] = 3288625;
      v7[3] = 0xE300000000000000;
      v7[4] = 0xD000000000000013;
      v7[5] = 0x8000000252E7AFE0;
      v7[6] = v5;
      v7[7] = v4;
      swift_bridgeObjectRetain_n();
      sub_252DBD2E8(v7, 0xD000000000000013, 0x8000000252E7AFE0);
    }
  }

  return result;
}

uint64_t sub_252D7C060(char a1)
{
  v2 = v1;
  if (!v1[5] || (a1 & 1) != 0)
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = sub_252E36F34();
    v7 = v6;

    v8 = v2[5];
    v2[4] = v5;
    v2[5] = v7;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v13 = v2[4];
    v14 = v2[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0x20746E6572727543, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);

    v11 = v2[5];
  }

  return v2[4];
}

void *_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 288), v13);

  v1 = v14;
  v2 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  LOBYTE(v1) = (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  if ((v1 & 1) == 0)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E20);
    v10 = 0xD000000000000028;
    v11 = 0x8000000252E99A50;
    goto LABEL_14;
  }

  if ((AFDeviceSupportsHybridUOD() & 1) == 0 && (AFDeviceSupportsFullSiriUOD() & 1) == 0)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E99A80, 0xD000000000000094, 0x8000000252E98E90);
    v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v4 + 288), v13);

    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 136))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if ((v7 & 1) == 0)
    {
      v10 = 0xD00000000000003ALL;
      v11 = 0x8000000252E99AA0;
LABEL_14:
      sub_252CC3D90(v10, v11, 0xD000000000000094, 0x8000000252E98E90);
      return 0;
    }
  }

  sub_252D806C0();
  sub_252D7ED58(0xD000000000000014, 0x8000000252E5E720, sub_252D7BDCC, 0, 15);

  if (qword_27F53F710 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v8 = qword_27F545B00;
  if (qword_27F545B00)
  {

    sub_252E37614();
  }

  else
  {
    type metadata accessor for IntentSelectionCache();
    swift_allocObject();
    v8 = sub_252D731D4();
    qword_27F545B00 = v8;
    swift_retain_n();

    sub_252E37614();
  }

  return v8;
}

uint64_t sub_252D7C504()
{
  v1 = *(sub_252E34164() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_252D73C68(v2, v3);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252D7C580(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = __src[289];
  v3 = *(__src + 338);
  v49 = *(__src + 322);
  v50 = v3;
  v4 = *(__src + 370);
  v51 = *(__src + 354);
  v52 = v4;
  v5 = *(__src + 306);
  v47 = *(__src + 290);
  v48 = v5;
  v6 = __src[386];
  v7 = *(__src + 387);
  v8 = *(__src + 403);
  v9 = *(__src + 435);
  v42 = *(__src + 419);
  v43 = v9;
  v40 = v7;
  v41 = v8;
  v10 = *(__src + 451);
  v11 = *(__src + 467);
  v12 = *(__src + 483);
  *(v46 + 13) = *(__src + 62);
  v45 = v11;
  v46[0] = v12;
  v44 = v10;
  if ((v6 & 1) != 0 || (v2 & 1) == 0)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544E20);
    sub_252CC3D90(0xD000000000000044, 0x8000000252E99A00, 0xD000000000000094, 0x8000000252E98E90);
  }

  else
  {
    v13 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0();
    if (v13)
    {
      v14 = v13;
      swift_beginAccess();
      v16 = v14[8];
      v15 = v14[9];
      v17 = v14[10];

      v18 = v17;
      [v18 lock];

      [v18 unlock];

      if (v15)
      {
        if (qword_27F53F528 != -1)
        {
          swift_once();
        }

        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_27F544E20);
        sub_252E379F4();

        v38 = 0xD000000000000015;
        v39 = 0x8000000252E999E0;
        MEMORY[0x2530AD570](v16, v15);
        MEMORY[0x2530AD570](0x747265736E69202CLL, 0xEC00000020676E69);
        memcpy(v22, __dst, sizeof(v22));
        v23 = v2;
        v26 = v49;
        v27 = v50;
        v28 = v51;
        v29 = v52;
        v24 = v47;
        v25 = v48;
        v30 = v6;
        v33 = v42;
        v34 = v43;
        v31 = v40;
        v32 = v41;
        v36 = v45;
        *v37 = v46[0];
        v35 = v44;
        *&v37[13] = *(v46 + 13);
        v20 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v20);

        sub_252CC3D90(v38, v39, 0xD000000000000094, 0x8000000252E98E90);

        if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0())
        {
          memcpy(v22, __dst, sizeof(v22));
          v23 = v2;
          v26 = v49;
          v27 = v50;
          v28 = v51;
          v29 = v52;
          v24 = v47;
          v25 = v48;
          v30 = v6;
          v33 = v42;
          v34 = v43;
          v31 = v40;
          v32 = v41;
          v36 = v45;
          *v37 = v46[0];
          v35 = v44;
          *&v37[13] = *(v46 + 13);
          sub_252D76744(v22, v16, v15);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_252D7CBDC(char a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!v2[5] || (a1 & 1) != 0)
  {
    type metadata accessor for HomeStore();
    v4 = static HomeStore.shared.getter();
    v5 = sub_2529DACA8();
    v7 = v6;

    v8 = v2[5];
    v2[4] = v5;
    v2[5] = v7;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v13 = v2[4];
    v14 = v2[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0x20746E6572727543, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);

    v11 = v2[5];
  }

  return v2[4];
}

uint64_t sub_252D7CD54(char a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!v2[7] || (a1 & 1) != 0)
  {
    v4 = sub_252B0028C(0);
    v5 = v2[7];
    v2[6] = v4;
    v2[7] = v6;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v11 = v2[6];
    v12 = v2[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v8 = sub_252E36F94();
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(0x206465726F7453, 0xE700000000000000, 0xD000000000000094, 0x8000000252E98E90);

    v9 = v2[7];
  }

  return v2[6];
}

uint64_t sub_252D7CEB4(char a1)
{
  if (!v1[7] || (a1 & 1) != 0)
  {
    v2 = sub_252B0028C(1);
    v3 = v1[7];
    v1[6] = v2;
    v1[7] = v4;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    MEMORY[0x2530AD570](v1[2], v1[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v9 = v1[6];
    v10 = v1[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v6 = sub_252E36F94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(0x206465726F7453, 0xE700000000000000, 0xD000000000000094, 0x8000000252E98E90);

    v7 = v1[7];
  }

  return v1[6];
}

uint64_t sub_252D7CFFC(uint64_t a1)
{
  v2 = sub_252E358D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34284();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_252E341A4();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E34164();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v17 = static HomeStore.shared.getter();
  v18 = sub_2529D9114();

  if (v18)
  {
    sub_252E37EC4();
    v30 = sub_252E32E84();
    sub_252D7E80C(&qword_27F540680, MEMORY[0x277CC95F0]);

    sub_252E36E94();
    MEMORY[0x2530AE390](*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v20 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    sub_252E37044();
    v21 = sub_252E37F14();
  }

  else
  {
    v21 = 0;
  }

  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 88))(v16, v12);
  if (v22 == *MEMORY[0x277D5C128])
  {
    (*(v13 + 96))(v16, v12);
    (*(v3 + 32))(v6, v16, v2);
    v23 = sub_252E358C4();

    (*(v3 + 8))(v6, v2);
    if (!v18)
    {
      return v21;
    }

    return v23 ^ v21;
  }

  if (v22 == *MEMORY[0x277D5C160])
  {
    (*(v13 + 96))(v16, v12);
    v25 = v31;
    v24 = v32;
    v26 = v34;
    (*(v32 + 32))(v31, v16, v34);
    v27 = v33;
    sub_252E34184();
    v23 = sub_252E34274();

    (*(v35 + 8))(v27, v36);
    (*(v24 + 8))(v25, v26);
    if (v18)
    {
      return v23 ^ v21;
    }
  }

  else
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544E20);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E99730, 0xD000000000000094, 0x8000000252E98E90);

    (*(v13 + 8))(v16, v12);
    return 0;
  }

  return v21;
}

uint64_t sub_252D7D568()
{
  v0 = sub_252E343C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34244();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252E342C4())
  {
    sub_252E34314();
    sub_252E34394();
    (*(v1 + 8))(v4, v0);
    sub_252E344D4();
    v11 = sub_252E34814();

    (*(v6 + 8))(v9, v5);
    return v11;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E7B3C0);
    sub_252E34354();
    sub_252E37AE4();
    sub_252CC4050(v14, v15, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001ALL, 0x8000000252E996A0, 1056);

    return 0;
  }
}

char *sub_252D7D950()
{
  v0 = sub_252B08B50();
  if (v0 >> 62)
  {
    goto LABEL_51;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v0;
  if (v1)
  {
LABEL_3:
    v2 = 0;
    v34 = v0 & 0xC000000000000001;
    v30 = v0 + 32;
    v31 = v0 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x277D84F90];
    v33 = v1;
    while (1)
    {
      if (v34)
      {
        v4 = v2;
        v0 = MEMORY[0x2530ADF00](v2, v32);
        v5 = __OFADD__(v4, 1);
        v6 = v4 + 1;
        if (v5)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_50;
        }

        v36 = *(v30 + 8 * v2);
        v7 = v2;

        v5 = __OFADD__(v7, 1);
        v6 = v7 + 1;
        if (v5)
        {
          goto LABEL_49;
        }
      }

      v35 = v6;
      v8 = sub_252B05484(&unk_2864AF748);
      v9 = sub_252B05604(v8);

      if (v9 >> 62)
      {
        break;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_13;
      }

LABEL_4:

      v2 = v35;
      if (v35 == v33)
      {
        goto LABEL_53;
      }
    }

    v0 = sub_252E378C4();
    v10 = v0;
    if (!v0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v40 = v9 + 32;
    v41 = v9 & 0xFFFFFFFFFFFFFF8;
    v37 = v10;
    v38 = v9;
    v39 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v0 = MEMORY[0x2530ADF00](v11, v9);
        v5 = __OFADD__(v11++, 1);
        if (v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v11 >= *(v41 + 16))
        {
          goto LABEL_47;
        }

        v13 = *(v40 + 8 * v11);

        v5 = __OFADD__(v11++, 1);
        if (v5)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v28 = v0;
          v1 = sub_252E378C4();
          v0 = v28;
          v32 = v28;
          if (!v1)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      sub_252E34644();
      v14 = sub_252E359F4();

      if (*(v14 + 16) && (v15 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v16 & 1) != 0))
      {
        v42 = v11;
        v17 = *(*(v14 + 56) + 8 * v15);

        if (v17 >> 62)
        {
          v0 = sub_252E378C4();
          v18 = v0;
          if (v0)
          {
LABEL_25:
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            v19 = 0;
            while (2)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v19, v17);
                v20 = sub_252E358E4();
                if (!v21)
                {
LABEL_27:

                  goto LABEL_28;
                }
              }

              else
              {
                v22 = *(v17 + 8 * v19 + 32);

                v20 = sub_252E358E4();
                if (!v21)
                {
                  goto LABEL_27;
                }
              }

              v23 = v20;
              v24 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_2529F7A80(0, *(v3 + 2) + 1, 1, v3);
              }

              v26 = *(v3 + 2);
              v25 = *(v3 + 3);
              if (v26 >= v25 >> 1)
              {
                v3 = sub_2529F7A80((v25 > 1), v26 + 1, 1, v3);
              }

              *(v3 + 2) = v26 + 1;
              v27 = &v3[16 * v26];
              *(v27 + 4) = v23;
              *(v27 + 5) = v24;
LABEL_28:
              if (v18 == ++v19)
              {

                v10 = v37;
                v9 = v38;
                goto LABEL_42;
              }

              continue;
            }
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
            goto LABEL_25;
          }
        }

LABEL_42:
        v11 = v42;
        v12 = v39;
        if (v42 == v10)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v11 == v10)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_53:

  return v3;
}

uint64_t sub_252D7DD34()
{
  v0 = sub_252E34354();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34284();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E34184();
  v10 = sub_252E34254();
  (*(v6 + 8))(v9, v5);
  v26 = *(v10 + 16);
  v27 = v10;
  if (v26)
  {
    v11 = 0;
    v12 = 0;
    v25 = v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v24[1] = v1 + 16;
    v13 = (v1 + 8);
    while (v11 < *(v27 + 16))
    {
      (*(v1 + 16))(v4, v25 + *(v1 + 72) * v11, v0);
      v14 = sub_252D7D568();
      if (v15)
      {
        v28 = 0x706172474F53550ALL;
        v29 = 0xEB000000000A3A68;
        MEMORY[0x2530AD570](v14);

        MEMORY[0x2530AD570](v28, v29);
      }

      v16 = sub_252D7D950();
      if (*(v16 + 2))
      {
        v28 = v16;

        sub_252D78084(&v28, sub_2529346C8, sub_252AC86CC);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
        sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
        v17 = sub_252E36EA4();
        v19 = v18;

        v28 = 0x65697469746E450ALL;
        v29 = 0xEA00000000003A73;
        MEMORY[0x2530AD570](v17, v19);

        MEMORY[0x2530AD570](v28, v29);

        (*v13)(v4, v0);
      }

      else
      {
        (*v13)(v4, v0);
      }

      if (v26 == ++v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_10:

  v12 = v30;
  v0 = v31;
  v20 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v20 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    if (qword_27F53F528 == -1)
    {
LABEL_14:
      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544E20);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E995E0);

      MEMORY[0x2530AD570](v12, v0);
      sub_252CC3D90(v28, v29, 0xD000000000000094, 0x8000000252E98E90);

      return v12;
    }

LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544E20);
  sub_252CC4050(0xD00000000000005ALL, 0x8000000252E99620, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001FLL, 0x8000000252E99680, 1018);
  v12 = 0;
  if (sub_252979914())
  {
    sub_2529515FC(9, 7, 0x4B65686361435349, 0xEA00000000007965);
    return 0;
  }

  return v12;
}

uint64_t sub_252D7E2C8()
{
  sub_252E358B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B18, &qword_252E5E940);
  if (swift_dynamicCast())
  {
    sub_252927BEC(v9, &v13);
    v0 = v15;
    v1 = v16;
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    v2 = (*(v1 + 8))(v0, v1);
    v4 = v3;
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E996F0);
    *&v9[0] = v2;
    *(&v9[0] + 1) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v6 = sub_252E36F94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(v11, v12, 0xD000000000000094, 0x8000000252E98E90);

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_25293847C(v9, &qword_27F545B20, &qword_252E5E948);
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E20);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_252E379F4();
    v11 = v13;
    v12 = v14;
    MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E996C0);
    sub_252E358B4();
    sub_252E37AE4();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    sub_252CC3D90(v11, v12, 0xD000000000000094, 0x8000000252E98E90);

    return 0;
  }

  return v2;
}

uint64_t sub_252D7E5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a1;
    v17 = a2;
    type metadata accessor for HomeStore();

    v9 = static HomeStore.shared.getter();
    v10 = sub_2529D9114();

    if (v10)
    {
      (*(v5 + 16))(v8, v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);
      v11 = sub_252E32E24();
      v13 = v12;
      (*(v5 + 8))(v8, v4);
      strcpy(v15, "\nCurrentHome: ");
      HIBYTE(v15[1]) = -18;
      MEMORY[0x2530AD570](v11, v13);

      MEMORY[0x2530AD570](v15[0], v15[1]);

      return v16;
    }
  }

  return a1;
}

uint64_t sub_252D7E76C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_252DBC7B4(a1, v1 + v4, v6);
}

uint64_t sub_252D7E80C(unint64_t *a1, void (*a2)(uint64_t))
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

dispatch_semaphore_t sub_252D7E8C8()
{
  result = dispatch_semaphore_create(1);
  qword_2814B1358 = result;
  return result;
}

uint64_t sub_252D7E92C()
{
  result = AFIsInternalInstall();
  if (result)
  {
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B09B0);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99EA0, 0xD00000000000006DLL, 0x8000000252E99C60);
    type metadata accessor for DarwinNotification();
    v3 = swift_allocObject();
    v3[2] = 0xD000000000000044;
    v3[3] = 0x8000000252E99EC0;
    v3[4] = GEOLocationCoordinate2DMake;
    v3[5] = 0;
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;

    v5 = swift_allocObject();
    swift_weakInit();

    sub_252C8C0DC(sub_252D80AE8, v5);
  }

  return result;
}

uint64_t sub_252D7EA90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_252D80074();
  }

  return result;
}

uint64_t sub_252D7EAE8()
{
  v12 = sub_252E37564();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E37534();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_252E36D04();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_252936DF8();
  v11[0] = "shutdownNotification";
  v11[1] = v9;
  sub_252E36CD4();
  v13 = MEMORY[0x277D84F90];
  sub_252951AC0(&qword_2814B0220, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + 16) = sub_252E37594();
  *(v0 + 24) = 0;
  *(v0 + 32) = sub_252CC3C74(MEMORY[0x277D84F90]);
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t sub_252D7ED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_252E36CA4();
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_252E36D04();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 16);
  v20 = swift_allocObject();
  v20[2] = v6;
  v20[3] = a5;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  aBlock[4] = sub_252990560;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);

  sub_252E36CD4();
  v26 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v19, v15, v21);
  _Block_release(v21);
  (*(v25 + 8))(v15, v12);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_252D7F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48) < a2)
  {
    *(a1 + 48) = a2;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16) && (v11 = *(a1 + 32), , sub_252A44A10(a3, a4), v13 = v12, result = , (v13 & 1) != 0))
  {
    *(a1 + 40) = 1;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    swift_beginAccess();

    v16 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_2529FBC30(sub_252AD55F0, v15, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v21;
    swift_endAccess();
    v18 = sub_252D80780(*(a1 + 48));
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_2814B09B0);
    sub_252E379F4();

    strcpy(v22, "Registering ");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    MEMORY[0x2530AD570](a3, a4);
    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    v20 = sub_252E37D94();
    MEMORY[0x2530AD570](v20);

    MEMORY[0x2530AD570](0x73646E6F63657320, 0xE800000000000000);
    sub_252CC3D90(v22[0], v22[1], 0xD00000000000006DLL, 0x8000000252E99C60);

    return sub_252D7F2D0(v18);
  }

  return result;
}

uint64_t sub_252D7F2D0(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v45 = sub_252E36C84();
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  (MEMORY[0x28223BE20])();
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_252E36D54();
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - v8;
  v9 = sub_252E36D04();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36CA4();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[3])
  {

    sub_252E36D84();
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v56 = sub_252D80AD0;
  v57 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_252AD686C;
  v55 = &block_descriptor_27_0;
  _Block_copy(&aBlock);
  v51 = MEMORY[0x277D84F90];
  v46 = sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  v17 = sub_252E36DA4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_252E36D74();

  v21 = v1[3];
  v2[3] = v20;

  v22 = v2[2];
  v23 = swift_allocObject();
  swift_weakInit();
  v56 = sub_252D80AD8;
  v57 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_252AD686C;
  v55 = &block_descriptor_31_0;
  v24 = _Block_copy(&aBlock);

  v25 = v47;
  sub_252E36CD4();
  v51 = MEMORY[0x277D84F90];
  sub_252E37824();
  sub_252E36D94();
  _Block_release(v24);

  (*(v48 + 8))(v15, v12);
  (*(v49 + 8))(v25, v50);

  if (v2[3])
  {
    v27 = v2[7];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v2[7] = v29;

      v30 = v38;
      sub_252E36D14();
      v31 = v40;
      *v40 = v41;
      v32 = v43;
      v33 = v45;
      (*(v43 + 104))(v31, *MEMORY[0x277D85188], v45);
      v34 = v39;
      sub_252E36D24();
      (*(v32 + 8))(v31, v33);
      v35 = *(v42 + 8);
      v36 = v44;
      v35(v30, v44);
      sub_252E37554();

      return (v35)(v34, v36);
    }
  }

  return result;
}

uint64_t sub_252D7F8E8()
{
  v0 = sub_252E36CA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36D04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40) == 1)
    {
      if (qword_2814B09A8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_2814B09B0);
      sub_252CC3D90(0xD000000000000021, 0x8000000252E99E70, 0xD00000000000006DLL, 0x8000000252E99C60);
    }

    else
    {
      v16 = *(result + 16);
      aBlock[4] = sub_252D80AE0;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_252AD686C;
      aBlock[3] = &block_descriptor_34_1;
      v15 = result;
      v14 = _Block_copy(aBlock);

      sub_252E36CD4();
      v17 = MEMORY[0x277D84F90];
      sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      sub_252E37824();
      v12 = v14;
      MEMORY[0x2530ADA30](0, v9, v4, v14);
      _Block_release(v12);
      (*(v1 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_252D7FC5C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(a1 + 32) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v23 = *(a1 + 32);

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

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
        v14 = (*(v23 + 48) + v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(v23 + 56) + v13;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = qword_2814B09A8;

        if (v20 != -1)
        {
          swift_once();
        }

        v8 &= v8 - 1;
        v21 = sub_252E36AD4();
        __swift_project_value_buffer(v21, qword_2814B09B0);
        sub_252E379F4();

        strcpy(v24, "Shutting down ");
        HIBYTE(v24[1]) = -18;
        MEMORY[0x2530AD570](v16, v15);

        MEMORY[0x2530AD570](3026478, 0xE300000000000000);
        sub_252CC3D90(v24[0], v24[1], 0xD00000000000006DLL, 0x8000000252E99C60);

        v18(v22);
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D7FE70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 56);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(result + 56) = v5;
      if (v5)
      {
      }

      v0 = 0xD00000000000006DLL;
      if ((*(result + 40) & 1) == 0)
      {
        if (qword_2814B09A8 != -1)
        {
          swift_once();
        }

        v9 = sub_252E36AD4();
        __swift_project_value_buffer(v9, qword_2814B09B0);
        sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E99E20, 0xD00000000000006DLL, 0x8000000252E99C60);
        sub_252D8098C();
      }

      v1 = result;
      if (qword_2814B09A8 == -1)
      {
LABEL_6:
        v6 = sub_252E36AD4();
        __swift_project_value_buffer(v6, qword_2814B09B0);
        sub_252E379F4();

        v10 = *(v1 + 48);
        v7 = sub_252E37D94();
        MEMORY[0x2530AD570](v7);

        sub_252CC3D90(v0 - 82, 0x8000000252E99E50, 0xD00000000000006DLL, 0x8000000252E99C60);

        v8 = *(v1 + 24);
        *(v1 + 24) = 0;

        sub_252D7F2D0(*(v1 + 48));
        *(v1 + 40) = 0;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_252D80074()
{
  v1 = sub_252E36CA4();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36D04();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B09A8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_2814B09B0);
  sub_252CC7784(0xD000000000000021, 0x8000000252E99D90, 0, 0xD00000000000006DLL, 0x8000000252E99C60);
  v13 = *(v0 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_252D8096C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);

  sub_252E36CD4();
  v16 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v8, v4, v11);
  _Block_release(v11);
  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

uint64_t sub_252D803D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_252D8098C();
  }

  v1 = Strong;
  if (*(Strong + 24))
  {
    v2 = *(Strong + 24);

    sub_252E36D84();

    v3 = *(v1 + 24);
  }

  *(v1 + 24) = 0;

  swift_beginAccess();
  v4 = *(v1 + 32);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + 32) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = *(v1 + 32);

  v13 = 0;
  if (v10)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return sub_252D8098C();
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      do
      {
LABEL_11:
        v15 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
        v16 = (*(v24 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v24 + 56) + v15;
        v20 = *(v19 + 8);
        v25 = *v19;
        v21 = qword_2814B09A8;

        if (v21 != -1)
        {
          swift_once();
        }

        v10 &= v10 - 1;
        v22 = sub_252E36AD4();
        __swift_project_value_buffer(v22, qword_2814B09B0);
        sub_252E379F4();

        MEMORY[0x2530AD570](v18, v17);

        MEMORY[0x2530AD570](3026478, 0xE300000000000000);
        sub_252CC3D90(0xD000000000000014, 0x8000000252E99DC0, 0xD00000000000006DLL, 0x8000000252E99C60);

        v25(v23);
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D8064C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void *sub_252D806C0()
{
  if (qword_2814B0DB8 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v0 = off_2814B0DC0;
  if (off_2814B0DC0)
  {
  }

  else
  {
    type metadata accessor for LifeCycleManager();
    swift_allocObject();
    v0 = sub_252D7EAE8();
    off_2814B0DC0 = v0;

    sub_252D7E92C();
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252D80780(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 121)
  {
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B09B0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E99CD0);
    v3 = sub_252E37D94();
    MEMORY[0x2530AD570](v3);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006DLL, 0x8000000252E99C60, 0xD000000000000025, 0x8000000252E99D30, 173);

    sub_252E379F4();

    v1 = 15;
    v4 = sub_252E37D94();
    MEMORY[0x2530AD570](v4);

    sub_252CC4050(0xD000000000000024, 0x8000000252E99D60, 0xD00000000000006DLL, 0x8000000252E99C60, 0xD000000000000025, 0x8000000252E99D30, 174);
  }

  return v1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252D8098C()
{
  if (qword_2814B09A8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B09B0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E99DE0, 0xD00000000000006DLL, 0x8000000252E99C60);
  if (AFIsInternalInstall())
  {
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E99E00, 0xD00000000000006DLL, 0x8000000252E99C60);
    if (off_2814B0DC0)
    {
      if (*(off_2814B0DC0 + 8))
      {
        v1 = *(off_2814B0DC0 + 8);

        sub_252C8C39C();
      }
    }
  }

  if (qword_2814B0DB8 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  off_2814B0DC0 = 0;

  return sub_252E37614();
}

uint64_t sub_252D80B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[331] = v3;
  v4[330] = a3;
  v4[329] = a2;
  v4[328] = a1;
  v5 = sub_252E34014();
  v4[332] = v5;
  v6 = *(v5 - 8);
  v4[333] = v6;
  v7 = *(v6 + 64) + 15;
  v4[334] = swift_task_alloc();
  v4[335] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D80BE8, 0, 0);
}

uint64_t sub_252D80BE8()
{
  v92 = v0;
  v2 = v0[330];
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v89 = v2;
  if (!v2)
  {
LABEL_16:
    v8 = v0[331];
    v14 = v0[329];
    type metadata accessor for HomeAutomationEntityResponses();
    v1 = swift_allocObject();
    v0[336] = v1;
    *(v1 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v1 + 24) = v4;
    memcpy(v0 + 65, (v8 + 112), 0x1F8uLL);
    memcpy(__dst, (v8 + 112), sizeof(__dst));
    sub_2529D291C((v0 + 65), (v0 + 128));
    v15 = v14;
    v7 = sub_252953488(v14, __dst, 0);
    v0[337] = v7;

    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_17;
  }

  v5 = sub_252C285CC();
  v6 = v5;
  __dst[0] = v4;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      goto LABEL_16;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v6);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_80;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v1 = sub_252DA124C(0);

    ++v9;
    if (v1)
    {
      MEMORY[0x2530AD700]();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v4 = __dst[0];
      v9 = v12;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_17:
    v16 = v0[331];
    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544D18);
    __dst[0] = 0x203A746E65746E49;
    __dst[1] = 0xE800000000000000;
    memcpy(v0 + 2, (v8 + 112), 0x1F8uLL);
    memcpy(v0 + 191, (v8 + 112), 0x1F8uLL);
    sub_2529D291C((v0 + 2), (v0 + 254));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v18 = sub_252E36F94();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E99F50);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000010;
    __dst[1] = 0x8000000252E77570;
    v0[327] = *(v7 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
    v19 = sub_252E36F94();
    MEMORY[0x2530AD570](v19);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E99F50);

    v20 = swift_allocObject();
    v0[338] = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v1;
    v87 = v20;

    v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v21 + 288), (v0 + 317));

    v22 = v0[320];
    v23 = v0[321];
    __swift_project_boxed_opaque_existential_1(v0 + 317, v22);
    v24 = (*(v23 + 120))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 317);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v85 = v1;
    v1 = MEMORY[0x277D84F90];
    if (!v89)
    {
      goto LABEL_93;
    }

    v25 = v0[330];
    v26 = sub_252C285CC();
    v8 = v26;
    v91 = v1;
    if (v26 >> 62)
    {
      v27 = sub_252E378C4();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x277D84F90];
    v29 = &off_279711000;
    if (v27)
    {
      v1 = 0;
      v30 = v8 & 0xC000000000000001;
      v31 = v8 & 0xFFFFFFFFFFFFFF8;
      v89 = v8 + 32;
      v86 = v7;
      v83 = v8;
      v84 = v27;
      v82 = v8 & 0xC000000000000001;
      v88 = v0;
      while (1)
      {
        if (v30)
        {
          v32 = MEMORY[0x2530ADF00](v1, v8);
        }

        else
        {
          if (v1 >= *(v31 + 16))
          {
            goto LABEL_82;
          }

          v32 = *(v89 + 8 * v1);
        }

        v33 = v32;
        v34 = __OFADD__(v1++, 1);
        if (v34)
        {
          goto LABEL_81;
        }

        v35 = [v32 v29[221]];
        if (v35)
        {
          v36 = v35;
          v37 = [v35 type];

          if (v37 == 7 && (v38 = [v33 taskResponses]) != 0)
          {
            v39 = v38;
            type metadata accessor for HomeUserTaskResponse();
            v7 = sub_252E37264();

            v29 = &off_279711000;
            v40 = [v33 entity];
            if (v40)
            {

              if (v7 >> 62)
              {
                v41 = sub_252E378C4();
                if (v41)
                {
LABEL_35:
                  v42 = 0;
                  while (1)
                  {
                    if ((v7 & 0xC000000000000001) != 0)
                    {
                      v43 = MEMORY[0x2530ADF00](v42, v7);
                    }

                    else
                    {
                      if (v42 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_86;
                      }

                      v43 = *(v7 + 32 + 8 * v42);
                    }

                    v8 = v43;
                    v34 = __OFADD__(v42++, 1);
                    if (v34)
                    {
                      goto LABEL_85;
                    }

                    v44 = v31;
                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v45 = qword_27F575C40;
                    v46 = [v8 taskOutcome];
                    if (*(v45 + 16))
                    {
                      v47 = v46;
                      v48 = *(v45 + 40);
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v47);
                      v49 = sub_252E37F14();
                      v50 = -1 << *(v45 + 32);
                      v51 = v49 & ~v50;
                      if ((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
                      {
                        v52 = ~v50;
                        while (*(*(v45 + 48) + 8 * v51) != v47)
                        {
                          v51 = (v51 + 1) & v52;
                          if (((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                          {
                            goto LABEL_37;
                          }
                        }

                        sub_252E37A94();
                        v53 = *(v91 + 16);
                        sub_252E37AC4();
                        sub_252E37AD4();
                        sub_252E37AA4();
                        v7 = v86;
                        v29 = &off_279711000;
                        v8 = v83;
                        v27 = v84;
                        v30 = v82;
                        v31 = v44;
                        v0 = v88;
                        goto LABEL_24;
                      }
                    }

LABEL_37:

                    v29 = &off_279711000;
                    v31 = v44;
                    v0 = v88;
                    if (v42 == v41)
                    {

                      v7 = v86;
                      v8 = v83;
                      v27 = v84;
                      v30 = v82;
                      goto LABEL_24;
                    }
                  }
                }
              }

              else
              {
                v41 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v41)
                {
                  goto LABEL_35;
                }
              }

              v7 = v86;
              v27 = v84;
            }

            else
            {

              v7 = v86;
            }
          }

          else
          {

            v29 = &off_279711000;
          }
        }

        else
        {
        }

LABEL_24:
        if (v1 == v27)
        {
          v59 = v91;
          v28 = MEMORY[0x277D84F90];
          goto LABEL_62;
        }
      }
    }

    v59 = MEMORY[0x277D84F90];
LABEL_62:

    __dst[0] = v28;
    if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
    {
      v60 = sub_252E378C4();
      v61 = v7;
      if (!v60)
      {
LABEL_91:
        v1 = MEMORY[0x277D84F90];
LABEL_92:

        v7 = v61;
LABEL_93:
        v66 = v0[335];
        v67 = v0[331];
        v68 = v0[329];
        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v69 = ControlHomeIntent.Builder.init()();
        v70 = sub_252B4EEFC(v1);

        v71 = (*(*v69 + 208))(v70);

        v72 = [v68 userTask];
        v73 = (*(*v71 + 184))();

        v75 = (*(*v73 + 224))(v74);
        v0[339] = v75;

        v76 = v67[12];
        v77 = v67[13];
        __swift_project_boxed_opaque_existential_1(v67 + 9, v76);
        v78 = swift_task_alloc();
        v0[340] = v78;
        v78[2] = v75;
        v78[3] = v85;
        v78[4] = v7;
        sub_252B03B94();
        v79 = swift_task_alloc();
        v0[341] = v79;
        *v79 = v0;
        v79[1] = sub_252D817DC;
        v80 = v0[335];
        v81 = v0[328];
        v96 = v76;
        v97 = v77;
        v95 = 512;
        v94 = 0;

        return sub_252A199A8(v81, &unk_252E5EA50, v87, &unk_252E5EA70, v78, v80, 0, 0);
      }
    }

    else
    {
      v60 = *(v59 + 16);
      v61 = v7;
      if (!v60)
      {
        goto LABEL_91;
      }
    }

    v7 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_66:
    v62 = v7;
    while (1)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x2530ADF00](v62, v59);
      }

      else
      {
        if (v62 >= *(v59 + 16))
        {
          goto LABEL_84;
        }

        v63 = *(v59 + 8 * v62 + 32);
      }

      v8 = v63;
      v7 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v64 = [v63 v29[221]];
      if (v64)
      {
        v65 = v64;
        sub_252AF04C0();

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v1 = __dst[0];
        v29 = &off_279711000;
        if (v7 != v60)
        {
          goto LABEL_66;
        }

        goto LABEL_92;
      }

      ++v62;
      if (v7 == v60)
      {
        goto LABEL_92;
      }
    }
  }

  sub_252929E74(v0[331] + 24, (v0 + 322));
  v54 = __swift_project_boxed_opaque_existential_1(v0 + 322, v0[325]);
  v55 = sub_252998290();
  v0[343] = v55;
  v56 = *v54;

  v57 = swift_task_alloc();
  v0[344] = v57;
  *v57 = v0;
  v57[1] = sub_252D819FC;

  return sub_252C0E840(0, v55, v56, v1);
}

uint64_t sub_252D817DC()
{
  v2 = *v1;
  v3 = *(*v1 + 2728);
  v4 = *(*v1 + 2680);
  v5 = *(*v1 + 2664);
  v6 = *(*v1 + 2656);
  v10 = *v1;
  *(*v1 + 2736) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D81F38;
  }

  else
  {
    v8 = *(v2 + 2720);

    v7 = sub_252D8195C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D8195C()
{
  v1 = v0[339];
  v2 = v0[338];
  v3 = v0[337];
  v4 = v0[336];

  v5 = v0[335];
  v6 = v0[334];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D819FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2752);
  v5 = *(*v2 + 2744);
  v6 = *(*v2 + 2688);
  v9 = *v2;
  *(v3 + 2760) = a1;
  *(v3 + 2768) = v1;

  if (v1)
  {
    v7 = sub_252D81E00;
  }

  else
  {
    v7 = sub_252D81B58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D81B58()
{
  v1 = v0[345];
  v2 = v0[334];
  v3 = v0[331];
  __swift_destroy_boxed_opaque_existential_1(v0 + 322);
  v4 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v5 = swift_task_alloc();
  v0[347] = v5;
  *(v5 + 16) = v1;
  sub_252AD7CC4();
  v6 = swift_task_alloc();
  v0[348] = v6;
  *v6 = v0;
  v6[1] = sub_252D81C80;
  v7 = v0[334];
  v8 = v0[328];

  return sub_252BDB88C(v8, &unk_252E5EA60, v5, v7, 0, 0, 0, v4);
}

uint64_t sub_252D81C80()
{
  v2 = *v1;
  v3 = *(*v1 + 2784);
  v4 = *(*v1 + 2672);
  v5 = *(*v1 + 2664);
  v6 = *(*v1 + 2656);
  v10 = *v1;
  *(*v1 + 2792) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D81FE4;
  }

  else
  {
    v8 = *(v2 + 2776);

    v7 = sub_252D81E98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D81E00()
{
  v1 = v0[338];
  v2 = v0[337];
  v3 = v0[336];

  __swift_destroy_boxed_opaque_existential_1(v0 + 322);

  v4 = v0[346];
  v5 = v0[335];
  v6 = v0[334];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D81E98()
{
  v1 = v0[345];
  v2 = v0[338];
  v3 = v0[337];
  v4 = v0[336];

  v5 = v0[335];
  v6 = v0[334];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D81F38()
{
  v1 = v0[340];
  v2 = v0[339];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[336];

  v6 = v0[342];
  v7 = v0[335];
  v8 = v0[334];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D81FE4()
{
  v1 = v0[347];
  v2 = v0[345];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[336];

  v6 = v0[349];
  v7 = v0[335];
  v8 = v0[334];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D82090(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D820B0, 0, 0);
}

uint64_t sub_252D820B0()
{
  v1 = v0[3];
  v0[4] = *(v0[2] + 64);

  v2 = sub_252998290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000252E851F0;
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x277D55C70] + 4);
  v7 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252D82208;

  return v7(0xD00000000000001ELL, 0x8000000252E8A0A0, v3);
}

uint64_t sub_252D82208(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D82364, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_252D82364()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_252D823D0(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v12 = *(v11 + 28);
  v13 = *(a1 + v12);

  *(a1 + v12) = a2;
  v14 = sub_25294833C(1u, 0, 0);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  v16 = [v14 dictionary];
  if (!v16)
  {

LABEL_7:
    v24 = sub_252E36324();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v30[0] = 0;
  v19 = [v18 dataWithPropertyList:v17 format:200 options:0 error:v30];
  v20 = v30[0];
  if (!v19)
  {
    v25 = v20;
    v26 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v21 = sub_252E32D34();
  v23 = v22;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v21, v23);
  v24 = sub_252E36324();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
LABEL_8:
  sub_252956C98(v10, a1 + *(v11 + 32));
  sub_252E37024();
  sub_252E36324();
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  result = sub_252956C98(v8, a1);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_252D826EC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = [v2 entityResponses];
  if (!v3)
  {

    return 0;
  }

  v4 = sub_252C285F0();
  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 == 0;
}

uint64_t sub_252D8278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D80B10(a1, a2, a3);
}

void *sub_252D82840@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D828A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D82090(v2, v3);
}

uint64_t sub_252D8293C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252D829D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252CCB0FC(a1, v4, v5, v6);
}

uint64_t sub_252D82A94(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(v1 + 1008) = *(a1 + 80);
  v3 = *(a1 + 48);
  *(v1 + 960) = *(a1 + 32);
  *(v1 + 976) = v3;
  *(v1 + 992) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v1 + 928) = *a1;
  *(v1 + 944) = v4;
  *(v1 + 1016) = v2;
  memcpy((v1 + 520), (a1 + 96), 0x198uLL);

  return MEMORY[0x2822009F8](sub_252D82B2C, 0, 0);
}

uint64_t sub_252D82B2C()
{
  *(v0 + 1024) = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_252D82BC4;

  return sub_252979238();
}

uint64_t sub_252D82BC4(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v3 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1040) = a1;

  return MEMORY[0x2822009F8](sub_252D82CE4, 0, 0);
}

uint64_t sub_252D82CE4()
{
  v62 = v0;
  v1 = *(v0 + 1040);
  if (!v1)
  {
    if (qword_27F53F520 == -1)
    {
LABEL_5:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544E08);
      v18 = sub_252E36AC4();
      v19 = sub_252E374D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_252917000, v18, v19, "Couldn't get meCard", v20, 2u);
        MEMORY[0x2530AED00](v20, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  v2 = [*(v0 + 1040) firstName];
  if (!v2)
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544E08);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Name in MeCard is undefined";
    goto LABEL_26;
  }

  v55 = v1;
  v3 = 0x6E69685F6D6F6F72;
  v4 = *(v0 + 1016);
  v5 = v2;
  v6 = sub_252E36F34();
  v8 = v7;

  v58 = sub_252AD26C8(v6, v8);
  v10 = v9;

  v11 = *(v0 + 976);
  __dst[2] = *(v0 + 960);
  __dst[3] = v11;
  __dst[4] = *(v0 + 992);
  v12 = *(v0 + 1008);
  v13 = *(v0 + 944);
  v54 = v0 + 928;
  __dst[0] = *(v0 + 928);
  __dst[1] = v13;
  *&__dst[5] = v12;
  *(&__dst[5] + 1) = v4;
  v56 = v0;
  memcpy(&__dst[6], (v0 + 520), 0x198uLL);
  v57 = sub_252BAC7E4();
  v14 = *(v4 + 16);
  v15 = (v4 + 32);
  v16 = (v4 + 32);
  while (2)
  {
    if (v14)
    {
      switch(*v16)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v21 = sub_252E37DB4();

          ++v16;
          --v14;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      type metadata accessor for HomeStore();
      v37 = static HomeStore.shared.getter();
      v38 = sub_2529D8DC0();
    }

    else
    {
      v27 = *(v4 + 16);
      while (2)
      {
        if (!v27)
        {
          type metadata accessor for HomeStore();
          v29 = static HomeStore.shared.getter();
          v30 = sub_2529F3D2C(v57);
          v3 = v31;

          if (v3)
          {
            sub_252929F10(v30, 1);
            v30 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
              goto LABEL_39;
            }

            goto LABEL_21;
          }

          goto LABEL_38;
        }

        switch(*v15)
        {
          case 1:

            break;
          default:
            v28 = sub_252E37DB4();

            ++v15;
            --v27;
            if ((v28 & 1) == 0)
            {
              continue;
            }

            break;
        }

        break;
      }

      type metadata accessor for HomeStore();
      v37 = static HomeStore.shared.getter();
      v38 = sub_2529D9884();
    }

    break;
  }

  v30 = v38;

  if (!(v30 >> 62))
  {

    sub_252E37DD4();

    type metadata accessor for Entity();
LABEL_38:
    if (!(v30 >> 62))
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  v3 = type metadata accessor for Entity();

  v52 = sub_252E37B14();
  swift_bridgeObjectRelease_n();
  v30 = v52;
  if (!(v52 >> 62))
  {
LABEL_39:
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

LABEL_21:
  v32 = sub_252E378C4();
  if (!v32)
  {
LABEL_22:

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E08);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    v1 = v55;
    v0 = v56;
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Couldn't find matching targeting entities";
LABEL_26:
    _os_log_impl(&dword_252917000, v23, v24, v26, v25, 2u);
    MEMORY[0x2530AED00](v25, -1, -1);
LABEL_27:

    goto LABEL_28;
  }

LABEL_40:
  v39 = 0;
  v59 = MEMORY[0x277D84F90];
  v0 = v30 & 0xC000000000000001;
  do
  {
    if (!v0)
    {
      if (v39 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v30 + 8 * v39 + 32);

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_63;
    }

    v40 = MEMORY[0x2530ADF00](v39, v30);
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
LABEL_50:
      __break(1u);
    }

LABEL_46:
    *&__dst[0] = v40;
    v3 = 0;
    if (sub_252D83A38(__dst, v58, v10))
    {
      sub_252E37A94();
      v3 = *(v59 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v39;
  }

  while (v41 != v32);

  if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
  {
    v42 = v55;
    v0 = v56;
    if (!sub_252E378C4())
    {
      goto LABEL_67;
    }

LABEL_56:
    if ((v59 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x2530ADF00](0, v59);
    }

    else
    {
      if (!*(v59 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v3 = *(v59 + 32);
    }

    v43 = *(v0 + 1016);
    v44 = *(v54 + 48);
    __dst[2] = *(v54 + 32);
    __dst[3] = v44;
    __dst[4] = *(v54 + 64);
    v45 = *(v54 + 80);
    v46 = *(v54 + 16);
    __dst[0] = *v54;
    __dst[1] = v46;
    *&__dst[5] = v45;
    *(&__dst[5] + 1) = v43;
    memcpy(&__dst[6], (v0 + 520), 0x198uLL);
    sub_252D83C20(__dst, v3, (v0 + 16));
    if (sub_252956B94((v0 + 16)) == 1)
    {
      goto LABEL_67;
    }

    if (qword_27F53F520 == -1)
    {
LABEL_61:
      v47 = sub_252E36AD4();
      __swift_project_value_buffer(v47, qword_27F544E08);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      v60 = __dst[0];
      v48 = MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E9A0B0);
      v49 = (*(*v3 + 144))(v48);
      MEMORY[0x2530AD570](v49);

      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E9A0D0);
      memcpy(__dst, (v0 + 16), 0x1F8uLL);
      v50 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v50);

      sub_252CC3D90(v60, *(&v60 + 1), 0xD000000000000086, 0x8000000252E9A020);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_252E3C290;
      memcpy((v51 + 32), (v0 + 16), 0x1F8uLL);

      v34 = v51;
      goto LABEL_29;
    }

LABEL_72:
    swift_once();
    goto LABEL_61;
  }

  v42 = v55;
  v0 = v56;
  if (*(v59 + 16))
  {
    goto LABEL_56;
  }

LABEL_67:

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v53 = sub_252E36AD4();
  __swift_project_value_buffer(v53, qword_27F544E08);
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E99FE0);
  MEMORY[0x2530AD570](v58, v10);

  sub_252CC3D90(*&__dst[0], *(&__dst[0] + 1), 0xD000000000000086, 0x8000000252E9A020);

LABEL_28:
  v34 = MEMORY[0x277D84F90];
LABEL_29:
  v35 = *(v0 + 8);

  return v35(v34);
}

BOOL sub_252D83A38(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_252AD26C8(*(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  v7 = v6;
  v8 = sub_252AD5618(a2);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544E08);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](544175136, 0xE400000000000000);
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x6175716520736920, 0xED0000206F74206CLL);
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E9A140, 0xD000000000000086, 0x8000000252E9A020);

  return v8 == 0;
}

void *sub_252D83C20@<X0>(void *__src@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v5 = sub_252E1EBE8(__dst);

  v6 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType];
  if (v6 <= 2)
  {
LABEL_21:
    if (v6 == 1)
    {
      v27 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
      v28 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
      swift_beginAccess();
      v29 = *(v5 + 64);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 64) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_2529F7A80(0, *(v29 + 2) + 1, 1, v29);
        *(v5 + 64) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_2529F7A80((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v28;
      *(v5 + 64) = v29;
      swift_endAccess();
      goto LABEL_42;
    }

    if (v6 != 2)
    {
      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    v16 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v15 + 32) = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v15 + 40) = v16;
    v17 = *(v5 + 240);
    *(v5 + 240) = v15;
LABEL_25:

    goto LABEL_42;
  }

  if (v6 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_252E3C290;
    v19 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v18 + 32) = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v18 + 40) = v19;
    v20 = *(v5 + 120);
    *(v5 + 120) = v18;
    goto LABEL_25;
  }

  if (v6 == 4)
  {
    v10 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v8 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    swift_beginAccess();
    a2 = *(v5 + 176);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 176) = a2;
    if ((v21 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  if (v6 != 7)
  {
LABEL_35:
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9A0F0);
    __srca[0] = v6;
    sub_252E37AE4();
    sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E9A020, 0xD00000000000002ELL, 0x8000000252E9A110, 94);

    sub_25293DEE0(__dst);
    return memcpy(a3, __dst, 0x1F8uLL);
  }

  v46 = v5;
  v47 = a3;
  type metadata accessor for HomeStore();
  v7 = static HomeStore.shared.getter();
  v8 = sub_2529D9D50();

  if (v8 >> 62)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v6 = &a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  while (1)
  {
    if (v9 == v10)
    {

      v36 = *v6;
      v35 = *(v6 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252E3C290;
      *(v37 + 32) = v36;
      *(v37 + 40) = v35;
      v38 = v46[21];
      v46[21] = v37;

      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252E3C290;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;
      v40 = v46[40];
      v46[40] = v39;

      goto LABEL_41;
    }

    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    a3 = MEMORY[0x2530ADF00](v10, v8);
    if (__OFADD__(v10, 1))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_12:
    v11 = *v6;
    a2 = *(v6 + 8);
    if (*&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name] == *v6 && *&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8] == a2)
    {
      v11 = *&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_252E3C290;
      *(v41 + 32) = v11;
      *(v41 + 40) = a2;
      v42 = v46[23];
      v46[23] = v41;
      swift_bridgeObjectRetain_n();

      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_252E3C290;
      *(v43 + 32) = v11;
      *(v43 + 40) = a2;
      v44 = v46[41];
      v46[41] = v43;
LABEL_41:

      a3 = v47;
      goto LABEL_42;
    }

    v13 = *v6;
    v14 = *(v6 + 8);
    v5 = sub_252E37DB4();

    ++v10;
    if (v5)
    {

      goto LABEL_40;
    }
  }

  if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    a3 = *(v8 + 8 * v10 + 32);

    if (__OFADD__(v10, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_45:
  a2 = sub_2529F7A80(0, *(a2 + 2) + 1, 1, a2);
  *(v5 + 176) = a2;
LABEL_27:
  v23 = *(a2 + 2);
  v22 = *(a2 + 3);
  if (v23 >= v22 >> 1)
  {
    a2 = sub_2529F7A80((v22 > 1), v23 + 1, 1, a2);
  }

  *(a2 + 2) = v23 + 1;
  v24 = &a2[16 * v23];
  *(v24 + 4) = v10;
  *(v24 + 5) = v8;
  *(v5 + 176) = a2;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_252E3C290;
  *(v25 + 32) = v10;
  *(v25 + 40) = v8;
  v26 = *(v5 + 336);
  *(v5 + 336) = v25;

LABEL_42:

  sub_252E1E4F8(__srca);

  memcpy(__dst, __srca, 0x1F8uLL);
  GEOLocationCoordinate2DMake(__dst);
  return memcpy(a3, __dst, 0x1F8uLL);
}

uint64_t sub_252D842F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D82A94(a1);
}

uint64_t sub_252D8438C(uint64_t a1)
{
  if (*(*(a1 + 168) + 16))
  {
    return 0;
  }

  if (*(*(a1 + 152) + 16))
  {
    return 0;
  }

  if ((*(*(a1 + 160) + 16) != 0) | *(a1 + 289) & 1)
  {
    return 0;
  }

  return *(a1 + 288) & (*(a1 + 280) == 1);
}

unint64_t sub_252D843F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
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
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
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

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      swift_beginAccess();
      v6 = *(v4 + 24);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252D85760();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B50, &unk_252E5EAF8);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for MutableHomeUserTaskResponse();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D84770()
{
  type metadata accessor for GetBrightnessHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D847A0(unint64_t a1, uint64_t *a2)
{
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v22 = a1;
    v2 = sub_252E378C4();
    a1 = v22;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v23 = a1;
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      v6 = a1 + 32;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      v26 = v2;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x2530ADF00](v3, v23);
          v8 = __OFADD__(v3++, 1);
          if (v8)
          {
LABEL_25:
            __break(1u);
            return v28;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v7 = *(v6 + 8 * v3);

          v8 = __OFADD__(v3++, 1);
          if (v8)
          {
            goto LABEL_25;
          }
        }

        v9 = *(v7 + 16);
        if (v9 && (v10 = *(v9 + 48)) != 0)
        {
          v11 = *a2;
          if (*(*a2 + 16))
          {
            v12 = *(v9 + 40);
            v13 = *(v11 + 40);
            sub_252E37EC4();

            sub_252E37044();
            v14 = sub_252E37F14();
            v15 = -1 << *(v11 + 32);
            v16 = v14 & ~v15;
            if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
            {
              v17 = ~v15;
              while (1)
              {
                v18 = (*(v11 + 48) + 16 * v16);
                v19 = *v18 == v12 && v10 == v18[1];
                if (v19 || (sub_252E37DB4() & 1) != 0)
                {
                  break;
                }

                v16 = (v16 + 1) & v17;
                if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              v5 = v24;
              v4 = v25;
              v2 = v26;
              goto LABEL_5;
            }

LABEL_20:

            v5 = v24;
            v4 = v25;
          }

          sub_252E37A94();
          v20 = *(v28 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          a1 = sub_252E37AA4();
          v2 = v26;
        }

        else
        {
        }

LABEL_5:
        if (v3 == v2)
        {
          return v28;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_252D849EC(void *a1, void *a2)
{
  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v4 = a1;
  v78 = sub_252D6D96C(v4);

  swift_initStackObject();
  v81 = a2;
  v77 = sub_252D6D96C(v81);

  v89 = MEMORY[0x277D84FA0];
  v5 = &off_279711000;
  v6 = [v4 entityResponses];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    if (v8 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v82 = v8 + 32;
      v84 = v8 & 0xFFFFFFFFFFFFFF8;
      v75 = i;
      v79 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v12 = MEMORY[0x2530ADF00](v10, v8);
        }

        else
        {
          if (v10 >= *(v84 + 16))
          {
            goto LABEL_37;
          }

          v12 = *(v82 + 8 * v10);
        }

        v13 = v12;
        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          break;
        }

        v15 = [v12 entity];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 deviceTypes];
          if (!v17)
          {

            v21 = MEMORY[0x277D84F90];
            v33 = *(MEMORY[0x277D84F90] + 16);
            if (!v33)
            {
              goto LABEL_5;
            }

            goto LABEL_29;
          }

          v18 = v17;
          v19 = sub_252E37264();

          v20 = *(v19 + 16);
          if (v20)
          {
            v72 = v8;
            v73 = v4;
            v87 = MEMORY[0x277D84F90];
            sub_2529AA420(0, v20, 0);
            v21 = v87;
            v22 = 32;
            do
            {
              v23 = sub_252E25FC4(*(v19 + v22));
              if (v24)
              {
                v25 = 0;
              }

              else
              {
                v25 = v23;
              }

              v87 = v21;
              v27 = *(v21 + 16);
              v26 = *(v21 + 24);
              if (v27 >= v26 >> 1)
              {
                sub_2529AA420((v26 > 1), v27 + 1, 1);
                v21 = v87;
              }

              *(v21 + 16) = v27 + 1;
              *(v21 + 8 * v27 + 32) = v25;
              v22 += 8;
              --v20;
            }

            while (v20);

            v5 = 0x279711000;
            v8 = v72;
            v4 = v73;
            i = v75;
            goto LABEL_24;
          }

          v21 = MEMORY[0x277D84F90];
          i = v75;
          v33 = *(MEMORY[0x277D84F90] + 16);
          if (v33)
          {
            goto LABEL_29;
          }

LABEL_5:

          if (v10 == i)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v28 = sub_252E36AD4();
          __swift_project_value_buffer(v28, qword_27F544D60);
          sub_252E379F4();

          v87 = 0xD000000000000025;
          v88 = 0x8000000252E75B90;
          v29 = [v13 description];
          v30 = sub_252E36F34();
          v32 = v31;

          MEMORY[0x2530AD570](v30, v32);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v21 = MEMORY[0x277D84F90];
          v5 = 0x279711000;
LABEL_24:
          v11 = v79;
          v33 = *(v21 + 16);
          if (!v33)
          {
            goto LABEL_5;
          }

LABEL_29:
          v34 = 32;
          while (v33)
          {
            v35 = *(v21 + v34);
            v34 += 8;
            --v33;
            if (v35 == 6)
            {

              goto LABEL_42;
            }
          }

          if (v10 == i)
          {
            goto LABEL_39;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_39:
  }

  v36 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*&v4[v36] != 5)
  {
    v38 = *(v78 + 24);
    if (v38 >> 62)
    {
      goto LABEL_101;
    }

    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
LABEL_47:
      v85 = v38 & 0xC000000000000001;
      v74 = v38 + 32;
      v76 = v38 & 0xFFFFFFFFFFFFFF8;
      v80 = v38;

      v5 = 0;
      v83 = v39;
      while (1)
      {
        if (v85)
        {
          v38 = MEMORY[0x2530ADF00](v5, v80);
          v40 = v38;
          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v5 >= *(v76 + 16))
          {
            goto LABEL_100;
          }

          v40 = *(v74 + 8 * v5);

          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            v71 = v38;
            v39 = sub_252E378C4();
            v38 = v71;
            if (!v39)
            {
              break;
            }

            goto LABEL_47;
          }
        }

        swift_beginAccess();
        v41 = *(v40 + 24);
        if (v41 >> 62)
        {
          if (v41 < 0)
          {
            v53 = *(v40 + 24);
          }

          v42 = sub_252E378C4();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v42)
        {
LABEL_71:

LABEL_72:

          goto LABEL_73;
        }

        v43 = 0;
        while (1)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v43, v41);
            v44 = v38;
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_98;
            }

            v44 = *(v41 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
              goto LABEL_99;
            }
          }

          if (*(v44 + 24) == 1)
          {
            break;
          }

LABEL_59:
          ++v43;
          if (v45 == v42)
          {
            goto LABEL_71;
          }
        }

        v46 = *(v44 + 16);

        if (!v46)
        {
          goto LABEL_59;
        }

        swift_beginAccess();
        v47 = *(v46 + 32);

        if (!v47)
        {
          goto LABEL_59;
        }

        v48 = *(v47 + 24);

        if (v48)
        {
          goto LABEL_59;
        }

        v49 = *(v40 + 16);
        if (v49)
        {
          v50 = *(v49 + 48);
          if (v50)
          {
            v51 = *(v49 + 40);
            v52 = *(v49 + 48);

            sub_252DA6CD0(&v86, v51, v50);

            goto LABEL_72;
          }
        }

LABEL_73:
        if (v5 == v83)
        {

          v5 = &off_279711000;
          break;
        }
      }
    }

    v54 = *(v89 + 16);
    v55 = [v81 *(v5 + 1752)];
    if (!v55 || ((v56 = v55, type metadata accessor for HomeEntityResponse(), v57 = sub_252E37264(), v56, v57 >> 62) ? (v58 = sub_252E378C4()) : (v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v54 != v58))
    {
      v66 = *(v77 + 24);

      v68 = sub_252D847A0(v67, &v89);

      v69 = *(v77 + 24);
      *(v77 + 24) = v68;

      v70 = sub_252D6BB10();

LABEL_106:

      return v70;
    }

    v59 = *(v78 + 24);

    v61 = sub_252D843F0(v60);

    if (v61 >> 62)
    {
      result = sub_252E378C4();
      v62 = result;
      if (result)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62)
      {
LABEL_88:
        if (v62 < 1)
        {
          __break(1u);
          return result;
        }

        for (j = 0; j != v62; ++j)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v64 = MEMORY[0x2530ADF00](j, v61);
          }

          else
          {
            v64 = *(v61 + 8 * j + 32);
          }

          v65 = *(v64 + 16);

          if (v65)
          {
            *(v65 + 24) = 2;
          }
        }
      }
    }

    v70 = sub_252D6BB10();

    goto LABEL_106;
  }

LABEL_42:

  return v81;
}

void sub_252D852C4(void *a1, void (*a2)(void))
{
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setTaskType_];
    [v10 setAttribute_];
    [v10 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v10;
    v12 = v10;
    v13 = sub_252B4CA9C(v6, inited, 0, 1);
    v15 = v14;

    swift_setDeallocating();
    v16 = *(inited + 16);
    swift_arrayDestroy();
    if ((v15 & 1) == 0)
    {
      v17 = sub_252B4CD30(a1, 0, 1);
      if ((v18 & 1) == 0)
      {
        v25 = v17;
        v26 = sub_252D849EC(v13, v17);
        a2();

        sub_252927D3C(v25);
        sub_252927D3C(v13);
        goto LABEL_10;
      }

      sub_252927D3C(v17);
    }

    sub_252927D3C(v13);
    v19 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v20 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v19[v20] = 5;
    [v19 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v21 = sub_252E37254();
    [v19 setEntityResponses_];

    (a2)(v19);
    v12 = v19;
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000081, 0x8000000252E9A1A0, 0xD000000000000021, 0x8000000252E68B10, 29);
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v23] = 5;
    [v12 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v24 = sub_252E37254();
    [v12 setEntityResponses_];

    (a2)(v12);
  }

LABEL_10:
}

BOOL sub_252D8569C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  if ([v5 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v8 = [v6 taskType];

    return v8 == 5;
  }
}

unint64_t sub_252D85760()
{
  result = qword_27F545B58;
  if (!qword_27F545B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545B50, &unk_252E5EAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545B58);
  }

  return result;
}

uint64_t sub_252D857C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
  v4 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v7 = 0;
  *(v7 + 8) = 1;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType, 1, 1, v2);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.Builder.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.Builder.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_252D859B8(uint64_t a1)
{
  v1[2] = 0;
  v3 = *(a1 + 24);
  v1[3] = *(a1 + 16);
  *(v1 + 32) = v3;
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold);
  v5 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature + 8);
  v6 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
  *v6 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature);
  *(v6 + 8) = v5;
  v7 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature + 8);
  v8 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
  *v8 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature);
  *(v8 + 8) = v7;
  v9 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature + 8);
  v10 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
  *v10 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature);
  *(v10 + 8) = v9;
  v11 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature + 8);
  v12 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
  *v12 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature);
  *(v12 + 8) = v11;
  v13 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252956C1C(a1 + v13, v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  if (v3 == 1)
  {
    v14 = sub_252E36384();
    sub_252E374D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    v20 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BB0, &qword_252E5EE28);
    v16 = sub_252E36F94();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_252987BC8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_252E36A64();
  }

  return v1;
}

uint64_t sub_252D85C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  if (a1 == 0x61567265626D756ELL && a2 == 0xEB0000000065756CLL || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    if ((*(v3 + 32) & 1) == 0)
    {
      v21 = *(v3 + 24);
LABEL_6:
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v21;
      return result;
    }

    goto LABEL_13;
  }

  if (a1 != 1953066613 || a2 != 0xE400000000000000)
  {
    result = sub_252E37DB4();
    if ((result & 1) == 0)
    {
      if (a1 == 0xD00000000000002ELL && 0x8000000252E68800 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold;
LABEL_21:
        v27 = *(v3 + v26);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v27;
        return result;
      }

      if (a1 == 0xD00000000000002ELL && 0x8000000252E68830 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000024 && 0x8000000252E68860 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000024 && 0x8000000252E68890 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000018 && 0x8000000252E688C0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000018 && 0x8000000252E688E0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000019 && 0x8000000252E68900 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000019 && 0x8000000252E68920 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v28 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
LABEL_38:
        v29 = v3 + v28;
        if ((*(v29 + 8) & 1) == 0)
        {
          v21 = *v29;
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (sub_252E37DB4() & 1) != 0)
      {
        sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v17);
        v30 = sub_252E36324();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v17, 1, v30) != 1)
        {
          *(a3 + 24) = v30;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v31 + 32))(boxed_opaque_existential_0, v17, v30);
        }

        v24 = v17;
        goto LABEL_12;
      }

      if (a1 == 0x676E697274536F74 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
      {
        sub_25296EBC4(v14);
        v33 = sub_252E36324();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v14, 1, v33) != 1)
        {
          *(a3 + 24) = v33;
          v35 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v34 + 32))(v35, v14, v33);
        }

        v24 = v14;
        goto LABEL_12;
      }

      if (a1 == 0xD000000000000010 && 0x8000000252E9A260 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25296E640();
        if (!result)
        {
          goto LABEL_13;
        }

        v36 = result;
        result = sub_252E360E4();
        goto LABEL_69;
      }

      if (a1 == 0xD000000000000015 && 0x8000000252E9A280 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25296EA90();
        if (v37)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if ((a1 != 0xD000000000000015 || 0x8000000252E9A2A0 != a2) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0xD000000000000010 && 0x8000000252E9A2C0 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            sub_25296F370(v11);
            v39 = sub_252E36324();
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(v11, 1, v39) != 1)
            {
              *(a3 + 24) = v39;
              v41 = __swift_allocate_boxed_opaque_existential_0(a3);
              return (*(v40 + 32))(v41, v11, v39);
            }

            v24 = v11;
            goto LABEL_12;
          }

          if (a1 == 0x56746E6563726570 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
          {
            result = sub_25296F030();
            if (!result)
            {
              goto LABEL_13;
            }

            v36 = result;
            result = sub_252E361D4();
          }

          else
          {
            if ((a1 != 0x6E6F697461727564 || a2 != 0xED000065756C6156) && (sub_252E37DB4() & 1) == 0)
            {
              result = 0xD000000000000012;
              if (a1 == 0xD000000000000012 && 0x8000000252E9A2E0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
              {
                if ((*(v3 + 32) & 1) == 0)
                {
                  v21 = round(*(v3 + 24));
                  goto LABEL_6;
                }
              }

              goto LABEL_13;
            }

            result = sub_25296F198();
            if (!result)
            {
LABEL_13:
              *a3 = 0u;
              *(a3 + 16) = 0u;
              return result;
            }

            v36 = result;
            result = sub_252E36294();
          }

LABEL_69:
          *(a3 + 24) = result;
          *a3 = v36;
          return result;
        }

        result = sub_25296EA9C();
        if (v38)
        {
          goto LABEL_13;
        }
      }

      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = result;
      return result;
    }
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v20);
  v22 = sub_252E36324();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    v24 = v20;
LABEL_12:
    result = sub_252938BBC(v24);
    goto LABEL_13;
  }

  *(a3 + 24) = v22;
  v25 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v23 + 32))(v25, v20, v22);
}

uint64_t sub_252D86540(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x61567265626D756ELL;
    v6 = 0xD000000000000024;
    if (a1 == 3)
    {
      v6 = 0xD00000000000002ELL;
    }

    if (a1 == 2)
    {
      v6 = 0xD00000000000002ELL;
    }

    if (a1)
    {
      v5 = 1953066613;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x5474736575716572;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000024;
    if (a1 != 5)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252D866AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_252D86540(*a1);
  v5 = v4;
  if (v3 == sub_252D86540(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D86734()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252D86540(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D86798()
{
  sub_252D86540(*v0);
  sub_252E37044();
}

uint64_t sub_252D867EC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252D86540(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D8684C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252D87910();
  *a2 = result;
  return result;
}

uint64_t sub_252D8687C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252D86540(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252D868C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252D87910();
  *a1 = result;
  return result;
}

uint64_t sub_252D868EC(uint64_t a1)
{
  v2 = sub_252D86DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D86928(uint64_t a1)
{
  v2 = sub_252D86DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationAbstractMeasurement.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_252D86A20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B60, &qword_252E5EB08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D86DB4();
  sub_252E37F84();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v26[15] = 0;
  sub_252E37CB4();
  if (!v2)
  {
    v26[14] = 1;
    sub_252E36324();
    sub_252D87394(&qword_27F540548, MEMORY[0x277D55C48]);
    sub_252E37CD4();
    v13 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold);
    v26[13] = 2;
    sub_252E37D04();
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold);
    v26[12] = 3;
    sub_252E37D04();
    v15 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold);
    v26[11] = 4;
    sub_252E37D04();
    v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold);
    v26[10] = 5;
    sub_252E37D04();
    v17 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature);
    v18 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature + 8);
    v26[9] = 6;
    sub_252E37CB4();
    v19 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature);
    v20 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature + 8);
    v26[8] = 7;
    sub_252E37CB4();
    v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature);
    v22 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature + 8);
    v26[7] = 8;
    sub_252E37CB4();
    v23 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature);
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature + 8);
    v26[6] = 9;
    sub_252E37CB4();
    v26[5] = 10;
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_252D86DB4()
{
  result = qword_27F545B68;
  if (!qword_27F545B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545B68);
  }

  return result;
}

uint64_t HomeAutomationAbstractMeasurement.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  HomeAutomationAbstractMeasurement.init(from:)(a1);
  return v5;
}

uint64_t HomeAutomationAbstractMeasurement.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B70, &qword_252E5EB10);
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v34 - v14;
  *(v3 + 16) = 0;
  v17 = a1[3];
  v16 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_252D86DB4();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v19 = *(*v3 + 48);
    v20 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v9;
    v47 = 0;
    *(v3 + 24) = sub_252E37BC4();
    *(v3 + 32) = v18 & 1;
    sub_252E36324();
    v46 = 1;
    sub_252D87394(&qword_27F540538, MEMORY[0x277D55C48]);
    sub_252E37BE4();
    sub_2529439A0(v11, v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
    v45 = 2;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) = sub_252E37C14() & 1;
    v44 = 3;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold) = sub_252E37C14() & 1;
    v43 = 4;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) = sub_252E37C14() & 1;
    v42 = 5;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) = sub_252E37C14() & 1;
    v41 = 6;
    v22 = sub_252E37BC4();
    v23 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
    *v23 = v22;
    *(v23 + 8) = v24 & 1;
    v40 = 7;
    v25 = sub_252E37BC4();
    v26 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
    *v26 = v25;
    *(v26 + 8) = v27 & 1;
    v39 = 8;
    v28 = sub_252E37BC4();
    v29 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
    *v29 = v28;
    *(v29 + 8) = v30 & 1;
    v38 = 9;
    v31 = sub_252E37BC4();
    v32 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
    *v32 = v31;
    *(v32 + 8) = v33 & 1;
    v37 = 10;
    sub_252E37BE4();
    (*(v12 + 8))(v15, v35);
    sub_2529439A0(v34, v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v3;
}

uint64_t sub_252D87394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252D87490@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = HomeAutomationAbstractMeasurement.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

void sub_252D87518()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252D8772C()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_252D8780C()
{
  result = qword_27F545B98;
  if (!qword_27F545B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545B98);
  }

  return result;
}

unint64_t sub_252D87864()
{
  result = qword_27F545BA0;
  if (!qword_27F545BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545BA0);
  }

  return result;
}

unint64_t sub_252D878BC()
{
  result = qword_27F545BA8;
  if (!qword_27F545BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545BA8);
  }

  return result;
}

uint64_t sub_252D87910()
{
  v0 = sub_252E37B74();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252D8795C(const void *a1)
{
  type metadata accessor for DiscoverHomeIntent();
  type metadata accessor for DiscoverHomeIntentResponse();
  sub_252E335C4();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BC8, &qword_252E5EE38);
  sub_252E33574();
  type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy();
  v2 = swift_allocObject();
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v4 = *(v3 + 22);

  v2[2] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 136), (v2 + 3));

  v6 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v2[11] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v2[12] = &off_2864BA730;
  v2[8] = v6;
  v9[0] = v2;
  sub_252D8A000(&qword_27F545C20, type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy);
  sub_252E33544();

  sub_252E33594();
  type metadata accessor for DiscoverHomeHandleIntentStrategy();
  v7 = swift_allocObject();
  strcpy((v7 + 520), "DiscoverHome");
  *(v7 + 533) = 0;
  *(v7 + 534) = -5120;
  memcpy((v7 + 16), a1, 0x1F8uLL);
  v9[63] = v7;
  sub_2529353AC(a1, v9);
  sub_252D8A000(&qword_27F545C28, type metadata accessor for DiscoverHomeHandleIntentStrategy);
  sub_252E334F4();

  return sub_252E33564();
}

uint64_t DiscoverHomeFlow.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_25293DEE0(__src);
  memcpy((v3 + 24), __src, 0x1F8uLL);
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  v5 = sub_252E34104();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + 528) = 0;
  v6 = (v3 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
  *v6 = sub_252D87E84;
  v6[1] = 0;
  return v3;
}

HomeAutomationInternal::DiscoverHomeFlow::State_optional __swiftcall DiscoverHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DiscoverHomeFlow.State.rawValue.getter()
{
  v1 = 0x6553746E65746E69;
  v2 = 0x456F547964616572;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t DiscoverHomeFlow.init()()
{
  *(v0 + 16) = 0;
  sub_25293DEE0(v5);
  memcpy((v0 + 24), v5, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 528) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
  *v3 = sub_252D87E84;
  v3[1] = 0;
  return v0;
}

BOOL sub_252D87E94(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51[-v6 - 8];
  v8 = sub_252E34164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + 528) > 1u || *(v1 + 528))
  {
    v13 = sub_252E37DB4();

    if ((v13 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
      return 0;
    }
  }

  else
  {
  }

  v50 = v7;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v14 = sub_252E36804();
  v16 = v15;

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252E3C290;
    *(v17 + 32) = 25705;
    v18 = v17 + 32;
    *(v17 + 72) = MEMORY[0x277D837D0];
    *(v17 + 40) = 0xE200000000000000;
    *(v17 + 48) = v14;
    *(v17 + 56) = v16;
    sub_252CC630C(v17);
    swift_setDeallocating();
    sub_25293847C(v18, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v20 = [objc_opt_self() sharedAnalytics];
  if (v20)
  {
    v21 = v20;

    sub_252CC1408(v22);

    v23 = sub_252E36E24();

    [v21 logEventWithType:6503 context:v23];
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v12, 0, v54);
  v24 = *(v9 + 8);
  v24(v12, v8);
  memcpy(v55, v54, sizeof(v55));
  memcpy(v56, v54, 0x1F8uLL);
  if (sub_252956B94(v56) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544DA8);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v24(v12, v8);
    sub_252CC3D90(v54[0], v54[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

    sub_2529515FC(2, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    return 0;
  }

  v26 = LOBYTE(v56[26]);
  if (LOBYTE(v56[26]) != 9)
  {
    memcpy(v52, v56, sizeof(v52));
    GEOLocationCoordinate2DMake(v52);
    memcpy(v53, (v2 + 24), sizeof(v53));
    memcpy((v2 + 24), v52, 0x1F8uLL);
    memcpy(v54, v55, sizeof(v54));
    sub_2529353AC(v54, v51);
    sub_25293847C(v53, &qword_27F5404C8, &unk_252E3FD60);
    v29 = sub_252E34104();
    v30 = *(v29 - 8);
    v31 = v50;
    (*(v30 + 16))(v50, a1, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
    swift_beginAccess();
    sub_252B7B518(v31, v2 + v32);
    swift_endAccess();
    memcpy(v51, v56, sizeof(v51));
    v33 = sub_252C9B4DC();
    v34 = *(v2 + 16);
    *(v2 + 16) = v33;

    v35 = 0;
    while (1)
    {
      v27 = v35 != 4;
      if (v35 == 4)
      {
LABEL_88:
        sub_25293847C(v55, &qword_27F5404C8, &unk_252E3FD60);
        return v27;
      }

      v37 = byte_2864A3420[v35 + 32];
      if (v37 <= 3)
      {
        v40 = 7628147;
        v41 = 0x656C67676F74;
        if (v37 != 2)
        {
          v41 = 2003789939;
        }

        v42 = 0xE600000000000000;
        if (v37 != 2)
        {
          v42 = 0xE400000000000000;
        }

        if (byte_2864A3420[v35 + 32])
        {
          v40 = 7628135;
        }

        if (byte_2864A3420[v35 + 32] <= 1u)
        {
          v38 = v40;
        }

        else
        {
          v38 = v41;
        }

        if (byte_2864A3420[v35 + 32] <= 1u)
        {
          v39 = 0xE300000000000000;
        }

        else
        {
          v39 = v42;
        }

        if (v26 > 3)
        {
LABEL_53:
          v43 = 0xD000000000000012;
          if (v26 != 7)
          {
            v43 = 0x656E4F6863696877;
          }

          v44 = 0xEF64656C69614673;
          if (v26 == 7)
          {
            v44 = 0x8000000252E678E0;
          }

          if (v26 == 6)
          {
            v43 = 0xD000000000000010;
            v44 = 0x8000000252E678C0;
          }

          if (v26 == 4)
          {
            v45 = 0x746E756F63;
          }

          else
          {
            v45 = 0xD000000000000011;
          }

          v46 = 0xE500000000000000;
          if (v26 != 4)
          {
            v46 = 0x8000000252E678A0;
          }

          if (v26 <= 5)
          {
            v47 = v45;
          }

          else
          {
            v47 = v43;
          }

          if (v26 <= 5)
          {
            v48 = v46;
          }

          else
          {
            v48 = v44;
          }

          if (v38 != v47)
          {
            goto LABEL_22;
          }

          goto LABEL_86;
        }
      }

      else if (byte_2864A3420[v35 + 32] <= 5u)
      {
        if (v37 == 4)
        {
          v38 = 0x746E756F63;
        }

        else
        {
          v38 = 0xD000000000000011;
        }

        if (v37 == 4)
        {
          v39 = 0xE500000000000000;
        }

        else
        {
          v39 = 0x8000000252E678A0;
        }

        if (v26 > 3)
        {
          goto LABEL_53;
        }
      }

      else if (v37 == 6)
      {
        v38 = 0xD000000000000010;
        v39 = 0x8000000252E678C0;
        if (v26 > 3)
        {
          goto LABEL_53;
        }
      }

      else if (v37 == 7)
      {
        v38 = 0xD000000000000012;
        v39 = 0x8000000252E678E0;
        if (v26 > 3)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v38 = 0x656E4F6863696877;
        v39 = 0xEF64656C69614673;
        if (v26 > 3)
        {
          goto LABEL_53;
        }
      }

      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v49 = 0x656C67676F74;
        }

        else
        {
          v49 = 2003789939;
        }

        if (v26 == 2)
        {
          v48 = 0xE600000000000000;
        }

        else
        {
          v48 = 0xE400000000000000;
        }

        if (v38 != v49)
        {
          goto LABEL_22;
        }
      }

      else if (v26)
      {
        v48 = 0xE300000000000000;
        if (v38 != 7628135)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v48 = 0xE300000000000000;
        if (v38 != 7628147)
        {
          goto LABEL_22;
        }
      }

LABEL_86:
      if (v39 == v48)
      {

        goto LABEL_88;
      }

LABEL_22:
      v36 = sub_252E37DB4();

      ++v35;
      if (v36)
      {
        goto LABEL_88;
      }
    }
  }

  sub_25293847C(v55, &qword_27F5404C8, &unk_252E3FD60);
  return 0;
}

uint64_t sub_252D887FC(uint64_t a1)
{
  v2[767] = v1;
  v2[766] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BC8, &qword_252E5EE38) - 8) + 64) + 15;
  v2[768] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BD0, &qword_252E5EE40);
  v2[769] = v4;
  v5 = *(v4 - 8);
  v2[770] = v5;
  v6 = *(v5 + 64) + 15;
  v2[771] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[772] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[773] = swift_task_alloc();
  v2[774] = swift_task_alloc();
  v9 = sub_252E34104();
  v2[775] = v9;
  v10 = *(v9 - 8);
  v2[776] = v10;
  v11 = *(v10 + 64) + 15;
  v2[777] = swift_task_alloc();
  v2[778] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D889B4, 0, 0);
}

uint64_t sub_252D889B4()
{
  v81 = v0;
  v1 = v0[776];
  v2 = v0[775];
  v3 = v0[774];
  v4 = v0[767];
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v4 + v5, v3, &qword_27F543798, &unk_252E4E410);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_25293847C(v0[774], &qword_27F543798, &unk_252E4E410);
LABEL_11:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v21 = v0[773];
    v22 = v0[772];
    v23 = v0[767];
    v77 = v0[766];
    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v25 = *(v23 + 16);
    v0[761] = v25;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BD8, &qword_252E5EE48);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 65, (v23 + 24), 0x1F8uLL);
    memcpy(v0 + 128, (v23 + 24), 0x1F8uLL);
    sub_252938414((v0 + 65), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v28 = sub_252E36F94();
    MEMORY[0x2530AD570](v28);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    sub_252938414(v4 + v5, v21, &qword_27F543798, &unk_252E4E410);
    v29 = sub_252E36F94();
    MEMORY[0x2530AD570](v29);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

    sub_252E33B24();
    goto LABEL_14;
  }

  v6 = v0[767];
  (*(v0[776] + 32))(v0[778], v0[774], v0[775]);
  memcpy(v0 + 317, (v6 + 24), 0x1F8uLL);
  memcpy(v0 + 254, (v6 + 24), 0x1F8uLL);
  if (sub_252956B94(v0 + 254) == 1 || (v7 = v0[767], memcpy(v0 + 2, v0 + 254, 0x1F8uLL), (v8 = *(v7 + 16)) == 0))
  {
    (*(v0[776] + 8))(v0[778], v0[775]);
    goto LABEL_11;
  }

  if (*(v7 + 528) > 1u)
  {
    v38 = (v0 + 317);
    if (*(v7 + 528) == 2)
    {
      sub_252938414(v38, (v0 + 443), &qword_27F5404C8, &unk_252E3FD60);
      v78 = v8;
      sub_252B798F0();
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544DA8);
      sub_252E379F4();

      __dst[0] = 0xD000000000000012;
      __dst[1] = 0x8000000252E9A420;
      if (qword_27F53F720 != -1)
      {
        swift_once();
      }

      v40 = v0[776];
      v73 = v0[775];
      v75 = v0[778];
      v41 = v0[771];
      v42 = v0[770];
      v43 = v0[769];
      v44 = v0[768];
      v71 = v0[766];
      v0[762] = qword_27F575C30;
      sub_252E363D4();
      sub_252D8A000(&qword_27F545BE0, MEMORY[0x277D55380]);
      v45 = sub_252E37D94();
      MEMORY[0x2530AD570](v45);

      sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

      type metadata accessor for DiscoverHomeRCHStrategy();
      v0[763] = swift_allocObject();
      sub_252D8795C(v0 + 2);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BE8, &unk_252E5EE50);
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      sub_252E335D4();
      sub_252D8A000(&qword_27F545BF0, type metadata accessor for DiscoverHomeRCHStrategy);
      sub_252E33A44();
      sub_252E33A34();
      (*(v42 + 8))(v41, v43);
      sub_252E33B14();

      sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
      (*(v40 + 8))(v75, v73);
    }

    else
    {
      sub_252938414(v38, (v0 + 380), &qword_27F5404C8, &unk_252E3FD60);
      v64 = qword_27F53F500;
      v65 = v8;
      if (v64 != -1)
      {
        swift_once();
      }

      v66 = v0[778];
      v67 = v0[776];
      v68 = v0[775];
      v69 = v0[766];
      v70 = sub_252E36AD4();
      __swift_project_value_buffer(v70, qword_27F544DA8);
      sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
      sub_252E33B24();

      sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
      (*(v67 + 8))(v66, v68);
    }
  }

  else if (*(v7 + 528))
  {
    sub_252938414((v0 + 317), (v0 + 569), &qword_27F5404C8, &unk_252E3FD60);
    v49 = qword_27F53F500;
    v79 = v8;
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = v0[778];
    v51 = v0[777];
    v52 = v0[776];
    v53 = v0[775];
    v54 = sub_252E36AD4();
    __swift_project_value_buffer(v54, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F0, &unk_252E57840);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_252E3EF80;
    *(v55 + 32) = &type metadata for ValidateHighScoreFuzzyMatches;
    *(v55 + 40) = &off_2864B0250;
    *(v55 + 48) = &type metadata for SameTypePerfectMatchesOverFuzzyMatches;
    *(v55 + 56) = &off_2864B0ED8;
    *(v55 + 64) = &type metadata for PerfectTypeOverFuzzyMatches;
    *(v55 + 72) = &off_2864BFA18;
    *(v55 + 80) = &type metadata for InvalidateMoreThanOneServiceTypes;
    *(v55 + 88) = &off_2864BA608;
    memcpy(__dst, v0 + 2, 0x1F8uLL);
    (*(v52 + 16))(v51, v50, v53);
    memcpy(v0 + 506, v0 + 317, 0x1F8uLL);
    sub_2529353AC((v0 + 506), (v0 + 632));
    if (qword_27F53F218 != -1)
    {
      swift_once();
    }

    v56 = qword_27F5753E0;
    v57 = qword_27F53F8A0;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = qword_27F575DC0;
    v59 = qword_27F53F880;

    if (v59 != -1)
    {
      swift_once();
    }

    v60 = v0[777];
    v61 = v0[776];
    v74 = v0[775];
    v76 = v0[778];
    v62 = v0[767];
    v72 = v0[766];
    v63 = qword_27F575DA0;
    type metadata accessor for IntentSelectionFlow();
    swift_allocObject();

    v0[764] = sub_252D3FCBC(__dst, v60, v55, v56, v58, v63);
    sub_252D8A000(&qword_27F543808, type metadata accessor for IntentSelectionFlow);

    sub_252E33AC4();

    sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);

    (*(v61 + 8))(v76, v74);
  }

  else
  {
    sub_252938414((v0 + 317), (v0 + 695), &qword_27F5404C8, &unk_252E3FD60);
    v9 = qword_27F53F500;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = v0[778];
    v12 = v0[776];
    v13 = v0[775];
    v14 = v0[767];
    v15 = v0[766];
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E9A440, 0xD00000000000007ELL, 0x8000000252E9A3A0);
    v17 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier + 8);
    v18 = (*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier))(v14);
    type metadata accessor for HomeStore();
    v19 = static HomeStore.shared.getter();
    sub_2529E0898();

    v0[765] = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_252D89BCC;
    *(v20 + 24) = v14;
    sub_252E33454();

    sub_252E33AC4();

    sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
    (*(v12 + 8))(v11, v13);
  }

LABEL_14:
  v30 = v0[778];
  v31 = v0[777];
  v32 = v0[774];
  v33 = v0[773];
  v34 = v0[771];
  v35 = v0[768];

  v36 = v0[1];

  return v36();
}

void sub_252D89684(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(a2 + 528) = 2;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v9, (a2 + 24), sizeof(v9));
  memcpy((a2 + 24), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v6);
  sub_25293847C(v9, &qword_27F5404C8, &unk_252E3FD60);
  memcpy(v6, __dst, sizeof(v6));
  v4 = sub_252C9B4DC();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
}

uint64_t sub_252D89750(char a1)
{
  if (a1)
  {
    *(v1 + 528) = 3;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 528) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  v7 = *(v1 + 528);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E9A3A0);
}

uint64_t DiscoverHomeFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier + 8);

  return v0;
}

uint64_t DiscoverHomeFlow.__deallocating_deinit()
{
  memcpy(__dst, v0 + 3, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier + 8);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);
  return swift_deallocClassInstance();
}

void (*sub_252D89A38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252D89AEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D887FC(a1);
}

uint64_t sub_252D89B88()
{
  type metadata accessor for DiscoverHomeFlow();

  return sub_252E33644();
}

unint64_t sub_252D89BD8()
{
  result = qword_27F545BF8;
  if (!qword_27F545BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545BF8);
  }

  return result;
}

uint64_t sub_252D89C2C(uint64_t a1)
{
  result = sub_252D8A000(&qword_27F545C00, type metadata accessor for DiscoverHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DiscoverHomeFlow()
{
  result = qword_27F545C10;
  if (!qword_27F545C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D89CD0(uint64_t a1)
{
  result = sub_252D8A000(&qword_27F545C08, type metadata accessor for DiscoverHomeFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252D89DC0()
{
  sub_252B7D9D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DiscoverHomeFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252D8A000(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_252D8A048(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v26 = v7;
  v27 = v5;
  sub_252E36A84();
  if (v6 != 9)
  {
    v9 = 0;
    while (1)
    {
      v8 = v9 != 4;
      if (v9 == 4)
      {
        goto LABEL_71;
      }

      v11 = byte_2864A3420[v9 + 32];
      if (v11 <= 3)
      {
        v14 = 7628147;
        v15 = 0x656C67676F74;
        if (v11 != 2)
        {
          v15 = 2003789939;
        }

        v16 = 0xE600000000000000;
        if (v11 != 2)
        {
          v16 = 0xE400000000000000;
        }

        if (byte_2864A3420[v9 + 32])
        {
          v14 = 7628135;
        }

        if (byte_2864A3420[v9 + 32] <= 1u)
        {
          v12 = v14;
        }

        else
        {
          v12 = v15;
        }

        if (byte_2864A3420[v9 + 32] <= 1u)
        {
          v13 = 0xE300000000000000;
        }

        else
        {
          v13 = v16;
        }

        if (v6 > 3)
        {
LABEL_37:
          v17 = 0xD000000000000012;
          if (v6 != 7)
          {
            v17 = 0x656E4F6863696877;
          }

          v18 = 0xEF64656C69614673;
          if (v6 == 7)
          {
            v18 = 0x8000000252E678E0;
          }

          if (v6 == 6)
          {
            v17 = 0xD000000000000010;
            v18 = 0x8000000252E678C0;
          }

          v19 = 0x746E756F63;
          if (v6 != 4)
          {
            v19 = 0xD000000000000011;
          }

          v20 = 0xE500000000000000;
          if (v6 != 4)
          {
            v20 = 0x8000000252E678A0;
          }

          if (v6 <= 5)
          {
            v21 = v19;
          }

          else
          {
            v21 = v17;
          }

          if (v6 <= 5)
          {
            v22 = v20;
          }

          else
          {
            v22 = v18;
          }

          if (v12 != v21)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }
      }

      else if (byte_2864A3420[v9 + 32] <= 5u)
      {
        if (v11 == 4)
        {
          v12 = 0x746E756F63;
        }

        else
        {
          v12 = 0xD000000000000011;
        }

        if (v11 == 4)
        {
          v13 = 0xE500000000000000;
        }

        else
        {
          v13 = 0x8000000252E678A0;
        }

        if (v6 > 3)
        {
          goto LABEL_37;
        }
      }

      else if (v11 == 6)
      {
        v12 = 0xD000000000000010;
        v13 = 0x8000000252E678C0;
        if (v6 > 3)
        {
          goto LABEL_37;
        }
      }

      else if (v11 == 7)
      {
        v12 = 0xD000000000000012;
        v13 = 0x8000000252E678E0;
        if (v6 > 3)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v12 = 0x656E4F6863696877;
        v13 = 0xEF64656C69614673;
        if (v6 > 3)
        {
          goto LABEL_37;
        }
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v23 = 0x656C67676F74;
        }

        else
        {
          v23 = 2003789939;
        }

        if (v6 == 2)
        {
          v22 = 0xE600000000000000;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        if (v12 != v23)
        {
          goto LABEL_6;
        }
      }

      else if (v6)
      {
        v22 = 0xE300000000000000;
        if (v12 != 7628135)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v22 = 0xE300000000000000;
        if (v12 != 7628147)
        {
          goto LABEL_6;
        }
      }

LABEL_69:
      if (v13 == v22)
      {

        v8 = 1;
        goto LABEL_71;
      }

LABEL_6:
      v10 = sub_252E37DB4();

      ++v9;
      if (v10)
      {
        goto LABEL_71;
      }
    }
  }

  v8 = 0;
LABEL_71:
  sub_252E375C4();
  v24 = v27;
  sub_252E36A74();
  (*(v28 + 8))(v24, v29);
  return v8;
}

uint64_t sub_252D8A474()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-1] - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-1] - v9;
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v11 + 288), v23);

  v12 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v14 = (*(v13 + 176))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v14)
  {
    sub_252E33464();
    (*(v1 + 16))(v8, v10, v0);
    v15 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2529F90D4(v16 > 1, v17 + 1, 1, v15);
    }

    (*(v1 + 8))(v10, v0);
    v15[2] = v17 + 1;
    (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v8, v0);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2529F90D4(0, v15[2] + 1, 1, v15);
  }

  v19 = v15[2];
  v18 = v15[3];
  if (v19 >= v18 >> 1)
  {
    v15 = sub_2529F90D4(v18 > 1, v19 + 1, 1, v15);
  }

  v15[2] = v19 + 1;
  (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v5, v0);
  v20 = sub_252E33144();

  return v20;
}

uint64_t sub_252D8A77C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  while (v2 != ++v4)
  {
    if (!*(*(v3 - 10) + 16) && !*(*(v3 - 9) + 16) && !*(*(v3 - 8) + 16) && !*(*(v3 - 7) + 16) && !*(*(v3 - 6) + 16) && !*(*(v3 - 5) + 16) && !*(*(v3 - 4) + 16) && !*(*(v3 - 3) + 16) && !*(*(v3 - 2) + 16) && !*(*(v3 - 1) + 16))
    {
      v5 = *v3;
      v3 += 63;
      if (!*(v5 + 16))
      {
        continue;
      }
    }

    v6 = 32;
    v7 = v2;
    while (1)
    {
      memcpy(__dst, &v1[v6], sizeof(__dst));
      if (*(__dst[17] + 16) || *(__dst[18] + 16))
      {
        memcpy(__src, &v1[v6], sizeof(__src));
        sub_2529353AC(__dst, v29);
        sub_252A13A70();
        if ((v8 & 1) == 0 || LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) == 0 || *(__dst[50] + 16) || *(__dst[51] + 16) || *(__dst[52] + 16) || *(__dst[53] + 16) || *(__dst[54] + 16) || *(__dst[55] + 16) || *(__dst[56] + 16) || *(__dst[57] + 16) || *(__dst[58] + 16) || *(__dst[59] + 16))
        {
          sub_252935408(__dst);
        }

        else
        {
          v9 = *(__dst[60] + 16);
          sub_252935408(__dst);
          if (!v9)
          {
            v10 = (v1 + 448);
            v26 = v2;
            v11 = v2 + 1;
            do
            {
              if (!--v11)
              {
                return v1;
              }

              if (*(*(v10 - 1) + 16))
              {
                break;
              }

              if (*(*(v10 - 2) + 16))
              {
                break;
              }

              v12 = *v10;
              v10 += 63;
            }

            while (!*(v12 + 16));
            if (qword_27F53F520 != -1)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v13 = sub_252E36AD4();
              __swift_project_value_buffer(v13, qword_27F544E08);
              __src[0] = 0;
              __src[1] = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E9A4B0);
              v14 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
              MEMORY[0x2530AD570](v14);

              sub_252CC3D90(__src[0], __src[1], 0xD00000000000009ALL, 0x8000000252E9A4F0);

              if (!v26)
              {
                break;
              }

              v16 = 0;
              v17 = 536;
              while (1)
              {
                v18 = &v1[v17];
                if (*(*&v1[v17 - 96] + 16) || *(*(v18 - 13) + 16) || *(*(v18 - 11) + 16))
                {
                  break;
                }

                ++v16;
                v17 += 504;
                if (v26 == v16)
                {
                  goto LABEL_45;
                }
              }

              v19 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_78;
              }

              if (v19 == v26)
              {
                goto LABEL_50;
              }

              while (1)
              {
                v23 = *(v1 + 2);
                if (v19 >= v23)
                {
                  break;
                }

                v24 = &v1[v17];
                if (!*(*&v1[v17 + 408] + 16) && !*(*(v24 + 50) + 16) && !*(*(v24 + 52) + 16))
                {
                  if (v19 != v16)
                  {
                    if (v16 >= v23)
                    {
                      goto LABEL_79;
                    }

                    memcpy(v29, &v1[504 * v16 + 32], sizeof(v29));
                    memcpy(__src, &v1[v17], sizeof(__src));
                    sub_2529353AC(v29, v28);
                    sub_2529353AC(__src, v28);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v1 = sub_252D57AC0(v1);
                    }

                    v25 = &v1[504 * v16];
                    memcpy(v27, v25 + 32, sizeof(v27));
                    memcpy(v25 + 32, __src, 0x1F8uLL);
                    result = sub_252935408(v27);
                    if (v19 >= *(v1 + 2))
                    {
                      goto LABEL_80;
                    }

                    memcpy(v28, &v1[v17], sizeof(v28));
                    memcpy(&v1[v17], v29, 0x1F8uLL);
                    result = sub_252935408(v28);
                    v23 = *(v1 + 2);
                  }

                  ++v16;
                }

                ++v19;
                v17 += 504;
                if (v19 == v23)
                {
                  goto LABEL_50;
                }
              }

              __break(1u);
LABEL_74:
              swift_once();
            }

LABEL_45:
            v16 = v26;
LABEL_50:
            v20 = *(v1 + 2);
            if (v16 > v20)
            {
              __break(1u);
            }

            else if ((v16 & 0x8000000000000000) == 0)
            {
              if (!__OFADD__(v20, v16 - v20))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                __src[0] = v1;
                if (!isUniquelyReferenced_nonNull_native || v16 > *(v1 + 3) >> 1)
                {
                  if (v20 <= v16)
                  {
                    v22 = v16;
                  }

                  else
                  {
                    v22 = v20;
                  }

                  v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v22, 1, v1);
                  __src[0] = v1;
                }

                sub_252B7B280(v16, v20, 0);
                return v1;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
              return result;
            }

            __break(1u);
            goto LABEL_77;
          }
        }
      }

      v6 += 504;
      if (!--v7)
      {
        return v1;
      }
    }
  }

  return v1;
}