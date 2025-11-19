char *sub_2287F5D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF2B0, &type metadata for EnqueuedWorkPlan, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2287F5F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, os_log_t a3@<X8>, double a4@<D0>)
{
  v79 = sub_22887F180();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v82 = v4;
  if (v10)
  {
    type metadata accessor for InputSignalAnchorSet();
    swift_initStackObject();

    v12 = sub_22886F6CC(v11);

    v13 = *(v12 + 16);
    v14 = *(a2 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v13;
    sub_2287F100C(v14, sub_2287EC4C0, 0, isUniquelyReferenced_nonNull_native, &v83);

    v16 = v83;
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    v18 = *a1;

    v19 = sub_22887D8D0(inited, v18);
  }

  else
  {
    v18 = *a1;

    v19 = sub_22887D8D0(a2, v18);
  }

  a1[3] = v19;
  type metadata accessor for InputSignalAnchorSet();
  swift_initStackObject();
  v20 = sub_22886F6CC(v19);

  if (a1[1])
  {
    swift_initStackObject();

    v22 = sub_22886F6CC(v21);

    v23 = _s19HealthOrchestration20InputSignalAnchorSetC2eeoiySbAC_ACtFZ_0(v20, v22);

    if (v23)
    {

      v25 = 1;
      goto LABEL_30;
    }

    v27 = a3;
    swift_initStackObject();

    v29 = sub_22886F6CC(v28);

    swift_initStackObject();
    v30 = sub_22886F6CC(v19);

    v31 = *(v29 + 16);
    v32 = *(v30 + 16);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v31;
    sub_2287F100C(v32, sub_2287EC4C0, 0, v33, &v83);

    v34 = v83;
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    a3 = v27;
  }

  else
  {

    swift_allocObject();
    v26 = sub_22886F6CC(v19);
  }

  v35 = sub_22887D8D0(v26, v18);
  v80 = v26;

  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v77 = a3;
    v89 = MEMORY[0x277D84F90];
    sub_2287F6AD8(0, v36, 0);
    v37 = v89;
    v38 = v35 + 32;
    do
    {
      sub_2287E766C(v38, &v83);
      v39 = v85;
      v40 = v86;
      __swift_project_boxed_opaque_existential_1(&v83, v85);
      (*(v40 + 48))(v87, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v41 = v87[0];
      v42 = v87[1];
      v43 = v88;
      v89 = v37;
      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        v76 = v88;
        sub_2287F6AD8((v44 > 1), v45 + 1, 1);
        v43 = v76;
        v37 = v89;
      }

      *(v37 + 16) = v45 + 1;
      v46 = v37 + 32 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v42;
      *(v46 + 48) = v43;
      v38 += 40;
      --v36;
    }

    while (v36);
    a3 = v77;
  }

  v47 = sub_22887D6C4(v37);

  v48 = v82;
  v49 = v82[16];
  if (sub_2287F7C24(v47, v49))
  {

    sub_2287EE074(a1, v35, a3, a4);
  }

  if (*(v47 + 16) <= *(v49 + 16) >> 3)
  {
    v83 = v49;

    sub_22887C11C(v47);
  }

  else
  {

    sub_22887C280(v47, v49);
  }

  v50 = v81;
  v51 = v48[3];
  ObjectType = swift_getObjectType();
  (*(v51 + 40))(ObjectType, v51);

  v53 = sub_22887F160();
  v54 = sub_22887F6B0();

  if (os_log_type_enabled(v53, v54))
  {
    LODWORD(v76) = v54;
    v77 = v53;
    v55 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v87[0] = v75;
    *v55 = 136315650;
    v57 = v48[4];
    v56 = v48[5];
    v58 = v48;
    v59 = v48[6];
    v60 = v48[7];
    v61 = v58[8];
    v62 = v58[9];
    v83 = 60;
    v84 = 0xE100000000000000;

    MEMORY[0x22AAC0340](v57, v56);
    MEMORY[0x22AAC0340](8250, 0xE200000000000000);
    if (v62)
    {
      v63 = v62;
    }

    else
    {

      v61 = v59;
      v63 = v60;
    }

    MEMORY[0x22AAC0340](v61, v63);

    MEMORY[0x22AAC0340](62, 0xE100000000000000);

    v64 = sub_2287E64D8(v83, v84, v87);

    *(v55 + 4) = v64;
    *(v55 + 12) = 2080;
    if (v82[13])
    {
      v65 = v82[12];
      v66 = v82[13];
    }

    else
    {
      v65 = v82[10];
      v66 = v82[11];
    }

    v50 = v81;

    v67 = sub_2287E64D8(v65, v66, v87);

    *(v55 + 14) = v67;
    *(v55 + 22) = 2080;
    sub_2287F74F8();
    v68 = sub_22887F5F0();
    v70 = v69;

    v71 = sub_2287E64D8(v68, v70, v87);

    *(v55 + 24) = v71;
    v72 = v77;
    _os_log_impl(&dword_2287E4000, v77, v76, "%s:%s: Queuing update while awaiting signals: %s.", v55, 0x20u);
    v73 = v75;
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v73, -1, -1);
    MEMORY[0x22AAC1440](v55, -1, -1);
  }

  else
  {
  }

  result = (*(v78 + 8))(v50, v79);
  v25 = 2;
LABEL_30:
  a3->isa = v25;
  *&a3[1].isa = 0u;
  *&a3[3].isa = 0u;
  *&a3[5].isa = 0u;
  *&a3[7].isa = 0u;
  *&a3[9].isa = 0u;
  *&a3[11].isa = 0u;
  return result;
}

char *sub_2287F6878(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF288, &type metadata for InputSignalIdentifier, MEMORY[0x277D84560]);
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

unint64_t sub_2287F699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_2287E95F4(0, &qword_2813CF210, sub_2287F6B64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x8000000228888560;
  v7 = sub_2287E97C0(a1);
  sub_2287E8CD4(a2);
  *(inited + 48) = v7;
  v8 = sub_2287E9970(inited, sub_2287E9A7C, sub_2287E5E2C);
  swift_setDeallocating();
  sub_2287F6B08(inited + 32);
  result = sub_2287E9C4C(MEMORY[0x277D84F90], &qword_2813CF328, sub_22880AC30);
  *a3 = v8;
  a3[1] = result;
  return result;
}

char *sub_2287F6AD8(char *a1, int64_t a2, char a3)
{
  result = sub_2287F6878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2287F6B08(uint64_t a1)
{
  sub_2287F6B64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2287F6B64()
{
  if (!qword_2813CF648)
  {
    sub_2287E5F5C(255, &qword_2813CF670, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813CF648);
    }
  }
}

HealthOrchestration::PriorityRuleSet::Rule __swiftcall PriorityRuleSet.Rule.init(descriptions:priority:)(HealthOrchestration::PriorityRuleSet::Rule descriptions, HealthOrchestration::PriorityRuleSet::Priority priority)
{
  v3 = *priority;
  *v2 = descriptions.descriptions._rawValue;
  *(v2 + 8) = v3;
  descriptions.priority = priority;
  return descriptions;
}

uint64_t sub_2287F6C58(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_2287F5734(0, v2, 0);
  v3 = v42;
  for (i = a1 + 112; ; i += 216)
  {
    v7 = *a2;
    MEMORY[0x28223BE20](result);

    sub_2287F6F88(sub_228863D60, v7, v24);

    if (v25)
    {
      break;
    }

    sub_2287F719C(v24, sub_2287FDB34);
    result = sub_2287F71FC(i - 80, &v36);
LABEL_12:
    v42 = v3;
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2287F5734((v10 > 1), v11 + 1, 1);
      v3 = v42;
    }

    *(v3 + 16) = v11 + 1;
    v12 = v3 + 216 * v11;
    v13 = v37;
    *(v12 + 32) = v36;
    *(v12 + 48) = v13;
    v14 = v38;
    v15 = v39[0];
    v16 = v40[0];
    *(v12 + 96) = v39[1];
    *(v12 + 112) = v16;
    *(v12 + 64) = v14;
    *(v12 + 80) = v15;
    v17 = v40[1];
    v18 = v40[2];
    v19 = v40[4];
    *(v12 + 160) = v40[3];
    *(v12 + 176) = v19;
    *(v12 + 128) = v17;
    *(v12 + 144) = v18;
    v20 = v40[5];
    v21 = v40[6];
    v22 = v40[7];
    *(v12 + 240) = v41;
    *(v12 + 208) = v21;
    *(v12 + 224) = v22;
    *(v12 + 192) = v20;
    if (!--v2)
    {
      return v3;
    }
  }

  v34[10] = v30;
  v34[11] = v31;
  v34[12] = v32;
  v35 = v33;
  v34[6] = v26;
  v34[7] = v27;
  v34[8] = v28;
  v34[9] = v29;
  v34[2] = v24[2];
  v34[3] = v24[3];
  v34[4] = v24[4];
  v34[5] = v25;
  v34[0] = v24[0];
  v34[1] = v24[1];
  sub_2287F71FC(v34, &v36);
  Current = CFAbsoluteTimeGetCurrent();
  sub_2287F836C(v34);
  if (v37 > 1u)
  {
    v9 = &v38 + 1;
    if (v37 != 2)
    {
      v9 = v39 + 1;
    }
  }

  else
  {
    v9 = &v37 + 1;
    if (v37)
    {
      v9 = &v38;
    }
  }

  *v9 = Current - *(&v36 + 1) + *v9;
  *(&v36 + 1) = Current;
  result = sub_228863D80(i, v40);
  LOBYTE(v36) = *(i - 80);
  LOBYTE(v37) = *(i - 64);
  if (!__OFADD__(*&v39[0], 1))
  {
    ++*&v39[0];
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2287F6F30(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0() & 1;
  }
}

uint64_t sub_2287F6F88@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_2287F71FC(v7, v14);
      result = v6(v14);
      if (v3)
      {
        return sub_2287F836C(v14);
      }

      if (result)
      {
        break;
      }

      result = sub_2287F836C(v14);
      v7 += 216;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v14[11];
    *(a3 + 160) = v14[10];
    *(a3 + 176) = v8;
    *(a3 + 192) = v14[12];
    *(a3 + 208) = v15;
    v9 = v14[7];
    *(a3 + 96) = v14[6];
    *(a3 + 112) = v9;
    v10 = v14[9];
    *(a3 + 128) = v14[8];
    *(a3 + 144) = v10;
    v11 = v14[3];
    *(a3 + 32) = v14[2];
    *(a3 + 48) = v11;
    v12 = v14[5];
    *(a3 + 64) = v14[4];
    *(a3 + 80) = v12;
    v13 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v13;
  }

  else
  {
LABEL_6:
    *(a3 + 208) = 0;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_2287F70AC()
{
  if (!qword_2813CF3B0)
  {
    sub_2287E670C(255, qword_2813D0F88);
    sub_2287F74F8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3B0);
    }
  }
}

uint64_t sub_2287F712C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_228861208(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2287F719C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19HealthOrchestration17LocaleInputSignalC13ConfigurationV10identifierAA0dE10IdentifierVvg_0@<X0>(void *a1@<X8>)
{
  if (qword_2813D0EC8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_2813D0ED8;
  v3 = qword_2813D0EE0;
  v2 = qword_2813D0EE8;
  *a1 = qword_2813D0ED0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

char *sub_2287F72C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF2B0, &type metadata for EnqueuedWorkPlan, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2287F7400(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2287F72C0(result, v10, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2287F74F8()
{
  result = qword_2813D0510;
  if (!qword_2813D0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0510);
  }

  return result;
}

uint64_t sub_2287F754C(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2287FFD34(v5);
  }

  result = sub_2287F7760(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_2287F75D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  sub_22887FC90();
  sub_22887F3E0();
  v12 = sub_22887FCD0();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v11 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      if (v17 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = (*(v11 + 48) + 32 * v14);
    v21 = v20[1];
    v23 = v20[2];
    v22 = v20[3];
    *a1 = *v20;
    a1[1] = v21;
    a1[2] = v23;
    a1[3] = v22;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_2287F7868(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_2287F7760(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_22887FB90();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_22887F500();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_228862D6C(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2287F79FC(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2287F7868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_228878224();
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_228879E48();
      goto LABEL_16;
    }

    sub_22887AE60();
  }

  v14 = *v6;
  sub_22887FC90();
  sub_22887F3E0();
  result = sub_22887FCD0();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v14 + 48) + 32 * a5);
      if (*v17 == v11 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22887FBF0();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v19 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = (*(v19 + 48) + 32 * a5);
  *v20 = v11;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_2287F79FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = *v4 + 216 * a3;
    v9 = result - a3;
LABEL_4:
    v37 = a3;
    v20 = v9;
    v21 = v8;
    while (1)
    {
      sub_2287F71FC(v8, &v23);
      v10 = (v8 - 216);
      sub_2287F71FC(v8 - 216, v22);
      v11 = a4(&v23, v22);
      sub_2287F836C(v22);
      result = sub_2287F836C(&v23);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v33 = *(v8 + 160);
        v34 = *(v8 + 176);
        v35 = *(v8 + 192);
        v36 = *(v8 + 208);
        v29 = *(v8 + 96);
        v30 = *(v8 + 112);
        v31 = *(v8 + 128);
        v32 = *(v8 + 144);
        v25 = *(v8 + 32);
        v26 = *(v8 + 48);
        v27 = *(v8 + 64);
        v28 = *(v8 + 80);
        v23 = *v8;
        v24 = *(v8 + 16);
        v12 = *(v8 - 40);
        *(v8 + 160) = *(v8 - 56);
        *(v8 + 176) = v12;
        *(v8 + 192) = *(v8 - 24);
        *(v8 + 208) = *(v8 - 8);
        v13 = *(v8 - 104);
        *(v8 + 96) = *(v8 - 120);
        *(v8 + 112) = v13;
        v14 = *(v8 - 72);
        *(v8 + 128) = *(v8 - 88);
        *(v8 + 144) = v14;
        v15 = *(v8 - 168);
        *(v8 + 32) = *(v8 - 184);
        *(v8 + 48) = v15;
        v16 = *(v8 - 136);
        *(v8 + 64) = *(v8 - 152);
        *(v8 + 80) = v16;
        v17 = *(v8 - 200);
        *v8 = *v10;
        *(v8 + 16) = v17;
        *(v8 - 56) = v33;
        *(v8 - 40) = v34;
        *(v8 - 24) = v35;
        *(v8 - 8) = v36;
        *(v8 - 120) = v29;
        *(v8 - 104) = v30;
        *(v8 - 88) = v31;
        *(v8 - 72) = v32;
        *(v8 - 184) = v25;
        *(v8 - 168) = v26;
        *(v8 - 152) = v27;
        *(v8 - 136) = v28;
        *v10 = v23;
        *(v8 - 200) = v24;
        v8 -= 216;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v37 + 1;
      v8 = v21 + 216;
      v9 = v20 - 1;
      if (v37 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2287F7C24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v23 = (v7 - 1) & v7;
LABEL_15:
    v13 = (*(result + 48) + 32 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22887FC90();

    sub_22887F3E0();
    v16 = sub_22887FCD0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 32 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
    v7 = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287F7E00(uint64_t a1, uint64_t a2)
{
  sub_2287FDE90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_2287F7E64(uint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v15 = MEMORY[0x277D84F90];
      result = sub_2287FE0A4(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        goto LABEL_24;
      }

      v3 = 0;
      v4 = v15;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AAC07F0](v3, v1);
          goto LABEL_10;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);

LABEL_10:
        v6 = *(v5 + 16);
        os_unfair_lock_lock((v6 + 44));
        v7 = *(*(v6 + 24) + 16);
        os_unfair_lock_unlock((v6 + 44));

        v9 = *(v15 + 16);
        v8 = *(v15 + 24);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_2287FE0A4((v8 > 1), v9 + 1, 1);
        }

        ++v3;
        *(v15 + 16) = v10;
        *(v15 + 8 * v9 + 32) = v7;
        if (v2 == v3)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = sub_22887FA20();
      v2 = result;
    }

    while (result);
  }

  v4 = MEMORY[0x277D84F90];
  v10 = *(MEMORY[0x277D84F90] + 16);
  if (v10)
  {
LABEL_18:
    v11 = 0;
    v12 = 32;
    while (1)
    {
      v13 = *(v4 + v12);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      v12 += 8;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v11 = 0;
LABEL_21:

    return v11;
  }

  return result;
}

uint64_t sub_2287F803C(void *a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if ((a2(a1 + 10) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a4 + 16);
  v27 = *(v6 + 16);
  if (!v27)
  {
    return 1;
  }

  v38 = a1[10];
  v7 = v6 + 32;

  v9 = 0;
  v10 = v27;
  v26 = v6;
  while (v9 < *(v6 + 16))
  {
    sub_2287F71FC(v7, v30);
    swift_getObjectType();
    if ((sub_2287FF530() & 1) == 0)
    {
      goto LABEL_5;
    }

    v11 = v33;
    v12 = v34;
    v14 = a1[14];
    v13 = a1[15];
    if ((v31 != a1[12] || v32 != a1[13]) && (sub_22887FBF0() & 1) == 0)
    {
      goto LABEL_5;
    }

    if ((v11 != v14 || v12 != v13) && (sub_22887FBF0() & 1) == 0)
    {
      goto LABEL_5;
    }

    v15 = v36;
    v16 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v16 + 24))(v29, v15, v16);
    v17 = v29[0];
    v18 = v29[1];
    v19 = v29[2];
    v21 = a1[21];
    v20 = a1[22];
    __swift_project_boxed_opaque_existential_1(a1 + 18, v21);
    (*(v20 + 24))(v28, v21, v20);
    v22 = v28[2];
    if (v17 == v28[0] && v18 == v28[1])
    {
    }

    else
    {
      v23 = sub_22887FBF0();

      if ((v23 & 1) == 0)
      {
        v6 = v26;
        v10 = v27;
LABEL_5:
        result = sub_2287F836C(v30);
        goto LABEL_6;
      }
    }

    result = sub_2287F836C(v30);
    v24 = v19 == v22;
    v6 = v26;
    v10 = v27;
    if (v24)
    {
      v25 = 0;
LABEL_24:

      return v25;
    }

LABEL_6:
    ++v9;
    v7 += 216;
    if (v10 == v9)
    {
      v25 = 1;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287F82A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2287FFD34(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 216 * a1;
    v9 = *(v8 + 208);
    v10 = v7 - 1;
    *(a2 + 160) = *(v8 + 192);
    *(a2 + 176) = v9;
    *(a2 + 192) = *(v8 + 224);
    *(a2 + 208) = *(v8 + 240);
    v11 = *(v8 + 144);
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v11;
    v12 = *(v8 + 176);
    *(a2 + 128) = *(v8 + 160);
    *(a2 + 144) = v12;
    v13 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v13;
    v14 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v14;
    v15 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v15;
    result = memmove((v8 + 32), (v8 + 248), 216 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

void *sub_2287F83C0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2287E70A8(0, a5, 255, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287F851C();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_2287F851C()
{
  result = qword_2813CF190;
  if (!qword_2813CF190)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813CF190);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2287F8580()
{
  v1 = *(v0 + 40);
  sub_2287F5EE4(v0 + 136, v3);
  v1(v3);
  return sub_2287F712C(v3, &qword_2813D0DB0, &type metadata for ScheduledWorkPlan);
}

void sub_2287F85E8(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228881F90;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t sub_2287F8634(uint64_t a1, uint64_t a2)
{
  v5 = sub_22887F240();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22887F270();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 56);
  sub_2287F5EE4(a1, v25);
  sub_2287E766C(a2, v24);
  v12 = swift_allocObject();
  v13 = v25[4];
  *(v12 + 104) = v25[5];
  v14 = v25[7];
  *(v12 + 120) = v25[6];
  *(v12 + 136) = v14;
  v15 = v25[0];
  *(v12 + 40) = v25[1];
  v16 = v25[3];
  *(v12 + 56) = v25[2];
  *(v12 + 72) = v16;
  *(v12 + 88) = v13;
  *(v12 + 16) = v2;
  *(v12 + 152) = v26;
  *(v12 + 24) = v15;
  sub_2287F8A28(v24, v12 + 160);
  aBlock[4] = sub_2287F9EA8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  sub_22887F260();
  v22 = MEMORY[0x277D84F90];
  sub_2287E710C(qword_2813CF680, MEMORY[0x277D85198]);
  v18 = MEMORY[0x277D85198];
  sub_2287F8B44(0, &qword_2813CF5C8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287F8A7C(qword_2813CF5B0, &qword_2813CF5C8, v18);
  sub_22887F820();
  MEMORY[0x22AAC0630](0, v11, v8, v17);
  _Block_release(v17);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v21);
}

uint64_t sub_2287F89B0()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_2287F8A2C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287FAAB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287F8A7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287F8B44(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287F8AE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287F8BA8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2287F8B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2287F8BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2287F8C0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 216 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 216 * a3;
  v13 = (v7 + 32 + 216 * a2);
  if (result != v13 || result >= v13 + 216 * v12)
  {
    result = memmove(result, v13, 216 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2287F8CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_22887FA20();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    *(a2 + 208) = 0;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AAC07F0](0, v3);
    v5 = v6;
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    v7 = *(v5 + 16);
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock(v7 + 11);
    sub_2287F2A94(&v7[4], a2);
    os_unfair_lock_unlock(v7 + 11);
  }

  __break(1u);
  return result;
}

uint64_t sub_2287F8E10(uint64_t a1, uint64_t a2)
{
  sub_2287FDB34();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2287F8E74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t WorkQueue.enqueue(priorityThresholdOverride:barrier:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_2287F910C((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 84));
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = v7 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_2287F8F30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v11 = sub_2287F45CC(a1);
  type metadata accessor for WorkBarrier();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = *(v11 + 16);

  os_unfair_lock_lock(v13 + 11);
  sub_2287F9130(&v13[4]);
  v14 = v13 + 11;
  if (v5)
  {
    os_unfair_lock_unlock(v14);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v14);

    v15 = sub_2287F96B0(a1);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      sub_228800908(0, &qword_2813CF1B0, sub_2288233C4, MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2288817D0;
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      *(v19 + 32) = sub_2287FEDA4;
      *(v19 + 40) = v20;
    }

    else
    {
      v19 = sub_2287ED1BC(a1);
    }

    *a5 = v19;
  }

  return result;
}

uint64_t sub_2287F90D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287F9170(uint64_t a1, unint64_t a2)
{
  v3 = sub_2287F91BC(a1, a2);
  sub_2287F9BBC(&unk_283BC7D80);
  return v3;
}

uint64_t sub_2287F91BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2287F9624(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22887F920();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22887F420();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2287F9624(v10, 0);
        result = sub_22887F890();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2287F92EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    v2 = 2;
LABEL_5:
    sub_228861258();
    swift_allocError();
    *v4 = v2;
    return swift_willThrow();
  }

  if (*a1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *a1 = a2;
  if (*(a2 + 40) == 4)
  {
    v8 = *(a1 + 24);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = Current;
    v31 = a1;
    v39 = MEMORY[0x277D84F90];

    sub_2287F5734(0, v10, 0);
    v12 = v9 + 32;
    v13 = v39;
    v32 = v8;
    do
    {
      sub_2287F71FC(v12, v33);
      v14 = v33[0];
      sub_2287F71FC(v33, &v34);
      if (v35 > 1u)
      {
        v15 = &v36 + 1;
        if (v35 != 2)
        {
          v15 = v37 + 1;
        }
      }

      else
      {
        v15 = &v35 + 1;
        if (v35)
        {
          v15 = &v36;
        }
      }

      *v15 = v11 - *(&v34 + 1) + *v15;
      *(&v34 + 1) = v11;
      if (v14 > 2u)
      {

        sub_2287F836C(v33);
        v17 = 0;
      }

      else
      {
        v16 = sub_22887FBF0();

        sub_2287F836C(v33);
        v17 = 0;
        if ((v16 & 1) == 0)
        {
          if (qword_228886B58[v14] >= qword_228886B70[v32])
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }
        }
      }

      LOBYTE(v35) = v17;
      LOBYTE(v34) = v14;
      v39 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2287F5734((v18 > 1), v19 + 1, 1);
        v13 = v39;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 216 * v19;
      v21 = v35;
      *(v20 + 32) = v34;
      *(v20 + 48) = v21;
      v22 = v36;
      v23 = v37[0];
      v24 = v37[2];
      *(v20 + 96) = v37[1];
      *(v20 + 112) = v24;
      *(v20 + 64) = v22;
      *(v20 + 80) = v23;
      v25 = v37[3];
      v26 = v37[4];
      v27 = v37[6];
      *(v20 + 160) = v37[5];
      *(v20 + 176) = v27;
      *(v20 + 128) = v25;
      *(v20 + 144) = v26;
      v28 = v37[7];
      v29 = v37[8];
      v30 = v37[9];
      *(v20 + 240) = v38;
      *(v20 + 208) = v29;
      *(v20 + 224) = v30;
      *(v20 + 192) = v28;
      v12 += 216;
      --v10;
    }

    while (v10);

    *(v31 + 8) = v13;
  }

  else
  {

    *(a1 + 8) = MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_2287F9624(uint64_t a1, uint64_t a2)
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

  sub_2287F0FBC(0, &qword_2813CF1C8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t (*sub_2287F96B0(uint64_t *a1))()
{
  v3 = v1;
  v5 = *a1;
  if (*a1 >> 62)
  {
    result = sub_22887FA20();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x22AAC07F0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(v5 + 32);
  }

  v8 = *(v7 + 16);
  os_unfair_lock_lock(v8 + 11);
  v9 = 0;
  sub_2287F9AC0(&v8[4], v43);
  os_unfair_lock_unlock(v8 + 11);
  if (v43[0])
  {
    v2 = *(v7 + 16);
    os_unfair_lock_lock((v2 + 44));
    if ((*(v2 + 41) & 1) == 0)
    {
      v10 = *(v2 + 16);
      v11 = 1;
      if (v10)
      {
        *(v2 + 41) = 1;
        v12 = *(v2 + 24);
        v13 = MEMORY[0x277D84F90];
        *(v2 + 24) = MEMORY[0x277D84F90];
        v14 = *(v10 + 24);
        v41 = *(v10 + 32);
        v42 = v14;

        os_unfair_lock_unlock((v2 + 44));
        sub_2287FFBF8();

        v15 = sub_2287F45CC(a1);
        v16 = v15;
        v17 = *(v12 + 16);
        if (v17)
        {
          v36 = v15;
          v37 = 0;
          v39 = v7;
          v40 = v3;
          v62 = v13;
          sub_2287F49A8(0, v17, 0);
          v18 = v62;
          v38 = v12;
          v19 = v12 + 32;
          do
          {
            sub_2287F71FC(v19, v43);
            v59 = v50;
            v60 = v51;
            v61 = v52;
            v55 = v46;
            v56 = v47;
            v57 = v48;
            v58 = v49;
            v53 = v44;
            v54 = v45;
            v21 = *(v18 + 16);
            v20 = *(v18 + 24);
            v62 = v18;
            if (v21 >= v20 >> 1)
            {
              sub_2287F49A8((v20 > 1), v21 + 1, 1);
              v18 = v62;
            }

            *(v18 + 16) = v21 + 1;
            v22 = v18 + 136 * v21;
            *(v22 + 32) = v53;
            v23 = v54;
            v24 = v55;
            v25 = v57;
            *(v22 + 80) = v56;
            *(v22 + 96) = v25;
            *(v22 + 48) = v23;
            *(v22 + 64) = v24;
            v26 = v58;
            v27 = v59;
            v28 = v60;
            *(v22 + 160) = v61;
            *(v22 + 128) = v27;
            *(v22 + 144) = v28;
            *(v22 + 112) = v26;
            v19 += 216;
            --v17;
          }

          while (v17);
          v7 = v39;
          v3 = v40;
          v9 = v37;
          v12 = v38;
          v16 = v36;
        }

        v29 = *(v3[3] + 16);
        os_unfair_lock_lock(v29 + 10);

        os_unfair_lock_unlock(v29 + 10);
        v40 = &v36;
        v30 = *(v16 + 16);
        MEMORY[0x28223BE20](v31);
        os_unfair_lock_lock(v30 + 11);
        sub_228861400(&v30[4]);
        v32 = v30 + 11;
        if (!v9)
        {
          os_unfair_lock_unlock(v32);

          v33 = swift_allocObject();
          v34 = v41;
          v33[2] = v42;
          v33[3] = v34;
          v33[4] = v12;
          v33[5] = v3;
          v33[6] = v7;

          return sub_228800364;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_228861258();
      swift_allocError();
      *v35 = v11;
      swift_willThrow();
      os_unfair_lock_unlock((v2 + 44));
      v32 = swift_unexpectedError();
      __break(1u);
LABEL_25:
      os_unfair_lock_unlock(v32);

      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

LABEL_23:
    v11 = 2;
    goto LABEL_24;
  }

  return 0;
}

uint64_t sub_2287F9A70()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2287F9AC0@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  if (!*result)
  {
    goto LABEL_6;
  }

  v2 = *(*result + 40);
  if (v2 == 4)
  {
    LOBYTE(v2) = *(result + 24);
  }

  if ((*(result + 25) & 1) != 0 || *(*(result + 16) + 16))
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    *a2 = v3;
  }

  else
  {
    v11 = a2;
    v4 = *(result + 8);
    result = v4 + 32;
    v5 = v2;
    v6 = -*(v4 + 16);
    v7 = -1;
    while (1)
    {
      v3 = v6 + v7 == -1;
      if (v6 + v7 == -1)
      {
LABEL_12:
        a2 = v11;
        goto LABEL_7;
      }

      if (++v7 >= *(v4 + 16))
      {
        break;
      }

      v8 = result + 216;
      sub_2287F71FC(result, v10);
      v9 = v10[0];
      sub_2287F836C(v10);
      result = v8;
      if (qword_228886B70[v9] < qword_228886B70[v5])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2287F9BBC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228830B58(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2287F9CB8(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v26[0] = a2[2];
  v26[1] = v8;
  v26[2] = v9;
  v26[3] = v10;
  v26[4] = v11;
  v26[5] = v12;
  v22 = *a2;
  v21 = a2[1];
  sub_2287F5EE4(a2, v24);
  sub_2287E766C(a3, v23);
  v13 = swift_allocObject();
  v14 = v24[7];
  *(v13 + 112) = v24[6];
  *(v13 + 128) = v14;
  v15 = v25;
  v16 = v24[3];
  *(v13 + 48) = v24[2];
  *(v13 + 64) = v16;
  v17 = v24[5];
  *(v13 + 80) = v24[4];
  *(v13 + 96) = v17;
  v18 = v24[1];
  *(v13 + 16) = v24[0];
  *(v13 + 32) = v18;
  *(v13 + 144) = v15;
  *(v13 + 152) = a1;
  sub_2287F8A28(v23, v13 + 160);
  v19 = *(v7 + 8);

  v19(a2 + 8, v26, v22, v21, sub_2287FBE1C, v13, v6, v7);
}

uint64_t sub_2287F9E30()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t TimeoutDispatchTarget.run(_:for:context:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a6;
  v31 = a1;
  v32 = a5;
  v28 = a3;
  v11 = sub_22887F730();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v45 = *a2;
  v46 = v15;
  v47 = a2[2];
  sub_2287E76D0(0, &qword_2813CF4E0);
  *&v44[0] = MEMORY[0x277D84F90];
  sub_2287FA24C(&qword_2813CF4E8, MEMORY[0x277D85278]);
  sub_2287FA294();
  sub_2287FA24C(&qword_2813CF568, sub_2287FA294);
  sub_22887F820();
  v16 = sub_22887F740();
  (*(v12 + 8))(v14, v11);
  sub_2287FA2EC();
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  v33 = sub_2287FBCDC;
  v34 = v17;
  v35 = a3;
  v36 = a4;
  v19 = v30;
  v18 = v31;
  v37 = &v45;
  v38 = v31;
  v39 = v32;
  v40 = v30;
  v41 = v7;

  os_unfair_lock_lock((v17 + 28));
  sub_2287FA34C((v17 + 16));
  os_unfair_lock_unlock((v17 + 28));
  v20 = v7[6];
  v21 = v7[7];
  v29 = __swift_project_boxed_opaque_existential_1(v7 + 3, v20);
  v44[0] = v45;
  v44[1] = v46;
  v44[2] = v47;
  sub_2287E766C(v18, v43);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2287FBCDC;
  *(v22 + 24) = v17;
  v23 = v28;
  *(v22 + 32) = v28;
  *(v22 + 40) = a4;
  v24 = v46;
  *(v22 + 48) = v45;
  *(v22 + 64) = v24;
  *(v22 + 80) = v47;
  sub_2287EC014(v43, v22 + 96);
  *(v22 + 136) = v32;
  *(v22 + 144) = v19;
  v25 = *(v21 + 8);

  swift_unknownObjectRetain();
  sub_2287F56D8(&v45, &v42);

  v25(v31, v44, v23, a4, sub_2287FB538, v22, v20, v21);
}

uint64_t sub_2287FA24C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2287FA294()
{
  if (!qword_2813CF570)
  {
    sub_22887F730();
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF570);
    }
  }
}

void sub_2287FA2EC()
{
  if (!qword_2813CF450)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF450);
    }
  }
}

uint64_t sub_2287FA384(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a8;
  v49 = a7;
  v52 = a5;
  v58 = a10;
  v54 = a9;
  v48 = sub_22887F230();
  v44 = *(v48 - 8);
  v15 = MEMORY[0x28223BE20](v48);
  v47 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v43 = (&v42 - v17);
  v62 = sub_22887F2A0();
  v46 = *(v62 - 8);
  v18 = MEMORY[0x28223BE20](v62);
  v57 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v45 = &v42 - v20;
  v55 = sub_22887F240();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22887F270();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  ObjectType = swift_getObjectType();
  sub_2287E766C(v49, &v61);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  v28 = v52;
  *(v27 + 32) = a4;
  *(v27 + 40) = v28;
  v29 = a6[1];
  *(v27 + 48) = *a6;
  *(v27 + 64) = v29;
  *(v27 + 80) = a6[2];
  sub_2287EC014(&v61, v27 + 96);
  v30 = v54;
  *(v27 + 136) = v56;
  *(v27 + 144) = v30;
  aBlock[4] = sub_2288207E8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_4;
  v31 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_2287F56D8(a6, v59);

  sub_2287FAA6C();
  sub_2287FA980();
  v54 = ObjectType;
  v56 = v25;
  sub_22887F760();
  _Block_release(v31);
  (*(v53 + 8))(v22, v55);
  v32 = v57;
  (*(v50 + 8))(v24, v51);

  result = sub_22887F280();
  v34 = *(v58 + 16) * 1000.0;
  if (COERCE__INT64(fabs(v34)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v34 < 9.22337204e18)
  {
    v35 = v43;
    *v43 = v34;
    v36 = v44;
    v37 = v48;
    (*(v44 + 104))(v35, *MEMORY[0x277D85178], v48);
    v38 = v45;
    sub_22887F290();
    v39 = *(v36 + 8);
    v39(v35, v37);
    v58 = *(v46 + 8);
    (v58)(v32, v62);
    v40 = v54;
    sub_2287FAB84(v35);
    v41 = v47;
    sub_2287FAB0C(v47);
    MEMORY[0x22AAC06D0](v38, v35, v41, v40);
    v39(v41, v37);
    v39(v35, v37);
    (v58)(v38, v62);
    return sub_22887F780();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2287FA980()
{
  sub_22887F240();
  sub_2287FAA70(qword_2813CF680, 255, MEMORY[0x277D85198]);
  v0 = MEMORY[0x277D85198];
  sub_2287FAAB8(0, &qword_2813CF5C8, MEMORY[0x277D85198]);
  sub_2287F8A2C(qword_2813CF5B0, &qword_2813CF5C8, v0);
  return sub_22887F820();
}

uint64_t sub_2287FAA70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2287FAAB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887F550();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2287FAB0C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_22887F230();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2287FAB84@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_22887F230();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::Void __swiftcall OrchestrationDirector.fireOnce()()
{
  v21 = sub_22887F2B0();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v4 + 44));
  sub_2287FAFB4((v4 + 16), aBlock);
  os_unfair_lock_unlock((v4 + 44));
  v5 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (v6 >= 1)
    {
      v7 = 0;
      v20 = v5 & 0xC000000000000001;
      v19 = *MEMORY[0x277D851F0];
      v8 = v1 + 1;
      v17 = v23;
      v18 = v1 + 13;
      while (1)
      {
        if (v20)
        {
          v9 = MEMORY[0x22AAC07F0](v7, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = *(v9 + 40);
        *v3 = v10;
        v11 = v21;
        (v18->isa)(v3, v19, v21);
        v12 = v10;
        v13 = sub_22887F2D0();
        (v8->isa)(v3, v11);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = v5;
        v1 = *(v9 + 40);
        v15 = swift_allocObject();
        *(v15 + 16) = sub_228800798;
        *(v15 + 24) = v9;
        v23[2] = sub_2287FED74;
        v23[3] = v15;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v23[0] = sub_2288006C0;
        v23[1] = &block_descriptor_0;
        v5 = _Block_copy(aBlock);

        dispatch_async_and_wait(v1, v5);

        _Block_release(v5);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_13;
        }

        ++v7;
        v5 = v14;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v6 = sub_22887FA20();
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_11:
  }
}

uint64_t sub_2287FAFD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    v6 = sub_22887FA20();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_22887F160();
  v8 = sub_22887F6B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    sub_22887F8A0();

    MEMORY[0x22AAC0340](*(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    v11 = sub_2287E64D8(0xD000000000000018, 0x8000000228888690, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_2287E4000, v7, v8, "%s: Triggering single fire at %ld contexts.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AAC1440](v10, -1, -1);
    MEMORY[0x22AAC1440](v9, -1, -1);
  }

  *a3 = v5;
}

void DirectDispatchTarget.run(_:for:context:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v8 = *(v6 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *a2;
    v12 = a2[1];
    v13 = v8 + 32;
    v42 = a2[3];
    v43 = a2[2];
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      sub_2287E766C(v13, &v44);
      v14 = v45;
      v15 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      if ((*(v15 + 8))(v14, v15) == v11 && v16 == v12)
      {
        break;
      }

      v18 = sub_22887FBF0();

      if (v18)
      {
        goto LABEL_12;
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1(&v44);
      v13 += 40;
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v37 = a5;
    sub_2287F8A28(&v44, &v47);
    sub_2287F8A28(&v47, v48);
    v22 = v49;
    v23 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v24 = (*(v23 + 16))(a3, a4, v22, v23);
    v25 = v24;
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = (v24 + 40);
      while (v27 < *(v25 + 16))
      {
        v29 = *v28;
        ObjectType = swift_getObjectType();
        v31 = *(v29 + 24);
        swift_unknownObjectRetain();
        v31(&v47, ObjectType, v29);
        if (v47 == v43 && *(&v47 + 1) == v42)
        {

LABEL_23:

          sub_228839C10(a1, v37, a6, ObjectType, v29);
          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        v33 = sub_22887FBF0();

        if (v33)
        {
          goto LABEL_23;
        }

        ++v27;
        swift_unknownObjectRelease();
        v28 += 2;
        if (v26 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_27;
    }

LABEL_21:

    sub_2287FB4C4();
    v34 = swift_allocError();
    *v35 = 1;
    v36 = sub_22887F010();
    (v37)();

LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
LABEL_10:
    sub_2287FB4C4();
    v19 = swift_allocError();
    *v20 = 0;
    v21 = sub_22887F010();
    a5();
  }
}

unint64_t sub_2287FB4C4()
{
  result = qword_2813D06D0[0];
  if (!qword_2813D06D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D06D0);
  }

  return result;
}

uint64_t sub_2287FB570(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *))
{
  v77 = a6;
  v13 = sub_22887F180();
  v78 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v70 - v18;
  if (a2(v17))
  {
    return a8(a1);
  }

  if (a1)
  {
    v76 = v13;
    ObjectType = swift_getObjectType();
    v22 = *(a5 + 40);
    v75 = a1;
    v23 = a1;
    v22(ObjectType, a5);
    sub_2287E766C(a7, v83);
    v24 = v23;
    v25 = v77;
    sub_2287F56D8(v77, v82);
    v26 = sub_22887F160();
    v27 = sub_22887F690();
    sub_228820738(v25);

    if (os_log_type_enabled(v26, v27))
    {
      v72 = v27;
      v73 = v24;
      v74 = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71 = v30;
      *v28 = 136315650;
      v31 = *v25;
      v32 = v25[1];
      v33 = v25[3];
      v70 = v25[2];
      v34 = v25[4];
      v35 = v25[5];
      v79 = 60;
      v80 = 0xE100000000000000;
      v81 = v30;
      sub_2287F56D8(v25, v82);
      MEMORY[0x22AAC0340](v31, v32);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      v36 = v76;
      if (v35)
      {
        v33 = v35;
      }

      else
      {

        v34 = v70;
      }

      MEMORY[0x22AAC0340](v34, v33);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);
      sub_228820738(v25);
      v49 = sub_2287E64D8(v79, v80, &v81);

      *(v28 + 4) = v49;
      *(v28 + 12) = 2080;
      v50 = __swift_project_boxed_opaque_existential_1(v83, v84);
      MEMORY[0x28223BE20](v50);
      (*(v52 + 16))(&v70 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
      v53 = sub_22887F3B0();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(v83);
      v56 = sub_2287E64D8(v53, v55, &v81);

      *(v28 + 14) = v56;
      *(v28 + 22) = 2112;
      v57 = v73;
      *(v28 + 24) = v73;
      *v29 = v75;
      v58 = v57;
      v59 = v74;
      _os_log_impl(&dword_2287E4000, v74, v72, "%s: %s: Failed after timeout with error: %@", v28, 0x20u);
      sub_22882078C(v29);
      MEMORY[0x22AAC1440](v29, -1, -1);
      v60 = v71;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v60, -1, -1);
      MEMORY[0x22AAC1440](v28, -1, -1);

      return (*(v78 + 8))(v19, v36);
    }

    (*(v78 + 8))(v19, v76);
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v37 = swift_getObjectType();
  v38 = v16;
  (*(a5 + 40))(v37, a5);
  sub_2287E766C(a7, v83);
  v39 = v77;
  sub_2287F56D8(v77, v82);
  v40 = sub_22887F160();
  v41 = sub_22887F6B0();
  sub_228820738(v39);
  if (!os_log_type_enabled(v40, v41))
  {

    (*(v78 + 8))(v38, v13);
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  LODWORD(v75) = v41;
  v76 = v13;
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v74 = v43;
  *v42 = 136315394;
  v44 = *v39;
  v45 = v39[1];
  v46 = v39[3];
  v73 = v39[2];
  v48 = v39[4];
  v47 = v39[5];
  v79 = 60;
  v80 = 0xE100000000000000;
  v81 = v43;
  sub_2287F56D8(v39, v82);
  MEMORY[0x22AAC0340](v44, v45);
  MEMORY[0x22AAC0340](8250, 0xE200000000000000);
  if (v47)
  {
    v46 = v47;
  }

  else
  {

    v48 = v73;
  }

  MEMORY[0x22AAC0340](v48, v46);

  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  sub_228820738(v39);
  v61 = sub_2287E64D8(v79, v80, &v81);

  *(v42 + 4) = v61;
  *(v42 + 12) = 2080;
  v62 = __swift_project_boxed_opaque_existential_1(v83, v84);
  MEMORY[0x28223BE20](v62);
  (*(v64 + 16))(&v70 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_22887F3B0();
  v67 = v66;
  __swift_destroy_boxed_opaque_existential_1(v83);
  v68 = sub_2287E64D8(v65, v67, &v81);

  *(v42 + 14) = v68;
  _os_log_impl(&dword_2287E4000, v40, v75, "%s: %s: Finished after timeout.", v42, 0x16u);
  v69 = v74;
  swift_arrayDestroy();
  MEMORY[0x22AAC1440](v69, -1, -1);
  MEMORY[0x22AAC1440](v42, -1, -1);

  return (*(v78 + 8))(v38, v76);
}

uint64_t sub_2287FBCE4(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 28));
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    *(a1 + 24) = 1;
    swift_getObjectType();
    sub_22887F770();
  }

  os_unfair_lock_unlock((a1 + 28));
  return v2 ^ 1u;
}

void sub_2287FBD4C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a2 + 120);
  if (a1)
  {
    v16[0] = a1;
    v17 = 1;
    v8 = a1;
  }

  else
  {
    sub_2287E766C(a2 + 64, v16);
    v17 = 0;
  }

  v7(a2, v16);
  sub_2287FE448(v16);
  v9 = *(a3 + 80);
  os_unfair_lock_lock((v9 + 36));
  v10 = *(v9 + 24);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 24) = v12;
    os_unfair_lock_unlock((v9 + 36));
    v13 = a4[3];
    v14 = a4[4];
    v15 = __swift_project_boxed_opaque_existential_1(a4, v13);
    sub_228866FF4(v15, a3, v13, v14);
  }
}

uint64_t sub_2287FBE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 88))();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287FDAE0(a2, v5);
    if (v5[40] < 2u)
    {
      sub_2287FE448(v5);
      sub_2287FEDAC();
    }
  }

  return result;
}

uint64_t sub_2287FBEE0(uint64_t *a1, uint64_t a2, char **a3)
{
  v8 = *a1;
  result = sub_2287FC280(*a1, a2, a3);
  if (v4)
  {
    goto LABEL_6;
  }

  if (v10)
  {
    v3 = *(v8 + 16);
LABEL_6:

    return v3;
  }

  v3 = result;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v8 + 16);
    v12 = *(v8 + 16);
    if (v11 == v12)
    {
      goto LABEL_6;
    }

    v19 = a1;
    v14 = 216 * result + 248;
    while (v11 < v12)
    {
      sub_2287F71FC(v8 + v14, v18);
      v15 = sub_228862404(v18, a2, a3);
      result = sub_2287F836C(v18);
      if ((v15 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }

          v16 = *v13;
          if (v3 >= v16)
          {
            goto LABEL_23;
          }

          result = sub_2287F71FC(v8 + 32 + 216 * v3, v18);
          if (v11 >= v16)
          {
            goto LABEL_24;
          }

          sub_2287F71FC(v8 + v14, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2287FFD34(v8);
          }

          result = sub_228863CA0(v17, v8 + 216 * v3 + 32);
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_25;
          }

          result = sub_228863CA0(v18, v8 + v14);
          *v19 = v8;
        }

        ++v3;
      }

      ++v11;
      v13 = (v8 + 16);
      v12 = *(v8 + 16);
      v14 += 216;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

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

  __break(1u);
  return result;
}

uint64_t sub_2287FC0A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 48);
    MEMORY[0x28223BE20](Strong);
    os_unfair_lock_lock((v1 + 104));
    sub_2287FC33C((v1 + 16), &v3);
    os_unfair_lock_unlock((v1 + 104));
    v3();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2287FC194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v9 = (*(a2 + 88))(a3, a4);
  v10 = sub_2287FEA58(v9, a5, a1);
  v12 = v11;

  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v12;
  *a6 = sub_2287FEDA4;
  a6[1] = result;
  return result;
}

uint64_t sub_2287FC244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287FC280(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  for (i = (a1 + 32); ; i += 27)
  {
    v9 = sub_228862404(i, a2, a3);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2287FC360()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(Strong + 136);
  MEMORY[0x28223BE20](Strong);
  os_unfair_lock_lock(v1 + 17);
  sub_2287FDA9C(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 17);
  v2 = v4;

  return v2;
}

uint64_t sub_2287FC440(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v200 = a4;
  v201 = a1;
  v8 = 0;
  v9 = sub_22887F180();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v194 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v195 = (&v182 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v182 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v182 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v182 - v21;
  sub_2287FDAE0(a3, v228);
  v196 = v5;
  v199 = a3;
  if (v229)
  {
    v197 = v9;
    if (v229 == 1)
    {
      v198 = v10;
      v23 = *&v228[0];
      v24 = v20;
      v26 = v5[2];
      v25 = v5[3];
      ObjectType = swift_getObjectType();
      v28 = *(v25 + 40);
      v192 = ObjectType;
      v187 = v28;
      v188 = v25 + 40;
      v28(ObjectType, v25);
      sub_2287F5EE4(a2, v220);
      sub_2287F5EE4(a2, v215);
      v191 = a2;
      sub_2287F5EE4(a2, v213);

      v29 = v23;
      v30 = sub_22887F160();
      v31 = sub_22887F690();

      v32 = os_log_type_enabled(v30, v31);
      v193 = v23;
      v189 = v26;
      v190 = v25;
      if (v32)
      {
        v184 = v31;
        v185 = v30;
        v186 = v24;
        v202 = 0;
        v33 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v204 = v183;
        *v33 = 136316162;
        v209 = v26;
        swift_unknownObjectRetain();
        v34 = sub_22887F3B0();
        v36 = sub_2287E64D8(v34, v35, &v204);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        v37 = v221;
        v38 = v222;
        v39 = v223;
        v40 = v224;
        v41 = v225;
        v42 = v226;
        v209 = 60;
        v210 = 0xE100000000000000;

        MEMORY[0x22AAC0340](v37, v38);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        if (v42)
        {
          v43 = v42;
        }

        else
        {

          v41 = v39;
          v43 = v40;
        }

        v72 = v186;

        MEMORY[0x22AAC0340](v41, v43);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v73 = v209;
        v74 = v210;
        sub_2287F6C04(v220);
        v75 = sub_2287E64D8(v73, v74, &v204);

        *(v33 + 14) = v75;
        *(v33 + 22) = 2080;
        v76 = v218;
        v77 = v219;
        __swift_project_boxed_opaque_existential_1(v217, v218);
        (*(v77 + 24))(&v209, v76, v77);
        v78 = v211;
        v206 = v209;
        v207 = v210;

        MEMORY[0x22AAC0340](40, 0xE100000000000000);
        v212[0] = v78;
        v79 = sub_22887FBA0();
        MEMORY[0x22AAC0340](v79);

        MEMORY[0x22AAC0340](41, 0xE100000000000000);
        v80 = v206;
        v81 = v207;

        sub_2287F6C04(v215);
        v82 = sub_2287E64D8(v80, v81, &v204);

        *(v33 + 24) = v82;
        *(v33 + 32) = 2048;
        Current = CFAbsoluteTimeGetCurrent();
        v84 = v214;
        sub_2287F6C04(v213);
        *(v33 + 34) = Current - v84;
        *(v33 + 42) = 2112;
        v23 = v193;
        v85 = v193;
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 44) = v86;
        v87 = v182;
        *v182 = v86;
        v88 = v185;
        _os_log_impl(&dword_2287E4000, v185, v184, "[%s]: [%s - %s]: Failed after %fs: %@.", v33, 0x34u);
        sub_22882078C(v87);
        MEMORY[0x22AAC1440](v87, -1, -1);
        v89 = v183;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v89, -1, -1);
        MEMORY[0x22AAC1440](v33, -1, -1);

        v186 = *(v198 + 8);
        v186(v72, v197);
        v5 = v196;
        v8 = v202;
      }

      else
      {

        sub_2287F6C04(v213);
        sub_2287F6C04(v220);
        v186 = *(v198 + 8);
        v186(v24, v9);
        sub_2287F6C04(v215);
      }

      a2 = v191;
      v91 = v5[14];
      v90 = v5[15];
      v92 = swift_getObjectType();
      sub_2287FDBEC((a2 + 8), v23, v92, v90);
      if (v8)
      {
        v93 = 0;
        v209 = v8;
        v94 = v8;
        sub_2287EC070(0, &qword_2813CF1A8);
        if (swift_dynamicCast())
        {
          v194 = v92;

          v95 = v213[1];
          v191 = v213[0];
          v23 = v195;
          v187(v192, v190);
          sub_2287F5EE4(a2, v220);

          v96 = sub_22887F160();
          v97 = sub_22887F6A0();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v202 = 0;
            v99 = v98;
            v192 = swift_slowAlloc();
            v206 = v192;
            *v99 = 136315650;
            sub_2287E766C(v227, v215);
            __swift_project_boxed_opaque_existential_1(v215, v216);
            swift_getDynamicType();
            __swift_destroy_boxed_opaque_existential_1(v215);
            v100 = sub_22887FD20();
            v102 = v101;
            sub_2287F6C04(v220);
            v103 = sub_2287E64D8(v100, v102, &v206);

            *(v99 + 4) = v103;
            *(v99 + 12) = 2080;
            v215[0] = v91;
            swift_unknownObjectRetain();
            v104 = sub_22887F3B0();
            v105 = v23;
            v107 = sub_2287E64D8(v104, v106, &v206);

            *(v99 + 14) = v107;
            *(v99 + 22) = 2080;
            v23 = sub_2287E64D8(v191, v95, &v206);

            *(v99 + 24) = v23;
            _os_log_impl(&dword_2287E4000, v96, v97, "Work item of type %s associated with a Planner (%s) that expects a %s", v99, 0x20u);
            v108 = v192;
            swift_arrayDestroy();
            MEMORY[0x22AAC1440](v108, -1, -1);
            v109 = v99;
            v93 = v202;
            MEMORY[0x22AAC1440](v109, -1, -1);

            v110 = v105;
          }

          else
          {

            sub_2287F6C04(v220);
            v110 = v23;
          }

          v186(v110, v197);
          v111 = v201;
        }

        else
        {

          v23 = v194;
          v187(v192, v190);
          sub_2287F5EE4(a2, v220);

          v112 = sub_22887F160();
          v113 = sub_22887F6A0();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            v213[0] = v202;
            *v114 = 136315394;
            sub_2287E766C(v227, v215);
            LODWORD(v195) = v113;
            __swift_project_boxed_opaque_existential_1(v215, v216);
            swift_getDynamicType();
            __swift_destroy_boxed_opaque_existential_1(v215);
            v115 = sub_22887FD20();
            v192 = v112;
            v117 = v116;
            sub_2287F6C04(v220);
            v118 = sub_2287E64D8(v115, v117, v213);
            v93 = 0;

            *(v114 + 4) = v118;
            *(v114 + 12) = 2080;
            v215[0] = v91;
            swift_unknownObjectRetain();
            v119 = sub_22887F3B0();
            v120 = v23;
            v122 = sub_2287E64D8(v119, v121, v213);

            *(v114 + 14) = v122;
            v23 = v192;
            _os_log_impl(&dword_2287E4000, v192, v195, "Caught an unexpected exception handling failure of work item of type %s associated with %s", v114, 0x16u);
            v123 = v202;
            swift_arrayDestroy();
            MEMORY[0x22AAC1440](v123, -1, -1);
            MEMORY[0x22AAC1440](v114, -1, -1);

            v124 = v120;
          }

          else
          {

            sub_2287F6C04(v220);
            v124 = v23;
          }

          v186(v124, v197);
          v111 = v201;
        }
      }

      else
      {
        v93 = 0;
        v111 = v201;
      }

      *(v111 + 48) = 1;
      i = *(v111 + 32);
      if (i >> 62)
      {
LABEL_76:
        v157 = sub_22887FA20();
        v202 = v93;
        if (v157)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v157 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        v202 = v93;
        if (v157)
        {
LABEL_38:
          if (v157 >= 1)
          {
            v23 = 0;
            v158 = v200[3];
            v93 = (i & 0xC000000000000001);
            v111 = i & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v93)
              {
                v159 = MEMORY[0x22AAC07F0](v23, i);
              }

              else
              {
                if (v23 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_75:
                  __break(1u);
                  goto LABEL_76;
                }

                v159 = *(i + 8 * v23 + 32);
              }

              if (v158 < *(v159 + 24))
              {
                v160 = *(v159 + 16);
                os_unfair_lock_lock((v160 + 36));
                *(v160 + 32) = 0;
                os_unfair_lock_unlock((v160 + 36));
              }

              ++v23;

              if (v157 == v23)
              {

                goto LABEL_48;
              }
            }
          }

          __break(1u);
LABEL_79:
          result = sub_22887FA20();
          v178 = result;
          if (result < v157)
          {
            goto LABEL_80;
          }

          goto LABEL_68;
        }
      }

      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v202 = 0;
      v59 = v5[2];
      v58 = v5[3];
      swift_getObjectType();
      (*(v58 + 40))();
      sub_2287F5EE4(a2, v220);
      sub_2287F5EE4(a2, v215);
      sub_2287F5EE4(a2, v213);

      v60 = sub_22887F160();
      v61 = sub_22887F6B0();

      if (os_log_type_enabled(v60, v61))
      {
        LODWORD(v194) = v61;
        v195 = v60;
        v198 = v10;
        v62 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v204 = v193;
        *v62 = 136315906;
        v209 = v59;
        swift_unknownObjectRetain();
        v63 = sub_22887F3B0();
        v65 = sub_2287E64D8(v63, v64, &v204);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2080;
        v66 = v221;
        v67 = v222;
        v192 = v223;
        v68 = v224;
        v69 = v225;
        v70 = v226;
        v209 = 60;
        v210 = 0xE100000000000000;

        MEMORY[0x22AAC0340](v66, v67);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        if (v70)
        {
          v71 = v70;
        }

        else
        {

          v69 = v192;
          v71 = v68;
        }

        MEMORY[0x22AAC0340](v69, v71);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v142 = v209;
        v143 = v210;
        sub_2287F6C04(v220);
        v144 = sub_2287E64D8(v142, v143, &v204);

        *(v62 + 14) = v144;
        *(v62 + 22) = 2080;
        v145 = v218;
        v146 = v219;
        __swift_project_boxed_opaque_existential_1(v217, v218);
        (*(v146 + 24))(&v209, v145, v146);
        v147 = v211;
        v206 = v209;
        v207 = v210;

        MEMORY[0x22AAC0340](40, 0xE100000000000000);
        v212[0] = v147;
        v148 = sub_22887FBA0();
        MEMORY[0x22AAC0340](v148);

        MEMORY[0x22AAC0340](41, 0xE100000000000000);
        v149 = v206;
        v150 = v207;

        sub_2287F6C04(v215);
        v151 = sub_2287E64D8(v149, v150, &v204);

        *(v62 + 24) = v151;
        *(v62 + 32) = 2048;
        v152 = CFAbsoluteTimeGetCurrent();
        v153 = v214;
        sub_2287F6C04(v213);
        *(v62 + 34) = v152 - v153;
        v154 = v195;
        _os_log_impl(&dword_2287E4000, v195, v194, "[%s]: [%s - %s]: Replaced after %fs.", v62, 0x2Au);
        v155 = v193;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v155, -1, -1);
        MEMORY[0x22AAC1440](v62, -1, -1);

        (*(v198 + 8))(v17, v197);
      }

      else
      {

        sub_2287F6C04(v213);
        sub_2287F6C04(v220);
        (*(v10 + 8))(v17, v197);
        sub_2287F6C04(v215);
      }

LABEL_48:
      v23 = MEMORY[0x277D84F90];
      v111 = v201;
    }
  }

  else
  {
    v198 = v10;
    sub_2287EC014(v228, &v209);
    v45 = v5[2];
    v44 = v5[3];
    swift_getObjectType();
    (*(v44 + 40))();
    sub_2287F5EE4(a2, v220);
    sub_2287F5EE4(a2, v215);
    sub_2287F5EE4(a2, v213);

    v46 = sub_22887F160();
    v47 = sub_22887F6B0();

    if (os_log_type_enabled(v46, v47))
    {
      LODWORD(v194) = v47;
      v195 = v46;
      v197 = v9;
      v202 = 0;
      v48 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v212[0] = v193;
      *v48 = 136315906;
      v206 = v45;
      swift_unknownObjectRetain();
      v49 = sub_22887F3B0();
      v51 = sub_2287E64D8(v49, v50, v212);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v52 = v221;
      v53 = v222;
      v192 = v223;
      v54 = v224;
      v55 = v225;
      v56 = v226;
      v206 = 60;
      v207 = 0xE100000000000000;

      MEMORY[0x22AAC0340](v52, v53);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v56)
      {
        v57 = v56;
      }

      else
      {

        v55 = v192;
        v57 = v54;
      }

      MEMORY[0x22AAC0340](v55, v57);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);

      v125 = v206;
      v126 = v207;
      sub_2287F6C04(v220);
      v127 = sub_2287E64D8(v125, v126, v212);

      *(v48 + 14) = v127;
      *(v48 + 22) = 2080;
      v128 = v218;
      v129 = v219;
      __swift_project_boxed_opaque_existential_1(v217, v218);
      (*(v129 + 24))(&v206, v128, v129);
      v130 = v208;
      v204 = v206;
      v205 = v207;

      MEMORY[0x22AAC0340](40, 0xE100000000000000);
      v203 = v130;
      v131 = sub_22887FBA0();
      MEMORY[0x22AAC0340](v131);

      MEMORY[0x22AAC0340](41, 0xE100000000000000);
      v132 = v204;
      v133 = v205;

      sub_2287F6C04(v215);
      v134 = sub_2287E64D8(v132, v133, v212);

      *(v48 + 24) = v134;
      *(v48 + 32) = 2048;
      v135 = CFAbsoluteTimeGetCurrent();
      v136 = v214;
      sub_2287F6C04(v213);
      *(v48 + 34) = v135 - v136;
      v137 = v195;
      _os_log_impl(&dword_2287E4000, v195, v194, "[%s]: [%s - %s]: Finished run after %fs.", v48, 0x2Au);
      v138 = v193;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v138, -1, -1);
      MEMORY[0x22AAC1440](v48, -1, -1);

      (*(v198 + 8))(v22, v197);
      v5 = v196;
      v8 = v202;
    }

    else
    {

      sub_2287F6C04(v213);
      sub_2287F6C04(v220);
      (*(v198 + 8))(v22, v9);
      sub_2287F6C04(v215);
    }

    v139 = v5[15];
    v140 = swift_getObjectType();
    v141 = sub_228876650(&v209, v140, v139);
    v111 = v201;
    if (v8)
    {

      v202 = 0;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v23 = v141;
      v202 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v209);
  }

  v161 = a2[11];
  v162 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v161);
  v163 = (*(v162 + 24))(v220, v161, v162);
  v93 = &v182;
  v164 = v220[1];
  a2 = v200;
  v165 = v200[2];
  MEMORY[0x28223BE20](v163);
  *(&v182 - 4) = v166;
  *(&v182 - 3) = v164;
  v167 = v199;
  *(&v182 - 2) = v168;
  *(&v182 - 1) = v167;
  os_unfair_lock_lock((v165 + 36));
  sub_2287FE0C4(v165 + 16);
  os_unfair_lock_unlock((v165 + 36));

  os_unfair_lock_lock((v165 + 36));
  v169 = *(*(v165 + 24) + 16);
  os_unfair_lock_unlock((v165 + 36));
  if (v169)
  {
    return v23;
  }

  os_unfair_lock_lock((v165 + 36));
  v170 = *(v165 + 32);
  os_unfair_lock_unlock((v165 + 36));
  if (v170 == 1)
  {
    v171 = 0;
    for (i = *(v111 + 32); ; *(v111 + 32) = i)
    {
      if (i >> 62)
      {
        if (!sub_22887FA20())
        {
          goto LABEL_70;
        }
      }

      else if (!*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      if ((i & 0xC000000000000001) != 0)
      {
        v172 = MEMORY[0x22AAC07F0](0, i);
      }

      else
      {
        if (!*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v172 = *(i + 32);
      }

      v173 = *(v172 + 16);
      os_unfair_lock_lock((v173 + 36));
      a2 = *(*(v173 + 24) + 16);
      os_unfair_lock_unlock((v173 + 36));
      if (a2)
      {
        break;
      }

      v93 = *(v172 + 16);
      os_unfair_lock_lock(v93 + 9);
      v171 = *&v93[4]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v93 + 9);
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (i >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        i = sub_228872CE0(i);
      }

      v175 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v175)
      {
        goto LABEL_74;
      }

      a2 = (v175 - 1);
      v93 = *((i & 0xFFFFFFFFFFFFFF8) + 0x20);
      memmove(((i & 0xFFFFFFFFFFFFFF8) + 32), ((i & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v175 - 1));
      *((i & 0xFFFFFFFFFFFFFF8) + 0x10) = a2;
    }

LABEL_70:
    if (v171)
    {

      *(v111 + 8) = v171;
      type metadata accessor for InputSignalAnchorSet();
      swift_allocObject();
      v179 = sub_22886F6CC(v171);

      v180 = v196[15];
      v181 = swift_getObjectType();
      (*(v180 + 64))(v179, *v111, v181, v180);
    }

    return v23;
  }

  v157 = sub_2287FE478((v111 + 32), a2);

  v177 = *(v111 + 32);
  if (v177 >> 62)
  {
    goto LABEL_79;
  }

  v178 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v178 >= v157)
  {
LABEL_68:
    sub_2287FE888(v157, v178);
    return v23;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_2287FDA9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2287FC440(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthOrchestration17ScheduledWorkPlanV6ResultO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

void sub_2287FDB34()
{
  if (!qword_2813D1040)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D1040);
    }
  }
}

void sub_2287FDB84()
{
  if (!qword_2813CF4C0)
  {
    sub_2287E76D0(255, &qword_2813CF4D0);
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF4C0);
    }
  }
}

uint64_t sub_2287FDBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_22887F7D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  sub_2287E766C(a1, v25);
  sub_2287EC070(0, &qword_2813CF7F8);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    (*(a4 + 56))(v14, v23, v24, a4);
    return (*(v12 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    v25[0] = AssociatedTypeWitness;
    swift_getMetatypeMetadata();
    v18 = sub_22887F3B0();
    v20 = v19;
    sub_22887DE8C();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    return swift_willThrow();
  }
}

void sub_2287FDE90()
{
  if (!qword_2813CFF68)
  {
    sub_2287EC070(255, qword_2813CFF70);
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CFF68);
    }
  }
}

char *sub_2287FDEF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF1E0, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2287FE014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2287FE0E4(a2, a3, a4, &v8);

  result = sub_2287FDAE0(a5, &v8);
  if (!v9)
  {
    return sub_2287FE448(&v8);
  }

  if (v9 == 1)
  {
    result = sub_2287FE448(&v8);
  }

  *(a1 + 16) = 0;
  return result;
}

char *sub_2287FE0A4(char *a1, int64_t a2, char a3)
{
  result = sub_2287FDEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2287FE0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](a3);
  result = sub_22887FCD0();
  v11 = v9 + 56;
  v12 = -1 << *(v9 + 32);
  v13 = result & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = (v15 + 24 * v13);
      result = *v16;
      v17 = v16[2];
      v18 = *v16 == a1 && v16[1] == a2;
      if (v18 || (result = sub_22887FBF0(), (result & 1) != 0))
      {
        if (v17 == a3)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v24;
    v25 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22887A410();
      v20 = v25;
    }

    v21 = *(v20 + 48) + 24 * v13;
    v22 = *v21;
    v23 = *(v21 + 16);
    *a4 = v22;
    *(a4 + 16) = v23;
    result = sub_2287FE260(v13);
    *v24 = v25;
  }

  else
  {
LABEL_11:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

unint64_t sub_2287FE260(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22887F840();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(*(v3 + 48) + 24 * v6 + 16);
        sub_22887FC90();

        sub_22887F3E0();
        MEMORY[0x22AAC0BD0](v11);
        v12 = sub_22887FCD0();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = v14 + 24 * v2;
          v16 = (v14 + 24 * v6);
          if (v2 != v6 || v15 >= v16 + 24)
          {
            v10 = *v16;
            *(v15 + 16) = *(v16 + 2);
            *v15 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2287FE478(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_2287FE6A0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22887FA20();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22887FA20())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x22AAC07F0](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x22AAC07F0](v10, v7);
        v14 = MEMORY[0x22AAC07F0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_228872CE0(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_228872CE0(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
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
  return sub_22887FA20();
}

unint64_t sub_2287FE6A0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_22887FA20();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x22AAC07F0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_2287FE7A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_22887FA20();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_22887FA20();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_2287FE954(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2287FE8B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22887FA20();
LABEL_9:
  result = sub_22887F8D0();
  *v1 = result;
  return result;
}

uint64_t sub_2287FE954(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22887FA20();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_22887FA20();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void (*sub_2287FEA58(uint64_t a1, void *a2, uint64_t *a3))()
{
  v3 = *(a1 + 16);
  v4 = nullsub_1;
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v34 = v3 - 1;
    v7 = (a1 + 72);
    v33 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      v35[0] = v8;
      v35[1] = v9;
      v35[2] = v10;
      v35[3] = v11;
      v35[4] = v12;
      v36 = v13;
      sub_2288362F8(v8, v9, v10, v11, v12, v13);
      sub_22882B5F0(v35, a2, a3, &v37, Current);
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v49 = v43;
      v44 = v38;
      v45 = v39;
      if (v37)
      {
        v32 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2287F3AC0(0, *(v33 + 2) + 1, 1, v33);
        }

        v15 = *(v33 + 2);
        v14 = *(v33 + 3);
        if (v15 >= v14 >> 1)
        {
          v33 = sub_2287F3AC0((v14 > 1), v15 + 1, 1, v33);
        }

        sub_228836398(v8, v9, v10, v11, v12, v13);
        *(v33 + 2) = v15 + 1;
        v16 = &v33[104 * v15];
        *(v16 + 4) = v32;
        v17 = v44;
        *(v16 + 56) = v45;
        *(v16 + 40) = v17;
        v18 = v46;
        v19 = v47;
        v20 = v48;
        *(v16 + 120) = v49;
        *(v16 + 104) = v20;
        *(v16 + 88) = v19;
        *(v16 + 72) = v18;
        v21 = v34;
        if (!v34)
        {
LABEL_12:
          v22 = *(v31 + 56);

          sub_228828824(v23);

          v25 = *(v22 + 24);
          MEMORY[0x28223BE20](v24);
          os_unfair_lock_lock((v25 + 24));
          sub_228836434((v25 + 16), &v37);
          os_unfair_lock_unlock((v25 + 24));

          v26 = v37;

          a3[5] = v26;
          v27 = swift_allocObject();
          *(v27 + 16) = v31;
          *(v27 + 24) = v33;

          return sub_2287F860C;
        }
      }

      else
      {
        sub_228836398(v8, v9, v10, v11, v12, v13);
        v21 = v34;
        if (!v34)
        {
          goto LABEL_12;
        }
      }

      v7 += 48;
      v34 = v21 - 1;
    }
  }

  return v4;
}

void sub_2287FEDAC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_2287FF200((v1 + 16), v5);
  os_unfair_lock_unlock((v1 + 84));
  v2 = v5[0];
  if (v5[0])
  {
    v3 = v5[1];

    (v2)(v4);
    sub_22880064C(v2, v3);
    sub_22880064C(v2, v3);
  }
}

void sub_2287FEE3C(uint64_t *a1@<X0>, uint64_t a2@<X1>, os_unfair_lock_s *a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = *a1;
  if (!(*a1 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
LABEL_11:
    sub_2287F712C(&v37, &qword_2813D1040, &type metadata for EnqueuedWorkPlan);
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  v6 = a3;
  v26 = a4;
  v27 = sub_22887FA20();
  a4 = v26;
  a3 = v6;
  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_3:
  v28 = a4;
  v29 = a3;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAC07F0](0, v10);
    v11 = v12;
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v11 = *(v10 + 32);
  }

  v6 = *(v11 + 16);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v6 + 11);
  sub_2287FF34C(&v6[4], &v37);
  if (!v5)
  {
    os_unfair_lock_unlock(v6 + 11);

    if (v42)
    {
      v52[9] = v47;
      v52[10] = v48;
      v52[11] = v49;
      v53 = v50;
      v52[5] = v43;
      v52[6] = v44;
      v52[7] = v45;
      v52[8] = v46;
      v52[1] = v39;
      v52[2] = v40;
      v52[3] = v41;
      v52[4] = v42;
      v51 = v37;
      v52[0] = v38;
      v13 = sub_2287F96B0(a1);
      v15 = v14;
      v54 = *(v52 + 8);
      v55 = *(&v52[1] + 8);
      v56 = *(&v52[2] + 1);
      sub_2287F7E00((a1 + 3), v35);
      v16 = CFAbsoluteTimeGetCurrent() - *(a2 + 112);
      v17 = sub_2287ED1BC(a1);
      sub_2287F836C(&v51);
      v32 = v35[0];
      v33 = v35[1];
      v34 = v36;
      sub_2287F5EE4(a2, &v37);
      sub_2287FDAE0(v28, &v30);
      v18 = swift_allocObject();
      v19 = v33;
      *(v18 + 16) = v32;
      *(v18 + 32) = v19;
      v20 = v41;
      *(v18 + 136) = v42;
      v21 = v44;
      *(v18 + 152) = v43;
      *(v18 + 168) = v21;
      v22 = v37;
      *(v18 + 72) = v38;
      v23 = v40;
      *(v18 + 88) = v39;
      *(v18 + 104) = v23;
      *(v18 + 120) = v20;
      *(v18 + 48) = v34;
      *(v18 + 184) = v45;
      *(v18 + 56) = v22;
      *(v18 + 192) = v16;
      v24 = v55;
      *(v18 + 200) = v54;
      *(v18 + 216) = v24;
      *(v18 + 232) = v56;
      v25 = v31[0];
      *(v18 + 240) = v30;
      *(v18 + 256) = v25;
      *(v18 + 265) = *(v31 + 9);
      *(v18 + 288) = v29;
      *(v18 + 296) = v13;
      *(v18 + 304) = v15;
      *(v18 + 312) = v17;
      *a5 = sub_2287FFF2C;
      a5[1] = v18;

      return;
    }

    goto LABEL_11;
  }

LABEL_14:
  os_unfair_lock_unlock(v6 + 11);
  __break(1u);
}

uint64_t sub_2287FF144()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  if (*(v0 + 280) == 1)
  {
  }

  else if (!*(v0 + 280))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  }

  if (*(v0 + 296))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 320, 7);
}

uint64_t sub_2287FF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 16;
  sub_2287F6F88(sub_2287FF4F8, *(a1 + 16), v9);
  result = sub_2287FF7F4(sub_2287FF7D4);
  v5 = *(*v3 + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2287FC310(result, v5);
    sub_2287F8E10(v9, v7);
    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_22882591C(a2, Current);
      sub_2287F836C(v7);
    }

    else
    {
      sub_2287F719C(v7, sub_2287FDB34);
      *(a2 + 208) = 0;
      *(a2 + 176) = 0u;
      *(a2 + 192) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 160) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    return sub_2287F719C(v9, sub_2287FDB34);
  }

  return result;
}

uint64_t ScheduledWorkPlan.matches(_:)(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v2[5];
  v8 = a1[4];
  v9 = a1[5];
  v10 = v4 == a1[2] && v5 == a1[3];
  if (!v10 && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  v11 = v6 == v8 && v7 == v9;
  if (!v11 && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[11];
  v13 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v12);
  (*(v13 + 24))(v23, v12, v13);
  v15 = v23[0];
  v14 = v23[1];
  v16 = v23[2];
  v17 = a1[11];
  v18 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v17);
  (*(v18 + 24))(v22, v17, v18);
  v19 = v22[2];
  if (v15 == v22[0] && v14 == v22[1])
  {
  }

  else
  {
    v20 = sub_22887FBF0();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (v16 == v19)
  {
    swift_getObjectType();
    return sub_2287FF530() & 1;
  }

  return 0;
}

uint64_t sub_2287FF530()
{
  sub_2287FF5DC();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v0 = sub_22887F360();
    swift_unknownObjectRelease();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

unint64_t sub_2287FF5DC()
{
  result = qword_2813D13A8[0];
  if (!qword_2813D13A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813D13A8);
  }

  return result;
}

uint64_t sub_2287FF63C(uint64_t a1, uint64_t a2)
{
  sub_2287F71FC(a1, v23);
  sub_2287F8E10(v23, v11);
  sub_2287F8E10(a2, v13);
  if (v12)
  {
    sub_2287F8E10(v11, v9);
    if (v14)
    {
      v7[5] = v19;
      v7[6] = v20;
      v7[7] = v21;
      v8 = v22;
      v7[1] = v15;
      v7[2] = v16;
      v7[3] = v17;
      v7[4] = v18;
      v6[2] = v13[2];
      v6[3] = v13[3];
      v6[4] = v13[4];
      v7[0] = v14;
      v6[0] = v13[0];
      v6[1] = v13[1];
      v3 = _s19HealthOrchestration17ScheduledWorkPlanV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_2287F836C(v6);
      v4 = sub_2287FDB34;
      sub_2287F719C(v23, sub_2287FDB34);
      sub_2287F836C(v9);
    }

    else
    {
      sub_2287F719C(v23, sub_2287FDB34);
      sub_2287F836C(v9);
      v3 = 0;
      v4 = sub_228863CFC;
    }
  }

  else
  {
    sub_2287F719C(v23, sub_2287FDB34);
    if (v14)
    {
      v4 = sub_228863CFC;
    }

    else
    {
      v4 = sub_2287FDB34;
    }

    if (v14)
    {
      v3 = 0;
    }

    else
    {
      v3 = -1;
    }
  }

  sub_2287F719C(v11, v4);
  return v3 & 1;
}

uint64_t sub_2287FF7F4(uint64_t (*a1)(char *))
{
  v4 = *v2;
  v5 = (*v2 + 16);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 248; ; i += 216)
    {
      result = a1(&v4[i - 216]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_2287F71FC(&v4[i], v15);
          v12 = a1(v15);
          result = sub_2287F836C(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_2287F71FC(&v4[216 * v1 + 32], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_2287F71FC(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2287FFD34(v4);
              }

              result = sub_228863CA0(v14, &v4[216 * v1 + 32]);
              if (v10 >= *(v4 + 2))
              {
                goto LABEL_31;
              }

              result = sub_228863CA0(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 16);
          v11 = *(v4 + 2);
          i += 216;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_2287FF9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL _s19HealthOrchestration17ScheduledWorkPlanV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_getObjectType();
  if ((sub_2287FF530() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[4];
  v7 = a2[5];
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  if ((v4 != v6 || v5 != v7) && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[11];
  v9 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v8);
  (*(v9 + 24))(v19, v8, v9);
  v11 = v19[0];
  v10 = v19[1];
  v12 = v19[2];
  v13 = a2[11];
  v14 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v13);
  (*(v14 + 24))(v18, v13, v14);
  v15 = v18[2];
  if (v11 == v18[0] && v10 == v18[1])
  {
  }

  else
  {
    v17 = sub_22887FBF0();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  return v12 == v15;
}

void sub_2287FFBF8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_22887FA20())
  {
    if (sub_22887FA20())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x22AAC07F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_22887FA20();
LABEL_13:
      if (v3)
      {
        sub_2287FFBCC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287FFD48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), double a7, uint64_t a8, uint64_t a9)
{
  sub_2287F7E00(a1, &v35);
  if (v37)
  {
    v32 = a4;
    v33 = a9;
    sub_2287EC014(&v35, v42);
    v17 = v43;
    v16 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v18 = *(a3 + 16);
    v40[0] = *a3;
    v40[1] = v18;
    v41 = *(a3 + 32);
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    v23 = a2[6];
    v22 = a2[7];
    *&v35 = a2[2];
    *(&v35 + 1) = v19;
    v36 = v20;
    v37 = v21;
    v38 = v23;
    v39 = v22;
    v25 = *a2;
    v24 = a2[1];
    v26 = *(a5 + 16);

    os_unfair_lock_lock((v26 + 84));
    sub_2288613A0((v26 + 16), &v34);
    os_unfair_lock_unlock((v26 + 84));
    (*(v16 + 16))(a2 + 8, v40, v32, &v35, v25, v24, v34, v17, a7, v16);

    result = __swift_destroy_boxed_opaque_existential_1(v42);
    a9 = v33;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = sub_228800814(&v35, sub_2287FDE90);
  if (a6)
  {
LABEL_3:
    result = a6(result);
  }

LABEL_4:
  v28 = *(a9 + 16);
  if (v28)
  {
    v29 = a9 + 40;
    do
    {
      v30 = *(v29 - 8);

      v30(v31);

      v29 += 16;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t *sub_2287FFF4C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_2287F7E64(a1);
  *a2 = result;
  return result;
}

uint64_t ScopedExecutorIdentifier.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x22AAC0340](*v0, v0[1]);
  MEMORY[0x22AAC0340](8250, 0xE200000000000000);
  if (v4)
  {
    v1 = v4;
  }

  else
  {

    v3 = v2;
  }

  MEMORY[0x22AAC0340](v3, v1);

  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_228800044()
{
  v3 = *v0;

  MEMORY[0x22AAC0340](40, 0xE100000000000000);
  v1 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v1);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  return v3;
}

uint64_t ScheduledWorkPlan.Result.description.getter()
{
  sub_2287FDAE0(v0, v3);
  if (v4)
  {
    if (v4 == 1)
    {
      v1 = v3[0];
      MEMORY[0x22AAC0340](0x282064656C696166, 0xE800000000000000);
      swift_getErrorValue();
      sub_22887FBD0();
      MEMORY[0x22AAC0340](41, 0xE100000000000000);

      return 0;
    }

    else
    {
      return 0x646563616C706572;
    }
  }

  else
  {
    sub_2287FE448(v3);
    return 0x73736563637573;
  }
}

uint64_t WorkPlanAnalytics.description.getter()
{
  sub_22887F8A0();
  MEMORY[0x22AAC0340](60, 0xE100000000000000);
  sub_22887F5C0();
  MEMORY[0x22AAC0340](0x2072657466612073, 0xE800000000000000);
  sub_22887F5C0();
  MEMORY[0x22AAC0340](0x64656B636F6C6220, 0xEA0000000000202CLL);
  sub_22887F5C0();
  MEMORY[0x22AAC0340](0x2C64657375617020, 0xE900000000000020);
  sub_22887F5C0();
  MEMORY[0x22AAC0340](0x676E697469617720, 0xEA0000000000203BLL);
  v0 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v0);

  MEMORY[0x22AAC0340](0x6563616C70657220, 0xEE003E73746E656DLL);
  return 0;
}

uint64_t sub_22880039C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_228800558((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 84));
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = v7 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_228800440()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_228800470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2287F96B0();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    sub_228800908(0, &qword_2813CF1B0, sub_2288233C4, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2288817D0;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    *(v8 + 32) = sub_2287FED9C;
    *(v8 + 40) = result;
  }

  else
  {
    result = sub_2287ED1BC(a1);
    v8 = result;
  }

  *a2 = v8;
  return result;
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t objectdestroyTm_0()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t WorkEpoch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkBarrier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_31Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_228800760()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2288007A0(uint64_t a1)
{
  v1 = *(a1 + 48);
  os_unfair_lock_lock((v1 + 104));
  sub_228800874((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 104));
  v2._rawValue = v4;
  sub_2287EBD14(v2);
}

uint64_t sub_228800814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228800874@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2287EB4A4(a1);
  *a2 = result;
  return result;
}

void sub_2288008A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228800908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228800994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22887F3A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2288009C0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = 0;
  a2[3] = 0;
  return result;
}

uint64_t sub_2288009D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_228800A50(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock((v3 + 84));
  v4 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 84));
  *a2 = v4;
}

uint64_t sub_228800AE8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228800B38()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228800B90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_228800BD0(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000228882670;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t sub_228800BF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228800C44@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 120);
  v3 = *(a1 + 128);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_22881F05C;
  a2[1] = v5;
}

uint64_t sub_228800CB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228800CF0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228800E38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228800E74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228800EB0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228800F88()
{
  sub_2288247D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228801010()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s19HealthOrchestration24RequestedWorkInputSignalC6AnchorVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19HealthOrchestration24RequestedWorkInputSignalC6AnchorVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_228801098()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288010F0()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228801140()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22880120C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22880127C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288012B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2288012F4()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_22880136C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_2288013E4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228801424()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228801460()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801498()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288014D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228801550(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F110();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2288015BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F110();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22880162C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801674()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288016BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288016F4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_22880182C(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228886160;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t sub_228801850()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801888()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_2288018C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228801A20@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2288611D0;
  a2[1] = v5;
}

void sub_228801A90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_2287F7E00(&v3[10], a2);

  os_unfair_lock_unlock(v3 + 21);
}

void sub_228801AE4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 84));
  v4 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 84));
  *a2 = v4;
}

uint64_t sub_228801B64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL sub_228801BA0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_228886B70[v2] < qword_228886B70[v3])
  {
    return 1;
  }

  if (qword_228886B70[v3] >= qword_228886B70[v2])
  {
    return a1[24] < a2[24];
  }

  return 0;
}

void sub_228801BF4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 44));
  v4 = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 44));
  *a2 = v4;
}

uint64_t sub_228801C54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228801CB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 36));
  *a2 = v4;
}

void sub_228801CFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 80);
  os_unfair_lock_lock((v3 + 36));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 36));
}

uint64_t sub_228801D44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801D7C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228801DC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801DF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228801E38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228801E70()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228801F34@<X0>(uint64_t *a1@<X8>)
{
  result = MultiChannelDispatcher.width.getter();
  *a1 = result;
  return result;
}

__n128 sub_228801F94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_228801FA0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228801FE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228802020()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 192) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_228802194()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 192) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_228802308()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

void sub_22880244C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 36));
  *a2 = v4;
}

uint64_t sub_228802544()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228802584()
{
  MEMORY[0x22AAC1540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2288025C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_228802610(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 56) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t sub_228802658()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_2288026C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2288026D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228802710()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2288027B4(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t CurrentValueWorkPlan.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 CurrentValueWorkPlan.identifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t CurrentValueWorkPlan.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t CurrentValueWorkPlan.priority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t CurrentValueWorkPlan.init(identifier:priority:value:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  v11 = type metadata accessor for CurrentValueWorkPlan();
  v12 = *(*(a4 - 8) + 32);
  v13 = a5 + *(v11 + 48);

  return v12(v13, a3, a4);
}

uint64_t sub_228802A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_22887FBF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22887FBF0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_228802BA8(unsigned __int8 a1)
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](a1);
  return sub_22887FCD0();
}

uint64_t sub_228802BF0(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x797469726F697270;
  }

  return 0x65756C6176;
}

uint64_t sub_228802C80()
{
  sub_22887FC90();
  sub_228802B80(v2, *v0);
  return sub_22887FCD0();
}

uint64_t sub_228802CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228802A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228802D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2288054D0();
  *a1 = result;
  return result;
}

uint64_t sub_228802D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_228802DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CurrentValueWorkPlan.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[1] = *(a2 + 32);
  v15[2] = v4;
  type metadata accessor for CurrentValueWorkPlan.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_22887FB70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v15[3];
  sub_22887FCF0();
  v10 = v9[1];
  v11 = v9[2];
  v16 = *v9;
  v17 = v10;
  v18 = v11;
  v19 = 0;
  sub_228803064();

  v12 = v15[4];
  sub_22887FB50();

  if (!v12)
  {
    v13 = *(v9 + 32);
    v16 = v9[3];
    LOBYTE(v17) = v13;
    v19 = 1;
    sub_2288030B8();

    sub_22887FB50();

    LOBYTE(v16) = 2;
    sub_22887FB50();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_228803064()
{
  result = qword_27D851798;
  if (!qword_27D851798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851798);
  }

  return result;
}

unint64_t sub_2288030B8()
{
  result = qword_27D8517A0;
  if (!qword_27D8517A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8517A0);
  }

  return result;
}

uint64_t CurrentValueWorkPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentValueWorkPlan.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_22887FAF0();
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v25 - v8;
  v31 = a2;
  v28 = a3;
  v10 = type metadata accessor for CurrentValueWorkPlan();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v33 = v9;
  v14 = v34;
  sub_22887FCE0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v34 = v10;
  v16 = v29;
  v15 = v30;
  v17 = v12;
  v18 = v31;
  v38 = 0;
  sub_228803528();
  v19 = v32;
  sub_22887FAE0();
  v20 = v37;
  *v17 = v36;
  *(v17 + 2) = v20;
  v38 = 1;
  sub_22880357C();
  sub_22887FAE0();
  v21 = BYTE8(v36);
  *(v17 + 3) = v36;
  v17[32] = v21;
  LOBYTE(v36) = 2;
  sub_22887FAE0();
  (*(v16 + 8))(v33, v19);
  v22 = v34;
  (*(v26 + 32))(&v17[*(v34 + 48)], v15, v18);
  v23 = v25;
  (*(v25 + 16))(v27, v17, v22);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v23 + 8))(v17, v22);
}

unint64_t sub_228803528()
{
  result = qword_27D851CA0;
  if (!qword_27D851CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851CA0);
  }

  return result;
}

unint64_t sub_22880357C()
{
  result = qword_27D8517B0[0];
  if (!qword_27D8517B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8517B0);
  }

  return result;
}

uint64_t CurrentValueWorkPlan.description.getter()
{
  sub_22887F8A0();
  MEMORY[0x22AAC0340](0x616C506B726F573CLL, 0xEB00000000203A6ELL);
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x22AAC0340](40, 0xE100000000000000);
  v1 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v1);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  MEMORY[0x22AAC0340](v4, v5);

  MEMORY[0x22AAC0340](10272, 0xE200000000000000);
  v2 = PriorityRuleSet.description.getter();
  MEMORY[0x22AAC0340](v2);

  MEMORY[0x22AAC0340](2112041, 0xE300000000000000);
  sub_22887FBD0();
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 0;
}

uint64_t static CurrentValueWorkPlan<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_22887FBF0()) && v4 == v5)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);

    if (sub_228803A60(v7, v9))
    {
      v11 = sub_2287ECD4C(v8, v10);

      if (v11)
      {
        type metadata accessor for CurrentValueWorkPlan();
        return sub_22887F360() & 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_2288038C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0x80000002288883F0;
    }

    else
    {
      v7 = 0x80000002288883B0;
    }

    v6 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
    if (a1 == 3)
    {
      v5 = 0x696E6E7552746F6ELL;
      v4 = 0xEA0000000000676ELL;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0x80000002288883D0;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x80000002288883F0;
    }

    else
    {
      v2 = 0x80000002288883B0;
    }

    if (v6 != 0xD000000000000011)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0x80000002288883D0;
    if (v6 != 0xD000000000000013)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 3)
  {
    if (v6 != 0x696E6E7552746F6ELL)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (v6 != 0x6E776F6E6B6E75)
    {
LABEL_29:
      v8 = sub_22887FBF0();
      goto LABEL_30;
    }
  }

  if (v7 != v2)
  {
    goto LABEL_29;
  }

  v8 = 1;
LABEL_30:

  return v8 & 1;
}

uint64_t sub_228803A60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v107 = a2 + 32;
  v108 = result + 32;
  v98 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_120;
    }

    v4 = (v108 + 16 * v3);
    v5 = *v4;
    v6 = (v107 + 16 * v3);
    v7 = *v6;
    v8 = *(*v4 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v110 = v3;
    v9 = v4[8];
    v10 = v6[8];
    if (v8)
    {
      break;
    }

LABEL_84:
    if (v9 <= 1)
    {
      v90 = 0x6669636570736E75;
      v91 = 0xEB00000000646569;
      if (v9)
      {
        v91 = 0xE600000000000000;
        v90 = 0x746E65677275;
        if (v10 <= 1)
        {
          goto LABEL_91;
        }

        goto LABEL_95;
      }

      goto LABEL_90;
    }

    if (v9 == 2)
    {
      v90 = 0x616E65746E69616DLL;
      v91 = 0xEB0000000065636ELL;
LABEL_90:
      if (v10 <= 1)
      {
        goto LABEL_91;
      }

      goto LABEL_95;
    }

    v91 = 0xE700000000000000;
    v90 = 0x64656B636F6C62;
    if (v10 <= 1)
    {
LABEL_91:
      v92 = 0x6669636570736E75;
      v93 = 0xEB00000000646569;
      if (v10)
      {
        v93 = 0xE600000000000000;
        if (v90 != 0x746E65677275)
        {
          goto LABEL_101;
        }

        goto LABEL_98;
      }

      goto LABEL_97;
    }

LABEL_95:
    if (v10 != 2)
    {
      v93 = 0xE700000000000000;
      if (v90 != 0x64656B636F6C62)
      {
        goto LABEL_101;
      }

      goto LABEL_98;
    }

    v92 = 0x616E65746E69616DLL;
    v93 = 0xEB0000000065636ELL;
LABEL_97:
    if (v90 != v92)
    {
      goto LABEL_101;
    }

LABEL_98:
    if (v91 == v93)
    {

      goto LABEL_102;
    }

LABEL_101:
    v94 = sub_22887FBF0();

    if ((v94 & 1) == 0)
    {
      return 0;
    }

LABEL_102:
    v3 = v110 + 1;
    result = 1;
    v2 = v98;
    if (v110 + 1 == v98)
    {
      return result;
    }
  }

  if (v5 == v7)
  {
    goto LABEL_84;
  }

  v11 = 0;
  v104 = v7 + 32;
  v105 = v5 + 32;
  v109 = v7;
  v103 = v5;
  v96 = v9;
  v97 = v10;
  v95 = v8;
  while (1)
  {
    if (v11 >= *(v5 + 16))
    {
      goto LABEL_121;
    }

    if (v11 >= *(v7 + 16))
    {
      goto LABEL_122;
    }

    v12 = (v105 + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v106 = v11;
    v15 = (v104 + 16 * v11);
    v16 = *v15;
    v17 = v15[1];
    v111 = *v15;
    v112 = v17;
    v113 = v13;
    v114 = v14;
    if (v13 != *v15)
    {
      if (*(v13 + 16) == *(v16 + 16))
      {
        v101 = v13 + 64;
        v18 = 1 << *(v13 + 32);
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        else
        {
          v19 = -1;
        }

        v115 = v19 & *(v13 + 64);
        v99 = (v18 + 63) >> 6;

        v20 = 0;
        v21 = v115;
        if (!v115)
        {
LABEL_20:
          v23 = v20;
          result = v114;
          while (1)
          {
            v20 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v20 >= v99)
            {
              goto LABEL_51;
            }

            v24 = *(v101 + 8 * v20);
            ++v23;
            if (v24)
            {
              v22 = __clz(__rbit64(v24));
              v116 = (v24 - 1) & v24;
              goto LABEL_25;
            }
          }

LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        while (1)
        {
          v22 = __clz(__rbit64(v21));
          v116 = (v21 - 1) & v21;
LABEL_25:
          v25 = v22 | (v20 << 6);
          v26 = (*(v113 + 48) + 16 * v25);
          v27 = *v26;
          v28 = v26[1];
          v29 = *(*(v113 + 56) + 8 * v25);

          v30 = sub_2287E5E2C(v27, v28);
          v32 = v31;

          if ((v32 & 1) == 0)
          {
            break;
          }

          v33 = *(*(v16 + 56) + 8 * v30);
          if (v33 != v29)
          {
            if (*(v33 + 16) != *(v29 + 16))
            {
              break;
            }

            v34 = v33 + 64;
            v35 = 1 << *(v33 + 32);
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            else
            {
              v36 = -1;
            }

            v37 = v36 & *(v33 + 64);
            v38 = (v35 + 63) >> 6;

            v39 = 0;
            v118 = result;
            while (v37)
            {
              v40 = __clz(__rbit64(v37));
              v120 = (v37 - 1) & v37;
LABEL_40:
              v43 = 16 * (v40 | (v39 << 6));
              v44 = (*(result + 48) + v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = (*(result + 56) + v43);
              v48 = *v47;
              v49 = v47[1];

              v50 = sub_2287E5E2C(v45, v46);
              v52 = v51;

              if ((v52 & 1) == 0)
              {
LABEL_107:

LABEL_108:

                goto LABEL_109;
              }

              v53 = (*(v29 + 56) + 16 * v50);
              if (*v53 == v48 && v53[1] == v49)
              {

                result = v118;
                v37 = v120;
              }

              else
              {
                v55 = sub_22887FBF0();

                result = v118;
                v37 = v120;
                if ((v55 & 1) == 0)
                {
                  goto LABEL_108;
                }
              }
            }

            v41 = v39;
            while (1)
            {
              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v39 >= v38)
              {

                v7 = v109;
                v16 = v111;
                goto LABEL_48;
              }

              v42 = *(v34 + 8 * v39);
              ++v41;
              if (v42)
              {
                v40 = __clz(__rbit64(v42));
                v120 = (v42 - 1) & v42;
                goto LABEL_40;
              }
            }

            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

LABEL_48:

          v17 = v112;
          v21 = v116;
          if (!v116)
          {
            goto LABEL_20;
          }
        }

LABEL_109:
      }

LABEL_111:

      return 0;
    }

    result = v114;
LABEL_51:
    if (result != v17)
    {
      break;
    }

LABEL_10:
    v11 = v106 + 1;

    v5 = v103;
    v9 = v96;
    v10 = v97;
    if (v106 + 1 == v95)
    {
      goto LABEL_84;
    }
  }

  if (*(result + 16) != *(v17 + 16))
  {

    goto LABEL_111;
  }

  v56 = 0;
  v100 = result + 64;
  v57 = 1 << *(result + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(result + 64);
  v60 = (v57 + 63) >> 6;
  v102 = v60;
  if (v59)
  {
    do
    {
      v61 = __clz(__rbit64(v59));
      v117 = (v59 - 1) & v59;
LABEL_63:
      v64 = v61 | (v56 << 6);
      v65 = (*(result + 48) + 16 * v64);
      v66 = *v65;
      v67 = v65[1];
      v68 = *(*(result + 56) + 8 * v64);

      v69 = sub_2287E5E2C(v66, v67);
      v71 = v70;

      if ((v71 & 1) == 0)
      {
        goto LABEL_109;
      }

      v72 = *(*(v17 + 56) + 8 * v69);
      if (v72 != v68)
      {
        if (*(v72 + 16) != *(v68 + 16))
        {
          goto LABEL_109;
        }

        v73 = v72 + 64;
        v74 = 1 << *(v72 + 32);
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        else
        {
          v75 = -1;
        }

        v76 = v75 & *(v72 + 64);
        v77 = (v74 + 63) >> 6;

        v78 = 0;
        v119 = result;
        while (v76)
        {
          v79 = __clz(__rbit64(v76));
          v121 = (v76 - 1) & v76;
LABEL_77:
          v82 = v79 | (v78 << 6);
          v83 = (*(result + 48) + 16 * v82);
          v85 = *v83;
          v84 = v83[1];
          v86 = *(*(result + 56) + 8 * v82);

          sub_2287E5E2C(v85, v84);
          LOBYTE(v85) = v87;

          if ((v85 & 1) == 0)
          {
            goto LABEL_107;
          }

          v89 = sub_228815E20(v88, v86);

          result = v119;
          v76 = v121;
          if ((v89 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        v80 = v78;
        while (1)
        {
          v78 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_117;
          }

          if (v78 >= v77)
          {

            v7 = v109;
            v17 = v112;
            break;
          }

          v81 = *(v73 + 8 * v78);
          ++v80;
          if (v81)
          {
            v79 = __clz(__rbit64(v81));
            v121 = (v81 - 1) & v81;
            goto LABEL_77;
          }
        }
      }

      result = v114;
      v59 = v117;
      v60 = v102;
    }

    while (v117);
  }

  v62 = v56;
  while (1)
  {
    v56 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v56 >= v60)
    {
      goto LABEL_10;
    }

    v63 = *(v100 + 8 * v56);
    ++v62;
    if (v63)
    {
      v61 = __clz(__rbit64(v63));
      v117 = (v63 - 1) & v63;
      goto LABEL_63;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_2288043C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 1);
      v8 = *v3;

      if ((sub_228816FC0(v5, v7) & 1) == 0)
      {
        break;
      }

      v9 = sub_228816FD8(v6, v8);

      if (v9)
      {
        v3 += 2;
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v9 & 1;
    }

    goto LABEL_11;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_2288044DC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_52:
    v5 = sub_22887FA20();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_22887FA20();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_49:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_49;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_35;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_35:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x22AAC07F0](v12 - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v4 = *(a1 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v15 = MEMORY[0x22AAC07F0](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v15 = *(a2 + 8 * v12);

LABEL_26:
        v16 = v4[2] == v15[2] && v4[3] == v15[3];
        if (!v16 && (sub_22887FBF0() & 1) == 0 || (sub_228817008(v4[4], v15[4]) & 1) == 0)
        {
          goto LABEL_48;
        }

        v17 = sub_2288179FC(v4[5], v15[5]);

        if (v17)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v17 & 1;
      }
    }

    v18 = a1 + 32;
    v19 = a2 + 32;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20)
    {
      if (!v21)
      {
        goto LABEL_56;
      }

      v22 = *v18;
      v23 = *v19;
      v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
      if (!v24 && (sub_22887FBF0() & 1) == 0)
      {
        goto LABEL_49;
      }

      v25 = *(v22 + 32);
      v26 = *(v23 + 32);

      if ((sub_228817008(v25, v26) & 1) == 0)
      {
LABEL_48:

        goto LABEL_49;
      }

      v27 = sub_2288179FC(*(v22 + 40), *(v23 + 40));

      if ((v27 & 1) == 0)
      {
        goto LABEL_49;
      }

      --v21;
      --v20;
      v18 += 8;
      v19 += 8;
      v17 = 1;
      if (!--v5)
      {
        return v17 & 1;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22880479C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      while (1)
      {
        sub_2288054D8(v3, v20);
        sub_2288054D8(v4, v16);
        v5 = v21;
        v6 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v6 + 40))(v15, v5, v6);
        v8 = v15[0];
        v7 = v15[1];
        v9 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(v10 + 40))(v14, v9, v10);
        if (v8 == v14[0] && v7 == v14[1])
        {
        }

        else
        {
          v11 = sub_22887FBF0();

          if ((v11 & 1) == 0)
          {
            sub_228805534(v16);
            sub_228805534(v20);
            v12 = 0;
            return v12 & 1;
          }
        }

        v12 = sub_228815FD8(v23, v19);
        sub_228805534(v16);
        sub_228805534(v20);
        if (v12)
        {
          v3 += 56;
          v4 += 56;
          if (--v2)
          {
            continue;
          }
        }

        return v12 & 1;
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_228804974(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2288049DC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228804A64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 33) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_228804BF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 33) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_228804E58(uint64_t a1, int a2)
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

uint64_t sub_228804E78(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Orchestrator.OrchestrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Orchestrator.OrchestrationState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_228805048()
{
  v0 = sub_22887F3A0();
  v1 = MEMORY[0x22AAC0360](v0);

  return v1;
}

uint64_t sub_228805084()
{
  sub_22887F3A0();
  sub_22887F3E0();
}

uint64_t sub_2288050D8()
{
  sub_22887F3A0();
  sub_22887FC90();
  sub_22887F3E0();
  v0 = sub_22887FCD0();

  return v0;
}

uint64_t sub_22880514C(uint64_t a1, id *a2)
{
  result = sub_22887F380();
  *a2 = 0;
  return result;
}

uint64_t sub_2288051C4(uint64_t a1, id *a2)
{
  v3 = sub_22887F390();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_228805244@<X0>(uint64_t *a1@<X8>)
{
  sub_22887F3A0();
  v2 = sub_22887F370();

  *a1 = v2;
  return result;
}

uint64_t sub_228805288()
{
  v0 = sub_22887F3A0();
  v2 = v1;
  if (v0 == sub_22887F3A0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22887FBF0();
  }

  return v5 & 1;
}

uint64_t sub_228805310(uint64_t a1)
{
  v2 = sub_2288056BC(&qword_27D8519A0, type metadata accessor for FileAttributeKey);
  v3 = sub_2288056BC(&qword_27D8519A8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288053CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22887F370();

  *a1 = v2;
  return result;
}

uint64_t sub_228805414(uint64_t a1)
{
  v2 = sub_2288056BC(&qword_27D8519B0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_2288056BC(&qword_27D8519B8, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_2288055E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2288056BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228805888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22887F7D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12 - 8];
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2287E766C(a1, v21);
  sub_2287EC070(0, qword_2813D0F88);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, a2);
    (*(v14 + 32))(v16, v13, a2);
    (*(a3 + 56))(v16, a2, a3);
    return (*(v14 + 8))(v16, a2);
  }

  else
  {
    v18(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v9);
    return (*(v14 + 16))(a4, v4, a2);
  }
}

__n128 SecureCodingValueAnchor.init(identifier:value:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = a2;
  return result;
}

uint64_t SecureCodingValueAnchor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t SecureCodingValueAnchor.hasDifference(from:for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v1 + 32);
    v5 = a1[3];
    v4 = a1[4];
    v6 = a1[2];
    v7 = *a1;
    sub_228805BEC(*a1, v2, v6, v5, v4);
    v8 = v3;
    v9 = v4;
    v10 = sub_22887F7C0();
    sub_228805C38(v7, v2, v6, v5, v4);

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_228805BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v6 = a5;
  }

  return result;
}

uint64_t sub_228805C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SecureCodingValueAnchor.merged(with:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;

  v7 = v6;
}

uint64_t sub_228805CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_22887FBF0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_228805DDC(char a1)
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](a1 & 1);
  return sub_22887FCD0();
}

uint64_t sub_228805E24(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_228805E78()
{
  sub_22887FC90();
  sub_228805DB4(v2, *v0);
  return sub_22887FCD0();
}

uint64_t sub_228805EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228805CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_228805EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_228806B04();
  *a1 = result;
  return result;
}

uint64_t sub_228805F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_228805F68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void SecureCodingValueAnchor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  type metadata accessor for SecureCodingValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_22887FAF0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCE0();
  if (v2)
  {
    goto LABEL_3;
  }

  v7 = v21;
  v8 = v22;
  v27 = 1;
  sub_228806364();
  sub_22887FAE0();
  v20 = v6;
  v10 = v23;
  v9 = v24;
  sub_2287E76D0(0, &qword_2813CF518);
  v11 = sub_22887F6C0();
  if (!v11)
  {
    LOBYTE(v23) = 1;
    sub_22887F8F0();
    swift_allocError();
    swift_getWitnessTable();
    v13 = v20;
    sub_22887F8E0();
    swift_willThrow();
    sub_2288063B8(v10, v9);
    (*(v7 + 8))(v13, v4);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v19 = v11;
  v27 = 0;
  sub_22880640C();
  v12 = v20;
  sub_22887FAE0();
  (*(v7 + 8))(v12, v4);
  sub_2288063B8(v10, v9);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  *v8 = v23;
  v8[1] = v14;
  v8[2] = v15;
  v8[3] = v16;
  v17 = v19;
  v8[4] = v19;

  v18 = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_228806364()
{
  result = qword_2813D16B0;
  if (!qword_2813D16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D16B0);
  }

  return result;
}

uint64_t sub_2288063B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22880640C()
{
  result = qword_2813D0500;
  if (!qword_2813D0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0500);
  }

  return result;
}

uint64_t SecureCodingValueAnchor.encode(to:)(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  type metadata accessor for SecureCodingValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_22887FB70();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - v4;
  v6 = *(v1 + 8);
  v20 = *v1;
  v21 = v6;
  v7 = *(v1 + 24);
  v19 = *(v1 + 16);
  v22 = v7;
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCF0();
  v9 = objc_opt_self();
  v26 = 0;
  v10 = [v9 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v26];
  v11 = v26;
  if (v10)
  {
    v12 = sub_22887F090();
    v14 = v13;

    v26 = v12;
    v27 = v14;
    v25 = 1;
    sub_228806744();
    v15 = v23;
    v16 = v24;
    sub_22887FB50();
    if (v15)
    {
      (*(v3 + 8))(v5, v16);
      return sub_2288063B8(v12, v14);
    }

    else
    {
      v26 = v20;
      v27 = v21;
      v28 = v19;
      v29 = v22;
      v25 = 0;
      sub_228806798();

      sub_22887FB50();
      sub_2288063B8(v12, v14);

      return (*(v3 + 8))(v5, v16);
    }
  }

  else
  {
    v18 = v11;
    sub_22887F020();

    swift_willThrow();
    return (*(v3 + 8))(v5, v24);
  }
}

unint64_t sub_228806744()
{
  result = qword_2813D16C0;
  if (!qword_2813D16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D16C0);
  }

  return result;
}

unint64_t sub_228806798()
{
  result = qword_2813D0520;
  if (!qword_2813D0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0520);
  }

  return result;
}

unint64_t sub_228806834()
{
  result = qword_27D851A20;
  if (!qword_27D851A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A20);
  }

  return result;
}

uint64_t sub_228806888(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_228806908()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ExecutorIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutorIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ScopedExecutorIdentifier.provider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ScopedExecutorIdentifier.provider.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ScopedExecutorIdentifier.executor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 ScopedExecutorIdentifier.executor.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

void __swiftcall ScopedExecutorIdentifier.init(provider:executor:)(HealthOrchestration::ScopedExecutorIdentifier *__return_ptr retstr, Swift::String provider, HealthOrchestration::ExecutorIdentifier executor)
{
  v3 = *executor.value._countAndFlagsBits;
  v4 = *(executor.value._countAndFlagsBits + 8);
  retstr->provider = provider;
  retstr->executor.value._countAndFlagsBits = v3;
  retstr->executor.value._object = v4;
  retstr->executor.logDescription = *(executor.value._countAndFlagsBits + 16);
}

uint64_t static ExecutorIdentifier.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t static ExecutorIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t ScopedExecutorIdentifier.hash(into:)()
{
  sub_22887F3E0();

  return sub_22887F3E0();
}

uint64_t ScopedExecutorIdentifier.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  sub_22887F3E0();
  return sub_22887FCD0();
}

BOOL sub_228806D8C(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v13 = *(a1 + 2);
  v14 = v3;
  v15 = a1[2];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = a2[2];
  v12 = v2;
  return (_s19HealthOrchestration24ScopedExecutorIdentifierV1loiySbAC_ACtFZ_0(&v8, &v12) & 1) == 0;
}

BOOL sub_228806DE8(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v13 = *(a1 + 2);
  v14 = v3;
  v15 = a1[2];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = a2[2];
  v12 = v2;
  return (_s19HealthOrchestration24ScopedExecutorIdentifierV1loiySbAC_ACtFZ_0(&v12, &v8) & 1) == 0;
}

uint64_t sub_228806E44(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v13 = *(a1 + 2);
  v14 = v3;
  v15 = a1[2];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = a2[2];
  v12 = v2;
  return _s19HealthOrchestration24ScopedExecutorIdentifierV1loiySbAC_ACtFZ_0(&v8, &v12) & 1;
}

uint64_t sub_228806EA0()
{
  sub_22887FC90();
  sub_22887F3E0();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t sub_228806F08()
{
  sub_22887F3E0();

  return sub_22887F3E0();
}

uint64_t sub_228806F58()
{
  sub_22887FC90();
  sub_22887F3E0();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t ExecutorIdentifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExecutorIdentifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExecutorIdentifier.logDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExecutorIdentifier.logDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

HealthOrchestration::ExecutorIdentifier __swiftcall ExecutorIdentifier.init(_:logDescription:)(Swift::String _, Swift::String_optional logDescription)
{
  v2->value = _;
  v2[1] = logDescription;
  result.logDescription = logDescription;
  result.value = _;
  return result;
}

uint64_t sub_2288070D8()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t sub_228807120()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t sub_228807164()
{
  if (*v0)
  {
    return 0x7263736544676F6CLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_2288071A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7263736544676F6CLL && a2 == 0xEE006E6F69747069)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_228807288(uint64_t a1)
{
  v2 = sub_228807B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2288072C4(uint64_t a1)
{
  v2 = sub_228807B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutorIdentifier.encode(to:)(void *a1)
{
  sub_228807B78(0, &qword_27D851A28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228807B24();
  sub_22887FCF0();
  v13 = 0;
  v9 = v11[3];
  sub_22887FB20();
  if (!v9)
  {
    v12 = 1;
    sub_22887FB00();
  }

  return (*(v5 + 8))(v7, v4);
}