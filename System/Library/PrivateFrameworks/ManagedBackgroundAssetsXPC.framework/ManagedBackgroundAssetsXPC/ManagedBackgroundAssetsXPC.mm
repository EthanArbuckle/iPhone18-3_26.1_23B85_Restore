uint64_t RemoteCallTarget.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDC0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_29EBAFCE0();
    sub_29EBAF730();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t RemoteCallTarget.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDE0();
  sub_29EBAF710();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_29EBAFCF0();

  return __swift_destroy_boxed_opaque_existential_1(v3);
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

uint64_t sub_29EB90478(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDC0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_29EBAFCE0();
    sub_29EBAF730();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EB9052C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDE0();
  sub_29EBAF710();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_29EBAFCF0();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EB905F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EB90610(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_29EB90664(uint64_t a1, unint64_t *a2)
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

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v36 = *(a2 + 24);
  v35 = *(v36 - 8);
  v6 = *(v35 + 64);
  v7 = (MEMORY[0x2A1C7C4A8])();
  v31 = *(v9 + 16);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7);
  v29 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885100, "z-");
  v19 = *(v18 - 8);
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v29 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB90A54();
  sub_29EBAFDF0();
  (*(v14 + 16))(v17, v37, a2);
  v24 = (v19 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v35;
    v25 = v36;
    v27 = v32;
    (*(v35 + 32))(v32, v17, v36);
    v39 = 1;
  }

  else
  {
    v27 = v29;
    v26 = v30;
    v25 = v31;
    (*(v30 + 32))(v29, v17, v31);
    v38 = 0;
  }

  sub_29EBAFC80();
  (*(v26 + 8))(v27, v25);
  return (*v24)(v22, v18);
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

unint64_t sub_29EB90A54()
{
  result = qword_2A1885108;
  if (!qword_2A1885108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885108);
  }

  return result;
}

uint64_t Result<>.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v81 = a4;
  v68 = a6;
  v72 = *(a3 - 8);
  v9 = *(v72 + 64);
  v10 = MEMORY[0x2A1C7C4A8](a1);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v12 - 8);
  v13 = v79[8];
  MEMORY[0x2A1C7C4A8](v10);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EBAFA80();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v78 = &v64 - v19;
  v20 = sub_29EBAFA80();
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v70 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v83 = &v64 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885110, &unk_29EBB0528);
  v82 = *(v25 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v64 - v27;
  v75 = a3;
  v29 = sub_29EBAFDB0();
  v67 = *(v29 - 8);
  v30 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v64 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB90A54();
  v34 = v84;
  sub_29EBAFDD0();
  if (!v34)
  {
    v65 = v32;
    v84 = v29;
    v35 = v79;
    v86 = 0;
    v36 = v83;
    sub_29EBAFBE0();
    v85 = 1;
    sub_29EBAFBE0();
    v80 = v28;
    v81 = v25;
    v39 = v76;
    v38 = v77;
    v40 = v70;
    (*(v76 + 16))(v70, v36, v77);
    v41 = v35;
    v42 = v35[6];
    v43 = v42(v40, 1, a2);
    if (v43 == 1)
    {
      v64 = v42;
      v71 = a2;
      v45 = *(v39 + 8);
      v44 = v39 + 8;
      v79 = v45;
      (v45)(v40, v38);
      v47 = v73;
      v46 = v74;
      v48 = v69;
      (*(v73 + 16))(v69, v78, v74);
      v49 = v72;
      v50 = v75;
      if ((*(v72 + 48))(v48, 1) == 1)
      {
        v51 = *(v47 + 8);
        v51(v48, v46);
        sub_29EB9137C();
        swift_allocError();
        *v52 = 1;
        swift_willThrow();
        (*(v82 + 8))(v80, v81);
        v51(v78, v46);
        (v79)(v83, v77);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v76 = v44;
      v56 = v66;
      v57 = v50;
      v70 = *(v49 + 32);
      (v70)(v66, v48, v50);
      v58 = v83;
      v59 = v64(v83, 1, v71);
      v60 = v82;
      if (v59 != 1)
      {
        sub_29EB9137C();
        swift_allocError();
        *v63 = 0;
        swift_willThrow();
        (*(v49 + 8))(v56, v57);
        (*(v60 + 8))(v80, v81);
        (*(v73 + 8))(v78, v74);
        (v79)(v58, v77);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v82 + 8))(v80, v81);
      (*(v73 + 8))(v78, v74);
      (v79)(v58, v77);
      v55 = v65;
      (v70)(v65, v56, v57);
    }

    else
    {
      v53 = v41[4];
      v53(v71, v40, a2);
      v54 = v78;
      if ((*(v72 + 48))(v78, 1, v75) != 1)
      {
        sub_29EB9137C();
        swift_allocError();
        *v62 = 0;
        swift_willThrow();
        (v41[1])(v71, a2);
        (*(v82 + 8))(v80, v81);
        (*(v73 + 8))(v54, v74);
        (*(v76 + 8))(v83, v77);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v82 + 8))(v80, v81);
      (*(v73 + 8))(v54, v74);
      (*(v76 + 8))(v83, v77);
      v55 = v65;
      v53(v65, v71, a2);
    }

    v61 = v84;
    swift_storeEnumTagMultiPayload();
    (*(v67 + 32))(v68, v55, v61);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EB9137C()
{
  result = qword_2A1885118;
  if (!qword_2A1885118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncAddressedEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncAddressedEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29EB915D0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_29EB91604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EB916F8(uint64_t a1)
{
  v2 = sub_29EB90A54();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB91734(uint64_t a1)
{
  v2 = sub_29EB90A54();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29EB91774()
{
  result = qword_2A1885120;
  if (!qword_2A1885120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885120);
  }

  return result;
}

uint64_t sub_29EB917CC()
{
  v1 = *v0;
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](v1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB91814()
{
  v1 = *v0;
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](v1);
  return sub_29EBAFDA0();
}

unint64_t sub_29EB91858()
{
  if (*v0)
  {
    result = 0xD000000000000031;
  }

  else
  {
    result = 0xD00000000000002CLL;
  }

  *v0;
  return result;
}

unint64_t sub_29EB918A4()
{
  result = qword_2A1885128;
  if (!qword_2A1885128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885128);
  }

  return result;
}

unint64_t sub_29EB9190C()
{
  result = qword_2A1885130;
  if (!qword_2A1885130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885130);
  }

  return result;
}

unint64_t sub_29EB91964()
{
  result = qword_2A1885138;
  if (!qword_2A1885138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885138);
  }

  return result;
}

uint64_t static XPCActorID.Role.Location.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v45 = *(a3 - 8);
  v4 = *(v45 + 64);
  v5 = MEMORY[0x2A1C7C4A8](a1);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v38 - v7;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v49 = v11;
  v42 = v11;
  v12 = type metadata accessor for XPCActorID.Role.Location();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v38 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v25 = &v38 - v24;
  v26 = *(v23 + 48);
  v41 = v13;
  v27 = *(v13 + 16);
  v27(&v38 - v24, v43, v12);
  v27(&v25[v26], v44, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27(v19, v25, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v45;
      v35 = v39;
      (*(v45 + 32))(v39, &v25[v26], a3);
      v36 = *(v42 + 8);
      v31 = sub_29EBAF920();
      v32 = *(v34 + 8);
      v32(v35, a3);
      v33 = v19;
      goto LABEL_6;
    }

LABEL_8:
    (*(v45 + 8))(v19, a3);
    v31 = 0;
    v12 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v27(v17, v25, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = v17;
    goto LABEL_8;
  }

  v28 = v45;
  v29 = v40;
  (*(v45 + 32))(v40, &v25[v26], a3);
  v30 = *(v42 + 8);
  v31 = sub_29EBAF920();
  v32 = *(v28 + 8);
  v32(v29, a3);
  v33 = v17;
LABEL_6:
  v32(v33, a3);
  v21 = v41;
LABEL_9:
  (*(v21 + 8))(v25, v12);
  return v31 & 1;
}

uint64_t sub_29EB91DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_29EBAFCD0();

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

uint64_t sub_29EB91EC0(char a1)
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](a1 & 1);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB91F08(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_29EB91F38(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_29EBAFCD0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_29EB91FA8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_29EB91E88(*a1, *a2);
}

uint64_t sub_29EB91FC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_29EB91EC0(*v1);
}

uint64_t sub_29EB91FD4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_29EB91E98(a1, *v2);
}

uint64_t sub_29EB91FE8(uint64_t a1, void *a2)
{
  sub_29EBAFD80();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_29EB91E98(v9, *v2);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB92034(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_29EB91F08(*v1);
}

uint64_t sub_29EB92048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_29EB91DC4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_29EB9207C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_29EB980EC();
  *a2 = result;
  return result;
}

uint64_t sub_29EB920B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB92104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB921B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB92260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_29EB91F38(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_29EB92298@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_29EB922D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9232C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t XPCActorID.Role.Location.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v65 = a2[2];
  v5 = v65;
  v66 = v4;
  v67 = v7;
  v68 = v6;
  v56 = type metadata accessor for XPCActorID.Role.Location.RemoteCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_29EBAFC90();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v55 = &v46 - v10;
  v66 = v4;
  v67 = v7;
  v68 = v6;
  v11 = type metadata accessor for XPCActorID.Role.Location.LocalCodingKeys();
  v12 = swift_getWitnessTable();
  v51 = v11;
  v49 = v12;
  v13 = sub_29EBAFC90();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v50 = &v46 - v16;
  v59 = *(v5 - 8);
  v17 = *(v59 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v48 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v47 = &v46 - v21;
  v22 = *(a2 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v65 = v5;
  v66 = v4;
  v64 = v7;
  v67 = v7;
  v68 = v6;
  type metadata accessor for XPCActorID.Role.Location.CodingKeys();
  swift_getWitnessTable();
  v26 = sub_29EBAFC90();
  v27 = *(v26 - 8);
  v60 = v26;
  v61 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v46 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v59;
  sub_29EBAFDF0();
  (*(v22 + 16))(v25, v63, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *(v32 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v35 = v48;
    v36 = v25;
    v37 = v62;
    v34(v48, v36, v62);
    LOBYTE(v65) = 1;
    v38 = v55;
    v39 = v60;
    sub_29EBAFC40();
    v40 = v58;
    sub_29EBAFC80();
    (*(v57 + 8))(v38, v40);
    v41 = v35;
  }

  else
  {
    v41 = v47;
    v42 = v25;
    v37 = v62;
    v34(v47, v42, v62);
    LOBYTE(v65) = 0;
    v43 = v50;
    v39 = v60;
    sub_29EBAFC40();
    v44 = v53;
    sub_29EBAFC80();
    (*(v52 + 8))(v43, v44);
  }

  (*(v32 + 8))(v41, v37);
  return (*(v61 + 8))(v30, v39);
}

uint64_t XPCActorID.Role.Location.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  v15 = swift_getEnumCaseMultiPayload() == 1;
  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x29EDAAA50](v15);
  v16 = *(a2 + 40);
  sub_29EBAF910();
  return (*(v4 + 8))(v8, v3);
}

uint64_t XPCActorID.Role.Location.hashValue.getter(uint64_t a1)
{
  sub_29EBAFD80();
  XPCActorID.Role.Location.hash(into:)(v3, a1);
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.Role.Location.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v80 = a1;
  v68 = a6;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v10 = type metadata accessor for XPCActorID.Role.Location.RemoteCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v65 = v10;
  v60 = sub_29EBAFC30();
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v66 = &v54 - v12;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v13 = type metadata accessor for XPCActorID.Role.Location.LocalCodingKeys();
  v14 = swift_getWitnessTable();
  v62 = v13;
  v61 = v14;
  v58 = sub_29EBAFC30();
  v57 = *(v58 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v58);
  v63 = &v54 - v16;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  type metadata accessor for XPCActorID.Role.Location.CodingKeys();
  v74 = swift_getWitnessTable();
  v72 = sub_29EBAFC30();
  v70 = *(v72 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v72);
  v19 = &v54 - v18;
  v69 = a2;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v73 = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v20 = type metadata accessor for XPCActorID.Role.Location();
  v67 = *(v20 - 8);
  v21 = *(v67 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v27 = &v54 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v54 - v28;
  v30 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v71 = v19;
  v31 = v75;
  sub_29EBAFDD0();
  if (!v31)
  {
    v56 = v24;
    v74 = v27;
    v55 = v29;
    v75 = v20;
    v32 = v72;
    v33 = v70;
    v34 = v71;
    *&v76 = sub_29EBAFC20();
    sub_29EBAF9C0();
    swift_getWitnessTable();
    *&v78 = sub_29EBAFAA0();
    *(&v78 + 1) = v35;
    *&v79 = v36;
    *(&v79 + 1) = v37;
    sub_29EBAFA90();
    swift_getWitnessTable();
    sub_29EBAFA20();
    v38 = v76;
    if (v76 == 2 || (v54 = v78, v76 = v78, v77 = v79, (sub_29EBAFA30() & 1) == 0))
    {
      v43 = sub_29EBAFB30();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885150, &qword_29EBB0800) + 48);
      *v45 = v75;
      sub_29EBAFBC0();
      sub_29EBAFB20();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x29EDC9DB8], v43);
      swift_willThrow();
      (*(v33 + 8))(v34, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        LOBYTE(v76) = 1;
        v39 = v66;
        sub_29EBAFBB0();
        v40 = v68;
        v41 = v56;
        v42 = v60;
        sub_29EBAFC10();
        (*(v59 + 8))(v39, v42);
        (*(v33 + 8))(v34, v32);
        swift_unknownObjectRelease();
        v50 = v75;
        swift_storeEnumTagMultiPayload();
        v51 = v67;
      }

      else
      {
        LOBYTE(v76) = 0;
        v47 = v63;
        sub_29EBAFBB0();
        v51 = v67;
        v41 = v74;
        v48 = v58;
        sub_29EBAFC10();
        (*(v57 + 8))(v47, v48);
        (*(v33 + 8))(v34, v32);
        swift_unknownObjectRelease();
        v50 = v75;
        swift_storeEnumTagMultiPayload();
        v40 = v68;
      }

      v52 = *(v51 + 32);
      v53 = v55;
      v52(v55, v41, v50);
      v52(v40, v53, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_29EB9330C(uint64_t a1, uint64_t a2)
{
  sub_29EBAFD80();
  XPCActorID.Role.Location.hash(into:)(v4, a2);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB93350(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static XPCActorID.Role.Location.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t sub_29EB9338C(uint64_t a1)
{
  v2 = sub_29EB96E6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB933C8(uint64_t a1)
{
  v2 = sub_29EB96E6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB93404()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_29EB93430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EB93504(uint64_t a1)
{
  v2 = sub_29EB96D7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB93540(uint64_t a1)
{
  v2 = sub_29EB96D7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB9357C()
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](0);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB935C0()
{
  sub_29EBAFD80();
  MEMORY[0x29EDAAA50](0);
  return sub_29EBAFDA0();
}

uint64_t sub_29EB93600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EB93688(uint64_t a1)
{
  v2 = sub_29EB96DD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB936C4(uint64_t a1)
{
  v2 = sub_29EB96DD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t XPCActorID.Role.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885158, &qword_29EBB0808);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885160, &qword_29EBB0810);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885168, &qword_29EBB0818);
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v22 - v12;
  v14 = *v1;
  v26 = v1[1];
  v15 = *(v1 + 8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96D7C();
  sub_29EBAFDF0();
  if (v15 < 0)
  {
    LOBYTE(v29) = 1;
    sub_29EB96DD0();
    v19 = v22;
    v20 = v28;
    sub_29EBAFC40();
    v29 = v14;
    v30 = v26;
    v31 = v15 & 0x1FF;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885180, &qword_29EBB0820);
    sub_29EB96EC8(&qword_2A1885188, &qword_2A1885180, &qword_29EBB0820);
    v21 = v24;
    sub_29EBAFC80();
    (*(v23 + 8))(v19, v21);
    return (*(v27 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_29EB96E6C();
    v17 = v28;
    sub_29EBAFC40();
    v29 = v14;
    v30 = v26;
    LOBYTE(v31) = v15 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885198, &qword_29EBB0828);
    sub_29EB96EC8(&qword_2A18851A0, &qword_2A1885198, &qword_29EBB0828);
    sub_29EBAFC80();
    (*(v25 + 8))(v9, v6);
    return (*(v27 + 8))(v13, v17);
  }
}

uint64_t XPCActorID.Role.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  if ((v3 & 0x80000000) == 0)
  {
    MEMORY[0x29EDAAA50](0);
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_5:
    MEMORY[0x29EDAAA50](0);
    goto LABEL_8;
  }

  MEMORY[0x29EDAAA50](1);
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  MEMORY[0x29EDAAA50](1);
LABEL_8:
  sub_29EB96EC0();
  sub_29EBAF970();
}

uint64_t XPCActorID.Role.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.Role.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851A8, &qword_29EBB0830);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851B0, &qword_29EBB0838);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851B8, &qword_29EBB0840);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_29EB96D7C();
  v18 = v37;
  sub_29EBAFDD0();
  if (!v18)
  {
    v37 = v7;
    v19 = v36;
    v20 = sub_29EBAFC20();
    if (*(v20 + 16) == 1)
    {
      if (*(v20 + 32))
      {
        LOBYTE(v38) = 1;
        sub_29EB96DD0();
        sub_29EBAFBB0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885180, &qword_29EBB0820);
        sub_29EB96EC8(&qword_2A18851C0, &qword_2A1885180, &qword_29EBB0820);
        sub_29EBAFC10();
        (*(v35 + 8))(v6, v19);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v21 = v38;
        if (v40)
        {
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22 | v39 | 0x8000;
      }

      else
      {
        LOBYTE(v38) = 0;
        sub_29EB96E6C();
        v28 = v10;
        sub_29EBAFBB0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885198, &qword_29EBB0828);
        sub_29EB96EC8(&qword_2A18851C8, &qword_2A1885198, &qword_29EBB0828);
        v30 = v37;
        sub_29EBAFC10();
        (*(v34 + 8))(v28, v30);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v21 = v38;
        v23 = v39;
      }

      v31 = v33;
      *v33 = v21;
      *(v31 + 8) = v23;
    }

    else
    {
      v24 = sub_29EBAFB30();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885150, &qword_29EBB0800) + 48);
      *v26 = &type metadata for XPCActorID.Role;
      sub_29EBAFBC0();
      sub_29EBAFB20();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x29EDC9DB8], v24);
      swift_willThrow();
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_29EB941AC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB94204()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_29EBAFD80();
  XPCActorID.Role.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.description.getter()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD000000000000016, 0x800000029EBB4C40);
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](0x20657571696E7520, 0xEC000000203A4449);
  v1 = *(type metadata accessor for XPCActorID() + 20);
  sub_29EBAF6E0();
  sub_29EB98158(&qword_2A18851D0, MEMORY[0x29EDB9C08]);
  v2 = sub_29EBAFCA0();
  MEMORY[0x29EDAA640](v2);

  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EB943BC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_29EBAF6E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v32 - v12;
  v38 = a1;
  v14 = *a1;
  sub_29EBAF6D0();
  v39 = v5;
  v15 = *(v5 + 32);
  v43 = a2;
  v34 = v5 + 32;
  v35 = v13;
  v33 = v15;
  v15(a2, v13, v4);
  v42 = v14;
  if (v14[2])
  {
    v36 = sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08]);
    v40 = v39 + 16;
    v41 = v42 + 7;
    v16 = (v39 + 8);
    do
    {
      v17 = v42;
      v18 = v42[5];
      v19 = sub_29EBAF900();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if (((*(v41 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(v39 + 72);
      v24 = *(v39 + 16);
      while (1)
      {
        v24(v11, v42[6] + v23 * v21, v4);
        sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08]);
        v25 = sub_29EBAF920();
        v26 = *v16;
        (*v16)(v11, v4);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v41 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v27 = v35;
      sub_29EBAF6D0();
      v28 = v43;
      v26(v43, v4);
      v33(v28, v27, v4);
    }

    while (v42[2]);
  }

LABEL_9:
  v29 = v39;
  v30 = v37;
  (*(v39 + 16))(v37, v43, v4);
  sub_29EB95E8C(v11, v30);
  return (*(v29 + 8))(v11, v4);
}

uint64_t XPCActorID.init(remoteClientID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  sub_29EB943BC(&qword_2A1885148, v10);
  os_unfair_lock_unlock(&dword_2A1885140);
  v11 = type metadata accessor for XPCActorID();
  return (*(v7 + 32))(a3 + *(v11 + 20), v10, v6);
}

uint64_t XPCActorID.init(remoteServerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29EBAF6E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16) | 0x8100;
  *a2 = *a1;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  sub_29EB943BC(&qword_2A1885148, v8);
  os_unfair_lock_unlock(&dword_2A1885140);
  v11 = type metadata accessor for XPCActorID();
  return (*(v5 + 32))(a2 + *(v11 + 20), v8, v4);
}

uint64_t sub_29EB94994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v23[-v9];
  v11 = type metadata accessor for XPCActorID();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v23[-v16];
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  if (v20 < 0)
  {
    if ((v20 & 0x100) != 0)
    {
      *v15 = v18;
      *(v15 + 1) = v19;
      *(v15 + 8) = v20 & 0x8001;
      sub_29EB96EC0();
      if (qword_2A18850B0 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_2A1885140);
      sub_29EB943BC(&qword_2A1885148, v8);
      os_unfair_lock_unlock(&dword_2A1885140);
      (*(v4 + 32))(&v15[*(v11 + 20)], v8, v3);
      v21 = v15;
      return sub_29EB980F4(v21, a1);
    }
  }

  else if (v20)
  {
    *v17 = v18;
    *(v17 + 1) = v19;
    *(v17 + 8) = 0;
    sub_29EB96EC0();
    if (qword_2A18850B0 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v10);
    os_unfair_lock_unlock(&dword_2A1885140);
    (*(v4 + 32))(&v17[*(v11 + 20)], v10, v3);
    v21 = v17;
    return sub_29EB980F4(v21, a1);
  }

  return sub_29EB9707C(v1, a1);
}

uint64_t XPCActorID.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  if ((v3 & 0x80000000) == 0)
  {
    MEMORY[0x29EDAAA50](0);
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_5:
    MEMORY[0x29EDAAA50](0);
    goto LABEL_8;
  }

  MEMORY[0x29EDAAA50](1);
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  MEMORY[0x29EDAAA50](1);
LABEL_8:
  sub_29EB96EC0();
  sub_29EBAF970();
}

uint64_t static XPCActorID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  sub_29EB96F5C(v11, v2, v3, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v8, v4, v5, sub_29EB96EC0, sub_29EB96EC0);
  v6 = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_29EB96F5C(v8, v9, v10, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
  return v6 & 1;
}

uint64_t sub_29EB94E5C()
{
  if (*v0)
  {
    result = 0x4449657571696E75;
  }

  else
  {
    result = 1701605234;
  }

  *v0;
  return result;
}

uint64_t sub_29EB94E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v5 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EB94F6C(uint64_t a1)
{
  v2 = sub_29EB96F80();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB94FA8(uint64_t a1)
{
  v2 = sub_29EB96F80();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t XPCActorID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851D8, &qword_29EBB0848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96F80();
  sub_29EBAFDF0();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v15[7] = 0;
  sub_29EB96F5C(v16, v11, v12, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96FD4();
  sub_29EBAFC80();
  sub_29EB96F5C(v16, v17, v18, sub_29EB96F78, sub_29EB96F78);
  if (!v2)
  {
    v13 = *(type metadata accessor for XPCActorID() + 20);
    LOBYTE(v16) = 1;
    sub_29EBAF6E0();
    sub_29EB98158(&qword_2A18851F0, MEMORY[0x29EDB9C08]);
    sub_29EBAFC80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t XPCActorID.hashValue.getter()
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t XPCActorID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_29EBAF6E0();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18851F8, &qword_29EBB0850);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for XPCActorID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB96F80();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v15 = v13;
  v17 = v24;
  v16 = v25;
  v29 = 0;
  sub_29EB97028();
  v18 = v26;
  sub_29EBAFC10();
  v19 = v28;
  *v15 = v27;
  *(v15 + 16) = v19;
  LOBYTE(v27) = 1;
  sub_29EB98158(&qword_2A1885208, MEMORY[0x29EDB9C08]);
  sub_29EBAFC10();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(v15 + *(v21 + 20), v6, v16);
  sub_29EB9707C(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_29EB970E0(v15);
}

uint64_t sub_29EB955E8()
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB9562C()
{
  sub_29EBAFD80();
  XPCActorID.hash(into:)();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  sub_29EB96F5C(v11, v2, v3, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v8, v4, v5, sub_29EB96EC0, sub_29EB96EC0);
  v6 = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_29EB96F5C(v8, v9, v10, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v11, v12, v13, sub_29EB96F78, sub_29EB96F78);
  return v6 & 1;
}

uint64_t ServerID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ManagedBackgroundAssetsXPC::ServerID __swiftcall ServerID.init(serviceName:machService:)(ManagedBackgroundAssetsXPC::ServerID serviceName, Swift::Bool machService)
{
  *v2 = serviceName.serviceName;
  *(v2 + 16) = machService;
  serviceName.isMachService = machService;
  return serviceName;
}

uint64_t ServerID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29EBAF970();
}

uint64_t static ServerID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EBAFCD0();
  }
}

uint64_t sub_29EB957F0()
{
  if (*v0)
  {
    result = 0x65536863614D7369;
  }

  else
  {
    result = 0x4E65636976726573;
  }

  *v0;
  return result;
}

uint64_t sub_29EB95840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536863614D7369 && a2 == 0xED00006563697672)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EB95928(uint64_t a1)
{
  v2 = sub_29EB9713C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB95964(uint64_t a1)
{
  v2 = sub_29EB9713C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t ServerID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885210, &qword_29EBB0858);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB9713C();
  sub_29EBAFDF0();
  v16 = 0;
  v11 = v13[1];
  sub_29EBAFC60();
  if (!v11)
  {
    v15 = 1;
    sub_29EBAFC70();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t ServerID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885220, &qword_29EBB0860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB9713C();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_29EBAFBF0();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_29EBAFC00();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EB95D90()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_29EB95DC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95E0C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29EBAF970();
}

uint64_t sub_29EB95E14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB95E5C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EBAFCD0();
  }
}

uint64_t sub_29EB95E8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08]);
  v36 = a2;
  v13 = sub_29EBAF900();
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
      sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08]);
      v23 = sub_29EBAF920();
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
    sub_29EB964C8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_29EB9616C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_29EBAF6E0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  result = sub_29EBAFAD0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08]);
      result = sub_29EBAF900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_29EB964C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
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
    sub_29EB9616C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29EBA1A00();
      goto LABEL_12;
    }

    sub_29EB9676C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08]);
  v15 = sub_29EBAF900();
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
      sub_29EB98158(&qword_2A18854D0, MEMORY[0x29EDB9C08]);
      v23 = sub_29EBAF920();
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
  result = sub_29EBAFD10();
  __break(1u);
  return result;
}

uint64_t sub_29EB9676C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29EBAF6E0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  v10 = sub_29EBAFAD0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_29EB98158(&qword_2A18854C8, MEMORY[0x29EDB9C08]);
      result = sub_29EBAF900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) != 0)
    {
      sub_29EB96F5C(*a2, *(a2 + 8), v7, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
      v8 = sub_29EB9A1E4(v3, v2, v4 & 0x1FF, v6, v5, v7 & 0x1FF);
      goto LABEL_7;
    }

LABEL_5:
    sub_29EB96F5C(*a1, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
    return 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  sub_29EB96F5C(*a2, *(a2 + 8), v7, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96EC0, sub_29EB96EC0);
  v8 = sub_29EB99F84(v3, v2, v4 & 1, v6, v5, v7 & 1);
LABEL_7:
  v10 = v8;
  sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v6, v5, v7, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v3, v2, v4, sub_29EB96F78, sub_29EB96F78);
  return v10 & 1;
}

unint64_t sub_29EB96D7C()
{
  result = qword_2A1885170;
  if (!qword_2A1885170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885170);
  }

  return result;
}

unint64_t sub_29EB96DD0()
{
  result = qword_2A1885178;
  if (!qword_2A1885178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885178);
  }

  return result;
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

unint64_t sub_29EB96E6C()
{
  result = qword_2A1885190;
  if (!qword_2A1885190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885190);
  }

  return result;
}

uint64_t sub_29EB96EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for XPCActorID()
{
  result = qword_2A1885240;
  if (!qword_2A1885240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EB96F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if ((a3 & 0x8000) != 0)
  {
    return a5(a1, a2, a3, (a3 >> 8) & 1);
  }

  else
  {
    return a4(a1, a2, a3 & 1);
  }
}

unint64_t sub_29EB96F80()
{
  result = qword_2A18851E0;
  if (!qword_2A18851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18851E0);
  }

  return result;
}

unint64_t sub_29EB96FD4()
{
  result = qword_2A18851E8;
  if (!qword_2A18851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18851E8);
  }

  return result;
}

unint64_t sub_29EB97028()
{
  result = qword_2A1885200;
  if (!qword_2A1885200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885200);
  }

  return result;
}

uint64_t sub_29EB9707C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB970E0(uint64_t a1)
{
  v2 = type metadata accessor for XPCActorID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EB9713C()
{
  result = qword_2A1885218;
  if (!qword_2A1885218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885218);
  }

  return result;
}

unint64_t sub_29EB971B0()
{
  result = qword_2A1885228;
  if (!qword_2A1885228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885228);
  }

  return result;
}

unint64_t sub_29EB97250()
{
  result = qword_2A1885238;
  if (!qword_2A1885238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885238);
  }

  return result;
}

uint64_t sub_29EB972B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 126)
  {
    v4 = *(a1 + 16);
    if (((v4 >> 8) & 0x7E) != 0)
    {
      return 128 - ((v4 >> 8) & 0x7E | (v4 >> 15));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_29EBAF6E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EB97380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 126)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 1) & 0x3F) - (a2 << 6)) << 9;
  }

  else
  {
    v7 = sub_29EBAF6E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EB97430()
{
  result = sub_29EBAF6E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EB974E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 18))
  {
    return (*a1 + 127);
  }

  v3 = (HIBYTE(*(a1 + 16)) & 0x7E | (*(a1 + 16) >> 15)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29EB97538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 1) & 0x3F) - (a2 << 6)) << 9;
    }
  }

  return result;
}

uint64_t sub_29EB975C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB9762C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_29EB97738(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EB978F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29EB97940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCInvocationError.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCInvocationError.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29EB97B20()
{
  result = qword_2A1885450;
  if (!qword_2A1885450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885450);
  }

  return result;
}

unint64_t sub_29EB97B78()
{
  result = qword_2A1885458;
  if (!qword_2A1885458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885458);
  }

  return result;
}

unint64_t sub_29EB97BD0()
{
  result = qword_2A1885460;
  if (!qword_2A1885460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885460);
  }

  return result;
}

unint64_t sub_29EB97C28()
{
  result = qword_2A1885468;
  if (!qword_2A1885468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885468);
  }

  return result;
}

unint64_t sub_29EB97C80()
{
  result = qword_2A1885470;
  if (!qword_2A1885470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885470);
  }

  return result;
}

unint64_t sub_29EB97CD8()
{
  result = qword_2A1885478;
  if (!qword_2A1885478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885478);
  }

  return result;
}

unint64_t sub_29EB97D30()
{
  result = qword_2A1885480;
  if (!qword_2A1885480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885480);
  }

  return result;
}

unint64_t sub_29EB97D88()
{
  result = qword_2A1885488;
  if (!qword_2A1885488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885488);
  }

  return result;
}

unint64_t sub_29EB97DE0()
{
  result = qword_2A1885490;
  if (!qword_2A1885490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885490);
  }

  return result;
}

unint64_t sub_29EB97E38()
{
  result = qword_2A1885498;
  if (!qword_2A1885498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885498);
  }

  return result;
}

unint64_t sub_29EB97E90()
{
  result = qword_2A18854A0;
  if (!qword_2A18854A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854A0);
  }

  return result;
}

unint64_t sub_29EB97EE8()
{
  result = qword_2A18854A8;
  if (!qword_2A18854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854A8);
  }

  return result;
}

unint64_t sub_29EB97F40()
{
  result = qword_2A18854B0;
  if (!qword_2A18854B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854B0);
  }

  return result;
}

unint64_t sub_29EB97F98()
{
  result = qword_2A18854B8;
  if (!qword_2A18854B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854B8);
  }

  return result;
}

unint64_t sub_29EB97FF0()
{
  result = qword_2A18854C0;
  if (!qword_2A18854C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854C0);
  }

  return result;
}

uint64_t sub_29EB980F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB98158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t XPCInvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1)
{
  v3 = dynamic_cast_existential_2_conditional(a1);
  if (v3)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29EB9886C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_29EB9886C((v11 > 1), v12 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v12 + 1;
    v13 = (v9 + 24 * v12);
    v13[4] = v6;
    v13[5] = v7;
    v13[6] = v8;
    *v1 = v9;
  }

  else
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EB98378();
    swift_allocError();
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29EB98378()
{
  result = qword_2A18854E0;
  if (!qword_2A18854E0)
  {
    type metadata accessor for XPCActorSystemError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18854E0);
  }

  return result;
}

uint64_t XPCInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EBAF750();
  sub_29EBAF740();
  v10 = sub_29EBA4524(v9, a2, v5);
  v12 = v11;
  result = (*(v6 + 8))(v9, a2);
  if (!v3)
  {
    v14 = *(v2 + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29EB98988(0, *(v14 + 16) + 1, 1, v14);
      v14 = result;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_29EB98988((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
    }

    *(v14 + 16) = v16 + 1;
    v17 = v14 + 16 * v16;
    *(v17 + 32) = v10;
    *(v17 + 40) = v12;
    *(v2 + 8) = v14;
  }

  return result;
}

uint64_t XPCInvocationEncoder.recordReturnType<A>(_:)(uint64_t a1)
{
  v3 = swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v1[2] = a1;
  v1[3] = v3;
  v1[4] = result;
  return result;
}

uint64_t XPCInvocationEncoder.recordErrorType<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCInvocationEncoder.doneRecording()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x29EDCA190];
  if (v3)
  {
    v19 = MEMORY[0x29EDCA190];
    sub_29EB98C84(0, v3, 0);
    v5 = 0;
    v4 = v19;
    v6 = (v2 + 32);
    while (v5 < *(v2 + 16))
    {
      v7 = *v6;
      v8 = sub_29EBAFB60();
      if (!v9)
      {
        type metadata accessor for XPCActorSystemError();
        sub_29EB98378();
        swift_allocError();
        *v16 = v7;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        v17 = v9;
        v18 = v8;
        sub_29EB98C84((v10 > 1), v11 + 1, 1);
        v9 = v17;
        v8 = v18;
      }

      ++v5;
      *(v19 + 16) = v11 + 1;
      v12 = v19 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v6 += 3;
      if (v3 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13 = v1[1];
    type metadata accessor for Envelope();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;
    v15 = v1[7];

    v1[7] = v14;
  }
}

uint64_t sub_29EB9877C(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_29EB987F4(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationEncoder.recordReturnType<A>(_:)(a1);
}

char *sub_29EB9886C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885510, &unk_29EBB16F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_29EB98988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885508, &qword_29EBB16E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29EB98A94(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854E8, &qword_29EBB16C8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29EB98C84(char *a1, int64_t a2, char a3)
{
  result = sub_29EB98CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB98CA4(char *a1, int64_t a2, char a3)
{
  result = sub_29EB98DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB98CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885500, &qword_29EBB16E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EB98DD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F8, &qword_29EBB16D8);
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
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29EB98EE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29EB98F30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t XPCResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_conformsToProtocol();
  *(v3 + 32) = swift_conformsToProtocol();
  *(v3 + 40) = *v2;

  return MEMORY[0x2A1C73D48](sub_29EB99028, 0, 0);
}

uint64_t sub_29EB99028()
{
  v1 = sub_29EBA4524(v0[2], v0[3], v0[4]);
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v6 = v5;
  sub_29EB9943C(v1, v5);
  v3(v4, v6, 0);
  sub_29EB99490(v4, v6);
  sub_29EB99490(v4, v6);
  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCResultHandler.onReturnVoid()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v1(0, 0xC000000000000000, 0);
}

uint64_t XPCResultHandler.onThrow<A>(error:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = sub_29EB99B10();
  v2(v3);
}

uint64_t sub_29EB99180(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EB99244;

  return XPCResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t sub_29EB99244()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EB99338()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v2(0, 0xC000000000000000, 0);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_29EB993C4()
{
  XPCResultHandler.onThrow<A>(error:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EB9943C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EB99490(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCActorSystem.Actors(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XPCActorSystem.Actors(uint64_t result, int a2, int a3)
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

uint64_t sub_29EB99584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_29EB995E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_29EB99644()
{
  result = qword_2A1885518;
  if (!qword_2A1885518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885518);
  }

  return result;
}

uint64_t sub_29EB996B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000029EBB4C60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29EBAFCD0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29EB99748(uint64_t a1)
{
  v2 = sub_29EB99ABC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB99784(uint64_t a1)
{
  v2 = sub_29EB99ABC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EB997C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885520, &qword_29EBB18D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB99ABC();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_29EBAFBD0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_29EB9993C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885530, &qword_29EBB18E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB99ABC();
  sub_29EBAFDF0();
  sub_29EBAFC50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29EB99A78()
{
  v2 = *v0;
  sub_29EB99644();
  return sub_29EBAFD30();
}

unint64_t sub_29EB99ABC()
{
  result = qword_2A1885528;
  if (!qword_2A1885528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885528);
  }

  return result;
}

unint64_t sub_29EB99B50()
{
  result = qword_2A1885538;
  if (!qword_2A1885538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885538);
  }

  return result;
}

unint64_t sub_29EB99BA8()
{
  result = qword_2A1885540;
  if (!qword_2A1885540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885540);
  }

  return result;
}

unint64_t sub_29EB99C00()
{
  result = qword_2A1885548;
  if (!qword_2A1885548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885548);
  }

  return result;
}

uint64_t XPCInvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v14 = MEMORY[0x29EDCA190];

  result = sub_29EB98CA4(0, v2, 0);
  v5 = 0;
  v3 = v14;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = sub_29EBAFB00();
    if (!v9)
    {

      type metadata accessor for XPCActorSystemError();
      sub_29EB98378();
      swift_allocError();
      *v13 = v8;
      v13[1] = v7;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return v3;
    }

    v10 = v9;

    v12 = *(v14 + 16);
    v11 = *(v14 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_29EB98CA4((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v12 + 1;
    *(v14 + 8 * v12 + 32) = v10;
    v6 += 2;
    if (v2 == v5)
    {

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCInvocationDecoder.decodeNextArgument<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v7 = v2[1];
  v8 = *(*v2 + 24);
  if (v7 >= *(v8 + 16))
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EB98378();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    v12 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = v8 + 16 * v7;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      sub_29EB9943C(v10, v11);
      sub_29EB9A6D0(a1, v5, a2);
      result = sub_29EB99490(v10, v11);
      v12 = v7 + 1;
LABEL_5:
      v2[1] = v12;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EB99F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCInvocationDecoder.decodeNextArgument<A>()(a1, a2);
}

uint64_t sub_29EB99F84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_11;
      }

      v8 = sub_29EBAFCD0();
      sub_29EB96EC0();
      sub_29EB96EC0();
      sub_29EB96EC0();

      if (v8)
      {
        goto LABEL_15;
      }

LABEL_8:
      sub_29EB96F78();
      return 0;
    }

LABEL_7:
    sub_29EB96EC0();
    sub_29EB96EC0();
    sub_29EB96EC0();

    sub_29EB96F78();
    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a1 != a4 || a2 != a5)
  {
    v7 = sub_29EBAFCD0();
    sub_29EB96EC0();
    sub_29EB96EC0();
    sub_29EB96EC0();

    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_11:
  sub_29EB96EC0();
  sub_29EB96EC0();
  sub_29EB96EC0();

LABEL_15:
  sub_29EB96F78();
  return 1;
}

uint64_t sub_29EB9A1E4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_11;
      }

      v8 = sub_29EBAFCD0();
      sub_29EB96EC0();
      sub_29EB96EC0();
      sub_29EB96EC0();

      if (v8)
      {
        goto LABEL_15;
      }

LABEL_8:
      sub_29EB96F78();
      return 0;
    }

LABEL_7:
    sub_29EB96EC0();
    sub_29EB96EC0();
    sub_29EB96EC0();

    sub_29EB96F78();
    goto LABEL_8;
  }

  if ((a6 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if (a1 != a4 || a2 != a5)
  {
    v7 = sub_29EBAFCD0();
    sub_29EB96EC0();
    sub_29EB96EC0();
    sub_29EB96EC0();

    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_11:
  sub_29EB96EC0();
  sub_29EB96EC0();
  sub_29EB96EC0();

LABEL_15:
  sub_29EB96F78();
  return 1;
}

uint64_t sub_29EB9A4B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08]), v9 = sub_29EBAF900(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v19 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v18 = ~v10;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(a2 + 48) + v14 * v11, v3);
      sub_29EBA59E4(&qword_2A18854D0, 255, MEMORY[0x29EDB9C08]);
      v16 = sub_29EBAF920();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v11 = (v11 + 1) & v18;
    }

    while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_29EB9A6D0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for XPCActorSystem.Coder.Container();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v12 - v9;
  if (qword_2A18850C0 != -1)
  {
    swift_once();
  }

  v12[1] = a2;
  swift_getWitnessTable();
  result = sub_29EBAF6B0();
  if (!v3)
  {
    return (*(*(a1 - 8) + 32))(a3, v10, a1);
  }

  return result;
}

uint64_t XPCActorSystem.Role.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29EBAF970();
}

uint64_t XPCActorSystem.Role.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EBAFD80();
  sub_29EBAF970();
  return sub_29EBAFDA0();
}

uint64_t sub_29EB9A88C()
{
  sub_29EBA543C(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

uint64_t sub_29EB9A8C4()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885550);
  __swift_project_value_buffer(v0, qword_2A1885550);
  return sub_29EBAF770();
}

uint64_t sub_29EB9A944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F0, &qword_29EBB1E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = (v82 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v82 - v13;
  v15 = type metadata accessor for XPCActorID();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v24 = v82 - v23;
  if (!a1)
  {
    v14 = v21;
    if (qword_2A18850D0 == -1)
    {
LABEL_7:
      v40 = sub_29EBAF780();
      __swift_project_value_buffer(v40, qword_2A1885578);
      v41 = sub_29EBAFA40();
      sub_29EB9707C(a3, v19);
      v42 = sub_29EBAF760();
      if (os_log_type_enabled(v42, v41))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v88[0] = v44;
        *v43 = 136446210;
        v45 = XPCActorID.description.getter();
        v46 = a3;
        v48 = v47;
        sub_29EBA4E98(v19, type metadata accessor for XPCActorID);
        v49 = sub_29EBA1458(v45, v48, v88);
        a3 = v46;

        *(v43 + 4) = v49;
        _os_log_impl(&dword_29EB8F000, v42, v41, "Resigning the key “%{public}s”…", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x29EDAAF90](v44, -1, -1);
        MEMORY[0x29EDAAF90](v43, -1, -1);
      }

      else
      {

        sub_29EBA4E98(v19, type metadata accessor for XPCActorID);
      }

      sub_29EB9B0C4(a3);

      if (qword_2A18850B0 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_2A1885140);
      sub_29EBA1C38(a3 + *(v14 + 5), v9);
      sub_29EBA597C(v9);
      os_unfair_lock_unlock(&dword_2A1885140);
      return sub_29EBA4E98(a3, type metadata accessor for XPCActorID);
    }

LABEL_35:
    swift_once();
    goto LABEL_7;
  }

  v86 = a2;
  v84 = v22;
  v82[1] = v21;
  v25 = qword_2A18850D0;
  swift_unknownObjectRetain();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_29EBAF780();
  __swift_project_value_buffer(v26, qword_2A1885578);
  v27 = sub_29EBAFA40();
  sub_29EB9707C(a3, v24);
  v28 = sub_29EBAF760();
  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    v85 = v14;
    v30 = v10;
    v31 = v27;
    v32 = v29;
    v88[0] = swift_slowAlloc();
    v83 = v11;
    v33 = v88[0];
    *v32 = 136446210;
    v34 = XPCActorID.description.getter();
    v36 = v35;
    sub_29EBA4E98(v24, type metadata accessor for XPCActorID);
    v37 = sub_29EBA1458(v34, v36, v88);

    *(v32 + 4) = v37;
    v38 = v31;
    v10 = v30;
    v14 = v85;
    _os_log_impl(&dword_29EB8F000, v28, v38, "Registering a distributed actor for the key “%{public}s”…", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v39 = v33;
    v11 = v83;
    MEMORY[0x29EDAAF90](v39, -1, -1);
    MEMORY[0x29EDAAF90](v32, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v24, type metadata accessor for XPCActorID);
  }

  v9 = v87;
  ObjectType = swift_getObjectType();
  type metadata accessor for XPCActorSystem.Actors.WeakActorContainer();
  v51 = sub_29EBA4730(a1, ObjectType, v86);
  v52 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = *v9;
  sub_29EBAF250(v51, a3, isUniquelyReferenced_nonNull_native);
  *v9 = v88[0];
  v54 = v9[1];
  if (*(v54 + 16))
  {
    v55 = sub_29EBA21F4(a3);
    if (v56)
    {
      v57 = *(*(v54 + 56) + 8 * v55);
    }

    else
    {
      v58 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
    v58 = MEMORY[0x29EDCA190];
  }

  v85 = a1;
  v59 = *(v58 + 16);
  if (v59)
  {
    v82[2] = v58;
    v83 = a3;
    v62 = *(v11 + 16);
    v60 = v11 + 16;
    v61 = v62;
    v63 = v58 + ((*(v60 + 64) + 32) & ~*(v60 + 64));
    v64 = *(v60 + 56);
    v65 = (v60 - 8);
    v66 = v14;
    v14 = v85;
    v67 = v86;
    do
    {
      v61(v66, v63, v10);
      v88[0] = v14;
      v88[1] = v67;
      swift_unknownObjectRetain();
      sub_29EBAF9F0();
      (*v65)(v66, v10);
      v63 += v64;
      --v59;
    }

    while (v59);

    a3 = v83;
    v9 = v87;
  }

  else
  {
  }

  v68 = v9[1];
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v9[1];
  v70 = v88[0];
  v19 = sub_29EBA21F4(a3);
  v72 = v70[2];
  v73 = (v71 & 1) == 0;
  v74 = v72 + v73;
  if (__OFADD__(v72, v73))
  {
    __break(1u);
    goto LABEL_35;
  }

  v75 = v71;
  if (v70[3] >= v74)
  {
    if (v69)
    {
      v9[1] = v70;
      if (v71)
      {
LABEL_28:
        v79 = v70[7];
        v80 = *(v79 + 8 * v19);
        *(v79 + 8 * v19) = MEMORY[0x29EDCA190];
        swift_unknownObjectRelease_n();

        return sub_29EBA4E98(a3, type metadata accessor for XPCActorID);
      }
    }

    else
    {
      sub_29EBA3EC4();
      v70 = v88[0];
      v9[1] = v88[0];
      if (v75)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    v78 = v84;
    sub_29EB9707C(a3, v84);
    sub_29EBA3B74(v19, v78, MEMORY[0x29EDCA190], v70);
    goto LABEL_28;
  }

  sub_29EBA3218(v74, v69);
  v70 = v88[0];
  v76 = sub_29EBA21F4(a3);
  if ((v75 & 1) == (v77 & 1))
  {
    v19 = v76;
    v9[1] = v70;
    if (v75)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  result = sub_29EBAFD20();
  __break(1u);
  return result;
}

uint64_t sub_29EB9B0C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_29EBA21F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_29EBA3CAC();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for XPCActorID();
  sub_29EBA4E98(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for XPCActorID);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_29EBAED5C(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_29EB9B188(char *a1, uint64_t a2)
{
  v55 = type metadata accessor for XPCActorID();
  v4 = *(*(v55 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v55);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v53 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v53 - v17;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v19 = sub_29EBAF780();
  __swift_project_value_buffer(v19, qword_2A1885578);
  v20 = sub_29EBAFA40();
  v21 = *(v10 + 16);
  v57 = a1;
  v61 = v21;
  v21(v18, a1, v9);
  v59 = a2;
  sub_29EB9707C(a2, v8);
  v22 = sub_29EBAF760();
  if (os_log_type_enabled(v22, v20))
  {
    v23 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62 = v54;
    *v23 = 136446466;
    v61(v16, v18, v9);
    v24 = sub_29EBAF950();
    v26 = v25;
    (*(v10 + 8))(v18, v9);
    v27 = sub_29EBA1458(v24, v26, &v62);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v28 = XPCActorID.description.getter();
    v30 = v29;
    sub_29EBA4E98(v8, type metadata accessor for XPCActorID);
    v31 = sub_29EBA1458(v28, v30, &v62);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_29EB8F000, v22, v20, "Attaching the continuation “%{public}s” for the key “%{public}s”…", v23, 0x16u);
    v32 = v54;
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v32, -1, -1);
    MEMORY[0x29EDAAF90](v23, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v8, type metadata accessor for XPCActorID);
    (*(v10 + 8))(v18, v9);
  }

  v33 = v9;
  v34 = v60;
  v61(v60, v57, v9);
  v35 = v58;
  v36 = *(v58 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v35 + 8);
  v38 = v62;
  v39 = v59;
  v41 = sub_29EBA21F4(v59);
  v42 = v38[2];
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_19;
  }

  v45 = v40;
  if (v38[3] >= v44)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v35 + 8) = v38;
      if (v40)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_29EBA3EC4();
      v38 = v62;
      *(v35 + 8) = v62;
      if (v45)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v48 = v56;
    sub_29EB9707C(v39, v56);
    sub_29EBA3B74(v41, v48, MEMORY[0x29EDCA190], v38);
    goto LABEL_14;
  }

  sub_29EBA3218(v44, isUniquelyReferenced_nonNull_native);
  v38 = v62;
  v46 = sub_29EBA21F4(v39);
  if ((v45 & 1) != (v47 & 1))
  {
    result = sub_29EBAFD20();
    __break(1u);
    return result;
  }

  v41 = v46;
  *(v35 + 8) = v38;
  if ((v45 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = v38[7];
  v38 = *(isUniquelyReferenced_nonNull_native + 8 * v41);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v41) = v38;
  if ((v49 & 1) == 0)
  {
LABEL_19:
    v38 = sub_29EB98A94(0, v38[2] + 1, 1, v38);
    *(isUniquelyReferenced_nonNull_native + 8 * v41) = v38;
  }

  v51 = v38[2];
  v50 = v38[3];
  if (v51 >= v50 >> 1)
  {
    v38 = sub_29EB98A94(v50 > 1, v51 + 1, 1, v38);
    *(isUniquelyReferenced_nonNull_native + 8 * v41) = v38;
  }

  v38[2] = v51 + 1;
  return (*(v10 + 32))(v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v51, v34, v33);
}

uint64_t sub_29EB9B6E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_29EBAFCD0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_29EB9B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_29EB9B6E4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_29EB9B79C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_29EB92158();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29EB9B7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73278](a1, WitnessTable);
}

uint64_t sub_29EB9B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C73280](a1, WitnessTable);
}

uint64_t sub_29EB9B8DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t XPCActorSystem.role.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_29EBA44D4(v2, v3, v4);
}

uint64_t XPCActorSystem.description.getter()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ALL, 0x800000029EBB4C80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EB9B9F4()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885578);
  __swift_project_value_buffer(v0, qword_2A1885578);
  return sub_29EBAF770();
}

uint64_t XPCActorSystem.__allocating_init(role:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  XPCActorSystem.init(role:)(a1);
  return v2;
}

uint64_t XPCActorSystem.init(role:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v10 = MEMORY[0x29EDCA190];
  v11 = sub_29EBA4794(MEMORY[0x29EDCA190]);
  v12 = sub_29EBA4964(v10);
  *(v4 + 56) = 0;
  *(v4 + 64) = v11;
  *(v4 + 72) = v12;
  *(v4 + 16) = v6;
  *(v4 + 24) = v5;
  *(v4 + 32) = v8;
  *(v4 + 40) = v7;
  *(v4 + 48) = v9;
  if (v8 < 0)
  {
    v17 = qword_2A18850E8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1889A80;
    swift_retain_n();
    os_unfair_lock_lock((v18 + 16));
    v24[0] = v6;
    v24[1] = v5;
    v25 = v8 & 1;
    swift_unownedRetainStrong();

    swift_unownedRetain();
    swift_unownedRetain();

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    type metadata accessor for Connection();
    swift_allocObject();
    swift_retain_n();

    v20 = sub_29EBAA968(v24, &unk_29EBB1AA8, v4, sub_29EBA4BE4, v4, v7, v9, sub_29EBA4C38, v19);
    if (v3)
    {
      swift_unownedRelease();
      os_unfair_lock_unlock((v18 + 16));

      return v4;
    }

    v22 = v20;
    v23 = *(v18 + 24);

    swift_unownedRelease();
    *(v18 + 24) = v22;
    os_unfair_lock_unlock((v18 + 16));
  }

  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v13 = sub_29EBAF780();
  __swift_project_value_buffer(v13, qword_2A1885578);
  v14 = sub_29EBAFA40();
  v15 = sub_29EBAF760();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_29EB8F000, v15, v14, "The XPC distributed actor system has been initialized.", v16, 2u);
    MEMORY[0x29EDAAF90](v16, -1, -1);
  }

  return v4;
}

uint64_t sub_29EB9BDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BE64(a1, a2, a3);
}

uint64_t sub_29EB9BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = *v3;
  v5 = *(*(type metadata accessor for XPCActorID() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9BF20, 0, 0);
}

uint64_t sub_29EB9BF20()
{
  v21 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_29EBAF780();
  __swift_project_value_buffer(v2, qword_2A1885578);
  v3 = sub_29EBAFA40();

  v4 = sub_29EBAF760();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;

    v8 = sub_29EBA6D44();
    v10 = v9;

    v11 = sub_29EBA1458(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_29EB8F000, v4, v3, "Handling the message in the envelope “%{public}s”…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x29EDAAF90](v7, -1, -1);
    MEMORY[0x29EDAAF90](v6, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[12];
  v14 = v0[9] + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID;
  sub_29EB94994(v12);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = *(MEMORY[0x29EDCA468] + 4);
  v17 = swift_task_alloc();
  v0[16] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C8, &unk_29EBB1DF8);
  *v17 = v0;
  v17[1] = sub_29EB9C194;

  return MEMORY[0x2A1C73C70](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000029EBB4D60, sub_29EBA5464, v15, v18);
}

uint64_t sub_29EB9C194()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EB9C2AC, 0, 0);
}

uint64_t sub_29EB9C2AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 136) = v5;
  *(v0 + 40) = 0;
  *(v0 + 32) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v3;
  v7 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  *(v0 + 56) = *(v0 + 88);
  v8 = *(MEMORY[0x29EDCA2C8] + 4);

  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v11 = sub_29EBA59E4(&qword_2A18855D0, v10, type metadata accessor for XPCActorSystem);
  *v9 = v0;
  v9[1] = sub_29EB9C418;

  return MEMORY[0x2A1C738C8](v5, v2 + v7, v0 + 32, v0 + 48, v1, ObjectType, v11, v4);
}

uint64_t sub_29EB9C418()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 56);

  if (v0)
  {
    v6 = sub_29EB9C5E0;
  }

  else
  {
    v6 = sub_29EB9C54C;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29EB9C54C()
{
  v1 = v0[17];
  v2 = v0[14];
  swift_unknownObjectRelease();
  v3 = v0[4];

  sub_29EBA4E98(v2, type metadata accessor for XPCActorID);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29EB9C5E0()
{
  v1 = v0[17];
  v2 = v0[14];
  swift_unknownObjectRelease();
  v3 = v0[4];

  sub_29EBA4E98(v2, type metadata accessor for XPCActorID);

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_29EB9C674(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 56));
  v3 = sub_29EBA568C(a1, *(v1 + 64));
  v5 = v4;
  os_unfair_lock_unlock((v1 + 56));
  if (!v3)
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    v15 = swift_allocError();
    sub_29EB9707C(a1, v16);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    ErrorValue = swift_getErrorValue();
    v19 = v27;
    v20 = *(v27 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue);
    v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v25 = sub_29EB99B10();
    (*(v20 + 8))(v23, v19);
    MEMORY[0x29EDAADF0](v15);
    return v25;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    v15 = swift_allocError();
    *v17 = v3;
    v17[1] = v5;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = (a1 + *(type metadata accessor for SyncAddressedEnvelope(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_29EB9FF40(ObjectType, v8, boxed_opaque_existential_1);
  v25 = sub_29EBA4524(boxed_opaque_existential_1, AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v25;
}

uint64_t XPCActorSystem.assignID<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24[-v9];
  v11 = type metadata accessor for XPCActorID();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v24[-v16];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  if (v20 < 0)
  {

    *v15 = v19;
    *(v15 + 1) = v22;
    *(v15 + 8) = v20 & 1 | 0x8000;
    if (qword_2A18850B0 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v8);
    v17 = v15;
    v10 = v8;
  }

  else
  {
    *v17 = v19;
    *(v17 + 1) = v18;
    *(v17 + 8) = 0;
    v21 = qword_2A18850B0;

    if (v21 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    sub_29EB943BC(&qword_2A1885148, v10);
  }

  os_unfair_lock_unlock(&dword_2A1885140);
  (*(v4 + 32))(&v17[*(v11 + 20)], v10, v3);
  return sub_29EB980F4(v17, a1);
}

void XPCActorSystem.resignID(_:)(uint64_t a1)
{
  v3 = *&v1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 14);
  sub_29EB9CCC4(&v1[16]._os_unfair_lock_opaque, a1);

  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_29EB9CCC4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - v9;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v11 = sub_29EBAF780();
  __swift_project_value_buffer(v11, qword_2A1885578);
  v12 = sub_29EBAFA40();
  sub_29EB9707C(a2, v10);
  v13 = sub_29EBAF760();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v29 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = a1;
    v17 = v16;
    v31[0] = v16;
    *v15 = 136446210;
    v18 = XPCActorID.description.getter();
    v30 = v8;
    v20 = v19;
    sub_29EBA4E98(v10, type metadata accessor for XPCActorID);
    v21 = sub_29EBA1458(v18, v20, v31);
    v8 = v30;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_29EB8F000, v13, v12, "Resigning the ID “%{public}s”…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    a1 = v32;
    MEMORY[0x29EDAAF90](v22, -1, -1);
    v23 = v15;
    v4 = v29;
    MEMORY[0x29EDAAF90](v23, -1, -1);
  }

  else
  {

    sub_29EBA4E98(v10, type metadata accessor for XPCActorID);
  }

  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  v24 = sub_29EB9A4B4(a2 + *(v4 + 20), qword_2A1885148);
  os_unfair_lock_unlock(&dword_2A1885140);
  if (v24)
  {
    sub_29EB9707C(a2, v8);
    return sub_29EB9A944(0, 0, v8);
  }

  else
  {
    v26 = *a1;

    v27 = a1[1];

    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_29EBAFAF0();
    MEMORY[0x29EDAA640](0x1000000000000029, 0x800000029EBB4E00);
    v28 = XPCActorID.description.getter();
    MEMORY[0x29EDAA640](v28);

    MEMORY[0x29EDAA640](0x100000000000001BLL, 0x800000029EBB4E30);
    result = sub_29EBAFB70();
    __break(1u);
  }

  return result;
}

void XPCActorSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  os_unfair_lock_lock((v3 + 56));
  sub_29EB9D0F4((v3 + 64), a1, v7, a2, a3);

  os_unfair_lock_unlock((v3 + 56));
}

uint64_t sub_29EB9D0F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = type metadata accessor for XPCActorID();
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v36);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v13 = sub_29EBAF780();
  __swift_project_value_buffer(v13, qword_2A1885578);
  v14 = sub_29EBAFA40();
  swift_unknownObjectRetain();
  v15 = sub_29EBAF760();
  v16 = os_log_type_enabled(v15, v14);
  v38 = a5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v35[1] = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = a4;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = a2;
    v21 = *(a5 + 16);
    sub_29EBAFB10();
    v22 = XPCActorID.description.getter();
    v35[0] = a1;
    v24 = v23;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v12, type metadata accessor for XPCActorID);
    v25 = sub_29EBA1458(v22, v24, &v40);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v26 = sub_29EBAFE20();
    v28 = sub_29EBA1458(v26, v27, &v40);

    *(v18 + 14) = v28;
    a1 = v35[0];
    _os_log_impl(&dword_29EB8F000, v15, v14, "The distributed actor with the ID “%{public}s” of type “%{public}s” is ready.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v20, -1, -1);
    MEMORY[0x29EDAAF90](v18, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();

    v29 = *(a5 + 16);
  }

  v40 = a2;
  sub_29EBAFB10();
  if (qword_2A18850B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2A1885140);
  v30 = sub_29EB9A4B4(&v12[*(v36 + 20)], qword_2A1885148);
  os_unfair_lock_unlock(&dword_2A1885140);
  sub_29EBA4E98(v12, type metadata accessor for XPCActorID);
  if (v30)
  {
    v40 = a2;
    sub_29EBAFB10();
    v31 = swift_unknownObjectRetain();
    return sub_29EB9A944(v31, v38, v12);
  }

  else
  {
    v33 = *a1;

    v34 = a1[1];

    result = sub_29EBAFB70();
    __break(1u);
  }

  return result;
}

void XPCActorSystem.resolve<A>(id:as:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock(v2 + 14);
  sub_29EB9D570(v2 + 8, a1, a2, &v6, &v7);
  sub_29EBAFA80();
  os_unfair_lock_unlock(v2 + 14);
}

void sub_29EB9D570(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X6>, void *a5@<X8>)
{
  v37 = a3;
  v38 = a1;
  v8 = type metadata accessor for XPCActorID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v12 = sub_29EBAF780();
  __swift_project_value_buffer(v12, qword_2A1885578);
  v13 = sub_29EBAFA40();
  sub_29EB9707C(a2, v11);
  v14 = sub_29EBAF760();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v36 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = a5;
    v18 = v17;
    v39[0] = v17;
    *v16 = 136446466;
    v19 = XPCActorID.description.getter();
    v34 = a2;
    v21 = v20;
    sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
    v22 = sub_29EBA1458(v19, v21, v39);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = sub_29EBAFE20();
    v25 = sub_29EBA1458(v23, v24, v39);

    *(v16 + 14) = v25;
    a2 = v34;
    _os_log_impl(&dword_29EB8F000, v14, v13, "Resolving the distributed actor with the ID “%{public}s” as an instance of “%{public}s”…", v16, 0x16u);
    swift_arrayDestroy();
    v26 = v18;
    a5 = v35;
    MEMORY[0x29EDAAF90](v26, -1, -1);
    v27 = v16;
    a4 = v36;
    MEMORY[0x29EDAAF90](v27, -1, -1);

    v28 = *(a2 + 16);
    if (v28 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  v28 = *(a2 + 16);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v28 & 0x100) != 0)
  {
LABEL_6:
    *a5 = 0;
    return;
  }

LABEL_9:
  v29 = sub_29EBA568C(a2, *v38);
  if (v29 && (v39[0] = v29, v39[1] = v30, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C8, &unk_29EBB1DF8), (swift_dynamicCast() & 1) != 0))
  {
    *a5 = v39[3];
  }

  else
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    v31 = swift_allocError();
    sub_29EB9707C(a2, v32);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a4 = v31;
  }
}

double XPCActorSystem.makeInvocationEncoder()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x29EDCA190];
  *a1 = MEMORY[0x29EDCA190];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t XPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[23] = v16;
  v8[24] = v7;
  v8[21] = a7;
  v8[22] = v15;
  v8[19] = a4;
  v8[20] = a6;
  v8[17] = a2;
  v8[18] = a3;
  v8[16] = a1;
  v8[25] = swift_conformsToProtocol();
  swift_conformsToProtocol();
  v9 = *(*(type metadata accessor for XPCActorID() - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v10 = sub_29EBAF720();
  v8[28] = v10;
  v11 = *(v10 - 8);
  v8[29] = v11;
  v12 = *(v11 + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9DA24, 0, 0);
}

uint64_t sub_29EB9DA24()
{
  v65 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = sub_29EBAF780();
  __swift_project_value_buffer(v6, qword_2A1885578);
  v7 = sub_29EBAFA40();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain_n();
  v8 = sub_29EBAF760();
  v9 = os_log_type_enabled(v8, v7);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);
  if (v9)
  {
    v62 = v7;
    v13 = *(v0 + 216);
    v58 = *(v0 + 184);
    v59 = *(v0 + 168);
    v60 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63[0] = v61;
    *v15 = 136446722;
    sub_29EBA59E4(&qword_2A1885590, 255, MEMORY[0x29EDCA2D8]);
    v16 = sub_29EBAFCA0();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_29EBA1458(v16, v18, v63);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v0 + 120) = v14;
    v20 = *(v58 + 16);
    sub_29EBAFB10();
    swift_unknownObjectRelease();
    v21 = XPCActorID.description.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v13, type metadata accessor for XPCActorID);
    v24 = sub_29EBA1458(v21, v23, v63);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2082;
    v25 = sub_29EBAFE20();
    v27 = sub_29EBA1458(v25, v26, v63);

    *(v15 + 24) = v27;
    _os_log_impl(&dword_29EB8F000, v8, v62, "Calling “%{public}s” on the distributed actor with the ID “%{public}s”, expecting a return value of type “%{public}s”…", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v61, -1, -1);
    MEMORY[0x29EDAAF90](v15, -1, -1);
  }

  else
  {
    v28 = *(v0 + 136);
    swift_unknownObjectRelease_n();

    (*(v11 + 8))(v10, v12);
  }

  if (!*(*(v0 + 152) + 56))
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:
    v44 = *(v0 + 240);
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);

    v47 = *(v0 + 8);

    return v47();
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 184);
  v32 = *(v0 + 168);
  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  *(v0 + 96) = v34;
  v35 = *(v31 + 16);
  sub_29EBAFB10();
  v36 = sub_29EBA69A4(v29, v33);
  *(v0 + 248) = v36;
  sub_29EBA4E98(v29, type metadata accessor for XPCActorID);
  *(v0 + 104) = v34;
  sub_29EBAFB10();
  v37 = *v30;
  *(v0 + 256) = *v30;
  v38 = *(v30 + 8);
  *(v0 + 264) = v38;
  v39 = *(v30 + 16);
  *(v0 + 312) = *(v30 + 16);
  sub_29EB96F5C(v37, v38, v39, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v30, type metadata accessor for XPCActorID);
  if ((v39 & 0x80000000) == 0)
  {
    if (v39)
    {
      if (qword_2A18850E8 != -1)
      {
        swift_once();
      }

      v40 = swift_task_alloc();
      *(v0 + 272) = v40;
      *v40 = v0;
      v40[1] = sub_29EB9E2AC;

      return sub_29EBAE470(v36, v37, v38);
    }

    goto LABEL_16;
  }

  if ((v39 & 0x100) == 0)
  {
LABEL_16:
    v42 = *(v0 + 168);
    v43 = *(v0 + 136);
    sub_29EB96F5C(v37, v38, v39, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    *(v0 + 112) = v43;
    sub_29EBAFB10();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v48 = *(v0 + 192);
  if ((v48[4] & 0x8000000000000000) != 0)
  {
    sub_29EB96F5C(v37, v38, v39, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    v51 = v48[2];
    v52 = v48[3];
    v53 = v48[4];
    v54 = v48[5];
    v55 = v48[6];
    *v56 = v51;
    v56[1] = v52;
    v56[2] = v53;
    v56[3] = v54;
    v56[4] = v55;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v51, v52, v53);
    goto LABEL_17;
  }

  v49 = v48[2];
  v50 = v48[3];
  if (qword_2A18850E8 != -1)
  {
    swift_once();
    v48 = *(v0 + 192);
  }

  v63[0] = v37;
  v63[1] = v38;
  v64 = v39 & 1;
  *(v0 + 288) = sub_29EBAE940(v49, v50, v63, &unk_29EBB1AC0, v48);
  v57 = swift_task_alloc();
  *(v0 + 296) = v57;
  *v57 = v0;
  v57[1] = sub_29EB9E414;

  return sub_29EBAC7D0(v36);
}

uint64_t sub_29EB9E2AC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v7 + 48) = v3;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 16) = v4;
  v8 = *(v6 + 272);
  v13 = *v4;
  *(v7 + 280) = v3;

  if (v3)
  {
    v9 = sub_29EB9E924;
  }

  else
  {
    v10 = *(v7 + 256);
    v11 = *(v7 + 264);
    *(v7 + 315) = a3;
    sub_29EB96F5C(v10, v11, *(v7 + 312), sub_29EB96F78, sub_29EB96F78);
    v9 = sub_29EB9E7D4;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EB9E414(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v7 + 88) = v3;
  *(v7 + 80) = a3;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 56) = v4;
  v8 = *(v6 + 296);
  v9 = *v4;
  *(v7 + 304) = v3;

  if (v3)
  {
    v10 = sub_29EB9E6F8;
  }

  else
  {
    *(v7 + 314) = a3;
    v10 = sub_29EB9E54C;
  }

  return MEMORY[0x2A1C73D48](v10, 0, 0);
}

uint64_t sub_29EB9E54C()
{
  v1 = *(v0 + 314);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 288);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 192);
  v8 = *(v0 + 312);

  sub_29EB96F5C(v6, v5, v8, sub_29EB96F78, sub_29EB96F78);
  if (v1)
  {
    v9 = *(v0 + 248);
    sub_29EB99644();
    swift_allocError();
    *v10 = v2;
    v10[1] = v3;
    swift_willThrow();

LABEL_5:
    v13 = *(v0 + 240);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);

    v16 = *(v0 + 8);
    goto LABEL_6;
  }

  v11 = *(v0 + 304);
  sub_29EB9A6D0(*(v0 + 176), *(v0 + 200), *(v0 + 128));
  v12 = *(v0 + 248);
  if (v11)
  {

    sub_29EBA4D28(v2, v3, 0);
    goto LABEL_5;
  }

  v18 = *(v0 + 240);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);

  sub_29EBA4D28(v2, v3, 0);

  v16 = *(v0 + 8);
LABEL_6:

  return v16();
}

uint64_t sub_29EB9E6F8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);

  v3 = *(v0 + 304);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 312);

  sub_29EB96F5C(v5, v4, v7, sub_29EB96F78, sub_29EB96F78);
  v8 = *(v0 + 240);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_29EB9E7D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 315))
  {
    v3 = *(v0 + 248);
    sub_29EB99644();
    swift_allocError();
    *v4 = v1;
    v4[1] = v2;
    swift_willThrow();

LABEL_5:
    v9 = *(v0 + 240);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);

    v12 = *(v0 + 8);
    goto LABEL_6;
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_29EB9A6D0(*(v0 + 176), *(v0 + 200), *(v0 + 128));
  v8 = *(v0 + 248);
  if (v5)
  {

    sub_29EBA4D28(v1, v2, 0);
    goto LABEL_5;
  }

  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);

  sub_29EBA4D28(v1, v2, 0);

  v12 = *(v0 + 8);
LABEL_6:

  return v12();
}

uint64_t sub_29EB9E924()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 312);

  sub_29EB96F5C(v1, v2, v4, sub_29EB96F78, sub_29EB96F78);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29EB9E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EB99244;

  return sub_29EB9BE64(a1, a2, a3);
}

uint64_t XPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a3;
  v8[9] = a5;
  v8[6] = a1;
  v8[7] = a2;
  v9 = *(*(type metadata accessor for XPCActorID() - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = sub_29EBAF720();
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v12 = *(v11 + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB9EB9C, 0, 0);
}

uint64_t sub_29EB9EB9C()
{
  v61 = v0;
  if (qword_2A18850D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = sub_29EBAF780();
  __swift_project_value_buffer(v6, qword_2A1885578);
  v7 = sub_29EBAFA40();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain_n();
  v8 = sub_29EBAF760();
  v9 = os_log_type_enabled(v8, v7);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);
  if (v9)
  {
    v13 = *(v0 + 104);
    v55 = *(v0 + 80);
    v56 = *(v0 + 72);
    v58 = v7;
    v14 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59[0] = v57;
    *v15 = 136446466;
    sub_29EBA59E4(&qword_2A1885590, 255, MEMORY[0x29EDCA2D8]);
    v16 = sub_29EBAFCA0();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_29EBA1458(v16, v18, v59);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v0 + 40) = v14;
    v20 = *(v55 + 16);
    sub_29EBAFB10();
    swift_unknownObjectRelease();
    v21 = XPCActorID.description.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    sub_29EBA4E98(v13, type metadata accessor for XPCActorID);
    v24 = sub_29EBA1458(v21, v23, v59);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_29EB8F000, v8, v58, "Calling “%{public}s” on the distributed actor with the ID “%{public}s”…", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAAF90](v57, -1, -1);
    MEMORY[0x29EDAAF90](v15, -1, -1);
  }

  else
  {
    v25 = *(v0 + 48);
    swift_unknownObjectRelease_n();

    (*(v11 + 8))(v10, v12);
  }

  if (!*(*(v0 + 64) + 56))
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:
    v41 = *(v0 + 128);
    v42 = *(v0 + 96);
    v43 = *(v0 + 104);

    v44 = *(v0 + 8);

    return v44();
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  v31 = *(v0 + 48);
  v30 = *(v0 + 56);
  *(v0 + 16) = v31;
  v32 = *(v28 + 16);
  sub_29EBAFB10();
  v33 = sub_29EBA69A4(v26, v30);
  *(v0 + 136) = v33;
  sub_29EBA4E98(v26, type metadata accessor for XPCActorID);
  *(v0 + 24) = v31;
  sub_29EBAFB10();
  v34 = *v27;
  *(v0 + 144) = *v27;
  v35 = *(v27 + 8);
  *(v0 + 152) = v35;
  v36 = *(v27 + 16);
  *(v0 + 200) = *(v27 + 16);
  sub_29EB96F5C(v34, v35, v36, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v27, type metadata accessor for XPCActorID);
  if ((v36 & 0x80000000) == 0)
  {
    if (v36)
    {
      if (qword_2A18850E8 != -1)
      {
        swift_once();
      }

      v37 = swift_task_alloc();
      *(v0 + 160) = v37;
      *v37 = v0;
      v37[1] = sub_29EB9F3EC;

      return sub_29EBAE470(v33, v34, v35);
    }

    goto LABEL_16;
  }

  if ((v36 & 0x100) == 0)
  {
LABEL_16:
    v39 = *(v0 + 72);
    v40 = *(v0 + 48);
    sub_29EB96F5C(v34, v35, v36, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    *(v0 + 32) = v40;
    sub_29EBAFB10();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v45 = *(v0 + 88);
  if ((v45[4] & 0x8000000000000000) != 0)
  {
    sub_29EB96F5C(v34, v35, v36, sub_29EB96F78, sub_29EB96F78);
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    v48 = v45[2];
    v49 = v45[3];
    v50 = v45[4];
    v51 = v45[5];
    v52 = v45[6];
    *v53 = v48;
    v53[1] = v49;
    v53[2] = v50;
    v53[3] = v51;
    v53[4] = v52;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v48, v49, v50);
    goto LABEL_17;
  }

  v46 = v45[2];
  v47 = v45[3];
  if (qword_2A18850E8 != -1)
  {
    swift_once();
    v45 = *(v0 + 88);
  }

  v59[0] = v34;
  v59[1] = v35;
  v60 = v36 & 1;
  *(v0 + 176) = sub_29EBAE940(v46, v47, v59, &unk_29EBB1AD8, v45);
  v54 = swift_task_alloc();
  *(v0 + 184) = v54;
  *v54 = v0;
  v54[1] = sub_29EB9F5F4;

  return sub_29EBAC7D0(v33);
}

uint64_t sub_29EB9F3EC(uint64_t a1, unint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 160);
  v15 = *v4;
  *(*v4 + 168) = v3;

  if (v3)
  {
    v10 = sub_29EB9F8E4;
  }

  else
  {
    v12 = *(v8 + 144);
    v11 = *(v8 + 152);
    v13 = *(v8 + 200);
    sub_29EBA4D28(a1, a2, a3 & 1);
    sub_29EB96F5C(v12, v11, v13, sub_29EB96F78, sub_29EB96F78);
    v10 = sub_29EB9F56C;
  }

  return MEMORY[0x2A1C73D48](v10, 0, 0);
}

uint64_t sub_29EB9F56C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EB9F5F4(uint64_t a1, unint64_t a2, char a3)
{
  v8 = *(*v4 + 184);
  v11 = *v4;
  *(*v4 + 192) = v3;

  if (v3)
  {
    v9 = sub_29EB9F808;
  }

  else
  {
    sub_29EBA4D28(a1, a2, a3 & 1);
    v9 = sub_29EB9F72C;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29EB9F72C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  v5 = *(v0 + 200);

  sub_29EB96F5C(v2, v3, v5, sub_29EB96F78, sub_29EB96F78);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29EB9F808()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);

  v3 = *(v0 + 192);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 200);

  sub_29EB96F5C(v5, v4, v7, sub_29EB96F78, sub_29EB96F78);
  v8 = *(v0 + 128);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_29EB9F8E4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 200);

  sub_29EB96F5C(v1, v2, v4, sub_29EB96F78, sub_29EB96F78);
  v5 = *(v0 + 168);
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

void sub_29EB9F9AC(char *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a2 + 56));
  if (sub_29EBA568C(a3, *(a2 + 64)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854F0, &qword_29EBB16D0);
    sub_29EBAF9F0();
  }

  else
  {
    sub_29EB9B188(a1, a3);
  }

  os_unfair_lock_unlock((a2 + 56));
}

void XPCActorSystem.send<A, B>(_:to:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a1;
  v63 = a5;
  v55 = a7;
  v56 = a4;
  v60 = a3;
  v10 = sub_29EBAF6E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for XPCActorID();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = v49 - v20;
  v22 = type metadata accessor for SyncAddressedEnvelope(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v57 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v7[4] & 0x8000000000000000) != 0)
  {
    type metadata accessor for XPCActorSystemError();
    sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
    swift_allocError();
    v32 = v7[2];
    v33 = v7[3];
    v34 = v7[4];
    v35 = v7[5];
    v36 = v7[6];
    *v37 = v32;
    v37[1] = v33;
    v37[2] = v34;
    v37[3] = v35;
    v37[4] = v36;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_29EBA44D4(v32, v33, v34);
  }

  else
  {
    v49[0] = a6;
    v26 = *a2;
    v27 = a2[1];
    v28 = *(a2 + 16);
    v29 = v7[3];
    v52 = v7[2];
    v53 = v24;
    v51 = v29;
    v54 = v26;
    if (qword_2A18850E8 != -1)
    {
      swift_once();
      v26 = v54;
    }

    v49[1] = qword_2A1889A80;
    v50 = v28;
    *v19 = v26;
    *(v19 + 1) = v27;
    *(v19 + 8) = v28 | 0x8100;
    v30 = qword_2A18850B0;

    if (v30 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_2A1885140);
    v31 = v58;
    sub_29EB943BC(&qword_2A1885148, v14);
    if (v31)
    {
      os_unfair_lock_unlock(&dword_2A1885140);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(&dword_2A1885140);
      (*(v11 + 32))(&v19[*(v15 + 20)], v14, v10);
      sub_29EB980F4(v19, v21);
      v38 = sub_29EBA4524(v59, v60, v63);
      v40 = v39;
      v41 = v57;
      sub_29EB980F4(v21, v57);
      v42 = (v41 + *(v53 + 20));
      *v42 = v38;
      v42[1] = v40;
      v61[0] = v54;
      v61[1] = v27;
      v62 = v50;

      sub_29EBAE940(v52, v51, v61, &unk_29EBB1AE8, v7);
      v43 = sub_29EBACE4C();
      v45 = v44;
      v47 = v46;

      sub_29EBA4E98(v41, type metadata accessor for SyncAddressedEnvelope);
      if (v47)
      {
        sub_29EB99644();
        swift_allocError();
        *v48 = v43;
        v48[1] = v45;
        swift_willThrow();
      }

      else
      {
        sub_29EB9943C(v43, v45);
        sub_29EB9A6D0(v56, v49[0], v55);
        sub_29EBA4D28(v43, v45, 0);
        sub_29EBA4D28(v43, v45, 0);
      }
    }
  }
}

uint64_t sub_29EB9FF40@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = v13 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_29EB9A6D0(AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  if (!v3)
  {
    (*(a2 + 64))(v10, a1, a2);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t *XPCActorSystem.deinit()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_29EBA4EF8(v0[2], v0[3], v0[4]);
  sub_29EBA4F48(v0 + 8);
  return v0;
}

uint64_t XPCActorSystem.__deallocating_deinit()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_29EBA4EF8(v0[2], v0[3], v0[4]);
  sub_29EBA4F48(v0 + 8);

  return MEMORY[0x2A1C73398](v0, 80, 7);
}

uint64_t XPCActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EBA0154, 0, 0);
}

uint64_t sub_29EBA0154()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_29EBA5F98;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_29EBA0228(v1, v9, v7, v8, v1, v3, v5);
}

uint64_t sub_29EBA0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = *(a5 - 8);
  v7[11] = v8;
  v9 = *(v8 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBA02E8, 0, 0);
}

uint64_t sub_29EBA02E8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_29EBAF9A0();
  *(v0 + 16) = v11;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_29EBA03B0;
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  return XPCResultHandler.onReturn<A>(value:)(v6, v9);
}

uint64_t sub_29EBA03B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_29EBA0544;
  }

  else
  {
    v3 = sub_29EBA04C4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBA04C4()
{
  (*(v0[11] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29EBA0544()
{
  (*(v0[11] + 8))(v0[12], v0[8]);

  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_29EBA05C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v27 = *(a2 - 8);
  v28 = a3;
  v6 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v29 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCActorSystem.Coder.Container.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_29EBAFC30();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for XPCActorSystem.Coder.Container();
  v23 = *(v12 - 8);
  v13 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v22 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v30;
  sub_29EBAFDD0();
  if (!v17)
  {
    v30 = v12;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    sub_29EBAFC10();
    (*(v18 + 8))(v11, v19);
    (*(v20 + 32))(v15, v29, a2);
    (*(v23 + 32))(v24, v15, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EBA088C(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v4 = *(a2 + 16);
  type metadata accessor for XPCActorSystem.Coder.Container.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_29EBAFC90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBAFDF0();
  sub_29EBAFC80();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29EBA09F4()
{
  v1 = *v0;
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ALL, 0x800000029EBB4C80);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  sub_29EBAFB50();
  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

double sub_29EBA0B2C@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x29EDCA190];
  *a1 = MEMORY[0x29EDCA190];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_29EBA0B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v15 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_29EBA5F94;

  return XPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v16, a6, a7);
}

uint64_t sub_29EBA0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_29EBA5F94;

  return XPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v16, a5, v17, a7);
}

uint64_t sub_29EBA0D20(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EBA0D48, 0, 0);
}

uint64_t sub_29EBA0D48()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_29EBA0E1C;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_29EBA0228(v1, v9, v7, v8, v1, v3, v5);
}

uint64_t sub_29EBA0E1C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static DistributedActor<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for XPCActorID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v21 - v12;
  v24 = a1;
  v14 = *(a4 + 16);
  sub_29EBAFB10();
  v24 = a2;
  sub_29EBAFB10();
  v15 = *(v13 + 1);
  v16 = *(v13 + 8);
  v24 = *v13;
  v25 = v15;
  v26 = v16;
  v18 = *(v11 + 1);
  v19 = *(v11 + 8);
  v21 = *v11;
  v17 = v21;
  v22 = v18;
  v23 = v19;
  sub_29EB96F5C(v24, v15, v16, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v17, v18, v19, sub_29EB96EC0, sub_29EB96EC0);
  LOBYTE(v17) = _s26ManagedBackgroundAssetsXPC10XPCActorIDV4RoleO2eeoiySbAE_AEtFZ_0(&v24, &v21);
  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  sub_29EBA4E98(v13, type metadata accessor for XPCActorID);
  sub_29EB96F5C(v21, v22, v23, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v24, v25, v26, sub_29EB96F78, sub_29EB96F78);
  return v17 & 1;
}

uint64_t SyncMessageHandler.send(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v5 = v4;
  v23 = a4;
  v8 = type metadata accessor for XPCActorID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v4;
  v22 = *(*(a3 + 8) + 16);
  sub_29EBAFB10();
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 8);
  sub_29EB96F5C(*v11, v13, v14, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EBA4E98(v11, type metadata accessor for XPCActorID);
  if ((v14 & 0x80000000) != 0)
  {
    sub_29EBAF700();
    v22 = v27;
    v25[0] = v12;
    v25[1] = v13;
    v26 = v14 & 1;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = swift_getAssociatedConformanceWitness();
    XPCActorSystem.send<A, B>(_:to:)(v24, v25, AssociatedTypeWitness, v18, AssociatedConformanceWitness, v20, v23);

    return sub_29EB96F5C(v12, v13, v14, sub_29EB96F78, sub_29EB96F78);
  }

  else
  {
    v15 = v24;
    sub_29EB96F5C(v12, v13, v14, sub_29EB96F78, sub_29EB96F78);
    if (v14)
    {
      type metadata accessor for XPCActorSystemError();
      sub_29EBA59E4(&qword_2A18854E0, 255, type metadata accessor for XPCActorSystemError);
      swift_allocError();
      v25[0] = v5;
      sub_29EBAFB10();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      return (*(a3 + 64))(v15, a2, a3);
    }
  }
}

uint64_t sub_29EBA1458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EBA1524(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29EBA5920(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_29EBA1524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29EBA1630(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29EBAFB40();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_29EBA1630(uint64_t a1, unint64_t a2)
{
  v4 = sub_29EBA167C(a1, a2);
  sub_29EBA17AC(&unk_2A254A4B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29EBA167C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EBA1898(v5, 0);
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

  result = sub_29EBAFB40();
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
        v10 = sub_29EBAF990();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EBA1898(v10, 0);
        result = sub_29EBAFAE0();
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

uint64_t sub_29EBA17AC(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29EBA190C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29EBA1898(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E0, &qword_29EBB1E10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EBA190C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E0, &qword_29EBB1E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_29EBA1A00()
{
  v1 = v0;
  v2 = sub_29EBAF6E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18854D8, &qword_29EBB1E30);
  v7 = *v0;
  v8 = sub_29EBAFAC0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_29EBA1C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29EBAF6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08]);
  v35 = a1;
  v13 = sub_29EBAF900();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_29EBA59E4(&qword_2A18854D0, 255, MEMORY[0x29EDB9C08]);
      v22 = sub_29EBAF920();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29EBA1A00();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_29EBA1EE8(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_29EBA1EE8(int64_t a1)
{
  v3 = sub_29EBAF6E0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_29EBAFAB0();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_29EBA59E4(&qword_2A18854C8, 255, MEMORY[0x29EDB9C08]);
        v27 = sub_29EBAF900();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_29EBA21F4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29EBAFD80();
  XPCActorID.hash(into:)();
  v4 = sub_29EBAFDA0();

  return sub_29EBA2360(a1, v4);
}

unint64_t sub_29EBA2260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_29EBAFD80();
  sub_29EBAF970();
  v8 = sub_29EBAFDA0();

  return sub_29EBA2CA8(a1, a2, a3, v8);
}

unint64_t sub_29EBA22E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29EBAFD80();
  sub_29EBAF970();
  v6 = sub_29EBAFDA0();

  return sub_29EBA2D6C(a1, a2, v6);
}

unint64_t sub_29EBA2360(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCActorID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2 + 64;
  v36 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v33 = ~v10;
  v12 = *(a1 + 8);
  v37 = *a1;
  v38 = v12;
  v13 = *(a1 + 16);
  v34 = *(v7 + 72);
  HIDWORD(v32) = v13;
  while (1)
  {
    sub_29EB9707C(*(v36 + 48) + v34 * v11, v9);
    v16 = *v9;
    v15 = *(v9 + 1);
    v17 = *(v9 + 8);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    sub_29EB96F5C(*v9, *(v9 + 1), *(v9 + 8), sub_29EB96EC0, sub_29EB96EC0);
    v24 = v37;
    sub_29EB96F5C(v37, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
    v25 = sub_29EB9A1E4(v16, v15, v17 & 0x1FF, v24, v38, (v13 & 0x100) | WORD2(v32));
    sub_29EB96F5C(v16, v15, v17, sub_29EB96F78, sub_29EB96F78);
    v12 = v38;
    sub_29EB96F5C(v24, v38, v13, sub_29EB96F78, sub_29EB96F78);
    sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
    if (v25)
    {
      return v11;
    }

LABEL_6:
    v11 = (v11 + 1) & v33;
    if (((*(v35 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
LABEL_4:
    sub_29EB96F5C(*v9, *(v9 + 1), *(v9 + 8), sub_29EB96EC0, sub_29EB96EC0);
    v14 = v37;
    sub_29EB96F5C(v37, v12, v13, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v16, v15, v17, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v14, v12, v13, sub_29EB96F78, sub_29EB96F78);
LABEL_5:
    sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
    goto LABEL_6;
  }

  if (*(v9 + 8))
  {
    if (v13)
    {
      if (v16 == v37 && v15 == v12)
      {
        goto LABEL_24;
      }

      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = v37;
      v21 = sub_29EBAFCD0();
      sub_29EB96F5C(v20, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96F5C(v20, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
      sub_29EB96EC0();
      sub_29EB96F5C(v16, v15, v17, sub_29EB96F78, sub_29EB96F78);
      v22 = v20;
      v12 = v38;
      sub_29EB96F5C(v22, v38, v13, sub_29EB96F78, sub_29EB96F78);

      if (v21)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v13)
  {
LABEL_16:
    v23 = v37;
    sub_29EB96F5C(v37, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v23, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96EC0();
    sub_29EB96F5C(v16, v15, v17, sub_29EB96F78, sub_29EB96F78);
    sub_29EB96F5C(v23, v38, v13, sub_29EB96F78, sub_29EB96F78);

    sub_29EB96F78();
    v12 = v38;
LABEL_22:
    sub_29EB96F78();
    goto LABEL_5;
  }

  if (v16 != v37 || v15 != v12)
  {
    v26 = *v9;
    v27 = *(v9 + 1);
    v28 = v37;
    v29 = sub_29EBAFCD0();
    sub_29EB96F5C(v28, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v16, v15, v17, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96F5C(v28, v38, v13, sub_29EB96EC0, sub_29EB96EC0);
    sub_29EB96EC0();
    sub_29EB96F5C(v16, v15, v17, sub_29EB96F78, sub_29EB96F78);
    v30 = v28;
    v12 = v38;
    sub_29EB96F5C(v30, v38, v13, sub_29EB96F78, sub_29EB96F78);

    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_29EB96F5C(v37, v12, v13, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v37, v12, v17, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v37, v12, v17, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96F5C(v37, v12, v13, sub_29EB96EC0, sub_29EB96EC0);
  sub_29EB96EC0();
  sub_29EB96F5C(v37, v12, v17, sub_29EB96F78, sub_29EB96F78);
  sub_29EB96F5C(v37, v12, v13, sub_29EB96F78, sub_29EB96F78);

LABEL_25:
  sub_29EB96F78();
  sub_29EBA4E98(v9, type metadata accessor for XPCActorID);
  return v11;
}

unint64_t sub_29EBA2CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_29EBAFCD0())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_29EBA2D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29EBAFCD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29EBA2E24(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCActorID();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
  v43 = a2;
  result = sub_29EBAFB90();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v2;
    v41 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    v20 = v44;
    while (1)
    {
      if (!v17)
      {
        v23 = v13;
        while (1)
        {
          v13 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v13 >= v18)
          {
            break;
          }

          v24 = v14[v13];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v17 = (v24 - 1) & v24;
            goto LABEL_17;
          }
        }

        if ((v43 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_43;
        }

        v39 = 1 << *(v9 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v39;
        }

        *(v9 + 16) = 0;
        break;
      }

      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 48);
      v46 = *(v42 + 72);
      v27 = v26 + v46 * v25;
      if (v43)
      {
        sub_29EB980F4(v27, v20);
        v45 = *(*(v9 + 56) + 8 * v25);
      }

      else
      {
        sub_29EB9707C(v27, v20);
        v45 = *(*(v9 + 56) + 8 * v25);
      }

      v28 = *(v12 + 40);
      sub_29EBAFD80();
      v29 = *v20;
      v30 = *(v20 + 8);
      v31 = *(v20 + 16);
      if (v31 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v31 & 0x100) == 0)
        {
LABEL_24:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_27;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_27:
      sub_29EB96EC0();
      sub_29EBAF970();

      result = sub_29EBAFDA0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v9 = v41;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v20 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v20 = v44;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_29EB980F4(v20, *(v12 + 48) + v46 * v21);
      *(*(v12 + 56) + 8 * v21) = v45;
      ++*(v12 + 16);
    }
  }

LABEL_43:
  *v3 = v12;
  return result;
}

uint64_t sub_29EBA3218(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCActorID();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
  v43 = a2;
  result = sub_29EBAFB90();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v2;
    v41 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    v20 = v44;
    while (1)
    {
      if (!v17)
      {
        v23 = v13;
        while (1)
        {
          v13 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v13 >= v18)
          {
            break;
          }

          v24 = v14[v13];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v17 = (v24 - 1) & v24;
            goto LABEL_17;
          }
        }

        if ((v43 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_43;
        }

        v39 = 1 << *(v9 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v39;
        }

        *(v9 + 16) = 0;
        break;
      }

      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 48);
      v46 = *(v42 + 72);
      v27 = v26 + v46 * v25;
      if (v43)
      {
        sub_29EB980F4(v27, v20);
        v45 = *(*(v9 + 56) + 8 * v25);
      }

      else
      {
        sub_29EB9707C(v27, v20);
        v45 = *(*(v9 + 56) + 8 * v25);
      }

      v28 = *(v12 + 40);
      sub_29EBAFD80();
      v29 = *v20;
      v30 = *(v20 + 8);
      v31 = *(v20 + 16);
      if (v31 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v31 & 0x100) == 0)
        {
LABEL_24:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_27;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_27:
      sub_29EB96EC0();
      sub_29EBAF970();

      result = sub_29EBAFDA0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v9 = v41;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v20 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v20 = v44;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_29EB980F4(v20, *(v12 + 48) + v46 * v21);
      *(*(v12 + 56) + 8 * v21) = v45;
      ++*(v12 + 16);
    }
  }

LABEL_43:
  *v3 = v12;
  return result;
}

uint64_t sub_29EBA360C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
  v37 = a2;
  result = sub_29EBAFB90();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v38 = *(v22 + 16);
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_29EBAFD80();
      sub_29EBAF970();
      result = sub_29EBAFDA0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(v17 + 16) = v38;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_29EBA38CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
  v38 = a2;
  result = sub_29EBAFB90();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_29EBAFD80();
      sub_29EBAF970();
      result = sub_29EBAFDA0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_29EBA3B74(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for XPCActorID();
  result = sub_29EB980F4(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_29EBA3C14(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_29EBA3C64(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_29EBA3CAC()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
  v6 = *v0;
  v7 = sub_29EBAFB80();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_29EB9707C(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_29EB980F4(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_29EBA3EC4()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
  v6 = *v0;
  v7 = sub_29EBAFB80();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_29EB9707C(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_29EB980F4(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_29EBA40DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
  v2 = *v0;
  v3 = sub_29EBAFB80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_29EBA4258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
  v2 = *v0;
  v3 = sub_29EBAFB80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s26ManagedBackgroundAssetsXPC14XPCActorSystemC4RoleO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (v4 < 0)
  {
    if (v10 < 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_11;
  }

  if (v10 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 == v7 && v3 == v8)
  {
    v15 = 1;
  }

  else
  {
    v13 = *a1;
    v15 = sub_29EBAFCD0();
  }

LABEL_11:
  sub_29EBA44D4(v7, v8, v10);
  sub_29EBA44D4(v2, v3, v4);
  sub_29EBA4EF8(v2, v3, v4);
  sub_29EBA4EF8(v7, v8, v10);
  return v15 & 1;
}

uint64_t sub_29EBA44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_29EBA4524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCActorSystem.Coder.Container();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v17 - v13;
  (*(v6 + 16))(v9, a1, a2);
  (*(v6 + 32))(v14, v9, a2);
  if (qword_2A18850C8 != -1)
  {
    swift_once();
  }

  v17[1] = a3;
  swift_getWitnessTable();
  v15 = sub_29EBAF6C0();
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t sub_29EBA4730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = a3;
  swift_unknownObjectWeakAssign();
  return v4;
}

unint64_t sub_29EBA4794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A1885610, &qword_29EBB1E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F8, &qword_29EBB1E28);
    v8 = sub_29EBAFBA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_29EBA5AE0(v10, v6, qword_2A1885610, &qword_29EBB1E48);
      result = sub_29EBA21F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for XPCActorID();
      result = sub_29EB980F4(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EBA4964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885608, &qword_29EBB1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855D8, &qword_29EBB1E08);
    v8 = sub_29EBAFBA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_29EBA5AE0(v10, v6, &qword_2A1885608, &qword_29EBB1E40);
      result = sub_29EBA21F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for XPCActorID();
      result = sub_29EB980F4(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EBA4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4C00()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EBA4C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EB99244;

  return sub_29EB9E9EC(a1, a2, a3);
}

uint64_t sub_29EBA4D28(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29EB99490(a1, a2);
  }
}

uint64_t sub_29EBA4D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBA5F94;

  return sub_29EB9BDB4(a1, a2, a3);
}

uint64_t sub_29EBA4E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29EBA4EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t *sub_29EBA4F48(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  return a1;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_29EBA4FFC()
{
  result = qword_2A1885598;
  if (!qword_2A1885598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885598);
  }

  return result;
}

unint64_t sub_29EBA50A0()
{
  result = qword_2A18855A8;
  if (!qword_2A18855A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855A8);
  }

  return result;
}