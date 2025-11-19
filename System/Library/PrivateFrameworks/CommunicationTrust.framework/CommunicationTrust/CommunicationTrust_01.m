uint64_t sub_1B9851AD0()
{
  v2 = *v0;
  v4 = sub_1B9850274();
  if (v1)
  {
    return v1 & 1;
  }

  else
  {
    return v4 & 1;
  }
}

uint64_t sub_1B9851B84()
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6158();
}

uint64_t sub_1B9851D88()
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6148();
}

uint64_t sub_1B9851DCC()
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6128();
}

uint64_t sub_1B9851E10()
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6138();
}

uint64_t sub_1B9851F30()
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6158();
}

uint64_t sub_1B9852134()
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6148();
}

uint64_t sub_1B9852178()
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6128();
}

uint64_t sub_1B98521BC()
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6138();
}

uint64_t sub_1B9852368@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9852424@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_2(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9852454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B9852494@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_3(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B98524C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_2(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B9852508@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_4(*v1);
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_1B9852608(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B985263C(uint64_t a1)
{
  if (a1)
  {
    return sub_1B98F5C28();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9852690(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1B9852720()
{
  v2 = qword_1EBBD4F50;
  if (!qword_1EBBD4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F50);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_1B985281C(uint64_t result)
{
  if (result)
  {
    sub_1B98F5C18();
    return sub_1B98F5C08();
  }

  return result;
}

void *sub_1B98528B8(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1B98335B4(v4, v5, a3);
  v8 = *a1;

  sub_1B98F5C48();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

char *sub_1B9852954(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B98F5E48();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B98F5E48();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B9852AD0(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void *sub_1B9852B68(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B98F5E48();
    __break(1u);
  }

  result = sub_1B98F5E48();
  __break(1u);
  return result;
}

uint64_t sub_1B9852CB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1BFADD6C0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B98F5E08();
    __break(1u);
  }

  v5 = sub_1B98F5758();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B9852F2C()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1B9852F68(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B9833CC8(v4, v6);
  if (v7)
  {
    sub_1B98530DC((a4 + 32), v4, v5 + 32);
    sub_1B98F54D8();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_1B98F54D8();

    sub_1B9852B68((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1B98530DC(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1B9853204(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1B9853268()
{
  v2 = qword_1EDBDB5A8;
  if (!qword_1EDBDB5A8)
  {
    type metadata accessor for IsHandleBlocked();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98532E8(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  v7 = type metadata accessor for BlockedHandle();
  v2 = *(a1 + v7[5] + 8);

  v3 = *(a1 + v7[6]);

  v4 = *(a1 + v7[7]);

  v5 = *(a1 + v7[8] + 8);

  return a1;
}

unint64_t sub_1B9853404()
{
  v2 = qword_1EBBD4F60;
  if (!qword_1EBBD4F60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F60);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B985347C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98534D0()
{
  v2 = qword_1EDBDB198;
  if (!qword_1EDBDB198)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB198);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9853548(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9853574()
{
  v2 = qword_1EDBDAFD0;
  if (!qword_1EDBDAFD0)
  {
    type metadata accessor for BlockedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98535F4()
{
  v2 = qword_1EBBD4F70;
  if (!qword_1EBBD4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD4F68, &qword_1B98F89F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985367C()
{
  v2 = qword_1EBBD4F78;
  if (!qword_1EBBD4F78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F78);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98536F4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9853748()
{
  v2 = qword_1EDBDB190;
  if (!qword_1EDBDB190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB190);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98537C0(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B985383C()
{
  v2 = qword_1EDBDB1A8;
  if (!qword_1EDBDB1A8)
  {
    type metadata accessor for UpdateServerTrust();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98538BC(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  v8 = type metadata accessor for BlockedHandle();
  v2 = *(a1 + v8[5] + 8);

  v3 = *(a1 + v8[6]);

  v4 = *(a1 + v8[7]);

  v5 = *(a1 + v8[8] + 8);

  v6 = *(a1 + *(type metadata accessor for UpdateServerTrust() + 24) + 8);

  return a1;
}

unint64_t sub_1B98539C8()
{
  v2 = qword_1EDBDB000;
  if (!qword_1EDBDB000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB000);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9853A40(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9853A94()
{
  v2 = qword_1EBBD4F88;
  if (!qword_1EBBD4F88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F88);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9853B0C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9853B60()
{
  v2 = qword_1EDBDAFC0;
  if (!qword_1EDBDAFC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9853BD8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9853C2C()
{
  v2 = qword_1EDBDB238;
  if (!qword_1EDBDB238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9853D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 32) + **(a3 + 32));
  v4 = *(*(a3 + 32) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9853E5C;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9853E5C(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_1B9853FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 48) + **(a4 + 48));
  v5 = *(*(a4 + 48) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B98540F8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B98540F8(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_1B9854228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 56) + **(a4 + 56));
  v5 = *(*(a4 + 56) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B985436C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B985436C(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_1B985449C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v16 = (*(a6 + 64) + **(a6 + 64));
  v7 = *(*(a6 + 64) + 4);
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_1B98545F4;

  return v16(a1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_1B98545F4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B985471C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 72) + **(a3 + 72));
  v4 = *(*(a3 + 72) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9854858;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9854858()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B9854980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 80) + **(a3 + 80));
  v4 = *(*(a3 + 80) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9854ABC;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9854ABC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B9854BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 88) + **(a3 + 88));
  v4 = *(*(a3 + 88) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9854D20;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9854D20()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t type metadata accessor for container_query_flags_t()
{
  v4 = qword_1EBBD5000;
  if (!qword_1EBBD5000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5000);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B9854F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B9855020(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CFPhoneNumberStringOptions()
{
  v4 = qword_1EBBD5010;
  if (!qword_1EBBD5010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5010);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CFPhoneNumber()
{
  v4 = qword_1EBBD5018;
  if (!qword_1EBBD5018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5018);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CFString()
{
  v4 = qword_1EBBD5020;
  if (!qword_1EBBD5020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5020);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CFArray()
{
  v4 = qword_1EBBD5028;
  if (!qword_1EBBD5028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5028);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B9855434()
{
  v2 = qword_1EBBD5030;
  if (!qword_1EBBD5030)
  {
    type metadata accessor for CFPhoneNumberStringOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98554CC()
{
  v2 = qword_1EBBD5038;
  if (!qword_1EBBD5038)
  {
    type metadata accessor for CFPhoneNumberStringOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855564()
{
  v2 = qword_1EBBD5040;
  if (!qword_1EBBD5040)
  {
    type metadata accessor for container_query_flags_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98555FC()
{
  v2 = qword_1EBBD5048;
  if (!qword_1EBBD5048)
  {
    type metadata accessor for container_query_flags_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855694()
{
  v2 = qword_1EBBD5050;
  if (!qword_1EBBD5050)
  {
    type metadata accessor for container_query_flags_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985572C()
{
  v2 = qword_1EBBD5058;
  if (!qword_1EBBD5058)
  {
    type metadata accessor for container_query_flags_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98557C4()
{
  v2 = qword_1EBBD5060;
  if (!qword_1EBBD5060)
  {
    type metadata accessor for CFPhoneNumberStringOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985585C()
{
  v2 = qword_1EBBD5068;
  if (!qword_1EBBD5068)
  {
    type metadata accessor for CFPhoneNumberStringOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98558DC()
{
  v2 = qword_1EBBD5070;
  if (!qword_1EBBD5070)
  {
    type metadata accessor for CFPhoneNumberStringOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985595C()
{
  v2 = qword_1EBBD5078;
  if (!qword_1EBBD5078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98559D4()
{
  v2 = qword_1EBBD5080;
  if (!qword_1EBBD5080)
  {
    type metadata accessor for container_query_flags_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855A54()
{
  v2 = qword_1EBBD5088;
  if (!qword_1EBBD5088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5088);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9855ACC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_1B9855BA4(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B9855C00()
{
  result = sub_1B98F55E8();
  qword_1EBBD5220 = result;
  qword_1EBBD5228 = v1;
  return result;
}

uint64_t *sub_1B9855C44()
{
  if (qword_1EBBD4E30 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5220;
}

uint64_t static CommunicationTrustDaemon.embeddedSandboxProfileName.getter()
{
  v0 = sub_1B9855C44();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9855CE0()
{
  result = sub_1B98F55E8();
  qword_1EBBD5230 = result;
  qword_1EBBD5238 = v1;
  return result;
}

uint64_t *sub_1B9855D24()
{
  if (qword_1EBBD4E38 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5230;
}

uint64_t static CommunicationTrustDaemon.macOSSandboxProfileName.getter()
{
  v0 = sub_1B9855D24();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9855DC0()
{
  result = sub_1B98F55E8();
  qword_1EBBD5240 = result;
  qword_1EBBD5248 = v1;
  return result;
}

uint64_t *sub_1B9855E04()
{
  if (qword_1EBBD4E40 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5240;
}

uint64_t static CommunicationTrustDaemon.daemonEntitlementKey.getter()
{
  v0 = sub_1B9855E04();
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9855EA0()
{
  v6 = sub_1B98F5F98();
  v5 = v0;
  *v0 = sub_1B98F55E8();
  v5[1] = v1;
  v2 = sub_1B98F55E8();
  result = v6;
  v5[2] = v2;
  v5[3] = v4;
  sub_1B9851B38();
  qword_1EBBD5250 = v6;
  return result;
}

uint64_t *sub_1B9855F4C()
{
  if (qword_1EBBD4E48 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5250;
}

uint64_t sub_1B9855FAC()
{
  v1 = *sub_1B9855F4C();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B9855FDC()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1B9856010()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t CommunicationTrustDaemon.init()@<X0>(_OWORD *a1@<X8>)
{
  v56 = a1;
  v66 = 0;
  v79 = 0uLL;
  v57 = 0;
  v78 = 0;
  v63 = sub_1B98F5138();
  v58 = v63;
  v59 = *(v63 - 8);
  v62 = v59;
  v60 = v59;
  v1 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v63);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v3;
  v4 = sub_1B98F1E00();
  (*(v62 + 16))(v3, v4, v63);
  v68 = sub_1B98F5118();
  v64 = v68;
  v67 = sub_1B98F5BD8();
  v65 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v69 = sub_1B98F5F98();
  if (os_log_type_enabled(v68, v67))
  {
    v5 = v57;
    v47 = sub_1B98F5C28();
    v43 = v47;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v45 = 0;
    v48 = sub_1B985263C(0);
    v46 = v48;
    v49 = sub_1B985263C(v45);
    v73 = v47;
    v72 = v48;
    v71 = v49;
    v50 = 0;
    v51 = &v73;
    sub_1B9852690(0, &v73);
    sub_1B9852690(v50, v51);
    v70 = v69;
    v52 = v20;
    MEMORY[0x1EEE9AC00](v20, v6);
    v53 = &v20[-6];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v55 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v64, v65, "Initialising communicationtrustd", v43, 2u);
      v41 = 0;
      sub_1B985281C(v46);
      sub_1B985281C(v49);
      sub_1B98F5C08();

      v42 = v55;
    }
  }

  else
  {

    v42 = v57;
  }

  v7 = v42;

  (*(v60 + 8))(v61, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5258, &qword_1B98F8FB8);
  v39 = sub_1B98F5168();
  v40 = v7;
  if (v7)
  {
    v21 = v40;
    v22 = 0;
    v13 = v40;
    v78 = v21;
    v14 = v21;
    v20[1] = 27;
    v23 = 1;
    v76 = sub_1B98F5F88();
    v77 = v15;
    v16 = sub_1B98F55E8();
    v20[2] = v17;
    v25 = &v76;
    MEMORY[0x1BFADDF00](v16);

    swift_getErrorValue();
    sub_1B98F5F58();
    v18 = sub_1B98F55E8();
    v24 = v19;
    MEMORY[0x1BFADDF00](v18);

    v27 = v76;
    v26 = v77;
    sub_1B98F54D8();
    sub_1B9856788(v25);
    sub_1B98F56A8();
    result = sub_1B98F5E18();
    __break(1u);
  }

  else
  {
    *&v79 = v39;
    v29 = 0;
    type metadata accessor for CommunicationTrustDataSourceManager();
    v31 = &v75;
    sub_1B98578D4(&v75);
    v32 = sub_1B9857954();
    v33 = v8;
    v34 = sub_1B98579A8();
    v35 = v9;
    v36 = sub_1B98579F4();
    v37 = v10;
    v38 = sub_1B9857A28();
    v30 = v11;
    v28 = &v74;
    sub_1B9857A74(&v74);
    result = sub_1B9897EC4(v31, v32, v33, v34, v35, v36, v37, v38, v30, v29, v28);
    *(&v79 + 1) = result;
    *v56 = v79;
  }

  return result;
}

uint64_t sub_1B9856788(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B98567B4(uint64_t a1)
{
  v154 = a1;
  v156 = 0;
  v193 = 0;
  v155 = 0;
  v178 = 0;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0);
  v157 = v172;
  v158 = *(v172 - 8);
  v159 = v158;
  v160 = *(v158 + 64);
  v161 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v172);
  v162 = &v41 - v161;
  v163 = sub_1B98F5138();
  v164 = *(v163 - 8);
  v165 = v164;
  v167 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v163 - 8, v163);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v41 - v169;
  MEMORY[0x1EEE9AC00](&v41 - v169, v2);
  v168 = &v41 - v169;
  MEMORY[0x1EEE9AC00](&v41 - v169, v3);
  v170 = &v41 - v169;
  v193 = a1;
  v4 = sub_1B9855E04();
  v171 = *v4;
  v173 = v4[1];
  sub_1B98F54D8();
  sub_1B98F5188();

  if (v191[3])
  {
    v151 = v192;
    sub_1B98334F8(v191, v192);
    v152 = v186;
    sub_1B9833758(v151, v186);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
    if (swift_dynamicCast())
    {
      v150 = v185;
    }

    else
    {
      v150 = 0;
    }

    v149 = v150;
    if (v150)
    {
      v148 = v149;
      v140 = v149;
      v178 = v149;
      v139 = *sub_1B9855F4C();
      sub_1B98F54D8();
      v177[2] = v139;
      v141 = sub_1B985DBF4();
      v144 = MEMORY[0x1E69E6158];
      v145 = MEMORY[0x1E69E6168];
      v142 = sub_1B98F5AE8();
      sub_1B98F54D8();
      v177[1] = v140;
      v143 = sub_1B98F5AE8();
      v146 = MEMORY[0x1BFADD9D0](v143, v142, v144, v145);

      v147 = sub_1B98F5AA8();

      if ((v147 & 1) == 0)
      {
        v5 = v170;
        v6 = sub_1B98F1E00();
        (*(v165 + 16))(v5, v6, v163);
        v137 = sub_1B98F5118();
        v134 = v137;
        v136 = sub_1B98F5BD8();
        v135 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v138 = sub_1B98F5F98();
        if (os_log_type_enabled(v137, v136))
        {
          v7 = v155;
          v125 = sub_1B98F5C28();
          v121 = v125;
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v123 = 0;
          v126 = sub_1B985263C(0);
          v124 = v126;
          v127 = sub_1B985263C(v123);
          v177[0] = v125;
          v176 = v126;
          v175 = v127;
          v128 = 0;
          v129 = v177;
          sub_1B9852690(0, v177);
          sub_1B9852690(v128, v129);
          v174 = v138;
          v130 = &v41;
          MEMORY[0x1EEE9AC00](&v41, v8);
          v131 = &v41 - 6;
          *(&v41 - 4) = v9;
          *(&v41 - 3) = &v176;
          *(&v41 - 2) = &v175;
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
          sub_1B9852720();
          sub_1B98F57D8();
          v133 = v7;
          if (v7)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1B982F000, v134, v135, "Accepting incoming XPC connection request", v121, 2u);
            v119 = 0;
            sub_1B985281C(v124);
            sub_1B985281C(v127);
            sub_1B98F5C08();

            v120 = v133;
          }
        }

        else
        {

          v120 = v155;
        }

        v116 = v120;

        (*(v165 + 8))(v170, v163);

        __swift_destroy_boxed_opaque_existential_0(v192);
        v117 = 1;
        v118 = v116;
        return v117 & 1;
      }
    }

    v10 = v168;
    v11 = sub_1B98F1E00();
    (*(v165 + 16))(v10, v11, v163);
    (*(v159 + 16))(v162, v154, v157);
    v86 = (*(v159 + 80) + 16) & ~*(v159 + 80);
    v92 = swift_allocObject();
    (*(v159 + 32))(v92 + v86, v162, v157);
    v87 = v184;
    sub_1B9833758(v192, v184);
    v101 = 7;
    v102 = swift_allocObject();
    sub_1B98334F8(v87, v102 + 16);
    v115 = sub_1B98F5118();
    v88 = v115;
    v114 = sub_1B98F5BD8();
    v89 = v114;
    v96 = 17;
    v105 = swift_allocObject();
    v90 = v105;
    v95 = 34;
    *(v105 + 16) = 34;
    v106 = swift_allocObject();
    v91 = v106;
    v98 = 8;
    *(v106 + 16) = 8;
    v100 = 32;
    v12 = swift_allocObject();
    v13 = v92;
    v93 = v12;
    *(v12 + 16) = sub_1B985DB2C;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v93;
    v107 = v14;
    v94 = v14;
    *(v14 + 16) = sub_1B985DBB4;
    *(v14 + 24) = v15;
    v108 = swift_allocObject();
    v97 = v108;
    *(v108 + 16) = v95;
    v109 = swift_allocObject();
    v99 = v109;
    *(v109 + 16) = v98;
    v16 = swift_allocObject();
    v17 = v102;
    v103 = v16;
    *(v16 + 16) = sub_1B985DB9C;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v103;
    v112 = v18;
    v104 = v18;
    *(v18 + 16) = sub_1B985DBDC;
    *(v18 + 24) = v19;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v110 = sub_1B98F5F98();
    v111 = v20;

    v21 = v105;
    v22 = v111;
    *v111 = sub_1B985DBA4;
    v22[1] = v21;

    v23 = v106;
    v24 = v111;
    v111[2] = sub_1B985DBAC;
    v24[3] = v23;

    v25 = v107;
    v26 = v111;
    v111[4] = sub_1B985DBC0;
    v26[5] = v25;

    v27 = v108;
    v28 = v111;
    v111[6] = sub_1B985DBCC;
    v28[7] = v27;

    v29 = v109;
    v30 = v111;
    v111[8] = sub_1B985DBD4;
    v30[9] = v29;

    v31 = v111;
    v32 = v112;
    v111[10] = sub_1B985DBE8;
    v31[11] = v32;
    sub_1B9851B38();

    if (os_log_type_enabled(v115, v114))
    {
      v33 = v155;
      v79 = sub_1B98F5C28();
      v76 = v79;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v80 = sub_1B985263C(0);
      v78 = v80;
      v82 = 2;
      v81 = sub_1B985263C(2);
      v183 = v79;
      v182 = v80;
      v181 = v81;
      v83 = &v183;
      sub_1B9852690(v82, &v183);
      sub_1B9852690(v82, v83);
      v179 = sub_1B985DBA4;
      v180 = v90;
      sub_1B98526A4(&v179, v83, &v182, &v181);
      v84 = v33;
      v85 = v33;
      if (v33)
      {
        v74 = 0;

        __break(1u);
      }

      else
      {
        v179 = sub_1B985DBAC;
        v180 = v91;
        sub_1B98526A4(&v179, &v183, &v182, &v181);
        v72 = 0;
        v73 = 0;
        v179 = sub_1B985DBC0;
        v180 = v94;
        sub_1B98526A4(&v179, &v183, &v182, &v181);
        v70 = 0;
        v71 = 0;
        v179 = sub_1B985DBCC;
        v180 = v97;
        sub_1B98526A4(&v179, &v183, &v182, &v181);
        v68 = 0;
        v69 = 0;
        v179 = sub_1B985DBD4;
        v180 = v99;
        sub_1B98526A4(&v179, &v183, &v182, &v181);
        v66 = 0;
        v67 = 0;
        v179 = sub_1B985DBE8;
        v180 = v104;
        sub_1B98526A4(&v179, &v183, &v182, &v181);
        v64 = 0;
        v65 = 0;
        _os_log_impl(&dword_1B982F000, v88, v89, "Rejecting connection from process %{public}s with invalid entitlement: %{public}s", v76, 0x16u);
        sub_1B985281C(v78);
        sub_1B985281C(v81);
        sub_1B98F5C08();

        v75 = v64;
      }
    }

    else
    {
      v34 = v155;

      v75 = v34;
    }

    v63 = v75;

    (*(v165 + 8))(v168, v163);
    __swift_destroy_boxed_opaque_existential_0(v192);
    v117 = 0;
    v118 = v63;
  }

  else
  {
    v35 = v166;
    sub_1B985DAC0(v191);
    v36 = sub_1B98F1E00();
    (*(v165 + 16))(v35, v36, v163);
    v61 = sub_1B98F5118();
    v58 = v61;
    v60 = sub_1B98F5BD8();
    v59 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v62 = sub_1B98F5F98();
    if (os_log_type_enabled(v61, v60))
    {
      v37 = v155;
      v49 = sub_1B98F5C28();
      v45 = v49;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v47 = 0;
      v50 = sub_1B985263C(0);
      v48 = v50;
      v51 = sub_1B985263C(v47);
      v190 = v49;
      v189 = v50;
      v188 = v51;
      v52 = 0;
      v53 = &v190;
      sub_1B9852690(0, &v190);
      sub_1B9852690(v52, v53);
      v187 = v62;
      v54 = &v41;
      MEMORY[0x1EEE9AC00](&v41, v38);
      v55 = &v41 - 6;
      *(&v41 - 4) = v39;
      *(&v41 - 3) = &v189;
      *(&v41 - 2) = &v188;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v57 = v37;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v58, v59, "Rejecting connection from unentitled process", v45, 2u);
        v43 = 0;
        sub_1B985281C(v48);
        sub_1B985281C(v51);
        sub_1B98F5C08();

        v44 = v57;
      }
    }

    else
    {

      v44 = v155;
    }

    v42 = v44;

    (*(v165 + 8))(v166, v163);
    v117 = 0;
    v118 = v42;
  }

  return v117 & 1;
}

uint64_t *sub_1B98578D4@<X0>(uint64_t *a1@<X8>)
{
  sub_1B985DA50(v4);
  a1[3] = &unk_1F3796530;
  a1[4] = &off_1F3796548;
  v1 = swift_allocObject();
  *a1 = v1;
  return sub_1B9880E2C(v4, v1 + 16);
}

uint64_t sub_1B9857954()
{
  type metadata accessor for ContactsDataSource();
  memset(v1, 0, sizeof(v1));
  return sub_1B988BE70(v1);
}

uint64_t sub_1B98579A8()
{
  type metadata accessor for CallHistoryDataSource();
  sub_1B985DA08(v1);
  return sub_1B987A460(v1);
}

uint64_t sub_1B9857A28()
{
  type metadata accessor for CallDirectoryDataSource();
  sub_1B985D9C0(v1);
  return sub_1B9872CA0(v1);
}

uint64_t sub_1B9857A74@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ServerTrustScoreDataSource();
  result = sub_1B9896AFC();
  a1[3] = v2;
  a1[4] = &off_1F3797560;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall CommunicationTrustDaemon.start()()
{
  v100 = 0;
  v119 = 0;
  v118 = 0;
  v88 = 0;
  v97 = sub_1B98F5138();
  v89 = v97;
  v90 = *(v97 - 8);
  v96 = v90;
  v91 = v90;
  v92 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v97 - 8, v97);
  v0 = &v40 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v0;
  v94 = *v1;
  v95 = v1[1];
  v118 = v94;
  v119 = v95;
  v2 = sub_1B98F1E00();
  (*(v96 + 16))(v0, v2, v97);
  v102 = sub_1B98F5118();
  v98 = v102;
  v101 = sub_1B98F5BD8();
  v99 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v103 = sub_1B98F5F98();
  if (os_log_type_enabled(v102, v101))
  {
    v3 = v88;
    v79 = sub_1B98F5C28();
    v75 = v79;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v77 = 0;
    v80 = sub_1B985263C(0);
    v78 = v80;
    v81 = sub_1B985263C(v77);
    v107 = v79;
    v106 = v80;
    v105 = v81;
    v82 = 0;
    v83 = &v107;
    sub_1B9852690(0, &v107);
    sub_1B9852690(v82, v83);
    v104 = v103;
    v84 = &v40;
    MEMORY[0x1EEE9AC00](&v40, v4);
    v85 = &v40 - 6;
    *(&v40 - 4) = v5;
    *(&v40 - 3) = &v106;
    *(&v40 - 2) = &v105;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v87 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v98, v99, "Starting communicationtrustd", v75, 2u);
      v73 = 0;
      sub_1B985281C(v78);
      sub_1B985281C(v81);
      sub_1B98F5C08();

      v74 = v87;
    }
  }

  else
  {

    v74 = v88;
  }

  v6 = v94;

  (*(v91 + 8))(v93, v89);

  v53 = 0;
  IsHandleBlocked = type metadata accessor for IsHandleBlocked();
  v117[0] = v6;
  v117[1] = v95;
  v40 = sub_1B9858694(v117);
  v41 = v7;
  v68 = 32;
  v67 = 7;
  v8 = swift_allocObject();
  v9 = v41;
  v43 = v8;
  *(v8 + 16) = v40;
  *(v8 + 24) = v9;
  sub_1B9853268();
  sub_1B98F51A8();
  v10 = v94;

  v116[0] = v10;
  v116[1] = v95;
  v44 = sub_1B98587FC(v116);
  v45 = v11;
  v12 = swift_allocObject();
  v13 = v45;
  v46 = v12;
  *(v12 + 16) = v44;
  *(v12 + 24) = v13;
  sub_1B9853404();
  sub_1B98F51A8();
  v14 = v94;

  v115[0] = v14;
  v115[1] = v95;
  v47 = sub_1B9858DD0(v115);
  v48 = v15;
  v16 = swift_allocObject();
  v17 = v48;
  v49 = v16;
  *(v16 + 16) = v47;
  *(v16 + 24) = v17;
  sub_1B9853748();
  sub_1B98F5198();
  v18 = v94;

  v114[0] = v18;
  v114[1] = v95;
  v50 = sub_1B9859C38(v114);
  v51 = v19;
  v20 = swift_allocObject();
  v21 = v51;
  v52 = v20;
  *(v20 + 16) = v50;
  *(v20 + 24) = v21;
  sub_1B98534D0();
  sub_1B98F51A8();
  v22 = v94;

  updated = type metadata accessor for UpdateServerTrust();
  v113[0] = v22;
  v113[1] = v95;
  v54 = sub_1B985A330(v113);
  v56 = v23;
  sub_1B985383C();
  sub_1B98F51B8();
  v24 = v94;

  v112[0] = v24;
  v112[1] = v95;
  v57 = sub_1B985AD44(v112);
  v58 = v25;
  v26 = swift_allocObject();
  v27 = v58;
  v59 = v26;
  *(v26 + 16) = v57;
  *(v26 + 24) = v27;
  sub_1B9831E84();
  sub_1B98F51A8();
  v28 = v94;

  v111[0] = v28;
  v111[1] = v95;
  v60 = sub_1B985AEDC(v111);
  v61 = v29;
  v30 = swift_allocObject();
  v31 = v61;
  v62 = v30;
  *(v30 + 16) = v60;
  *(v30 + 24) = v31;
  sub_1B9835D90();
  sub_1B98F51A8();
  v32 = v94;

  v110[0] = v32;
  v110[1] = v95;
  v63 = sub_1B985B5C4(v110);
  v64 = v33;
  sub_1B98539C8();
  sub_1B98F51B8();
  v34 = v94;

  v109[0] = v34;
  v109[1] = v95;
  v65 = sub_1B985BE74(v109);
  v66 = v35;
  sub_1B9853B60();
  sub_1B98F51B8();
  v36 = v94;

  v108[0] = v36;
  v108[1] = v95;
  v69 = sub_1B985C724(v108);
  v70 = v37;
  v38 = swift_allocObject();
  v39 = v70;
  v71 = v38;
  *(v38 + 16) = v69;
  *(v38 + 24) = v39;
  sub_1B9853C2C();
  sub_1B98F51A8();

  sub_1B98F51C8();

  v72 = [objc_opt_self() currentRunLoop];
  [v72 run];
}

uint64_t (*sub_1B9858694(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B983AA64;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9858788@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t (*sub_1B98587FC(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985EDD4;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B98588EC(uint64_t a1)
{
  v26 = a1;
  v37 = 0;
  v46 = 0;
  v45 = 0;
  v25 = 0;
  v34 = sub_1B98F5138();
  v27 = v34;
  v28 = *(v34 - 8);
  v33 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  v1 = &v8 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v46 = MEMORY[0x1EEE9AC00](v26, v34);
  v32 = *(v2 + 8);
  v45 = v2;
  v3 = sub_1B98F1E00();
  (*(v33 + 16))(v1, v3, v34);
  v39 = sub_1B98F5118();
  v35 = v39;
  v38 = sub_1B98F5BD8();
  v36 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v40 = sub_1B98F5F98();
  if (os_log_type_enabled(v39, v38))
  {
    v4 = v25;
    v16 = sub_1B98F5C28();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = 0;
    v17 = sub_1B985263C(0);
    v15 = v17;
    v18 = sub_1B985263C(v14);
    v44[0] = v16;
    v43 = v17;
    v42 = v18;
    v19 = 0;
    v20 = v44;
    sub_1B9852690(0, v44);
    sub_1B9852690(v19, v20);
    v41 = v40;
    v21 = &v8;
    MEMORY[0x1EEE9AC00](&v8, v5);
    v22 = (&v8 - 6);
    *(&v8 - 4) = v6;
    *(&v8 - 3) = &v43;
    *(&v8 - 2) = &v42;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v35, v36, "Handling incoming AreHandlesBlocked message", v12, 2u);
      v10 = 0;
      sub_1B985281C(v15);
      sub_1B985281C(v18);
      sub_1B98F5C08();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v29 + 8))(v31, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5280, &qword_1B98F8FE8);
  sub_1B98F5158();
  v8 = v44[1];
  sub_1B98F54D8();

  v9 = sub_1B9898018(v8);

  return v9;
}

uint64_t sub_1B9858D60@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B9858DD0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9138;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9858E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  v4 = v3[6];
  return MEMORY[0x1EEE6DFA0](sub_1B9858EC8, 0);
}

uint64_t sub_1B9858EC8()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B9858F90;
  v4 = v6[8];

  return sub_1B985917C(v4);
}

uint64_t sub_1B9858F90(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 88);
  *(v8 + 48) = *v2;
  v9 = (v8 + 48);
  *(v8 + 96) = v1;

  if (v1)
  {
    v6 = *v9;

    return MEMORY[0x1EEE6DFA0](sub_1B9859130, 0);
  }

  else
  {
    v4 = *(*v9 + 8);

    return v4(a1);
  }
}

uint64_t sub_1B9859130()
{
  v1 = v0;
  *(v0 + 48) = v0;
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 48);
  v4 = *(v1 + 96);
  return v2();
}

uint64_t sub_1B985917C(uint64_t a1)
{
  v2[13] = a1;
  v2[6] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v3 = sub_1B98F5138();
  v2[14] = v3;
  v7 = *(v3 - 8);
  v2[15] = v7;
  v4 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[7] = a1;
  v2[17] = *(v1 + 8);
  v2[8] = v1;
  v5 = v2[6];

  return MEMORY[0x1EEE6DFA0](sub_1B9859294, 0);
}

uint64_t sub_1B9859294()
{
  v1 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v0[6] = v0;
  v2 = sub_1B98F1E00();
  (*(v19 + 16))(v1, v2, v20);
  v22 = sub_1B98F5118();
  v21 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v23 = sub_1B98F5F98();
  if (os_log_type_enabled(v22, v21))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = sub_1B985263C(0);
    v16 = sub_1B985263C(0);
    *(v18 + 72) = buf;
    *(v18 + 80) = v15;
    *(v18 + 88) = v16;
    sub_1B9852690(0, (v18 + 72));
    sub_1B9852690(0, (v18 + 72));
    *(v18 + 96) = v23;
    v17 = swift_task_alloc();
    v17[2] = v18 + 72;
    v17[3] = v18 + 80;
    v17[4] = v18 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v22, v21, "Handling incoming GetTrustScores message", buf, 2u);
    sub_1B985281C(v15);
    sub_1B985281C(v16);
    sub_1B98F5C08();
  }

  v10 = *(v18 + 136);
  v8 = *(v18 + 128);
  v9 = *(v18 + 112);
  v11 = *(v18 + 104);
  v7 = *(v18 + 120);
  MEMORY[0x1E69E5920](v22);
  (*(v7 + 8))(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5288, &qword_1B98F8FF8);
  sub_1B98F5158();
  v13 = *(v18 + 16);
  *(v18 + 144) = v13;
  sub_1B98F54D8();

  sub_1B98F5158();
  v3 = *(v18 + 32);
  v12 = *(v18 + 40);

  *(v18 + 25) = v12;
  v4 = swift_task_alloc();
  *(v18 + 152) = v4;
  *v4 = *(v18 + 48);
  v4[1] = sub_1B98596D4;
  v5 = *(v18 + 136);

  return sub_1B989A4E4(v13, (v18 + 25));
}

uint64_t sub_1B98596D4(uint64_t a1)
{
  v11 = *v2;
  v3 = *(*v2 + 152);
  v11[6] = *v2;
  v12 = v11 + 6;
  v11[20] = v1;

  if (v1)
  {
    v7 = *v12;

    return MEMORY[0x1EEE6DFA0](sub_1B98598B4, 0);
  }

  else
  {
    v4 = v11[18];
    v8 = v11[17];
    v9 = v11[16];

    v5 = *(*v12 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B98598B4()
{
  v1 = v0[18];
  v7 = v0[17];
  v8 = v0[16];
  v0[6] = v0;

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[20];

  return v3();
}

uint64_t sub_1B9859978(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 32) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9859A90;

  return v8(a2);
}

uint64_t sub_1B9859A90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  *(v3 + 16) = *v2;
  v8 = v3 + 16;
  v9 = v3 + 16;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    **(v8 + 8) = a1;
    v5 = *(*v9 + 8);
  }

  return v5();
}

uint64_t (*sub_1B9859C38(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985EBAC;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9859CD0(uint64_t a1)
{
  v4 = sub_1B9859D60(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B9859D60(uint64_t a1)
{
  v38 = a1;
  v49 = 0;
  v60 = 0;
  v59 = 0;
  v46 = sub_1B98F5138();
  v39 = v46;
  v40 = *(v46 - 8);
  v45 = v40;
  v41 = v40;
  v42 = *(v40 + 64);
  v1 = v10 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  v60 = MEMORY[0x1EEE9AC00](v38, v46);
  v44 = *(v2 + 8);
  v59 = v2;
  v3 = sub_1B98F1E00();
  (*(v45 + 16))(v1, v3, v46);
  v51 = sub_1B98F5118();
  v47 = v51;
  v50 = sub_1B98F5BD8();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v52 = sub_1B98F5F98();
  if (os_log_type_enabled(v51, v50))
  {
    v35 = v37;
    v27 = sub_1B98F5C28();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v25 = 0;
    v28 = sub_1B985263C(0);
    v26 = v28;
    v29 = sub_1B985263C(v25);
    v56 = v27;
    v55 = v28;
    v54 = v29;
    v30 = 0;
    v31 = &v56;
    sub_1B9852690(0, &v56);
    sub_1B9852690(v30, v31);
    v53 = v52;
    v32 = v10;
    MEMORY[0x1EEE9AC00](v10, v4);
    v33 = &v10[-6];
    v10[-4] = v5;
    v10[-3] = &v55;
    v10[-2] = &v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v6 = v35;
    sub_1B98F57D8();
    v36 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v47, v48, "Handling incoming GetTrustScoresSync message", v23, 2u);
      v21 = 0;
      sub_1B985281C(v26);
      sub_1B985281C(v29);
      sub_1B98F5C08();

      v22 = v36;
    }
  }

  else
  {

    v22 = v37;
  }

  v17 = v22;

  (*(v41 + 8))(v43, v39);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5290, &qword_1B98F9000);
  sub_1B98F5158();
  v16 = v58;
  v13 = v58;
  sub_1B98F54D8();

  sub_1B98F5158();
  v15 = v57[9];

  v7 = v17;
  v57[0] = v15;
  v8 = sub_1B98980B0(v16, v57);
  v18 = v7;
  v19 = v8;
  v20 = v7;
  if (v7)
  {
    v10[1] = v20;
  }

  else
  {
    v11 = v19;
    v12 = 0;

    return v11;
  }
}

uint64_t sub_1B985A2C0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B985A330(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9128;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985A3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  v4 = v3[6];
  return MEMORY[0x1EEE6DFA0](sub_1B985A428, 0);
}

uint64_t sub_1B985A428()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985A4F0;
  v4 = v6[8];

  return sub_1B985A6D4(v4);
}

uint64_t sub_1B985A4F0()
{
  v6 = *v1;
  v2 = *(*v1 + 88);
  *(v6 + 48) = *v1;
  v7 = (v6 + 48);
  *(v6 + 96) = v0;

  if (v0)
  {
    v5 = *v7;

    return MEMORY[0x1EEE6DFA0](sub_1B985A688, 0);
  }

  else
  {
    v3 = *(*v7 + 8);

    return v3();
  }
}

uint64_t sub_1B985A688()
{
  v1 = v0;
  *(v0 + 48) = v0;
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 48);
  v4 = *(v1 + 96);
  return v2();
}

uint64_t sub_1B985A6D4(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = *(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  updated = type metadata accessor for UpdateServerTrust();
  v2[11] = updated;
  v9 = *(*(updated - 8) + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_1B98F5138();
  v2[15] = v5;
  v10 = *(v5 - 8);
  v2[16] = v10;
  v6 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[3] = a1;
  v2[18] = *(v1 + 8);
  v2[4] = v1;
  v7 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B985A888, 0);
}

uint64_t sub_1B985A888()
{
  v1 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v0[2] = v0;
  v2 = sub_1B98F1E00();
  (*(v25 + 16))(v1, v2, v26);
  v28 = sub_1B98F5118();
  v27 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v29 = sub_1B98F5F98();
  if (os_log_type_enabled(v28, v27))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v21 = sub_1B985263C(0);
    v22 = sub_1B985263C(0);
    *(v24 + 40) = buf;
    *(v24 + 48) = v21;
    *(v24 + 56) = v22;
    sub_1B9852690(0, (v24 + 40));
    sub_1B9852690(0, (v24 + 40));
    *(v24 + 64) = v29;
    v23 = swift_task_alloc();
    v23[2] = v24 + 40;
    v23[3] = v24 + 48;
    v23[4] = v24 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v28, v27, "Handling incoming UpdateServerTrust message", buf, 2u);
    sub_1B985281C(v21);
    sub_1B985281C(v22);
    sub_1B98F5C08();
  }

  v14 = *(v24 + 144);
  v15 = *(v24 + 136);
  v8 = *(v24 + 120);
  v16 = *(v24 + 112);
  v17 = *(v24 + 104);
  v18 = *(v24 + 96);
  v10 = *(v24 + 88);
  v19 = *(v24 + 80);
  v9 = *(v24 + 72);
  v7 = *(v24 + 128);
  MEMORY[0x1E69E5920](v28);
  (*(v7 + 8))(v15, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5298, &qword_1B98F9010);
  sub_1B98F5158();
  sub_1B9833334(v16, v19);
  sub_1B98538BC(v16);
  sub_1B98F5158();
  v11 = *(v17 + *(v10 + 20));
  sub_1B98538BC(v17);
  sub_1B98F5158();
  v3 = (v18 + *(v10 + 24));
  v12 = *v3;
  v13 = v3[1];
  sub_1B98F54D8();
  sub_1B98538BC(v18);
  sub_1B989FA58(v19, v11 & 1, v12, v13);

  sub_1B983A3AC(v19);

  v4 = *(*(v24 + 16) + 8);
  v5 = *(v24 + 16);

  return v4();
}

uint64_t (*sub_1B985AD44(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E98C;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985ADDC(uint64_t a1)
{
  v4 = sub_1B9838560(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B985AE6C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*sub_1B985AEDC(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E960;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985AF74(uint64_t a1)
{
  v4 = sub_1B985B004(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B985B004(uint64_t a1)
{
  v38 = a1;
  v49 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v46 = sub_1B98F5138();
  v39 = v46;
  v40 = *(v46 - 8);
  v45 = v40;
  v41 = v40;
  v42 = *(v40 + 64);
  v1 = &v11 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  v60 = MEMORY[0x1EEE9AC00](v38, v46);
  v44 = *(v2 + 8);
  v59 = v2;
  v3 = sub_1B98F1E00();
  (*(v45 + 16))(v1, v3, v46);
  v51 = sub_1B98F5118();
  v47 = v51;
  v50 = sub_1B98F5BD8();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v52 = sub_1B98F5F98();
  if (os_log_type_enabled(v51, v50))
  {
    v35 = v37;
    v27 = sub_1B98F5C28();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v25 = 0;
    v28 = sub_1B985263C(0);
    v26 = v28;
    v29 = sub_1B985263C(v25);
    v56 = v27;
    v55 = v28;
    v54 = v29;
    v30 = 0;
    v31 = &v56;
    sub_1B9852690(0, &v56);
    sub_1B9852690(v30, v31);
    v53 = v52;
    v32 = &v11;
    MEMORY[0x1EEE9AC00](&v11, v4);
    v33 = &v11 - 6;
    *(&v11 - 4) = v5;
    *(&v11 - 3) = &v55;
    *(&v11 - 2) = &v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v6 = v35;
    sub_1B98F57D8();
    v36 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v47, v48, "Handling incoming FetchBlockedContactsRequest message", v23, 2u);
      v21 = 0;
      sub_1B985281C(v26);
      sub_1B985281C(v29);
      sub_1B98F5C08();

      v22 = v36;
    }
  }

  else
  {

    v22 = v37;
  }

  v18 = v22;

  (*(v41 + 8))(v43, v39);

  v15 = sub_1B989F84C();
  v14 = v15;

  v58 = v15;
  v57[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A0, &qword_1B98F9018);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A8, &qword_1B98F9020);
  v7 = sub_1B985E0C4();
  v8 = v18;
  v9 = sub_1B985D064(sub_1B985CEAC, 0, v16, MEMORY[0x1E6969080], v17, v7, MEMORY[0x1E69E7288], v57);
  v19 = v8;
  v20 = v9;
  if (v8)
  {
    v11 = v57[0];
  }

  else
  {
    v12 = v20;
    v13 = 0;

    return v12;
  }
}

uint64_t sub_1B985B554@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B985B5C4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9118;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985B65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  v4 = v3[6];
  return MEMORY[0x1EEE6DFA0](sub_1B985B6BC, 0);
}

uint64_t sub_1B985B6BC()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985B784;
  v4 = v6[8];

  return sub_1B985B968(v4);
}

uint64_t sub_1B985B784()
{
  v6 = *v1;
  v2 = *(*v1 + 88);
  *(v6 + 48) = *v1;
  v7 = (v6 + 48);
  *(v6 + 96) = v0;

  if (v0)
  {
    v5 = *v7;

    return MEMORY[0x1EEE6DFA0](sub_1B985B91C, 0);
  }

  else
  {
    v3 = *(*v7 + 8);

    return v3();
  }
}

uint64_t sub_1B985B91C()
{
  v1 = v0;
  *(v0 + 48) = v0;
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 48);
  v4 = *(v1 + 96);
  return v2();
}

uint64_t sub_1B985B968(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[11] = v3;
  v7 = *(v3 - 8);
  v2[12] = v7;
  v4 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[3] = a1;
  v2[14] = *(v1 + 8);
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B985BA80, 0);
}

uint64_t sub_1B985BA80()
{
  v1 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v0[2] = v0;
  v2 = sub_1B98F1E00();
  (*(v17 + 16))(v1, v2, v18);
  v20 = sub_1B98F5118();
  v19 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v21 = sub_1B98F5F98();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = sub_1B985263C(0);
    v14 = sub_1B985263C(0);
    *(v16 + 48) = buf;
    *(v16 + 56) = v13;
    *(v16 + 64) = v14;
    sub_1B9852690(0, (v16 + 48));
    sub_1B9852690(0, (v16 + 48));
    *(v16 + 72) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 48;
    v15[3] = v16 + 56;
    v15[4] = v16 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v20, v19, "Handling incoming SaveHandles message", buf, 2u);
    sub_1B985281C(v13);
    sub_1B985281C(v14);
    sub_1B98F5C08();
  }

  v10 = *(v16 + 112);
  v11 = *(v16 + 104);
  v8 = *(v16 + 88);
  v3 = *(v16 + 80);
  v7 = *(v16 + 96);
  MEMORY[0x1E69E5920](v20);
  (*(v7 + 8))(v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52B8, &qword_1B98F9030);
  sub_1B98F5158();
  v9 = *(v16 + 40);
  sub_1B98F54D8();

  sub_1B989F940(v9);

  v4 = *(*(v16 + 16) + 8);
  v5 = *(v16 + 16);

  return v4();
}

void *sub_1B985BE74(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9108;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985BF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  v4 = v3[6];
  return MEMORY[0x1EEE6DFA0](sub_1B985BF6C, 0);
}

uint64_t sub_1B985BF6C()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985C034;
  v4 = v6[8];

  return sub_1B985C218(v4);
}

uint64_t sub_1B985C034()
{
  v6 = *v1;
  v2 = *(*v1 + 88);
  *(v6 + 48) = *v1;
  v7 = (v6 + 48);
  *(v6 + 96) = v0;

  if (v0)
  {
    v5 = *v7;

    return MEMORY[0x1EEE6DFA0](sub_1B985C1CC, 0);
  }

  else
  {
    v3 = *(*v7 + 8);

    return v3();
  }
}

uint64_t sub_1B985C1CC()
{
  v1 = v0;
  *(v0 + 48) = v0;
  v2 = *(*(v0 + 48) + 8);
  v3 = *(v0 + 48);
  v4 = *(v1 + 96);
  return v2();
}

uint64_t sub_1B985C218(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[11] = v3;
  v7 = *(v3 - 8);
  v2[12] = v7;
  v4 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[3] = a1;
  v2[14] = *(v1 + 8);
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B985C330, 0);
}

uint64_t sub_1B985C330()
{
  v1 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v0[2] = v0;
  v2 = sub_1B98F1E00();
  (*(v17 + 16))(v1, v2, v18);
  v20 = sub_1B98F5118();
  v19 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v21 = sub_1B98F5F98();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = sub_1B985263C(0);
    v14 = sub_1B985263C(0);
    *(v16 + 48) = buf;
    *(v16 + 56) = v13;
    *(v16 + 64) = v14;
    sub_1B9852690(0, (v16 + 48));
    sub_1B9852690(0, (v16 + 48));
    *(v16 + 72) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 48;
    v15[3] = v16 + 56;
    v15[4] = v16 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v20, v19, "Handling incoming RemoveHandles message", buf, 2u);
    sub_1B985281C(v13);
    sub_1B985281C(v14);
    sub_1B98F5C08();
  }

  v10 = *(v16 + 112);
  v11 = *(v16 + 104);
  v8 = *(v16 + 88);
  v3 = *(v16 + 80);
  v7 = *(v16 + 96);
  MEMORY[0x1E69E5920](v20);
  (*(v7 + 8))(v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52C0, &qword_1B98F9040);
  sub_1B98F5158();
  v9 = *(v16 + 40);
  sub_1B98F54D8();

  sub_1B989F9CC(v9);

  v4 = *(*(v16 + 16) + 8);
  v5 = *(v16 + 16);

  return v4();
}

uint64_t (*sub_1B985C724(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E56C;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985C818(uint64_t a1)
{
  v26 = a1;
  v37 = 0;
  v46 = 0;
  v45 = 0;
  v25 = 0;
  v34 = sub_1B98F5138();
  v27 = v34;
  v28 = *(v34 - 8);
  v33 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  v1 = &v8[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = v1;
  v46 = MEMORY[0x1EEE9AC00](v26, v34);
  v32 = *(v2 + 8);
  v45 = v2;
  v3 = sub_1B98F1E00();
  (*(v33 + 16))(v1, v3, v34);
  v39 = sub_1B98F5118();
  v35 = v39;
  v38 = sub_1B98F5BD8();
  v36 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v40 = sub_1B98F5F98();
  if (os_log_type_enabled(v39, v38))
  {
    v4 = v25;
    v16 = sub_1B98F5C28();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = 0;
    v17 = sub_1B985263C(0);
    v15 = v17;
    v18 = sub_1B985263C(v14);
    v44 = v16;
    v43 = v17;
    v42 = v18;
    v19 = 0;
    v20 = &v44;
    sub_1B9852690(0, &v44);
    sub_1B9852690(v19, v20);
    v41 = v40;
    v21 = v8;
    MEMORY[0x1EEE9AC00](v8, v5);
    v22 = &v8[-48];
    *&v8[-32] = v6;
    *&v8[-24] = &v43;
    *&v8[-16] = &v42;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v35, v36, "Handling incoming IsBlockListEmpty message", v12, 2u);
      v10 = 0;
      sub_1B985281C(v15);
      sub_1B985281C(v18);
      sub_1B98F5C08();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v29 + 8))(v31, v27);

  v9 = sub_1B989FB20();

  return v9 & 1;
}

uint64_t sub_1B985CC34@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B985CCA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0);
  v3 = sub_1B98F5178();
  v4 = v0;
  if (v0)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = sub_1B98F55E8();
    v6 = v1;
  }

  return v5;
}

uint64_t sub_1B985CD58(void *a1)
{
  v9 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v13 = sub_1B98F5C38();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v5);
  v12 = &v4 - v6;
  v7 = *(v1 - 8);
  v8 = v1 - 8;
  (*(v7 + 16))();
  (*(v7 + 56))(v12, 0, 1, v9);
  v14 = sub_1B98F1B88(v12, v9);
  v15 = v2;
  (*(v10 + 8))(v12, v13);
  return v14;
}

uint64_t sub_1B985CEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v18 = *a1;
  v19 = 0;
  v14 = objc_opt_self();
  MEMORY[0x1E69E5928](v18, v14, v3);
  v17 = 0;
  v16 = [v14 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v17];
  v15 = v17;
  MEMORY[0x1E69E5928](v17, v4, v5);
  v6 = v19;
  v19 = v15;
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  if (v16)
  {
    *a3 = sub_1B98F4F98();
    a3[1] = v7;
    result = MEMORY[0x1E69E5920](v16);
    *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = v19;
    v11 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v10);
    swift_willThrow();
    result = v11;
    *a2 = v11;
    v9 = __OFSUB__(*MEMORY[0x1E69E9840], v20);
  }

  return result;
}

uint64_t sub_1B985D064(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a1;
  v40 = a2;
  v64 = a3;
  v54 = a4;
  v41 = a5;
  v63 = a6;
  v43 = a8;
  v44 = "Fatal error";
  v45 = "Range requires lowerBound <= upperBound";
  v46 = "Swift/Range.swift";
  v47 = "Index out of range";
  v48 = "invalid Collection: count differed in successive traversals";
  v49 = "Swift/ArrayShared.swift";
  v74[3] = a3;
  v74[2] = a4;
  v74[1] = a5;
  v50 = *(a5 - 8);
  v51 = a5 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2);
  v53 = &v20 - v52;
  v9 = *(v8 + 8);
  v55 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v55, v63);
  v60 = &v20 - v59;
  v61 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v12);
  v62 = &v20 - v61;
  v65 = swift_getAssociatedTypeWitness();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v64, v63);
  v69 = &v20 - v68;
  v70 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v15);
  v71 = &v20 - v70;
  v72 = sub_1B98F5B08();
  if (!v72)
  {
    goto LABEL_24;
  }

  v74[0] = sub_1B98F5DA8();
  v38 = sub_1B98F5DB8();
  sub_1B98F5D88();
  result = sub_1B98F5AF8();
  if (v72 < 0)
  {
    sub_1B98F5E08();
    __break(1u);
LABEL_24:
    v22 = sub_1B98F58D8();
    v23 = v42;
    return v22;
  }

  if (!v72)
  {
LABEL_19:
    v28 = v42;
LABEL_20:
    v24 = v28;
    sub_1B98F5B18();
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    v27 = sub_1B98F5638();
    v25 = *(v66 + 8);
    v26 = v66 + 8;
    v25(v69, v65);
    if ((v27 & 1) == 0)
    {
      sub_1B98F5E48();
      __break(1u);
    }

    v25(v71, v65);
    v21 = v74[0];

    v22 = v21;
    v23 = v24;
    return v22;
  }

  v36 = 0;
  for (i = v42; ; i = v32)
  {
    v34 = i;
    v35 = v36;
    if (v36 < 0 || v35 >= v72)
    {
      goto LABEL_18;
    }

    if (v72 < 0)
    {
      sub_1B98F5E08();
      __break(1u);
LABEL_18:
      sub_1B98F5E48();
      __break(1u);
      goto LABEL_19;
    }

    v33 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v31 = &v73;
    v30 = sub_1B98F5B98();
    (*(v57 + 16))(v60);
    v30();
    v18 = v34;
    v39(v60, v53);
    v32 = v18;
    if (v18)
    {
      (*(v57 + 8))(v60, AssociatedTypeWitness);
      (*(v66 + 8))(v71, v65);
      sub_1B985E540(v74);
      (*(v50 + 32))(v43, v53, v41);
      return v29;
    }

    (*(v57 + 8))(v60, AssociatedTypeWitness);
    sub_1B98F5D98();
    sub_1B98F5B28();
    if (v33 == v72)
    {
      v28 = v32;
      goto LABEL_20;
    }

    result = v32;
    v36 = v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B985D9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9873C14();
  a1[3] = &unk_1F3795390;
  a1[4] = &off_1F37953A8;
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1B985DA08@<X0>(void *a1@<X8>)
{
  result = sub_1B987A6B8();
  a1[3] = &unk_1F37955C8;
  a1[4] = &off_1F37955E0;
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B985DA50@<X0>(uint64_t a1@<X8>)
{
  result = nullsub_25();
  *(a1 + 24) = &unk_1F37959C0;
  *(a1 + 32) = &off_1F37959D0;
  return result;
}

uint64_t *sub_1B985DAC0(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t sub_1B985DB2C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B985CCA8();
}

unint64_t sub_1B985DBF4()
{
  v2 = qword_1EBBD5270;
  if (!qword_1EBBD5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985DCD8(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B985DDC8;

  return sub_1B9859978(a1, a2, v8);
}

uint64_t sub_1B985DDC8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_1B985E0C4()
{
  v2 = qword_1EBBD52B0;
  if (!qword_1EBBD52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD52A0, &qword_1B98F9018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52B0);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B985E218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B985E35C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t *sub_1B985E540(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B985E56C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B985C7BC(a1);
}

uint64_t sub_1B985E578(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985E644;

  return sub_1B985BF0C(a1, v6, v7);
}

uint64_t sub_1B985E644()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B985E76C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985E838;

  return sub_1B985B65C(a1, v6, v7);
}

uint64_t sub_1B985E838()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B985E960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B985AF74(a1);
}

uint64_t sub_1B985E98C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B985ADDC(a1);
}

uint64_t sub_1B985E9B8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985EA84;

  return sub_1B985A3C8(a1, v6, v7);
}

uint64_t sub_1B985EA84()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B985EBAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B9859CD0(a1);
}

uint64_t sub_1B985EBD8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B985ECA4;

  return sub_1B9858E68(a1, v6, v7);
}

uint64_t sub_1B985ECA4(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_1B985EDD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B9858894(a1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_1B985EE4C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B985EEA0@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t sub_1B985EEB4@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t sub_1B985EEC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B9832680(a1, a5);
  result = type metadata accessor for UpdateServerTrust();
  *(a5 + *(result + 20)) = a2;
  v6 = (a5 + *(result + 24));
  *v6 = a3;
  v6[1] = a4;
  return result;
}

uint64_t sub_1B985EF44()
{
  if (qword_1EDBDB6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B98F5148();
  return __swift_project_value_buffer(v0, qword_1EDBDD4D0);
}

uint64_t sub_1B985EFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B985EF44();
  v1 = sub_1B98F5148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL sub_1B985F034(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B985F1F8()
{
  v2 = qword_1EBBD52C8;
  if (!qword_1EBBD52C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52C8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B985F318@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985F034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B985F368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B985F12C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B985F3FC(uint64_t a1)
{
  v9 = a1;
  v24 = 0;
  v23 = 0;
  v18 = type metadata accessor for BlockedHandle();
  v8 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v2);
  v20 = v7 - v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5488, &qword_1B98FA9B8);
  v10 = *(v17 - 8);
  v11 = v17 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v9, v3);
  v15 = v7 - v12;
  v24 = v4;
  v23 = v1;
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  sub_1B98377D4();
  sub_1B98F6078();
  sub_1B9833334(v16, v20);
  sub_1B9868408();
  v5 = v19;
  sub_1B98F5F28();
  v21 = v5;
  v22 = v5;
  if (v5)
  {
    v7[1] = v22;
  }

  sub_1B983A3AC(v20);
  return (*(v10 + 8))(v15, v17);
}

BOOL sub_1B985F648(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B985F80C()
{
  v2 = qword_1EBBD52D0;
  if (!qword_1EBBD52D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985F8C8(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5498, &qword_1B98FA9C8);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6, v13);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B985FE20();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B985FABC(uint64_t *a1)
{
  v14 = a1;
  v26 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5490, &qword_1B98FA9C0);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v5 - v18;
  v26 = MEMORY[0x1EEE9AC00](v14, v1);
  v21 = v26[3];
  v22 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v21);
  sub_1B985FE20();
  v2 = v20;
  sub_1B98F6068();
  v23 = v2;
  v24 = v2;
  if (v2)
  {
    v7 = v24;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v3 = v23;
    sub_1B98F5EB8();
    v12 = v3;
    v13 = v3;
    if (!v3)
    {
      v9 = v25;
      sub_1B98F54D8();
      v8 = &v27;
      v27 = v9;
      (*(v16 + 8))(v19, v15);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_1B985347C(v8);
      return v9;
    }

    v6 = v13;
    (*(v16 + 8))(v19, v15);
    v7 = v6;
  }

  v5[1] = v7;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

BOOL sub_1B985FD6C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985F648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B985FDBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B985F740();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B985FE20()
{
  v2 = qword_1EBBD52D8;
  if (!qword_1EBBD52D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B985FECC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B985FABC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B985FF90()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B985FFCC(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1BFADD650](v12[0], v2, a1, a2);
  sub_1B9868BFC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_1B98F54D8();
  v11[0] = sub_1B98F55E8();
  v11[1] = v3;
  v6 = MEMORY[0x1BFADD650](v11[0], v3, a1, a2);
  sub_1B9868BFC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_1B9860310()
{
  v2 = qword_1EBBD52E0;
  if (!qword_1EBBD52E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B986043C(uint64_t a1)
{
  v8 = a1;
  v29 = 0;
  v28 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54D0, &qword_1B98FA9E8);
  v9 = *(v18 - 8);
  v10 = v18 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v6 - v11;
  v29 = MEMORY[0x1EEE9AC00](v8, v2);
  v16 = *v1;
  v12 = *(v1 + 8);
  v28 = v1;
  v13 = v29[3];
  v14 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v13);
  sub_1B9860B5C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v21 = &v27;
  v27 = v16;
  v17 = &v26;
  v26 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  sub_1B9869048();
  v3 = v20;
  sub_1B98F5F28();
  v22 = v3;
  v23 = v3;
  if (v3)
  {
    v6[2] = v23;
    sub_1B9868DA4(&v27);
    return (*(v9 + 8))(v15, v18);
  }

  else
  {
    sub_1B9868DA4(&v27);
    v6[5] = &v25;
    v25 = v12;
    v6[4] = &v24;
    v24 = 1;
    sub_1B9869200();
    v4 = v22;
    sub_1B98F5EF8();
    v6[6] = v4;
    v7 = v4;
    if (v4)
    {
      v6[1] = v7;
    }

    return (*(v9 + 8))(v15, v18);
  }
}

uint64_t *sub_1B98606F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = a1;
  v36 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A0, &unk_1B98FA9D0);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v7 - v26;
  v36 = MEMORY[0x1EEE9AC00](v22, v2);
  v29 = v36[3];
  v30 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v29);
  sub_1B9860B5C();
  v3 = v28;
  sub_1B98F6068();
  v31 = v3;
  v32 = v3;
  if (v3)
  {
    v11 = v32;
    v12 = 0;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    v17 = &v34;
    v34 = 0;
    sub_1B9868DD0();
    v4 = v31;
    sub_1B98F5EB8();
    v19 = v4;
    v20 = v4;
    if (v4)
    {
      v10 = v20;
      (*(v24 + 8))(v27, v23);
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v37 = v35;
      v14 = v33;
      v33[0] = 1;
      sub_1B9868F88();
      v5 = v19;
      sub_1B98F5E88();
      v15 = v5;
      v16 = v5;
      if (!v5)
      {
        v13 = &v37;
        v38 = v33[1];
        (*(v24 + 8))(v27, v23);
        sub_1B9869000(v13, v21);
        __swift_destroy_boxed_opaque_existential_1(v22);
        return sub_1B98537C0(v13);
      }

      v9 = v16;
      (*(v24 + 8))(v27, v23);
      v11 = v9;
      v12 = 1;
    }
  }

  v8 = v12;
  v7[1] = v11;
  result = __swift_destroy_boxed_opaque_existential_1(v22);
  if (v8)
  {
    return sub_1B9868DA4(&v37);
  }

  return result;
}

uint64_t sub_1B9860AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B985FFCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9860B00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9860170();
  *a1 = result;
  return result;
}

unint64_t sub_1B9860B5C()
{
  v2 = qword_1EBBD52E8;
  if (!qword_1EBBD52E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9860CA4()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B9860CE0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1BFADD650](v12[0], v2, a1, a2);
  sub_1B9868BFC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_1B98F54D8();
  v11[0] = sub_1B98F55E8();
  v11[1] = v3;
  v6 = MEMORY[0x1BFADD650](v11[0], v3, a1, a2);
  sub_1B9868BFC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_1B9861024()
{
  v2 = qword_1EBBD52F0;
  if (!qword_1EBBD52F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9861150(uint64_t a1)
{
  v8 = a1;
  v29 = 0;
  v28 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5500, &qword_1B98FA9F8);
  v9 = *(v18 - 8);
  v10 = v18 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v6 - v11;
  v29 = MEMORY[0x1EEE9AC00](v8, v2);
  v16 = *v1;
  v12 = *(v1 + 8);
  v28 = v1;
  v13 = v29[3];
  v14 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v13);
  sub_1B9861870();
  sub_1B98F6078();
  sub_1B98F54D8();
  v21 = &v27;
  v27 = v16;
  v17 = &v26;
  v26 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  sub_1B9869048();
  v3 = v20;
  sub_1B98F5F28();
  v22 = v3;
  v23 = v3;
  if (v3)
  {
    v6[2] = v23;
    sub_1B9868DA4(&v27);
    return (*(v9 + 8))(v15, v18);
  }

  else
  {
    sub_1B9868DA4(&v27);
    v6[5] = &v25;
    v25 = v12;
    v6[4] = &v24;
    v24 = 1;
    sub_1B9869200();
    v4 = v22;
    sub_1B98F5EF8();
    v6[6] = v4;
    v7 = v4;
    if (v4)
    {
      v6[1] = v7;
    }

    return (*(v9 + 8))(v15, v18);
  }
}

uint64_t *sub_1B9861404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = a1;
  v36 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54F8, &qword_1B98FA9F0);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v7 - v26;
  v36 = MEMORY[0x1EEE9AC00](v22, v2);
  v29 = v36[3];
  v30 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v29);
  sub_1B9861870();
  v3 = v28;
  sub_1B98F6068();
  v31 = v3;
  v32 = v3;
  if (v3)
  {
    v11 = v32;
    v12 = 0;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    v17 = &v34;
    v34 = 0;
    sub_1B9868DD0();
    v4 = v31;
    sub_1B98F5EB8();
    v19 = v4;
    v20 = v4;
    if (v4)
    {
      v10 = v20;
      (*(v24 + 8))(v27, v23);
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v37 = v35;
      v14 = v33;
      v33[0] = 1;
      sub_1B9868F88();
      v5 = v19;
      sub_1B98F5E88();
      v15 = v5;
      v16 = v5;
      if (!v5)
      {
        v13 = &v37;
        v38 = v33[1];
        (*(v24 + 8))(v27, v23);
        sub_1B9869278(v13, v21);
        __swift_destroy_boxed_opaque_existential_1(v22);
        return sub_1B9853548(v13);
      }

      v9 = v16;
      (*(v24 + 8))(v27, v23);
      v11 = v9;
      v12 = 1;
    }
  }

  v8 = v12;
  v7[1] = v11;
  result = __swift_destroy_boxed_opaque_existential_1(v22);
  if (v8)
  {
    return sub_1B9868DA4(&v37);
  }

  return result;
}

uint64_t sub_1B98617C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9860CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9861814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9860E84();
  *a1 = result;
  return result;
}

unint64_t sub_1B9861870()
{
  v2 = qword_1EBBD52F8;
  if (!qword_1EBBD52F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD52F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9861A04()
{
  v1 = (v0 + *(type metadata accessor for UpdateServerTrust() + 24));
  v3 = *v1;
  v4 = v1[1];
  sub_1B98F54D8();
  return v3;
}

uint64_t sub_1B9861A4C(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1BFADD650](v15[0], v2, a1, a2);
  sub_1B9868BFC(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  sub_1B98F54D8();
  v14[0] = sub_1B98F55E8();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1BFADD650](v14[0], v3, a1, a2);
  sub_1B9868BFC(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  sub_1B98F54D8();
  v13[0] = sub_1B98F55E8();
  v13[1] = v4;
  v7 = MEMORY[0x1BFADD650](v13[0], v4, a1, a2);
  sub_1B9868BFC(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_1B9861CA0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1B9861E88()
{
  v2 = qword_1EBBD5300;
  if (!qword_1EBBD5300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9861FEC(uint64_t a1)
{
  v22 = a1;
  v41 = 0;
  v40 = 0;
  v32 = type metadata accessor for BlockedHandle();
  v21 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v2);
  v34 = v11 - v21;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5510, &qword_1B98FAA08);
  v23 = *(v31 - 8);
  v24 = v31 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v22, v3);
  v28 = v11 - v25;
  v41 = v4;
  v40 = v1;
  v26 = v4[3];
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v26);
  sub_1B9862D08();
  sub_1B98F6078();
  sub_1B9833334(v29, v34);
  v30 = &v39;
  v39 = 0;
  sub_1B9868408();
  v5 = v33;
  sub_1B98F5F28();
  v35 = v5;
  v36 = v5;
  if (v5)
  {
    v12 = v36;
    sub_1B983A3AC(v34);
    result = (*(v23 + 8))(v28, v31);
    v13 = v12;
  }

  else
  {
    sub_1B983A3AC(v34);
    updated = type metadata accessor for UpdateServerTrust();
    v7 = v35;
    v18 = updated;
    v8 = *(v29 + *(updated + 20));
    v38 = 1;
    sub_1B98F5F18();
    v19 = v7;
    v20 = v7;
    if (v7)
    {
      v11[1] = v20;
    }

    else
    {
      v9 = (v29 + *(v18 + 24));
      v14 = *v9;
      v15 = v9[1];
      sub_1B98F54D8();
      v37 = 2;
      sub_1B98F5F08();
      v16 = 0;
      v17 = 0;
    }

    return (*(v23 + 8))(v28, v31);
  }

  return result;
}

uint64_t sub_1B986236C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v43 = a1;
  v56 = 0;
  v38 = 0;
  v35 = type metadata accessor for BlockedHandle();
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v2);
  v37 = &v18 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5508, &qword_1B98FAA00);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38, v3);
  v47 = &v18 - v42;
  updated = type metadata accessor for UpdateServerTrust();
  v45 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v43, v4);
  v46 = &v18 - v45;
  v56 = v5;
  v49 = v5[3];
  v50 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v49);
  sub_1B9862D08();
  v6 = v48;
  sub_1B98F6068();
  v51 = v6;
  v52 = v6;
  if (v6)
  {
    v22 = v52;
    v23 = 0;
  }

  else
  {
    v31 = &v55;
    v55 = 0;
    sub_1B9868250();
    v7 = v51;
    sub_1B98F5EB8();
    v32 = v7;
    v33 = v7;
    if (v7)
    {
      v21 = v33;
      (*(v40 + 8))(v47, v39);
      v22 = v21;
      v23 = 0;
    }

    else
    {
      sub_1B9832680(v37, v46);
      v8 = v32;
      v54 = 1;
      v9 = sub_1B98F5EA8();
      v28 = v8;
      v29 = v9;
      v30 = v8;
      if (!v8)
      {
        *(v46 + *(updated + 20)) = v29 & 1;
        v53 = 2;
        v10 = sub_1B98F5E98();
        v24 = 0;
        v25 = v10;
        v26 = v11;
        v27 = 0;
        v12 = v39;
        v13 = v47;
        v14 = v40;
        v15 = v26;
        v16 = (v46 + *(updated + 24));
        *v16 = v25;
        v16[1] = v15;
        (*(v14 + 8))(v13, v12);
        sub_1B98692C0(v46, v34);
        __swift_destroy_boxed_opaque_existential_1(v43);
        return sub_1B98538BC(v46);
      }

      v20 = v30;
      (*(v40 + 8))(v47, v39);
      v22 = v20;
      v23 = 1;
    }
  }

  v19 = v23;
  v18 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(v43);
  if (v19)
  {
    return sub_1B983A3AC(v46);
  }

  return result;
}

uint64_t sub_1B98628B4(uint64_t a1)
{
  v3 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5518, &qword_1B98FAA10);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v11 = MEMORY[0x1EEE9AC00](v3, v1);
  v5 = v11[3];
  v6 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v5);
  sub_1B9834A40();
  sub_1B98F6078();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1B9862A98(uint64_t a1)
{
  v3 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5520, &qword_1B98FAA18);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v11 = MEMORY[0x1EEE9AC00](v3, v1);
  v5 = v11[3];
  v6 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v5);
  sub_1B9835E5C();
  sub_1B98F6078();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1B9862C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9861A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9862CAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9861C88();
  *a1 = result;
  return result;
}

unint64_t sub_1B9862D08()
{
  v2 = qword_1EBBD5308;
  if (!qword_1EBBD5308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9862E68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862824();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9862EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862864();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9862FB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862A08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9863008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9862A48();
  *a1 = result & 1;
  return result;
}

BOOL sub_1B98630C4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9863288()
{
  v2 = qword_1EBBD5310;
  if (!qword_1EBBD5310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863344(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5530, &qword_1B98FAA28);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6, v13);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B986389C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9863538(uint64_t *a1)
{
  v14 = a1;
  v26 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5528, &qword_1B98FAA20);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v5 - v18;
  v26 = MEMORY[0x1EEE9AC00](v14, v1);
  v21 = v26[3];
  v22 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v21);
  sub_1B986389C();
  v2 = v20;
  sub_1B98F6068();
  v23 = v2;
  v24 = v2;
  if (v2)
  {
    v7 = v24;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v3 = v23;
    sub_1B98F5EB8();
    v12 = v3;
    v13 = v3;
    if (!v3)
    {
      v9 = v25;
      sub_1B98F54D8();
      v8 = &v27;
      v27 = v9;
      (*(v16 + 8))(v19, v15);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_1B9853A40(v8);
      return v9;
    }

    v6 = v13;
    (*(v16 + 8))(v19, v15);
    v7 = v6;
  }

  v5[1] = v7;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

BOOL sub_1B98637E8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98630C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9863838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98631BC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B986389C()
{
  v2 = qword_1EBBD5318;
  if (!qword_1EBBD5318)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5318);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863948@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9863538(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B9863A34(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9863BF8()
{
  v2 = qword_1EBBD5320;
  if (!qword_1EBBD5320)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5320);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9863CB4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5540, &qword_1B98FAA38);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6, v13);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B986420C();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9863EA8(uint64_t *a1)
{
  v14 = a1;
  v26 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5538, &qword_1B98FAA30);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v5 - v18;
  v26 = MEMORY[0x1EEE9AC00](v14, v1);
  v21 = v26[3];
  v22 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v21);
  sub_1B986420C();
  v2 = v20;
  sub_1B98F6068();
  v23 = v2;
  v24 = v2;
  if (v2)
  {
    v7 = v24;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v3 = v23;
    sub_1B98F5EB8();
    v12 = v3;
    v13 = v3;
    if (!v3)
    {
      v9 = v25;
      sub_1B98F54D8();
      v8 = &v27;
      v27 = v9;
      (*(v16 + 8))(v19, v15);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_1B9853B0C(v8);
      return v9;
    }

    v6 = v13;
    (*(v16 + 8))(v19, v15);
    v7 = v6;
  }

  v5[1] = v7;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

BOOL sub_1B9864158@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9863A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98641A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9863B2C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B986420C()
{
  v2 = qword_1EBBD5328;
  if (!qword_1EBBD5328)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98642B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9863EA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B98643A4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

unint64_t sub_1B9864568()
{
  v2 = qword_1EBBD5330;
  if (!qword_1EBBD5330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9864624(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v13 = a2;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5550, &qword_1B98FAA48);
  v7 = *(v14 - 8);
  v8 = v14 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v22 = MEMORY[0x1EEE9AC00](v6, v13);
  v21 = v2;
  v10 = v22[3];
  v11 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v10);
  sub_1B9864D60();
  sub_1B98F6078();
  sub_1B98F54D8();
  v17 = &v20;
  v20 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  sub_1B9868B64();
  v3 = v16;
  sub_1B98F5F28();
  v18 = v3;
  v19 = v3;
  if (v3)
  {
    v5[1] = v19;
  }

  sub_1B9868D78(&v20);
  return (*(v7 + 8))(v12, v14);
}

uint64_t sub_1B9864818(uint64_t *a1)
{
  v14 = a1;
  v26 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5548, &qword_1B98FAA40);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v5 - v18;
  v26 = MEMORY[0x1EEE9AC00](v14, v1);
  v21 = v26[3];
  v22 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v21);
  sub_1B9864D60();
  v2 = v20;
  sub_1B98F6068();
  v23 = v2;
  v24 = v2;
  if (v2)
  {
    v7 = v24;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868ACC();
    v3 = v23;
    sub_1B98F5EB8();
    v12 = v3;
    v13 = v3;
    if (!v3)
    {
      v9 = v25;
      sub_1B98F54D8();
      v8 = &v27;
      v27 = v9;
      (*(v16 + 8))(v19, v15);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_1B9853BD8(v8);
      return v9;
    }

    v6 = v13;
    (*(v16 + 8))(v19, v15);
    v7 = v6;
  }

  v5[1] = v7;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t sub_1B9864ADC(uint64_t a1)
{
  v3 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5558, &unk_1B98FAA50);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v11 = MEMORY[0x1EEE9AC00](v3, v1);
  v5 = v11[3];
  v6 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v5);
  sub_1B9864F9C();
  sub_1B98F6078();
  return (*(v7 + 8))(v9, v10);
}

BOOL sub_1B9864CAC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98643A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B9864CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B986449C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B9864D60()
{
  v2 = qword_1EBBD5338;
  if (!qword_1EBBD5338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9864E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B9864818(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B9864EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9864A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9864F38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9864A8C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B9864F9C()
{
  v2 = qword_1EDBDB200;
  if (!qword_1EDBDB200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B986506C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98651BC(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B98653BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1B9865504(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B98656B4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B986581C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B9865A4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1B9865B94(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B9865D44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B9865EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B986612C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B9866294(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B98664B0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866600(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B9866800(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866950(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B9866B3C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9866C8C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B9866F34()
{
  v2 = qword_1EBBD5340;
  if (!qword_1EBBD5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5348, &qword_1B98F9F40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9866FBC()
{
  v2 = qword_1EDBDB4D0;
  if (!qword_1EDBDB4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5350, qword_1B98F9F48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867068()
{
  v2 = qword_1EDBDB1F0;
  if (!qword_1EDBDB1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98670FC()
{
  v2 = qword_1EDBDB1F8;
  if (!qword_1EDBDB1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867190()
{
  v2 = qword_1EBBD5358;
  if (!qword_1EBBD5358)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867224()
{
  v2 = qword_1EBBD5360;
  if (!qword_1EBBD5360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98672B8()
{
  v2 = qword_1EBBD5368;
  if (!qword_1EBBD5368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986734C()
{
  v2 = qword_1EBBD5370;
  if (!qword_1EBBD5370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98673E0()
{
  v2 = qword_1EBBD5378;
  if (!qword_1EBBD5378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867474()
{
  v2 = qword_1EBBD5380;
  if (!qword_1EBBD5380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867508()
{
  v2 = qword_1EBBD5388;
  if (!qword_1EBBD5388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986759C()
{
  v2 = qword_1EBBD5390;
  if (!qword_1EBBD5390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867630()
{
  v2 = qword_1EBBD5398;
  if (!qword_1EBBD5398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98676C4()
{
  v2 = qword_1EBBD53A0;
  if (!qword_1EBBD53A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867758()
{
  v2 = qword_1EBBD53A8;
  if (!qword_1EBBD53A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98677EC()
{
  v2 = qword_1EBBD53B0;
  if (!qword_1EBBD53B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867880()
{
  v2 = qword_1EBBD53B8;
  if (!qword_1EBBD53B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867914()
{
  v2 = qword_1EBBD53C0;
  if (!qword_1EBBD53C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98679A8()
{
  v2 = qword_1EBBD53C8;
  if (!qword_1EBBD53C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867A3C()
{
  v2 = qword_1EBBD53D0;
  if (!qword_1EBBD53D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867AD0()
{
  v2 = qword_1EBBD53D8;
  if (!qword_1EBBD53D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867B64()
{
  v2 = qword_1EBBD53E0;
  if (!qword_1EBBD53E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867BF8()
{
  v2 = qword_1EBBD53E8;
  if (!qword_1EBBD53E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867C8C()
{
  v2 = qword_1EBBD53F0;
  if (!qword_1EBBD53F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867D20()
{
  v2 = qword_1EBBD53F8;
  if (!qword_1EBBD53F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD53F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867DB4()
{
  v2 = qword_1EBBD5400;
  if (!qword_1EBBD5400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867EA8()
{
  v2 = qword_1EBBD5408;
  if (!qword_1EBBD5408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9867F3C()
{
  v2 = qword_1EBBD5410;
  if (!qword_1EBBD5410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868030()
{
  v2 = qword_1EDBDB860;
  if (!qword_1EDBDB860)
  {
    type metadata accessor for UpdateServerTrust();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98680B0()
{
  v2 = qword_1EDBDB868;
  if (!qword_1EDBDB868)
  {
    type metadata accessor for UpdateServerTrust();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98681A8()
{
  v2 = qword_1EBBD5418;
  if (!qword_1EBBD5418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B9868250();
    sub_1B98682D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868250()
{
  v2 = qword_1EDBDB208;
  if (!qword_1EDBDB208)
  {
    type metadata accessor for BlockedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98682D0()
{
  v2 = qword_1EBBD5428;
  if (!qword_1EBBD5428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868360()
{
  v2 = qword_1EBBD5430;
  if (!qword_1EBBD5430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B9868408();
    sub_1B9868488();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868408()
{
  v2 = qword_1EDBDB688;
  if (!qword_1EDBDB688)
  {
    type metadata accessor for BlockedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868488()
{
  v2 = qword_1EBBD5438;
  if (!qword_1EBBD5438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B986856C()
{
  v2 = qword_1EBBD5440;
  if (!qword_1EBBD5440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868600()
{
  v2 = qword_1EBBD5448;
  if (!qword_1EBBD5448)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98686B8()
{
  v2 = qword_1EBBD5450;
  if (!qword_1EBBD5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B9868250();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868774()
{
  v2 = qword_1EBBD5460;
  if (!qword_1EBBD5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B9868408();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868818()
{
  v2 = qword_1EDBDB598;
  if (!qword_1EDBDB598)
  {
    type metadata accessor for IsHandleBlocked();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868898()
{
  v2 = qword_1EDBDB5A0;
  if (!qword_1EDBDB5A0)
  {
    type metadata accessor for IsHandleBlocked();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868978()
{
  v2 = qword_1EBBD5468;
  if (!qword_1EBBD5468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    sub_1B983A2A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868A10()
{
  v2 = qword_1EBBD5478;
  if (!qword_1EBBD5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    sub_1B983A334();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868ACC()
{
  v2 = qword_1EDBDB1B8;
  if (!qword_1EDBDB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868250();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868B64()
{
  v2 = qword_1EDBDB1C0;
  if (!qword_1EDBDB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    sub_1B9868408();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9868BFC(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B9868C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v13[5]);
  v6 = (a2 + v13[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v13[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  result = a2;
  *(v15 + 8) = v16;
  return result;
}

uint64_t *sub_1B9868D78(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B9868DA4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B9868DD0()
{
  v2 = qword_1EBBD54B0;
  if (!qword_1EBBD54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B9868250();
    sub_1B9868E78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868E78()
{
  v2 = qword_1EBBD54B8;
  if (!qword_1EBBD54B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9868F10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868F10()
{
  v2 = qword_1EBBD54C0;
  if (!qword_1EBBD54C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9868F88()
{
  v2 = qword_1EBBD54C8;
  if (!qword_1EBBD54C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9869000(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

unint64_t sub_1B9869048()
{
  v2 = qword_1EBBD54D8;
  if (!qword_1EBBD54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    sub_1B9868408();
    sub_1B98690F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98690F0()
{
  v2 = qword_1EBBD54E0;
  if (!qword_1EBBD54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B9869188();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9869188()
{
  v2 = qword_1EBBD54E8;
  if (!qword_1EBBD54E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9869200()
{
  v2 = qword_1EBBD54F0;
  if (!qword_1EBBD54F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD54F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9869278(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t sub_1B98692C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v14 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v14[5]);
  v8 = (a2 + v14[5]);
  *v8 = *v3;
  v9 = v3[1];
  sub_1B98F54D8();
  v8[1] = v9;
  v10 = v14[6];
  v11 = *(a1 + v10);
  sub_1B98F54D8();
  *(a2 + v10) = v11;
  v12 = v14[7];
  v13 = *(a1 + v12);
  sub_1B98F54D8();
  *(a2 + v12) = v13;
  v4 = v14[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v15 + 8) = v16;
  updated = type metadata accessor for UpdateServerTrust();
  *(a2 + *(updated + 20)) = *(a1 + *(updated + 20));
  v6 = (a1 + *(updated + 24));
  v19 = (a2 + *(updated + 24));
  *v19 = *v6;
  v20 = v6[1];
  sub_1B98F54D8();
  result = a2;
  v19[1] = v20;
  return result;
}

uint64_t sub_1B9869478()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1B98F54D8();
  return v2;
}

uint64_t sub_1B98694B0@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL;
  v2 = sub_1B98F4F88();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B986951C()
{
  v5 = v0;
  v2 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  v3 = v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container));
  sub_1B9869614((v3 + 8), &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B9870E78((v0 + v2));
  return v4;
}

uint64_t sub_1B986964C(uint64_t a1)
{

  v4 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  v5 = v1 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container));
  sub_1B9869778((v5 + 8), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B9870E78((v3 + v4));
}

uint64_t sub_1B9869778(uint64_t *a1, uint64_t a2)
{

  v2 = *a1;
  *a1 = a2;
}

uint64_t sub_1B98697D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1B9869830(a1, a2, a3);
}

uint64_t sub_1B9869830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v24 = sub_1B98F4F88();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v14 - v15;
  v30 = MEMORY[0x1EEE9AC00](v18, v19);
  v31 = v4;
  v29 = v5;
  v28 = v3;
  v17 = &v27;
  v27 = 0;
  v6 = v3 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container;
  *v6 = 0;
  *v6 = 0;
  v16 = v6 + 8;
  *(v6 + 8) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5568, &qword_1B98FAA60);
  sub_1B985253C(v17, v16, v7);
  sub_1B98F54D8();
  v8 = v23;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v24;
  *(v3 + 16) = v18;
  *(v3 + 24) = v9;
  (*(v11 + 16))(v8, v10, v12);
  (*(v21 + 32))(v3 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL, v23, v24);
  v25 = sub_1B9869A58();
  v26 = 0;
  v14[1] = v25;

  (*(v21 + 8))(v20, v24);

  return v14[2];
}

uint64_t sub_1B9869A58()
{
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v43 = 0;
  v41 = (*(*(sub_1B98F5378() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v42 = v18 - v41;
  v44 = sub_1B98F4F88();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v2);
  v48 = v18 - v47;
  v49 = sub_1B98F5388();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v3);
  v53 = v18 - v52;
  v58 = v18 - v52;
  v57 = v0;
  v54 = sub_1B986951C();
  if (v54)
  {
    v38 = v54;
    v55 = v54;
    v36 = v54;
    v37 = v40;
    return v36;
  }

  v20 = *(v39 + 16);
  v21 = *(v39 + 24);
  sub_1B98F54D8();
  (*(v45 + 16))(v48, v39 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL, v44);
  v22 = sub_1B9869EF0();
  sub_1B9869EFC();
  v24 = 0;
  sub_1B98F5398();
  sub_1B98F52C8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5570, &qword_1B98FAA68);
  v28 = sub_1B98F5F98();
  v26 = v4;
  v23 = type metadata accessor for ManagedHandle();
  v5 = sub_1B9870EA4();
  v6 = v26;
  *v26 = v23;
  v6[1] = v5;
  v25 = type metadata accessor for ManagedContact();
  v7 = sub_1B9870F24();
  v8 = v26;
  v9 = v7;
  v10 = v28;
  v26[2] = v25;
  v8[3] = v9;
  sub_1B9851B38();
  v32 = v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5588, &unk_1B98FAA70);
  v31 = sub_1B98F5F98();
  v29 = v11;
  v11[3] = v49;
  v12 = sub_1B9870FA4();
  v13 = v29;
  v29[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v50 + 16))(boxed_opaque_existential_1, v53, v49);
  sub_1B9851B38();
  v15 = v40;
  v16 = sub_1B98F52B8();
  v33 = v15;
  v34 = v16;
  v35 = v15;
  if (!v15)
  {
    v19 = v34;
    v56 = v34;

    sub_1B986964C(v19);
    (*(v50 + 8))(v53, v49);
    v36 = v19;
    v37 = v33;
    return v36;
  }

  v18[0] = v35;
  (*(v50 + 8))(v53, v49);
  return v18[1];
}

uint64_t sub_1B9869F14()
{
  sub_1B9868BFC(v0 + 16);
  v3 = OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider_databaseURL;
  v1 = sub_1B98F4F88();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B9871E40(v0 + OBJC_IVAR____TtC18CommunicationTrust17ContainerProvider__container);
  return v4;
}

uint64_t sub_1B9869FA4()
{
  v0 = *sub_1B9869F14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B986A008()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B986A058(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_1B986A104(uint64_t a1)
{
  v21 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
  v20 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v29 = &v17 - v20;
  v28 = sub_1B98F4F88();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v22 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v21, v29);
  v23 = &v17 - v22;
  v24 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v25 = &v17 - v24;
  v34 = &v17 - v24;
  v33 = v7;
  v32 = v1;
  sub_1B98710A4(v7, v8);
  v30 = *(v26 + 48);
  v31 = v26 + 48;
  if (v30(v29, 1, v28) == 1)
  {
    v9 = sub_1B98EF4D0();
    (*(v26 + 16))(v25, v9, v28);
    if (v30(v29, 1, v28) != 1)
    {
      sub_1B98711CC(v29);
    }
  }

  else
  {
    (*(v26 + 32))(v25, v29, v28);
  }

  type metadata accessor for ContainerProvider();
  v10 = sub_1B98ED1AC();
  v18 = *v10;
  v17 = v10[1];
  sub_1B98F54D8();
  (*(v26 + 16))(v23, v25, v28);
  v11 = sub_1B98697D4(v18, v17, v23);
  v12 = v26;
  v13 = v28;
  v14 = v11;
  v15 = v25;
  *(v19 + 16) = v14;
  (*(v12 + 8))(v15, v13);
  sub_1B98711CC(v21);
  return v19;
}

uint64_t sub_1B986A3F4()
{
  v1 = *(v0 + 16);

  return v3;
}

uint64_t sub_1B986A46C(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v2[19] = 0;
  memset(v2 + 7, 0, 0x28uLL);
  v2[20] = 0;
  v3 = type metadata accessor for BlockedHandle();
  v2[23] = v3;
  v9 = *(v3 - 8);
  v2[24] = v9;
  v10 = *(v9 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v5 = sub_1B98F5138();
  v2[28] = v5;
  v11 = *(v5 - 8);
  v2[29] = v11;
  v6 = *(v11 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;
  v7 = v2[15];

  return MEMORY[0x1EEE6DFA0](sub_1B986A664, 0);
}

uint64_t sub_1B986A664()
{
  v49 = v0;
  v1 = v0[30];
  v28 = v0[29];
  v29 = v0[28];
  v30 = v0[21];
  v0[15] = v0;
  v2 = sub_1B98F1E6C();
  (*(v28 + 16))(v1, v2, v29);
  sub_1B98F54D8();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;

  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B98712E8;
  *(v33 + 24) = v31;

  v42 = sub_1B98F5118();
  v43 = sub_1B98F5BD8();
  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B986B330;
  *(v32 + 24) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B98713F0;
  *(v37 + 24) = v32;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1B98712F0;
  *(v34 + 24) = v33;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1B9871418;
  *(v40 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v41 = v3;

  *v41 = sub_1B98713E0;
  v41[1] = v35;

  v41[2] = sub_1B98713E8;
  v41[3] = v36;

  v41[4] = sub_1B98713FC;
  v41[5] = v37;

  v41[6] = sub_1B9871408;
  v41[7] = v38;

  v41[8] = sub_1B9871410;
  v41[9] = v39;

  v41[10] = sub_1B9871424;
  v41[11] = v40;
  sub_1B9851B38();

  if (os_log_type_enabled(v42, v43))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v25 = sub_1B985263C(0);
    v26 = sub_1B985263C(2);
    v44 = buf;
    v45 = v25;
    v46 = v26;
    sub_1B9852690(2, &v44);
    sub_1B9852690(2, &v44);
    v47 = sub_1B98713E0;
    v48 = v35;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    v47 = sub_1B98713E8;
    v48 = v36;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    v47 = sub_1B98713FC;
    v48 = v37;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    v47 = sub_1B9871408;
    v48 = v38;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    v47 = sub_1B9871410;
    v48 = v39;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    v47 = sub_1B9871424;
    v48 = v40;
    sub_1B98526A4(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_1B982F000, v42, v43, "%{public}s handles: %s", buf, 0x16u);
    sub_1B985281C(v25);
    sub_1B985281C(v26);
    sub_1B98F5C08();
  }

  else
  {
  }

  v19 = v27[30];
  v20 = v27[28];
  v21 = v27[22];
  v18 = v27[29];
  MEMORY[0x1E69E5920](v42);
  (*(v18 + 8))(v19, v20);
  swift_beginAccess();
  v22 = *(v21 + 16);

  swift_endAccess();
  v23 = sub_1B9869A58();
  v16 = v27[23];
  v17 = v27[21];

  v27[18] = v23;
  sub_1B98F5298();

  v27[19] = sub_1B98F52A8();
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v27 + 7, v27 + 2, 0x28uLL);
  while (1)
  {
    v14 = v27[27];
    v15 = v27[23];
    v13 = v27[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v13 + 48))(v14, 1, v15) == 1)
    {
      break;
    }

    v12 = v27[26];
    v11 = v27[25];
    sub_1B9832680(v27[27], v12);
    type metadata accessor for ManagedHandle();
    sub_1B9833334(v12, v11);
    v27[20] = sub_1B98BBF88(v11);
    sub_1B9870EA4();
    sub_1B98F5288();

    sub_1B983A3AC(v12);
  }

  sub_1B9871430(v27 + 7);
  sub_1B98F5258();
  v7 = v27[30];
  v8 = v27[27];
  v9 = v27[26];
  v10 = v27[25];

  v4 = *(v27[15] + 8);
  v5 = v27[15];

  return v4();
}

uint64_t sub_1B986B360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B986B394(const void *a1)
{
  v95 = a1;
  v100 = sub_1B986C2A4;
  v101 = sub_1B9871758;
  v105 = sub_1B98716D8;
  v109 = sub_1B9871780;
  v111 = sub_1B9871748;
  v113 = sub_1B9871750;
  v115 = sub_1B9871764;
  v117 = sub_1B9871770;
  v119 = sub_1B9871778;
  v122 = sub_1B987178C;
  v81 = sub_1B986C354;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82, v1);
  v86 = &v38 - v85;
  v140 = &v38 - v85;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
  v87 = *(v2 - 8);
  v96 = v87;
  v97 = *(v87 + 64);
  v88 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v99 = &v38 - v88;
  v94 = sub_1B98F5138();
  v92 = *(v94 - 8);
  v93 = v94 - 8;
  v90 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v95, v4);
  v6 = &v38 - v90;
  v91 = &v38 - v90;
  v139 = v5;
  v138 = v7;
  v8 = sub_1B98F1E6C();
  (*(v92 + 16))(v6, v8, v94);
  sub_1B9871470(v95, v99);
  v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v107 = 7;
  v108 = swift_allocObject();
  sub_1B98715A4(v99, (v108 + v98));
  v126 = sub_1B98F5118();
  v127 = sub_1B98F5BD8();
  v103 = 17;
  v112 = swift_allocObject();
  *(v112 + 16) = 34;
  v114 = swift_allocObject();
  v104 = 8;
  *(v114 + 16) = 8;
  v106 = 32;
  v9 = swift_allocObject();
  v102 = v9;
  *(v9 + 16) = v100;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v102;
  v116 = v10;
  *(v10 + 16) = v101;
  *(v10 + 24) = v11;
  v118 = swift_allocObject();
  *(v118 + 16) = 32;
  v120 = swift_allocObject();
  *(v120 + 16) = v104;
  v12 = swift_allocObject();
  v13 = v108;
  v110 = v12;
  *(v12 + 16) = v105;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v110;
  v123 = v14;
  *(v14 + 16) = v109;
  *(v14 + 24) = v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v121 = sub_1B98F5F98();
  v124 = v16;

  v17 = v112;
  v18 = v124;
  *v124 = v111;
  v18[1] = v17;

  v19 = v114;
  v20 = v124;
  v124[2] = v113;
  v20[3] = v19;

  v21 = v116;
  v22 = v124;
  v124[4] = v115;
  v22[5] = v21;

  v23 = v118;
  v24 = v124;
  v124[6] = v117;
  v24[7] = v23;

  v25 = v120;
  v26 = v124;
  v124[8] = v119;
  v26[9] = v25;

  v27 = v123;
  v28 = v124;
  v124[10] = v122;
  v28[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v126, v127))
  {
    v72 = sub_1B98F5C28();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v73 = sub_1B985263C(0);
    v74 = sub_1B985263C(2);
    v76 = &v132;
    v132 = v72;
    v77 = &v131;
    v131 = v73;
    v78 = &v130;
    v130 = v74;
    v75 = 2;
    sub_1B9852690(2, &v132);
    sub_1B9852690(v75, v76);
    v29 = v80;
    v128 = v111;
    v129 = v112;
    sub_1B98526A4(&v128, v76, v77, v78);
    v79 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v128 = v113;
      v129 = v114;
      sub_1B98526A4(&v128, &v132, &v131, &v130);
      v68 = 0;
      v128 = v115;
      v129 = v116;
      sub_1B98526A4(&v128, &v132, &v131, &v130);
      v67 = 0;
      v128 = v117;
      v129 = v118;
      sub_1B98526A4(&v128, &v132, &v131, &v130);
      v66 = 0;
      v128 = v119;
      v129 = v120;
      sub_1B98526A4(&v128, &v132, &v131, &v130);
      v65 = 0;
      v128 = v122;
      v129 = v123;
      sub_1B98526A4(&v128, &v132, &v131, &v130);
      v64 = 0;
      _os_log_impl(&dword_1B982F000, v126, v127, "%{public}s predicate: %s", v72, 0x16u);
      sub_1B985281C(v73);
      sub_1B985281C(v74);
      sub_1B98F5C08();

      v69 = v64;
    }
  }

  else
  {

    v69 = v80;
  }

  v60 = v69;
  MEMORY[0x1E69E5920](v126);
  (*(v92 + 8))(v91, v94);
  v59 = &v137;
  swift_beginAccess();
  v58 = *(v89 + 16);

  swift_endAccess();
  v30 = v60;
  v31 = sub_1B9869A58();
  v61 = v30;
  v62 = v31;
  v63 = v30;
  if (v30)
  {
    v39 = v63;

    v40 = v39;
  }

  else
  {
    v50 = v62;

    v136 = v50;
    v52 = 0;
    sub_1B98F5298();

    v51 = sub_1B98F52A8();
    v135 = v51;
    sub_1B9871470(v95, v99);
    v53 = type metadata accessor for ManagedHandle();
    v54 = sub_1B9870EA4();
    sub_1B986C314();
    sub_1B98F52D8();
    v32 = v61;
    v33 = sub_1B98F5268();
    v55 = v32;
    v56 = v33;
    v57 = v32;
    if (v32)
    {
      v38 = v57;
      (*(v83 + 8))(v86, v82);

      v40 = v38;
    }

    else
    {
      v45 = v56;
      v134 = v56;
      v133[1] = v56;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
      v47 = type metadata accessor for BlockedHandle();
      v34 = sub_1B9871798();
      v35 = v55;
      v36 = sub_1B985D064(v81, 0, v46, v47, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v70);
      v48 = v35;
      v49 = v36;
      if (!v35)
      {
        v43 = v133;
        v133[0] = v49;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
        v42 = sub_1B9853574();
        sub_1B9871820();
        v44 = sub_1B98F5AE8();

        (*(v83 + 8))(v86, v82);

        return v44;
      }

      __break(1u);
    }
  }

  return v70;
}

uint64_t sub_1B986C354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  return sub_1B98C26F8(v3, a2);
}

uint64_t sub_1B986C39C(const void *a1)
{
  v83 = a1;
  v88 = sub_1B986D13C;
  v89 = sub_1B9871928;
  v93 = sub_1B98718A8;
  v97 = sub_1B9871950;
  v99 = sub_1B9871918;
  v101 = sub_1B9871920;
  v103 = sub_1B9871934;
  v105 = sub_1B9871940;
  v107 = sub_1B9871948;
  v110 = sub_1B987195C;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v121 = 0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70, v1);
  v74 = v35 - v73;
  v126 = v35 - v73;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
  v75 = *(v2 - 8);
  v84 = v75;
  v85 = *(v75 + 64);
  v76 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v87 = v35 - v76;
  v82 = sub_1B98F5138();
  v80 = *(v82 - 8);
  v81 = v82 - 8;
  v78 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v83, v4);
  v6 = v35 - v78;
  v79 = v35 - v78;
  v125 = v5;
  v124 = v7;
  v8 = sub_1B98F1E6C();
  (*(v80 + 16))(v6, v8, v82);
  sub_1B9871470(v83, v87);
  v86 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v95 = 7;
  v96 = swift_allocObject();
  sub_1B98715A4(v87, (v96 + v86));
  v114 = sub_1B98F5118();
  v115 = sub_1B98F5BD8();
  v91 = 17;
  v100 = swift_allocObject();
  *(v100 + 16) = 34;
  v102 = swift_allocObject();
  v92 = 8;
  *(v102 + 16) = 8;
  v94 = 32;
  v9 = swift_allocObject();
  v90 = v9;
  *(v9 + 16) = v88;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v90;
  v104 = v10;
  *(v10 + 16) = v89;
  *(v10 + 24) = v11;
  v106 = swift_allocObject();
  *(v106 + 16) = 32;
  v108 = swift_allocObject();
  *(v108 + 16) = v92;
  v12 = swift_allocObject();
  v13 = v96;
  v98 = v12;
  *(v12 + 16) = v93;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v98;
  v111 = v14;
  *(v14 + 16) = v97;
  *(v14 + 24) = v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v109 = sub_1B98F5F98();
  v112 = v16;

  v17 = v100;
  v18 = v112;
  *v112 = v99;
  v18[1] = v17;

  v19 = v102;
  v20 = v112;
  v112[2] = v101;
  v20[3] = v19;

  v21 = v104;
  v22 = v112;
  v112[4] = v103;
  v22[5] = v21;

  v23 = v106;
  v24 = v112;
  v112[6] = v105;
  v24[7] = v23;

  v25 = v108;
  v26 = v112;
  v112[8] = v107;
  v26[9] = v25;

  v27 = v111;
  v28 = v112;
  v112[10] = v110;
  v28[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v114, v115))
  {
    v61 = sub_1B98F5C28();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v62 = sub_1B985263C(0);
    v63 = sub_1B985263C(2);
    v65 = &v120;
    v120 = v61;
    v66 = &v119;
    v119 = v62;
    v67 = &v118;
    v118 = v63;
    v64 = 2;
    sub_1B9852690(2, &v120);
    sub_1B9852690(v64, v65);
    v29 = v69;
    v116 = v99;
    v117 = v100;
    sub_1B98526A4(&v116, v65, v66, v67);
    v68 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v116 = v101;
      v117 = v102;
      sub_1B98526A4(&v116, &v120, &v119, &v118);
      v58 = 0;
      v116 = v103;
      v117 = v104;
      sub_1B98526A4(&v116, &v120, &v119, &v118);
      v57 = 0;
      v116 = v105;
      v117 = v106;
      sub_1B98526A4(&v116, &v120, &v119, &v118);
      v56 = 0;
      v116 = v107;
      v117 = v108;
      sub_1B98526A4(&v116, &v120, &v119, &v118);
      v55 = 0;
      v116 = v110;
      v117 = v111;
      sub_1B98526A4(&v116, &v120, &v119, &v118);
      v54 = 0;
      _os_log_impl(&dword_1B982F000, v114, v115, "%{public}s predicate: %s", v61, 0x16u);
      sub_1B985281C(v62);
      sub_1B985281C(v63);
      sub_1B98F5C08();

      v59 = v54;
    }
  }

  else
  {

    v59 = v69;
  }

  v50 = v59;
  MEMORY[0x1E69E5920](v114);
  (*(v80 + 8))(v79, v82);
  v49 = &v123;
  swift_beginAccess();
  v48 = *(v77 + 16);

  swift_endAccess();
  v30 = v50;
  v31 = sub_1B9869A58();
  v51 = v30;
  v52 = v31;
  v53 = v30;
  if (v30)
  {
    v37 = v53;

    v38 = v37;
  }

  else
  {
    v40 = v52;

    v122 = v40;
    v42 = 0;
    sub_1B98F5298();

    v41 = sub_1B98F52A8();
    v121 = v41;
    sub_1B9871470(v83, v87);
    v43 = type metadata accessor for ManagedHandle();
    v44 = sub_1B9870EA4();
    sub_1B986C314();
    sub_1B98F52D8();
    v32 = v51;
    v33 = sub_1B98F5248();
    v45 = v32;
    v46 = v33;
    v47 = v32;
    if (!v32)
    {
      v39 = v46;
      (*(v71 + 8))(v74, v70);

      return v39;
    }

    v36 = v47;
    (*(v71 + 8))(v74, v70);

    v38 = v36;
  }

  return v35[1];
}

uint64_t sub_1B986D1AC(uint64_t a1)
{
  v2[34] = v1;
  v2[33] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v2[23] = 0;
  v2[25] = 0;
  v2[27] = 0;
  memset(v2 + 7, 0, 0x28uLL);
  v2[29] = 0;
  v2[32] = 0;
  v3 = type metadata accessor for BlockedHandle();
  v2[35] = v3;
  v13 = *(v3 - 8);
  v2[36] = v13;
  v2[37] = *(v13 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v2[42] = v6;
  v14 = *(v6 - 8);
  v2[43] = v14;
  v7 = *(v14 + 64) + 15;
  v2[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v2[45] = v8;
  v15 = *(v8 - 8);
  v2[46] = v15;
  v9 = *(v15 + 64) + 15;
  v2[47] = swift_task_alloc();
  v10 = sub_1B98F5138();
  v2[48] = v10;
  v16 = *(v10 - 8);
  v2[49] = v16;
  v17 = *(v16 + 64);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;
  v11 = v2[17];

  return MEMORY[0x1EEE6DFA0](sub_1B986D4F4, 0);
}

uint64_t sub_1B986D4F4()
{
  v109 = v0;
  v1 = v0[51];
  v82 = v0[49];
  v83 = v0[48];
  v85 = v0[33];
  v0[17] = v0;
  v2 = sub_1B98F1E6C();
  v84 = *(v82 + 16);
  v84(v1, v2, v83);
  sub_1B98F54D8();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;

  v88 = swift_allocObject();
  *(v88 + 16) = sub_1B9871968;
  *(v88 + 24) = v86;

  v97 = sub_1B98F5118();
  v98 = sub_1B98F5BD8();
  v90 = swift_allocObject();
  *(v90 + 16) = 34;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1B986EFE0;
  *(v87 + 24) = 0;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1B98719E8;
  *(v92 + 24) = v87;
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1B9871970;
  *(v89 + 24) = v88;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1B9871A10;
  *(v95 + 24) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v96 = v3;

  *v96 = sub_1B98719D8;
  v96[1] = v90;

  v96[2] = sub_1B98719E0;
  v96[3] = v91;

  v96[4] = sub_1B98719F4;
  v96[5] = v92;

  v96[6] = sub_1B9871A00;
  v96[7] = v93;

  v96[8] = sub_1B9871A08;
  v96[9] = v94;

  v96[10] = sub_1B9871A1C;
  v96[11] = v95;
  sub_1B9851B38();

  if (os_log_type_enabled(v97, v98))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v79 = sub_1B985263C(0);
    v80 = sub_1B985263C(2);
    v104 = buf;
    v105 = v79;
    v106 = v80;
    sub_1B9852690(2, &v104);
    sub_1B9852690(2, &v104);
    v107 = sub_1B98719D8;
    v108 = v90;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    v107 = sub_1B98719E0;
    v108 = v91;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    v107 = sub_1B98719F4;
    v108 = v92;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    v107 = sub_1B9871A00;
    v108 = v93;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    v107 = sub_1B9871A08;
    v108 = v94;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    v107 = sub_1B9871A1C;
    v108 = v95;
    sub_1B98526A4(&v107, &v104, &v105, &v106);
    _os_log_impl(&dword_1B982F000, v97, v98, "%{public}s handles: %s", buf, 0x16u);
    sub_1B985281C(v79);
    sub_1B985281C(v80);
    sub_1B98F5C08();
  }

  else
  {
  }

  v71 = v81[51];
  v72 = v81[48];
  v74 = v81[34];
  v70 = v81[49];
  MEMORY[0x1E69E5920](v97);
  v73 = *(v70 + 8);
  v73(v71, v72);
  swift_beginAccess();
  v75 = *(v74 + 16);

  swift_endAccess();
  v76 = sub_1B9869A58();
  v66 = v81[33];

  v81[20] = v76;
  sub_1B98F5298();

  v81[21] = sub_1B98F52A8();
  v81[22] = v66;
  KeyPath = swift_getKeyPath();

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B9871A5C();
  v69 = sub_1B985D064(sub_1B9871A28, KeyPath, v68, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v77);
  v61 = v81[47];
  v62 = v81[45];
  v64 = v81[44];
  v63 = v81[41];
  v60 = v81[46];

  v81[23] = v69;
  sub_1B98F54D8();
  *(swift_task_alloc() + 16) = v69;
  v81[24] = type metadata accessor for ManagedHandle();
  sub_1B98F4FA8();

  (*(v60 + 16))(v63, v61, v62);
  (*(v60 + 56))(v63, 0, 1, v62);
  sub_1B9870EA4();
  sub_1B986C314();
  sub_1B98F52D8();
  v65 = sub_1B98F5268();
  v81[25] = v65;
  sub_1B98F54D8();
  v81[26] = v65;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  sub_1B9871B10();
  v59 = sub_1B98F5578();
  v55 = v81[35];
  v56 = v81[33];

  v81[27] = v59;
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v81 + 7, v81 + 2, 0x28uLL);
  v57 = 0;
  for (i = 0; ; i = v49)
  {
    v53 = v81[40];
    v54 = v81[35];
    v52 = v81[36];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v52 + 48))(v53, 1, v54) == 1)
    {
      break;
    }

    sub_1B9832680(v81[40], v81[39]);
    v81[15] = BlockedHandle.value.getter();
    v81[16] = v5;
    sub_1B98F55B8();
    sub_1B9868BFC((v81 + 15));
    v51 = v81[28];
    if (v51)
    {
      v81[29] = v51;
      v81[30] = v51;
      sub_1B9871798();
      sub_1B98F5B48();
      v50 = v81[31];
      if (v50)
      {
        v6 = v81[39];
        v47 = v6;
        v81[32] = v50;
        sub_1B98BF548(v6);

        sub_1B983A3AC(v47);
        v48 = v57;
        v49 = i;
        goto LABEL_15;
      }
    }

    v7 = v81[50];
    v33 = v81[48];
    v34 = v81[39];
    v38 = v81[38];
    v36 = v81[37];
    v35 = v81[36];
    v8 = sub_1B98F1ED8();
    v84(v7, v8, v33);
    sub_1B9833334(v34, v38);
    v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v39 = swift_allocObject();
    sub_1B9832680(v38, v39 + v37);
    oslog = sub_1B98F5118();
    v46 = sub_1B98F5BD8();
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1B9871B98;
    *(v40 + 24) = v39;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1B9871C0C;
    *(v43 + 24) = v40;
    sub_1B98F5F98();
    v44 = v9;

    *v44 = sub_1B9871BFC;
    v44[1] = v41;

    v44[2] = sub_1B9871C04;
    v44[3] = v42;

    v44[4] = sub_1B9871C18;
    v44[5] = v43;
    sub_1B9851B38();

    if (os_log_type_enabled(oslog, v46))
    {
      v30 = sub_1B98F5C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v31 = sub_1B985263C(0);
      v32 = sub_1B985263C(1);
      v99 = v30;
      v100 = v31;
      v101 = v32;
      sub_1B9852690(2, &v99);
      sub_1B9852690(1, &v99);
      v102 = sub_1B9871BFC;
      v103 = v41;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B9871C04;
      v103 = v42;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B9871C18;
      v103 = v43;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      _os_log_impl(&dword_1B982F000, oslog, v46, "Managed object not found for update: %s", v30, 0xCu);
      sub_1B985281C(v31);
      sub_1B985281C(v32);
      sub_1B98F5C08();

      v28 = 0;
      v29 = 0;
    }

    else
    {

      v28 = v57;
      v29 = i;
    }

    v25 = v81[50];
    v26 = v81[48];
    v27 = v81[39];
    MEMORY[0x1E69E5920](oslog);
    v73(v25, v26);
    sub_1B983A3AC(v27);
    v48 = v28;
    v49 = v29;
LABEL_15:
    v57 = v48;
  }

  sub_1B9871430(v81 + 7);
  sub_1B98F5258();
  v17 = v81[51];
  v18 = v81[50];
  v19 = v81[47];
  v16 = v81[45];
  v20 = v81[44];
  v14 = v81[42];
  v21 = v81[41];
  v22 = v81[40];
  v23 = v81[39];
  v24 = v81[38];
  v15 = v81[46];
  v13 = v81[43];

  (*(v13 + 8))(v20, v14);
  (*(v15 + 8))(v19, v16);

  v10 = *(v81[17] + 8);
  v11 = v81[17];

  return v10();
}

uint64_t sub_1B986F010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B986F044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v10 = a1;
  v11 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v2);
  v13 = &v10 - v11;
  sub_1B9833334(v3, &v10 - v11);
  v4 = BlockedHandle.value.getter();
  v5 = v12;
  v6 = v4;
  v7 = v13;
  *v12 = v6;
  v5[1] = v8;
  return sub_1B983A3AC(v7);
}

uint64_t sub_1B986F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a3;
  v6 = a1;
  v9 = a2;
  v7 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v6, v3);
  v10 = &v6 - v7;
  sub_1B9833334(v4, &v6 - v7);

  swift_getAtKeyPath();

  return sub_1B983A3AC(v10);
}

uint64_t sub_1B986F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v15 = a1;
  v14 = a2;
  v39 = 0;
  v38 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5610, &qword_1B98FAC08);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24, v3);
  v23 = &v11 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5618, &qword_1B98FAC10);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v13 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v4);
  v31 = &v11 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5620, &qword_1B98FAC18);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v15, v14);
  v35 = &v11 - v16;
  v18 = *v5;
  v39 = v18;
  v38 = v6;
  v17 = &v37;
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B98F4F18();
  v19 = sub_1B9871F30();
  sub_1B98F4F28();
  KeyPath = swift_getKeyPath();
  sub_1B986F5E0();

  (*(v21 + 8))(v23, v24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5630, qword_1B98FAC28);
  v25[3] = v7;
  v8 = sub_1B9871FB8();
  v9 = v25;
  v25[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v27 = sub_1B9872350();
  v28 = sub_1B98723D8();
  sub_1B985DBF4();
  sub_1B98F4F08();
  (*(v29 + 8))(v31, v32);
  return (*(v33 + 8))(v35, v36);
}

uint64_t sub_1B986F50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98BC9B4();
  a2[1] = v2;
}

uint64_t sub_1B986F56C(void *a1, uint64_t *a2)
{
  sub_1B9871EF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98BCB34(v4, v6);
}

uint64_t sub_1B986F614(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1B986F67C()
{
  v3[0] = BlockedHandle.value.getter();
  v3[1] = v0;
  v2 = sub_1B98F1B88(v3, MEMORY[0x1E69E6158]);
  sub_1B985EE4C(v3);
  return v2;
}

uint64_t sub_1B986F6E4(uint64_t a1)
{
  v2[17] = v1;
  v2[16] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[15] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A0, &qword_1B98FAAA0);
  v2[18] = v3;
  v9 = *(v3 - 8);
  v2[19] = v9;
  v4 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2[21] = v10;
  v2[22] = *(v10 + 64);
  v2[23] = swift_task_alloc();
  v5 = sub_1B98F5138();
  v2[24] = v5;
  v11 = *(v5 - 8);
  v2[25] = v11;
  v6 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;
  v7 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1B986F8F8, 0);
}

uint64_t sub_1B986F8F8()
{
  v51 = v0;
  v1 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v33 = v0[23];
  v31 = v0[22];
  v30 = v0[21];
  v29 = v0[16];
  v0[7] = v0;
  v2 = sub_1B98F1E6C();
  (*(v27 + 16))(v1, v2, v28);
  sub_1B9871470(v29, v33);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v35 = swift_allocObject();
  sub_1B98715A4(v33, (v35 + v32));
  v44 = sub_1B98F5118();
  v45 = sub_1B98F5BD8();
  v37 = swift_allocObject();
  *(v37 + 16) = 34;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1B98706A0;
  *(v34 + 24) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B9871CA4;
  *(v39 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1B9871C24;
  *(v36 + 24) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1B9871CCC;
  *(v42 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v43 = v3;

  *v43 = sub_1B9871C94;
  v43[1] = v37;

  v43[2] = sub_1B9871C9C;
  v43[3] = v38;

  v43[4] = sub_1B9871CB0;
  v43[5] = v39;

  v43[6] = sub_1B9871CBC;
  v43[7] = v40;

  v43[8] = sub_1B9871CC4;
  v43[9] = v41;

  v43[10] = sub_1B9871CD8;
  v43[11] = v42;
  sub_1B9851B38();

  if (os_log_type_enabled(v44, v45))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v24 = sub_1B985263C(0);
    v25 = sub_1B985263C(2);
    v46 = buf;
    v47 = v24;
    v48 = v25;
    sub_1B9852690(2, &v46);
    sub_1B9852690(2, &v46);
    v49 = sub_1B9871C94;
    v50 = v37;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    v49 = sub_1B9871C9C;
    v50 = v38;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    v49 = sub_1B9871CB0;
    v50 = v39;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    v49 = sub_1B9871CBC;
    v50 = v40;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    v49 = sub_1B9871CC4;
    v50 = v41;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    v49 = sub_1B9871CD8;
    v50 = v42;
    sub_1B98526A4(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_1B982F000, v44, v45, "%{public}s predicate: %s", buf, 0x16u);
    sub_1B985281C(v24);
    sub_1B985281C(v25);
    sub_1B98F5C08();
  }

  else
  {
  }

  v18 = v26[26];
  v19 = v26[24];
  v20 = v26[17];
  v17 = v26[25];
  MEMORY[0x1E69E5920](v44);
  (*(v17 + 8))(v18, v19);
  swift_beginAccess();
  v21 = *(v20 + 16);

  swift_endAccess();
  v22 = sub_1B9869A58();
  v14 = v26[23];
  v15 = v26[20];
  v13 = v26[16];

  v26[10] = v22;
  sub_1B98F5298();

  v26[11] = sub_1B98F52A8();
  sub_1B9871470(v13, v14);
  type metadata accessor for ManagedHandle();
  sub_1B9870EA4();
  sub_1B986C314();
  sub_1B98F52D8();
  v16 = sub_1B98F5268();
  v26[12] = v16;
  sub_1B98F54D8();
  v26[13] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  sub_1B9871798();
  sub_1B98F5B88();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55E0, qword_1B98FAB28);
    sub_1B98F5DE8();
    v12 = v26[14];
    if (!v12)
    {
      break;
    }

    v26[15] = v12;
    sub_1B98F5278();
  }

  sub_1B9871CE4(v26 + 5);
  sub_1B98F5258();
  v9 = v26[26];
  v10 = v26[23];
  v11 = v26[20];
  v8 = v26[18];
  v7 = v26[19];

  (*(v7 + 8))(v11, v8);

  v4 = *(v26[7] + 8);
  v5 = v26[7];

  return v4();
}

uint64_t sub_1B9870710(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B98707C4;

  return sub_1B986A46C(a1);
}

uint64_t sub_1B98707C4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B9870950(const void *a1)
{
  v4 = sub_1B986B394(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B98709A4(const void *a1)
{
  v4 = sub_1B986C39C(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B98709F8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9870AAC;

  return sub_1B986D1AC(a1);
}

uint64_t sub_1B9870AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B9870C38(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9870CEC;

  return sub_1B986F6E4(a1);
}

uint64_t sub_1B9870CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

unint64_t sub_1B9870EA4()
{
  v2 = qword_1EBBD5578;
  if (!qword_1EBBD5578)
  {
    type metadata accessor for ManagedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9870F24()
{
  v2 = qword_1EBBD5580;
  if (!qword_1EBBD5580)
  {
    type metadata accessor for ManagedContact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9870FA4()
{
  v2 = qword_1EBBD5590;
  if (!qword_1EBBD5590)
  {
    sub_1B98F5388();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5590);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void *sub_1B98710A4(const void *a1, void *a2)
{
  v6 = sub_1B98F4F88();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B98711CC(uint64_t a1)
{
  v3 = sub_1B98F4F88();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for ContainerProvider()
{
  v1 = qword_1EBBD55E8;
  if (!qword_1EBBD55E8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B98712F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9871358()
{
  v2 = qword_1EBBD5910;
  if (!qword_1EBBD5910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5910);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9871430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B9833B74();
  return a1;
}

void *sub_1B9871470(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B98715A4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B98716D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B986C2D4(v2);
}

unint64_t sub_1B9871798()
{
  v2 = qword_1EBBD55C0;
  if (!qword_1EBBD55C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871820()
{
  v2 = qword_1EBBD5940;
  if (!qword_1EBBD5940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5940);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98718A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B986D16C(v2);
}

uint64_t sub_1B9871970()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9871A5C()
{
  v2 = qword_1EBBD55D0;
  if (!qword_1EBBD55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871B10()
{
  v2 = qword_1EBBD55D8;
  if (!qword_1EBBD55D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD55D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9871B98()
{
  v1 = *(type metadata accessor for BlockedHandle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B986F67C();
}

uint64_t sub_1B9871C24()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98706D0(v2);
}

uint64_t *sub_1B9871CE4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B9871D2C()
{
  v2 = sub_1B98F4F88();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B9871E40(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5608, &qword_1B98FAC00);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

void *sub_1B9871EF0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B9871F30()
{
  v2 = qword_1EBBD5628;
  if (!qword_1EBBD5628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5610, &qword_1B98FAC08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9871FB8()
{
  v2 = qword_1EBBD5638;
  if (!qword_1EBBD5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5630, qword_1B98FAC28);
    sub_1B9872060();
    sub_1B9872230();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872060()
{
  v2 = qword_1EBBD5640;
  if (!qword_1EBBD5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5620, &qword_1B98FAC18);
    sub_1B9872108();
    sub_1B987219C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872108()
{
  v2 = qword_1EBBD5648;
  if (!qword_1EBBD5648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B987219C()
{
  v2 = qword_1EBBD5650;
  if (!qword_1EBBD5650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872230()
{
  v2 = qword_1EBBD5658;
  if (!qword_1EBBD5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5618, &qword_1B98FAC10);
    sub_1B98722C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98722C8()
{
  v2 = qword_1EBBD5660;
  if (!qword_1EBBD5660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5610, &qword_1B98FAC08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9872350()
{
  v2 = qword_1EBBD5668;
  if (!qword_1EBBD5668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5620, &qword_1B98FAC18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98723D8()
{
  v2 = qword_1EBBD5670;
  if (!qword_1EBBD5670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5618, &qword_1B98FAC10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5670);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9872460(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B9872498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 8) + **(a3 + 8));
  v4 = *(*(a3 + 8) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98725D4;

  return v10(a1, a2, a3);
}

uint64_t sub_1B98725D4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B987274C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 32) + **(a3 + 32));
  v4 = *(*(a3 + 32) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9872888;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9872888()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98729B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 40) + **(a3 + 40));
  v4 = *(*(a3 + 40) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9872AEC;

  return v10(a1, a2, a3);
}

uint64_t sub_1B9872AEC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B9872C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B9872CEC(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B9872C34(a1, v5);
  sub_1B9872D48(v5, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B9872D84(uint64_t a1)
{
  v42 = a1;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v43 = __b;
  v45 = 40;
  memset(__b, 0, sizeof(__b));
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v33 = 0;
  v40 = type metadata accessor for BlockedHandle();
  v27 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40, v2);
  v28 = &v14 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v27, v4);
  v30 = &v14 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v29, v6);
  v32 = &v14 - v31;
  v57 = &v14 - v31;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v33, v40);
  v36 = &v14 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v14 - v37;
  v56 = v9;
  v55 = v1;
  v39 = sub_1B98F5F98();
  v41 = sub_1B9853574();
  v54 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v44 = &v58;
  sub_1B98F5498();
  memcpy(v43, v44, v45);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v36, v38);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v25 - 8) + 48))(v38, 1) == 1)
    {
      break;
    }

    v10 = &v38[*(v25 + 48)];
    v23 = *v10;
    v24 = v10[8];
    sub_1B9832680(v38, v32);
    v51 = v23;
    v52 = v24 & 1;
    if (v24)
    {
      goto LABEL_8;
    }

    v22 = v23;
    v47 = v23;
    v46[1] = v23;
    v11 = *sub_1B98E6FD4();
    v21 = v46;
    v46[0] = v11;
    sub_1B9873520();
    v12 = sub_1B98F60E8();
    if ((v12 & 1) == 0)
    {
LABEL_8:
      v19 = v48;
      sub_1B9872C34(v26 + 16, v48);
      v17 = v49;
      v18 = v50;
      __swift_project_boxed_opaque_existential_1(v19, v49);
      v20 = (*(v18 + 8))(v32, v17);
      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v20)
      {
        sub_1B9833334(v32, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v30);
      }
    }

    sub_1B983A3AC(v32);
  }

  sub_1B987349C(__b);
  v15 = &v54;
  v16 = v54;
  sub_1B98F54D8();
  sub_1B9868D78(v15);
  return v16;
}

char *sub_1B98732E4(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v7 = type metadata accessor for BlockedHandle();
    *&a2[v7[5]] = *&a1[v7[5]];
    *&a2[v7[6]] = *&a1[v7[6]];
    *&a2[v7[7]] = *&a1[v7[7]];
    *&a2[v7[8]] = *&a1[v7[8]];
    v3 = &a2[*(v10 + 48)];
    v4 = &a1[*(v10 + 48)];
    *v3 = *v4;
    v3[8] = v4[8];
    (*(v11 + 56))();
  }

  return a2;
}

uint64_t *sub_1B987349C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98734DC();
  return a1;
}

unint64_t sub_1B9873520()
{
  v2 = qword_1EBBD5900;
  if (!qword_1EBBD5900)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9873598(uint64_t a1)
{
  v42 = a1;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v43 = __b;
  v45 = 40;
  memset(__b, 0, sizeof(__b));
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v33 = 0;
  v40 = type metadata accessor for BlockedHandle();
  v27 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40, v2);
  v28 = &v14 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v27, v4);
  v30 = &v14 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v29, v6);
  v32 = &v14 - v31;
  v57 = &v14 - v31;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v33, v40);
  v36 = &v14 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v14 - v37;
  v56 = v9;
  v55 = v1;
  v39 = sub_1B98F5F98();
  v41 = sub_1B9853574();
  v54 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v44 = &v58;
  sub_1B98F5498();
  memcpy(v43, v44, v45);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v36, v38);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v25 - 8) + 48))(v38, 1) == 1)
    {
      break;
    }

    v10 = &v38[*(v25 + 48)];
    v23 = *v10;
    v24 = v10[8];
    sub_1B9832680(v38, v32);
    v51 = v23;
    v52 = v24 & 1;
    if (v24)
    {
      goto LABEL_8;
    }

    v22 = v23;
    v47 = v23;
    v46[1] = v23;
    v11 = *sub_1B98E6FD4();
    v21 = v46;
    v46[0] = v11;
    sub_1B9873520();
    v12 = sub_1B98F60E8();
    if ((v12 & 1) == 0)
    {
LABEL_8:
      v19 = v48;
      sub_1B9872C34(v26 + 16, v48);
      v17 = v49;
      v18 = v50;
      __swift_project_boxed_opaque_existential_1(v19, v49);
      v20 = (*(v18 + 16))(v32, v17);
      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v20)
      {
        sub_1B9833334(v32, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v30);
      }
    }

    sub_1B983A3AC(v32);
  }

  sub_1B987349C(__b);
  v15 = &v54;
  v16 = v54;
  sub_1B98F54D8();
  sub_1B9868D78(v15);
  return v16;
}