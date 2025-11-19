uint64_t sub_24F1AE994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1AE9DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_24F9220D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F1AEB68()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1AEBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1AEC94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  if (*(v1 + 16))
  {
    v3 = sub_24F92CE08();
    v4 = v2;

    if ((v3 & 1) == 0)
    {
      return sub_24F926BF8();
    }
  }

  else
  {
    v5 = v2;
  }

  sub_24E77ACC8();
  if (qword_27F210458 != -1)
  {
    swift_once();
  }

  v6 = qword_27F22BED8;
  v7 = sub_24F92C408();

  if (v7)
  {

    return 0;
  }

  return sub_24F926BF8();
}

uint64_t type metadata accessor for ArticleHorizontalRuleViewModel()
{
  result = qword_27F23B840;
  if (!qword_27F23B840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t makeNetworkInquiry()@<X0>(void *a1@<X8>)
{
  v2 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  result = type metadata accessor for NWPathNetworkInquiry();
  a1[3] = result;
  a1[4] = &protocol witness table for NWPathNetworkInquiry;
  *a1 = v2;
  return result;
}

uint64_t sub_24F1AEE40(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24F1AFEF0(v6);
  return sub_24F92C958();
}

void sub_24F1AEEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameStatServicePrivate];

  v12 = sub_24F92B098();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_24F1B1FFC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA60B8;
  aBlock[3] = &block_descriptor_125;
  v15 = _Block_copy(aBlock);

  [v11 getGamesFriendsPlayed:a2 type:v12 withinSecs:a3 matchingBundleIDs:0 handler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

uint64_t sub_24F1AF0E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for GameSuggestion();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v83 - v13;
  v15 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B860);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v83 - v19;
  v21 = type metadata accessor for Player(0) - 8;
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  if (a2)
  {
    v100[0] = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858);
    return sub_24F92B788();
  }

  v98 = (v83 - v23);
  v85 = v25;
  v94 = v24;
  v87 = v6;

  v100[0] = sub_24EC4E0E0(v28);
  sub_24F1AEE40(v100);
  v29 = v100[0];
  v30 = sub_24E610D34(MEMORY[0x277D84F90]);
  v101 = v30;
  if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
  {
    v31 = sub_24F92C738();
    v32 = v87;
    if (v31)
    {
      goto LABEL_6;
    }

LABEL_28:

LABEL_29:
    v100[0] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858);
    sub_24F92B798();
  }

  v31 = *(v29 + 16);
  v32 = v87;
  if (!v31)
  {
    goto LABEL_28;
  }

LABEL_6:
  v89 = v17;
  v90 = v14;
  v91 = v11;
  v92 = v8;
  v83[1] = a3;
  if (v31 >= 1)
  {
    v33 = v31;
    v34 = 0;
    v99 = v29 & 0xC000000000000001;
    v95 = (v32 + 56);
    v86 = v32 + 48;
    v88 = xmmword_24F93DE60;
    v84 = v5;
    v93 = v20;
    v35 = v98;
    v96 = v31;
    v97 = v29;
    while (1)
    {
      v36 = v99 ? MEMORY[0x253052270](v34, v29) : *(v29 + 8 * v34 + 32);
      v37 = v36;
      v38 = [v37 lastPlayedGame];
      if (v38)
      {
        break;
      }

LABEL_9:
      if (v33 == ++v34)
      {

        v30 = v101;
        goto LABEL_29;
      }
    }

    v39 = v38;
    sub_24F3FAC70(v37, 0, 0, v35);
    v40 = v39;
    v41 = [v40 adamID];
    v42 = [v41 stringValue];

    v43 = sub_24F92B0D8();
    v45 = v44;

    v46 = v101;
    if (v101[2])
    {
      v47 = sub_24E76D644(v43, v45);
      v49 = v48;

      if (v49)
      {
        v50 = v87;
        sub_24F1B2100(v46[7] + *(v87 + 72) * v47, v20, type metadata accessor for GameSuggestion);
        (*(v50 + 56))(v20, 0, 1, v5);
        sub_24E601704(v20, &qword_27F23B860);
        v51 = [v40 adamID];

        v52 = [v51 stringValue];
        v53 = sub_24F92B0D8();
        v55 = v54;

        v56 = sub_24F4D65F8(v100, v53, v55);
        v58 = v57;
        if (!(*(v50 + 48))(v57, 1, v5))
        {
          sub_24F1B2100(v98, v85, type metadata accessor for Player);
          v76 = *(v5 + 20);
          v77 = *(v58 + v76);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v58 + v76) = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = sub_24E618138(0, v77[2] + 1, 1, v77);
            *(v58 + v76) = v77;
          }

          v80 = v77[2];
          v79 = v77[3];
          v81 = v94;
          if (v80 >= v79 >> 1)
          {
            v82 = sub_24E618138(v79 > 1, v80 + 1, 1, v77);
            v81 = v94;
            v77 = v82;
            *(v58 + v76) = v82;
          }

          v20 = v93;
          v33 = v96;
          v77[2] = v80 + 1;
          sub_24F1B2168(v85, v77 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, type metadata accessor for Player);
          (v56)(v100, 0);

          v35 = v98;
          sub_24F1B20A0(v98, type metadata accessor for Player);
          v5 = v84;
          v29 = v97;
          goto LABEL_9;
        }

        (v56)(v100, 0);

        v35 = v98;
        sub_24F1B20A0(v98, type metadata accessor for Player);
        goto LABEL_20;
      }
    }

    else
    {
    }

    (*v95)(v20, 1, 1, v5);
    sub_24E601704(v20, &qword_27F23B860);
    v59 = sub_24F91F648();
    v60 = v90;
    (*(*(v59 - 8) + 56))(v90, 1, 1, v59);
    v61 = v40;
    v62 = v89;
    sub_24E7EDF8C(v61, v60, v89);
    v63 = [v61 adamID];

    v64 = [v63 stringValue];
    v65 = sub_24F92B0D8();
    v67 = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213870);
    v68 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v88;
    v35 = v98;
    sub_24F1B2100(v98, v69 + v68, type metadata accessor for Player);
    v70 = v91;
    sub_24F1B2100(v62, v91, type metadata accessor for Game);
    *(v70 + *(v5 + 20)) = v69;
    v71 = v70;
    v72 = v92;
    sub_24F1B2168(v71, v92, type metadata accessor for GameSuggestion);
    v73 = v101;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v73;
    v101 = 0x8000000000000000;
    sub_24E8224D4(v72, v65, v67, v74);

    v75 = v62;
    v20 = v93;
    sub_24F1B20A0(v75, type metadata accessor for Game);
    sub_24F1B20A0(v35, type metadata accessor for Player);
    v101 = v100[0];

LABEL_20:
    v33 = v96;
    v29 = v97;
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24F1AFA58(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &selRef_systemBackgroundColor;
  v22 = [*a1 lastPlayedDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    sub_24F91F608();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &selRef_systemBackgroundColor;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    sub_24F91F618();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &unk_27F22EC30);
    }
  }

  v25 = [v20 v21[76]];
  if (v25)
  {
    v26 = v25;
    sub_24F91F608();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    sub_24F91F618();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_24E601704(v30, &unk_27F22EC30);
    }
  }

  v32 = sub_24F91F588();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_24F1AFE38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24F1B1B84)(v5, a3);
}

void sub_24F1AFEF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E960F78();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24F1B048C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24F1AFFF4(0, v2, 1, a1);
  }
}

void sub_24F1AFFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_24F91F648();
  MEMORY[0x28223BE20](v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 lastPlayedDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        sub_24F91F608();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_24E601704(v12, &unk_27F22EC30);
        }
      }

      v32 = [v61 lastPlayedDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        sub_24F91F608();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_24E601704(v55, &unk_27F22EC30);
        }
      }

      v41 = v60;
      v42 = sub_24F91F588();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F1B048C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v140 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v165 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  MEMORY[0x28223BE20](v21);
  v163 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_24F1B1210((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_24E86164C(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_24E8615C0(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v29 = MEMORY[0x277D84F90];
  v160 = (v24 + 8);
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_24F1AFA58(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 lastPlayedDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          sub_24F91F608();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          sub_24F91F618();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_24E601704(v53, &unk_27F22EC30);
          }
        }

        v54 = [v46 lastPlayedDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          sub_24F91F608();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          sub_24F91F618();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_24E601704(v151, &unk_27F22EC30);
          }
        }

        v41 = v153;
        a4 = sub_24F91F588();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_24E86164C(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_24E615ED8(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_24E615ED8((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_24F1B1210((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_24E86164C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_24E8615C0(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 lastPlayedDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      sub_24F91F608();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      sub_24F91F618();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_24E601704(v121, &unk_27F22EC30);
      }
    }

    v122 = [v114 lastPlayedDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      sub_24F91F608();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      sub_24F91F618();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_24E601704(v161, &unk_27F22EC30);
      }
    }

    v131 = v165;
    a4 = sub_24F91F588();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_24F1B1210(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v95 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v98 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v89 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  v94 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v102 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = (&v89 - v21);
  MEMORY[0x28223BE20](v22);
  v103 = &v89 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 lastPlayedDate];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            sub_24F91F608();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            sub_24F91F618();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_24E601704(v44, &unk_27F22EC30);
            }
          }

          v45 = [v37 lastPlayedDate];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            sub_24F91F608();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            sub_24F91F618();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_24E601704(v98, &unk_27F22EC30);
            }
          }

          v54 = v101;
          v55 = sub_24F91F588();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      a3 -= 8;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 lastPlayedDate];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          sub_24F91F608();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          sub_24F91F618();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_24E601704(v72, &unk_27F22EC30);
          }
        }

        v98 = v65;
        v73 = [v65 lastPlayedDate];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          sub_24F91F608();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          sub_24F91F618();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_24E601704(v97, &unk_27F22EC30);
          }
        }

        v83 = v102;
        v84 = sub_24F91F588();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 8);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        a3 -= 8;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_24F1B1B84(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for ASKBagContract();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_24F1B1CA0;

  return MEMORY[0x28217F228](v1 + 2, v3, v3);
}

uint64_t sub_24F1B1CA0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EB1B50C;
  }

  else
  {
    v2 = sub_24F1B1DB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1B1DB4()
{
  v0[11] = v0[2];
  if (qword_27F210A20 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_24F92A398();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v5 = v0[3];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B850);
  *v7 = v0;
  v7[1] = sub_24EB1B304;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD00000000000002ELL, 0x800000024FA6E8B0, sub_24F1B1F60, v6, v8);
}

uint64_t sub_24F1B1F68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F1B1FFC(uint64_t a1, uint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F1AF0E8(a1, a2, v6);
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1B20A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1B2100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1B2168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1B21D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20JSResilientDeepLinks_bag);

  result = ASKBagContract.resilientDeepLinkPatterns.getter();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v19[1] = v8;
    v12 = 0;
    v13 = (result + 40);
    while (v12 < *(v10 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v19[4] = a1;
      v19[5] = a2;
      v19[2] = v14;
      v19[3] = v15;
      v16 = sub_24F91F7C8();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_24E600AEC();

      sub_24F92C5B8();
      v18 = v17;
      sub_24ECB88E4(v7);

      if ((v18 & 1) == 0)
      {

        return 1;
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_24F1B25B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1B2670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent()
{
  result = qword_27F23B870;
  if (!qword_27F23B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1B2760@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  started = type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent();
  v8 = *(started + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B641C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E70D960(v1 + v8, boxed_opaque_existential_1);
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA6E9A0;
  v10 = (v1 + *(started + 24));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  *(inited + 184) = &type metadata for ChallengesHubData;
  *(inited + 192) = sub_24EE56F34();
  v16 = swift_allocObject();
  *(inited + 160) = v16;
  v16[2] = v12;
  v16[3] = v11;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v15;

  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F1B298C()
{

  return swift_deallocObject();
}

uint64_t RateAction.Parameter.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x676E69746172;
  }
}

GameStoreKit::RateAction::Parameter_optional __swiftcall RateAction.Parameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F1B2AC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x676E69746172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x800000024FA3FAB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x676E69746172;
  }

  if (*a2)
  {
    v6 = 0x800000024FA3FAB0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F1B2B70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1B2BF4()
{
  sub_24F92B218();
}

uint64_t sub_24F1B2C64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1B2CE4@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F1B2D44(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA3FAB0;
  v3 = 0x676E69746172;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t RateAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId);
  a1[1] = v2;
}

uint64_t sub_24F1B2D9C()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24F1B2DE8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t *RateAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v30 = *v3;
  v33 = sub_24F9285B8();
  v37 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = v3 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  *v13 = 0;
  v13[8] = 1;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v7 + 8);
  v36 = v6;
  v17(v12, v6);
  if (v16)
  {
    v18 = (v3 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId);
    *v18 = v14;
    v18[1] = v16;
    v19 = v35;
    (*(v7 + 16))(v9, v35, v36);
    v20 = v31;
    v22 = v33;
    v21 = v34;
    (*(v37 + 16))(v31, v34, v33);
    v23 = v32;
    v24 = HttpTemplateAction.init(deserializing:using:)(v9, v20);
    if (!v23)
    {
      v3 = v24;
    }

    (*(v37 + 8))(v21, v22);
    v17(v19, v36);
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v26 = 0x64496D616461;
    v27 = v30;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v37 + 8))(v34, v33);
    v17(v35, v36);
    type metadata accessor for RateAction();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for RateAction()
{
  result = qword_27F23B888;
  if (!qword_27F23B888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RateAction.deinit()
{
  v0 = HttpTemplateAction.deinit();

  return v0;
}

uint64_t RateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24F1B3390()
{
  result = qword_27F23B880;
  if (!qword_27F23B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B880);
  }

  return result;
}

uint64_t sub_24F1B33E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24F1B3440(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t View.limitDynamicTypeSizeForSeedBuild()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v38 = sub_24F923E98();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v48 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - v10;
  v11 = *(a1 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_24F924E38();
  v42 = *(v18 - 8);
  v43 = v18;
  MEMORY[0x28223BE20](v18);
  v41 = &v35 - v19;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_24F92B098();
  v22 = [v20 BOOLForKey_];

  if (v22)
  {
    sub_24E7896B8(v40, a1, a2);
    sub_24E7896B8(v17, a1, a2);
    v47 = a1;
    v48 = a2;
    swift_getOpaqueTypeConformance2();
    v23 = v41;
    sub_24ECCCBA0(v14, a1);
    v24 = *(v11 + 8);
    v24(v14, a1);
    v24(v17, a1);
  }

  else
  {
    v26 = v35;
    v25 = v36;
    v27 = v38;
    (*(v36 + 104))(v35, *MEMORY[0x277CDF9D8], v38);
    sub_24F9263E8();
    (*(v25 + 8))(v26, v27);
    v47 = a1;
    v48 = a2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v37;
    sub_24E7896B8(v8, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v30 = *(v39 + 8);
    v30(v8, OpaqueTypeMetadata2);
    sub_24E7896B8(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v23 = v41;
    sub_24ECCCC98(v8, a1, OpaqueTypeMetadata2);
    v30(v8, OpaqueTypeMetadata2);
    v30(v29, OpaqueTypeMetadata2);
  }

  v47 = a1;
  v48 = a2;
  v31 = swift_getOpaqueTypeConformance2();
  v45 = a2;
  v46 = v31;
  v32 = v43;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v23, v32, WitnessTable);
  return (*(v42 + 8))(v23, v32);
}

uint64_t sub_24F1B3AF0()
{
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24F1B3B98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  v3 = sub_24F1B411C(a1);
  sub_24F1B3D18(1, a1, &v19);
  v4 = v20;
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  if (v20 == 1)
  {
    v4 = 0;
  }

  *(v2 + 32) = xmmword_24F9D1D40;
  *(v2 + 48) = v3;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  v9 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 72) = v9;
  __asm { FMOV            V5.2D, #1.0 }

  *(v2 + 88) = _Q5;
  *(v2 + 104) = vdupq_n_s64(0x404E000000000000uLL);
  __asm { FMOV            V5.2D, #24.0 }

  *(v2 + 120) = _Q5;
  *(v2 + 136) = v19;
  *(v2 + 152) = v4;
  *(v2 + 160) = v5;
  *(v2 + 168) = v6;
  *(v2 + 176) = v7;
  *(v2 + 184) = v8;
  v16 = *(a1 + 16);
  *(v2 + 192) = xmmword_24F9D1D50;
  *(v2 + 208) = v9;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  __asm { FMOV            V5.2D, #2.0 }

  *(v2 + 248) = _Q5;
  *(v2 + 264) = 0x404E000000000000;
  *(v2 + 272) = xmmword_24F9D1D60;
  *(v2 + 288) = 0x4038000000000000;
  *(v2 + 296) = v16;
  *(v2 + 304) = v16;
  *(v2 + 312) = 1;
  *(v2 + 320) = v5;
  *(v2 + 328) = v6;
  *(v2 + 336) = v7;
  *(v2 + 344) = v8;
  *(v2 + 352) = xmmword_24F9D1D70;
  *(v2 + 368) = v9;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x4008000000000000;
  *(v2 + 416) = xmmword_24F9D1D80;
  *(v2 + 432) = xmmword_24F9D1D60;
  *(v2 + 448) = 0x4038000000000000;
  *(v2 + 456) = v16;
  *(v2 + 464) = v16;
  *(v2 + 472) = 1;
  *(v2 + 480) = v5;
  *(v2 + 488) = v6;
  *(v2 + 496) = v7;
  *(v2 + 504) = v8;
  return v2;
}

void sub_24F1B3D18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F925218();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  if (a1 != 1)
  {
    v24 = *(a2 + 16);
    goto LABEL_13;
  }

  v19 = *a2;
  v28 = type metadata accessor for ShelfLayoutEnvironment();
  v20 = *(v28 + 36);
  (*(v7 + 104))(v18, *MEMORY[0x277CE0558], v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v21 = *(v10 + 48);
  v29 = a2;
  sub_24EDEBCCC(a2 + v20, v12);
  sub_24EDEBCCC(v18, &v12[v21]);
  v22 = *(v7 + 48);
  if (v22(v12, 1, v6) != 1)
  {
    sub_24EDEBCCC(v12, v15);
    if (v22(&v12[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v12[v21], v6);
      sub_24EDEBD3C();
      v23 = sub_24F92AFF8();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_24E601704(v18, &qword_27F215598);
      v25(v15, v6);
      sub_24E601704(v12, &qword_27F215598);
      goto LABEL_10;
    }

    sub_24E601704(v18, &qword_27F215598);
    (*(v7 + 8))(v15, v6);
    goto LABEL_8;
  }

  sub_24E601704(v18, &qword_27F215598);
  if (v22(&v12[v21], 1, v6) != 1)
  {
LABEL_8:
    sub_24E601704(v12, &unk_27F254F20);
    v23 = 0;
    goto LABEL_10;
  }

  sub_24E601704(v12, &qword_27F215598);
  v23 = 1;
LABEL_10:
  v26 = 1580.0;
  if (v19 <= 1580.0)
  {
    v26 = v19;
  }

  v30 = 2;
  sub_24F422FFC(v23 & 1, v26);
LABEL_13:
  *a3 = v24;
  *(a3 + 8) = v24;
  *(a3 + 16) = 1;
}

double sub_24F1B411C(double *a1)
{
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = *(type metadata accessor for ShelfLayoutEnvironment() + 36);
  (*(v3 + 104))(v15, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v18 = *(v7 + 56);
  v24 = a1;
  sub_24EDEBCCC(a1 + v17, v9);
  sub_24EDEBCCC(v15, &v9[v18]);
  v19 = *(v3 + 48);
  if (v19(v9, 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    if (v19(&v9[v18], 1, v2) == 1)
    {
      sub_24E601704(v9, &qword_27F215598);
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24EDEBCCC(v9, v12);
  if (v19(&v9[v18], 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_24E601704(v9, &unk_27F254F20);
    v20 = 0;
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v9[v18], v2);
  sub_24EDEBD3C();
  v20 = sub_24F92AFF8();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_24E601704(v15, &qword_27F215598);
  v21(v12, v2);
  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  if (v16 > 1580.0)
  {
    v16 = 1580.0;
  }

  v25 = 2;
  sub_24F422FFC(v20 & 1, v16);
  return v16 - (v22 + v22);
}

uint64_t sub_24F1B456C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_24F4E9E44(a3, v10);
LABEL_21:
        sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
        *(a4 + v8[30]) = 0x403A000000000000;
        goto LABEL_22;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v12 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v12 = qword_27F39E640;
    }

LABEL_20:
    v13 = __swift_project_value_buffer(v8, v12);
    sub_24F1BBD78(v13, v10, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    sub_24F4E9558(a3, v10);
    sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
    *(a4 + v8[30]) = 0x403A000000000000;
    *(a4 + v8[17]) = 0;
    goto LABEL_22;
  }

  if (a2 != 4)
  {
    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v12 = qword_27F39E658;
    goto LABEL_20;
  }

  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v8, qword_27F39E610);
  sub_24F1BBD78(v11, v10, type metadata accessor for CardLayoutMetrics);
  sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
LABEL_22:
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v20 = xmmword_27F254460;
  v14 = qword_27F254470;
  v15 = qword_27F254478;
  v16 = a4 + v8[32];

  *v16 = v20;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = type metadata accessor for ActivityCard();
  if (*(a1 + *(result + 48)) == 1)
  {
    if (a2 == 3)
    {

      *(a4 + v8[13]) = 1;
      v18 = 10.0;
      goto LABEL_31;
    }

    v19 = sub_24F92CE08();
  }

  else
  {
    v19 = 0;
  }

  *(a4 + v8[13]) = v19 & 1;
  v18 = 10.0;
  if (a2 != 3)
  {
    v18 = *(a4 + v8[16]);
  }

LABEL_31:
  *(a4 + v8[16]) = v18;
  return result;
}

uint64_t sub_24F1B49A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v414 = a5;
  v408 = a4;
  v415 = a2;
  LODWORD(v416) = a1;
  v412 = a6;
  v355 = type metadata accessor for TitleView();
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v342 = &v297 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8A0);
  MEMORY[0x28223BE20](v383);
  v357 = &v297 - v8;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8A8);
  MEMORY[0x28223BE20](v381);
  v382 = &v297 - v9;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8B0);
  MEMORY[0x28223BE20](v397);
  v384 = &v297 - v10;
  v347 = type metadata accessor for CardSmallGameIcon();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v327 = &v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8B8);
  MEMORY[0x28223BE20](v362);
  v348 = &v297 - v12;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8C0);
  MEMORY[0x28223BE20](v360);
  v361 = &v297 - v13;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8C8);
  MEMORY[0x28223BE20](v380);
  v363 = &v297 - v14;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A0);
  MEMORY[0x28223BE20](v373);
  v351 = (&v297 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8D0);
  MEMORY[0x28223BE20](v16);
  v395 = &v297 - v17;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8D8);
  MEMORY[0x28223BE20](v371);
  v372 = &v297 - v18;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8E0);
  MEMORY[0x28223BE20](v394);
  v374 = &v297 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8E8);
  MEMORY[0x28223BE20](v20);
  v396 = &v297 - v21;
  v341 = sub_24F91F7C8();
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v337 = &v297 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_24F91F7A8();
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v335 = &v297 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F924A78();
  MEMORY[0x28223BE20](v24 - 8);
  v334 = &v297 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8F0);
  MEMORY[0x28223BE20](v370);
  v364 = &v297 - v26;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v322);
  v323 = &v297 - v27;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0);
  MEMORY[0x28223BE20](v320);
  v321 = &v297 - v28;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8);
  MEMORY[0x28223BE20](v314);
  v317 = &v297 - v29;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98);
  MEMORY[0x28223BE20](v308);
  v309 = &v297 - v30;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8);
  MEMORY[0x28223BE20](v313);
  v310 = &v297 - v31;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20);
  MEMORY[0x28223BE20](v316);
  v312 = &v297 - v32;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  MEMORY[0x28223BE20](v319);
  v315 = &v297 - v33;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v306 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v336 = &v297 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v301 = &v297 - v36;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  MEMORY[0x28223BE20](v307);
  v329 = &v297 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v38);
  v386 = &v297 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v311 = &v297 - v41;
  MEMORY[0x28223BE20](v42);
  v318 = &v297 - v43;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8F8);
  MEMORY[0x28223BE20](v353);
  v356 = &v297 - v44;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E40);
  MEMORY[0x28223BE20](v333);
  v331 = &v297 - v45;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E48);
  MEMORY[0x28223BE20](v352);
  v332 = &v297 - v46;
  v325 = type metadata accessor for HeroCardGameHeadingView();
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v300 = &v297 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = sub_24F9289E8();
  v399 = *(v398 - 8);
  MEMORY[0x28223BE20](v398);
  v326 = &v297 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v302 = &v297 - v50;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v330);
  v305 = &v297 - v51;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B900);
  MEMORY[0x28223BE20](v375);
  v385 = &v297 - v52;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B908);
  MEMORY[0x28223BE20](v377);
  v376 = &v297 - v53;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B910);
  MEMORY[0x28223BE20](v391);
  v379 = &v297 - v54;
  v378 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v378);
  v358 = &v297 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for ActivityCardVisualView();
  MEMORY[0x28223BE20](v369);
  v359 = (&v297 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B918);
  MEMORY[0x28223BE20](v405);
  v407 = &v297 - v57;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B920);
  MEMORY[0x28223BE20](v400);
  v402 = &v297 - v58;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B928);
  MEMORY[0x28223BE20](v388);
  v390 = &v297 - v59;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B930);
  MEMORY[0x28223BE20](v366);
  v367 = &v297 - v60;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B938);
  MEMORY[0x28223BE20](v389);
  v368 = &v297 - v61;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B940);
  MEMORY[0x28223BE20](v401);
  v392 = &v297 - v62;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B948);
  MEMORY[0x28223BE20](v406);
  v403 = &v297 - v63;
  v344 = type metadata accessor for CardElementView.Category(0);
  v343 = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v328 = &v297 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8);
  MEMORY[0x28223BE20](v365);
  v345 = &v297 - v65;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B950);
  v66 = *(v410 - 8);
  MEMORY[0x28223BE20](v410);
  v68 = &v297 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v69 - 8);
  v349 = &v297 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v303 = &v297 - v72;
  MEMORY[0x28223BE20](v73);
  v387 = &v297 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B958);
  MEMORY[0x28223BE20](v75 - 8);
  v411 = &v297 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v297 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v80 - 8);
  v418 = &v297 - v81;
  v82 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v82);
  v304 = &v297 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v86 = (&v297 - v85);
  MEMORY[0x28223BE20](v87);
  v89 = &v297 - v88;
  MEMORY[0x28223BE20](v90);
  v419 = &v297 - v92;
  LODWORD(v417) = a3;
  v93 = v91;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v94 = v91;
        sub_24F4E9E44(v408, v86);
        sub_24F1BBDE0(v86, v89, type metadata accessor for CardLayoutMetrics);
LABEL_21:
        *&v89[*(v94 + 120)] = 0x403A000000000000;
        goto LABEL_22;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
        v91 = v93;
      }

      v96 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
        v91 = v93;
      }

      v96 = qword_27F39E640;
    }

LABEL_20:
    v94 = v91;
    v97 = __swift_project_value_buffer(v91, v96);
    sub_24F1BBD78(v97, v89, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    sub_24F4E9558(v408, v86);
    sub_24F1BBDE0(v86, v89, type metadata accessor for CardLayoutMetrics);
    v94 = v93;
    *&v89[v93[30]] = 0x403A000000000000;
    v89[v93[17]] = 0;
    goto LABEL_22;
  }

  if (a3 != 4)
  {
    if (qword_27F211308 != -1)
    {
      swift_once();
      v91 = v93;
    }

    v96 = qword_27F39E658;
    goto LABEL_20;
  }

  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v95 = __swift_project_value_buffer(v93, qword_27F39E610);
  sub_24F1BBD78(v95, v89, type metadata accessor for CardLayoutMetrics);
  v94 = v93;
LABEL_22:
  v393 = v16;
  v404 = v68;
  v413 = v66;
  if (qword_27F211968 != -1)
  {
    swift_once();
    v94 = v93;
  }

  v409 = xmmword_27F254460;
  v98 = qword_27F254470;
  v99 = qword_27F254478;
  v100 = &v89[*(v94 + 128)];

  *v100 = v409;
  *(v100 + 2) = v98;
  *(v100 + 3) = v99;
  v101 = type metadata accessor for ActivityCard();
  v102 = v415;
  v103 = v416;
  if (*(v415 + v101[12]) == 1)
  {
    v104 = v417;
    if (v417 == 3)
    {

      v105 = v93;
      v89[v93[13]] = 1;
      v106 = 10.0;
      goto LABEL_31;
    }

    v107 = sub_24F92CE08();
  }

  else
  {
    v107 = 0;
  }

  v104 = v417;
  v105 = v93;
  v89[v93[13]] = v107 & 1;
  v106 = 10.0;
  if (v104 != 3)
  {
    v106 = *&v89[v93[16]];
  }

LABEL_31:
  *&v89[v105[16]] = v106;
  sub_24F1BBDE0(v89, v419, type metadata accessor for CardLayoutMetrics);
  sub_24F1B931C(v102, v418);
  v108 = v102 + v101[8];
  v109 = type metadata accessor for CommonCardAttributes(0);
  v110 = v109;
  if (*(v108 + *(v109 + 36)))
  {
    v111 = 1;
  }

  else
  {
    sub_24E60169C(v108 + *(v109 + 32), v79, &qword_27F213FB8);
    v112 = type metadata accessor for GSKVideo();
    v113 = (*(*(v112 - 8) + 48))(v79, 1, v112);
    v114 = v79;
    v115 = v20;
    v116 = v113;
    v104 = v417;
    v102 = v415;
    sub_24E601704(v114, &qword_27F213FB8);
    v117 = v116 == 1;
    v20 = v115;
    v111 = 1;
    v103 = v416;
    if (v117)
    {
      v118 = v20;
      v119 = v38;
      v120 = v387;
      sub_24E60169C(v108 + v110[7], v387, &qword_27F213FB0);
      v121 = (*(v399 + 48))(v120, 1, v398) != 1;
      v122 = v120;
      v38 = v119;
      v20 = v118;
      v111 = v121;
      v102 = v415;
      v103 = v416;
      sub_24E601704(v122, &qword_27F213FB0);
    }
  }

  if (sub_24F1BB2D4(v103, v102, v104))
  {
    if (v103 > 5u)
    {
      if (v103 > 7u)
      {
        if (v103 == 8)
        {
          v148 = (v108 + v110[15]);
          v149 = v148[1];
          v299 = v20;
          if (!v149)
          {
            goto LABEL_71;
          }

          v150 = *v148;
          v151 = HIBYTE(v149) & 0xF;
          if ((v149 & 0x2000000000000000) == 0)
          {
            v151 = v150 & 0xFFFFFFFFFFFFLL;
          }

          if (v151)
          {
            v417 = v38;
            sub_24F924A68();
            sub_24F924A58();

            sub_24F926E48();
            sub_24F924A38();

            sub_24F924A58();
            v416 = v150;
            sub_24F924A48();
            sub_24F924A58();
            sub_24F924A98();
            v152 = sub_24F925DE8();
            v154 = v153;
            v156 = v155;
            v157 = v337;
            sub_24F91F778();
            sub_24F91F708();
            (*(v340 + 8))(v157, v341);
            v158 = v335;
            sub_24F91F788();
            v159 = sub_24F91F798();
            (*(v338 + 8))(v158, v339);
            if (v159 == 2)
            {
              v160 = sub_24F925C78();
              v162 = v161;
              v164 = v163;
            }

            else
            {
              sub_24E5FD138(v152, v154, v156 & 1);

              v160 = v152;
              v162 = v154;
              v164 = v156;
            }

            sub_24E600B40(v152, v154, v156 & 1);

            v298 = v93;
            v219 = v419;
            v220 = sub_24F925C98();
            v222 = v221;
            v224 = v223;
            sub_24E600B40(v160, v162, v164 & 1);

            LODWORD(v420) = sub_24F9251C8();
            v225 = sub_24F925C58();
            v227 = v226;
            v229 = v228;
            v231 = v230;
            sub_24E600B40(v220, v222, v224 & 1);

            v232 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
            v233 = *MEMORY[0x277CE13B8];
            v234 = sub_24F927748();
            v235 = v336;
            (*(*(v234 - 8) + 104))(&v336[v232], v233, v234);
            *v235 = v225;
            *(v235 + 8) = v227;
            *(v235 + 16) = v229 & 1;
            *(v235 + 24) = v231;
            v236 = *(v219 + v298[28]);
            KeyPath = swift_getKeyPath();
            v238 = v235 + *(v350 + 36);
            *v238 = KeyPath;
            *(v238 + 8) = v236;
            *(v238 + 16) = 0;
            v420 = v416;
            v421 = v149;
            sub_24E63C774();
            sub_24E600AEC();
            v166 = v364;
            sub_24F926538();
            sub_24E601704(v235, &qword_27F214B98);
            v165 = 0;
          }

          else
          {
LABEL_71:
            v165 = 1;
            v166 = v364;
          }

          v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B9A8);
          (*(*(v239 - 8) + 56))(v166, v165, 1, v239);
          sub_24E60169C(v166, v372, &qword_27F23B8F0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
          sub_24E602068(&qword_27F227348, &qword_27F2272A0);
          v240 = v374;
          sub_24F924E28();
          sub_24E60169C(v240, v395, &qword_27F23B8E0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB7E8();
          sub_24F1BBA04();
          v241 = v396;
          sub_24F924E28();
          sub_24E601704(v240, &qword_27F23B8E0);
          sub_24E60169C(v241, v402, &qword_27F23B8E8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v242 = v403;
          sub_24F924E28();
          sub_24E601704(v241, &qword_27F23B8E8);
          sub_24E60169C(v242, v407, &qword_27F23B948);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v404;
          sub_24F924E28();
          sub_24E601704(v242, &qword_27F23B948);
          v217 = v166;
          v218 = &qword_27F23B8F0;
          goto LABEL_107;
        }

        if (v103 == 11)
        {
          v142 = v358;
          sub_24F1B97E0(v104, v111, v418, v358);
          sub_24F1BBD78(v142, v376, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24F1BB6D0();
          v143 = v379;
          sub_24F924E28();
          sub_24E60169C(v143, v390, &qword_27F23B910);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &unk_24F9D1E88, sub_24F1BB6D0);
          v144 = v392;
          sub_24F924E28();
          sub_24E601704(v143, &qword_27F23B910);
          sub_24E60169C(v144, v402, &qword_27F23B940);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v145 = v403;
          sub_24F924E28();
          sub_24E601704(v144, &qword_27F23B940);
          sub_24E60169C(v145, v407, &qword_27F23B948);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v404;
          sub_24F924E28();
          sub_24E601704(v145, &qword_27F23B948);
          sub_24F1BBE48(v142, type metadata accessor for CardContentBackgroundStyle);
          goto LABEL_108;
        }

        goto LABEL_101;
      }

      if (v103 != 6)
      {
        if (v103 == 7)
        {
          v134 = (v108 + v110[14]);
          v135 = v134[1];
          v299 = v20;
          if (!v135)
          {
            goto LABEL_72;
          }

          v136 = *v134;
          v137 = HIBYTE(v135) & 0xF;
          if ((v135 & 0x2000000000000000) == 0)
          {
            v137 = v136 & 0xFFFFFFFFFFFFLL;
          }

          if (v137)
          {
            v138 = (v415 + v101[13]);
            if (v138[1])
            {
              v140 = v138[4];
              v139 = v138[5];
            }

            else
            {
              v140 = 0;
              v139 = 0;
            }

            v130 = v404;
            v270 = v342;
            v271 = v355;
            sub_24F1BBD78(v419, &v342[*(v355 + 24)], type metadata accessor for CardLayoutMetrics);
            *v270 = v136;
            v270[1] = v135;
            v270[2] = v140;
            v270[3] = v139;
            v272 = v270;
            v167 = v357;
            sub_24F1BBDE0(v272, v357, type metadata accessor for TitleView);
            (*(v354 + 56))(v167, 0, 1, v271);
          }

          else
          {
LABEL_72:
            v167 = v357;
            (*(v354 + 56))(v357, 1, 1, v355);
            v130 = v404;
          }

          sub_24E60169C(v167, v382, &qword_27F23B8A0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BBA90();
          sub_24F1BBBFC();
          v273 = v384;
          sub_24F924E28();
          sub_24E60169C(v273, v395, &qword_27F23B8B0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB7E8();
          sub_24F1BBA04();
          v274 = v396;
          sub_24F924E28();
          sub_24E601704(v273, &qword_27F23B8B0);
          sub_24E60169C(v274, v402, &qword_27F23B8E8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v275 = v403;
          sub_24F924E28();
          sub_24E601704(v274, &qword_27F23B8E8);
          sub_24E60169C(v275, v407, &qword_27F23B948);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();
          sub_24E601704(v275, &qword_27F23B948);
          v217 = v167;
          v218 = &qword_27F23B8A0;
          goto LABEL_107;
        }

        goto LABEL_101;
      }

      if (v104 > 2u && v104 == 3)
      {
      }

      else
      {
        v259 = sub_24F92CE08();

        LODWORD(v104) = v417;
        if ((v259 & 1) == 0)
        {
LABEL_101:
          v266 = v386;
          sub_24E91E364(v416, v102, v104, v408, v414, v386);
          sub_24E60169C(v266, v407, &qword_27F214A20);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v404;
          sub_24F924E28();
          v217 = v266;
          v218 = &qword_27F214A20;
          goto LABEL_107;
        }
      }

      v260 = sub_24F924C98();
      v261 = v351;
      *v351 = v260;
      *(v261 + 8) = 0x4000000000000000;
      *(v261 + 16) = 0;
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A0);
      sub_24F1B9C8C(v102, v104, v408, v261 + *(v262 + 44));
      sub_24E60169C(v261, v372, &qword_27F2272A0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
      sub_24E602068(&qword_27F227348, &qword_27F2272A0);
      v263 = v374;
      sub_24F924E28();
      sub_24E60169C(v263, v395, &qword_27F23B8E0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB7E8();
      sub_24F1BBA04();
      v264 = v396;
      sub_24F924E28();
      sub_24E601704(v263, &qword_27F23B8E0);
      sub_24E60169C(v264, v402, &qword_27F23B8E8);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v265 = v403;
      sub_24F924E28();
      sub_24E601704(v264, &qword_27F23B8E8);
      sub_24E60169C(v265, v407, &qword_27F23B948);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v130 = v404;
      sub_24F924E28();
      sub_24E601704(v265, &qword_27F23B948);
      v217 = v261;
      v218 = &qword_27F2272A0;
LABEL_107:
      sub_24E601704(v217, v218);
      goto LABEL_108;
    }

    if (v103 <= 2u)
    {
      if (v103)
      {
        if (v103 == 2)
        {
          v123 = v369;
          v124 = v359;
          sub_24F1BBD78(v108, v359 + *(v369 + 24), type metadata accessor for CommonCardAttributes);
          *v124 = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
          swift_storeEnumTagMultiPayload();
          v125 = v124 + *(v123 + 20);
          type metadata accessor for CardSafeArea(0);
          sub_24F1BBD30(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v125 = sub_24F923598();
          v125[8] = v126 & 1;
          *(v124 + *(v123 + 28)) = v104;
          sub_24F1BBD78(v124, v367, type metadata accessor for ActivityCardVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24E74524C();
          sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
          v127 = v368;
          sub_24F924E28();
          sub_24E60169C(v127, v390, &qword_27F23B938);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &unk_24F9D1E88, sub_24F1BB6D0);
          v128 = v392;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F23B938);
          sub_24E60169C(v128, v402, &qword_27F23B940);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v129 = v403;
          sub_24F924E28();
          sub_24E601704(v128, &qword_27F23B940);
          sub_24E60169C(v129, v407, &qword_27F23B948);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v404;
          sub_24F924E28();
          sub_24E601704(v129, &qword_27F23B948);
          sub_24F1BBE48(v124, type metadata accessor for ActivityCardVisualView);
LABEL_108:
          v132 = v413;
LABEL_109:
          sub_24E601704(v418, &qword_27F2190D8);
          v133 = v411;
          sub_24E6009C8(v130, v411, &qword_27F23B950);
          v131 = 0;
          goto LABEL_110;
        }
      }

      else if (v104)
      {
        v248 = sub_24F92CE08();

        v102 = v415;
        if ((v248 & 1) == 0)
        {
          v249 = *(v108 + 16);
          v299 = v20;
          if (v249)
          {
            v250 = *(v108 + 8);
            v251 = v344;
            v252 = v108 + v110[6];
            v253 = v328;
            sub_24E60169C(v252, &v328[*(v344 + 20)], &qword_27F213FB0);
            v254 = *(v419 + v93[9]);
            v255 = *(v419 + v93[8]);
            v256 = *(v419 + v93[6]);
            *v253 = v250;
            v253[1] = v249;
            *(v253 + v251[6]) = v254;
            *(v253 + v251[7]) = v111;
            *(v253 + v251[8]) = v255;
            *(v253 + v251[9]) = v256;
            v420 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v420 = 0x4008000000000000;
            sub_24F9237C8();
            v420 = 0x4018000000000000;
            sub_24F9237C8();
            v420 = 0x4010000000000000;
            sub_24F9237C8();
            v257 = v345;
            sub_24F1BBDE0(v253, v345, type metadata accessor for CardElementView.Category);
            v258 = 0;
            v132 = v413;
          }

          else
          {
            v258 = 1;
            v132 = v413;
            v257 = v345;
            v251 = v344;
          }

          (*(v343 + 56))(v257, v258, 1, v251);
          sub_24E60169C(v257, v367, &qword_27F21AFB8);
          swift_storeEnumTagMultiPayload();
          sub_24E74524C();
          sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
          v267 = v368;
          sub_24F924E28();
          sub_24E60169C(v267, v390, &qword_27F23B938);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &unk_24F9D1E88, sub_24F1BB6D0);
          v268 = v392;
          sub_24F924E28();
          sub_24E601704(v267, &qword_27F23B938);
          sub_24E60169C(v268, v402, &qword_27F23B940);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v269 = v403;
          sub_24F924E28();
          sub_24E601704(v268, &qword_27F23B940);
          sub_24E60169C(v269, v407, &qword_27F23B948);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v404;
          sub_24F924E28();
          sub_24E601704(v269, &qword_27F23B948);
          sub_24E601704(v257, &qword_27F21AFB8);
          goto LABEL_109;
        }
      }

      else
      {
      }

      goto LABEL_101;
    }

    if (v103 == 3)
    {
      v299 = v20;
      if (v104 == 4)
      {
        v146 = v386;
        sub_24E91E364(3, v102, 4, v408, v414, v386);
        sub_24E60169C(v146, v361, &qword_27F214A20);
        swift_storeEnumTagMultiPayload();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F1BBB48();
        v147 = v363;
        sub_24F924E28();
        sub_24E601704(v146, &qword_27F214A20);
        v130 = v404;
      }

      else
      {
        v168 = v349;
        sub_24E60169C(v108 + v110[10], v349, &qword_27F213FB0);
        v169 = v398;
        v170 = (*(v399 + 48))(v168, 1, v398);
        v147 = v363;
        if (v170 == 1)
        {
          sub_24E601704(v168, &qword_27F213FB0);
          v171 = v348;
          (*(v346 + 56))(v348, 1, 1, v347);
        }

        else
        {
          v206 = *(v399 + 32);
          v207 = v326;
          v206(v326, v168, v169);
          v208 = v327;
          v206(v327, v207, v169);
          v209 = v419 + v93[32];
          v210 = *(v209 + 16);
          v211 = *(v209 + 24);
          v212 = v347;
          *(v208 + *(v347 + 20)) = *(v419 + v93[30]);
          v213 = v208 + *(v212 + 24);
          *v213 = *v209;
          *(v213 + 16) = v210;
          *(v213 + 24) = v211;
          v171 = v348;
          sub_24F1BBDE0(v208, v348, type metadata accessor for CardSmallGameIcon);
          (*(v346 + 56))(v171, 0, 1, v212);
        }

        v130 = v404;
        sub_24E60169C(v171, v361, &qword_27F23B8B8);
        swift_storeEnumTagMultiPayload();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F1BBB48();
        sub_24F924E28();
        sub_24E601704(v171, &qword_27F23B8B8);
      }

      sub_24E60169C(v147, v382, &qword_27F23B8C8);
      swift_storeEnumTagMultiPayload();
      sub_24F1BBA90();
      sub_24F1BBBFC();
      v214 = v384;
      sub_24F924E28();
      sub_24E60169C(v214, v395, &qword_27F23B8B0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB7E8();
      sub_24F1BBA04();
      v215 = v396;
      sub_24F924E28();
      sub_24E601704(v214, &qword_27F23B8B0);
      sub_24E60169C(v215, v402, &qword_27F23B8E8);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v216 = v403;
      sub_24F924E28();
      sub_24E601704(v215, &qword_27F23B8E8);
      sub_24E60169C(v216, v407, &qword_27F23B948);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      sub_24F924E28();
      sub_24E601704(v216, &qword_27F23B948);
      v217 = v147;
      v218 = &qword_27F23B8C8;
      goto LABEL_107;
    }

    if (v103 != 4)
    {
      goto LABEL_101;
    }

    v299 = v20;
    if (v104 < 4u)
    {
      swift_storeEnumTagMultiPayload();
      sub_24E717E78();
      v141 = v385;
      sub_24F924E28();
LABEL_113:
      v132 = v413;
LABEL_114:
      sub_24E60169C(v141, v376, &qword_27F23B900);
      swift_storeEnumTagMultiPayload();
      sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
      sub_24F1BB6D0();
      v284 = v379;
      sub_24F924E28();
      sub_24E60169C(v284, v390, &qword_27F23B910);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB560();
      sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &unk_24F9D1E88, sub_24F1BB6D0);
      v285 = v392;
      sub_24F924E28();
      sub_24E601704(v284, &qword_27F23B910);
      sub_24E60169C(v285, v402, &qword_27F23B940);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v286 = v403;
      sub_24F924E28();
      sub_24E601704(v285, &qword_27F23B940);
      sub_24E60169C(v286, v407, &qword_27F23B948);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v130 = v404;
      sub_24F924E28();
      sub_24E601704(v286, &qword_27F23B948);
      sub_24E601704(v385, &qword_27F23B900);
      goto LABEL_109;
    }

    if (v104 == 4)
    {
      v172 = v93;
      if (qword_27F2112F0 != -1)
      {
        swift_once();
        v172 = v93;
      }

      v417 = v38;
      v173 = __swift_project_value_buffer(v172, qword_27F39E610);
      v174 = v304;
      sub_24F1BBD78(v173, v304, type metadata accessor for CardLayoutMetrics);
      v175 = (v108 + v110[13]);
      v176 = v175[1];
      v141 = v385;
      if (!v176)
      {
        goto LABEL_111;
      }

      v177 = *v175;
      v178 = HIBYTE(v176) & 0xF;
      if ((v176 & 0x2000000000000000) == 0)
      {
        v178 = v177 & 0xFFFFFFFFFFFFLL;
      }

      if (v178)
      {
        v420 = v177;
        v421 = v176;
        sub_24E600AEC();

        v179 = sub_24F925E18();
        v181 = v180;
        v183 = v182;
        v298 = v93;
        v184 = sub_24F925C98();
        v186 = v185;
        v188 = v187;
        sub_24E600B40(v179, v181, v183 & 1);

        LODWORD(v420) = sub_24F9251C8();
        v189 = sub_24F925C58();
        v191 = v190;
        v193 = v192;
        v195 = v194;
        sub_24E600B40(v184, v186, v188 & 1);
        v141 = v385;

        v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
        v197 = *MEMORY[0x277CE13B8];
        v198 = sub_24F927748();
        v199 = v301;
        (*(*(v198 - 8) + 104))(&v301[v196], v197, v198);
        *v199 = v189;
        *(v199 + 8) = v191;
        *(v199 + 16) = v193 & 1;
        *(v199 + 24) = v195;
        v200 = *(v174 + v298[26]);
        v201 = swift_getKeyPath();
        v202 = v350;
        v203 = v199 + *(v350 + 36);
        *v203 = v201;
        *(v203 + 8) = v200;
        *(v203 + 16) = 0;
        v204 = v329;
        sub_24F1BBCB8(v199, v329);
        v205 = 0;
      }

      else
      {
LABEL_111:
        v205 = 1;
        v202 = v350;
        v204 = v329;
      }

      (*(v306 + 56))(v204, v205, 1, v202);
      sub_24E60169C(v204, v309, &qword_27F214B88);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB8CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
      v277 = v310;
      sub_24F924E28();
      sub_24E60169C(v277, v317, &qword_27F214BB8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30);
      sub_24E63C434();
      sub_24E63C8B0();
      v278 = v312;
      sub_24F924E28();
      sub_24E601704(v277, &qword_27F214BB8);
      sub_24E60169C(v278, v321, &qword_27F214B20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8);
      sub_24E63C3A8();
      sub_24E63C960();
      v279 = v315;
      sub_24F924E28();
      sub_24E601704(v278, &qword_27F214B20);
      sub_24E60169C(v279, v323, &qword_27F214B10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
      sub_24E63C31C();
      sub_24E63CD80();
      v280 = v311;
      sub_24F924E28();
      sub_24E601704(v279, &qword_27F214B10);
      sub_24E601704(v329, &qword_27F214B88);
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
      (*(*(v281 - 8) + 56))(v280, 0, 1, v281);
      v282 = v318;
      sub_24E6009C8(v280, v318, &qword_27F214A20);
      sub_24F1BBE48(v174, type metadata accessor for CardLayoutMetrics);
      sub_24E60169C(v282, v331, &qword_27F214A20);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v283 = v332;
      sub_24F924E28();
      sub_24E60169C(v283, v356, &qword_27F219E48);
      swift_storeEnumTagMultiPayload();
      sub_24E717E78();
      sub_24F924E28();
      sub_24E601704(v283, &qword_27F219E48);
      sub_24E601704(v282, &qword_27F214A20);
      goto LABEL_113;
    }

    v243 = v102 + v101[10];
    v244 = v303;
    sub_24E60169C(v243, v303, &qword_27F213FB0);
    v245 = v398;
    v246 = (*(v399 + 48))(v244, 1, v398);
    if (v246 == 1)
    {
      sub_24E601704(v244, &qword_27F213FB0);
      v132 = v413;
      v141 = v385;
      v247 = v305;
    }

    else
    {
      v287 = *(v399 + 32);
      v288 = v302;
      v287(v302, v244, v245);
      v289 = (v108 + v110[11]);
      v290 = v289[1];
      v291 = v245;
      v141 = v385;
      v247 = v305;
      if (v290)
      {
        v292 = *v289;
        v293 = v300;
        v287(v300, v288, v291);
        v294 = v325;
        v295 = (v293 + *(v325 + 20));
        *v295 = v292;
        v295[1] = v290;
        sub_24F1BBDE0(v293, v247, type metadata accessor for HeroCardGameHeadingView);
        (*(v324 + 56))(v247, 0, 1, v294);

        v132 = v413;
LABEL_119:
        sub_24E60169C(v247, v331, &qword_27F219E50);
        swift_storeEnumTagMultiPayload();
        sub_24E7179AC();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v296 = v332;
        sub_24F924E28();
        sub_24E60169C(v296, v356, &qword_27F219E48);
        swift_storeEnumTagMultiPayload();
        sub_24E717E78();
        sub_24F924E28();
        sub_24E601704(v296, &qword_27F219E48);
        sub_24E601704(v247, &qword_27F219E50);
        goto LABEL_114;
      }

      (*(v399 + 8))(v288, v291);
      v132 = v413;
    }

    (*(v324 + 56))(v247, 1, 1, v325);
    goto LABEL_119;
  }

  sub_24E601704(v418, &qword_27F2190D8);
  v131 = 1;
  v132 = v413;
  v133 = v411;
LABEL_110:
  (*(v132 + 56))(v133, v131, 1, v410);
  sub_24E6009C8(v133, v412, &qword_27F23B958);
  return sub_24F1BBE48(v419, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F1B931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKVideo();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for ActivityCard() + 32);
  v16 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v15 + *(v16 + 32), v10, &qword_27F213FB8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB8);
    sub_24E60169C(v15 + *(v16 + 28), v5, &qword_27F213FB0);
    v17 = v35;
    if ((*(v35 + 48))(v5, 1, v6) == 1)
    {
      sub_24E601704(v5, &qword_27F213FB0);
LABEL_14:
      v30 = type metadata accessor for ColorGroup();
      return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    }

    v24 = v34;
    (*(v17 + 32))(v34, v5, v6);
    v25 = sub_24F9289A8();
    if (!v25)
    {
      (*(v17 + 8))(v24, v6);
      goto LABEL_14;
    }

    v26 = qword_27F20FEE0;
    v27 = v25;
    if (v26 != -1)
    {
      v32 = v27;
      swift_once();
      v27 = v32;
    }

    v28 = v27;
    v29 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v29);

    return (*(v17 + 8))(v24, v6);
  }

  else
  {
    sub_24F1BBDE0(v10, v14, type metadata accessor for GSKVideo);
    v18 = sub_24F9289A8();
    if (!v18)
    {
      sub_24F1BBE48(v14, type metadata accessor for GSKVideo);
      goto LABEL_14;
    }

    v19 = qword_27F20FEE0;
    v20 = v18;
    if (v19 != -1)
    {
      v31 = v20;
      swift_once();
      v20 = v31;
    }

    v21 = v20;
    v22 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v22);

    return sub_24F1BBE48(v14, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24F1B97E0@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24F1BBDE0(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24F1BBE48(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24F1BBDE0(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v31 = *(v30 + 48);
        sub_24F1BBDE0(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24F1B9C8C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v110 = a3;
  v112 = a2;
  v137 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8);
  MEMORY[0x28223BE20](v135);
  v136 = &v106 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8);
  MEMORY[0x28223BE20](v126);
  v129 = &v106 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98);
  MEMORY[0x28223BE20](v118);
  v120 = &v106 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20);
  MEMORY[0x28223BE20](v128);
  v127 = &v106 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10);
  MEMORY[0x28223BE20](v132);
  v131 = &v106 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  MEMORY[0x28223BE20](v117);
  v124 = &v106 - v13;
  v138 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v138);
  v114 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v141 = &v106 - v16;
  v113 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v113);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v119 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A8);
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  v34 = type metadata accessor for ActivityCard();
  v35 = (a1 + *(v34 + 44));
  v36 = v35[1];
  v37 = MEMORY[0x277CE13B8];
  v139 = v33;
  v140 = v18;
  if (v36)
  {
    v142 = *v35;
    v143 = v36;
    sub_24E600AEC();

    v38 = sub_24F925E18();
    v40 = v39;
    v42 = v41;
    v108 = v26;
    sub_24F925A08();
    v43 = sub_24F925C98();
    v107 = v25;
    v44 = v43;
    v46 = v45;
    v109 = a1;
    v48 = v47;
    v106 = v49;

    sub_24E600B40(v38, v40, v42 & 1);

    v142 = v44;
    v143 = v46;
    v50 = v48 & 1;
    a1 = v109;
    v144 = v50;
    v145 = v106;
    sub_24F9268B8();
    v37 = MEMORY[0x277CE13B8];
    v51 = v50;
    v52 = v139;
    sub_24E600B40(v44, v46, v51);

    LODWORD(v38) = sub_24F9251C8();
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)] = v38;
    v53 = v107;
    v54 = *(v107 + 36);
    v55 = *v37;
    v56 = sub_24F927748();
    v57 = &v28[v54];
    v18 = v140;
    (*(*(v56 - 8) + 104))(v57, v55, v56);
    sub_24E6009C8(v28, v52, &qword_27F21A1A8);
    (*(v108 + 56))(v52, 0, 1, v53);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v25);
  }

  sub_24F1BBD78(a1 + *(v34 + 32), v18, type metadata accessor for CommonCardAttributes);
  if (v112 > 2u)
  {
    v58 = v141;
    v59 = v138;
    v60 = v114;
    if (v112 == 3)
    {
      sub_24F4E9558(v110, v114);
      goto LABEL_24;
    }

    if (v112 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E658;
    }

LABEL_23:
    v62 = __swift_project_value_buffer(v59, v61);
    sub_24F1BBD78(v62, v60, type metadata accessor for CardLayoutMetrics);
    goto LABEL_24;
  }

  v58 = v141;
  v59 = v138;
  v60 = v114;
  if (!v112)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E640;
    goto LABEL_23;
  }

  if (v112 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E628;
    goto LABEL_23;
  }

  sub_24F4E9E44(v110, v114);
LABEL_24:
  sub_24F1BBDE0(v60, v58, type metadata accessor for CardLayoutMetrics);
  v63 = &v18[*(v113 + 52)];
  v64 = *(v63 + 1);
  if (!v64)
  {
    goto LABEL_29;
  }

  v65 = *v63;
  v66 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v66 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v142 = v65;
    v143 = v64;
    sub_24E600AEC();

    v67 = sub_24F925E18();
    v69 = v68;
    v71 = v70;
    v72 = sub_24F925C98();
    v74 = v73;
    v76 = v75;
    sub_24E600B40(v67, v69, v71 & 1);

    LODWORD(v142) = sub_24F9251C8();
    v77 = sub_24F925C58();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24E600B40(v72, v74, v76 & 1);

    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
    v85 = *v37;
    v86 = sub_24F927748();
    v87 = v111;
    (*(*(v86 - 8) + 104))(&v111[v84], v85, v86);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81 & 1;
    *(v87 + 24) = v83;
    v88 = *(v58 + *(v138 + 104));
    KeyPath = swift_getKeyPath();
    v90 = v116;
    v91 = v87 + *(v116 + 36);
    *v91 = KeyPath;
    *(v91 + 8) = v88;
    *(v91 + 16) = 0;
    v92 = v124;
    sub_24F1BBCB8(v87, v124);
    v93 = 0;
  }

  else
  {
LABEL_29:
    v93 = 1;
    v92 = v124;
    v90 = v116;
  }

  (*(v115 + 56))(v92, v93, 1, v90);
  sub_24E60169C(v92, v120, &qword_27F214B88);
  swift_storeEnumTagMultiPayload();
  sub_24F1BB8CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
  v94 = v122;
  sub_24F924E28();
  sub_24E60169C(v94, v129, &qword_27F214BB8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30);
  sub_24E63C434();
  sub_24E63C8B0();
  v95 = v127;
  sub_24F924E28();
  sub_24E601704(v94, &qword_27F214BB8);
  sub_24E60169C(v95, v134, &qword_27F214B20);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8);
  sub_24E63C3A8();
  sub_24E63C960();
  v96 = v131;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F214B20);
  sub_24E60169C(v96, v136, &qword_27F214B10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50);
  sub_24E63C31C();
  sub_24E63CD80();
  v97 = v119;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F214B10);
  sub_24E601704(v92, &qword_27F214B88);
  sub_24F1BBE48(v140, type metadata accessor for CommonCardAttributes);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00);
  (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
  v99 = v125;
  sub_24E6009C8(v97, v125, &qword_27F214A20);
  sub_24F1BBE48(v141, type metadata accessor for CardLayoutMetrics);
  v100 = v139;
  v101 = v121;
  sub_24E60169C(v139, v121, &qword_27F2273A8);
  v102 = v130;
  sub_24E60169C(v99, v130, &qword_27F214A20);
  v103 = v137;
  sub_24E60169C(v101, v137, &qword_27F2273A8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273B0);
  sub_24E60169C(v102, v103 + *(v104 + 48), &qword_27F214A20);
  sub_24E601704(v99, &qword_27F214A20);
  sub_24E601704(v100, &qword_27F2273A8);
  sub_24E601704(v102, &qword_27F214A20);
  return sub_24E601704(v101, &qword_27F2273A8);
}

uint64_t sub_24F1BAC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B9F8);
  MEMORY[0x28223BE20](v74);
  v75 = (&v65 - v3);
  v4 = sub_24F924A78();
  MEMORY[0x28223BE20](v4 - 8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BA00);
  MEMORY[0x28223BE20](v73);
  v6 = &v65 - v5;
  if (v1[3])
  {
    v72 = v6;
    v7 = v1 + *(type metadata accessor for TitleView() + 24);
    v71 = v7;
    v70 = type metadata accessor for CardLayoutMetrics(0);
    v8 = &v7[*(v70 + 88)];
    v68 = *(v8 + 3);
    v69 = *(v8 + 4);
    v67 = __swift_project_boxed_opaque_existential_1(v8, v68);

    sub_24F924A68();
    sub_24F924A58();
    sub_24F926DF8();
    v9 = sub_24F925E28();
    v11 = v10;
    v13 = v12;
    LODWORD(v79) = sub_24F9251C8();
    v14 = sub_24F925C58();
    v16 = v15;
    v18 = v17;
    sub_24E600B40(v9, v11, v13 & 1);

    sub_24F924A28();
    sub_24E600B40(v14, v16, v18 & 1);

    sub_24F924A58();
    v19 = v1[1];
    v66 = *v1;
    v65 = v19;
    sub_24F924A48();
    sub_24F924A58();
    sub_24F924A98();
    v20 = sub_24F925DE8();
    v22 = v21;
    v24 = v23;
    v25 = sub_24F925C58();
    v27 = v26;
    LOBYTE(v7) = v28;
    sub_24E600B40(v20, v22, v24 & 1);

    v29 = v70;
    v30 = v71;
    v31 = sub_24F925C98();
    v33 = v32;
    LOBYTE(v20) = v34;
    v36 = v35;
    sub_24E600B40(v25, v27, v7 & 1);

    v37 = *&v30[*(v29 + 84)];
    KeyPath = swift_getKeyPath();
    v79 = v31;
    v80 = v33;
    v81 = v20 & 1;
    v82 = v36;
    v83 = KeyPath;
    v84 = v37;
    v85 = 0;
    v77 = v66;
    v78 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68);
    sub_24E67283C();
    sub_24E600AEC();
    v39 = v72;
    sub_24F926538();
    sub_24E600B40(v31, v33, v20 & 1);

    sub_24E60169C(v39, v75, &qword_27F23BA00);
    swift_storeEnumTagMultiPayload();
    sub_24F1BC1CC();
    sub_24F924E28();
    return sub_24E601704(v39, &qword_27F23BA00);
  }

  else
  {
    v41 = v1 + *(type metadata accessor for TitleView() + 24);
    v42 = type metadata accessor for CardLayoutMetrics(0);
    __swift_project_boxed_opaque_existential_1(&v41[*(v42 + 88)], *&v41[*(v42 + 88) + 24]);
    v43 = *v2;
    v44 = v2[1];
    v79 = v43;
    v80 = v44;
    sub_24E600AEC();

    v45 = sub_24F925E18();
    v47 = v46;
    v49 = v48;
    v50 = sub_24F925C58();
    v52 = v51;
    v54 = v53;
    sub_24E600B40(v45, v47, v49 & 1);

    v55 = sub_24F925C98();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_24E600B40(v50, v52, v54 & 1);

    v62 = *&v41[*(v42 + 84)];
    v63 = swift_getKeyPath();
    v64 = v75;
    *v75 = v55;
    v64[1] = v57;
    *(v64 + 16) = v59 & 1;
    v64[3] = v61;
    v64[4] = v63;
    v64[5] = v62;
    *(v64 + 48) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68);
    sub_24F1BC1CC();
    sub_24E67283C();
    return sub_24F924E28();
  }
}

uint64_t type metadata accessor for TitleView()
{
  result = qword_27F23B9D8;
  if (!qword_27F23B9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1BB2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 2u:
      if (a3)
      {
        v5 = sub_24F92CE08();

        v3 = v5 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    case 0xCu:
      v3 = a3 < 2u;
      return v3 & 1;
    case 4u:
      v3 = (a3 & 0xFE) == 4;
      return v3 & 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24F1BB41C()
{
  result = qword_27F23B960;
  if (!qword_27F23B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B948);
    sub_24F1BB4A8();
    sub_24F1BB75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B960);
  }

  return result;
}

unint64_t sub_24F1BB4A8()
{
  result = qword_27F23B968;
  if (!qword_27F23B968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B940);
    sub_24F1BB560();
    sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &unk_24F9D1E88, sub_24F1BB6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B968);
  }

  return result;
}

unint64_t sub_24F1BB560()
{
  result = qword_27F23B970;
  if (!qword_27F23B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B938);
    sub_24E74524C();
    sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B970);
  }

  return result;
}

uint64_t sub_24F1BB61C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1BB6D0()
{
  result = qword_27F23B980;
  if (!qword_27F23B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B900);
    sub_24E717E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B980);
  }

  return result;
}

unint64_t sub_24F1BB75C()
{
  result = qword_27F23B988;
  if (!qword_27F23B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8E8);
    sub_24F1BB7E8();
    sub_24F1BBA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B988);
  }

  return result;
}

unint64_t sub_24F1BB7E8()
{
  result = qword_27F23B990;
  if (!qword_27F23B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8E0);
    sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
    sub_24E602068(&qword_27F227348, &qword_27F2272A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B990);
  }

  return result;
}

uint64_t sub_24F1BB8CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1BB948()
{
  result = qword_27F23B9A0;
  if (!qword_27F23B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B9A8);
    sub_24E63C774();
    sub_24F1BBD30(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9A0);
  }

  return result;
}

unint64_t sub_24F1BBA04()
{
  result = qword_27F23B9B0;
  if (!qword_27F23B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8B0);
    sub_24F1BBA90();
    sub_24F1BBBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9B0);
  }

  return result;
}

unint64_t sub_24F1BBA90()
{
  result = qword_27F23B9B8;
  if (!qword_27F23B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8C8);
    sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24F1BBB48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9B8);
  }

  return result;
}

unint64_t sub_24F1BBB48()
{
  result = qword_27F23B9C0;
  if (!qword_27F23B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8B8);
    sub_24F1BBD30(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9C0);
  }

  return result;
}

unint64_t sub_24F1BBBFC()
{
  result = qword_27F23B9C8;
  if (!qword_27F23B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B8A0);
    sub_24F1BBD30(&qword_27F23B9D0, type metadata accessor for TitleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9C8);
  }

  return result;
}

uint64_t sub_24F1BBCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1BBD30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1BBD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1BBDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1BBE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1BBEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CardLayoutMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1BBF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CardLayoutMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1BC020()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CardLayoutMetrics(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F1BC0F8()
{
  result = qword_27F23B9F0;
  if (!qword_27F23B9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B950);
    sub_24F1BB41C();
    sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B9F0);
  }

  return result;
}

unint64_t sub_24F1BC1CC()
{
  result = qword_27F23BA08;
  if (!qword_27F23BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BA00);
    sub_24E67283C();
    sub_24F1BBD30(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA08);
  }

  return result;
}

unint64_t sub_24F1BC28C()
{
  result = qword_27F23BA10;
  if (!qword_27F23BA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BA18);
    sub_24F1BC1CC();
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA10);
  }

  return result;
}

uint64_t AdvertActionMetrics.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v50 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v61 = a1;
  sub_24F928398();
  v54 = sub_24F928348();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v21, v5);
  if (!v23)
  {
    v33 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v34 = 0x65636E6174736E69;
    v34[1] = 0xEA00000000006449;
    v34[2] = &type metadata for AdvertActionMetrics;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    v35 = sub_24F9285B8();
    (*(*(v35 - 8) + 8))(a2, v35);
LABEL_10:
    v32 = v61;
    return (v24)(v32, v5);
  }

  v59 = v23;
  v60 = a2;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v24(v19, v5);
  if (!v27)
  {

    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v38 = v37;
    *v37 = 0x64496D616461;
    v37[1] = 0xE600000000000000;
LABEL_9:
    v37[2] = &type metadata for AdvertActionMetrics;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v60, v39);
    goto LABEL_10;
  }

  v53 = v25;
  sub_24F928398();
  v52 = sub_24F928348();
  v29 = v28;
  v24(v16, v5);
  if (!v29)
  {

    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v38 = v37;
    *v37 = 0x6449656C646E7562;
    v37[1] = 0xE800000000000000;
    goto LABEL_9;
  }

  sub_24F928398();
  sub_24F1BCA78();
  v30 = v58;
  sub_24F928218();
  if (v30)
  {

    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v60, v31);
    v24(v61, v5);
    v32 = v13;
    return (v24)(v32, v5);
  }

  v24(v13, v5);
  LODWORD(v58) = v64;
  v41 = v57;
  sub_24F928398();
  sub_24F1BCACC();
  sub_24F928218();
  v42 = v5;
  v43 = v60;
  v51 = v27;
  v24(v41, v42);
  LOBYTE(v41) = v63;
  v44 = v56;
  sub_24F928398();
  sub_24F1BCB20();
  sub_24F928218();
  v45 = sub_24F9285B8();
  (*(*(v45 - 8) + 8))(v43, v45);
  v24(v61, v42);
  result = (v24)(v44, v42);
  v46 = v62;
  v47 = v55;
  v48 = v59;
  *v55 = v54;
  v47[1] = v48;
  v49 = v51;
  v47[2] = v53;
  v47[3] = v49;
  v47[4] = v52;
  v47[5] = v29;
  *(v47 + 48) = v41;
  *(v47 + 49) = v58;
  *(v47 + 50) = v46;
  return result;
}

unint64_t sub_24F1BCA78()
{
  result = qword_27F23BA20;
  if (!qword_27F23BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA20);
  }

  return result;
}

unint64_t sub_24F1BCACC()
{
  result = qword_27F23BA28;
  if (!qword_27F23BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA28);
  }

  return result;
}

unint64_t sub_24F1BCB20()
{
  result = qword_27F23BA30;
  if (!qword_27F23BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA30);
  }

  return result;
}

void __swiftcall AdvertActionMetrics.init(instanceId:adamId:bundleId:advertType:invocation:purchaseType:)(GameStoreKit::AdvertActionMetrics *__return_ptr retstr, Swift::String instanceId, GameStoreKit::AdamId adamId, Swift::String bundleId, GameStoreKit::AdvertActionMetrics::AdvertType advertType, GameStoreKit::AdvertActionMetrics::Invocation invocation, GameStoreKit::AdvertActionMetrics::PurchaseType purchaseType)
{
  v7 = *adamId.underlyingAdamID._countAndFlagsBits;
  v8 = *(adamId.underlyingAdamID._countAndFlagsBits + 8);
  v9 = *bundleId._object;
  v10 = *advertType;
  v11 = *invocation;
  retstr->instanceId = instanceId;
  retstr->adamId.underlyingAdamID._countAndFlagsBits = v7;
  retstr->adamId.underlyingAdamID._object = v8;
  retstr->bundleId._countAndFlagsBits = adamId.underlyingAdamID._object;
  retstr->bundleId._object = bundleId._countAndFlagsBits;
  retstr->advertType = v9;
  retstr->invocation = v10;
  retstr->purchaseType = v11;
}

uint64_t AdvertActionMetrics.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdvertActionMetrics.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AdvertActionMetrics.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

GameStoreKit::AdvertActionMetrics::Invocation_optional __swiftcall AdvertActionMetrics.Invocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdvertActionMetrics.Invocation.rawValue.getter()
{
  v1 = 0x725072656B72616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7250747265766461;
  }
}

uint64_t sub_24F1BCD00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x725072656B72616DLL;
  v4 = 0xEB00000000737365;
  v5 = 0x800000024FA421D0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000024FA421D0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7250747265766461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00006465737365;
  }

  v8 = 0x725072656B72616DLL;
  if (*a2 == 1)
  {
    v5 = 0xEB00000000737365;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7250747265766461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00006465737365;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1BCE14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BCED0()
{
  sub_24F92B218();
}

uint64_t sub_24F1BCF78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD03C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465737365;
  v4 = 0xEB00000000737365;
  v5 = 0x725072656B72616DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA421D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250747265766461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AdvertActionMetrics.AdvertType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7041656461637261;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24F1BD108(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7041656461637261;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000707041;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x7041656461637261;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xEB00000000707041;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F1BD1BC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BD24C()
{
  sub_24F92B218();
}

uint64_t sub_24F1BD2C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD360(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x7041656461637261;
  }

  v3 = 0xEB00000000707041;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AdvertActionMetrics.PurchaseType.rawValue.getter()
{
  if (*v0)
  {
    return 0x726564726F657270;
  }

  else
  {
    return 0x647261646E617473;
  }
}

unint64_t sub_24F1BD3F0()
{
  result = qword_27F23BA38;
  if (!qword_27F23BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA38);
  }

  return result;
}

unint64_t sub_24F1BD448()
{
  result = qword_27F23BA40;
  if (!qword_27F23BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA40);
  }

  return result;
}

uint64_t sub_24F1BD49C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726564726F657270;
  }

  else
  {
    v2 = 0x647261646E617473;
  }

  if (*a2)
  {
    v3 = 0x726564726F657270;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_24F1BD528()
{
  result = qword_27F23BA48;
  if (!qword_27F23BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BA48);
  }

  return result;
}

uint64_t sub_24F1BD57C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1BD5F4()
{
  sub_24F92B218();
}

uint64_t sub_24F1BD650()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1BD6D0(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x726564726F657270;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_24F1BD720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_24F1BD768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeroCarousel.__allocating_init(deserializing:using:)(char *a1, char *a2)
{
  v4 = swift_allocObject();
  HeroCarousel.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *HeroCarousel.init(deserializing:using:)(char *a1, char *a2)
{
  v3 = v2;
  v69 = *v3;
  v86 = sub_24F9285B8();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v69 - v13;
  v83 = sub_24F91F6B8();
  v74 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v69 - v20;
  MEMORY[0x28223BE20](v21);
  v75 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v91 = a1;
  sub_24F928398();
  v29 = sub_24F928348();
  v84 = v16;
  v77 = v17;
  v82 = v25;
  if (v30)
  {
    v87 = v29;
    v88 = v30;
  }

  else
  {
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v32 = a2;
    v33 = v6;
    v35 = v34;
    (*(v74 + 1))(v15, v83);
    v87 = v31;
    v88 = v35;
    v6 = v33;
    a2 = v32;
  }

  sub_24F92C7F8();
  v83 = *(v17 + 8);
  v83(v28, v16);
  v79 = v6;
  v36 = *&v89[16];
  *(v3 + 9) = *v89;
  *(v3 + 11) = v36;
  v3[13] = v90;
  sub_24F929608();
  sub_24F928398();
  v37 = *(v6 + 16);
  v38 = v76;
  v39 = v86;
  v37(v76, a2, v86);
  v40 = v81;
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics;
  sub_24E65E0D4(v40, v3 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);
  v41 = v3;
  v42 = v85;
  v81 = a2;
  v74 = v37;
  v37(v85, a2, v39);
  sub_24F928398();
  v37(v38, v42, v39);
  v73 = type metadata accessor for HeroCarouselItem();
  sub_24F1BE370(&qword_27F23BA50, type metadata accessor for HeroCarouselItem);
  v43 = v41;
  v41[2] = sub_24F92B698();
  v44 = v91;
  sub_24F928398();
  v45 = v86;
  v46 = v74;
  v74(v38, v42, v86);
  v47 = v44;
  v41[3] = sub_24F92B698();
  v48 = v75;
  sub_24F928398();
  v49 = v78;
  v46(v78, v42, v45);
  v50 = v80;
  AutoScrollConfiguration.init(deserializing:using:)(v48, v49, v89);
  if (!v50)
  {
    v82 = 0;
    v52 = *&v89[24];
    *(v43 + 32) = v89[0];
    *(v43 + 5) = *&v89[8];
    v43[7] = v52;
    v53 = v70;
    sub_24F928398();
    v54 = sub_24F928278();
    v55 = v53;
    v57 = v83;
    v56 = v84;
    v83(v55, v84);
    *(v43 + 64) = (v54 == 2) | v54 & 1;
    v58 = v71;
    sub_24F928398();
    v59 = sub_24F928278();
    v57(v58, v56);
    *(v43 + 65) = (v59 == 2) | v59 & 1;
    v60 = v43[2];
    if (v60 >> 62)
    {
      v61 = sub_24F92C738();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v79;
    if (v61)
    {
      goto LABEL_11;
    }

    v63 = v43[3];
    if (v63 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_11;
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      v64 = *(v62 + 8);
      v64(v81, v45);
      v83(v47, v84);
      v64(v85, v45);
      return v43;
    }

    v66 = sub_24F92AC38();
    sub_24F1BE370(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v67 = 0x736D657469;
    v67[1] = 0xE500000000000000;
    v67[2] = v69;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
    swift_willThrow();
    v68 = *(v62 + 8);
    v68(v81, v45);
    v83(v47, v84);
    v68(v85, v45);

    return v43;
  }

  v51 = *(v79 + 8);
  v51(v81, v45);
  v83(v47, v84);
  v51(v42, v45);

  sub_24E6585F8((v43 + 9));
  sub_24EB05BC8(v43 + v72);
  type metadata accessor for HeroCarousel();
  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t type metadata accessor for HeroCarousel()
{
  result = qword_27F23BA60;
  if (!qword_27F23BA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double HeroCarousel.autoScrollConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

uint64_t HeroCarousel.deinit()
{

  sub_24E6585F8(v0 + 72);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);
  return v0;
}

uint64_t HeroCarousel.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 72);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit12HeroCarousel_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1BE370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_24F1BE3C8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarousel();
  v7 = swift_allocObject();
  result = HeroCarousel.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F1BE454()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t CancellablePromise.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  CancellablePromise.init()();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  swift_retain_n();
  v9[3] = sub_24F929638();
  v9[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v9);

  sub_24F929628();
  sub_24F92A558();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v5;
}

uint64_t CancellablePromise.then(perform:orCatchError:on:)()
{

  sub_24F92A958();
}

uint64_t CancellablePromise.__allocating_init()()
{
  v0 = swift_allocObject();
  CancellablePromise.init()();
  return v0;
}

uint64_t CancellablePromise.init()()
{
  sub_24F92A9F8();
  *(v0 + 24) = sub_24F92A9E8();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v0 + 32) = 0;
  return v0;
}

id CancellablePromise.resolve(_:)()
{
  v1 = *(v0 + 16);
  [v1 lock];
  sub_24F1BE8E4(v0);

  return [v1 unlock];
}

id CancellablePromise.reject(_:)()
{
  v1 = *(v0 + 16);
  [v1 lock];
  sub_24F1BE934(v0);

  return [v1 unlock];
}

uint64_t sub_24F1BE8E4(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {

    sub_24F92A9C8();
  }

  return result;
}

uint64_t sub_24F1BE934(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {

    sub_24F92A9A8();
  }

  return result;
}

uint64_t CancellablePromise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  type metadata accessor for CancellablePromise();
  v7 = swift_allocObject();
  CancellablePromise.init()();
  v8 = swift_allocObject();
  v9 = *(v6 + 80);
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  swift_retain_n();

  CancellablePromise.then(perform:orCatchError:on:)();

  return v7;
}

uint64_t sub_24F1BEABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  v9(v6);
  CancellablePromise.resolve(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24F1BEBC4()
{

  return swift_deallocObject();
}

uint64_t sub_24F1BEC10()
{

  return swift_deallocObject();
}

uint64_t CancellablePromise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  swift_getAssociatedTypeWitness();
  type metadata accessor for CancellablePromise();
  v12 = swift_allocObject();
  CancellablePromise.init()();
  sub_24E615E00(a1, v17);
  v13 = swift_allocObject();
  v14 = *(v11 + 80);
  v13[2] = v14;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v12;
  sub_24E612C80(v17, (v13 + 8));
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v12;
  swift_retain_n();

  CancellablePromise.then(perform:orCatchError:on:)();

  return v12;
}

uint64_t sub_24F1BEDE4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2();
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v12[5] = a4;
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  swift_retain_n();
  sub_24F92A558();
  swift_unknownObjectRelease();
}

uint64_t sub_24F1BEEEC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t CancellablePromise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for CancellablePromise();
  v8 = swift_allocObject();
  CancellablePromise.init()();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v8;
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v8;
  v12[3] = sub_24F929638();
  v12[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v12);
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_24F929628();
  CancellablePromise.then(perform:orCatchError:on:)();

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t sub_24F1BF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a4;
  *(v14 + 3) = a5;
  *(v14 + 4) = a6;
  *(v14 + 5) = a3;
  (*(v10 + 32))(&v14[v13], &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a3;
  v18[3] = sub_24F929638();
  v18[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v18);
  swift_retain_n();
  sub_24F929628();
  sub_24F92A558();

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24F1BF2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1BF30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v16 - v11;
  v14 = *(v13 + 48);
  (*(*(a4 - 8) + 16))(&v16 - v11, a3, a4, v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v12[v14], a1, AssociatedTypeWitness);
  CancellablePromise.resolve(_:)();
  return (*(v9 + 8))(v12, TupleTypeMetadata2);
}

uint64_t sub_24F1BF494()
{

  return swift_deallocObject();
}

uint64_t CancellablePromise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F1BF55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E614970;

  return MEMORY[0x282180370](a1, v7, a3);
}

uint64_t sub_24F1BF6D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1BF7F0()
{

  return swift_deallocObject();
}

id static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v72 = *a5;
  v68 = *(a5 + 2);
  v69 = *(a5 + 3);
  v70 = *(a5 + 4);
  v71 = *(a5 + 5);
  if (!a1)
  {
    if (a3)
    {
      *&v74 = a2;
      *(&v74 + 1) = a3;
      v73[0] = 64;
      v73[1] = 0xE100000000000000;
      sub_24E600AEC();

      if (sub_24F92C5F8())
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24F93DE60;
      *(v27 + 32) = v26;
      *(v27 + 40) = a2;
      *(v27 + 48) = a3;
      sub_24F26E39C(v27, &v74);
      v65 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24F93DE60;
      *(v28 + 32) = v65;
      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
    }

    goto LABEL_55;
  }

  v62 = a1;
  v8 = [v62 allTUHandles];
  sub_24E69A5C4(0, &unk_27F2376E0);
  v9 = sub_24F92B5A8();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_29:
    v63 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_28:
  v10 = sub_24F92C738();
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_4:
  v11 = 0;
  v63 = MEMORY[0x277D84F90];
  do
  {
    v12 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = [v13 type] - 1;
      if (v15 < 3)
      {
        break;
      }

      ++v12;
      if (v11 == v10)
      {
        goto LABEL_30;
      }
    }

    v64 = a4;
    v16 = [v14 value];
    v17 = sub_24F92B0D8();
    v60 = v18;
    v61 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = v15;
    *(v19 + 40) = v61;
    *(v19 + 48) = v60;
    *&v74 = MEMORY[0x277D84FA0];

    sub_24ED7CF18(v73, v15);

    v20 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_24E616D5C(0, *(v63 + 2) + 1, 1, v63);
    }

    v22 = *(v63 + 2);
    v21 = *(v63 + 3);
    if (v22 >= v21 >> 1)
    {
      v63 = sub_24E616D5C((v21 > 1), v22 + 1, 1, v63);
    }

    *(v63 + 2) = v22 + 1;
    v23 = &v63[16 * v22];
    *(v23 + 4) = v19;
    *(v23 + 5) = v20;
    a4 = v64;
  }

  while (v11 != v10);
LABEL_30:

  if ((a4 & 1) == 0)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_54:
    v28 = v63;
    goto LABEL_55;
  }

  v30 = [v62 socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E458);
  v31 = sub_24F92B5A8();

  v32 = v31;
  v28 = v63;
  if (v31 >> 62)
  {
    goto LABEL_59;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
LABEL_60:

    v29 = MEMORY[0x277D84F90];
LABEL_55:
    v74 = v72;
    v75 = v68;
    v76 = v69;
    v77 = v70;
    v78 = v71;
    v52 = v68;

    v53 = v70;
    v54 = v71;
    v55 = v72;
    v56 = *(&v72 + 1);
    return sub_24F4B6440(&v74, v28, v29, a6);
  }

  while (v33 >= 1)
  {
    v28 = 0;
    v67 = v32 & 0xC000000000000001;
    v29 = MEMORY[0x277D84F90];
    v66 = v32;
    while (1)
    {
      if (v67)
      {
        v34 = MEMORY[0x253052270](v28);
      }

      else
      {
        v34 = *(v32 + 8 * v28 + 32);
      }

      v74 = v72;
      v75 = v68;
      v76 = v69;
      v77 = v70;
      v78 = v71;
      v35 = v34;
      v36 = v72;
      v37 = *(&v72 + 1);
      v38 = v68;

      v39 = v70;
      v40 = v71;
      v41 = sub_24F7E8410(v35, &v74);
      v42 = v41[2];
      if (!v42)
      {

        goto LABEL_36;
      }

      v43 = v29[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v46 = v29[3] >> 1, v46 < v44))
      {
        if (v43 <= v44)
        {
          v47 = v43 + v42;
        }

        else
        {
          v47 = v43;
        }

        v29 = sub_24E616D0C(isUniquelyReferenced_nonNull_native, v47, 1, v29);
        v46 = v29[3] >> 1;
      }

      if (!v41[2])
      {
        goto LABEL_62;
      }

      v48 = v46 - v29[2];
      type metadata accessor for CallProviderConversationHandle();
      if (v48 < v42)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v49 = v29[2];
      v50 = __OFADD__(v49, v42);
      v51 = v49 + v42;
      if (v50)
      {
        goto LABEL_58;
      }

      v29[2] = v51;

LABEL_36:
      ++v28;
      v32 = v66;
      if (v33 == v28)
      {

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v58 = v32;
    v59 = sub_24F92C738();
    v32 = v58;
    v33 = v59;
    if (!v59)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_62:

  __break(1u);
  return result;
}

id sub_24F1BFED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9D2540;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v1 = [objc_opt_self() descriptorForAllComparatorKeys];
  v2 = *MEMORY[0x277CBD020];
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = *MEMORY[0x277CBD098];
  v4 = *MEMORY[0x277CBCFC0];
  *(v0 + 56) = *MEMORY[0x277CBD098];
  *(v0 + 64) = v4;
  v5 = *MEMORY[0x277CBD018];
  v6 = *MEMORY[0x277CBD138];
  *(v0 + 72) = *MEMORY[0x277CBD018];
  *(v0 + 80) = v6;
  v13 = *MEMORY[0x277CBD160];
  *(v0 + 88) = *MEMORY[0x277CBD160];
  qword_27F23BAF0 = v0;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return v13;
}

uint64_t static SocialUser.keysToFetch.getter()
{
  if (qword_27F210FC8 != -1)
  {
    swift_once();
  }
}

uint64_t static SocialUser.displayName(for:)(void *a1)
{
  v2 = [objc_opt_self() stringFromContact:a1 style:0];
  if (!v2)
  {
    v2 = [a1 nickname];
  }

  v3 = v2;
  v4 = sub_24F92B0D8();

  return v4;
}

uint64_t SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(v134) = a4;
  v132 = a3;
  v145 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = v120 - v8;
  v148 = type metadata accessor for Player(0);
  v9 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v121 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F91EAA8();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v124 = v120 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v120 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (v120 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (v120 - v23);
  v25 = type metadata accessor for SocialUser();
  v143 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a2[1];
  *&v140 = *a2;
  *(&v140 + 1) = v28;
  v29 = a2[3];
  v141 = a2[2];
  v30 = a2[5];
  v138 = a2[4];
  v139 = v29;
  v137 = v30;
  v27[6] = 0;
  v27[7] = 0;
  v144 = v31;
  v32 = *(v31 + 36);
  v33 = type metadata accessor for CallProviderConversationHandleSet();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v142 = v32;
  v131 = v33;
  v130 = v35;
  v129 = v34 + 56;
  (v35)(v27 + v32, 1, 1);
  v36 = [objc_opt_self() comparatorForNameSortOrder_];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;

  *&v150 = sub_24EC4E10C(v38);
  sub_24F1C2248(&v150, sub_24F1C233C);

  v136 = v37;

  v39 = v150;
  v40 = v150 < 0 || (v150 & 0x4000000000000000) != 0;
  if (v40)
  {
    v43 = sub_24F92C738();
    v41 = v148;
    if (v43)
    {
      goto LABEL_6;
    }

LABEL_11:
    v147 = 0;
    goto LABEL_12;
  }

  v41 = v148;
  if (!*(v150 + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x253052270](0, v39);
  }

  else
  {
    if (!*(v39 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    v42 = *(v39 + 32);
  }

  v147 = v42;
LABEL_12:
  sub_24E6364A0(a1, v24);
  v44 = v9[6];
  v146 = v9 + 6;
  v149 = v44;
  if (v44(v24, 1, v41) == 1)
  {
    sub_24E601704(v24, &unk_27F23E1F0);
    v9 = v147;
    if (!v147)
    {

      sub_24E601704(a1, &unk_27F23E1F0);
      v69 = v143;
      v68 = v144;
      v53 = v145;
LABEL_41:
      sub_24E601704(v27 + v142, &unk_27F23E170);
      return (*(v69 + 56))(v53, 1, 1, v68);
    }

    v123 = v40;
    v45 = [v147 identifier];
    v46 = sub_24F92B0D8();
    v48 = v47;

    v49 = v48;
  }

  else
  {
    v123 = v40;
    v46 = *v24;
    v49 = v24[1];

    sub_24F1C2344(v24, type metadata accessor for Player);
    v9 = v147;
  }

  *v27 = v46;
  v27[1] = v49;
  v120[1] = v49;
  sub_24E6364A0(a1, v21);
  if (v149(v21, 1, v41) == 1)
  {
    sub_24E601704(v21, &unk_27F23E1F0);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v50 = *v21;
    v51 = v21[1];

    sub_24F1C2344(v21, type metadata accessor for Player);
  }

  v27[2] = v50;
  v27[3] = v51;
  sub_24E6364A0(a1, v18);
  v52 = v149(v18, 1, v41);
  v135 = a1;
  v120[0] = v51;
  if (v52 == 1)
  {
    sub_24E601704(v18, &unk_27F23E1F0);
    v53 = v145;
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_28:
    v27[8] = 0;
    v27[9] = 0;
    goto LABEL_31;
  }

  v65 = a1;
  v67 = *(v18 + 2);
  v66 = *(v18 + 3);

  sub_24F1C2344(v18, type metadata accessor for Player);
  v53 = v145;
  if ((v67 || v66 != 0xE000000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    v27[8] = v67;
    v27[9] = v66;
    a1 = v65;
    v41 = v148;
    goto LABEL_31;
  }

  a1 = v65;
  v41 = v148;
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_21:
  v54 = v53;
  v55 = v9;
  v56 = [v55 identifier];
  v57 = sub_24F92B0D8();
  v59 = v58;

  *&v150 = v57;
  *(&v150 + 1) = v59;
  v60 = v125;
  sub_24F91EA28();
  sub_24E600AEC();
  v61 = sub_24F92C578();
  v63 = v62;
  (*(v126 + 8))(v60, v127);
  if (!v63)
  {

    v61 = v57;
    v63 = v59;
  }

  *&v150 = 0x3A746361746E6F63;
  *(&v150 + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v61, v63);

  v64 = *(&v150 + 1);
  v27[8] = v150;
  v27[9] = v64;
  v53 = v54;
  a1 = v135;
  v9 = v147;
  v41 = v148;
LABEL_31:
  if (((v134 & 1) == 0 || v149(a1, 1, v41) == 1) && v9)
  {
    if (v123)
    {
      if (sub_24F92C738() < 2)
      {
LABEL_36:
        v70 = v9;

        v71 = [objc_opt_self() stringFromContact:v70 style:0];
        if (!v71)
        {
          v71 = [v70 nickname];
        }

        v72 = v71;
        v73 = sub_24F92B0D8();
        v75 = v74;

        v27[4] = v73;
        v27[5] = v75;
        goto LABEL_56;
      }
    }

    else if (*(v39 + 16) < 2)
    {
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24F93A400;
    v134 = v39 & 0xC000000000000001;
    if ((v39 & 0xC000000000000001) == 0)
    {
      if (!*(v39 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      v78 = *(v39 + 32);
      v79 = v9;
      v80 = v78;
LABEL_46:
      v81 = v80;
      v82 = a1;
      v83 = objc_opt_self();
      v84 = [v83 stringFromContact:v81 style:0];
      v85 = MEMORY[0x277D837D0];
      if (!v84)
      {
        v84 = [v81 nickname];
      }

      v53 = v84;
      v86 = sub_24F92B0D8();
      v88 = v87;

      *(v41 + 56) = v85;
      *(v41 + 64) = sub_24E90A06C();
      *(v41 + 32) = v86;
      *(v41 + 40) = v88;
      if (v134)
      {
        v89 = MEMORY[0x253052270](1, v39);

        a1 = v82;
LABEL_53:
        v96 = v147;
        v97 = [v83 stringFromContact:v89 style:{0, v120[0]}];
        if (!v97)
        {
          v97 = [v89 nickname];
        }

        v98 = v97;
        v99 = sub_24F92B0D8();
        v101 = v100;

        *(v41 + 96) = v85;
        *(v41 + 104) = sub_24E90A06C();
        *(v41 + 72) = v99;
        *(v41 + 80) = v101;
        v102 = sub_24F92B0A8();
        v104 = v103;

        v27[4] = v102;
        v27[5] = v104;
        goto LABEL_56;
      }

      if (*(v39 + 16) >= 2uLL)
      {
        a1 = v82;
        v89 = *(v39 + 40);

        goto LABEL_53;
      }

LABEL_64:
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_62:
    v119 = v9;
    v80 = MEMORY[0x253052270](0, v39);
    goto LABEL_46;
  }

  v76 = v124;
  sub_24E6364A0(a1, v124);
  if (v149(v76, 1, v41) == 1)
  {

    sub_24E601704(v76, &unk_27F23E1F0);
    sub_24E601704(a1, &unk_27F23E1F0);

    v69 = v143;
    v68 = v144;
    goto LABEL_41;
  }

  v90 = v121;
  sub_24E61C0A8(v76, v121);
  v91 = (v90 + *(v41 + 28));
  v92 = v91[1];
  v27[4] = *v91;
  v27[5] = v92;

  v93 = sub_24F37B534();
  v95 = v94;
  sub_24F1C2344(v90, type metadata accessor for Player);

  v27[6] = v93;
  v27[7] = v95;
LABEL_56:
  v105 = v133;
  v106 = v128;
  sub_24E6364A0(a1, v128);
  v107 = v148;
  v108 = v149(v106, 1, v148);
  v122 = v27;
  if (v108 == 1)
  {
    sub_24E601704(v106, &unk_27F23E1F0);
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v111 = (v106 + *(v107 + 40));
    v109 = *v111;
    v110 = v111[1];

    sub_24F1C2344(v106, type metadata accessor for Player);
  }

  v112 = v140;
  v150 = v140;
  v113 = v141;
  v114 = v138;
  v151 = v141;
  v152 = v139;
  v115 = v137;
  v153 = v138;
  v154 = v137;
  v116 = v147;
  static SocialUser.getHandleSet(contact:contactHandle:includeSocialProfiles:callProviders:)(v147, v109, v110, v132 & 1, &v150, v105);

  v130(v105, 0, 1, v131);
  v117 = v122;
  sub_24F1416E4(v105, v122 + v142);
  v118 = v145;
  sub_24F14246C(v117, v145);
  (*(v143 + 56))(v118, 0, 1, v144);
  sub_24E601704(v135, &unk_27F23E1F0);
  return sub_24F1C2344(v117, type metadata accessor for SocialUser);
}

uint64_t sub_24F1C0F38(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_24F92CDE8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_24F92CDE8();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

BOOL sub_24F1C0FC8(id *a1, void **a2, uint64_t (*a3)(void *, void *))
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 imageDataAvailable];
  v7 = [v5 imageDataAvailable];
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v14 = sub_24E69A5C4(0, &qword_27F223450);
  v12[3] = v14;
  v13[0] = v4;
  v12[0] = v5;
  v9 = v4;
  v10 = v5;
  v11 = a3(v13, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11 == -1;
}

uint64_t SocialUser.init(player:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for SocialUser() + 36);
  v5 = type metadata accessor for CallProviderConversationHandleSet();
  v13 = *(*(v5 - 8) + 56);
  (v13)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = *a1;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v7;
  *(a2 + 2) = v6;
  *(a2 + 3) = v7;
  v8 = (a1 + *(type metadata accessor for Player(0) + 28));
  v9 = v8[1];
  *(a2 + 4) = *v8;
  *(a2 + 5) = v9;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v11 = a1[2];
  v10 = a1[3];
  swift_bridgeObjectRetain_n();

  sub_24F1C2344(a1, type metadata accessor for Player);
  *(a2 + 8) = v11;
  *(a2 + 9) = v10;
  sub_24E601704(&a2[v4], &unk_27F23E170);

  return v13(&a2[v4], 1, 1, v5);
}

uint64_t sub_24F1C11F8(void **__src, void **a2, void **a3, void **a4, uint64_t (*a5)(void *, void *))
{
  v49 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v26;
    }

    v27 = a2;
    v15 = &v5[v13];
    if (v11 < 8 || a2 <= v7)
    {
      goto LABEL_49;
    }

    v42 = v7;
    while (2)
    {
      __dst = v27;
      v28 = v27 - 1;
      --v6;
      v29 = v15;
      v44 = v27 - 1;
      while (1)
      {
        v30 = *--v29;
        v31 = *v28;
        v32 = v30;
        v33 = v31;
        v34 = [v32 imageDataAvailable];
        v35 = [v33 imageDataAvailable];
        if (v34)
        {
          break;
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_39;
        }

        v28 = v44;
LABEL_40:
        if (v6 + 1 != v15)
        {
          *v6 = *v29;
        }

        --v6;
        v15 = v29;
        if (v29 <= v5)
        {
          v15 = v29;
          v27 = __dst;
          goto LABEL_49;
        }
      }

      if ((v35 & 1) == 0)
      {

        v39 = v42;
        v28 = v44;
LABEL_42:
        if (v6 + 1 != __dst)
        {
          *v6 = *v28;
        }

        if (v15 <= v5 || (v27 = v28, v28 <= v39))
        {
          v27 = v28;
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

LABEL_39:
    v48 = sub_24E69A5C4(0, &qword_27F223450);
    v46 = v48;
    v47[0] = v32;
    v45[0] = v33;
    v36 = v32;
    v37 = v33;
    v38 = v49(v47, v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v47);

    v39 = v42;
    v28 = v44;
    if (v38 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v14 = a2;
  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v15 = &v5[v10];
  if (v8 >= 8 && v14 < v6)
  {
    v43 = v15;
    do
    {
      v16 = *v5;
      v17 = *v14;
      v18 = v16;
      v19 = [v17 imageDataAvailable];
      v20 = [v18 imageDataAvailable];
      if (v19)
      {
        if ((v20 & 1) == 0)
        {

          goto LABEL_23;
        }
      }

      else if (v20)
      {

LABEL_18:
        v24 = v5;
        v25 = v7 == v5++;
        v15 = v43;
        if (v25)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v7 = *v24;
        goto LABEL_20;
      }

      v48 = sub_24E69A5C4(0, &qword_27F223450);
      v46 = v48;
      v47[0] = v17;
      v45[0] = v18;
      v21 = v17;
      v22 = v18;
      v23 = v49(v47, v45);
      __swift_destroy_boxed_opaque_existential_1(v45);
      __swift_destroy_boxed_opaque_existential_1(v47);

      if (v23 != -1)
      {
        goto LABEL_18;
      }

LABEL_23:
      v24 = v14;
      v25 = v7 == v14++;
      v15 = v43;
      if (!v25)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
    }

    while (v5 < v15 && v14 < v6);
  }

  v27 = v7;
LABEL_49:
  if (v27 != v5 || v27 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v5, 8 * (v15 - v5));
  }

  return 1;
}

uint64_t sub_24F1C15CC(void **a1, void **a2, uint64_t *a3, uint64_t (*a4)(void *, void *))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_24E86164C(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __src = (v10 + 8 * *v12);
      v17 = (v10 + 8 * *v15);
      v6 = (v10 + 8 * v16);

      sub_24F1C11F8(__src, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_24F1C1774(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id *, void **))
{
  v122 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 < 1)
  {
    swift_retain_n();
LABEL_105:
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    sub_24F1C15CC(&v122, v104, a3, a5);
    if (!v116)
    {
    }

LABEL_108:
  }

  swift_retain_n();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      break;
    }

LABEL_24:
    v25 = a3[1];
    if (v9 >= v25)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_128;
    }

    v26 = v9;
    if (v9 - v8 >= a4)
    {
      goto LABEL_32;
    }

    v27 = (v8 + a4);
    if (__OFADD__(v8, a4))
    {
      goto LABEL_129;
    }

    if (v27 >= v25)
    {
      v27 = a3[1];
    }

    if (v27 < v8)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v9 == v27)
    {
LABEL_32:
      if (v9 < v8)
      {
        goto LABEL_127;
      }

      goto LABEL_33;
    }

    v106 = v7;
    v82 = *a3;
    v83 = *a3 + 8 * v9 - 8;
    v111 = v27;
    v84 = v8 - v9;
    while (2)
    {
      v114 = v26;
      v85 = *(v82 + 8 * v26);
      v86 = v84;
      v87 = v83;
      while (1)
      {
        v88 = *v87;
        v89 = v85;
        v90 = v88;
        v91 = [v89 imageDataAvailable];
        v92 = [v90 imageDataAvailable];
        if (!v91)
        {
          break;
        }

        if (v92)
        {
          goto LABEL_90;
        }

LABEL_91:
        if (!v82)
        {
          goto LABEL_132;
        }

        v96 = *v87;
        v85 = *(v87 + 8);
        *v87 = v85;
        *(v87 + 8) = v96;
        v87 -= 8;
        if (__CFADD__(v86++, 1))
        {
          goto LABEL_84;
        }
      }

      if ((v92 & 1) == 0)
      {
LABEL_90:
        v121 = sub_24E69A5C4(0, &qword_27F223450);
        v119 = v121;
        v120[0] = v89;
        v118[0] = v90;
        v93 = v89;
        v94 = v90;
        v95 = a5(v120, v118);
        __swift_destroy_boxed_opaque_existential_1(v118);
        __swift_destroy_boxed_opaque_existential_1(v120);

        if (v95 != -1)
        {
          goto LABEL_84;
        }

        goto LABEL_91;
      }

LABEL_84:
      v26 = v114 + 1;
      v83 += 8;
      --v84;
      if ((v114 + 1) != v111)
      {
        continue;
      }

      break;
    }

    v9 = v111;
    v7 = v106;
    if (v111 < v8)
    {
      goto LABEL_127;
    }

LABEL_33:
    v113 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_24E615ED8(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v7 = sub_24E615ED8((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v30;
    v31 = v7 + 32;
    v32 = &v7[16 * v29 + 32];
    *v32 = v8;
    *(v32 + 1) = v113;
    v122 = v7;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v29)
    {
      v109 = v7 + 32;
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 4);
          v35 = *(v7 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_53:
          if (v37)
          {
            goto LABEL_118;
          }

          v50 = &v7[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_121;
          }

          v56 = &v31[16 * v33];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_125;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v60 = &v7[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_67:
        if (v55)
        {
          goto LABEL_120;
        }

        v63 = &v31[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_123;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_74:
        if (v33 - 1 >= v30)
        {
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
          goto LABEL_130;
        }

        v71 = *a3;
        if (!*a3)
        {
          goto LABEL_133;
        }

        v72 = v7;
        v73 = &v31[16 * v33 - 16];
        v74 = *v73;
        v75 = v33;
        v76 = &v31[16 * v33];
        v77 = *(v76 + 1);
        v78 = (v71 + 8 * *v73);
        v79 = (v71 + 8 * *v76);
        v80 = (v71 + 8 * v77);

        sub_24F1C11F8(v78, v79, v80, v110, a5);
        if (v116)
        {

          v122 = v72;
          goto LABEL_108;
        }

        if (v77 < v74)
        {
          goto LABEL_113;
        }

        v81 = *(v72 + 2);
        if (v75 > v81)
        {
          goto LABEL_114;
        }

        *v73 = v74;
        *(v73 + 1) = v77;
        if (v75 >= v81)
        {
          goto LABEL_115;
        }

        v30 = v81 - 1;
        memmove(v76, v76 + 16, 16 * (v81 - 1 - v75));
        v7 = v72;
        *(v72 + 2) = v81 - 1;
        v31 = v109;
        if (v81 <= 2)
        {
LABEL_3:
          v122 = v7;
          goto LABEL_4;
        }
      }

      v38 = &v31[16 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_116;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_117;
      }

      v45 = &v7[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_119;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_122;
      }

      if (v49 >= v41)
      {
        v67 = &v31[16 * v33];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_126;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_4:
    v6 = v113;
    v5 = a3[1];
    if (v113 >= v5)
    {
      goto LABEL_105;
    }
  }

  v10 = *a3;
  v120[0] = *(*a3 + 8 * v9);
  v118[0] = *(v10 + 8 * v6);
  v11 = v118[0];
  v12 = v120[0];
  v13 = v11;
  v112 = sub_24F1C0FC8(v120, v118, a5);
  if (v116)
  {

    goto LABEL_108;
  }

  v14 = v8 + 2;
  if (v8 + 2 >= v5)
  {
    goto LABEL_20;
  }

  v15 = (v10 + 8 * v8 + 16);
  while (1)
  {
    v19 = v14;
    v20 = *(v15 - 1);
    v21 = *v15;
    v22 = v20;
    v23 = [v21 imageDataAvailable];
    v24 = [v22 imageDataAvailable];
    if (v23)
    {
      if ((v24 & 1) == 0)
      {

        if (!v112)
        {
          v9 = v19;
          goto LABEL_24;
        }

        goto LABEL_10;
      }
    }

    else if (v24)
    {

      if (v112)
      {
        v14 = v19;
        v9 = v19 - 1;
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v121 = sub_24E69A5C4(0, &qword_27F223450);
    v119 = v121;
    v120[0] = v21;
    v118[0] = v22;
    v16 = v21;
    v17 = v22;
    v18 = a5(v120, v118);
    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(v120);

    if (((v112 ^ (v18 != -1)) & 1) == 0)
    {
      break;
    }

LABEL_10:
    v14 = v19 + 1;
    ++v15;
    if (v5 == v19 + 1)
    {
      v9 = v19;
      v14 = v5;
      goto LABEL_20;
    }
  }

  v14 = v19;
  v9 = v19 - 1;
LABEL_20:
  if (!v112)
  {
LABEL_23:
    v9 = v14;
    goto LABEL_24;
  }

LABEL_21:
  if (v14 >= v8)
  {
    if (v8 <= v9)
    {
      v98 = v14;
      v99 = 8 * v14 - 8;
      v100 = 8 * v8;
      v9 = v98;
      v101 = v8;
      while (1)
      {
        if (v101 != --v98)
        {
          v103 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v102 = *(v103 + v100);
          *(v103 + v100) = *(v103 + v99);
          *(v103 + v99) = v102;
        }

        ++v101;
        v99 -= 8;
        v100 += 8;
        if (v101 >= v98)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_23;
  }

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
LABEL_136:

  __break(1u);
  return result;
}

void sub_24F1C1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_6:
    v25 = a3;
    v9 = *(v6 + 8 * a3);
    v20 = v8;
    v21 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      LODWORD(v10) = [v11 imageDataAvailable];
      v13 = [v12 imageDataAvailable];
      if (v10)
      {
        if ((v13 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      else if (v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v7 = v21 + 8;
        v8 = v20 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24E69A5C4(0, &qword_27F223450);
      v22[3] = v24;
      v23[0] = v11;
      v22[0] = v12;
      v14 = v11;
      v15 = v12;
      v16 = a5(v23, v22);
      __swift_destroy_boxed_opaque_existential_1(v22);
      __swift_destroy_boxed_opaque_existential_1(v23);

      if (v16 != -1)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return;
      }

      v17 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v17;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_24F1C20D0(uint64_t *a1, uint64_t (*a2)(id *, void **))
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E69A5C4(0, &qword_27F223450);
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_24F1C1774(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_24F1C1F5C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24F1C2248(uint64_t *a1, uint64_t (*a2)(id *, void **))
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_24F1C20D0(v8, a2);

  sub_24F92C958();
}

uint64_t sub_24F1C2304()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F1C2344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1C23CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameAchievementsListPageIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1C249C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameAchievementsListPageIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AchievementsPageView()
{
  result = qword_27F23BAF8;
  if (!qword_27F23BAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1C25A0()
{
  type metadata accessor for GameAchievementsListPageIntent();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocalPlayerProvider();
      if (v2 <= 0x3F)
      {
        sub_24F1C2654();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1C2654()
{
  if (!qword_27F22F670)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22F670);
    }
  }
}

uint64_t sub_24F1C26C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v50 = sub_24F9220D8();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = v4;
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB08);
  MEMORY[0x28223BE20](v51);
  v52 = (&v44 - v5);
  v6 = type metadata accessor for AchievementsPageView();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameAchievementsListPageIntent();
  v56[3] = v13;
  v56[4] = sub_24F1C4418(&qword_27F21D338, type metadata accessor for GameAchievementsListPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  sub_24F1C4144(v1, boxed_opaque_existential_1, type metadata accessor for GameAchievementsListPageIntent);
  v15 = v1 + *(v6 + 28);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v55 = v16 & 1;
  }

  else
  {

    sub_24F92BDC8();
    v45 = v9;
    v17 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_24F9257A8();
    v46 = v7;
    v19 = v10;
    v20 = v18;
    v8 = v17;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v16, 0);
    (*(v19 + 8))(v12, v45);
    v16 = v55;
  }

  v46 = v16;
  v21 = *(v13 + 28);
  v22 = *(v2 + *(v6 + 20));
  if (qword_27F2113A0 != -1)
  {
    swift_once();
  }

  v23 = v50;
  v24 = __swift_project_value_buffer(v50, qword_27F39E730);
  sub_24F1C4144(v2, v8, type metadata accessor for AchievementsPageView);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v26 = v2;
  v27 = swift_allocObject();
  sub_24F1C41AC(v8, v27 + v25, type metadata accessor for AchievementsPageView);
  sub_24E615E00(v56, v54);
  v28 = v49;
  (*(v3 + 16))(v49, v24, v23);
  v29 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v30 = (v48 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = v22;
  *(v31 + 3) = sub_24F1C3EA8;
  *(v31 + 4) = v27;
  (*(v3 + 32))(&v31[v29], v28, v23);
  v32 = &v31[v30];
  *v32 = sub_24F1C30F0;
  v32[1] = 0;
  swift_retain_n();
  v33 = v52;
  sub_24EDA3F08(v54, v22, 1, sub_24F1C400C, v31, v52);
  v34 = v33 + *(v51 + 36);
  sub_24E7D14D8(v26 + v21, v34);
  v35 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v34 + *(v35 + 20)) = 0;
  *(v34 + *(v35 + 24)) = 0;
  v36 = type metadata accessor for Page.Background(0);
  v37 = (*(*(v36 - 8) + 48))(v26 + v21, 1, v36) == 1;
  v38 = v37 & v46;
  KeyPath = swift_getKeyPath();
  v40 = v33;
  v41 = v53;
  sub_24F1C40CC(v40, v53);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB10) + 36);
  *v42 = KeyPath;
  *(v42 + 8) = v38;
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_24F1C2C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_24F92A708();
  sub_24F92CA38();
  v12 = v23;
  v13 = v24;
  v14 = type metadata accessor for Page(0);
  sub_24E7D14D8(a1 + *(v14 + 96), v11);
  v15 = sub_24F1C2F14();
  v17 = v16;
  v18 = *(a2 + *(type metadata accessor for AchievementsPageView() + 24));
  swift_getKeyPath();
  v23 = v18;
  sub_24F1C4418(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F1C4144(v18 + v19, v8, type metadata accessor for Player);
  *a3 = v12;
  a3[1] = v13;
  v20 = type metadata accessor for AchievementsCountHeaderItemIntent();
  sub_24E7D14D8(v11, a3 + v20[5]);
  v21 = (a3 + v20[6]);
  *v21 = v15;
  v21[1] = v17;
  sub_24F1C4144(v8, a3 + v20[7], type metadata accessor for Player);
  v25 = &_s14descr2861AC041O5GamesON;
  v26 = sub_24EDA569C();
  LOBYTE(v23) = 0;
  LOBYTE(a2) = sub_24F91FE68();
  sub_24F1C4214(v8, type metadata accessor for Player);
  sub_24E7D1F98(v11);
  result = __swift_destroy_boxed_opaque_existential_1(&v23);
  *(a3 + v20[8]) = a2 & 1;
  return result;
}

uint64_t sub_24F1C2F14()
{
  v1 = type metadata accessor for GameMAPI();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1C4144(v0, v9, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24F1C41AC(v9, v6, type metadata accessor for Game);
    v11 = *v6;

    v12 = type metadata accessor for Game;
    v13 = v6;
LABEL_6:
    sub_24F1C4214(v13, v12);
    return v11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24F1C41AC(v9, v3, type metadata accessor for GameMAPI);
    v11 = *v3;

    v12 = type metadata accessor for GameMAPI;
    v13 = v3;
    goto LABEL_6;
  }

  return *v9;
}

uint64_t sub_24F1C3124()
{
  v1 = type metadata accessor for AchievementsPageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  type metadata accessor for GameSource();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v14 = type metadata accessor for GameMAPI();
    v15 = *(v14 + 28);
    v16 = sub_24F9289E8();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);

    v17 = *(v14 + 40);
    v18 = sub_24F928388();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v5 = type metadata accessor for Game();
      v6 = v5[18];
      v7 = sub_24F9289E8();
      v8 = *(v7 - 8);
      v9 = *(v8 + 8);
      v9(v3 + v6, v7);
      v10 = v5[19];
      if (!(*(v8 + 48))(v3 + v10, 1, v7))
      {
        v9(v3 + v10, v7);
      }

      v11 = v5[21];
      v12 = sub_24F920818();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v3 + v11, 1, v12))
      {
        (*(v13 + 8))(v3 + v11, v12);
      }
    }
  }

LABEL_12:
  v20 = type metadata accessor for GameAchievementsListPageIntent();
  v21 = v3 + *(v20 + 20);
  v22 = type metadata accessor for Player(0);
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v71 = v1;

    v23 = v22[6];
    v24 = sub_24F9289E8();
    v70 = *(v24 - 8);
    v69 = *(v70 + 8);
    v69(v21 + v23, v24);

    if (*(v21 + v22[9] + 8) != 1)
    {
    }

    v25 = v21 + v22[13];
    v26 = type metadata accessor for CallProviderConversationHandleSet();
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v68 = v24;
      v27 = type metadata accessor for CallProviderConversationHandle();
      v28 = *(*(v27 - 8) + 48);
      if (!v28(v25, 1, v27))
      {

        v29 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v70 + 48))(v25 + v29, 1, v68))
        {
          v69(v25 + v29, v68);
        }
      }

      v30 = v25 + *(v26 + 20);
      v31 = v28(v30, 1, v27);
      v24 = v68;
      if (!v31)
      {

        v32 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v70 + 48))(v30 + v32, 1, v68))
        {
          v69(v30 + v32, v68);
        }
      }
    }

    if (*(v21 + v22[15] + 8))
    {
    }

    v33 = v21 + v22[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v1 = v71;
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v33, 1, PlayedTogetherInfo))
    {

      v35 = type metadata accessor for Game();
      v69(v33 + v35[18], v24);
      v36 = v35[19];
      if (!(*(v70 + 48))(v33 + v36, 1, v24))
      {
        v69(v33 + v36, v24);
      }

      v37 = v24;

      v38 = v35[21];
      v39 = sub_24F920818();
      v40 = *(v39 - 8);
      if (!(*(v40 + 48))(v33 + v38, 1, v39))
      {
        (*(v40 + 8))(v33 + v38, v39);
      }

      v24 = v37;
      v1 = v71;
    }

    v41 = v21 + v22[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v41, 1, ChallengeInfo))
    {

      v43 = type metadata accessor for Game();
      v69(v41 + v43[18], v24);
      v44 = v43[19];
      if (!(*(v70 + 48))(v41 + v44, 1, v24))
      {
        v69(v41 + v44, v24);
      }

      v45 = v43[21];
      v46 = sub_24F920818();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v41 + v45, 1, v46))
      {
        (*(v47 + 8))(v41 + v45, v46);
      }
    }
  }

  v48 = v3 + *(v20 + 28);
  v49 = type metadata accessor for Page.Background(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 <= 1)
    {
      if (v51)
      {
        if (v51 == 1)
        {
          v53 = sub_24F9289E8();
          (*(*(v53 - 8) + 8))(v48, v53);
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v55 = sub_24F922348();
          v56 = *(v55 - 8);
          if (!(*(v56 + 48))(v48 + v54, 1, v55))
          {
            (*(v56 + 8))(v48 + v54, v55);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v48, v67);
      }
    }

    else if (v51 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v48, 1, v57))
      {
        (*(v58 + 8))(v48, v57);
      }

      v59 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v60 = type metadata accessor for GSKVideo();
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v51 == 3 || v51 == 4)
    {
      v52 = sub_24F928388();
      (*(*(v52 - 8) + 8))(v48, v52);
    }
  }

  sub_24E83C01C(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_24F1C3EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F1C2C84(a1, v6, a2);
}

uint64_t sub_24F1C3F28()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1C400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24EDA52F8(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_24F1C40CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BB08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1C4144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1C41AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1C4214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F1C4278()
{
  result = qword_27F23BB18;
  if (!qword_27F23BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BB10);
    sub_24F1C4330();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BB18);
  }

  return result;
}

unint64_t sub_24F1C4330()
{
  result = qword_27F23BB20;
  if (!qword_27F23BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BB08);
    sub_24E602068(qword_27F23BB28, &qword_27F22F6A8);
    sub_24F1C4418(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BB20);
  }

  return result;
}

uint64_t sub_24F1C4418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F1C44BC()
{
  sub_24F92D068();
  sub_24F0A2C8C(v2, *v0);
  return sub_24F92D0B8();
}

uint64_t sub_24F1C4504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-1] - v11;
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D21CA8], v13, v15);
  sub_24F92A9C8();
  (*(v14 + 8))(v17, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  sub_24F928EF8();
  sub_24E60169C(v12, v9, &qword_27F220FF0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_24E601704(v12, &qword_27F220FF0);
    return sub_24E601704(v9, &qword_27F220FF0);
  }

  else
  {
    v22[3] = type metadata accessor for Action();
    v22[4] = sub_24F1C53FC(&qword_27F216DE8, type metadata accessor for Action);
    v22[0] = v21;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);

    sub_24F929288();

    (*(v4 + 8))(v6, v3);
    sub_24E601704(v12, &qword_27F220FF0);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return (*(v19 + 8))(v9, v18);
  }
}

uint64_t sub_24F1C48A0()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0, v2);
  sub_24F92A9C8();
  return (*(v1 + 8))(v4, v0);
}

void sub_24F1C498C()
{
  type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError();
  swift_getWitnessTable();
  v0 = swift_allocError();
  *v1 = 1;
  sub_24F92A9A8();
}

uint64_t sub_24F1C4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v6 = sub_24F92A9E8();
  v7 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId + 8);
  if (v8 && (v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId + 8)) != 0)
  {
    v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
    v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
    v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction);
    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v7;
      v11[3] = a2;
      v11[4] = v10;

      v12 = sub_24F1C53F0;
    }

    else
    {
      v12 = sub_24F1C51B0;
      v11 = v6;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = v7;
    v16 = v15;
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    memset(v52, 0, sizeof(v52));
    sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &v42, &qword_27F2129B0);
    v17 = *(&v43 + 1);

    swift_retain_n();
    v35 = v11;

    if (v17)
    {
      sub_24E601704(v52, qword_27F23BBB0);
      sub_24E612B0C(&v42, &v47);
      sub_24E612B0C(&v47, &v52[1]);
      v52[0] = a2;
      *(&v53 + 1) = v39;
      *&v54 = v8;
      *(&v54 + 1) = v37;
      v55 = v9;

      v18 = v9;
    }

    else
    {
      v18 = v9;
      sub_24E601704(&v42, &qword_27F2129B0);
    }

    v36 = v7;
    type metadata accessor for CommerceDialogHandler();
    sub_24F928FD8();
    sub_24F92A758();
    v19 = v47;
    type metadata accessor for ArcadeSubscriptionManager();
    sub_24F92A758();
    v20 = v47;
    v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay);
    v22 = *(v47 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
    *(v47 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler) = v19;

    sub_24E60169C(v52, &v42, qword_27F23BBB0);
    if (v42)
    {
      v50 = v45;
      v51 = v46;
      v48 = v43;
      v49 = v44;
      v47 = v42;
      v23 = v19;
      ArcadeSubscriptionDecorator.decorate()();
      v24 = swift_allocObject();
      v24[2] = v20;
      v24[3] = v21;
      v24[4] = v12;
      v24[5] = v35;
      v24[6] = sub_24F1C51F0;
      v24[7] = v16;
      v25 = swift_allocObject();
      v25[2] = v20;
      v25[3] = v39;
      v25[4] = v8;
      v25[5] = v37;
      v25[6] = v18;
      v25[7] = v21;
      v25[8] = v12;
      v25[9] = v35;
      v25[10] = sub_24F1C51F0;
      v25[11] = v16;
      v38 = sub_24E74EC40();

      v26 = v20;
      sub_24E5FCA4C(sub_24F1C51F0);

      v27 = v26;

      sub_24E5FCA4C(sub_24F1C51F0);
      v28 = sub_24F92BEF8();
      *(&v43 + 1) = v38;
      *&v44 = MEMORY[0x277D225C0];
      *&v42 = v28;
      sub_24F92A958();

      sub_24F1C5354(&v47);
      __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    else
    {
      v29 = v19;
      sub_24E601704(&v42, qword_27F23BBB0);
      *&v42 = v37;
      *(&v42 + 1) = v18;
      *&v47 = v12;
      *(&v47 + 1) = v35;
      *&v48 = sub_24F1C51F0;
      *(&v48 + 1) = v16;
      sub_24F210878(v39, v8, &v42, 0, v21, &v47);
    }

    __swift_project_boxed_opaque_existential_1(&v20[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v20[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    *(&v48 + 1) = MEMORY[0x277D837D0];
    *&v47 = v39;
    *(&v47 + 1) = v8;

    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0);
    sub_24F92A588();

    v30 = swift_allocObject();
    v31 = &v20[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[8];
    *(v30 + 16) = *v31;
    *(v30 + 24) = v33;
    v40 = v30;
    v41 = 64;
    sub_24EB6CE50(v32, v33);
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v40, 1, &v42);

    sub_24E824448(sub_24F1C51F0);

    sub_24E601704(v52, qword_27F23BBB0);
    sub_24EB6CE70(v40, v41);
    sub_24EB6CE70(v42, BYTE8(v42));
    return v36;
  }

  else
  {
    type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError();
    swift_getWitnessTable();
    v13 = swift_allocError();
    *v14 = 0;
    sub_24F92A9A8();
  }

  return v7;
}

uint64_t sub_24F1C51B8()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C51F8()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F1C5234()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F1C52A4()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F1C53A8()
{

  return swift_deallocObject();
}

uint64_t sub_24F1C53FC(unint64_t *a1, void (*a2)(uint64_t))
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

JSValue __swiftcall OnDeviceAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v43 = *(v1 + 64);
  v44 = *(v1 + 32);
  v41 = *(v1 + 80);
  v42 = *(v1 + 56);
  v39 = *(v1 + 88);
  v40 = *(v1 + 72);
  v37 = *(v1 + 104);
  v38 = *(v1 + 96);
  v36 = *(v1 + 112);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_35;
  }

  isa = result.super.isa;
  v45 = v4;
  v46 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_24F92C328();
  v45 = v6;
  v46 = v5;

  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_24F92C328();
  v45 = v44;
  v46 = v7;

  v14 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_24F92C328();
  if (v8 <= 1)
  {
    if (v8)
    {
      v15 = 0xED000073746C7573;
      v16 = 0x6552686372616573;
    }

    else
    {
      v15 = 0xED0000676E69646ELL;
      v16 = 0x614C686372616573;
    }
  }

  else if (v8 == 2)
  {
    v15 = 0xE500000000000000;
    v16 = 0x7961646F74;
  }

  else if (v8 == 3)
  {
    v15 = 0xEF4C414D59656761;
    v16 = 0x50746375646F7270;
  }

  else
  {
    v15 = 0x800000024FA41CD0;
    v16 = 0xD00000000000001DLL;
  }

  v45 = v16;
  v46 = v15;
  v17 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_38;
  }

  sub_24F92C328();
  v45 = v42;
  v46 = v43;

  v18 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_24F92C328();
  v45 = v40;
  v46 = v41;

  v19 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_24F92C328();
  if (v39)
  {
    v45 = v39;

    v20 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    v21 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F2218D8);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_41;
  }

  sub_24F92C328();
  v24 = v38;
  if (v38)
  {
    v45 = v38;
    v25 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    v24 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F2218D8);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_42;
  }

  sub_24F92C328();
  v28 = v37;
  if (v37)
  {
    v45 = v37;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v28 = sub_24F92CDE8();
    sub_24E601704(&v45, &unk_27F2285F0);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v31)
  {
    goto LABEL_43;
  }

  sub_24F92C328();
  v32 = v36;
  if (v36)
  {
    v45 = v36;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC38);
    v32 = sub_24F92CDE8();
    sub_24E601704(&v45, &qword_27F23BC38);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v35)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_44:
  __break(1u);
  return result;
}

__n128 OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v14 = *a5;
  v15 = a5[1];
  v16 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v14;
  *(a9 + 40) = v15;
  *(a9 + 48) = v16;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t OnDeviceAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvert.impressionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvert.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t OnDeviceAdvert.metadata.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t OnDeviceAdvert.privacy.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

char *FlowBackAction.__allocating_init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a3;
  v6 = sub_24F91F6B8();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = swift_allocObject();
  sub_24F928A98();
  sub_24F92A668();
  sub_24E65E064(a1, v31);
  (*(v10 + 16))(&v11[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], a4, v9);
  v12 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = &v11[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = &v11[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v31, &v28);
  if (*(&v29 + 1))
  {
    v16 = v29;
    *v15 = v28;
    *(v15 + 1) = v16;
    *(v15 + 4) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v23 + 8))(v8, v6);
    v26 = v17;
    v27 = v19;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830);
  }

  (*(v10 + 8))(a4, v9);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v31, &qword_27F235830);
  v20 = v25;
  *(v11 + 2) = v24;
  *(v11 + 3) = v20;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  return v11;
}

void *FlowBackAction.init(id:title:actionMetrics:dismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a6;
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v41 = a1;
  v38 = sub_24F91F6B8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = sub_24F92A6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928A98();
  v22 = v12;
  sub_24F92A668();
  v23 = v21;
  v24 = v42;
  v25 = v18;
  v26 = v41;
  (*(v19 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v23, v25);
  sub_24E65E064(v26, v53);
  (*(v14 + 16))(v16, v24, v13);
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_24E65E064(v53, &v47);
  if (*(&v48 + 1))
  {
    v50 = v47;
    v51 = v48;
    v52 = v49;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v37 + 8))(v9, v38);
    v45 = v29;
    v46 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830);
  }

  (*(v14 + 8))(v24, v13);
  sub_24E601704(v26, &qword_27F235830);
  sub_24E601704(v53, &qword_27F235830);
  v32 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v52;
  v33 = v51;
  *v32 = v50;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v22, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v34 = v44;
  v7[2] = v43;
  v7[3] = v34;
  v7[4] = 0;
  v7[5] = 0;
  (*(v14 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v7;
}

char *FlowBackAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v37 = v2;
  v30 = *v3;
  v5 = sub_24F9285B8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v31 = sub_24F92A6B8();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v39 = a1;
  sub_24F928398();
  sub_24F1C6CA0();
  sub_24F928248();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v18, v11);
  if (v38)
  {
    v30 = v19;
    sub_24F928A98();
    sub_24F92A668();
    (*(v8 + 32))(v37 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v10, v31);
    v20 = v39;
    (*(v12 + 16))(v15, v39, v11);
    v22 = v34;
    v21 = v35;
    v23 = v32;
    v24 = v36;
    (*(v34 + 16))(v32, v36, v35);
    v25 = v33;
    v26 = Action.init(deserializing:using:)(v15, v23);
    if (!v25)
    {
      v15 = v26;
    }

    (*(v22 + 8))(v24, v21);
    v30(v20, v11);
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 0x617373696D736964;
    v28 = v30;
    v27[1] = 0xE90000000000006CLL;
    v27[2] = v28;
    (*(*(v15 - 1) + 104))(v27, *MEMORY[0x277D22530], v15);
    swift_willThrow();
    (*(v34 + 8))(v36, v35);
    v19(v39, v11);
    swift_deallocPartialClassInstance();
  }

  return v15;
}

uint64_t FlowBackAction.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F1C69DC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v2 = sub_24F92A6B8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FlowBackAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FlowBackAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v4 = sub_24F92A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_24F1C6CA0()
{
  result = qword_27F23BC40;
  if (!qword_27F23BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BC40);
  }

  return result;
}

uint64_t type metadata accessor for FlowBackAction()
{
  result = qword_27F23BC48;
  if (!qword_27F23BC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1C6D48()
{
  result = sub_24F92A6B8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *SearchHintSet.__allocating_init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  v15 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(&v14[v15], a4, v16);
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v14[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v14;
}

char *SearchHintSet.init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  v12 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v13 = sub_24F928818();
  (*(*(v13 - 8) + 32))(&v7[v12], a4, v13);
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v7[OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v7;
}

uint64_t SearchHintSet.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchHintSet.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchHintSet.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v64 = *v3;
  v5 = sub_24F928818();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24F9285B8();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v58 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v60 = (&v53 - v9);
  MEMORY[0x28223BE20](v10);
  v63 = (&v53 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v53 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = sub_24F92AC28();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v67 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v70 = *(v16 + 8);
  v68 = v16 + 8;
  v70(v22, v15);
  if (v24[6](v14, 1, v23) == 1)
  {
    sub_24E8F2EE8(v14);
    v30 = sub_24F92AC38();
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v31 = 0x73746E6968;
    v32 = v64;
    v31[1] = 0xE500000000000000;
    v31[2] = v32;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v69 + 8))(v71, v72);
    v70(v67, v15);
    v33 = v66;
LABEL_6:
    type metadata accessor for SearchHintSet();
    swift_deallocPartialClassInstance();
    return v33;
  }

  v64 = v15;
  v24[4](v29, v14, v23);
  v24[2](v26, v29, v23);
  v34 = v69;
  v35 = v71;
  v55 = *(v69 + 16);
  v55(v63, v71, v72);
  type metadata accessor for SearchAction();
  sub_24EAA4E04(&qword_27F226C48, type metadata accessor for SearchAction);
  v36 = v65;
  v37 = sub_24F92B688();
  if (v36)
  {
    (*(v34 + 8))(v35, v72);
    v70(v67, v64);
    (v24[1])(v29, v23);
    v33 = v66;
    goto LABEL_6;
  }

  v54 = v29;
  v63 = v24;
  v65 = v23;
  v33 = v66;
  *(v66 + 16) = v37;
  v38 = v62;
  sub_24F928398();
  v39 = sub_24F928348();
  v41 = v40;
  v42 = v64;
  v70(v38, v64);
  *(v33 + 24) = v39;
  *(v33 + 32) = v41;
  v43 = v71;
  sub_24F928398();
  v55(v60, v43, v72);
  v44 = v61;
  sub_24F928788();
  (*(v56 + 32))(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics, v44, v57);
  type metadata accessor for PageRenderMetricsEvent();
  v46 = v62;
  sub_24F928398();
  v55(v58, v43, v72);
  sub_24EAA4E04(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
  sub_24F929548();
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageRenderEvent) = v73;
  v61 = type metadata accessor for Action();
  sub_24F928398();
  v47 = v71;
  v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v71);
  v49 = v46;
  v50 = v46;
  v51 = v70;
  v70(v49, v42);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchClearAction) = v48;
  sub_24F928398();
  v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v50, v47);
  (*(v69 + 8))(v47, v72);
  v51(v67, v42);
  v51(v50, v42);
  v63[1](v54, v65);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_searchCancelAction) = v52;
  return v33;
}

uint64_t type metadata accessor for SearchHintSet()
{
  result = qword_27F23BC58;
  if (!qword_27F23BC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHintSet.ghostHintTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchHintSet.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchHintSet.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchHintSet.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1C7C20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SearchHintSet();
  v7 = swift_allocObject();
  result = SearchHintSet.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1C7CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13SearchHintSet_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F1C7D4C()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1C7E88@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC70);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC78);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  if (*(v12 + 48))
  {
    v14 = sub_24F924C98();
  }

  else
  {
    v14 = sub_24F924C88();
  }

  *v5 = v14;
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC80);
  sub_24F1C81B0(v12, v13, &v5[*(v15 + 44)]);
  v16 = *(v12 + 48) == 0;
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v5, v8, &qword_27F23BC68);
  v18 = &v8[*(v6 + 36)];
  *v18 = KeyPath;
  v18[8] = v16;
  if (*(v12 + 48))
  {
    sub_24F927628();
  }

  else
  {
    sub_24F927618();
  }

  sub_24F9242E8();
  sub_24E6009C8(v8, v11, &qword_27F23BC70);
  v19 = &v11[*(v9 + 36)];
  v20 = v27[5];
  *(v19 + 4) = v27[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v27[6];
  v21 = v27[1];
  *v19 = v27[0];
  *(v19 + 1) = v21;
  v22 = v27[3];
  *(v19 + 2) = v27[2];
  *(v19 + 3) = v22;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC88) + 36);
  v24 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v25 = type metadata accessor for GradientBackground(0);
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = xmmword_24F93CFD0;
  *(v23 + 32) = 0x4030000000000000;
  *(v23 + 40) = 257;
  return sub_24E6009C8(v11, a1, &qword_27F23BC78);
}

uint64_t sub_24F1C81B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC90);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BC98);
  sub_24F1C8428(a1, a2 & 1, &v12[*(v13 + 44)]);
  v14 = sub_24F925808();
  sub_24F923318();
  v15 = &v12[*(v7 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  if (a2)
  {
    v20 = *(a1 + 40);

    v21 = sub_24F9257F8();
    sub_24F923318();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    LOBYTE(v38[0]) = 0;
    v30 = v21;
    v31 = 1;
  }

  else
  {
    v20 = 0;
    v30 = 0;
    v31 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
  }

  sub_24E60169C(v12, v9, &qword_27F23BC90);
  sub_24E60169C(v9, a3, &qword_27F23BC90);
  v32 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BCA0) + 48));
  *&v35 = v20;
  *(&v35 + 1) = v31;
  *&v36 = v30;
  *(&v36 + 1) = v23;
  *v37 = v25;
  *&v37[8] = v27;
  *&v37[16] = v29;
  v37[24] = 0;
  v33 = v36;
  *v32 = v35;
  v32[1] = v33;
  v32[2] = *v37;
  *(v32 + 41) = *&v37[9];
  sub_24E60169C(&v35, v38, &qword_27F23BCA8);
  sub_24E601704(v12, &qword_27F23BC90);
  v38[0] = v20;
  v38[1] = v31;
  v38[2] = v30;
  v38[3] = v23;
  v38[4] = v25;
  v38[5] = v27;
  v38[6] = v29;
  v39 = 0;
  sub_24E601704(v38, &qword_27F23BCA8);
  return sub_24E601704(v9, &qword_27F23BC90);
}