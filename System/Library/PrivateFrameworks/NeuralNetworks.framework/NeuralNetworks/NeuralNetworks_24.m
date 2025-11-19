uint64_t sub_25BC4FE6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result == 2)
  {
    v5 = *(result + 8);
    v4 = *(result + 16);
    v6 = *(result + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v9;
    return sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_25BC4FF14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result == 3)
  {
    v5 = *(result + 8);
    v4 = *(result + 16);
    v6 = *(result + 40);
    v7 = *(a2 + 240);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v9;
    return sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_25BC4FFBC()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_25BABF0A8((v0 + 4));
  sub_25BA9AC78((v0 + 11));
  v3 = v0[41];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_25BC4FFFC()
{
  sub_25BC4FFBC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC500B0()
{
  sub_25BCB79CC();
  sub_25BADE7BC(v2, *v0);
  return sub_25BCB7A3C();
}

void sub_25BC50110()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v11 = *(v0 + 136);
    }

    v2 = sub_25BCB749C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25BB00520();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = OUTLINED_FUNCTION_26_0();
          v5 = MEMORY[0x25F8779B0](v4);
        }

        else
        {
          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = *(v5 + 152);
        v7 = *(v5 + 160);
        sub_25BCB617C();

        v9 = *(v12 + 16);
        v8 = *(v12 + 24);
        if (v9 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_81(v8);
          sub_25BB00520();
        }

        ++v3;
        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_25BC50248()
{
  OUTLINED_FUNCTION_25_28();
  v7 = OUTLINED_FUNCTION_46_20();
  v9 = sub_25BAA5EA0(v7, v8);
  v10 = v3[1];
  *(v1 + 56) = *v3;
  *(v1 + 16) = v9;
  *(v1 + 24) = v11;
  *(v1 + 32) = v12;
  *(v1 + 120) = v6;
  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 72) = v10;
  *(v1 + 88) = v3[2];
  *(v1 + 98) = *(v3 + 42);
  return v1;
}

void sub_25BC502BC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  v3 = v2;
  swift_beginAccess();
  v4 = sub_25BAAF54C(*(v0 + 120));
  if (v4 < 0)
  {
    goto LABEL_38;
  }

  v5 = v4;
  if (v4)
  {
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      swift_beginAccess();
      v8 = *(v1 + 120);
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v6 - 4);
      }

      else
      {
        if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }

        v9 = *(v8 + 8 * v6);
      }

      swift_endAccess();
      v10 = sub_25BAC4018();

      if (v10 == sub_25BAC4018())
      {
        swift_beginAccess();
        v11 = *(v1 + 120);

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 120) = v11;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
        {
          v11 = sub_25BBF1390(v11);
          *(v1 + 120) = v11;
        }

        v13 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v14 = *(v13 + 8 * v6);
        *(v13 + 8 * v6) = v3;
        *(v1 + 120) = v11;
        swift_endAccess();
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  swift_beginAccess();
  v15 = sub_25BAAF54C(*(v1 + 128));
  if (v15 < 0)
  {
    goto LABEL_39;
  }

  v16 = v15;
  if (v15)
  {
    v17 = 4;
    do
    {
      v18 = v17 - 4;
      swift_beginAccess();
      v19 = *(v1 + 128);
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v17 - 4);
      }

      else
      {
        if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v20 = *(v19 + 8 * v17);
      }

      swift_endAccess();
      v21 = sub_25BAC4018();

      if (v21 == sub_25BAC4018())
      {
        swift_beginAccess();
        v22 = *(v1 + 128);

        v23 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 128) = v22;
        if (!v23 || (v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
        {
          v22 = sub_25BBF1390(v22);
          *(v1 + 128) = v22;
        }

        v24 = v22 & 0xFFFFFFFFFFFFFF8;
        if (v18 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v25 = *(v24 + 8 * v17);
        *(v24 + 8 * v17) = v3;
        *(v1 + 128) = v22;
        swift_endAccess();
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_79();
}

void *sub_25BC5056C()
{
  v1 = v0[4];

  v2 = v0[6];
  sub_25BA9D148(v0[5]);
  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  return v0;
}

uint64_t sub_25BC505AC()
{
  sub_25BC5056C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC505F8()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  return sub_25BCB617C();
}

uint64_t sub_25BC50654(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BC506A0()
{
  sub_25BCB625C();
}

void sub_25BC5070C()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890();
}

uint64_t sub_25BC50834()
{
  OUTLINED_FUNCTION_15_38();
  v1 = OUTLINED_FUNCTION_15();
  sub_25BC50860(v1);
  return v0;
}

uint64_t *sub_25BC50860(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_27_28();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_27_28();
  v8 = *(v7 + 112);
  v9 = sub_25BCB6ABC();
  OUTLINED_FUNCTION_11_1(v6);
  (*(v10 + 8))(a1, v6);
  v2[2] = v9;
  return v2;
}

void sub_25BC508F0()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_7_50();
  v4 = *(v3 + 112);
  v5 = *(v4 + 8);
  v6 = sub_25BCB754C();
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  OUTLINED_FUNCTION_26_0();
  v14 = sub_25BCB6ABC();
  v15 = *(v0 + 16);
  if (v14 == v15)
  {
    MEMORY[0x25F876DF0](v2, v5);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    v23[1] = v4;
    WitnessTable = swift_getWitnessTable();
    sub_25BAB2B20(sub_25BC50B5C, 0, v6, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);
    (*(v8 + 8))(v13, v6);
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    OUTLINED_FUNCTION_16_42();
    MEMORY[0x25F876C90](v19 + 4, v20 | 0x8000000000000000);
    v24 = v15;
    v21 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v21);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000017);
    OUTLINED_FUNCTION_26_0();
    v24 = sub_25BCB6ABC();
    v22 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v22);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_122_0();
    v23[0] = 411;
    OUTLINED_FUNCTION_6_52();
    __break(1u);
  }
}

uint64_t sub_25BC50B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v4 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v4);

  *a2 = 0x5F7475706E69;
  a2[1] = v6;
  a2[2] = v3;
}

uint64_t sub_25BC50C10()
{
  OUTLINED_FUNCTION_15_38();
  v1 = OUTLINED_FUNCTION_15();
  sub_25BC50C3C(v1);
  return v0;
}

uint64_t *sub_25BC50C3C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_27_28();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_27_28();
  v8 = *(v7 + 112);
  OUTLINED_FUNCTION_27_28();
  v10 = *(v9 + 120);
  OUTLINED_FUNCTION_27_28();
  v21 = *(v11 + 128);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_28_26();
  v18 = sub_25BAB2B20(v12, v13, v6, v14, v15, v8, v16, v17);

  OUTLINED_FUNCTION_11_1(v6);
  (*(v19 + 8))(a1, v6);
  v2[2] = v18;
  return v2;
}

uint64_t sub_25BC50D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  (*(v6 + 16))(v17 - v12, v11);
  v14 = *(v5 + 48);
  v15 = *&v13[v14];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v9, v13);
  *&v9[v14] = v15;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

void sub_25BC50F34()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v2 = *v0;
  v93 = v2;
  v94 = v3;
  v4 = v2[15];
  v5 = v2[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v84 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v92 = &j - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v83 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v99 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &j - v20;
  MEMORY[0x28223BE20](v21);
  v87 = &j - v22;
  v23 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48_6();
  v97 = sub_25BCB6E8C();
  v24 = OUTLINED_FUNCTION_2(v97);
  v88 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v96 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v95 = &j - v31;
  v32 = *(v2[14] + 8);
  j = sub_25BCB754C();
  OUTLINED_FUNCTION_11_1(j);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  v36 = v32;
  v98 = sub_25BCB753C();
  OUTLINED_FUNCTION_2(v98);
  v82 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v40);
  v42 = &j - v41;
  v43 = OUTLINED_FUNCTION_42_20();
  v90 = v1[2];
  if (v43 != sub_25BCB681C())
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_42_20();
  sub_25BAFD4A8();
  v100 = v44;
  MEMORY[0x25F876DF0](v5, v36);
  sub_25BCB751C();
  v94 = (v88 + 4);
  v88 = (v84 + 4);
  v89 = AssociatedTypeWitness;
  v45 = (v84 + 1);
  v46 = (v83 + 2);
  ++v83;
  v84 = v46;
  v85 = v23;
  for (i = v42; ; v42 = i)
  {
    sub_25BCB752C();
    v47 = v95;
    v48 = *v94;
    v49 = OUTLINED_FUNCTION_5_17();
    v50(v49);
    if (__swift_getEnumTagSinglePayload(v47, 1, v23) == 1)
    {
      break;
    }

    v51 = *v47;
    v52 = *(v23 + 48);
    v53 = *(TupleTypeMetadata2 + 48);
    v54 = v45;
    v55 = *(v47 + v52 + v53);
    v56 = TupleTypeMetadata2;
    v57 = *v88;
    v58 = v91;
    (*v88)(v91);
    *&v58[v53] = v55;
    v59 = *(TupleTypeMetadata2 + 48);
    v60 = v87;
    (v57)(v87, v58, AssociatedTypeWitness);
    *&v60[v59] = v55;
    v45 = v54;
    sub_25BCB690C();
    v61 = *(v93[16] + 8);
    OUTLINED_FUNCTION_110();
    LOBYTE(v51) = sub_25BCB630C();
    v62 = *v54;
    v63 = OUTLINED_FUNCTION_35_8();
    v62(v63);
    if ((v51 & 1) == 0)
    {
      OUTLINED_FUNCTION_122_0();
      for (j = 438; ; j = 432)
      {
        sub_25BCB74CC();
        __break(1u);
LABEL_11:
        OUTLINED_FUNCTION_17_39();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_16_42();
        MEMORY[0x25F876C90](v77 + 4, v78 | 0x8000000000000000);
        v101 = sub_25BCB681C();
        OUTLINED_FUNCTION_92();
        v79 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v79);

        OUTLINED_FUNCTION_8_3();
        MEMORY[0x25F876C90](0xD000000000000017);
        v101 = OUTLINED_FUNCTION_42_20();
        OUTLINED_FUNCTION_92();
        v80 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v80);

        OUTLINED_FUNCTION_29_28();
        OUTLINED_FUNCTION_122_0();
      }
    }

    OUTLINED_FUNCTION_17_39();
    OUTLINED_FUNCTION_26_0();
    sub_25BCB784C();
    v65 = v102;
    v64 = v103;
    v66 = v99;
    (*v84)(v99, v60, TupleTypeMetadata2);
    v67 = *(v66 + *(TupleTypeMetadata2 + 48));
    v69 = *(v100 + 16);
    v68 = *(v100 + 24);
    if (v69 >= v68 >> 1)
    {
      OUTLINED_FUNCTION_81(v68);
      sub_25BAFD4A8();
      v100 = v76;
    }

    v70 = *v83;
    v71 = OUTLINED_FUNCTION_92();
    v72(v71);
    v73 = v99;
    v74 = v100;
    *(v100 + 16) = v69 + 1;
    v75 = (v74 + 24 * v69);
    v75[4] = v65;
    v75[5] = v64;
    v75[6] = v67;
    TupleTypeMetadata2 = v56;
    AssociatedTypeWitness = v89;
    v62(v73);
    v23 = v85;
  }

  (*(v82 + 8))(v42, v98);
  sub_25BAF9928(v100);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC5169C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  v2 = v1;
  OUTLINED_FUNCTION_7_50();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_7_50();
  v6 = *(v5 + 120);
  OUTLINED_FUNCTION_37_22();
  sub_25BCB617C();
  OUTLINED_FUNCTION_48_6();
  sub_25BCB616C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_22();
  sub_25BCB6A5C();
  v7 = *(v0 + 16);
  v8 = sub_25BCB6A0C();

  if (v8)
  {
    v11 = *(v0 + 24);
    MEMORY[0x28223BE20](v9);
    v10 = *(v2 + 112);
    OUTLINED_FUNCTION_48_6();
    sub_25BCB68CC();
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    sub_25BCB65BC();

    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE4B80);
    OUTLINED_FUNCTION_48_6();
    sub_25BCB6A4C();
    swift_getWitnessTable();
    sub_25BCB785C();
    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000010);
    OUTLINED_FUNCTION_92();
    sub_25BCB617C();
    swift_getWitnessTable();
    sub_25BCB785C();

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_6_52();
    __break(1u);
  }
}

uint64_t sub_25BC51954@<X0>(void *a1@<X8>)
{
  result = sub_25BCB61BC();
  if (v4)
  {
    result = sub_25BCB784C();
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0;
  }

  *a1 = 0;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_25BC519E8()
{
  sub_25BC520C4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC51A84()
{
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  sub_25BC51AC0();
  return v0;
}

void sub_25BC51AC0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  OUTLINED_FUNCTION_5_54();
  v3 = *(v2 + 112);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_7_50();
  v6 = *(v5 + 104);
  v7(v6, v3);
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_28_26();
  v16 = sub_25BAB2B20(v10, v11, v9, AssociatedTypeWitness, v12, v13, v14, v15);

  *(v1 + 24) = v16;
  sub_25BCB68CC();
  swift_getAssociatedConformanceWitness();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v17 = sub_25BCB6A5C();
  OUTLINED_FUNCTION_11_1(v6);
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_11_3();
  v21(v20);
  *(v1 + 16) = v17;
  OUTLINED_FUNCTION_79();
}

uint64_t sub_25BC51CA0()
{
  OUTLINED_FUNCTION_5_54();
  v2 = *(*(v1 + 112) + 32);
  OUTLINED_FUNCTION_7_50();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_5_17();
  v6(v5);
  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_49_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_11_3();
  MEMORY[0x25F876DF0](v7);
  OUTLINED_FUNCTION_49_0();
  sub_25BCB754C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  v8 = sub_25BCB65BC();

  return v8;
}

uint64_t sub_25BC51DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = *(*a2 + 112);
  v7 = *(*a2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v28 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(swift_getTupleTypeMetadata2() + 48);
  v18 = a2[3];
  v19 = *a1;
  sub_25BCB690C();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(a1) = sub_25BCB630C();
  v21 = *(v12 + 8);
  v21(v16, AssociatedTypeWitness);
  if (a1)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_25BCB784C();
    v22 = v32;
    v23 = v33;
    v24 = TupleTypeMetadata2;
    sub_25BCB690C();
    v25 = *&v11[*(v24 + 48)];
    v26 = v31;
    *v31 = v22;
    v26[1] = v23;
    v26[2] = v25;
    return (v21)(v11, AssociatedTypeWitness);
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC52094()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
}

uint64_t sub_25BC520C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_25BC52118()
{
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_15();
  sub_25BC52144();
  return v0;
}

void sub_25BC52144()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v3 = *v0;
  v71 = v0;
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  sub_25BCB7BDC();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_161_0();
  v74 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_2(v74);
  v67 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_25BCB604C();
  v68 = v6;
  v69 = v4;
  v18 = *(v6 + 16);
  v70 = v2;
  OUTLINED_FUNCTION_49_0();
  v19();
  v73 = v17;
  sub_25BAB1090(v11, 0, 0, v17);
LABEL_2:
  sub_25BAB173C(v74, &v81);
  if (!v81)
  {
    (*(v68 + 8))(v70, v69);
    (*(v67 + 8))(v73, v74);
    v71[2] = v87;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v77 = v81;
  v20 = v82;
  v21 = v82[2];
  sub_25BCB617C();
  v22 = v20;
  if (v21 <= 1)
  {
    goto LABEL_13;
  }

  v23 = sub_25BBFCCC8(1, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if ((v28 & 1) == 0)
  {
    goto LABEL_5;
  }

  v31 = v20;
  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (!__OFSUB__(v29 >> 1, v27))
  {
    if (v33 == (v29 >> 1) - v27)
    {
      v22 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v20 = v31;
      if (v22)
      {
LABEL_13:
        v76 = v20;
        v34 = 0;
        v80 = *(v22 + 16);
        v35 = v22 + 40;
        v78 = MEMORY[0x277D84F90];
        v79 = v22;
        v75 = v22 + 40;
LABEL_14:
        for (i = (v35 + 16 * v34); ; i += 2)
        {
          if (v80 == v34)
          {

            v81 = v78;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
            OUTLINED_FUNCTION_9_48();
            OUTLINED_FUNCTION_161_0();
            sub_25BB30E7C(v64, v65, v66);
            sub_25BCB627C();
            OUTLINED_FUNCTION_30();

            v81 = i;
            v82 = &v81;
            v83 = v77;
            sub_25BCB68CC();
            sub_25BCB687C();

            goto LABEL_2;
          }

          if (v34 >= *(v22 + 16))
          {
            break;
          }

          v37 = *(i - 1);
          if ((*i & 0x2000000000000000) != 0)
          {
            v38 = HIBYTE(*i) & 0xFLL;
          }

          else
          {
            v38 = v37 & 0xFFFFFFFFFFFFLL;
          }

          v39 = 7;
          if (((*i >> 60) & ((v37 & 0x800000000000000) == 0)) != 0)
          {
            v39 = 11;
          }

          v40 = v39 | (v38 << 16);
          v41 = *i;
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_44_16();
          sub_25BCB654C();

          v42 = sub_25BCB6EBC();
          v44 = v43;

          sub_25BCB617C();
          v45 = OUTLINED_FUNCTION_44_16();
          if (v46)
          {
            v45 = v40;
          }

          if (4 * v38 < v45 >> 14)
          {
            goto LABEL_38;
          }

          v47 = sub_25BCB654C();
          v49 = v48;
          v51 = v50;
          v53 = v52;

          v85 = v42;
          v86 = v44;
          v81 = v47;
          v82 = v49;
          v83 = v51;
          v84 = v53;
          sub_25BC43580();
          sub_25BCB644C();

          v55 = v85;
          v54 = v86;
          v56 = HIBYTE(v86) & 0xF;
          if ((v86 & 0x2000000000000000) == 0)
          {
            v56 = v85 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = v78[2];
              OUTLINED_FUNCTION_45();
              sub_25BAB1E30();
              v78 = v62;
            }

            v58 = v78[2];
            v57 = v78[3];
            if (v58 >= v57 >> 1)
            {
              OUTLINED_FUNCTION_81(v57);
              sub_25BAB1E30();
              v78 = v63;
            }

            ++v34;
            v59 = v78;
            v78[2] = v58 + 1;
            v60 = &v59[2 * v58];
            v60[4] = v55;
            v60[5] = v54;
            v22 = v79;
            v35 = v75;
            goto LABEL_14;
          }

          ++v34;
          v22 = v79;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v22 = MEMORY[0x277D84F90];
LABEL_12:
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v20 = v31;
LABEL_5:
    sub_25BAFFAD0(v23, v25, v27, v29);
    v22 = v30;
    goto LABEL_12;
  }

LABEL_39:
  __break(1u);
}

uint64_t *sub_25BC526CC()
{
  v1 = *v0;
  v12 = v0[2];
  v11 = *(v1 + 104);
  sub_25BCB7BDC();
  OUTLINED_FUNCTION_15();
  sub_25BCB617C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  sub_25BAB2B20(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_15();

  return &v12;
}

uint64_t sub_25BC527BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v3;
  sub_25BCB617C();
  return swift_getAtKeyPath();
}

uint64_t sub_25BC5281C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_25BC5283C()
{
  sub_25BC5281C();

  return swift_deallocClassInstance();
}

void sub_25BC52888()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890();
}

void sub_25BC528D8()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890();
}

uint64_t sub_25BC52954(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBAE50;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = v5;

  return v6;
}

uint64_t sub_25BC529C8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16))
  {
    *a2 = *(result + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC52A00(uint64_t a1)
{
  v2 = *(a1 + 16);

  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_25BC52A2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(v1 + 16))
  {
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v16 = MEMORY[0x277D84F90];
      sub_25BB005D0(0, v2, 0);
      v5 = 0;
      v3 = v16;
      do
      {
        v6 = *(a1 + 32 + 8 * v5);

        v7 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v7);

        v9 = *(v16 + 16);
        v8 = *(v16 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = OUTLINED_FUNCTION_81(v8);
          sub_25BB005D0(v11, v9 + 1, 1);
        }

        ++v5;
        *(v16 + 16) = v9 + 1;
        v10 = (v16 + 24 * v9);
        v10[4] = 0x5F74757074756FLL;
        v10[5] = 0xE700000000000000;
        v10[6] = v6;
      }

      while (v2 != v5);
    }

    return v3;
  }

  else
  {
    sub_25BCB70FC();
    v13 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v13);
    OUTLINED_FUNCTION_110();
    v14 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v14);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_110();
    v15 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v15);

    OUTLINED_FUNCTION_29_28();
    result = OUTLINED_FUNCTION_6_52();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC52C34(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 16))
  {

    return sub_25BCB617C();
  }

  else
  {
    v3 = *(a1 + 16);
    sub_25BCB70FC();
    v4 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v4);
    OUTLINED_FUNCTION_92();
    v5 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v5);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_92();
    v6 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v6);

    OUTLINED_FUNCTION_29_28();
    result = OUTLINED_FUNCTION_6_52();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC52DDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC52C34(a1);
  *a2 = result;
  return result;
}

void sub_25BC52E4C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  v38 = v2;
  v39 = v1;
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = *(v0 + 16);
  sub_25BCB681C();
  sub_25BAFDDD8();
  v17 = v16;
  sub_25BCB617C();
  v18 = sub_25BCB674C();
  v41 = v18;
  v36 = (v6 + 32);
  v37 = (v6 + 16);
  v34 = v6;
  v35 = (v6 + 8);
  while (1)
  {
    if (v18 == sub_25BCB681C())
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v19 = sub_25BCB67FC();
    sub_25BCB677C();
    if (v19)
    {
      (*(v34 + 16))(v14, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, v4);
      goto LABEL_5;
    }

    v31 = sub_25BCB717C();
    if (v33 != 8)
    {
      break;
    }

    v40[0] = v31;
    (*v37)(v14, v40, v4);
    swift_unknownObjectRelease();
LABEL_5:
    sub_25BCB68AC();
    v20 = v14;
    (*v36)(v11, v14, v4);
    v21 = *(v38 + 128);
    sub_25BCB61BC();
    v22 = v40[0];
    if (!v40[0])
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_17_39();
    OUTLINED_FUNCTION_35_8();
    sub_25BCB784C();
    v24 = v40[0];
    v23 = v40[1];
    v26 = *(v17 + 16);
    v25 = *(v17 + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_81(v25);
      sub_25BAFDDD8();
      v17 = v32;
    }

    v27 = *v35;
    v28 = OUTLINED_FUNCTION_35_8();
    v29(v28);
    *(v17 + 16) = v26 + 1;
    v30 = (v17 + 24 * v26);
    v30[4] = v24;
    v30[5] = v23;
    v30[6] = v22;
    v18 = v41;
    v14 = v20;
  }

  __break(1u);
LABEL_13:
  OUTLINED_FUNCTION_17_39();
  sub_25BCB70FC();
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x25F876C90](0xD000000000000029);
  OUTLINED_FUNCTION_35_8();
  sub_25BCB784C();
  OUTLINED_FUNCTION_29_28();
  OUTLINED_FUNCTION_122_0();
  v33 = 606;
  OUTLINED_FUNCTION_6_52();
  __break(1u);
}

uint64_t sub_25BC531A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1[2];
  v4 = *v1;
  OUTLINED_FUNCTION_7_50();
  v6 = *(v5 + 112);
  OUTLINED_FUNCTION_35_8();
  if (v2 == sub_25BCB681C())
  {
    sub_25BCB68CC();
    v7 = OUTLINED_FUNCTION_110();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    swift_getWitnessTable();
    sub_25BB30E7C(&qword_27FBB4A00, &qword_27FBB49F0, &unk_25BCC0140);
    sub_25BCB793C();
    sub_25BCB715C();
    v9 = *(v4 + 128);
    OUTLINED_FUNCTION_5_5();
    swift_getWitnessTable();
    return sub_25BCB615C();
  }

  else
  {
    OUTLINED_FUNCTION_56_12();
    v11 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v11);
    OUTLINED_FUNCTION_35_8();
    sub_25BCB681C();
    OUTLINED_FUNCTION_8_49();
    v12 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v12);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_8_49();
    v13 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v13);

    OUTLINED_FUNCTION_29_28();
    result = OUTLINED_FUNCTION_6_52();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC533F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC531A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC53464()
{
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_15();
  sub_25BC53490();
  return v0;
}

uint64_t sub_25BC53490()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_54();
  v3 = *(v2 + 120);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_7_50();
  v6 = *(v5 + 112);
  v7(v6, v3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_22();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_28_26();
  v16 = sub_25BAB2B20(v10, v11, v9, AssociatedTypeWitness, v12, v13, v14, v15);

  OUTLINED_FUNCTION_11_1(v6);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_11_3();
  v20(v19);

  *(v1 + 16) = v16;
  return v1;
}

uint64_t sub_25BC53610@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v2 = *a1;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a1 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  (*(v6 + 16))(v21 - v15, v14);
  v17 = *(v4 + 48);
  v18 = *&v16[v17];
  OUTLINED_FUNCTION_11_1(*(v2 + *v3 + 8));
  (*(v19 + 32))(v12, v16);
  *(v12 + v17) = v18;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v12, v4);
}

uint64_t *sub_25BC537A4()
{
  OUTLINED_FUNCTION_5_54();
  v1 = *(v0 + 120);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_7_50();
  v14 = v4(*(v3 + 112), v1);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  sub_25BAB2B20(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_15();

  return &v14;
}

uint64_t sub_25BC538C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v12 - v8;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_25BCB784C();
  v10 = v13;
  *a2 = v12;
  a2[1] = v10;
  (*(v6 + 16))(v9, a1, TupleTypeMetadata2);
  a2[2] = *&v9[*(TupleTypeMetadata2 + 48)];
  return (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
}

void sub_25BC53A40()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v3 = *(v2 + 16);
  v4 = v0[2];
  OUTLINED_FUNCTION_7_50();
  v6 = *(v5 + 120);
  v8 = *(v7 + 112);
  OUTLINED_FUNCTION_48_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_17();
  if (v3 == sub_25BCB681C())
  {
    sub_25BCB68CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
    swift_getWitnessTable();
    sub_25BB30E7C(&qword_27FBB4A00, &qword_27FBB49F0, &unk_25BCC0140);
    sub_25BCB793C();
    swift_getTupleTypeMetadata2();
    sub_25BCB715C();
    OUTLINED_FUNCTION_5_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_49_0();
    sub_25BCB68DC();
    v9 = *(v6 + 24);
    OUTLINED_FUNCTION_161_0();
    v10();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_56_12();
    v11 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v11);
    OUTLINED_FUNCTION_5_17();
    sub_25BCB681C();
    OUTLINED_FUNCTION_8_49();
    v12 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v12);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_8_49();
    v13 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v13);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_6_52();
    __break(1u);
  }
}

uint64_t sub_25BC53CF0()
{
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  sub_25BC53D2C();
  return v0;
}

uint64_t sub_25BC53D2C()
{
  OUTLINED_FUNCTION_11_1(*(*v0 + 112));
  (*(v1 + 8))();
  return v0;
}

void sub_25BC53D7C()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v3 = *(*v0 + 112);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  sub_25BCB7BDC();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_48_6();
  v80 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_2(v80);
  v77 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = *(v5 + 16);
  v78 = v2;
  v18(v10, v2, v3, v15);
  v79 = v17;
  sub_25BAB1090(v10, 0, 0, v17);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25BAB173C(v80, &v88);
    v20 = v88;
    if (!v88)
    {
      (*(v77 + 8))(v79, v80);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v21 = v89;
    v22 = *(v89 + 16);
    sub_25BCB617C();
    v23 = v21;
    if (v22 >= 2)
    {
      break;
    }

LABEL_13:
    v82 = v21;
    v83 = v20;
    v84 = v19;
    v34 = 0;
    v87 = *(v23 + 16);
    v35 = v23 + 40;
    v85 = MEMORY[0x277D84F90];
    v86 = v23;
    v81 = v23 + 40;
LABEL_14:
    v36 = (v35 + 16 * v34);
    while (v87 != v34)
    {
      if (v34 >= *(v23 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v37 = *(v36 - 1);
      if ((*v36 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(*v36) & 0xF;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFFFFFFLL;
      }

      v39 = 7;
      if (((*v36 >> 60) & ((v37 & 0x800000000000000) == 0)) != 0)
      {
        v39 = 11;
      }

      v40 = v39 | (v38 << 16);
      v41 = *v36;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_43_16();
      sub_25BCB654C();
      v43 = v42;

      v44 = sub_25BCB6EBC();
      v46 = v45;

      sub_25BCB617C();
      v47 = OUTLINED_FUNCTION_43_16();
      if (v48)
      {
        v47 = v40;
      }

      if (4 * v38 < v47 >> 14)
      {
        goto LABEL_42;
      }

      sub_25BCB654C();
      OUTLINED_FUNCTION_30();
      v50 = v49;
      v52 = v51;

      v92 = v44;
      v93 = v46;
      v88 = v43;
      v89 = v37;
      v90 = v50;
      v91 = v52;
      sub_25BC43580();
      sub_25BCB644C();

      v53 = v92;
      v54 = v93;
      v55 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v55 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v56 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = *(v56 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAB1E30();
          v56 = v61;
        }

        v35 = v81;
        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        if (v58 >= v57 >> 1)
        {
          OUTLINED_FUNCTION_81(v57);
          sub_25BAB1E30();
          v56 = v62;
        }

        ++v34;
        *(v56 + 16) = v58 + 1;
        v85 = v56;
        v59 = v56 + 16 * v58;
        *(v59 + 32) = v53;
        *(v59 + 40) = v54;
        v23 = v86;
        goto LABEL_14;
      }

      v36 += 2;
      ++v34;
      v23 = v86;
    }

    v88 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    OUTLINED_FUNCTION_9_48();
    OUTLINED_FUNCTION_161_0();
    sub_25BB30E7C(v63, v64, v65);
    v66 = sub_25BCB627C();
    v68 = v67;

    swift_getAtKeyPath();

    v69 = v88;
    v19 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = *(v19 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAFDDD8();
      v19 = v74;
    }

    v71 = *(v19 + 16);
    v70 = *(v19 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_81(v70);
      sub_25BAFDDD8();
      v19 = v75;
    }

    *(v19 + 16) = v71 + 1;
    v72 = (v19 + 24 * v71);
    v72[4] = v66;
    v72[5] = v68;
    v72[6] = v69;
  }

  v24 = sub_25BBFCCC8(1, v21);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (!__OFSUB__(v30 >> 1, v28))
  {
    if (v33 == (v30 >> 1) - v28)
    {
      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v23)
      {
        goto LABEL_13;
      }

      v23 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
LABEL_5:
    sub_25BAFFAD0(v24, v26, v28, v30);
    v23 = v31;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_25BC54328(uint64_t a1)
{
  v2 = *v1;
  v6 = 0;
  v3 = *(v2 + 112);
  v5[2] = a1;
  v5[3] = &v6;
  return sub_25BC54484(v3, sub_25BC5488C, v5, v3);
}

uint64_t sub_25BC54384(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(*a2 + *MEMORY[0x277D84208]);
  sub_25BCB736C();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = *a4;
    if ((*a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(a3 + 16))
    {
      v9 = *(a3 + 8 * v8 + 32);

      swift_setAtWritableKeyPath();

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        return result;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BC54484(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_25BCB6E6C();
  type metadata accessor for StoredPropertyInfo();
  v17 = sub_25BCB604C();
  if (sub_25BCB5B2C())
  {
    v8 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v8 >= result)
      {
        break;
      }

      v10 = sub_25BCB5AFC();
      sub_25BAB5F30(v10, v8++, a1, a1, &v17, a4, v10);
      if (v8 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    swift_beginAccess();
    v11 = v17;
    sub_25BCB617C();
    v12 = sub_25BCB674C();

    v17 = v12;
    if (v12 != sub_25BCB681C())
    {
      do
      {
        v13 = sub_25BCB67FC();
        sub_25BCB677C();
        if (v13)
        {
          v14 = *(v11 + 32 + 8 * v12);
        }

        else
        {
          sub_25BCB717C();
        }

        sub_25BCB68AC();
        v15 = sub_25BAB1D20();
        a2(v7, v15);

        v16 = sub_25BCB681C();
        v12 = v17;
      }

      while (v17 != v16);
    }

    sub_25BCB6E5C();
    return sub_25BCB6E3C();
  }

  return result;
}

uint64_t sub_25BC546A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BC546DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5471C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC54780(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC547BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t (*sub_25BC547F8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_25BCA82BC(a3);
  sub_25BAB4D78(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x25F8779B0](a2, a3);
  }

  *a1 = v8;
  return sub_25BC54884;
}

uint64_t sub_25BC54894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BC538C8(a1, a2);
}

uint64_t sub_25BC548B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return sub_25BC527BC(a1, a2);
}

uint64_t sub_25BC548F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25BC53610(*(v1 + 32), a1);
}

uint64_t sub_25BC54914@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_25BC51954(a1);
}

uint64_t sub_25BC54934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_25BC50D8C(a1, *(v2 + 48), a2);
}

_BYTE *sub_25BC549CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC54B00(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_25BB720F0();
      if (sub_25BCA6178(v6, v5 + 32, v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_25BC54B84(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size_0(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_25BC54C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 16);
  v3 = sub_25BB722FC();
  sub_25BCA5358();
  v5 = v4;
  sub_25BAB3820();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t basicAdam(parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:)(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float a9, float a10, float a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v94 = a4;
  v93 = a3;
  v92 = a2;
  v91 = a1;
  v88 = sub_25BCB783C();
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v88);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a5;
  v26 = *a6;
  v27 = *a7;
  v86 = *a8;
  v84 = *a12;
  v87 = *a13;
  v85 = *a14;
  OUTLINED_FUNCTION_3_54();
  LOBYTE(a6) = *(v28 + 160);
  v29 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v29, v30);
  v31 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v33 = OUTLINED_FUNCTION_56();
  v95 = xmmword_25BCBAE50;
  *(v33 + 16) = xmmword_25BCBAE50;
  *(v33 + 32) = a9;
  v97 = a6;
  v34 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v34, v35);
  v36 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v36, v33, v37, v38, v39);
  sub_25BA9C2C8(v100);
  sub_25BA9C2C8(v101);
  v40 = v99;
  OUTLINED_FUNCTION_3_54();
  v42 = *(v41 + 160);
  v43 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v43, v44);
  v98 = v31;
  v90 = v32;
  v45 = OUTLINED_FUNCTION_56();
  *(v45 + 16) = v95;
  *(v45 + 32) = a10;
  v97 = v42;
  v46 = v31;
  v47 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v47, v48);
  v49 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v49, v45, v50, v51, v52);
  sub_25BA9C2C8(v100);
  sub_25BA9C2C8(v101);
  v53 = v99;
  OUTLINED_FUNCTION_3_54();
  LOBYTE(v45) = *(v54 + 160);
  v55 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v55, v56);
  v98 = v31;
  v97 = v45;
  v57 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v57, v58);
  v59 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v59, v60, v61, v62, v63);
  sub_25BA9C2C8(v100);
  sub_25BA9C2C8(v101);
  v64 = v99;
  v101[0] = v40;
  v100[0] = v27;
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();
  v101[0] = v64;
  v100[0] = v40;
  OUTLINED_FUNCTION_6_6();
  static Tensor.- infix(_:_:)();
  v101[0] = v26;
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v89 = v101[0];
  v101[0] = v53;
  v100[0] = v86;
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();
  v101[0] = v64;
  v100[0] = v53;
  OUTLINED_FUNCTION_6_6();
  static Tensor.- infix(_:_:)();
  v101[0] = v26;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v65 = v101[0];
  v86 = v101[0];
  if (v84)
  {
    v100[0] = v84;
    v96[0] = v101[0];
    OUTLINED_FUNCTION_10_42();
    max(_:_:)();
    v65 = v101[0];
    v84 = v101[0];
  }

  else
  {
    v84 = 0;
  }

  v100[0] = v85;
  LOBYTE(v96[0]) = *(*(v40 + 16) + 160);
  v66 = v88;
  (*(v21 + 104))(v24, *MEMORY[0x277D84660], v88);

  OUTLINED_FUNCTION_21_32();
  Tensor.cast(to:roundingRule:)();
  (*(v21 + 8))(v24, v66);
  v67 = v101[0];
  v101[0] = v87;
  v99 = v67;
  v100[0] = v64;
  v96[0] = v53;
  pow(_:_:)();
  static Tensor.- infix(_:_:)();

  sqrt(_:)(v100, v96);
  OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();

  v101[0] = v64;
  v99 = v67;
  v100[0] = v40;
  pow(_:_:)();
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor./ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v68 = v101[0];
  OUTLINED_FUNCTION_3_54();
  v70 = *(v69 + 160);
  v71 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v71, v72);
  v98 = v46;
  v73 = OUTLINED_FUNCTION_56();
  *(v73 + 16) = v95;
  *(v73 + 32) = a11;
  v97 = v70;
  v74 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v74, v75);
  v76 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v76, v73, v77, v78, v79);
  sub_25BA9C2C8(v100);
  sub_25BA9C2C8(v101);
  v80 = v99;
  v100[0] = v25;
  v101[0] = v68;
  v81 = v89;
  v96[0] = v89;
  static Tensor.* infix(_:_:)();
  v101[0] = v65;

  sqrt(_:)(v96, v101);

  v101[0] = v80;
  static Tensor.+ infix(_:_:)();
  OUTLINED_FUNCTION_17_40();
  static Tensor./ infix(_:_:)();

  OUTLINED_FUNCTION_10_42();
  static Tensor.- infix(_:_:)();

  result = OUTLINED_FUNCTION_17_40();
  *v91 = v101[0];
  *v92 = v81;
  *v93 = v86;
  *v94 = v84;
  return result;
}

void sub_25BC552FC(int a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    *(sub_25BCB67DC() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_11_44();
      if (v6)
      {
        *(v3 - 12) = a1;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a1;
      }

      OUTLINED_FUNCTION_14_37();
      if (v12)
      {
        *(v8 - 1) = a1;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a1;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_25BC553BC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_25BCB67DC();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        sub_25BCB617C();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t basicReLU(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(v2 + 160);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    LOBYTE(v18[0]) = v3;
    *&v22 = sub_25BC8FACC();
    *(&v22 + 1) = v16;
    v23 = xmmword_25BCC6DC0;
    LOBYTE(v24) = 0;
    *(&v24 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v25) = 2;
    v26 = 3;
    OUTLINED_FUNCTION_8_38();
    sub_25BADDD28();
  }

  v4 = *(v2 + 160);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = MEMORY[0x277D84F90];
  HIBYTE(v19) = v4;
  v5 = sub_25BAA51C8(&v22, v18);
  v12 = OUTLINED_FUNCTION_22_32(v5, &unk_286D422E8, v6, v7, v8, v9, v10, v11, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v19, v20);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v12, v13, &v19 + 7, v18, v14);
  sub_25BA9C2C8(&v22);
  *&v22 = v21;
  v18[0] = v1;
  max(_:_:)();
}

uint64_t basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>)
{
  v15 = *a1;
  v16 = *a4;
  v17 = *a5;
  v18 = *(*(*a1 + 16) + 152);
  v19 = sub_25BC54B00(0, *(v18 + 16));
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v19);
    v19 = v131;
  }

  v20 = v19[2];
  if (v20 < 2)
  {
    __break(1u);
    goto LABEL_35;
  }

  v171 = a2;
  v176 = a3;
  v21 = v20 - 1;
  memmove(v19 + 5, v19 + 6, 8 * v20 - 16);
  v19[2] = v21;

  v193[0] = *(*(v15 + 16) + 152);
  sub_25BCB617C();
  v18 = sub_25BC55FEC(v193, v19);

  v22 = *(*(v15 + 16) + 152);
  a2 = *(v22 + 16);
  sub_25BCB617C();
  v23 = sub_25BAC0E14(1, a2);
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 < *(v22 + 16))
  {
    a2 = v23;
    v164 = a7;
    a7 = *(v22 + 8 * v18 + 32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_25BAA2110(a2);
  a2 = v132;
LABEL_7:

  if (v18 >= *(a2 + 16))
  {
    __break(1u);
    return result;
  }

  *(a2 + 8 * v18 + 32) = a7;
  v25 = *(v15 + 16);
  if (v18 == *(*(v25 + 152) + 16))
  {

    goto LABEL_14;
  }

  if (!v16)
  {

    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *v192 = v16;

  v34 = OUTLINED_FUNCTION_9_49(v26, v27, v28, v29, v30, v31, v32, v33, v133, v138, v144, v151, v156, v161, v164, v171, v176, v182, a2);
  Tensor.reshaped(to:)(v34, v35);

  v16 = v193[0];
  if (v17)
  {
LABEL_12:
    *v192 = v17;
    v44 = OUTLINED_FUNCTION_9_49(v36, v37, v38, v39, v40, v41, v42, v43, v133, v138, v144, v151, v156, v161, v164, v171, v176, v182, a2);
    Tensor.reshaped(to:)(v44, v45);

    v17 = v193[0];
  }

LABEL_13:
  v25 = *(v15 + 16);
LABEL_14:
  OUTLINED_FUNCTION_7_51();
  v46 = *(v25 + 160);
  sub_25BAA51C8(v193, v192);
  v190 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v47 = OUTLINED_FUNCTION_56();
  *(v47 + 16) = xmmword_25BCBAE50;
  *(v47 + 32) = a9;
  LOBYTE(v182) = v46;
  sub_25BAA51C8(v192, &v183);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v190, v47, &v182, &v183, &v191);
  sub_25BA9C2C8(v192);
  sub_25BA9C2C8(v193);
  v48 = v191;
  if (a6)
  {

    *v192 = v15;
    Tensor.mean(alongAxes:)(v19, v193);
    v49 = v48;
    v50 = v193[0];
    *v192 = v15;
    v183 = v193[0];
    swift_retain_n();
    v51 = OUTLINED_FUNCTION_20_31();
    sub_25BC7DB2C(v51, v52, 0);

    v53 = v193[0];
    *v192 = v49;

    OUTLINED_FUNCTION_8_50();
    static Tensor.+ infix(_:_:)();
    v62 = OUTLINED_FUNCTION_9_49(v54, v55, v56, v57, v58, v59, v60, v61, v133, v138, v144, v49, 1, 2, v164, v171, v176, v182, v183);
    rsqrt(_:)(v63, v62);

    v64 = v193[0];
    v193[0] = v15;
    *v192 = v50;
    OUTLINED_FUNCTION_8_50();
    static Tensor.- infix(_:_:)();
    if (v16)
    {
      v191 = v16;
      *v192 = v64;
      static Tensor.* infix(_:_:)();
      v65 = v193[0];
    }

    else
    {

      v65 = v64;
    }

    v191 = v65;
    static Tensor.* infix(_:_:)();

    v87 = *v192;
    if (v17)
    {
      v191 = v17;
      OUTLINED_FUNCTION_9_49(v79, v80, v81, v82, v83, v84, v85, v86, v134, v139, v145, v152, v157, *(&v157 + 1), v165, v172, v177, v182, v192[0]);
      static Tensor.+ infix(_:_:)();

      v87 = v193[0];
    }

    else
    {
    }

    v140 = v53;
    v146 = v87;
    if (*(*(*(v15 + 16) + 152) + 16) < 4uLL)
    {

      v90 = v53;
    }

    else
    {
      *v192 = v15;
      v183 = v50;

      v88 = OUTLINED_FUNCTION_20_31();
      sub_25BC7DB2C(v88, v89, 1);

      v90 = v193[0];
    }

    v91 = *(*(v15 + 16) + 160);
    OUTLINED_FUNCTION_7_51();
    v92 = MEMORY[0x277D84F90];
    v191 = MEMORY[0x277D84F90];
    v93 = OUTLINED_FUNCTION_56();
    *(v93 + 16) = v157;
    *(v93 + 32) = 1.0 - a8;
    LOBYTE(v190) = v91;
    v94 = sub_25BAA51C8(v193, v192);
    OUTLINED_FUNCTION_19_29(v94, v95, v96, v97, v98, v99, v100, v101, v134, v140, v146, v152, v157, *(&v157 + 1), v165, v172, v177, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192[0]);
    sub_25BA9C2C8(v193);
    v102 = *(*(v15 + 16) + 160);
    OUTLINED_FUNCTION_7_51();
    v191 = v92;
    v103 = OUTLINED_FUNCTION_56();
    *(v103 + 16) = v158;
    *(v103 + 32) = a8;
    LOBYTE(v190) = v102;
    v104 = sub_25BAA51C8(v193, v192);
    OUTLINED_FUNCTION_19_29(v104, v105, v106, v107, v108, v109, v110, v111, v135, v141, v147, v153, v158, *(&v158 + 1), v167, v173, v179, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192[0]);
    sub_25BA9C2C8(v193);
    v112 = v183;
    v113 = v174;
    v193[0] = *v174;
    *v192 = v183;
    OUTLINED_FUNCTION_8_50();
    static Tensor.* infix(_:_:)();

    v193[0] = v50;
    Tensor.squeezingShape(at:)();
    OUTLINED_FUNCTION_24_24();

    OUTLINED_FUNCTION_9_49(v114, v115, v116, v117, v118, v119, v120, v121, v136, v142, v148, v154, v159, v162, v168, v174, v180, v182, v183);
    static Tensor.+ infix(_:_:)();

    *v113 = v193[0];
    v122 = v181;
    v193[0] = *v181;
    *v192 = v112;
    OUTLINED_FUNCTION_8_50();
    static Tensor.* infix(_:_:)();

    v193[0] = v90;

    Tensor.squeezingShape(at:)();

    OUTLINED_FUNCTION_24_24();

    OUTLINED_FUNCTION_9_49(v123, v124, v125, v126, v127, v128, v129, v130, v137, v143, v149, v155, v160, v163, v169, v175, v181, v182, v183);
    static Tensor.+ infix(_:_:)();

    *v122 = v193[0];
    *v170 = v150;
  }

  else
  {

    *v192 = *v171;
    v183 = a2;

    v74 = OUTLINED_FUNCTION_9_49(v66, v67, v68, v69, v70, v71, v72, v73, v133, v138, v144, v151, 1, 2, v164, v171, v176, v182, v183);
    Tensor.reshaped(to:)(v74, v75);

    v76 = v193[0];
    v183 = *v178;
    v191 = a2;

    Tensor.reshaped(to:)(&v191, v192);

    v183 = *v192;
    v191 = v48;

    static Tensor.+ infix(_:_:)();
    rsqrt(_:)(&v183, &v190);

    v77 = v183;
    v183 = v15;
    v191 = v76;
    static Tensor.- infix(_:_:)();
    if (v16)
    {
      v182 = v16;
      v183 = v77;
      static Tensor.* infix(_:_:)();
      v78 = v191;
    }

    else
    {

      v78 = v77;
    }

    v182 = v78;
    static Tensor.* infix(_:_:)();

    if (v17)
    {
      v190 = v17;
      v191 = v183;
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      *v166 = v183;
    }
  }

  return result;
}

uint64_t basicSGD(parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char a7, float a8)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v21 = *a6;
  v22 = v13;
  static Tensor.* infix(_:_:)();
  static Tensor.- prefix(_:)(&v20);

  v15 = v22;
  if (a8 <= 0.0 || v14 == 0)
  {
    v20 = v22;
    v21 = v12;
    OUTLINED_FUNCTION_16_43();

    v18 = 0;
  }

  else
  {
    v21 = v22;

    sub_25BC55E80(v19, a8);
    OUTLINED_FUNCTION_16_43();

    v18 = v22;
    if (a7)
    {
      v21 = v15;
      v22 = v12;
      static Tensor.+ infix(_:_:)();
      sub_25BC55E80(v18, a8);
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      v20 = v22;
      v21 = v12;
      OUTLINED_FUNCTION_16_43();
    }
  }

  *a1 = v22;
  *a2 = v18;
  return result;
}

uint64_t sub_25BC55E80(uint64_t a1, float a2)
{
  v23[0] = a1;
  Tensor.scalarType.getter();
  (*(v4 + 32))(v13);
  v5 = LOBYTE(v13[0]);
  if (sub_25BAA80BC(0xAu, &unk_286D42270) && sub_25BAA80BC(v5, &unk_286D427E8) || v5 == 12)
  {
    OUTLINED_FUNCTION_92_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(v23, v13);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v13, &v24);
    sub_25BA9C2C8(v23);
  }

  else
  {
    v14 = MEMORY[0x277D83A90];
    v15 = &protocol witness table for Float;
    *v13 = a2;
    v23[8] = a1;
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_92_1();
    Tensor.init(coercing:scalarType:on:)(v13, v6, v7, v23, v7, v8, v9, v10, v13[0], v13[1], v13[2], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1]);
  }

  v23[0] = a1;
  v13[0] = v24;
  static Tensor.* infix(_:_:)();
}

uint64_t sub_25BC55FEC(uint64_t *a1, uint64_t a2)
{
  result = 0;
  v4 = *a1;
  v5 = *(*a1 + 16);
LABEL_2:
  if (result == v5)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCE4E40);
    v10 = MEMORY[0x277D83B88];
    v11 = MEMORY[0x25F876F80](v4, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v11);

    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE4E70);
    v12 = MEMORY[0x25F876F80](a2, v10);
    MEMORY[0x25F876C90](v12);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BCB617C();
    sub_25BA97890();
  }

  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == result)
    {
      ++result;
      goto LABEL_2;
    }
  }

  return result;
}

char *sub_25BC5615C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56184(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[240 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 240 * a2);
  }

  return result;
}

char *sub_25BC561B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC561D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC561F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56218(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BC56240()
{
  OUTLINED_FUNCTION_13_40();
  if (v4 < v3 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08), v1 + *(*(result - 8) + 72) * v0 <= v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
    v7 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE828](v7);
  }

  else if (v2 != v1)
  {
    v6 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE820](v6);
  }

  return result;
}

uint64_t sub_25BC5633C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_13_40();
  if (v9 < v8 || (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 <= v6))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE828](v12);
  }

  else if (v6 != v5)
  {
    v11 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

char *sub_25BC563FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56420(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 104 * a2);
  }

  return result;
}

uint64_t sub_25BC56488(uint64_t a1)
{
  v2 = sub_25BC56544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC564C4(uint64_t a1)
{
  v2 = sub_25BC56544();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56544()
{
  result = qword_27FBB7120;
  if (!qword_27FBB7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7120);
  }

  return result;
}

uint64_t sub_25BC56648(uint64_t a1)
{
  v2 = sub_25BC566F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56684(uint64_t a1)
{
  v2 = sub_25BC566F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC566F4()
{
  result = qword_27FBB7130;
  if (!qword_27FBB7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7130);
  }

  return result;
}

uint64_t sub_25BC5677C(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ScaledTanh.forward(_:)(a1);
}

uint64_t sub_25BC567F4(uint64_t a1)
{
  v2 = sub_25BC568B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56830(uint64_t a1)
{
  v2 = sub_25BC568B0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC568B0()
{
  result = qword_27FBB7148;
  if (!qword_27FBB7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7148);
  }

  return result;
}

uint64_t LogSigmoid.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  static Tensor.- prefix(_:)(&v2);
  softplus(_:alpha:beta:)();

  static Tensor.- prefix(_:)(&v2);
}

uint64_t sub_25BC5699C(uint64_t a1)
{
  v2 = sub_25BC56A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC569D8(uint64_t a1)
{
  v2 = sub_25BC56A58();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56A58()
{
  result = qword_27FBB7158;
  if (!qword_27FBB7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7158);
  }

  return result;
}

uint64_t sub_25BC56B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163537475706E69 && a2 == 0xEA0000000000656CLL;
  if (v4 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x635374757074756FLL && a2 == 0xEB00000000656C61)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_43_17();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC56C28(uint64_t a1)
{
  v2 = sub_25BC56CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56C64(uint64_t a1)
{
  v2 = sub_25BC56CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56CD4()
{
  result = qword_27FBB7168;
  if (!qword_27FBB7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7168);
  }

  return result;
}

uint64_t sub_25BC56D5C(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Softplus.forward(_:)(a1);
}

uint64_t sub_25BC56D90@<X0>(uint64_t (*a1)(void)@<X3>, _DWORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_25BC56E04(uint64_t a1)
{
  v2 = sub_25BC56EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56E40(uint64_t a1)
{
  v2 = sub_25BC56EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56EC0()
{
  result = qword_27FBB7180;
  if (!qword_27FBB7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7180);
  }

  return result;
}

uint64_t sub_25BC56F98(uint64_t a1)
{
  v2 = sub_25BC57054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56FD4(uint64_t a1)
{
  v2 = sub_25BC57054();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57054()
{
  result = qword_27FBB7190;
  if (!qword_27FBB7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7190);
  }

  return result;
}

void sub_25BC570F4(void *a1@<X8>)
{
  Softmax.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC57168(uint64_t a1)
{
  v2 = sub_25BC57224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC571A4(uint64_t a1)
{
  v2 = sub_25BC57224();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57224()
{
  result = qword_27FBB71A8;
  if (!qword_27FBB71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71A8);
  }

  return result;
}

uint64_t sub_25BC572D4(uint64_t a1)
{
  v2 = sub_25BC57380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57310(uint64_t a1)
{
  v2 = sub_25BC57380();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57380()
{
  result = qword_27FBB71B8;
  if (!qword_27FBB71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71B8);
  }

  return result;
}

void sub_25BC57410(_DWORD *a1@<X8>)
{
  ELU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

float sub_25BC5743C()
{
  v1 = *v0;
  ELU.encode(to:)();
  return result;
}

uint64_t sub_25BC57480(uint64_t a1)
{
  v2 = sub_25BC5753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC574BC(uint64_t a1)
{
  v2 = sub_25BC5753C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC5753C()
{
  result = qword_27FBB71D0;
  if (!qword_27FBB71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71D0);
  }

  return result;
}

uint64_t sub_25BC575B0(uint64_t a1)
{
  v2 = sub_25BC57714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC575EC(uint64_t a1)
{
  v2 = sub_25BC57714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReLU.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB71D8, &qword_25BCCF438);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC57714();
  OUTLINED_FUNCTION_42_21();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_25BC57714()
{
  result = qword_28154C318[0];
  if (!qword_28154C318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C318);
  }

  return result;
}

uint64_t sub_25BC577E8(uint64_t a1)
{
  v2 = sub_25BC578A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57824(uint64_t a1)
{
  v2 = sub_25BC578A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC578A4()
{
  result = qword_27FBB71E8;
  if (!qword_27FBB71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71E8);
  }

  return result;
}

uint64_t sub_25BC57960(uint64_t a1)
{
  v2 = sub_25BC57A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5799C(uint64_t a1)
{
  v2 = sub_25BC57A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57A0C()
{
  result = qword_27FBB71F8;
  if (!qword_27FBB71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71F8);
  }

  return result;
}

void sub_25BC57A9C(_DWORD *a1@<X8>)
{
  LeakyReLU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

float sub_25BC57AC8()
{
  v1 = *v0;
  LeakyReLU.encode(to:)();
  return result;
}

uint64_t sub_25BC57B0C(uint64_t a1)
{
  v2 = sub_25BC57BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57B48(uint64_t a1)
{
  v2 = sub_25BC57BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57BC8()
{
  result = qword_27FBB7210;
  if (!qword_27FBB7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7210);
  }

  return result;
}

uint64_t sub_25BC57C8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6164626D616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC57D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC57C8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC57D44(uint64_t a1)
{
  v2 = sub_25BC57DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57D80(uint64_t a1)
{
  v2 = sub_25BC57DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57DF0()
{
  result = qword_27FBB7220;
  if (!qword_27FBB7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7220);
  }

  return result;
}

void sub_25BC57E80(_DWORD *a1@<X8>)
{
  Hardshrink.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

float sub_25BC57EAC()
{
  v1 = *v0;
  Hardshrink.encode(to:)();
  return result;
}

uint64_t sub_25BC57F14(uint64_t a1)
{
  v2 = sub_25BC57FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57F50(uint64_t a1)
{
  v2 = sub_25BC57FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57FC0()
{
  result = qword_27FBB7238;
  if (!qword_27FBB7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7238);
  }

  return result;
}

void sub_25BC58050(_DWORD *a1@<X8>)
{
  CELU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

float sub_25BC5807C()
{
  v1 = *v0;
  CELU.encode(to:)();
  return result;
}

uint64_t sub_25BC580C0(uint64_t a1)
{
  v2 = sub_25BC5817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC580FC(uint64_t a1)
{
  v2 = sub_25BC5817C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC5817C()
{
  result = qword_27FBB7250;
  if (!qword_27FBB7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7250);
  }

  return result;
}

NeuralNetworks::Softshrink __swiftcall Softshrink.init(alpha:)(NeuralNetworks::Softshrink alpha)
{
  if (alpha.alpha < 0.0)
  {
    OUTLINED_FUNCTION_7_0();
    sub_25BCB74CC();
    __break(1u);
  }

  return alpha;
}

uint64_t sub_25BC58294(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_17();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC58300(uint64_t a1)
{
  v2 = sub_25BC584BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5833C(uint64_t a1)
{
  v2 = sub_25BC584BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC583AC()
{
  OUTLINED_FUNCTION_38_22();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_21();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  sub_25BCB777C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_41_22();
}

unint64_t sub_25BC584BC()
{
  result = qword_27FBB7260;
  if (!qword_27FBB7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7260);
  }

  return result;
}

void sub_25BC58544()
{
  OUTLINED_FUNCTION_38_22();
  v6 = OUTLINED_FUNCTION_7_52(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6);
  v14 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v2();
  OUTLINED_FUNCTION_5_55();
  if (!v1)
  {
    OUTLINED_FUNCTION_20_32();
    sub_25BCB768C();
    v11 = *(v14 + 8);
    v12 = OUTLINED_FUNCTION_107();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_41_22();
}

BOOL sub_25BC58630()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

void sub_25BC58680(_DWORD *a1@<X8>)
{
  Softshrink.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

float sub_25BC586AC()
{
  v1 = *v0;
  Softshrink.encode(to:)();
  return result;
}

BOOL sub_25BC586D4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC58630();
  *a2 = result;
  return result;
}

BOOL sub_25BC58734@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BC58630();
  *a1 = result;
  return result;
}

uint64_t sub_25BC5876C(uint64_t a1)
{
  v2 = sub_25BC5B2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC587A8(uint64_t a1)
{
  v2 = sub_25BC5B2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL PReLU.isEveryParameterInitialized.getter()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(*v0 + 32);
  result = (~v3 & 0xF000000000000007) != 0 && v3 < 0;
  *(v1 + 16) = result;
  return result;
}

uint64_t PReLU.$weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PReLU.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

uint64_t sub_25BC588E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 16);
  v7[1] = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  result = PReLU.weight.getter(v7);
  *a2 = v7[0];
  return result;
}

uint64_t sub_25BC5893C(uint64_t *a1)
{
  v2 = *a1;

  return PReLU.weight.setter(&v2);
}

uint64_t (*PReLU.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
  }

  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t PReLU.init(weight:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 16) = v4;
  *(a2 + 8) = 256;
  v6 = v3;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  result = sub_25BAB6D38(&v6, 0x100000000);
  *a2 = result;
  return result;
}

uint64_t PReLU.init(initialAlpha:parameterCount:parameterScalarType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 16) = v10;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *__src = a5;
  __src[1] = a2;
  __src[2] = a3;
  sub_25BAA51C8(v18, &__src[3]);
  BYTE4(__src[10]) = 0;
  type metadata accessor for ParameterInitializer();
  inited = swift_initStackObject();
  memcpy((inited + 16), __src, 0x55uLL);
  sub_25BA9C2C8(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = a1;
  v16 = v12;
  ParameterInitializer.callAsFunction(shape:)();

  *(a4 + 8) = 256;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  LOBYTE(v16) = 1;
  v13 = sub_25BAB6D38(&v15, 0x100000000);
  swift_setDeallocating();
  result = sub_25BB1879C(inited + 16);
  *a4 = v13;
  return result;
}

uint64_t PReLU.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(*(*a1 + 16) + 152);
  v7 = *(v6 + 16);
  if (v7 == 1)
  {
    v8 = 32;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = 40;
  }

  v9 = *(v5 + 32);
  if ((~v9 & 0xF000000000000007) == 0)
  {
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + v8);
  if (OUTLINED_FUNCTION_31_26(v9 & 0x7FFFFFFFFFFFFFFFLL) == 1)
  {
    goto LABEL_11;
  }

  v11 = *(v5 + 32);
  if ((~v11 & 0xF000000000000007) == 0)
  {
LABEL_16:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
LABEL_18:
    sub_25BCB74CC();
    __break(1u);
LABEL_19:
    v15[1] = 0;
    v15[2] = 0;
    v15[0] = 1;
    v16 = -1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = -1;
    v21 = 4;
    sub_25BCB617C();
    sub_25BADDD28();
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_31_26(v11 & 0x7FFFFFFFFFFFFFFFLL) != v10)
  {
    OUTLINED_FUNCTION_7_0();
    goto LABEL_18;
  }

LABEL_11:
  v15[0] = v4;
  v12 = *(v5 + 32);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_16;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v14 = v12 & 0x7FFFFFFFFFFFFFFFLL;
  sub_25BAB69FC();
  prelu(_:weight:)(v15, &v14, a2);
}

void PReLU.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7278, &qword_25BCCF4A0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v10 = *v0;
  v11 = *(v0 + 8);
  v13 = *(v0 + 9);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC5B2B8();

  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  sub_25BB39990();
  sub_25BCB779C();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_16();
}

void PReLU.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v19 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7288, &qword_25BCCF4A8);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BC5B2B8();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    (*(v6 + 8))(v11, v4);
    v14 = v17;
    v15 = v18;
    *v19 = v16;
    *(v19 + 8) = v14;
    *(v19 + 9) = v15;
    *(v19 + 16) = v12;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC591F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC59284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC591F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC592B0(uint64_t a1)
{
  v2 = sub_25BC5B30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC592EC(uint64_t a1)
{
  v2 = sub_25BC5B30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Hardtanh.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7290, &qword_25BCCF4B0);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC5B30C();
  OUTLINED_FUNCTION_42_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
  OUTLINED_FUNCTION_19_30(&qword_27FBB72A0);
  sub_25BCB779C();
  return (*(v5 + 8))(v1, v3);
}

void Hardtanh.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72A8, &qword_25BCCF4B8);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_33();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC5B30C();
  sub_25BCB7B2C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    OUTLINED_FUNCTION_18_38(&qword_27FBB72B0);
    sub_25BCB76AC();
    v10 = *(v5 + 8);
    v11 = OUTLINED_FUNCTION_107();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_25BC595F4(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Hardtanh.forward(_:)(a1);
}

void sub_25BC595FC(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  Hardtanh.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_25BC59628(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Hardtanh.encode(to:)(a1);
}

float RReLU.bounds.getter()
{
  result = *(v0 + 4);
  v2 = *(v0 + 8);
  return result;
}

float RReLU.bounds.setter(float a1, float a2)
{
  v2[1] = a1;
  v2[2] = a2;
  result = (a1 + a2) * 0.5;
  v2[3] = result;
  return result;
}

float sub_25BC596E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = (*(*a1 + 4) + *(*a1 + 8)) * 0.5;
    *(*a1 + 12) = result;
  }

  return result;
}

float sub_25BC5970C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 12);
  v3 = *(v0 + 16);
  if (*v0)
  {
    if (*v0 != 1)
    {
      return v2;
    }

LABEL_6:
    v9 = v1;
    swift_beginAccess();
    v5 = *(v3 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v3 + 16, *(v3 + 40));
    sub_25BB18A50();
    sub_25BBF2100();
    sub_25BB6D854();
    swift_endAccess();
    return v10;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v7);

  if (!v8)
  {
    sub_25BAA4AF4(v7);
    return v2;
  }

  v4 = *(v8 + 24);
  sub_25BAA4AF4(v7);
  if (v4)
  {
    goto LABEL_6;
  }

  return v2;
}

void RReLU.init(bounds:seed:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a2)
  {
    type metadata accessor for ContextManager();
    v9 = sub_25BAA49B8();
    swift_beginAccess();
    v10 = v9[2];
    v11 = *(v10 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[2] = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_25BBF1454(v10);
      v10 = v21;
      v9[2] = v21;
      if (v11)
      {
LABEL_4:
        if (v11 <= *(v10 + 16))
        {
          a1 = sub_25BC32FA0();
          v9[2] = v10;
          swift_endAccess();

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v13 = 0x7FFFFFFFLL;
  if (a1 < 0x7FFFFFFF)
  {
    v13 = a1;
  }

  v14 = v13 & ~(v13 >> 63);
  v23 = &type metadata for PhiloxRandomNumberGenerator;
  v24 = sub_25BB189FC();
  v15 = swift_allocObject();
  *&v22 = v15;
  v16 = sub_25BBE5CAC(v14);
  *(v15 + 16) = v17;
  *(v15 + 32) = v18;
  *(v15 + 40) = v16 & 1;
  *(v15 + 48) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
  v20 = swift_allocObject();
  sub_25BA97060(&v22, v20 + 16);
  *a3 = 0;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = (a4 + a5) * 0.5;
  *(a3 + 16) = v20;
  *(a3 + 24) = v14;
}

uint64_t RReLU.forward(_:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v8 = *a1;
  v7 = *(v1 + 4);
  sub_25BC5970C();
  return leakyReLU(_:alpha:)(&v8);
}

uint64_t sub_25BC59A20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25BAFB694();
}

uint64_t sub_25BC59A44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE21E0();
  *a2 = result;
  return result;
}

unint64_t sub_25BC59A74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BAE222C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC59AA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE21E0();
  *a1 = result;
  return result;
}

uint64_t sub_25BC59AD0(uint64_t a1)
{
  v2 = sub_25BC5B3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC59B0C(uint64_t a1)
{
  v2 = sub_25BC5B3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RReLU.init(from:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72C0, &qword_25BCCF4C8);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_25_29();
  sub_25BC5B3CC();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (v0)
  {
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
  OUTLINED_FUNCTION_18_38(&qword_27FBB72B0);
  sub_25BCB76AC();
  v12 = v53;
  OUTLINED_FUNCTION_32_24(1);
  v13 = sub_25BCB76BC();
  LOBYTE(v50) = 3;
  sub_25BBC68D8();
  sub_25BCB76AC();
  OUTLINED_FUNCTION_32_24(2);
  sub_25BCB766C();
  v56 = v53;
  v16 = sub_25BCB710C();

  if (!v16)
  {
    v30 = sub_25BCB71EC();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
    v32[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v8 + 16))(boxed_opaque_existential_0, v1, v6);
    sub_25BCB763C();
    sub_25BCB71AC();
    v35 = *MEMORY[0x277D841A8];
    OUTLINED_FUNCTION_11_1(v30);
    (*(v36 + 104))(v32);
    swift_willThrow();
    v14 = OUTLINED_FUNCTION_7_1();
    v15(v14);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_39();
    return;
  }

  v17 = dynamic_cast_existential_1_conditional(v16);
  if (v17)
  {
    v45 = v18;
    v46 = v17;
    type metadata accessor for ContextManager();
    v19 = sub_25BAA49B8();
    swift_beginAccess();
    v20 = v19[2];
    v47 = *(v20 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[2] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25BBF1454(v20);
      v20 = v44;
      v19[2] = v44;
    }

    if (v47)
    {
      if (v47 <= *(v20 + 16))
      {
        v48 = sub_25BC32FA0();
        v19[2] = v20;
        swift_endAccess();

        v22 = v48;
        v49 = *(v45 + 24);
        *&v50 = v22;
        v54 = v46;
        v55 = v45;
        __swift_allocate_boxed_opaque_existential_0(&v53);
        v23 = sub_25BB6D930();
        v49(&v50, MEMORY[0x277D84D38], v23, v46, v45);
        v24 = v54;
        v25 = v55;
        __swift_project_boxed_opaque_existential_1(&v53, v54);
        v51 = v24;
        v52 = *(v25 + 8);
        __swift_allocate_boxed_opaque_existential_0(&v50);
        OUTLINED_FUNCTION_11_1(v24);
        (*(v26 + 16))();
        v27 = OUTLINED_FUNCTION_7_1();
        v28(v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
        v29 = swift_allocObject();
        sub_25BA97060(&v50, v29 + 16);
        __swift_destroy_boxed_opaque_existential_1(&v53);
LABEL_14:
        *v5 = v56;
        *(v5 + 4) = v12;
        *(v5 + 12) = (*&v12 + *(&v12 + 1)) * 0.5;
        *(v5 + 16) = v29;
        *(v5 + 24) = v13;
        goto LABEL_3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else if ((v13 & 0x8000000000000000) == 0)
  {
    v54 = &type metadata for PhiloxRandomNumberGenerator;
    v55 = sub_25BB189FC();
    v37 = swift_allocObject();
    *&v53 = v37;
    v38 = sub_25BBE5CAC(v13);
    *(v37 + 16) = v39;
    *(v37 + 32) = v40;
    *(v37 + 40) = v38 & 1;
    *(v37 + 48) = v41;
    v42 = OUTLINED_FUNCTION_7_1();
    v43(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
    v29 = swift_allocObject();
    sub_25BA97060(&v53, v29 + 16);
    goto LABEL_14;
  }

  __break(1u);
}

void RReLU.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v3 = v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72D0, &qword_25BCCF4D0);
  OUTLINED_FUNCTION_2(v28);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v27 = *v0;
  v11 = *(v0 + 4);
  v13 = v0[2];
  v12 = v0[3];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC5B3CC();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  swift_beginAccess();
  sub_25BAC27B0(v13 + 16, v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_25BCB73EC();
  if (v15)
  {
    v30[0] = v11;
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    OUTLINED_FUNCTION_19_30(&qword_27FBB72A0);
    v16 = v28;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    if (v1)
    {
      (*(v5 + 8))(v10, v16);
    }

    else
    {
      LOBYTE(v30[0]) = 1;
      OUTLINED_FUNCTION_15_25();
      sub_25BCB774C();
      LOBYTE(v30[0]) = 2;
      OUTLINED_FUNCTION_15_25();
      sub_25BCB775C();

      LOBYTE(v30[0]) = v27;
      v29 = 3;
      sub_25BBC6830();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();
      (*(v5 + 8))(v10, v16);
    }
  }

  else
  {
    v17 = sub_25BCB71EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
    sub_25BAC27B0(v13 + 16, v30);
    v21 = v31;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v19[3] = v21;
    __swift_allocate_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_11_1(v21);
    (*(v22 + 16))();
    v23 = v28;
    sub_25BCB771C();
    sub_25BCB71AC();
    v24 = *MEMORY[0x277D841A8];
    OUTLINED_FUNCTION_11_1(v17);
    (*(v25 + 104))(v19);
    swift_willThrow();
    (*(v5 + 8))(v10, v23);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_41_22();
}

uint64_t sub_25BC5A4E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_17();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC5A550(uint64_t a1)
{
  v2 = sub_25BC5B420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5A58C(uint64_t a1)
{
  v2 = sub_25BC5B420();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a10 = v20;
  v26 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_2(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v24();
  sub_25BCB7B6C();
  sub_25BCB778C();
  (*(v31 + 8))(v36, v29);
  OUTLINED_FUNCTION_16();
}

void sub_25BC5A76C()
{
  OUTLINED_FUNCTION_17_1();
  v6 = OUTLINED_FUNCTION_7_52(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6);
  v14 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v2();
  OUTLINED_FUNCTION_5_55();
  if (!v1)
  {
    OUTLINED_FUNCTION_20_32();
    sub_25BCB769C();
    v11 = *(v14 + 8);
    v12 = OUTLINED_FUNCTION_107();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void sub_25BC5A85C(void *a1@<X8>)
{
  Softmin.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC5A90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC5A9D0(char a1)
{
  if (a1)
  {
    return 1935763810;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_25BC5A9FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC5AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC5A90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC5AA78(uint64_t a1)
{
  v2 = sub_25BC5B474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5AAB4(uint64_t a1)
{
  v2 = sub_25BC5B474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC5AB58(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Hardsigmoid.forward(_:)(a1);
}

uint64_t sub_25BC5ABD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC5ACA8(char a1)
{
  if (a1)
  {
    return 0x6D6563616C706572;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_25BC5ACF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC5ABD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC5AD1C(uint64_t a1)
{
  v2 = sub_25BC5B4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5AD58(uint64_t a1)
{
  v2 = sub_25BC5B4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  OUTLINED_FUNCTION_2(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  v42 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v29();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  a15 = 0;
  OUTLINED_FUNCTION_15_25();
  sub_25BCB777C();
  if (!v25)
  {
    a14 = 1;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB777C();
  }

  (*(v36 + 8))(v41, v34);
  OUTLINED_FUNCTION_39();
}

void sub_25BC5AF40()
{
  OUTLINED_FUNCTION_40();
  v5 = OUTLINED_FUNCTION_7_52(v2, v3, v4);
  OUTLINED_FUNCTION_2(v5);
  v13 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v1();
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_20_32();
  sub_25BCB768C();
  OUTLINED_FUNCTION_20_32();
  sub_25BCB768C();
  v10 = *(v13 + 8);
  v11 = OUTLINED_FUNCTION_107();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_25BC5B074(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Threshold.forward(_:)(a1);
}

uint64_t sub_25BC5B0EC(uint64_t a1)
{
  v2 = sub_25BC5B51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5B128(uint64_t a1)
{
  v2 = sub_25BC5B51C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5B1A8()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_21();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BC5B2B8()
{
  result = qword_27FBB7280;
  if (!qword_27FBB7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7280);
  }

  return result;
}

unint64_t sub_25BC5B30C()
{
  result = qword_27FBB7298;
  if (!qword_27FBB7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7298);
  }

  return result;
}

uint64_t sub_25BC5B360(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC5B3CC()
{
  result = qword_27FBB72C8;
  if (!qword_27FBB72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72C8);
  }

  return result;
}

unint64_t sub_25BC5B420()
{
  result = qword_27FBB72E0;
  if (!qword_27FBB72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72E0);
  }

  return result;
}

unint64_t sub_25BC5B474()
{
  result = qword_27FBB72F8;
  if (!qword_27FBB72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72F8);
  }

  return result;
}

unint64_t sub_25BC5B4C8()
{
  result = qword_27FBB7310;
  if (!qword_27FBB7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7310);
  }

  return result;
}

unint64_t sub_25BC5B51C()
{
  result = qword_27FBB7328;
  if (!qword_27FBB7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7328);
  }

  return result;
}

uint64_t sub_25BC5B66C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5B6AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RReLU.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BC5B910(_BYTE *result, int a2, int a3)
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

_BYTE *sub_25BC5B9FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC5BAEC()
{
  result = qword_27FBB7330;
  if (!qword_27FBB7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7330);
  }

  return result;
}

unint64_t sub_25BC5BB44()
{
  result = qword_27FBB7338;
  if (!qword_27FBB7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7338);
  }

  return result;
}

unint64_t sub_25BC5BB9C()
{
  result = qword_27FBB7340;
  if (!qword_27FBB7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7340);
  }

  return result;
}

unint64_t sub_25BC5BBF4()
{
  result = qword_27FBB7348;
  if (!qword_27FBB7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7348);
  }

  return result;
}

unint64_t sub_25BC5BC4C()
{
  result = qword_27FBB7350;
  if (!qword_27FBB7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7350);
  }

  return result;
}

unint64_t sub_25BC5BCA4()
{
  result = qword_27FBB7358;
  if (!qword_27FBB7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7358);
  }

  return result;
}

unint64_t sub_25BC5BCFC()
{
  result = qword_27FBB7360;
  if (!qword_27FBB7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7360);
  }

  return result;
}

unint64_t sub_25BC5BD54()
{
  result = qword_27FBB7368;
  if (!qword_27FBB7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7368);
  }

  return result;
}

unint64_t sub_25BC5BDAC()
{
  result = qword_27FBB7370;
  if (!qword_27FBB7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7370);
  }

  return result;
}

unint64_t sub_25BC5BE04()
{
  result = qword_27FBB7378;
  if (!qword_27FBB7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7378);
  }

  return result;
}

unint64_t sub_25BC5BE5C()
{
  result = qword_27FBB7380;
  if (!qword_27FBB7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7380);
  }

  return result;
}

unint64_t sub_25BC5BEB4()
{
  result = qword_27FBB7388;
  if (!qword_27FBB7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7388);
  }

  return result;
}

unint64_t sub_25BC5BF0C()
{
  result = qword_27FBB7390;
  if (!qword_27FBB7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7390);
  }

  return result;
}

unint64_t sub_25BC5BF64()
{
  result = qword_27FBB7398;
  if (!qword_27FBB7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7398);
  }

  return result;
}

unint64_t sub_25BC5BFBC()
{
  result = qword_27FBB73A0;
  if (!qword_27FBB73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73A0);
  }

  return result;
}

unint64_t sub_25BC5C014()
{
  result = qword_27FBB73A8;
  if (!qword_27FBB73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73A8);
  }

  return result;
}

unint64_t sub_25BC5C06C()
{
  result = qword_27FBB73B0;
  if (!qword_27FBB73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73B0);
  }

  return result;
}

unint64_t sub_25BC5C0C4()
{
  result = qword_27FBB73B8;
  if (!qword_27FBB73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73B8);
  }

  return result;
}

unint64_t sub_25BC5C11C()
{
  result = qword_27FBB73C0;
  if (!qword_27FBB73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73C0);
  }

  return result;
}

unint64_t sub_25BC5C174()
{
  result = qword_27FBB73C8;
  if (!qword_27FBB73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73C8);
  }

  return result;
}

unint64_t sub_25BC5C1CC()
{
  result = qword_27FBB73D0;
  if (!qword_27FBB73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73D0);
  }

  return result;
}

unint64_t sub_25BC5C224()
{
  result = qword_27FBB73D8;
  if (!qword_27FBB73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73D8);
  }

  return result;
}

unint64_t sub_25BC5C27C()
{
  result = qword_27FBB73E0;
  if (!qword_27FBB73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73E0);
  }

  return result;
}

unint64_t sub_25BC5C2D4()
{
  result = qword_27FBB73E8;
  if (!qword_27FBB73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73E8);
  }

  return result;
}

unint64_t sub_25BC5C32C()
{
  result = qword_27FBB73F0;
  if (!qword_27FBB73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73F0);
  }

  return result;
}

unint64_t sub_25BC5C384()
{
  result = qword_27FBB73F8;
  if (!qword_27FBB73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73F8);
  }

  return result;
}

unint64_t sub_25BC5C3DC()
{
  result = qword_27FBB7400;
  if (!qword_27FBB7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7400);
  }

  return result;
}

unint64_t sub_25BC5C434()
{
  result = qword_27FBB7408;
  if (!qword_27FBB7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7408);
  }

  return result;
}

unint64_t sub_25BC5C48C()
{
  result = qword_27FBB7410;
  if (!qword_27FBB7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7410);
  }

  return result;
}

unint64_t sub_25BC5C4E4()
{
  result = qword_27FBB7418;
  if (!qword_27FBB7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7418);
  }

  return result;
}

unint64_t sub_25BC5C53C()
{
  result = qword_27FBB7420;
  if (!qword_27FBB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7420);
  }

  return result;
}

unint64_t sub_25BC5C594()
{
  result = qword_27FBB7428;
  if (!qword_27FBB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7428);
  }

  return result;
}

unint64_t sub_25BC5C5EC()
{
  result = qword_27FBB7430;
  if (!qword_27FBB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7430);
  }

  return result;
}

unint64_t sub_25BC5C644()
{
  result = qword_27FBB7438;
  if (!qword_27FBB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7438);
  }

  return result;
}

unint64_t sub_25BC5C69C()
{
  result = qword_27FBB7440;
  if (!qword_27FBB7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7440);
  }

  return result;
}

unint64_t sub_25BC5C6F4()
{
  result = qword_27FBB7448;
  if (!qword_27FBB7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7448);
  }

  return result;
}

unint64_t sub_25BC5C74C()
{
  result = qword_27FBB7450;
  if (!qword_27FBB7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7450);
  }

  return result;
}

unint64_t sub_25BC5C7A4()
{
  result = qword_27FBB7458;
  if (!qword_27FBB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7458);
  }

  return result;
}

unint64_t sub_25BC5C7FC()
{
  result = qword_27FBB7460;
  if (!qword_27FBB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7460);
  }

  return result;
}

unint64_t sub_25BC5C854()
{
  result = qword_27FBB7468;
  if (!qword_27FBB7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7468);
  }

  return result;
}

unint64_t sub_25BC5C8AC()
{
  result = qword_27FBB7470;
  if (!qword_27FBB7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7470);
  }

  return result;
}

unint64_t sub_25BC5C904()
{
  result = qword_27FBB7478;
  if (!qword_27FBB7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7478);
  }

  return result;
}

unint64_t sub_25BC5C95C()
{
  result = qword_28154C308;
  if (!qword_28154C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C308);
  }

  return result;
}

unint64_t sub_25BC5C9B4()
{
  result = qword_28154C310;
  if (!qword_28154C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C310);
  }

  return result;
}

unint64_t sub_25BC5CA0C()
{
  result = qword_27FBB7480;
  if (!qword_27FBB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7480);
  }

  return result;
}

unint64_t sub_25BC5CA64()
{
  result = qword_27FBB7488;
  if (!qword_27FBB7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7488);
  }

  return result;
}

unint64_t sub_25BC5CABC()
{
  result = qword_27FBB7490;
  if (!qword_27FBB7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7490);
  }

  return result;
}

unint64_t sub_25BC5CB14()
{
  result = qword_27FBB7498;
  if (!qword_27FBB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7498);
  }

  return result;
}

unint64_t sub_25BC5CB6C()
{
  result = qword_27FBB74A0;
  if (!qword_27FBB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74A0);
  }

  return result;
}

unint64_t sub_25BC5CBC4()
{
  result = qword_27FBB74A8;
  if (!qword_27FBB74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74A8);
  }

  return result;
}

unint64_t sub_25BC5CC1C()
{
  result = qword_27FBB74B0;
  if (!qword_27FBB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74B0);
  }

  return result;
}

unint64_t sub_25BC5CC74()
{
  result = qword_27FBB74B8;
  if (!qword_27FBB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74B8);
  }

  return result;
}

unint64_t sub_25BC5CCCC()
{
  result = qword_27FBB74C0;
  if (!qword_27FBB74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74C0);
  }

  return result;
}

unint64_t sub_25BC5CD24()
{
  result = qword_27FBB74C8;
  if (!qword_27FBB74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74C8);
  }

  return result;
}

unint64_t sub_25BC5CD7C()
{
  result = qword_27FBB74D0;
  if (!qword_27FBB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74D0);
  }

  return result;
}

unint64_t sub_25BC5CDD4()
{
  result = qword_27FBB74D8;
  if (!qword_27FBB74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74D8);
  }

  return result;
}

unint64_t sub_25BC5CE2C()
{
  result = qword_27FBB74E0;
  if (!qword_27FBB74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74E0);
  }

  return result;
}

unint64_t sub_25BC5CE84()
{
  result = qword_27FBB74E8;
  if (!qword_27FBB74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74E8);
  }

  return result;
}

unint64_t sub_25BC5CEDC()
{
  result = qword_27FBB74F0;
  if (!qword_27FBB74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74F0);
  }

  return result;
}

unint64_t sub_25BC5CF34()
{
  result = qword_27FBB74F8;
  if (!qword_27FBB74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74F8);
  }

  return result;
}

unint64_t sub_25BC5CF8C()
{
  result = qword_27FBB7500;
  if (!qword_27FBB7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7500);
  }

  return result;
}

unint64_t sub_25BC5CFE4()
{
  result = qword_27FBB7508;
  if (!qword_27FBB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7508);
  }

  return result;
}

unint64_t sub_25BC5D03C()
{
  result = qword_27FBB7510;
  if (!qword_27FBB7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7510);
  }

  return result;
}

unint64_t sub_25BC5D094()
{
  result = qword_27FBB7518;
  if (!qword_27FBB7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7518);
  }

  return result;
}

uint64_t sub_25BC5D23C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_83(a1, a2);
  v2();
  v3 = *(v5 + 16);

  return v3;
}

uint64_t sub_25BC5D280(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 56);
  swift_unknownObjectRetain();
  v9(&v11, a1, a2, MEMORY[0x277D83B88], ObjectType, v7);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t sub_25BC5D338()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  v3 = *(v0 + 40);
  sub_25BB5C3B0();
  return sub_25BCB582C();
}

uint64_t sub_25BC5D3A4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_25BC5D280(sub_25BC5DD10, v3);
}

uint64_t sub_25BC5D3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;

  v4 = sub_25BC76C08();
  [v4 lock];

  v6 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v5 < 0)
  {
    v11 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v18 = sub_25BC5DD48;
    v19 = v20;
    v13 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    swift_unknownObjectRetain();
    v13(&v26, sub_25BC5DD2C, &v17, MEMORY[0x277D83B88], ObjectType, v5 & 0x7FFFFFFFFFFFFFFFLL);
    sub_25BB72F9C(v6, v5);
  }

  else
  {
    v25[0] = *(v3 + 24);

    if (sub_25BB71DA0(v25))
    {
      sub_25BC76F00();
      v8 = v7;
      v9 = swift_getObjectType();
      v10 = MEMORY[0x28223BE20](v9);
      v18 = sub_25BC5DD48;
      v19 = v20;
      (*(v8 + 56))(&v26, sub_25BC5DD60, v10);
      swift_unknownObjectRelease();
      sub_25BB72F9C(v6, v5);
    }

    else
    {
      swift_beginAccess();
      v14 = *(v6 + 48);
      v15 = sub_25BB7135C() + v14;
      if (!v14)
      {
        v15 = 0;
      }

      v23 = v14;
      v24 = v15;
      sub_25BB5C3B0();
      sub_25BCB582C();
      sub_25BB72F9C(v6, v5);
    }
  }

  [*(v3 + 48) unlock];
}

uint64_t sub_25BC5D688(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_25BC5D9B8(sub_25BC5DD48, v3);
}

uint64_t sub_25BC5D708()
{
  sub_25BB9ACC4();
  v1 = (v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25BB33C70(v3, v2);
  sub_25BC5D8B8(v3, v2);
  return sub_25BB0D160(v3, v2);
}

uint64_t sub_25BC5D7D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_83(a1, a2);
  v4();
  result = v13;
  v6 = *(v13 + 16);
  if (v6)
  {
    v7 = (v13 + 32);
    v8 = 1;
    while (1)
    {
      v9 = *v7++;
      v10 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        break;
      }

      v8 = v10;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = 1;
LABEL_7:

  (*(a2 + 8))(&v12, a1, a2);
  if (v12 - 1 > 0xA)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCD1E10[(v12 - 1)];
  }

  result = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BC5D8B8(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_25BC5DC50(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_25BC5DBA8(result, v2);
      break;
  }

  return result;
}

uint64_t sub_25BC5D954(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&var1);
  if (var1 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD1E10[(var1 - 1)];
  }
}

uint64_t sub_25BC5D9B8(uint64_t a1, uint64_t a2)
{
  sub_25BC2B4B4();
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(&v9, a1, a2, MEMORY[0x277D83B88], ObjectType, v6);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_25BC5DA5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_83(a1, a2);
  v2();
  result = v9;
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = (v9 + 32);
    v6 = 1;
    while (1)
    {
      v7 = *v5++;
      v8 = v6 * v7;
      if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
      {
        break;
      }

      v6 = v8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 1;
LABEL_7:

    return v8;
  }

  return result;
}

void *sub_25BC5DAD8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25BC5DAFC@<X0>(uint64_t *a1@<X8>)
{
  sub_25BB5C3B0();
  result = sub_25BCB582C();
  *a1 = result;
  return result;
}

void *sub_25BC5DB6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = a3(&v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_25BC5DBA8(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  v7 = &v4;
  v8 = &v4 + BYTE6(a2);
  sub_25BB5C3B0();
  result = sub_25BCB582C();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BC5DC50(uint64_t a1, uint64_t a2)
{
  result = sub_25BCB584C();
  if (!result || (result = sub_25BCB587C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25BCB586C();
      sub_25BB5C3B0();
      return sub_25BCB582C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5DD10@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25BC5DAFC(a1);
}

uint64_t sub_25BC5DE44()
{
  v29 = MEMORY[0x277D84F90];
  sub_25BAC1E24(3, 0);
  v1 = v0[5];

  v3 = MEMORY[0x25F876F40](v2);
  OUTLINED_FUNCTION_0_22(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29);
  if (v12)
  {
    OUTLINED_FUNCTION_1_69(v11);
    OUTLINED_FUNCTION_8_52();
  }

  OUTLINED_FUNCTION_10_11();
  if (v0[6])
  {
    v13 = v0[6];

    v15 = MEMORY[0x25F876F40](v14);
    OUTLINED_FUNCTION_0_22(v15, v16, v17, v18, v19, v20, v21, v22, v28, v30);
    if (v12)
    {
      OUTLINED_FUNCTION_1_69(v23);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[7])
  {

    MEMORY[0x25F876F40](v24);
    OUTLINED_FUNCTION_5_56(v30);
    if (v12)
    {
      OUTLINED_FUNCTION_81(v25);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_11_46();
  }

  return v30;
}

uint64_t sub_25BC5DF28()
{
  result = 0;
LABEL_2:
  if (result == *(*(*(v0 + 40) + 152) + 16))
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCE4E40);
    v6 = *(*(v0 + 40) + 152);
    v7 = sub_25BCB617C();
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x25F876F80](v7, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v9);

    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE4E70);
    v10 = MEMORY[0x25F876F80](*(v0 + 64), v8);
    MEMORY[0x25F876C90](v10);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BCB617C();
    sub_25BA97890();
  }

  v2 = *(v0 + 64);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    --v3;
    if (v5 == result)
    {
      ++result;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_25BC5E0B8()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v1 = (*(*v0 + 288))();
    v2 = v0[18];
    v0[18] = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

void sub_25BC5E19C(unint64_t a1)
{
  v3 = sub_25BAC0E14(1, *(*(*(v1 + 40) + 152) + 16));
  v4 = sub_25BC5DE18();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a1)
  {
    v1 = *(v4 + 8 * a1 + 32);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  sub_25BAA2110(v3);
  v3 = v5;
LABEL_4:
  if (*(v3 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8 * a1 + 32) = v1;
  }
}

uint64_t sub_25BC5E23C()
{
  OUTLINED_FUNCTION_1_0();
  v5 = *(v1 + 40);
  sub_25BAC4018();
  if (v4 == OUTLINED_FUNCTION_19_31())
  {
    v7 = v2[5];
    v2[5] = v0;
  }

  else if (v2[7] && sub_25BAC4018() == *(v3 + 16))
  {
    v8 = v2[7];
    v2[7] = v0;
  }

  else
  {
    if (!v2[6] || sub_25BAC4018() != *(v3 + 16))
    {
      return 0;
    }

    v9 = v2[6];
    v2[6] = v0;
  }

  return 1;
}

void *sub_25BC5E2EC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[18];

  return v0;
}

uint64_t sub_25BC5E334()
{
  sub_25BC5E2EC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5E40C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BC5E468()
{
  v51 = MEMORY[0x277D84F90];
  sub_25BAC1E24(5, 0);
  v1 = v0[5];

  v3 = MEMORY[0x25F876F40](v2);
  OUTLINED_FUNCTION_0_22(v3, v4, v5, v6, v7, v8, v9, v10, v49, v51);
  if (v12)
  {
    OUTLINED_FUNCTION_1_69(v11);
    OUTLINED_FUNCTION_8_52();
  }

  OUTLINED_FUNCTION_10_11();
  if (v0[19])
  {
    v13 = v0[19];

    v15 = MEMORY[0x25F876F40](v14);
    OUTLINED_FUNCTION_0_22(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52);
    if (v12)
    {
      OUTLINED_FUNCTION_1_69(v23);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[20])
  {
    v24 = v0[20];

    v26 = MEMORY[0x25F876F40](v25);
    OUTLINED_FUNCTION_0_22(v26, v27, v28, v29, v30, v31, v32, v33, v50, v52);
    if (v12)
    {
      OUTLINED_FUNCTION_1_69(v34);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[6])
  {
    v35 = v0[6];

    v37 = MEMORY[0x25F876F40](v36);
    OUTLINED_FUNCTION_0_22(v37, v38, v39, v40, v41, v42, v43, v44, v50, v52);
    if (v12)
    {
      OUTLINED_FUNCTION_1_69(v45);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[7])
  {

    MEMORY[0x25F876F40](v46);
    OUTLINED_FUNCTION_5_56(v52);
    if (v12)
    {
      OUTLINED_FUNCTION_81(v47);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_11_46();
  }

  return v52;
}

uint64_t sub_25BC5E5CC()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BC5E23C() & 1) == 0)
  {
    v3 = (v1 + 152);
    if (!*(v1 + 152) || (sub_25BAC4018(), v2 != OUTLINED_FUNCTION_19_31()))
    {
      v5 = *(v1 + 160);
      v4 = (v1 + 160);
      if (!v5)
      {
        return 0;
      }

      sub_25BAC4018();
      if (v2 != OUTLINED_FUNCTION_19_31())
      {
        return 0;
      }

      v3 = v4;
    }

    v7 = *v3;
    *v3 = v0;
  }

  return 1;
}

uint64_t sub_25BC5E660()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 160);
}

uint64_t sub_25BC5E690()
{
  sub_25BC5E2EC();
  v1 = *(v0 + 152);

  v2 = *(v0 + 160);

  return v0;
}

uint64_t sub_25BC5E6BC()
{
  sub_25BC5E690();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5E72C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBB6D0;
  v3 = v1[6];
  *(v2 + 32) = v1[5];
  v19 = v2;
  if (v3)
  {

    v5 = MEMORY[0x25F876F40](v4);
    OUTLINED_FUNCTION_0_22(v5, v6, v7, v8, v9, v10, v11, v12, v18, v2);
    if (v14)
    {
      OUTLINED_FUNCTION_1_69(v13);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v19;
  }

  else
  {
  }

  if (v1[7])
  {

    MEMORY[0x25F876F40](v15);
    OUTLINED_FUNCTION_5_56(v19);
    if (v14)
    {
      OUTLINED_FUNCTION_81(v16);
      OUTLINED_FUNCTION_8_52();
    }

    OUTLINED_FUNCTION_11_46();
    return v19;
  }

  return v2;
}

uint64_t sub_25BC5E814(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, _BYTE *a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 168) = *a11;
  *(v15 + 176) = a14;
  *(v15 + 184) = a15;
  if (a3)
  {
    v20 = a3;
    sub_25BA9D8C4(a14);
  }

  else
  {
    sub_25BA9D8C4(a14);
    v23 = OUTLINED_FUNCTION_6_53();
    a1 = sub_25BAA5EA0(v23, v24 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000);
    a2 = v25;
    v20 = v26;
  }

  *(v15 + 152) = a5;
  *(v15 + 160) = a6;
  *(v15 + 144) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v20;
  *(v15 + 40) = a4;
  *(v15 + 48) = a7;
  *(v15 + 56) = a8;
  *(v15 + 64) = a12;
  *(v15 + 72) = a9;
  *(v15 + 76) = a10;
  v27 = a13[1];
  *(v15 + 80) = *a13;
  *(v15 + 96) = v27;
  *(v15 + 112) = a13[2];
  *(v15 + 122) = *(a13 + 42);
  sub_25BA9D148(a14);
  return v15;
}

uint64_t sub_25BC5E920()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE50;
  v5 = *(v0 + 40);

  sub_25BAC9400(v6, v4 + 32);
  if (*(v0 + 168))
  {
    if (*(v0 + 168) != 1)
    {
      return v4;
    }

LABEL_6:
    v8 = *(v3 + 152);
    if (v8)
    {
      v9 = *(v8 + 152);
      v10 = *(v8 + 160);
      v11 = *(v3 + 152);

      sub_25BCB617C();
      OUTLINED_FUNCTION_13_42();
      v4 = v12;

      *(v4 + 16) = v1;
      *(v4 + 48) = v9;
      *(v4 + 56) = v10;
    }

    if (*(v3 + 160))
    {
      OUTLINED_FUNCTION_14_39();
      sub_25BCB617C();
      if (v1 >= v2 >> 1)
      {
        OUTLINED_FUNCTION_15_40();
        v4 = v14;
      }

      OUTLINED_FUNCTION_16_45();
    }

    return v4;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v15);

  if (!v16)
  {
    sub_25BAA4AF4(v15);
    return v4;
  }

  v7 = *(v16 + 24);
  sub_25BAA4AF4(v15);
  if (v7)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_25BC5EA70()
{
  sub_25BC5E690();
  v1 = *(v0 + 184);
  sub_25BA9D148(*(v0 + 176));

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5EAD4()
{
  OUTLINED_FUNCTION_7_53();
  sub_25BCB625C();
  sub_25BAD4C78(v1, *(v0 + 64));
  MEMORY[0x25F878200](*(v0 + 168));
  *(v0 + 72);
  sub_25BCB7A0C();
  return OUTLINED_FUNCTION_17_41();
}

uint64_t sub_25BC5EB58()
{
  v14 = MEMORY[0x277D84F90];
  sub_25BAC1E24(5, 0);
  swift_beginAccess();
  v1 = v0[19];

  MEMORY[0x25F876F40](v2);
  OUTLINED_FUNCTION_2_69(v14);
  if (v4)
  {
    OUTLINED_FUNCTION_1_69(v3);
    OUTLINED_FUNCTION_18_39();
  }

  OUTLINED_FUNCTION_10_44();
  v5 = v0[5];

  MEMORY[0x25F876F40](v6);
  OUTLINED_FUNCTION_2_69(v14);
  if (v4)
  {
    OUTLINED_FUNCTION_1_69(v7);
    OUTLINED_FUNCTION_18_39();
  }

  OUTLINED_FUNCTION_10_44();
  if (v0[6])
  {
    v8 = v0[6];

    MEMORY[0x25F876F40](v9);
    OUTLINED_FUNCTION_2_69(v14);
    if (v4)
    {
      OUTLINED_FUNCTION_1_69(v10);
      OUTLINED_FUNCTION_18_39();
    }

    OUTLINED_FUNCTION_10_44();
  }

  if (v0[7])
  {

    MEMORY[0x25F876F40](v11);
    OUTLINED_FUNCTION_5_56(v14);
    if (v4)
    {
      OUTLINED_FUNCTION_81(v12);
      OUTLINED_FUNCTION_18_39();
    }

    sub_25BCB680C();
  }

  return v14;
}

uint64_t sub_25BC5EC94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, _OWORD *a11)
{
  *(v11 + 152) = a4;
  if (a3)
  {
    v18 = a3;
  }

  else
  {

    v21 = OUTLINED_FUNCTION_6_53();
    a1 = sub_25BAA5EA0(v21, v22 | 0xEF646172675F0000);
    a2 = v23;
    v18 = v24;
  }

  *(v11 + 144) = 0;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v18;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 76) = a10;
  v25 = a11[1];
  *(v11 + 80) = *a11;
  *(v11 + 96) = v25;
  *(v11 + 112) = a11[2];
  *(v11 + 122) = *(a11 + 42);

  return v11;
}

uint64_t sub_25BC5ED7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  v4 = v0[5];

  sub_25BAC9400(v5, v3 + 32);
  v6 = v0[6];
  if (v6)
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
    v9 = v0[6];

    sub_25BCB617C();
    OUTLINED_FUNCTION_13_42();
    v3 = v10;

    *(v3 + 16) = v1;
    *(v3 + 48) = v7;
    *(v3 + 56) = v8;
  }

  if (v0[7])
  {
    OUTLINED_FUNCTION_14_39();
    sub_25BCB617C();
    if (v1 >= v2 >> 1)
    {
      OUTLINED_FUNCTION_15_40();
      v3 = v12;
    }

    OUTLINED_FUNCTION_16_45();
  }

  return v3;
}

uint64_t sub_25BC5EE64()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BC5E23C() & 1) == 0)
  {
    swift_beginAccess();
    v3 = *(v1 + 152);
    sub_25BAC4018();
    if (v2 != OUTLINED_FUNCTION_19_31())
    {
      return 0;
    }

    v5 = *(v1 + 152);
    *(v1 + 152) = v0;
  }

  return 1;
}

uint64_t sub_25BC5EEF0()
{
  sub_25BC5E2EC();
  v1 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5EF50()
{
  OUTLINED_FUNCTION_7_53();
  sub_25BCB625C();
  sub_25BAD4C78(v1, *(v0 + 64));
  *(v0 + 72);
  sub_25BCB7A0C();
  return OUTLINED_FUNCTION_17_41();
}

uint64_t sub_25BC5EFD4(uint64_t a1)
{
  result = sub_25BC5F084(&qword_27FBB6148, type metadata accessor for BatchNormOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC5F02C(uint64_t a1)
{
  result = sub_25BC5F084(&qword_27FBB7520, type metadata accessor for BaseNormalizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC5F084(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC5F0F4()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F138(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BA928B4();
  [v4 lock];

  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a2 + 40, v10);
  if (v12)
  {
    if (v12 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v11);
    }

    else
    {
      sub_25BA9778C(v10);
    }

    v7 = 1;
  }

  else
  {
    sub_25BA9BE3C(v10, v9);
    v5 = v9[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 56))(ObjectType, v5);
    sub_25BA977E0(v9);
  }

  [*(a1 + 224) unlock];

  return v7 & 1;
}

uint64_t sub_25BC5F250(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = *a2;
  v4[2] = 0;
  v4[4] = 0;
  v4[28] = 0;
  v4[29] = 0;
  type metadata accessor for InputOperation();
  swift_allocObject();
  sub_25BCB617C();
  v9 = OUTLINED_FUNCTION_3();
  v15 = sub_25BAA5FD0(v9, v10, v11, v12, v13, v14);
  v16 = v15;
  if ((a4 & 0x100000000) != 0)
  {
    LODWORD(a4) = *(v15 + 16);
  }

  *(v5 + 6) = a4;
  v5[19] = v7;
  *(v5 + 160) = v8;
  OUTLINED_FUNCTION_0_84();
  v19 = sub_25BAA6C78(v17, 255, v18);
  swift_weakInit();

  v35 = sub_25BAA6CC0(0);
  v36 = v20;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    v22 = *(result + 32);
    sub_25BCB617C();

    v37 = v22;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      v23 = *(result + 40);

      LOBYTE(v38) = v23;
      v24 = swift_weakAssign();
      OUTLINED_FUNCTION_4_62(v24, v25, v26, v27, v28, v29, v30, v31, v16, v19, 0, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, SHIBYTE(v42));
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0;
  v55 = 0;
  v48 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ConstantOp.swift";
  v49 = 112;
  v50 = 2;
  v51 = xmmword_25BCD1FE0;
  v52 = "init(id:value:name:creationSite:)";
  v53 = 33;
  v54 = 2;
  type metadata accessor for ConstantOperation();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = OUTLINED_FUNCTION_3();
  v17 = sub_25BAF6554(v13, v14, v15, a1, a2, a3, a4, v16);
  v18 = v17;
  if ((a6 & 0x100000000) != 0)
  {
    LODWORD(a6) = *(v17 + 16);
  }

  *(v7 + 24) = a6;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v33, ObjectType, a2);
  *(v7 + 152) = v33;
  (*(a2 + 8))(&v33, ObjectType, a2);
  *(v7 + 160) = v33;
  v20 = sub_25BAA6C78(&qword_27FBB4570, 255, type metadata accessor for ConstantOperation);
  OUTLINED_FUNCTION_5_57();
  swift_weakInit();
  v33 = v18;
  v34 = v20;

  v39 = sub_25BAE3B3C(0);
  v40 = v21;
  result = sub_25BAF64F0();
  if (*(result + 16))
  {
    v23 = *(result + 32);
    sub_25BCB617C();

    v41 = v23;
    result = sub_25BAF64F0();
    if (*(result + 16))
    {
      v24 = *(result + 40);

      swift_unknownObjectRelease();
      LOBYTE(v42) = v24;
      v35 = 0;
      OUTLINED_FUNCTION_5_57();
      v25 = swift_weakAssign();
      OUTLINED_FUNCTION_4_62(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F634(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5F674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC5F6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 106))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 105);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC5F714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 90) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC5F768(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 89) = 0u;
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 105) = a2;
  return result;
}

uint64_t sub_25BC5F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a1 + 40, v9);
  if (!v9[105])
  {
    sub_25BA9323C(a1 + 40, v7);
    sub_25BA9BD18(a2, a3, v8);
    sub_25BA9778C(v7);
    swift_beginAccess();
    sub_25BA97834(v8, a1 + 40);
    swift_endAccess();
  }

  return sub_25BA9778C(v9);
}

uint64_t sub_25BC5F9AC()
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](v0);
  return sub_25BCB7A3C();
}

BOOL sub_25BC5F9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25BC5F93C();
}

uint64_t sub_25BC5FA60()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC5FAD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_25BAA5BB4(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), v11, a5, a6);
}

void sub_25BC5FB58(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  a7[2] = 0;
  a7[4] = 0;
  v17 = a9 + 40;
  v16 = *(a9 + 40);
  a7[28] = 0;
  a7[29] = 0;
  v52 = v16;
  v18 = v16(a8, a9);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (*(v18 + 16) <= a2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v48 = a6;
  v53 = a5;
  v19 = v18 + 16 * a2;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  sub_25BCB617C();

  if ((a4 & 0x100000000) != 0)
  {
    LODWORD(a4) = (*(a9 + 16))(a8, a9);
  }

  *(v10 + 24) = a4;
  *(v10 + 152) = v20;
  *(v10 + 160) = v21;
  v22 = sub_25BC60530(a8, a9);
  v50 = a8;
  v51 = a1;
  v23 = (*(a9 + 32))(a8, a9);
  v17 = v23;
  if (v22 != 1)
  {
    v46 = a2;
    v47 = v10;
    v26 = sub_25BAAF54C(v23);
    if (v26)
    {
      v27 = v26;
      v55[0] = MEMORY[0x277D84F90];
      sub_25BAA21EC();
      if (v27 < 0)
      {
        __break(1u);
        return;
      }

      v28 = 0;
      v29 = v55[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v28, v17);
        }

        else
        {
          v30 = *(v17 + 8 * v28 + 32);
        }

        v31 = sub_25BAA0954();

        v55[0] = v29;
        v32 = v29[2];
        if (v32 >= v29[3] >> 1)
        {
          sub_25BAA21EC();
          v29 = v55[0];
        }

        ++v28;
        v29[2] = v32 + 1;
        v29[v32 + 4] = v31;
      }

      while (v27 != v28);
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v33 = sub_25BAAF550(v29);
    v35 = v34;

    if (v35)
    {
      v25 = 0;
    }

    else
    {
      v25 = v33;
    }

    a2 = v46;
    v10 = v47;
    goto LABEL_24;
  }

  sub_25BAB4D78(0, (v23 & 0xC000000000000001) == 0, v23);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  v24 = *(v17 + 32);

  while (1)
  {

    v25 = sub_25BAA0954();

LABEL_24:
    v36 = v50;
    v37 = v51;
    if (__OFADD__(v25, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v51 = v25 + 1;
    swift_weakInit();
    v55[0] = v37;
    v55[1] = a9;
    v38 = *(a9 + 72);

    swift_unknownObjectRetain_n();
    v55[6] = v38(a2, v50, a9);
    v55[7] = v39;
    v40 = v52(v50, a9);
    if (*(v40 + 16) <= a2)
    {
      goto LABEL_38;
    }

    v17 = v40;
    v41 = *(v40 + 16 * a2 + 32);
    sub_25BCB617C();

    v55[8] = v41;
    v50 = a9;
    v42 = v52(v36, a9);
    if (*(v42 + 16) > a2)
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x25F8779B0](0, v17);
  }

  v43 = *(v42 + 16 * a2 + 40);

  swift_unknownObjectRelease();
  v56 = v43;
  v55[2] = a2;
  swift_weakAssign();

  v55[5] = v48;
  v55[3] = v51;
  sub_25BAA0E58(v55, v10 + 40);
  *(v10 + 145) = 0;
  sub_25BAA51C8(a3, v10 + 168);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  if (qword_27FBB3830 >= v51)
  {
  }

  else
  {
    v44 = sub_25BAD4CB8(v36, a9);
    swift_unknownObjectRelease();
    if (v44 != 1 || v53)
    {

      goto LABEL_33;
    }

    v45 = sub_25BA928B4();
    [v45 lock];

    sub_25BA92920(v10, 0, 0, &v54);
    [*(v10 + 224) unlock];
  }

  swift_unknownObjectRelease();
LABEL_33:
  sub_25BA9C2C8(a3);
  sub_25BA977E0(v55);
}

uint64_t sub_25BC6002C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC6006C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC600BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC600FC(uint64_t result, int a2, int a3)
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

uint64_t sub_25BC6017C()
{
  if (*(v0[8] + 16) == 1)
  {
    v1 = v0[3];
    v2 = v0[4];
    sub_25BCB617C();
  }

  else
  {
    v5 = v0[3];
    v6 = v0[4];
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v3 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v3);

    return v5;
  }

  return v1;
}

uint64_t sub_25BC602F4()
{
  v0 = *(sub_25BB31258() + 16);

  sub_25BB30F88();
  if (v0 == 1)
  {
    return v1;
  }

  v3 = v1;
  OUTLINED_FUNCTION_11_4();
  sub_25BCB77FC();
  OUTLINED_FUNCTION_28_0();

  return v3;
}

uint64_t sub_25BC603DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v8 = v6;
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  MEMORY[0x25F876C90](a1, a2);
  return v8;
}

uint64_t sub_25BC60530(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2 >> 62)
  {
    v3 = sub_25BCB749C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void sub_25BC607AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = (*(a6 + 32))(a5, a6);
  v10 = 0;
  v51 = sub_25BA9BEA0(v9);
  v46 = a2;
  v44 = MEMORY[0x277D84F90];
  v48 = v6;
  while (v51 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x25F8779B0](v10, v9);
    }

    else
    {
      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v11 = *(v9 + 8 * v10 + 32);
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    if (!sub_25BAB3058())
    {
      goto LABEL_18;
    }

    v14 = v13;
    v15 = sub_25BAD5384();
    if (v16)
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v45 = v15;
    ObjectType = swift_getObjectType();
    v18 = (*(v14 + 16))(ObjectType, v14);
    v20 = v19;
    v22 = v21;
    v23 = swift_getObjectType();
    if (v18 != (*(v46 + 16))(v23))
    {
      swift_unknownObjectRelease();

      v6 = v48;
      goto LABEL_18;
    }

    if (v20 == v24 && v22 == v25)
    {
      swift_unknownObjectRelease();

      v6 = v48;
      goto LABEL_20;
    }

    v27 = sub_25BCB789C();
    swift_unknownObjectRelease();

    v6 = v48;
    if (v27)
    {
LABEL_20:
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v44 + 16);
        sub_25BAFDAC4();
        v28 = v32;
      }

      v29 = *(v28 + 16);
      v44 = v28;
      if (v29 >= *(v28 + 24) >> 1)
      {
        sub_25BAFDAC4();
        v44 = v33;
      }

      *(v44 + 16) = v29 + 1;
      v30 = v44 + 16 * v29;
      *(v30 + 32) = v11;
      *(v30 + 40) = v45;
      v10 = v12;
    }

    else
    {
LABEL_18:

      ++v10;
    }
  }

  v34 = *(v44 + 16);
  if (v34)
  {
    v50 = *(v6 + 80);
    v49 = swift_getObjectType();
    v35 = (v44 + 40);
    v36 = a4;
    do
    {
      v37 = *(v35 - 1);
      v38 = *v35;
      sub_25BAA51C8(v37 + 168, v53);
      v39 = *(v37 + 24);

      v40 = sub_25BACB06C();
      v41 = sub_25BAD259C();
      type metadata accessor for TensorRepresentation();
      v42 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_25BC5FB58(a3, v38, v53, v39, v40, v41, v42, v49, v36);
      v50(v37, v43, a5, v48);

      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
  }
}

uint64_t sub_25BC60BE4()
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC60C34()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_25BC60BE4();
}

uint64_t sub_25BC60C3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_25BC60BD8();
}

unint64_t sub_25BC60C50()
{
  result = qword_28154ED88;
  if (!qword_28154ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154ED88);
  }

  return result;
}

uint64_t sub_25BC60CE8()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7538, &qword_25BCD24C8);
  v0 = sub_25BCB63AC();
  v2 = v1;

  v6 = v0;
  v7 = v2;
  v3 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v3);
  return sub_25BAA4AF4(v5);
}

uint64_t MultiheadAttention.queryWeight.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC60E48@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.queryWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.queryWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC60F48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t MultiheadAttention.$queryWeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  return OUTLINED_FUNCTION_10_45(*v1, a1);
}

void MultiheadAttention.queryBias.getter(void *a1@<X8>)
{
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

uint64_t *MultiheadAttention.queryBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 26) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.queryBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 26) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61208;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC61208(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27(a1);
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21(a1);
  Parameter.wrappedValue.setter(v5);
}

uint64_t MultiheadAttention.$queryBias.getter()
{
  if (*(v0 + 26) == 1)
  {
    v1 = *(v0 + 25);
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v4);
}

uint64_t MultiheadAttention.keyWeight.getter()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC61384@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.keyWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.keyWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 32));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC61490(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t MultiheadAttention.$keyWeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  return OUTLINED_FUNCTION_10_45(*(v1 + 32), a1);
}

void MultiheadAttention.keyBias.getter(void *a1@<X8>)
{
  if (*(v1 + 58) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

uint64_t *MultiheadAttention.keyBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 58) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.keyBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 58) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 48));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61758;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC61758(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27(a1);
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21(a1);
  Parameter.wrappedValue.setter(v5);
}

uint64_t MultiheadAttention.$keyBias.getter()
{
  if (*(v0 + 58) == 1)
  {
    v1 = *(v0 + 57);
    v2 = *(v0 + 56);
    v3 = *(v0 + 48);
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v4);
}

uint64_t MultiheadAttention.valueWeight.getter()
{
  v1 = *(v0 + 64);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC618D4@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.valueWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.valueWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 64));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC619E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t MultiheadAttention.$valueWeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 73);
  return OUTLINED_FUNCTION_10_45(*(v1 + 64), a1);
}

void MultiheadAttention.valueBias.getter(void *a1@<X8>)
{
  if (*(v1 + 90) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

uint64_t *MultiheadAttention.valueBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 90) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.valueBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 90) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 80));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61CA8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC61CA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27(a1);
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21(a1);
  Parameter.wrappedValue.setter(v5);
}

uint64_t MultiheadAttention.$valueBias.getter()
{
  if (*(v0 + 90) == 1)
  {
    v1 = *(v0 + 89);
    v2 = *(v0 + 88);
    v3 = *(v0 + 80);
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v4);
}

uint64_t MultiheadAttention.outputWeight.getter()
{
  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC61E24@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.outputWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.outputWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 96));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC61F64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t MultiheadAttention.$outputWeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 105);
  return OUTLINED_FUNCTION_10_45(*(v1 + 96), a1);
}

void MultiheadAttention.outputBias.getter(void *a1@<X8>)
{
  if (*(v1 + 122) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 112);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

uint64_t *MultiheadAttention.outputBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 122) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.outputBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 122) != 1)
  {
    *v1 = 0;
    return sub_25BC622FC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 112));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC62260;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BC62260(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27(a1);
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21(a1);
  Parameter.wrappedValue.setter(v5);
}

void *sub_25BC62300(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t MultiheadAttention.$outputBias.getter()
{
  if (*(v0 + 122) == 1)
  {
    v1 = *(v0 + 121);
    v2 = *(v0 + 120);
    v3 = *(v0 + 112);
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v4);
}

uint64_t MultiheadAttention.isEveryParameterInitialized.getter()
{
  memcpy(v4, v0, 0x9CuLL);
  if (*(v4[16] + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_25BC6240C(v4);
    v1 = OUTLINED_FUNCTION_73_8(v2);
  }

  return v1 & 1;
}

BOOL sub_25BC6240C(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 32);
  if (v3 < 0 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
    result = 0;
    v4 = *(*(a1 + 64) + 32);
    if (v4 < 0 && (v4 & 0xF000000000000007) != 0xF000000000000007)
    {
      result = 0;
      v5 = *(*(a1 + 32) + 32);
      if (v5 < 0 && (v5 & 0xF000000000000007) != 0xF000000000000007)
      {
        result = 0;
        v6 = *(*(a1 + 96) + 32);
        if (v6 < 0 && (v6 & 0xF000000000000007) != 0xF000000000000007)
        {
          if ((*(a1 + 26) & 1) == 0 || (result = 0, v7 = *(*(a1 + 16) + 32), v7 < 0) && (v7 & 0xF000000000000007) != 0xF000000000000007)
          {
            if ((*(a1 + 90) & 1) == 0 || (result = 0, v8 = *(*(a1 + 80) + 32), v8 < 0) && (v8 & 0xF000000000000007) != 0xF000000000000007)
            {
              if ((*(a1 + 58) & 1) == 0 || (result = 0, v9 = *(*(a1 + 48) + 32), v9 < 0) && (v9 & 0xF000000000000007) != 0xF000000000000007)
              {
                if (*(a1 + 122))
                {
                  v10 = *(*(a1 + 112) + 32);
                  return (~v10 & 0xF000000000000007) != 0 && v10 < 0;
                }

                else
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MultiheadAttention.embeddingDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]);
  if ((*(v30[16] + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v30);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14(v30[0]);
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_12:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_12;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (!v12)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  return *(v11 + 32);
}

uint64_t MultiheadAttention.keyDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]);
  if ((*(v32 + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v30);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14(v31);
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_12:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_12;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (v12 <= 1)
  {
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  return *(v11 + 40);
}

uint64_t MultiheadAttention.valueDimension.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_64_11(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]);
  if ((*(v32 + 16) & 1) == 0)
  {
    v8 = sub_25BC6240C(v30);
    if ((OUTLINED_FUNCTION_73_8(v8) & 1) == 0)
    {
      OUTLINED_FUNCTION_23_32();
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_52_14(v31);
  if (v10)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_12:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_12;
  }

  v11 = OUTLINED_FUNCTION_13_7(v9);
  if (v12 <= 1)
  {
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  return *(v11 + 40);
}

uint64_t MultiheadAttention.headDimension.getter()
{
  v1 = memcpy(v13, v0, sizeof(v13));
  v3 = *(v0 + 152);
  v14 = *(v0 + 144);
  v2 = v14;
  v15 = v3;
  result = MultiheadAttention.embeddingDimension.getter(v1, v4, v5, v6, v7, v8, v9, v10);
  if (v2)
  {
    if (v2 != -1 || result != 0x8000000000000000)
    {
      result /= v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MultiheadAttention.init(headCount:dropoutProbability:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, float a4@<S0>)
{
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v34 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v9 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_29();
  v10 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7530, &unk_25BCD23A0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  OUTLINED_FUNCTION_29_29();
  v12 = OUTLINED_FUNCTION_56_13();
  v33 = sub_25BB1AB04(v12);
  OUTLINED_FUNCTION_29_29();
  v13 = OUTLINED_FUNCTION_56_13();
  v32 = sub_25BB1AB04(v13);
  OUTLINED_FUNCTION_29_29();
  v14 = OUTLINED_FUNCTION_56_13();
  v31 = sub_25BB1AB04(v14);
  OUTLINED_FUNCTION_29_29();
  v15 = OUTLINED_FUNCTION_56_13();
  v16 = sub_25BB1AB04(v15);
  if (a2)
  {
    OUTLINED_FUNCTION_29_29();
    v30 = v16;
    OUTLINED_FUNCTION_17_26();
    v17 = swift_retain_n();
    v29 = sub_25BB1AB04(v17);

    OUTLINED_FUNCTION_29_29();
    v18 = OUTLINED_FUNCTION_17_26();
    v19 = v11;
    v20 = a1;
    v21 = sub_25BB1AB04(v18);

    OUTLINED_FUNCTION_29_29();
    v22 = OUTLINED_FUNCTION_17_26();
    v23 = sub_25BB1AB04(v22);

    OUTLINED_FUNCTION_29_29();
    v24 = OUTLINED_FUNCTION_17_26();
    v25 = sub_25BB1AB04(v24);

    v27 = 1;
    v28 = v23;
    v9 = v21;
    a1 = v20;
    v11 = v19;
    v10 = v25;
    v8 = v29;
    v16 = v30;
  }

  else
  {

    v27 = 0;
    v28 = v34;
  }

  *a3 = v33;
  *(a3 + 8) = 256;
  *(a3 + 16) = v8;
  *(a3 + 24) = 256;
  *(a3 + 26) = v27;
  *(a3 + 32) = v31;
  *(a3 + 40) = 256;
  *(a3 + 48) = v28;
  *(a3 + 56) = 256;
  *(a3 + 58) = v27;
  *(a3 + 64) = v32;
  *(a3 + 72) = 256;
  *(a3 + 80) = v9;
  *(a3 + 88) = 256;
  *(a3 + 90) = v27;
  *(a3 + 96) = v16;
  *(a3 + 104) = 256;
  *(a3 + 112) = v10;
  *(a3 + 120) = 256;
  *(a3 + 122) = v27;
  *(a3 + 128) = v11;
  *(a3 + 136) = 0;
  *(a3 + 144) = a1;
  *(a3 + 152) = a4;
  return result;
}

uint64_t MultiheadAttention.init(headCount:embeddingDimension:keyDimension:valueDimension:dropoutProbability:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, float a9@<S0>)
{
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  v47 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v15 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v46 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_37();
  v16 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7530, &unk_25BCD23A0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (a1 == -1)
  {
    goto LABEL_5;
  }

  v18 = a2;
  if (a1)
  {
    v18 = a2 % a1;
  }

  if (v18)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
LABEL_5:
    v41 = a4;
    v43 = v17;
    v44 = a1;
    OUTLINED_FUNCTION_18_37();
    v19 = OUTLINED_FUNCTION_56_13();
    v45 = sub_25BB1AB04(v19);
    OUTLINED_FUNCTION_18_37();
    v20 = OUTLINED_FUNCTION_56_13();
    v36 = sub_25BB1AB04(v20);
    OUTLINED_FUNCTION_18_37();
    v21 = OUTLINED_FUNCTION_56_13();
    v35 = sub_25BB1AB04(v21);
    OUTLINED_FUNCTION_18_37();
    v22 = OUTLINED_FUNCTION_56_13();
    v34 = sub_25BB1AB04(v22);
    if (a7)
    {
      OUTLINED_FUNCTION_18_37();
      OUTLINED_FUNCTION_17_26();
      v23 = swift_retain_n();
      v24 = sub_25BB1AB04(v23);

      OUTLINED_FUNCTION_18_37();
      v25 = OUTLINED_FUNCTION_17_26();
      v26 = sub_25BB1AB04(v25);

      OUTLINED_FUNCTION_18_37();
      v27 = OUTLINED_FUNCTION_17_26();
      v15 = sub_25BB1AB04(v27);

      OUTLINED_FUNCTION_18_37();
      v28 = OUTLINED_FUNCTION_17_26();
      v16 = sub_25BB1AB04(v28);

      v29 = 1;
      v30 = v24;
    }

    else
    {
      v29 = 0;
      v30 = v47;
      v26 = v46;
    }

    v48 = v30;
    __src[0] = v45;
    if (a6)
    {
      v31 = a2;
    }

    else
    {
      v31 = a5;
    }

    LOWORD(__src[1]) = 256;
    v32 = a3;
    if (v41)
    {
      v32 = a2;
    }

    v40 = v31;
    v42 = v32;
    __src[2] = v30;
    LOWORD(__src[3]) = 256;
    BYTE2(__src[3]) = v29;
    __src[4] = v35;
    LOWORD(__src[5]) = 256;
    __src[6] = v15;
    LOWORD(__src[7]) = 256;
    BYTE2(__src[7]) = v29;
    __src[8] = v36;
    LOWORD(__src[9]) = 256;
    __src[10] = v26;
    LOWORD(__src[11]) = 256;
    BYTE2(__src[11]) = v29;
    __src[12] = v34;
    LOWORD(__src[13]) = 256;
    __src[14] = v16;
    LOWORD(__src[15]) = 256;
    BYTE2(__src[15]) = v29;
    __src[16] = v43;
    LOBYTE(__src[17]) = 0;
    __src[18] = v44;
    *&__src[19] = a9;
    memcpy(__dst, __src, sizeof(__dst));
    sub_25BB923F0(__src, v51);
    sub_25BC62ECC(a2, v42, v40);

    memcpy(v51, __dst, 0x9CuLL);
    result = sub_25BB9244C(v51);
    *a8 = v45;
    *(a8 + 8) = 256;
    *(a8 + 16) = v48;
    *(a8 + 24) = 256;
    *(a8 + 26) = v29;
    *(a8 + 32) = v35;
    *(a8 + 40) = 256;
    *(a8 + 48) = v15;
    *(a8 + 56) = 256;
    *(a8 + 58) = v29;
    *(a8 + 64) = v36;
    *(a8 + 72) = 256;
    *(a8 + 80) = v26;
    *(a8 + 88) = 256;
    *(a8 + 90) = v29;
    *(a8 + 96) = v34;
    *(a8 + 104) = 256;
    *(a8 + 112) = v16;
    *(a8 + 120) = 256;
    *(a8 + 122) = v29;
    *(a8 + 128) = v43;
    *(a8 + 136) = 0;
    *(a8 + 144) = v44;
    *(a8 + 152) = a9;
  }

  return result;
}

uint64_t sub_25BC62ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[2];
  v8 = *(v3 + 26);
  v9 = v3[4];
  v10 = v3[8];
  v20 = v3[6];
  v21 = v3[10];
  v23 = *(v3 + 58);
  v24 = *(v3 + 90);
  v26 = v3[12];
  v22 = v3[14];
  v27 = *(v3 + 122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE70;
  *(v11 + 32) = a1;
  *(v11 + 40) = a1;
  v28 = v11;

  sub_25BB1ABC8(&v28);

  if (v8 == 1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
    *(v12 + 32) = a2;
    v28 = v12;

    sub_25BB1ABC8(&v28);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE70;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v28 = v13;

  sub_25BB1ABC8(&v28);

  if (v23)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25BCBAE50;
    *(v14 + 32) = a2;
    v28 = v14;

    sub_25BB1ABC8(&v28);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE70;
  *(v15 + 32) = a1;
  *(v15 + 40) = a3;
  v28 = v15;

  sub_25BB1ABC8(&v28);

  if (v24)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25BCBAE50;
    *(v16 + 32) = a3;
    v28 = v16;

    sub_25BB1ABC8(&v28);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE70;
  *(v17 + 32) = a1;
  *(v17 + 40) = a1;
  v28 = v17;

  sub_25BB1ABC8(&v28);

  if (v27)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_25BCBAE50;
    *(v19 + 32) = a1;
    v28 = v19;

    sub_25BB1ABC8(&v28);
  }

  return result;
}