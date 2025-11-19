void sub_22B784E50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_22B784EC8(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  v11 = *(TupleTypeMetadata2 + 48);
  v12 = *a2;
  v13 = *v3;
  v14 = v3[1];
  sub_22B7DB9A8();
  sub_22B7DB9A8();
  return sub_22B786594;
}

void sub_22B7850CC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  Multimap.startIndex.getter((a1 + 40));
}

uint64_t sub_22B785100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22B785154()
{
  swift_getWitnessTable();
  v1 = sub_22B78650C();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];

  return v1;
}

unint64_t sub_22B785218()
{
  result = qword_27D8CF058;
  if (!qword_27D8CF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF058);
  }

  return result;
}

unint64_t sub_22B785270()
{
  result = qword_27D8CF060[0];
  if (!qword_27D8CF060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8CF060);
  }

  return result;
}

uint64_t sub_22B785314()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MultimapIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultimapIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22B7853D4(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for Multimap();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B785468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_22B7855EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_22B785848(unint64_t a1, void *a2)
{
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = *(v2 + 3);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for Multimap();

  sub_22B784B6C(a1, v7);
}

uint64_t sub_22B785910(uint64_t a1)
{
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = *(v1 + 3);
  v2 = *(a1 + 44);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Multimap();

  v7 = sub_22B78483C(v1 + v2, v6);
  v9 = v8;

  if (v9)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_22B7859C8(uint64_t result, uint64_t a2)
{
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[2];
  v3 = *(v2 + 3);
  v4 = result + 1;
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 44);
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = type metadata accessor for Multimap();

    v10 = sub_22B7848D8(v2 + v5, v4, v9);
    v12 = v11;

    if (v12)
    {
      return -1;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_22B785AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22B785910(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22B785B00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_22B786354();
  *a2 = result;
  return result;
}

void (*sub_22B785B34(void *a1, unint64_t *a2, void *a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22B785C04(v6, *a2, a3);
  return sub_22B785BBC;
}

void sub_22B785BBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_22B785C04(void *a1, unint64_t a2, void *a3))()
{
  v6 = a3[3];
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_22B785848(a2, a3);
  return sub_22B785CD4;
}

void sub_22B785CD8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_22B785D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22B7859C8(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B785D54(uint64_t *a1, uint64_t a2)
{
  result = sub_22B7859C8(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t sub_22B785D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_22B7DC438() + 36);
  v7 = sub_22B785910(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_22B785E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22B785EC0(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_22B78650C();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_22B785FA0(uint64_t a1, uint64_t a2)
{
  v9[1] = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = a2;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_22B7836E0(sub_22B7862E8, v9, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  v5 = sub_22B7DB5F8();
  v7 = v6;

  v12 = 91;
  v13 = 0xE100000000000000;
  MEMORY[0x231895140](v5, v7);

  MEMORY[0x231895140](93, 0xE100000000000000);

  return v12;
}

uint64_t sub_22B7860E0(uint64_t a1)
{
  v8[1] = *(a1 + 16);
  v9 = *(a1 + 32);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_22B7836E0(sub_22B786330, v8, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v3);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  v4 = sub_22B7DB5F8();
  v6 = v5;

  v10 = 91;
  v11 = 0xE100000000000000;
  MEMORY[0x231895140](v4, v6);

  MEMORY[0x231895140](93, 0xE100000000000000);

  return v10;
}

uint64_t sub_22B786218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_22B7DB6E8();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_22B7862E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  result = sub_22B7DC4E8();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_22B786330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_22B786218(a1, v2[3], a2);
}

uint64_t sub_22B78635C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_22B7DBC38() + 36);
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B786428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B786540()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B7865A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CD600, &unk_22B7F95A0);
    v15 = *v3;
    v16 = sub_22B725570(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B7A3D04();
        v21 = v26;
      }

      sub_22B769A9C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      sub_22B787C88(v18, v21, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22B4D0D64(v9, &qword_27D8CD600, &unk_22B7F95A0);
  }

  else
  {
    sub_22B769A9C(a1, v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_22B7685A8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_22B78680C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B6F0AD4(&qword_27D8CD610, &qword_22B7F95B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CD610, &qword_22B7F95B8);
    v15 = *v3;
    v16 = sub_22B725570(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B7A3D40();
        v21 = v26;
      }

      sub_22B769A9C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      sub_22B787C88(v18, v21, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22B4D0D64(v9, &qword_27D8CD610, &qword_22B7F95B8);
  }

  else
  {
    sub_22B769A9C(a1, v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_22B768704(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_22B786A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22B7689F0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22B723648(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_22B7A411C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_22B788004(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22B786B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22B4D7F04(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22B769174(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_22B4D0D64(a1, &unk_27D8CCDC0, &qword_22B7F9580);
    sub_22B787A60(a2, a3, v10);

    return sub_22B4D0D64(v10, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  return result;
}

uint64_t sub_22B786C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22B6F0AD4(&qword_27D8CF780, &unk_22B7FC160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CF780, &unk_22B7FC160);
    sub_22B787B04(a2, a3, v10);

    return sub_22B4D0D64(v10, &qword_27D8CF780, &unk_22B7FC160);
  }

  else
  {
    sub_22B769A9C(a1, v14, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22B7692C4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22B786E38(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22B7DC178();
    v9 = v8;
    v10 = sub_22B7DC218();
    v12 = v11;
    v13 = MEMORY[0x231895B10](v7, v9, v10, v11);
    sub_22B755198(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_22B755198(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_22B7DC148();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22B788550(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_22B755198(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_22B786F6C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48D0);
  sub_22B4CFA74(v0, qword_27D8D48D0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B786FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 104) = a4;
  v6 = sub_22B7DB3C8();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7870A8, 0, 0);
}

uint64_t sub_22B7870A8()
{
  if (qword_27D8CCC98 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  *(v0 + 56) = sub_22B4CFA74(v1, qword_27D8D48D0);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Reporting spam: %{BOOL}d to TrustKit", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 104);

  sub_22B7DB3F8();
  *(v0 + 64) = sub_22B7DB3E8();
  v8 = *(v6 + 104);
  v9 = *(v0 + 24);
  if (v7 == 1)
  {
    v8(*(v0 + 48), *MEMORY[0x277D73C10], v9);
    v10 = *(MEMORY[0x277D73C20] + 4);
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_22B7872C8;
    v12 = *(v0 + 48);
  }

  else
  {
    v8(*(v0 + 40), *MEMORY[0x277D73C18], v9);
    v13 = *(MEMORY[0x277D73C20] + 4);
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_22B78745C;
    v12 = *(v0 + 40);
  }

  v15 = *(v0 + 16);

  return MEMORY[0x2821DBBE8](v12, v15);
}

uint64_t sub_22B7872C8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_22B7876D0;
  }

  else
  {
    v7 = sub_22B7875F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B78745C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_22B78784C;
  }

  else
  {
    v7 = sub_22B789914;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B7875F0()
{
  v1 = v0[7];
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Reported to TrustKit", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B7876D0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Reporting spam: %{BOOL}d failed with error: %@", v7, 0x12u);
    sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22B78784C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Reporting spam: %{BOOL}d failed with error: %@", v7, 0x12u);
    sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

double sub_22B787A60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22B723648(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B7A4B44();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22B4D7F04((*(v12 + 56) + 32 * v9), a3);
    sub_22B7881B4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B787B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22B723648(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B7A4CE8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
    v22 = *(v15 - 8);
    sub_22B769A9C(v14 + *(v22 + 72) * v9, a3, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
    sub_22B788364(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_22B787C88(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22B7DC158() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v12);
      result = sub_22B7DC6B8();
      v13 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v13 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v4);
      v16 = (v14 + 8 * v7);
      if (v4 != v7 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B787E60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B7DC158() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22B7DC668();
      MEMORY[0x231895FF0](v11);
      MEMORY[0x231895FF0](v12);
      result = sub_22B7DC6B8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B788004(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B7DC158() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22B7DC668();

      sub_22B7DB758();
      v13 = sub_22B7DC6B8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B7881B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B7DC158() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22B7DC668();

      sub_22B7DB758();
      v14 = sub_22B7DC6B8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22B788364(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B7DC158() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22B7DC668();

      sub_22B7DB758();
      v13 = sub_22B7DC6B8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22B788550(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x231895B60](a1, a2, v11);
      sub_22B4D01A0(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22B4D01A0(0, a5, a6);
    if (sub_22B7DC1A8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22B7DC1B8();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_22B7DBFC8();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_22B7DBFD8();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_22B788768(void *a1)
{
  v2 = 0x676E696B776168;
  v3 = [a1 isFiltered];
  if ([a1 isBlackholed])
  {
    return v2;
  }

  if (v3 != 2)
  {
    return 0x6465737361707962;
  }

  v4 = [a1 spamDetectionSource];
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        return 0x7265746C69667031;
      }

      else
      {
        return 0x7265746C69667033;
      }
    }

    if (v4 == 6)
    {
      return 1919251317;
    }

    if (v4 == 7)
    {
      return v2;
    }
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        return 0x726163736FLL;
      }

      else
      {
        return 5461059;
      }
    }

    if (!v4)
    {
      return 0x6465737361707962;
    }

    if (v4 == 1)
    {
      return 0x74696B7473757274;
    }
  }

  type metadata accessor for IMDChatSpamDetectionSource(0);
  result = sub_22B7DC548();
  __break(1u);
  return result;
}

void sub_22B788904(int a1, id a2)
{
  if ([a2 isBlackholed])
  {
    v3 = 0xE900000000000065;
    v4 = 0x6C6F686B63616C62;
  }

  else
  {
    v5 = [a2 isFiltered];
    if (v5 == 2)
    {
      v4 = 1802401130;
    }

    else
    {
      v4 = 0x786F626E69;
    }

    if (v5 == 2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  v6 = sub_22B788768(a2);
  v81 = v7;
  v8 = [a2 service];
  if (!v8)
  {
    __break(1u);
    goto LABEL_59;
  }

  v9 = v8;
  v10 = [v8 internalName];

  v11 = sub_22B7DB6A8();
  v13 = v12;

  v14 = *MEMORY[0x277D1A620];
  if (sub_22B7DB6A8() == v11 && v15 == v13)
  {

LABEL_17:

    v18 = 0;
    goto LABEL_18;
  }

  v17 = sub_22B7DC518();

  if (v17)
  {
    goto LABEL_17;
  }

  v75 = *MEMORY[0x277D1A610];
  if (sub_22B7DB6A8() == v11 && v76 == v13)
  {

LABEL_50:

    v18 = 1;
    goto LABEL_18;
  }

  v77 = sub_22B7DC518();

  if (v77)
  {
    goto LABEL_50;
  }

  v78 = *MEMORY[0x277D1A608];
  if (sub_22B7DB6A8() == v11 && v79 == v13)
  {

    v18 = 2;
  }

  else
  {
    v80 = sub_22B7DC518();

    if (v80)
    {
      v18 = 2;
    }

    else
    {
      v18 = -1;
    }
  }

LABEL_18:
  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_22B7FC130;
  *(inited + 40) = 0x800000022B810FE0;
  v20 = [a2 participants];
  if (!v20)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = v20;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v22 = sub_22B7DB918();

  if (v22 >> 62)
  {
    v23 = sub_22B7DC1C8();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D83B88];
  *(inited + 48) = v23;
  *(inited + 72) = v24;
  strcpy((inited + 80), "reported-from");
  v25 = MEMORY[0x277D837D0];
  *(inited + 94) = -4864;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  v26 = v25;
  *(inited + 120) = v25;
  strcpy((inited + 128), "decisioned-by");
  *(inited + 142) = -4864;
  *(inited + 144) = v6;
  *(inited + 152) = v81;
  *(inited + 168) = v25;
  *(inited + 176) = 0x742D74726F706572;
  *(inited + 184) = 0xEB00000000657079;
  *(inited + 192) = v18;
  *(inited + 216) = v24;
  *(inited + 224) = 0x632D74726F706572;
  *(inited + 232) = 0xEF79726F67657461;

  v27 = sub_22B789654([a2 isFiltered]);
  v28 = sub_22B7DB6A8();
  v30 = v29;

  *(inited + 264) = v26;
  *(inited + 240) = v28;
  *(inited + 248) = v30;
  v31 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  swift_arrayDestroy();
  v32 = [a2 spamDetectedMessage];
  if (v32)
  {
    v33 = v32;
    v34 = sub_22B7DB6A8();
    v36 = v35;

    v84 = v26;
    *&v83 = v34;
    *(&v83 + 1) = v36;
    sub_22B4D7F04(&v83, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B769174(v82, 0xD000000000000015, 0x800000022B811060, isUniquelyReferenced_nonNull_native);
  }

  v38 = sub_22B789720([a2 &selRef_lastTUConversationCreatedDate + 2]);
  if (v38)
  {
    v39 = v38;
    v40 = sub_22B7DB6A8();
    v42 = v41;

    v84 = v26;
    *&v83 = v40;
    *(&v83 + 1) = v42;
    sub_22B4D7F04(&v83, v82);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B769174(v82, 0xD000000000000012, 0x800000022B811040, v43);
  }

  v84 = sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
  *&v83 = v31;

  sub_22B786B6C(&v83, 0x692D74726F706572, 0xEB000000006F666ELL);
  v44 = [objc_opt_self() sharedInstance];
  if (!v44)
  {
    goto LABEL_60;
  }

  v45 = v44;
  v46 = [v44 productOSVersion];

  v47 = v26;
  if (v46)
  {
    v48 = sub_22B7DB6A8();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = *MEMORY[0x277D186B0];
  sub_22B7DB6A8();
  v52 = objc_allocWithZone(MEMORY[0x277D18778]);
  v53 = sub_22B7DB678();

  v54 = [v52 initWithService_];

  if (!v54)
  {

LABEL_35:
    v62 = [objc_allocWithZone(MEMORY[0x277CBEA90]) init];
    goto LABEL_36;
  }

  v55 = [v54 accounts];

  if (!v55)
  {
LABEL_61:
    __break(1u);
    return;
  }

  sub_22B4D01A0(0, &qword_27D8CF1F8, 0x277D186C0);
  sub_22B7898AC();
  v56 = sub_22B7DBAF8();

  v57 = sub_22B786E38(v56, &qword_27D8CF1F8, 0x277D186C0);

  if (!v57)
  {
    goto LABEL_35;
  }

  v58 = [v57 pushToken];

  if (!v58)
  {
    goto LABEL_35;
  }

  v59 = sub_22B7DA848();
  v61 = v60;

  v62 = sub_22B7DA838();
  sub_22B705E98(v59, v61);
LABEL_36:
  v63 = sub_22B7DA9E8();
  if (v63[2])
  {
    v64 = v63[4];
    v65 = v63[5];
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  sub_22B6F0AD4(&qword_27D8CF1E8, &qword_22B7FC150);
  v66 = swift_initStackObject();
  v67 = v66;
  *(v66 + 32) = 0xD000000000000012;
  *(v66 + 16) = xmmword_22B7F97B0;
  *(v66 + 40) = 0x800000022B811000;
  if (v50)
  {
    v68 = MEMORY[0x277D837D0];
  }

  else
  {
    v48 = 0;
    v68 = 0;
    *(v66 + 64) = 0;
  }

  *(v66 + 48) = v48;
  *(v66 + 56) = v50;
  *(v66 + 72) = v68;
  *(v66 + 80) = 0xD000000000000013;
  *(v66 + 88) = 0x800000022B811020;
  v69 = [v62 base64EncodedStringWithOptions_];
  v70 = sub_22B7DB6A8();
  v72 = v71;

  v67[12] = v70;
  v67[13] = v72;
  v67[15] = v47;
  v67[16] = 0x6C2D6D6574737973;
  v67[17] = 0xEF65676175676E61;
  if (v65)
  {
    v73 = MEMORY[0x277D837D0];
  }

  else
  {
    v64 = 0;
    v73 = 0;
    v67[20] = 0;
  }

  v67[18] = v64;
  v67[19] = v65;
  v67[21] = v73;
  v74 = sub_22B71E938(v67);
  swift_setDeallocating();
  sub_22B6F0AD4(&unk_27D8CDB70, &qword_22B7FA370);
  swift_arrayDestroy();
  v84 = sub_22B6F0AD4(&qword_27D8CF1F0, &qword_22B7FC158);
  *&v83 = v74;
  sub_22B786B6C(&v83, 0x692D746E65696C63, 0xEB000000006F666ELL);
}

void sub_22B789268(uint64_t a1, void *a2, char a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedFeatureFlags];
  v12 = [v11 isTrustKitRCSSpamReportingEnabled];

  if ((v12 & 1) == 0)
  {
    v13 = [v10 sharedFeatureFlags];
    v14 = [v13 isIntroductionsEnabled];

    if (!v14)
    {
      if (qword_27D8CCC98 != -1)
      {
        swift_once();
      }

      v22 = sub_22B7DB2B8();
      sub_22B4CFA74(v22, qword_27D8D48D0);
      v24 = sub_22B7DB298();
      v16 = sub_22B7DBC78();
      if (!os_log_type_enabled(v24, v16))
      {
        goto LABEL_14;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "FeatureFlag disabled TrustKit";
      goto LABEL_13;
    }
  }

  if ((IMDisableTrustKitSpamReporting() & 1) == 0)
  {
    v25 = a1;

    sub_22B788904(&v25, a2);
    v19 = sub_22B7DBA58();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = v25;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = a3 & 1;
    *(v21 + 40) = v20;
    sub_22B77E3D4(0, 0, v9, &unk_22B7FC148, v21);

    return;
  }

  if (qword_27D8CCC98 != -1)
  {
    swift_once();
  }

  v15 = sub_22B7DB2B8();
  sub_22B4CFA74(v15, qword_27D8D48D0);
  v24 = sub_22B7DB298();
  v16 = sub_22B7DBC78();
  if (os_log_type_enabled(v24, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Server bag disabled TrustKit";
LABEL_13:
    _os_log_impl(&dword_22B4CC000, v24, v16, v18, v17, 2u);
    MEMORY[0x231898D60](v17, -1, -1);
  }

LABEL_14:
  v23 = v24;
}

uint64_t sub_22B789590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B786FD8(a1, v4, v5, v6, v7);
}

__CFString *sub_22B789654(uint64_t a1)
{
  v1 = a1 & 0xF;
  if (v1 <= 1)
  {
    if ((a1 & 0xF) == 0)
    {
      v2 = @"KnownSender";
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = @"UnknownSender";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v1)
    {
      case 2uLL:
        v2 = @"FilterJunk";
        goto LABEL_12;
      case 3uLL:
        v2 = @"FilterSMSPromotional";
        goto LABEL_12;
      case 4uLL:
        v2 = @"FilterSMSTransactional";
LABEL_12:
        v3 = v2;
        goto LABEL_13;
    }
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a1];
LABEL_13:

  return v2;
}

__CFString *sub_22B789720(uint64_t a1)
{
  if ((a1 & 0xF) == 4)
  {
    v3 = a1 >> 4;
    if (a1 >> 4 <= 4)
    {
      if (v3 > 2)
      {
        if (v3 == 3)
        {
          v2 = @"Orders";
          goto LABEL_32;
        }

        if (v3 == 4)
        {
          v2 = @"Reminder";
          goto LABEL_32;
        }
      }

      else
      {
        if (v3 == 1)
        {
          v2 = @"TransactionalOthers";
          goto LABEL_32;
        }

        if (v3 == 2)
        {
          v2 = @"Finance";
          goto LABEL_32;
        }
      }
    }

    else if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v2 = @"Health";
        goto LABEL_32;
      }

      if (v3 == 6)
      {
        v2 = @"Weather";
        goto LABEL_32;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:
          v2 = @"Carrier";
          goto LABEL_32;
        case 8:
          v2 = @"Rewards";
          goto LABEL_32;
        case 9:
          v2 = @"PublicServices";
          goto LABEL_32;
      }
    }

LABEL_26:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a1];
    goto LABEL_33;
  }

  if ((a1 & 0xF) != 3)
  {
    v2 = 0;
    goto LABEL_33;
  }

  v1 = a1 >> 4;
  if (a1 >> 4 == 12)
  {
    v2 = @"Coupons";
    goto LABEL_32;
  }

  if (v1 == 11)
  {
    v2 = @"Offers";
    goto LABEL_32;
  }

  if (v1 != 10)
  {
    goto LABEL_26;
  }

  v2 = @"PromotionalOthers";
LABEL_32:
  v4 = v2;
LABEL_33:

  return v2;
}

unint64_t sub_22B7898AC()
{
  result = qword_27D8CF200;
  if (!qword_27D8CF200)
  {
    sub_22B4D01A0(255, &qword_27D8CF1F8, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF200);
  }

  return result;
}

uint64_t sub_22B789918(uint64_t a1, uint64_t a2)
{
  sub_22B4DDE6C(a2);
  swift_getAtKeyPath();
  sub_22B4DDE5C(a2);
  return v4;
}

uint64_t (*sub_22B789984())()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 40));
  sub_22B78B88C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));

  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B78B8A8;
}

uint64_t sub_22B789A5C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B78C260;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_22B4DDE6C(v3);
}

uint64_t sub_22B789ADC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B78C248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_22B4DDE6C(v3);
  result = sub_22B4DDE5C(v7);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t (*sub_22B789B78(uint64_t a1, uint64_t a2))()
{
  sub_22B4DDE6C(a2);
  swift_getAtKeyPath();
  sub_22B4DDE5C(a2);
  if (!v5)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  return sub_22B78C248;
}

uint64_t sub_22B789C28@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t (**a3)()@<X8>)
{
  result = a2(*a1, *(a1 + 1), *(a1 + 2));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_22B717740;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

void sub_22B789CB4(void *a1)
{
  v2 = v1;
  v80[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_2814226C8);
    v6 = v3;

    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v9 = 136446466;
      v11 = [*(v1 + 24) identifier];
      v12 = sub_22B7DB6A8();
      v14 = v13;

      v2 = v1;
      v15 = sub_22B4CFAAC(v12, v14, v80);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      v16 = v3;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v17;
      *v10 = v17;
      _os_log_impl(&dword_22B4CC000, v7, v8, "Task %{public}s failed with error %@", v9, 0x16u);
      sub_22B4D0D64(v10, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v10, -1, -1);
      sub_22B4CFB78(v78);
      MEMORY[0x231898D60](v78, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    v18 = *(v2 + 24);
    v80[0] = 0;
    if ([v18 setTaskExpiredWithRetryAfter:v80 error:7200.0])
    {
      v19 = v80[0];
LABEL_25:

      goto LABEL_28;
    }

    v34 = v80[0];
    v35 = sub_22B7DA6F8();

    swift_willThrow();

    v36 = v35;
    v37 = sub_22B7DB298();
    v38 = sub_22B7DBCA8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v79 = v2;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v39 = 136446466;
      v42 = [v18 identifier];
      v43 = sub_22B7DB6A8();
      v45 = v44;

      v46 = sub_22B4CFAAC(v43, v45, v80);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2112;
      v47 = v35;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v48;
      *v40 = v48;
      _os_log_impl(&dword_22B4CC000, v37, v38, "Failed to expire task request for %{public}s with error: %@", v39, 0x16u);
      sub_22B4D0D64(v40, &unk_27D8CEC60, &qword_22B7F9E20);
      v49 = v40;
      v2 = v79;
      MEMORY[0x231898D60](v49, -1, -1);
      sub_22B4CFB78(v41);
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v39, -1, -1);

      goto LABEL_25;
    }

    v60 = v35;
    goto LABEL_27;
  }

  v20 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  os_unfair_lock_lock((v20 + 40));
  sub_22B78B81C((v20 + 16), v80);
  os_unfair_lock_unlock((v20 + 40));

  if (LOBYTE(v80[0]) == 1)
  {
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_2814226C8);

    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC78();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v80[0] = v26;
      *v25 = 136446210;
      v27 = [*(v1 + 24) identifier];
      v28 = sub_22B7DB6A8();
      v30 = v29;

      v31 = sub_22B4CFAAC(v28, v30, v80);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Task %{public}s suspended", v25, 0xCu);
      sub_22B4CFB78(v26);
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    v32 = *(v1 + 24);
    v80[0] = 0;
    if ([v32 setTaskExpiredWithRetryAfter:v80 error:300.0])
    {
      v33 = v80[0];
      goto LABEL_28;
    }

    v61 = v80[0];
    v3 = sub_22B7DA6F8();

    swift_willThrow();

    v62 = v3;
    v37 = sub_22B7DB298();
    v63 = sub_22B7DBCA8();

    if (os_log_type_enabled(v37, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80[0] = v66;
      *v64 = 136446466;
      v67 = [v32 identifier];
      v68 = sub_22B7DB6A8();
      v70 = v69;

      v71 = sub_22B4CFAAC(v68, v70, v80);

      *(v64 + 4) = v71;
      *(v64 + 12) = 2112;
      v72 = v3;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 14) = v73;
      *v65 = v73;
      _os_log_impl(&dword_22B4CC000, v37, v63, "Failed to expire task request for %{public}s with error: %@", v64, 0x16u);
      sub_22B4D0D64(v65, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v65, -1, -1);
      sub_22B4CFB78(v66);
      MEMORY[0x231898D60](v66, -1, -1);
      MEMORY[0x231898D60](v64, -1, -1);

      goto LABEL_25;
    }

    v60 = v3;
LABEL_27:

    goto LABEL_28;
  }

  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v50 = sub_22B7DB2B8();
  sub_22B4CFA74(v50, qword_2814226C8);

  v51 = sub_22B7DB298();
  v52 = sub_22B7DBC78();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v80[0] = v54;
    *v53 = 136446210;
    v55 = [*(v2 + 24) identifier];
    v56 = sub_22B7DB6A8();
    v58 = v57;

    v59 = sub_22B4CFAAC(v56, v58, v80);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_22B4CC000, v51, v52, "Task %{public}s finished", v53, 0xCu);
    sub_22B4CFB78(v54);
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v53, -1, -1);
  }

  [*(v2 + 24) setTaskCompleted];
LABEL_28:
  v74 = sub_22B789984();
  if (v74)
  {
    v75 = v74;
    v74();
    v74 = sub_22B4DDE5C(v75);
  }

  v76 = *(v2 + 32);
  MEMORY[0x28223BE20](v74);
  os_unfair_lock_lock(v76 + 10);
  sub_22B78B86C(&v76[4]);
  os_unfair_lock_unlock(v76 + 10);
  v77 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B78A648()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - v6;
  if (*(v0 + 16) == 1)
  {
    result = [objc_opt_self() needsReindexing];
    if (result)
    {
      v9 = [objc_opt_self() sharedFeatureFlags];
      v10 = [v9 isSpotlightReindexRefactorEnabled];

      if ((v10 & 1) != 0 || (v11 = objc_opt_self(), ![v11 isThrottled]))
      {
        if (qword_28141F3D8 != -1)
        {
          swift_once();
        }

        v29 = sub_22B7DB2B8();
        sub_22B4CFA74(v29, qword_2814226C8);

        v30 = v0;
        v31 = sub_22B7DB298();
        v32 = sub_22B7DBC78();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136446210;
          v35 = [v30[3] identifier];
          v36 = sub_22B7DB6A8();
          v38 = v37;

          v39 = sub_22B4CFAAC(v36, v38, aBlock);

          *(v33 + 4) = v39;
          _os_log_impl(&dword_22B4CC000, v31, v32, "Initiating reindex for %{public}s", v33, 0xCu);
          sub_22B4CFB78(v34);
          MEMORY[0x231898D60](v34, -1, -1);
          MEMORY[0x231898D60](v33, -1, -1);
        }

        v40 = [objc_opt_self() queryProvider];
        v41 = [objc_opt_self() contextWithReason_];
        aBlock[4] = sub_22B78B774;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22B78B014;
        aBlock[3] = &unk_283F1EC98;
        v42 = _Block_copy(aBlock);

        [v40 setNeedsMessageReindexingWithContext:v41 completion:v42];
        _Block_release(v42);
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_28141F3D8 != -1)
        {
          swift_once();
        }

        v12 = sub_22B7DB2B8();
        v13 = sub_22B4CFA74(v12, qword_2814226C8);

        v68 = v0;
        v14 = sub_22B7DB298();
        v15 = v68;
        v16 = v14;
        v17 = sub_22B7DBC78();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          aBlock[0] = v66;
          *v18 = 136446210;
          v19 = [*(v15 + 24) identifier];
          v20 = sub_22B7DB6A8();
          v67 = v13;
          v21 = v20;
          v23 = v22;

          v24 = sub_22B4CFAAC(v21, v23, aBlock);

          *(v18 + 4) = v24;
          _os_log_impl(&dword_22B4CC000, v16, v17, "Task %{public}s needs reindexing but indexing is throttled, deferring", v18, 0xCu);
          v25 = v66;
          sub_22B4CFB78(v66);
          MEMORY[0x231898D60](v25, -1, -1);
          MEMORY[0x231898D60](v18, -1, -1);
        }

        v26 = [v11 dateOfThrottlingCompletion];
        if (v26)
        {
          v27 = v26;
          sub_22B7DA928();

          v28 = sub_22B7DA968();
          (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
        }

        else
        {
          v28 = sub_22B7DA968();
          (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
        }

        sub_22B78B77C(v5, v7);
        sub_22B7DA968();
        v44 = *(v28 - 8);
        if ((*(v44 + 48))(v7, 1, v28) == 1)
        {
          sub_22B4D0D64(v7, &unk_27D8CF790, &qword_22B7F9578);
          v45 = 900.0;
        }

        else
        {
          sub_22B7DA8E8();
          v15 = v68;
          v47 = v46;
          (*(v44 + 8))(v7, v28);
          v45 = v47;
        }

        v48 = *(v15 + 24);
        aBlock[0] = 0;
        if ([v48 setTaskExpiredWithRetryAfter:aBlock error:v45])
        {
          v49 = aBlock[0];
        }

        else
        {
          v50 = aBlock[0];
          v51 = sub_22B7DA6F8();

          swift_willThrow();

          v52 = v51;
          v53 = sub_22B7DB298();
          v54 = sub_22B7DBCA8();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            aBlock[0] = v57;
            *v55 = 136446466;
            v58 = [v48 identifier];
            v59 = sub_22B7DB6A8();
            v61 = v60;

            v62 = sub_22B4CFAAC(v59, v61, aBlock);

            *(v55 + 4) = v62;
            *(v55 + 12) = 2112;
            v63 = v51;
            v64 = _swift_stdlib_bridgeErrorToNSError();
            *(v55 + 14) = v64;
            *v56 = v64;
            _os_log_impl(&dword_22B4CC000, v53, v54, "Failed to expire task request for %{public}s with error: %@", v55, 0x16u);
            sub_22B4D0D64(v56, &unk_27D8CEC60, &qword_22B7F9E20);
            MEMORY[0x231898D60](v56, -1, -1);
            sub_22B4CFB78(v57);
            MEMORY[0x231898D60](v57, -1, -1);
            MEMORY[0x231898D60](v55, -1, -1);
          }

          else
          {
          }
        }
      }

      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B78AE88(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() spotlightIndexQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22B78B7EC;
  *(v6 + 24) = v5;
  v10[4] = sub_22B78C244;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22B716E5C;
  v10[3] = &unk_283F1ED10;
  v7 = _Block_copy(v10);

  v8 = a1;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_22B78B014(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_22B78B080()
{
  v1 = v0;
  v2 = [objc_opt_self() reindexSchedulingInProgress];
  if (v2)
  {
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_2814226C8);

    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17[0] = v7;
      *v6 = 136446210;
      v8 = [*(v1 + 24) identifier];
      v9 = sub_22B7DB6A8();
      v11 = v10;

      v12 = sub_22B4CFAAC(v9, v11, v17);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_22B4CC000, v4, v5, "Resuming reindex for %{public}s", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    v13 = [objc_opt_self() pTaskQueryProvider];
    if (v13)
    {
      v14 = v13;
      v17[4] = sub_22B78B764;
      v17[5] = v1;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 1107296256;
      v17[2] = sub_22B4D22C0;
      v17[3] = &unk_283F1EC20;
      v15 = _Block_copy(v17);

      [v14 resumeReindexSchedulingWithCompletionBlock_];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  return v2;
}

uint64_t sub_22B78B2F4(uint64_t a1)
{
  v2 = [objc_opt_self() spotlightIndexQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B78B76C;
  *(v3 + 24) = a1;
  v6[4] = sub_22B77E2E8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22B716E5C;
  v6[3] = &unk_283F1EC70;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_22B78B450()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 40));
  v2 = [objc_opt_self() pTaskQueryProvider];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_22B78B540;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_22B4D22C0;
    v5[3] = &unk_283F1EBF8;
    v4 = _Block_copy(v5);
    [v3 suspendReindexSchedulingWithCompletionBlock_];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }
}

void sub_22B78B540()
{
  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_2814226C8);
  oslog = sub_22B7DB298();
  v1 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v1, "Successfully suspended reindex scheduling", v2, 2u);
    MEMORY[0x231898D60](v2, -1, -1);
  }
}

uint64_t sub_22B78B628()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22B78B68C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22B78B6A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22B78B700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B78B77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22B78B7EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_22B789CB4(v1);
}

uint64_t sub_22B78B81C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t sub_22B78B8A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B78B8D0(void *a1, char a2)
{
  sub_22B6F0AD4(&qword_27D8CF208, &unk_22B7FC240);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v5;
  v9[4] = sub_22B78C1B8;
  v10 = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22B4D22C0;
  v9[3] = &unk_283F1EE28;
  v6 = _Block_copy(v9);
  v7 = a1;

  [v7 setExpirationHandler_];
  _Block_release(v6);
  return v2;
}

uint64_t sub_22B78B9D8(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = qword_28141F3D8;
  a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v8 = 136446210;
    v9 = [*(a1 + 24) identifier];
    v10 = sub_22B7DB6A8();
    v12 = v11;

    v13 = sub_22B4CFAAC(v10, v12, &v27);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Processing DAS request to resume %{public}s", v8, 0xCu);
    sub_22B4CFB78(v26);
    MEMORY[0x231898D60](v26, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v14 = sub_22B78A648();
  if (v14 & 1) != 0 || (v14 = sub_22B78B080(), (v14))
  {
    v15 = *(a1 + 32);
    MEMORY[0x28223BE20](v14);
    os_unfair_lock_lock(v15 + 10);
    sub_22B78C22C(&v15[4]);
    os_unfair_lock_unlock(v15 + 10);

    return 1;
  }

  else
  {

    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC78();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446210;
      v21 = [*(a1 + 24) identifier];
      v22 = sub_22B7DB6A8();
      v24 = v23;

      v25 = sub_22B4CFAAC(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Task %{public}s had no actionable work, marking completed", v19, 0xCu);
      sub_22B4CFB78(v20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    [*(a1 + 24) setTaskCompleted];
    sub_22B7BD458();

    return 0;
  }
}

uint64_t sub_22B78BDC4(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = qword_28141F3D8;
  a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v8 = 136446210;
    v9 = [*(a1 + 24) identifier];
    v10 = sub_22B7DB6A8();
    v12 = v11;

    v13 = sub_22B4CFAAC(v10, v12, &v27);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Processing DAS request to resume %{public}s", v8, 0xCu);
    sub_22B4CFB78(v26);
    MEMORY[0x231898D60](v26, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v14 = sub_22B78A648();
  if (v14 & 1) != 0 || (v14 = sub_22B78B080(), (v14))
  {
    v15 = *(a1 + 32);
    MEMORY[0x28223BE20](v14);
    os_unfair_lock_lock(v15 + 10);
    sub_22B78C22C(&v15[4]);
    os_unfair_lock_unlock(v15 + 10);

    return 1;
  }

  else
  {

    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC78();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446210;
      v21 = [*(a1 + 24) identifier];
      v22 = sub_22B7DB6A8();
      v24 = v23;

      v25 = sub_22B4CFAAC(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Task %{public}s had no actionable work, marking completed", v19, 0xCu);
      sub_22B4CFB78(v20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    [*(a1 + 24) setTaskCompleted];
    sub_22B7BD458();

    return 0;
  }
}

uint64_t sub_22B78C1BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_22B4DDE6C(v4);
  result = sub_22B4DDE5C(v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

id sub_22B78C308(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC12IMDaemonCore34ScheduledMessageMembershipObserver_chatRegistry] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_handleChatParticipantsDidChange_ name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  return v8;
}

id ScheduledMessageMembershipObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22B78C58C()
{
  sub_22B7DA668();
  if (!v54[3])
  {
    sub_22B4D0138(v54);
    return;
  }

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  if (swift_dynamicCast())
  {
    v0 = v55;
    v1 = sub_22B7DA678();
    if (v1)
    {
      v2 = v1;
      sub_22B7DB6A8();
      sub_22B7DC248();
      if (*(v2 + 16))
      {
        v3 = sub_22B4D7EC0(v54);
        if (v4)
        {
          sub_22B4D1F68(*(v2 + 56) + 32 * v3, &v55);
          sub_22B4DA138(v54);

          if (*(&v56 + 1))
          {
            sub_22B6F0AD4(&qword_27D8CF220, &qword_22B7FC290);
            if (swift_dynamicCast())
            {
              v5 = v54[0];
              goto LABEL_14;
            }

LABEL_13:
            v5 = MEMORY[0x277D84F90];
LABEL_14:
            v6 = sub_22B7DA678();
            if (v6)
            {
              v7 = v6;
              sub_22B7DB6A8();
              sub_22B7DC248();
              if (*(v7 + 16))
              {
                v8 = sub_22B4D7EC0(v54);
                if (v9)
                {
                  sub_22B4D1F68(*(v7 + 56) + 32 * v8, &v55);
                  sub_22B4DA138(v54);

                  if (*(&v56 + 1))
                  {
                    sub_22B6F0AD4(&qword_27D8CF220, &qword_22B7FC290);
                    if (swift_dynamicCast())
                    {
                      v10 = v54[0];
                      goto LABEL_24;
                    }

LABEL_23:
                    v10 = MEMORY[0x277D84F90];
LABEL_24:
                    if (qword_28141F378 != -1)
                    {
LABEL_55:
                      swift_once();
                    }

                    v11 = sub_22B7DB2B8();
                    sub_22B4CFA74(v11, qword_281422638);
                    v12 = v0;

                    v13 = sub_22B7DB298();
                    v14 = sub_22B7DBCB8();
                    if (os_log_type_enabled(v13, v14))
                    {
                      v15 = swift_slowAlloc();
                      v16 = v5;
                      v17 = swift_slowAlloc();
                      v54[0] = v17;
                      *v15 = 136315650;
                      v18 = [v12 guid];

                      if (!v18)
                      {

                        swift_bridgeObjectRelease_n();
                        __break(1u);
                        return;
                      }

                      v19 = sub_22B7DB6A8();
                      v21 = v20;

                      v22 = sub_22B4CFAAC(v19, v21, v54);

                      *(v15 + 4) = v22;
                      *(v15 + 12) = 2080;
                      v23 = sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
                      v24 = MEMORY[0x2318952A0](v16, v23);
                      v26 = sub_22B4CFAAC(v24, v25, v54);

                      *(v15 + 14) = v26;
                      *(v15 + 22) = 2080;
                      v27 = MEMORY[0x2318952A0](v10, v23);
                      v29 = sub_22B4CFAAC(v27, v28, v54);

                      *(v15 + 24) = v29;
                      _os_log_impl(&dword_22B4CC000, v13, v14, "Participants for Chat %s changed. Added:  %s Removed: %s. Updating scheduled messages accordingly", v15, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x231898D60](v17, -1, -1);
                      MEMORY[0x231898D60](v15, -1, -1);

                      v5 = v16;
                    }

                    else
                    {
                    }

                    if (v5 >> 62)
                    {
                      v30 = sub_22B7DC1C8();
                      v0 = v10 >> 62;
                      if (v30)
                      {
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      v30 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v0 = v10 >> 62;
                      if (v30)
                      {
                        goto LABEL_33;
                      }
                    }

                    if (!v0)
                    {
                      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_33;
                      }

LABEL_66:

                      v48 = sub_22B7DB298();
                      v49 = sub_22B7DBC98();
                      if (os_log_type_enabled(v48, v49))
                      {
                        v50 = v12;
                        v51 = swift_slowAlloc();
                        *v51 = 0;
                        _os_log_impl(&dword_22B4CC000, v48, v49, "Bailing. Both addedParticipants & removedParticipants are empty", v51, 2u);
                        MEMORY[0x231898D60](v51, -1, -1);

                        return;
                      }

                      goto LABEL_63;
                    }

                    if (!sub_22B7DC1C8())
                    {
                      goto LABEL_66;
                    }

LABEL_33:
                    if (v0)
                    {
                      v31 = sub_22B7DC1C8();
                      p_cb = &OBJC_PROTOCOL___IMDTrustKitDecisioningManaging.cb;
                      if (v31)
                      {
LABEL_35:
                        v53 = v5;
                        v5 = 0;
                        v33 = MEMORY[0x277D84F90];
                        do
                        {
                          v34 = v5;
                          while (1)
                          {
                            if ((v10 & 0xC000000000000001) != 0)
                            {
                              v35 = MEMORY[0x231895C80](v34, v10);
                            }

                            else
                            {
                              if (v34 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_54;
                              }

                              v35 = *(v10 + 8 * v34 + 32);
                            }

                            v36 = v35;
                            v5 = v34 + 1;
                            if (__OFADD__(v34, 1))
                            {
                              __break(1u);
LABEL_54:
                              __break(1u);
                              goto LABEL_55;
                            }

                            v37 = [v35 ID];
                            if (v37)
                            {
                              break;
                            }

                            ++v34;
                            if (v5 == v31)
                            {
                              goto LABEL_50;
                            }
                          }

                          v38 = v37;
                          v39 = sub_22B7DB6A8();
                          v52 = v40;

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v33 = sub_22B71BD80(0, *(v33 + 2) + 1, 1, v33);
                          }

                          v0 = *(v33 + 2);
                          v41 = *(v33 + 3);
                          if (v0 >= v41 >> 1)
                          {
                            v33 = sub_22B71BD80((v41 > 1), v0 + 1, 1, v33);
                          }

                          *(v33 + 2) = v0 + 1;
                          v42 = &v33[16 * v0];
                          *(v42 + 4) = v39;
                          *(v42 + 5) = v52;
                        }

                        while (v5 != v31);
LABEL_50:

                        p_cb = &OBJC_PROTOCOL___IMDTrustKitDecisioningManaging.cb;
                        Strong = swift_unknownObjectWeakLoadStrong();
                        v5 = v53;
                        if (Strong)
                        {
                          v44 = Strong;
                          sub_22B7775E4(v12, v33, 2);
                        }
                      }
                    }

                    else
                    {
                      v31 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      p_cb = (&OBJC_PROTOCOL___IMDTrustKitDecisioningManaging + 64);
                      if (v31)
                      {
                        goto LABEL_35;
                      }
                    }

                    if (v30)
                    {
                      v45 = *(p_cb + 66);
                      v46 = swift_unknownObjectWeakLoadStrong();
                      if (v46)
                      {
                        v47 = v46;
                        sub_22B778754(v12, v5);
                      }
                    }

LABEL_63:

                    return;
                  }

LABEL_22:
                  sub_22B4D0138(&v55);
                  goto LABEL_23;
                }
              }

              sub_22B4DA138(v54);
            }

            v55 = 0u;
            v56 = 0u;
            goto LABEL_22;
          }

LABEL_12:
          sub_22B4D0138(&v55);
          goto LABEL_13;
        }
      }

      sub_22B4DA138(v54);
    }

    v55 = 0u;
    v56 = 0u;
    goto LABEL_12;
  }
}

id ScheduledMessageMembershipObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

IMDaemonCore::EmojiParseResult __swiftcall EmojiParseResult.init(emoji:infix:)(Swift::String_optional emoji, Swift::String infix)
{
  *v2 = emoji;
  v2[1].value = infix;
  result.infix = infix;
  result.emoji = emoji;
  return result;
}

uint64_t EmojiParseResult.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];

  sub_22B7DC2E8();

  sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
  v5 = sub_22B7DB6C8();
  MEMORY[0x231895140](v5);

  MEMORY[0x231895140](0x3A7869666E69202CLL, 0xEA00000000002220);
  MEMORY[0x231895140](v3, v4);
  MEMORY[0x231895140](34, 0xE100000000000000);
  return 0x203A696A6F6D65;
}

double sub_22B78CF94@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = a1[2];
  if (a2)
  {
    if (v4 == 1)
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];

      v9 = MEMORY[0x231895080](v5, v6, v7, v8);
      v11 = v10;

      *a3 = 0;
      a3[1] = 0;
      a3[2] = v9;
      a3[3] = v11;
      return result;
    }
  }

  else if (v4 == 2)
  {
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v16 = a1[7];

    v18 = MEMORY[0x231895080](v13, v14, v15, v16);
    v20 = v19;

    v21 = sub_22B7DB678();
    LODWORD(v16) = CEMStringIsSingleEmoji();

    if (v16)
    {
      v22 = a1;
      v23 = a1[8];
      v24 = a1[9];
      v25 = a1[10];
      v26 = v22[11];

      v27 = MEMORY[0x231895080](v23, v24, v25, v26);
      v29 = v28;

      *a3 = v18;
      a3[1] = v20;
      a3[2] = v27;
      a3[3] = v29;
      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void sub_22B78D0D4()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CF228, &unk_22B7FC400);
  swift_allocObject();
  sub_22B6FE66C(0, 0, 2048, 2048);
  *(v0 + 24) = v2;
  v3 = IMSharedUtilitiesFrameworkBundle();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 localizations];
    v6 = sub_22B7DB918();

    v7 = *(v1 + 16);
    *(v1 + 16) = v6;

    v8 = *(v1 + 24);
    swift_unownedRetainStrong();

    swift_unownedRetain();

    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    *(v8 + 16) = sub_22B78D880;
    *(v8 + 24) = v9;
    sub_22B704BC4(v11);

    v12 = *(v6 + 16);

    if (!v12)
    {
LABEL_6:

      return;
    }

    v13 = 0;
    while (v13 != 0x8000000000)
    {
      v14 = *(v1 + 24);
      sub_22B700088(v13);
      v15 = *(v1 + 24);
      sub_22B700088(v13 + 1);
      v16 = *(v1 + 24);
      sub_22B700088(v13 + 2);
      v17 = *(v1 + 24);
      sub_22B700088(v13 + 3);
      v18 = *(v1 + 24);
      sub_22B700088(v13 + 4);
      v19 = *(v1 + 24);
      sub_22B700088(v13 + 5);
      v20 = *(v1 + 24);
      sub_22B700088(v13 + 6);
      v21 = *(v1 + 24);
      sub_22B700088(v13 + 7);
      v22 = *(v1 + 24);
      sub_22B700088(v13 + 8);
      v23 = *(v1 + 24);
      sub_22B700088(v13 + 9);
      v24 = *(v1 + 24);
      sub_22B700088(v13 + 10);
      v25 = *(v1 + 24);
      sub_22B700088(v13 + 11);
      v26 = *(v1 + 24);
      sub_22B700088(v13 + 12);
      v27 = *(v1 + 24);
      sub_22B700088(v13 + 13);
      v28 = *(v1 + 24);
      sub_22B700088(v13 + 14);
      v29 = *(v1 + 24);
      sub_22B700088(v13 + 15);
      v30 = *(v1 + 24);
      sub_22B700088(v13 + 16);
      v31 = *(v1 + 24);
      sub_22B700088(v13 + 17);
      v13 += 256;
      if (!--v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_22B78D318(int *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unownedRetainStrong();
  v4 = *(a2 + 16);

  if (v3 >> 8 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3 >> 8;
  if (*(v4 + 16) <= v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v4 + 16 * v6;
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);

  result = IMSharedUtilitiesFrameworkBundle();
  if (result)
  {
    if (v3 <= 0x11u)
    {
      v10 = result;
      v11 = &unk_283F1BA70 + 24 * v3;
      v12 = *(v11 + 4);
      v13 = *(v11 + 5);

      v14 = sub_22B7DB678();

      v15 = sub_22B7DB678();
      v16 = sub_22B7DB678();

      v17 = [v10 localizedStringForKey:v14 value:0 table:v15 localization:v16];

      v18 = sub_22B7DB6A8();
      v20 = v19;

      v21 = sub_22B74B650(v18, v20);
      return v21;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22B78D49C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 24);
  v25 = a1;
  v26 = a2;
  result = sub_22B7008BC(a1, a2);
  v8 = v7;
  if (!v7)
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v9 = result;
  MEMORY[0x28223BE20](result);
  v24[2] = &v25;
  v11 = sub_22B6FC9F4(sub_22B703B48, v24, v10);

  if (v9 <= 0x11uLL)
  {
    v12 = &unk_283F1BA70 + 24 * v9;
    v15 = *(v12 + 6);
    v14 = (v12 + 48);
    v13 = v15;
    v16 = qword_283F1BC60 == v15 || unk_283F1BC68 == v13;
    v17 = !v16;
    if (!v16 || (v18 = [objc_opt_self() sharedFeatureFlags], v19 = objc_msgSend(v18, sel_isEmojiTapbacksEnabled), v18, v19))
    {
      sub_22B78CF94(v11, v17, &v25);

      v20 = v28;
      if (v28)
      {
        v21 = v26;
        v8 = v27;
        v22 = v25;
        v23 = *v14;

        result = sub_22B78D888(v22, v21, v8, v20);
LABEL_19:
        *a3 = v22;
        a3[1] = v21;
        a3[2] = v8;
        a3[3] = v20;
        a3[4] = v23;
        return result;
      }

      v22 = 0;
      v21 = 0;
      v8 = 0;
LABEL_18:
      v23 = 0;
      goto LABEL_19;
    }

    v22 = 0;
    v21 = 0;
    v8 = 0;
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B78D66C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s12IMDaemonCore16EmojiParseResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_22B7DC518() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_22B7DC518();
}

uint64_t sub_22B78D75C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B78D7A4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_22B78D82C()
{
  result = qword_281420A58[0];
  if (!qword_281420A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281420A58);
  }

  return result;
}

uint64_t sub_22B78D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

id sub_22B78D950()
{
  result = [objc_allocWithZone(type metadata accessor for IMDWatchSatelliteSyncController()) init];
  qword_281420050 = result;
  return result;
}

id IMDWatchSatelliteSyncController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static IMDWatchSatelliteSyncController.shared.getter()
{
  if (qword_281420040 != -1)
  {
    swift_once();
  }

  v1 = qword_281420050;

  return v1;
}

id sub_22B78DA10(void *a1)
{
  [a1 addObserver_];
  v3 = objc_opt_self();
  v4 = [a1 isSatelliteConnectionActive];

  return [v3 synchronizeSatelliteStatus_];
}

id sub_22B78DA80(char a1)
{
  v2 = objc_opt_self();

  return [v2 synchronizeSatelliteStatus_];
}

id IMDWatchSatelliteSyncController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDWatchSatelliteSyncController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDWatchSatelliteSyncController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDWatchSatelliteSyncController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B78DC60()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF290);
  sub_22B4CFA74(v0, qword_27D8CF290);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B78DCCC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2A8);
  sub_22B4CFA74(v0, qword_27D8CF2A8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B78DD38()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2C0);
  sub_22B4CFA74(v0, qword_27D8CF2C0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B78DDA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a2;
    v9 = a2;
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v23 = objc_opt_self();
      v13 = (a1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;

        v16 = [v23 stringGUID];
        if (v16)
        {
          v17 = v16;
          v18 = sub_22B7DB6A8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_22B78DF74(a6, v18, v20, v14, v15);

        v21 = swift_beginAccess();
        MEMORY[0x231895260](v21);
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22B7DB938();
        }

        sub_22B7DB968();
        swift_endAccess();
        v13 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

id sub_22B78DF74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v67 = a3;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v9 = [objc_opt_self() synchronousDatabase];
  result = [v5 guid];
  if (result)
  {
    v11 = result;
    v12 = sub_22B7DB678();
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a4;
    v13[4] = a5;
    v13[5] = v8;
    aBlock[4] = sub_22B791048;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B78EDAC;
    aBlock[3] = &unk_283F1F038;
    v60 = a4;
    v14 = _Block_copy(aBlock);
    v15 = v5;

    [v9 fetchSyncChatSliceForChatWithGUID:v11 serviceName:v12 completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v17 = v8[2];
    v16 = v8[3];

    v18 = sub_22B78EE38(a1, a2, v67, v17, v16);
    if (v65)
    {
    }

    else
    {
      v67 = v8;

      [v15 style];
      v19 = sub_22B7DB678();
      [v18 _setCKRecordString_forKey_];

      v20 = [v15 chatIdentifier];
      v21 = sub_22B7DB678();
      v22 = IMCopyGUIDForChat();

      if (v22)
      {
        [v18 _setCKRecordString_forKey_];

        v23 = [v15 chatIdentifier];
        [v18 _setCKRecordString_forKey_];

        [v15 style];
        v24 = sub_22B7DC638();
        [v18 _setCKRecordNumber_forKey_];

        [v15 state];
        v25 = sub_22B7DBB38();
        [v18 _setCKRecordNumber_forKey_];

        v26 = [v15 displayName];
        [v18 _setCKRecordString_forKey_];

        [v15 isFiltered];
        v27 = sub_22B7DC628();
        [v18 _setCKRecordNumber_forKey_];

        v28 = [v15 lastAddressedLocalHandle];
        [v18 _setCKRecordString_forKey_];

        [v15 hasHadSuccessfulQuery];
        v29 = sub_22B7DB9B8();
        [v18 _setCKRecordNumber_forKey_];

        [v15 lastReadMessageTimeStamp];
        v30 = sub_22B7DC628();
        [v18 _setCKRecordNumber_forKey_];

        v31 = sub_22B78F29C();
        sub_22B7971D0(v31);

        v32 = sub_22B7DB8F8();

        [v18 _setCKRecordArray_forKey_];

        sub_22B78F65C(v18);
        v33 = objc_opt_self();
        v34 = [v33 sharedFeatureFlags];
        v35 = [v34 isTranscriptBackgroundsMicEnabled];

        if (v35)
        {
          sub_22B78FE64(v18);
        }

        else
        {
          if (qword_27D8CCCB0 != -1)
          {
            swift_once();
          }

          v36 = sub_22B7DB2B8();
          sub_22B4CFA74(v36, qword_27D8CF2A8);
          v37 = sub_22B7DB298();
          v38 = sub_22B7DBCB8();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_22B4CC000, v37, v38, "Bailing out of adding background to record, feature flag is off.", v39, 2u);
            MEMORY[0x231898D60](v39, -1, -1);
          }
        }

        v40 = [v33 sharedFeatureFlags];
        v41 = [v40 isMissingMessagesEnabled];

        if (v41)
        {
          sub_22B7902DC(v18);
        }

        v64 = v33;
        v42 = [v15 syncedProperties];
        if (v42)
        {
          v43 = v42;
          sub_22B7DB588();

          v44 = sub_22B7DB568();
        }

        else
        {
          v44 = 0;
        }

        v45 = JWEncodeDictionary();

        if (v45)
        {
          v46 = sub_22B7DA848();
          v48 = v47;

          v49 = sub_22B7DA838();
          sub_22B705E98(v46, v48);
        }

        else
        {
          v49 = 0;
        }

        [v18 _setCKRecordData_forKey_];

        sub_22B7905D8(v18);
        v50 = [v64 sharedFeatureFlags];
        v51 = [v50 isMissingMessagesEnabled];

        if (!v51 || [v15 &selRef_syncTaskType] != 43)
        {
          v58 = [v15 groupID];
          [v18 _setCKRecordString_forKey_];

          v59 = [v15 originalGroupID];
          [v18 _setCKRecordString_forKey_];

          return v18;
        }

        v52 = sub_22B7DB678();
        v53 = IMChatLookupDomainForServiceName();

        if (v53)
        {
          v54 = [v15 latestIdentifierForDomain_];
          if (v54)
          {
            v55 = v54;
            v56 = [v15 latestIdentifierForDomain_];
            if (v56)
            {
              v57 = v56;
              [v18 _setCKRecordString_forKey_];

              [v18 _setCKRecordString_forKey_];

              return v18;
            }
          }

          else
          {
            v55 = v53;
          }
        }

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:10 userInfo:{0, v61}];
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:13 userInfo:{0, v60}];
      }

      swift_willThrow();
    }

    return v18;
  }

  __break(1u);
  return result;
}

void sub_22B78E910(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_22B7DB918();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_22B78EA9C(id a1, id a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_7:
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v12 = a2;
  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_281422620);
  v14 = a2;
  v15 = a3;

  v16 = sub_22B7DB298();
  v17 = sub_22B7DBC98();
  if (!os_log_type_enabled(v16, v17))
  {

    if (a1)
    {
LABEL_8:
      v27 = [a1 ckRecordID];
      if (v27)
      {
        v28 = v27;
        v29 = sub_22B7DB6A8();
        a1 = v30;
      }

      else
      {
        v29 = 0;
        a1 = 0;
      }

      goto LABEL_13;
    }

LABEL_11:
    v29 = 0;
LABEL_13:
    swift_beginAccess();
    v31 = *(a6 + 24);
    *(a6 + 16) = v29;
    *(a6 + 24) = a1;
  }

  v35 = a4;
  v18 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v36[0] = v34;
  *v18 = 136315650;
  v19 = [v15 guid];
  if (v19)
  {
    v20 = v19;

    v21 = sub_22B7DB6A8();
    v23 = v22;

    v24 = sub_22B4CFAAC(v21, v23, v36);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_22B4CFAAC(v35, a5, v36);
    *(v18 + 22) = 2112;
    v25 = a2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v26;
    *v33 = v26;
    _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to fetch sync chat slice for chat with guid %s service %s error: %@", v18, 0x20u);
    sub_22B4D0D64(v33, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v33, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v34, -1, -1);
    MEMORY[0x231898D60](v18, -1, -1);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_22B78EDAC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_22B78EE38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  if (a5)
  {
    v10 = sub_22B7DB678();
    if (a3)
    {
LABEL_3:
      v11 = sub_22B7DB678();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = objc_opt_self();
  v13 = [v6 guid];
  v14 = [v12 recordNameForRecordChangeTag:0 ckRecordID:v10 salt:v11 guid:v13];

  if (!v14)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v17 = sub_22B7DB2B8();
    sub_22B4CFA74(v17, qword_281422620);
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Could not create record with existing metadata. Using a different method instead", v20, 2u);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    if (a3)
    {
      a3 = sub_22B7DB678();
    }

    v21 = [v6 guid];
    v22 = [v12 recordIDUsingSalt:a3 zoneID:a1 guid:v21];

    if (v22)
    {
      result = [swift_getObjCClassFromMetadata() _recordType];
      if (result)
      {
LABEL_18:
        v23 = result;
        sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
        sub_22B7DB6A8();

        return sub_22B7DBFA8();
      }

      goto LABEL_28;
    }

    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (!os_log_type_enabled(v25, v26))
    {
LABEL_26:

      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:11 userInfo:0];
      return swift_willThrow();
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Could not create record.";
LABEL_25:
    _os_log_impl(&dword_22B4CC000, v25, v26, v28, v27, 2u);
    MEMORY[0x231898D60](v27, -1, -1);
    goto LABEL_26;
  }

  v15 = [v12 recordIDUsingName:v14 zoneID:a1];

  if (!v15)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422620);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_26;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Could not create record with record name.";
    goto LABEL_25;
  }

  result = [swift_getObjCClassFromMetadata() _recordType];
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

char *sub_22B78F29C()
{
  result = [v0 participants];
  if (result)
  {
    v2 = result;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v3 = sub_22B7DB918();

    if (v3 >> 62)
    {
LABEL_28:
      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      v28 = sub_22B7DC1C8();
      if (v28)
      {
LABEL_4:
        v4 = 0;
        v26 = MEMORY[0x277D84F90];
        v5 = &selRef_deleteMessageGUIDs_inChat_;
        do
        {
          v6 = v4;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x231895C80](v6, v3);
            }

            else
            {
              if (v6 >= *(v27 + 16))
              {
                goto LABEL_27;
              }

              v7 = *(v3 + 8 * v6 + 32);
            }

            v8 = v7;
            v4 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v9 = [v7 v5[497]];
            if (v9)
            {
              v10 = v9;
              sub_22B7DB588();

              v11 = sub_22B7DB568();
            }

            else
            {
              v11 = 0;
            }

            v12 = JWEncodeDictionary();

            if (v12)
            {
              break;
            }

            if (qword_28141F370 != -1)
            {
              swift_once();
            }

            v13 = sub_22B7DB2B8();
            sub_22B4CFA74(v13, qword_281422620);
            v14 = v8;
            v15 = sub_22B7DB298();
            v16 = sub_22B7DBC98();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              *v17 = 138412290;
              *(v17 + 4) = v14;
              *v18 = v14;
              v19 = v14;
              _os_log_impl(&dword_22B4CC000, v15, v16, "Could not handle info for %@. Dropping.", v17, 0xCu);
              sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
              MEMORY[0x231898D60](v18, -1, -1);
              v5 = &selRef_deleteMessageGUIDs_inChat_;
              MEMORY[0x231898D60](v17, -1, -1);
            }

            ++v6;
            if (v4 == v28)
            {
              goto LABEL_30;
            }
          }

          v20 = sub_22B7DA848();
          v22 = v21;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_22B71C7CC(0, *(v26 + 2) + 1, 1, v26);
          }

          v24 = *(v26 + 2);
          v23 = *(v26 + 3);
          if (v24 >= v23 >> 1)
          {
            v26 = sub_22B71C7CC((v23 > 1), v24 + 1, 1, v26);
          }

          *(v26 + 2) = v24 + 1;
          v25 = &v26[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
        }

        while (v4 != v28);
        goto LABEL_30;
      }
    }

    else
    {
      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_4;
      }
    }

    v26 = MEMORY[0x277D84F90];
LABEL_30:

    return v26;
  }

  __break(1u);
  return result;
}

void sub_22B78F65C(void *a1)
{
  v3 = v1;
  v5 = sub_22B7DA828();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v16 = [v3 groupPhotoGuid];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v65 = v6;
  v18 = sub_22B7DB6A8();
  v20 = v19;
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    return;
  }

  v63 = v18;
  v64 = v5;
  v22 = [objc_opt_self() sharedInstance];
  if (!v22)
  {

    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 transferForGUID_];

  if (v24)
  {
    v25 = [v24 localURL];
    if (v25)
    {
      v26 = v25;
      sub_22B7DA7D8();

      v27 = v24;
      (*(v65 + 32))(v15, v13, v64);
      if ([v24 isFinished])
      {

        v28 = sub_22B7DA7B8();
        if (v2)
        {
          (*(v65 + 8))(v15, v64);
        }

        else
        {
          v42 = v65;
          if (v28)
          {
            v43 = objc_allocWithZone(MEMORY[0x277CBC190]);
            v44 = sub_22B7DA788();
            v45 = [v43 initWithFileURL_];

            [a1 _setCKRecordAsset_forKey_];
            v46 = @"gpid";
            [a1 _setCKRecordString_forKey_];

            (*(v42 + 8))(v15, v64);
          }

          else
          {

            if (qword_27D8CCCA8 != -1)
            {
              swift_once();
            }

            v47 = sub_22B7DB2B8();
            sub_22B4CFA74(v47, qword_27D8CF290);
            v48 = v64;
            (*(v42 + 16))(v10, v15, v64);
            v49 = sub_22B7DB298();
            v50 = sub_22B7DBCB8();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v61 = v51;
              v63 = swift_slowAlloc();
              v66 = v63;
              *v51 = 136315138;
              sub_22B791054();
              v62 = v49;
              v52 = sub_22B7DC4E8();
              v54 = v53;
              v55 = *(v42 + 8);
              LODWORD(v65) = v50;
              v55(v10, v48);
              v56 = sub_22B4CFAAC(v52, v54, &v66);
              v27 = v24;

              v57 = v61;
              *(v61 + 1) = v56;
              v58 = v62;
              _os_log_impl(&dword_22B4CC000, v62, v65, "Resource not reachable for %s", v57, 0xCu);
              v59 = v63;
              sub_22B4CFB78(v63);
              MEMORY[0x231898D60](v59, -1, -1);
              MEMORY[0x231898D60](v57, -1, -1);
            }

            else
            {

              v55 = *(v42 + 8);
              v55(v10, v48);
            }

            [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:3 userInfo:0];
            swift_willThrow();

            v55(v15, v48);
          }
        }
      }

      else
      {

        if (qword_27D8CCCA8 != -1)
        {
          swift_once();
        }

        v35 = sub_22B7DB2B8();
        sub_22B4CFA74(v35, qword_27D8CF290);

        v36 = sub_22B7DB298();
        v37 = sub_22B7DBCB8();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v66 = v39;
          *v38 = 136315138;
          v40 = sub_22B4CFAAC(v63, v20, &v66);

          *(v38 + 4) = v40;
          _os_log_impl(&dword_22B4CC000, v36, v37, "Transfer not finished for group photo guid %s", v38, 0xCu);
          sub_22B4CFB78(v39);
          MEMORY[0x231898D60](v39, -1, -1);
          v41 = v38;
          v27 = v24;
          MEMORY[0x231898D60](v41, -1, -1);
        }

        else
        {
        }

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:2 userInfo:0];
        swift_willThrow();

        (*(v65 + 8))(v15, v64);
      }

      return;
    }
  }

  if (qword_27D8CCCA8 != -1)
  {
    swift_once();
  }

  v29 = sub_22B7DB2B8();
  sub_22B4CFA74(v29, qword_27D8CF290);

  v30 = sub_22B7DB298();
  v31 = sub_22B7DBCB8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v66 = v33;
    *v32 = 136315138;
    v34 = sub_22B4CFAAC(v63, v20, &v66);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_22B4CC000, v30, v31, "Transfer not found for group photo guid %s", v32, 0xCu);
    sub_22B4CFB78(v33);
    MEMORY[0x231898D60](v33, -1, -1);
    MEMORY[0x231898D60](v32, -1, -1);
  }

  else
  {
  }

  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:1 userInfo:0];
  swift_willThrow();
}

id sub_22B78FE64(void *a1)
{
  v4 = sub_22B7DA828();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 transcriptBackgroundPath];
  if (result)
  {
    v10 = result;
    v11 = sub_22B7DB6A8();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
    }

    sub_22B7DA768();
    v15 = sub_22B7DA7B8();
    if (v2)
    {
      (*(v5 + 8))(v8, v4);
    }

    if (v15)
    {

      v16 = objc_allocWithZone(MEMORY[0x277CBC190]);
      v17 = sub_22B7DA788();
      v18 = [v16 initWithFileURL_];

      if (qword_27D8CCCB0 != -1)
      {
        swift_once();
      }

      v19 = sub_22B7DB2B8();
      sub_22B4CFA74(v19, qword_27D8CF2A8);
      v20 = v18;
      v21 = a1;
      v22 = sub_22B7DB298();
      v23 = sub_22B7DBCB8();

      v35 = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412546;
        *(v24 + 4) = v20;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v20;
        v25[1] = v21;
        v26 = v20;
        v27 = v21;
        _os_log_impl(&dword_22B4CC000, v35, v23, "Setting background asset on record. Asset: %@ Record: %@", v24, 0x16u);
        sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v25, -1, -1);
        MEMORY[0x231898D60](v24, -1, -1);
      }

      [v21 _setCKRecordAsset_forKey_];
    }

    else
    {
      if (qword_27D8CCCB0 != -1)
      {
        swift_once();
      }

      v28 = sub_22B7DB2B8();
      sub_22B4CFA74(v28, qword_27D8CF2A8);

      v29 = sub_22B7DB298();
      v30 = sub_22B7DBCB8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v31 = 136315138;
        v33 = sub_22B4CFAAC(v11, v13, &v36);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_22B4CC000, v29, v30, "Resource not reachable for %s", v31, 0xCu);
        sub_22B4CFB78(v32);
        MEMORY[0x231898D60](v32, -1, -1);
        MEMORY[0x231898D60](v31, -1, -1);
      }

      else
      {
      }

      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:6 userInfo:0];
      swift_willThrow();
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_22B7902DC(void *a1)
{
  if ([v1 style] == 43)
  {
    v3 = [v1 domainIdentifiers];
    if (v3)
    {
      sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
      v4 = sub_22B7DB588();

      sub_22B7B1048(v4);

      v3 = sub_22B7DB568();
    }

    v5 = JWEncodeDictionary();

    if (v5)
    {
      v6 = sub_22B7DA848();
      v8 = v7;

      v9 = sub_22B7DA838();
      [a1 _setCKRecordData_forKey_];

      sub_22B705E98(v6, v8);
      return;
    }

    if (qword_27D8CCCB8 != -1)
    {
      swift_once();
    }

    v10 = sub_22B7DB2B8();
    sub_22B4CFA74(v10, qword_27D8CF2C0);
    v11 = v1;
    v12 = sub_22B7DB298();
    v13 = sub_22B7DBCB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = [v11 guid];

      if (!v16)
      {
        __break(1u);
        return;
      }

      v17 = sub_22B7DB6A8();
      v19 = v18;

      v20 = sub_22B4CFAAC(v17, v19, &v21);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_22B4CC000, v12, v13, "Failed to encode domain identifiers for chat with guid %s. Not adding to record.", v14, 0xCu);
      sub_22B4CFB78(v15);
      MEMORY[0x231898D60](v15, -1, -1);
      MEMORY[0x231898D60](v14, -1, -1);
    }

    else
    {
    }

    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:8 userInfo:0];
    swift_willThrow();
  }
}

void sub_22B7905D8(void *a1)
{
  v2 = v1;
  v4 = sub_22B7DA968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [v2 autoDonationBehaviorLastModificationDate];
  if (v9)
  {
    v10 = v9;
    sub_22B7DA928();

    sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93A0;
    *(inited + 32) = sub_22B7DB6A8();
    *(inited + 40) = v12;
    v13 = [v2 autoDonationBehavior];
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v13;
    *(inited + 80) = sub_22B7DB6A8();
    *(inited + 88) = v14;
    v15 = sub_22B7DA8B8();
    v16 = [v15 __im_nanosecondTimeInterval];

    *(inited + 120) = MEMORY[0x277D84A28];
    *(inited + 96) = v16;
    v17 = sub_22B71DF98(inited);
    swift_setDeallocating();
    sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
    swift_arrayDestroy();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_22B7F93B0;
    *(v18 + 32) = sub_22B7DB6A8();
    *(v18 + 40) = v19;
    v20 = [v2 autoDonationBehavior];
    *(v18 + 72) = MEMORY[0x277D83B88];
    *(v18 + 48) = v20;
    v17 = sub_22B71DF98(v18);
    swift_setDeallocating();
    sub_22B4D0D64(v18 + 32, &qword_27D8CDB60, &qword_22B7FA360);
  }

  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v21 = sub_22B7DB2B8();
  sub_22B4CFA74(v21, qword_281422620);

  v22 = sub_22B7DB298();
  v23 = sub_22B7DBCB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315138;
    v26 = sub_22B7DB598();
    v28 = v27;

    v29 = sub_22B4CFAAC(v26, v28, &v42);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_22B4CC000, v22, v23, "Syncing new syndication attributes up %s", v24, 0xCu);
    sub_22B4CFB78(v25);
    MEMORY[0x231898D60](v25, -1, -1);
    MEMORY[0x231898D60](v24, -1, -1);
  }

  else
  {
  }

  sub_22B7B0AC8(v17);

  v30 = sub_22B7DB568();

  v31 = JWEncodeDictionary();

  if (v31)
  {
    v32 = sub_22B7DA848();
    v34 = v33;

    v31 = sub_22B7DA838();
    sub_22B705E98(v32, v34);
  }

  [a1 _setCKRecordData_forKey_];

  v35 = [v2 compressedProtobufDataForChatProto1];
  if (v35)
  {
    v36 = v35;
    v37 = sub_22B7DA848();
    v39 = v38;

    v40 = sub_22B7DA838();
    sub_22B705E98(v37, v39);
  }

  else
  {
    v40 = 0;
  }

  [a1 _setCKRecordData_forKey_];
}

void sub_22B790AD8(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_opt_self() synchronousDatabase];
  v8 = [v2 guid];
  if (!v8)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = a1;
  aBlock[4] = sub_22B79103C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B78E910;
  aBlock[3] = &unk_283F1EFC0;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  v13 = v2;

  [v7 fetchServicesForChatWithGUID:v9 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = v14;
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_281422620);
    v17 = v13;
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = [v17 guid];

    if (v22)
    {
      v23 = sub_22B7DB6A8();
      v25 = v24;

      v26 = sub_22B4CFAAC(v23, v25, &v41);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Error fetch legacy chat slices for guid with guid %s", v20, 0xCu);
      sub_22B4CFB78(v21);
      MEMORY[0x231898D60](v21, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);

LABEL_22:
      swift_willThrow();

      return;
    }

    goto LABEL_24;
  }

  swift_beginAccess();
  v27 = *v5;
  if (*v5 >> 62)
  {
    if (v27 < 0)
    {
      v29 = *v5;
    }

    if (sub_22B7DC1C8())
    {
      goto LABEL_10;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v28 = *(v4 + 16);

    return;
  }

  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v30 = sub_22B7DB2B8();
  sub_22B4CFA74(v30, qword_281422620);
  v31 = v13;
  v32 = sub_22B7DB298();
  v33 = sub_22B7DBC98();
  if (!os_log_type_enabled(v32, v33))
  {

    goto LABEL_21;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v43 = v35;
  *v34 = 136315138;
  v36 = [v31 guid];

  if (v36)
  {
    v37 = sub_22B7DB6A8();
    v39 = v38;

    v40 = sub_22B4CFAAC(v37, v39, &v43);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_22B4CC000, v32, v33, "Error fetching legacy chat slices for guid with guid %s", v34, 0xCu);
    sub_22B4CFB78(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);

LABEL_21:
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:14 userInfo:0];
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_22B791054()
{
  result = qword_27D8CEB40;
  if (!qword_27D8CEB40)
  {
    sub_22B7DA828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB40);
  }

  return result;
}

unint64_t sub_22B7910B8()
{
  result = qword_27D8CF2F0;
  if (!qword_27D8CF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF2F0);
  }

  return result;
}

unint64_t sub_22B791110()
{
  result = qword_27D8CF2F8;
  if (!qword_27D8CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF2F8);
  }

  return result;
}

uint64_t sub_22B7911CC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2D8);
  sub_22B4CFA74(v0, qword_27D8CF2D8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B79128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B79134C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22B79134C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_22B791450()
{
  result = qword_27D8CF308;
  if (!qword_27D8CF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF308);
  }

  return result;
}

uint64_t sub_22B7914A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B791520(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_22B791764();
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_22B7915D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F0D94;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_22B791764()
{
  result = qword_27D8CF340;
  if (!qword_27D8CF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF340);
  }

  return result;
}

uint64_t sub_22B7918DC(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF300, type metadata accessor for RemoteIntentAttachmentEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B7919A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B6F12E8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22B791A64(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF358, type metadata accessor for RemoteIntentAttachmentEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B791AE4()
{
  result = qword_27D8CF378;
  if (!qword_27D8CF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF378);
  }

  return result;
}

unint64_t sub_22B791B3C()
{
  result = qword_27D8CF380;
  if (!qword_27D8CF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF380);
  }

  return result;
}

uint64_t sub_22B791C04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_22B7DA718();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22B7DA628();
  sub_22B6F24F4(v10, a2);
  sub_22B4CFA74(v10, a2);
  sub_22B7DA708();
  (*(v8 + 56))(v6, 1, 1, v7);
  return sub_22B7DA618();
}

uint64_t sub_22B791D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v4 = sub_22B7DA4B8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - v9;
  v10 = sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_22B7DA718();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  *a3 = 0xD000000000000024;
  a3[1] = 0x800000022B7FCC40;
  a3[2] = 0xD000000000000024;
  a3[3] = 0x800000022B7FCC40;
  v21 = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  v22 = v21[6];
  sub_22B7DA708();
  (*(v19 + 56))(v17, 1, 1, v18);
  v23 = sub_22B7DA5A8();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_22B7DA5B8();
  v24 = v21[7];
  sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
  *(a3 + v24) = sub_22B7DA528();
  v25 = v21[8];
  sub_22B6F0AD4(&qword_27D8CF558, &unk_22B7FCDE0);
  sub_22B7914A4(&qword_27D8CF300, type metadata accessor for RemoteIntentAttachmentEntity);
  *(a3 + v25) = sub_22B7DA518();
  v26 = v5[2];
  v27 = v32;
  v28 = v34;
  v26(v32, v34, v4);
  v26(v33, v27, v4);
  sub_22B7DA508();
  v29 = v5[1];
  v29(v27, v4);
  v36 = v35;
  sub_22B7DA508();
  return (v29)(v28, v4);
}

uint64_t sub_22B792124@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v85 = a3;
  v82 = a4;
  v6 = sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v79 - v8;
  v9 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v79 - v11;
  v108 = sub_22B7DA718();
  v121 = *(v108 - 8);
  v12 = *(v121 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22B7DA828();
  v120 = *(v106 - 8);
  v14 = v120[8];
  v15 = MEMORY[0x28223BE20](v106);
  v105 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v125 = &v79 - v19;
  v103 = type metadata accessor for RemoteIntentAttachmentEntity(0);
  v102 = *(v103 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v112 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22B7DAEC8();
  v22 = *(v123 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v79 - v27;
  v29 = sub_22B7DA9A8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22B7DA4B8();
  v84 = *(v113 - 8);
  v34 = *(v84 + 64);
  v35 = MEMORY[0x28223BE20](v113);
  v101 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v100 = &v79 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v124 = &v79 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v79 - v41;
  sub_22B705E44(a1, a2);
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v30 + 8))(v33, v29);
  v43 = sub_22B7DB248();
  (*(*(v43 - 8) + 56))(v28, 1, 1, v43);
  v81 = v42;
  v83 = a1;
  v44 = v85;
  sub_22B7DA4A8();
  v45 = *(v44 + 16);
  if (v45)
  {
    v80 = a2;
    v98 = sub_22B6F0AD4(&qword_27D8CF538, &unk_22B7FCDC0);
    v97 = sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    v96 = sub_22B6F0AD4(&qword_27D8CF548, &qword_22B7FCDD0);
    v95 = sub_22B6F0AD4(&qword_27D8CF550, &qword_22B7FCDD8);
    v47 = *(v22 + 16);
    v46 = v22 + 16;
    v94 = v47;
    v48 = v44 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v93 = 0x800000022B7FCCA0;
    v92 = *(v46 + 56);
    v91 = (v121 + 56);
    v90 = (v120 + 2);
    v89 = (v120 + 1);
    v111 = (v84 + 16);
    v88 = (v84 + 8);
    v87 = (v46 - 8);
    v49 = MEMORY[0x277D84F90];
    v50 = v112;
    v99 = v46;
    do
    {
      v120 = v49;
      v121 = v45;
      v119 = v48;
      v51 = v94(v122);
      MEMORY[0x231894830](v51);
      sub_22B7DAE88();
      v52 = sub_22B7DAE98();
      v117 = v53;
      v118 = v52;
      LOBYTE(v116) = sub_22B7DAE78() & 1;
      v116 = v116;
      v54 = v93;
      *v50 = 0xD00000000000001CLL;
      v50[1] = v54;
      v50[2] = 0xD00000000000001CLL;
      v50[3] = v54;
      v55 = v103;
      v56 = *(v103 + 24);
      sub_22B7DA708();
      (*v91)(v109, 1, 1, v108);
      v57 = sub_22B7DA5A8();
      (*(*(v57 - 8) + 56))(v110, 1, 1, v57);
      sub_22B7DA5B8();
      v58 = v55[7];
      *(v50 + v58) = sub_22B7DA538();
      v59 = v55[8];
      *(v50 + v59) = sub_22B7DA528();
      v60 = v55[9];
      v115 = sub_22B7DA548();
      *(v50 + v60) = v115;
      v61 = v55[10];
      v114 = sub_22B7DA558();
      *(v50 + v61) = v114;
      v62 = *v90;
      v63 = v104;
      v64 = v106;
      (*v90)(v104, v125, v106);
      v62(v105, v63, v64);
      sub_22B7DA508();
      v65 = *v89;
      (*v89)(v63, v64);
      v66 = *v111;
      v67 = v100;
      v68 = v124;
      v69 = v113;
      (*v111)(v100, v124, v113);
      v86 = v66;
      v66(v101, v67, v69);
      sub_22B7DA508();
      v70 = *v88;
      (*v88)(v67, v69);
      v126 = v118;
      v127 = v117;
      sub_22B7DA508();
      LOBYTE(v126) = v116;
      sub_22B7DA508();
      v70(v68, v69);
      v65(v125, v64);
      v49 = v120;
      (*v87)(v122, v123);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_22B71C8D8(0, v49[2] + 1, 1, v49);
      }

      v72 = v49[2];
      v71 = v49[3];
      v50 = v112;
      if (v72 >= v71 >> 1)
      {
        v49 = sub_22B71C8D8(v71 > 1, v72 + 1, 1, v49);
      }

      v49[2] = v72 + 1;
      sub_22B796B30(v50, v49 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v72);
      v48 = v119 + v92;
      v45 = v121 - 1;
    }

    while (v121 != 1);

    a2 = v80;
    v73 = v84;
    v74 = v86;
  }

  else
  {

    v73 = v84;
    v74 = *(v84 + 16);
    v49 = MEMORY[0x277D84F90];
  }

  v75 = v124;
  v76 = v81;
  v77 = v113;
  v74(v124, v81, v113);
  sub_22B791D60(v75, v49, v82);
  sub_22B705E98(v83, a2);
  return (*(v73 + 8))(v76, v77);
}

uint64_t sub_22B792C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22B796C20;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_22B792D10()
{
  result = qword_27D8CF390;
  if (!qword_27D8CF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF390);
  }

  return result;
}

unint64_t sub_22B792D68()
{
  result = qword_27D8CF3A0;
  if (!qword_27D8CF3A0)
  {
    sub_22B6FB8C4(&qword_27D8CF3A8, qword_22B7FC860);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF3A0);
  }

  return result;
}

uint64_t sub_22B792E1C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_22B793060();
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_22B792ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F12E8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_22B793060()
{
  result = qword_27D8CF3C8;
  if (!qword_27D8CF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF3C8);
  }

  return result;
}

uint64_t sub_22B7931C0(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF388, type metadata accessor for DaemonRequestAttachmentsIntentOutput);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B793284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22B7DA5C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B7932F8(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF3E0, type metadata accessor for DaemonRequestAttachmentsIntentOutput);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B793378()
{
  result = qword_27D8CF400;
  if (!qword_27D8CF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF400);
  }

  return result;
}

unint64_t sub_22B7933D0()
{
  result = qword_27D8CF408;
  if (!qword_27D8CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF408);
  }

  return result;
}

unint64_t sub_22B7934A8()
{
  result = qword_27D8CF410;
  if (!qword_27D8CF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF410);
  }

  return result;
}

uint64_t sub_22B7934FC()
{
  v0 = sub_22B7DA718();
  sub_22B6F24F4(v0, qword_27D8D4918);
  sub_22B4CFA74(v0, qword_27D8D4918);
  return sub_22B7DA708();
}

uint64_t sub_22B793560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[61] = a2;
  v3[62] = a3;
  v3[60] = a1;
  v4 = sub_22B7DAFD8();
  v3[63] = v4;
  v5 = *(v4 - 8);
  v3[64] = v5;
  v6 = *(v5 + 64) + 15;
  v3[65] = swift_task_alloc();
  v7 = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  v3[66] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[67] = swift_task_alloc();
  v9 = *(*(sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v10 = sub_22B7DA4B8();
  v3[69] = v10;
  v11 = *(v10 - 8);
  v3[70] = v11;
  v12 = *(v11 + 64) + 15;
  v3[71] = swift_task_alloc();
  v13 = sub_22B7DB018();
  v3[72] = v13;
  v14 = *(v13 - 8);
  v3[73] = v14;
  v15 = *(v14 + 64) + 15;
  v3[74] = swift_task_alloc();
  v16 = sub_22B7DA9A8();
  v3[75] = v16;
  v17 = *(v16 - 8);
  v3[76] = v17;
  v18 = *(v17 + 64) + 15;
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7937A0, 0, 0);
}

uint64_t sub_22B7937A0()
{
  v117 = v0;
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isRockNRollEnabled];

  if (!v2)
  {
    if (qword_27D8CCCC0 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_27D8CF2D8);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "perform[]: dropping intent because the feature is not enabled.", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v12 = 0;
    goto LABEL_19;
  }

  v3 = [objc_opt_self() sharedDaemon];
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v4 = [v3 intentProcessor];
  swift_unknownObjectRelease();
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF4F0, &unk_22B7FCD60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_14;
  }

  if (!*(v0 + 80))
  {
LABEL_14:
    sub_22B4D0D64(v0 + 56, &qword_27D8CF4E8, &unk_22B7FDBA0);
    if (qword_27D8CCCC0 != -1)
    {
      swift_once();
    }

    v13 = sub_22B7DB2B8();
    sub_22B4CFA74(v13, qword_27D8CF2D8);
    v14 = sub_22B7DB298();
    v15 = sub_22B7DBC98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v14, v15, "perform[]: dropping intent because there is no object to process the request.", v16, 2u);
      MEMORY[0x231898D60](v16, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v17 = 1;
LABEL_19:
    swift_willThrow();
    goto LABEL_20;
  }

  v5 = *(v0 + 496);
  sub_22B4DFB0C((v0 + 56), v0 + 16);
  sub_22B7DA578();
  v6 = *(v0 + 416);
  if (v6)
  {
    v7 = *(v0 + 408);
  }

  else
  {
    v26 = *(v0 + 616);
    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    sub_22B7DA998();
    v7 = sub_22B7DA978();
    v6 = v29;
    (*(v27 + 8))(v26, v28);
  }

  *(v0 + 632) = v6;
  *(v0 + 624) = v7;
  if (qword_27D8CCCC0 != -1)
  {
    swift_once();
  }

  v30 = sub_22B7DB2B8();
  *(v0 + 640) = sub_22B4CFA74(v30, qword_27D8CF2D8);

  v31 = sub_22B7DB298();
  v32 = sub_22B7DBCB8();

  v115 = v7;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v116[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_22B4CFAAC(v7, v6, v116);
    _os_log_impl(&dword_22B4CC000, v31, v32, "perform[%s]: decoding request", v33, 0xCu);
    sub_22B4CFB78(v34);
    MEMORY[0x231898D60](v34, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
  }

  v35 = *(v0 + 592);
  v36 = *(v0 + 576);
  v37 = *(v0 + 568);
  v38 = *(v0 + 560);
  v39 = *(v0 + 552);
  v40 = *(v0 + 488);
  sub_22B7DA578();
  v41 = sub_22B7DA498();
  v43 = v42;
  (*(v38 + 8))(v37, v39);
  sub_22B7914A4(&qword_27D8CF4F8, MEMORY[0x277D19648]);
  sub_22B7DACA8();
  v44 = *(v0 + 592);
  sub_22B705E98(v41, v43);
  sub_22B7DB008();
  sub_22B4D2BCC((v0 + 96), *(v0 + 120));
  DynamicType = swift_getDynamicType();
  *(v0 + 648) = DynamicType;
  v46 = *(v0 + 128);
  *(v0 + 656) = v46;
  sub_22B4D0DE8(v0 + 96, v0 + 176);
  sub_22B6F0AD4(&qword_27D8CF508, &qword_22B7FCD70);
  sub_22B6F0AD4(&qword_27D8CF510, &qword_22B7FCD78);
  if (swift_dynamicCast())
  {
    sub_22B4DFB0C((v0 + 216), v0 + 136);

    v47 = sub_22B7DB298();
    v48 = sub_22B7DBCB8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v116[0] = v50;
      *v49 = 136315394;
      *(v0 + 456) = DynamicType;
      *(v0 + 464) = v46;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v51 = sub_22B7DB6C8();
      v53 = sub_22B4CFAAC(v51, v52, v116);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_22B4CFAAC(v115, v6, v116);
      _os_log_impl(&dword_22B4CC000, v47, v48, "perform[%s][%s]: processing request", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v50, -1, -1);
      MEMORY[0x231898D60](v49, -1, -1);
    }

    v54 = *(v0 + 544);
    sub_22B7DBA38();
    v55 = sub_22B7DBA58();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    sub_22B4D0DE8(v0 + 16, v0 + 296);
    sub_22B4D0DE8(v0 + 136, v0 + 336);
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    sub_22B4DFB0C((v0 + 296), v56 + 32);
    sub_22B4DFB0C((v0 + 336), v56 + 72);
    v57 = sub_22B7231C4(0, 0, v54, &unk_22B7FCD98, v56);
    *(v0 + 664) = v57;
    v58 = *(MEMORY[0x277D857C8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 672) = v59;
    v60 = sub_22B6F0AD4(&qword_27D8CE568, &unk_22B7FCDA0);
    v61 = sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    *v59 = v0;
    v59[1] = sub_22B79474C;
    v62 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 256, v57, v60, v61, v62);
  }

  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  sub_22B4D0D64(v0 + 216, &qword_27D8CF518, &unk_22B7FCD80);

  v63 = sub_22B7DB298();
  v64 = sub_22B7DBC98();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v116[0] = v66;
    *v65 = 136315394;
    *(v0 + 424) = DynamicType;
    *(v0 + 432) = v46;
    sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
    v67 = sub_22B7DB6C8();
    v69 = sub_22B4CFAAC(v67, v68, v116);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_22B4CFAAC(v115, v6, v116);
    _os_log_impl(&dword_22B4CC000, v63, v64, "perform[%s][%s]: Unsupported request type. Expected: (any RemoteIntentRequestAttachments)", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v66, -1, -1);
    MEMORY[0x231898D60](v65, -1, -1);
  }

  v70 = *(v0 + 592);
  v71 = *(v0 + 584);
  v72 = *(v0 + 576);
  sub_22B7969D8();
  v73 = swift_allocError();
  swift_willThrow();
  sub_22B4CFB78((v0 + 96));
  (*(v71 + 8))(v70, v72);
  v74 = *(v0 + 640);
  v75 = *(v0 + 632);

  v76 = v73;
  v77 = sub_22B7DB298();
  v78 = sub_22B7DBC98();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 632);
    v80 = *(v0 + 624);
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v116[0] = v83;
    *v81 = 136315394;
    *(v81 + 4) = sub_22B4CFAAC(v80, v79, v116);
    *(v81 + 12) = 2112;
    v84 = v73;
    v85 = _swift_stdlib_bridgeErrorToNSError();
    *(v81 + 14) = v85;
    *v82 = v85;
    _os_log_impl(&dword_22B4CC000, v77, v78, "perform[%s]: Unexpected error: %@", v81, 0x16u);
    sub_22B4D0D64(v82, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v82, -1, -1);
    sub_22B4CFB78(v83);
    MEMORY[0x231898D60](v83, -1, -1);
    MEMORY[0x231898D60](v81, -1, -1);
  }

  v86 = sub_22B7DA6E8();
  v87 = [v86 domain];
  v88 = sub_22B7DB6A8();
  v90 = v89;

  v91 = *MEMORY[0x277D23A68];
  if (v88 == sub_22B7DB6A8() && v90 == v92)
  {
    v93 = *(v0 + 632);
  }

  else
  {
    v94 = sub_22B7DC518();

    if ((v94 & 1) == 0)
    {
      v96 = *(v0 + 520);
      v97 = *(v0 + 504);
      v98 = *(v0 + 512);
      v99 = v73;
      sub_22B7DAFC8();
      sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638]);
      v100 = sub_22B7DAC98();
      v101 = (v98 + 8);
      v102 = *(v0 + 632);
      v103 = *(v0 + 536);
      v104 = *(v0 + 528);
      v105 = *(v0 + 480);
      v106 = v100;
      v108 = v107;
      (*v101)(*(v0 + 520), *(v0 + 504));

      sub_22B705E44(v106, v108);
      sub_22B792124(v106, v108, MEMORY[0x277D84F90], v103);
      sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput);
      sub_22B7DA4F8();

      sub_22B705E98(v106, v108);
      sub_22B79697C(v103);
      sub_22B4CFB78((v0 + 16));
      v109 = *(v0 + 616);
      v110 = *(v0 + 592);
      v111 = *(v0 + 568);
      v112 = *(v0 + 544);
      v113 = *(v0 + 536);
      v114 = *(v0 + 520);

      v24 = *(v0 + 8);
      goto LABEL_21;
    }

    v95 = *(v0 + 632);
  }

  swift_willThrow();

  sub_22B4CFB78((v0 + 16));
LABEL_20:
  v18 = *(v0 + 616);
  v19 = *(v0 + 592);
  v20 = *(v0 + 568);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 520);

  v24 = *(v0 + 8);
LABEL_21:

  return v24();
}

uint64_t sub_22B79474C()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = *(v2 + 664);

    v5 = sub_22B79510C;
  }

  else
  {
    v5 = sub_22B794868;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B794868()
{
  v89 = v0;
  v1 = v0[85];
  v2 = v0[83];

  v3 = v0[36];
  sub_22B4D2BCC(v0 + 32, v0[35]);
  v4 = *(*(*(v3 + 8) + 8) + 8);
  v5 = sub_22B7DAC88();
  if (v1)
  {
    v7 = v0[74];
    v8 = v0[73];
    v9 = v0[72];

    sub_22B796928();
    v10 = swift_allocError();
    *v11 = 2;
    swift_willThrow();
    sub_22B4CFB78(v0 + 17);
    sub_22B4CFB78(v0 + 12);
    (*(v8 + 8))(v7, v9);
    sub_22B4CFB78(v0 + 32);
    v12 = v0[80];
    v13 = v0[79];

    v14 = v10;
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBC98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[79];
      v18 = v0[78];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v88[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B4CFAAC(v18, v17, v88);
      *(v19 + 12) = 2112;
      v22 = v10;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_22B4CC000, v15, v16, "perform[%s]: Unexpected error: %@", v19, 0x16u);
      sub_22B4D0D64(v20, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v20, -1, -1);
      sub_22B4CFB78(v21);
      MEMORY[0x231898D60](v21, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    v24 = sub_22B7DA6E8();
    v25 = [v24 domain];
    v26 = sub_22B7DB6A8();
    v28 = v27;

    v29 = *MEMORY[0x277D23A68];
    if (v26 == sub_22B7DB6A8() && v28 == v30)
    {
      v31 = v0[79];

LABEL_11:

      swift_willThrow();

      sub_22B4CFB78(v0 + 2);
      v48 = v0[77];
      v49 = v0[74];
      v50 = v0[71];
      v51 = v0[68];
      v52 = v0[67];
      v53 = v0[65];

      v54 = v0[1];
      goto LABEL_15;
    }

    v46 = sub_22B7DC518();

    if (v46)
    {
      v47 = v0[79];
      goto LABEL_11;
    }

    v73 = v0[65];
    v74 = v0[63];
    v75 = v0[64];
    v76 = v10;
    sub_22B7DAFC8();
    sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638]);
    v77 = sub_22B7DAC98();
    v78 = (v75 + 8);
    v79 = v0[79];
    v80 = v0[67];
    v81 = v0[66];
    v82 = v0[60];
    v83 = v77;
    v85 = v84;
    (*v78)(v0[65], v0[63]);

    sub_22B705E44(v83, v85);
    sub_22B792124(v83, v85, MEMORY[0x277D84F90], v80);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput);
    sub_22B7DA4F8();

    sub_22B705E98(v83, v85);
    sub_22B79697C(v80);
    v65 = v0 + 2;
  }

  else
  {
    v86 = v5;
    v87 = v6;
    v32 = v0[80];
    v33 = v0[79];

    v34 = sub_22B7DB298();
    v35 = sub_22B7DBCB8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v0[82];
      v37 = v0[81];
      v38 = v0[79];
      v39 = v0[78];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v88[0] = v41;
      *v40 = 136315394;
      v0[55] = v37;
      v0[56] = v36;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v42 = sub_22B7DB6C8();
      v44 = sub_22B4CFAAC(v42, v43, v88);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = sub_22B4CFAAC(v39, v38, v88);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_22B4CC000, v34, v35, "perform[%s][%s]: completed", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
    }

    else
    {
      v55 = v0[79];
    }

    v56 = v0[74];
    v57 = v0[73];
    v58 = v0[72];
    v59 = v0[67];
    v60 = v0[66];
    v61 = v0[60];
    v62 = v0[36];
    sub_22B4D2BCC(v0 + 32, v0[35]);
    v63 = *(v62 + 8);
    sub_22B7DADD8();
    v64 = v0[59];
    sub_22B705E44(v86, v87);
    sub_22B792124(v86, v87, v64, v59);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput);
    sub_22B7DA4F8();
    sub_22B705E98(v86, v87);
    sub_22B79697C(v59);
    sub_22B4CFB78(v0 + 17);
    sub_22B4CFB78(v0 + 12);
    (*(v57 + 8))(v56, v58);
    sub_22B4CFB78(v0 + 2);
    v65 = v0 + 32;
  }

  sub_22B4CFB78(v65);
  v66 = v0[77];
  v67 = v0[74];
  v68 = v0[71];
  v69 = v0[68];
  v70 = v0[67];
  v71 = v0[65];

  v54 = v0[1];
LABEL_15:

  return v54();
}

uint64_t sub_22B79510C()
{
  v55 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  sub_22B4CFB78(v0 + 17);
  sub_22B4CFB78(v0 + 12);
  (*(v2 + 8))(v1, v3);
  v4 = v0[85];
  v5 = v0[80];
  v6 = v0[79];

  v7 = v4;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[79];
    v11 = v0[78];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B4CFAAC(v11, v10, &v54);
    *(v12 + 12) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22B4CC000, v8, v9, "perform[%s]: Unexpected error: %@", v12, 0x16u);
    sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v13, -1, -1);
    sub_22B4CFB78(v14);
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  v17 = sub_22B7DA6E8();
  v18 = [v17 domain];
  v19 = sub_22B7DB6A8();
  v21 = v20;

  v22 = *MEMORY[0x277D23A68];
  if (v19 == sub_22B7DB6A8() && v21 == v23)
  {
    v24 = v0[79];

LABEL_8:

    swift_willThrow();

    sub_22B4CFB78(v0 + 2);
    v27 = v0[77];
    v28 = v0[74];
    v29 = v0[71];
    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[65];

    v33 = v0[1];
    goto LABEL_9;
  }

  v25 = sub_22B7DC518();

  if (v25)
  {
    v26 = v0[79];
    goto LABEL_8;
  }

  v35 = v0[65];
  v36 = v0[63];
  v37 = v0[64];
  v38 = v4;
  sub_22B7DAFC8();
  sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638]);
  v39 = sub_22B7DAC98();
  v40 = (v37 + 8);
  v41 = v0[79];
  v42 = v0[67];
  v43 = v0[66];
  v44 = v0[60];
  v45 = v39;
  v47 = v46;
  (*v40)(v0[65], v0[63]);

  sub_22B705E44(v45, v47);
  sub_22B792124(v45, v47, MEMORY[0x277D84F90], v42);
  sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput);
  sub_22B7DA4F8();

  sub_22B705E98(v45, v47);
  sub_22B79697C(v42);
  sub_22B4CFB78(v0 + 2);
  v48 = v0[77];
  v49 = v0[74];
  v50 = v0[71];
  v51 = v0[68];
  v52 = v0[67];
  v53 = v0[65];

  v33 = v0[1];
LABEL_9:

  return v33();
}

uint64_t sub_22B7956EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B795710, 0, 0);
}

uint64_t sub_22B795710()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22B4D2BCC(v1, v4);
  v6 = v2[3];
  v7 = v2[4];
  v8 = sub_22B4D2BCC(v2, v6);
  v9 = *(v5 + 8);
  v10 = *(v7 + 8);
  v3[3] = swift_getAssociatedTypeWitness();
  v3[4] = swift_getAssociatedConformanceWitness();
  v11 = sub_22B6FC8CC(v3);
  v15 = (v9 + *v9);
  v12 = v9[1];
  v13 = swift_task_alloc();
  v0[5] = v13;
  *v13 = v0;
  v13[1] = sub_22B7958D4;

  return (v15)(v11, v8, v6, v10, v4, v5);
}

uint64_t sub_22B7958D4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B795A08, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B795A08()
{
  sub_22B796AE0(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_22B795AA4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_22B4CFA74(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_22B795B60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B793560(a1, v5, v4);
}

uint64_t sub_22B795C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B796498();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B795C34(uint64_t a1)
{
  v2 = sub_22B7934A8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22B795C70(uint64_t *a1, int a2)
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

uint64_t sub_22B795CB8(uint64_t result, int a2, int a3)
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

void sub_22B795D2C()
{
  sub_22B7DA5C8();
  if (v0 <= 0x3F)
  {
    sub_22B795DD8();
    if (v1 <= 0x3F)
    {
      sub_22B795E6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B795DD8()
{
  if (!qword_27D8CF428)
  {
    sub_22B7DA4B8();
    sub_22B7914A4(&qword_27D8CF430, MEMORY[0x277CB9C50]);
    v0 = sub_22B7DA568();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF428);
    }
  }
}

void sub_22B795E6C()
{
  if (!qword_27D8CF438)
  {
    sub_22B6FB8C4(&qword_27D8CF320, qword_22B7FC518);
    sub_22B795EF8(&qword_27D8CF440);
    v0 = sub_22B7DA568();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF438);
    }
  }
}

uint64_t sub_22B795EF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(&qword_27D8CF320, qword_22B7FC518);
    sub_22B7914A4(&qword_27D8CF310, type metadata accessor for RemoteIntentAttachmentEntity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B795FBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B7DA5C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B79607C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA5C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22B796120()
{
  sub_22B7DA5C8();
  if (v0 <= 0x3F)
  {
    sub_22B7961FC();
    if (v1 <= 0x3F)
    {
      sub_22B795DD8();
      if (v2 <= 0x3F)
      {
        sub_22B796290();
        if (v3 <= 0x3F)
        {
          sub_22B796340();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22B7961FC()
{
  if (!qword_27D8CF458)
  {
    sub_22B7DA828();
    sub_22B7914A4(&qword_27D8CF460, MEMORY[0x277CC9260]);
    v0 = sub_22B7DA568();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF458);
    }
  }
}

void sub_22B796290()
{
  if (!qword_27D8CF468)
  {
    sub_22B7962EC();
    v0 = sub_22B7DA568();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF468);
    }
  }
}

unint64_t sub_22B7962EC()
{
  result = qword_27D8CF470;
  if (!qword_27D8CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF470);
  }

  return result;
}

void sub_22B796340()
{
  if (!qword_27D8CF478)
  {
    sub_22B6FB8C4(&qword_27D8CF480, &unk_22B7FCCE0);
    sub_22B7963B0();
    v0 = sub_22B7DA568();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CF478);
    }
  }
}

unint64_t sub_22B7963B0()
{
  result = qword_27D8CF488;
  if (!qword_27D8CF488)
  {
    sub_22B6FB8C4(&qword_27D8CF480, &unk_22B7FCCE0);
    sub_22B796434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF488);
  }

  return result;
}

unint64_t sub_22B796434()
{
  result = qword_27D8CF490;
  if (!qword_27D8CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF490);
  }

  return result;
}

uint64_t sub_22B796498()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4A8, &unk_22B7FCD20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v31 - v2;
  v37 = sub_22B7DA5F8();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B6F0AD4(&qword_27D8CF4B0, &unk_22B7FDB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CF4B8, &unk_22B7FCD30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v36 = sub_22B6F0AD4(&qword_27D8CF4C8, &unk_22B7FCD40);
  v31 = sub_22B7DA718();
  v19 = *(v31 - 8);
  v34 = *(v19 + 56);
  v35 = v19 + 56;
  v34(v18, 1, 1, v31);
  v20 = sub_22B7DA4B8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = sub_22B7DA4E8();
  v22 = *(v21 - 8);
  v32 = *(v22 + 56);
  v33 = v22 + 56;
  v32(v10, 1, 1, v21);
  sub_22B6F0AD4(&qword_27D8CF4D0, &unk_22B7FDB80);
  v23 = *(sub_22B7DB248() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_22B7F93B0;
  sub_22B7DB218();
  v26 = *MEMORY[0x277CBA308];
  v27 = *(v3 + 104);
  v28 = v37;
  v27(v6, v26, v37);
  v36 = sub_22B7DA588();
  sub_22B6F0AD4(&qword_27D8CF4D8, &qword_22B7FCD50);
  v34(v18, 1, 1, v31);
  v29 = sub_22B7DB668();
  v39 = 0;
  v40 = 0;
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v32(v10, 1, 1, v21);
  v27(v6, v26, v28);
  sub_22B7DA598();
  return v36;
}

unint64_t sub_22B796928()
{
  result = qword_27D8CF4E0;
  if (!qword_27D8CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF4E0);
  }

  return result;
}

uint64_t sub_22B79697C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B7969D8()
{
  result = qword_27D8CF520;
  if (!qword_27D8CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF520);
  }

  return result;
}

uint64_t sub_22B796A2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7956EC(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t *sub_22B796AE0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x231898D60);
  }

  return result;
}

uint64_t sub_22B796B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentAttachmentEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B796BA8()
{
  result = qword_27D8CF560;
  if (!qword_27D8CF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF560);
  }

  return result;
}

uint64_t FileEvent.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FileEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = v0[3];
  sub_22B7DC2E8();

  v5 = sub_22B7DC4E8();
  MEMORY[0x231895140](v5);

  MEMORY[0x231895140](0x7367616C66203A5DLL, 0xEA0000000000203ALL);
  FileEventFlags.description.getter();
  MEMORY[0x231895140]();

  MEMORY[0x231895140](0x6150656C6966202CLL, 0xEC000000203A6874);
  MEMORY[0x231895140](v3, v4);
  return 0x5B4449746E657665;
}

uint64_t sub_22B796DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B796ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_22B796FE4(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_22B7DC1C8();
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
  result = sub_22B7AB904(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x231895C80](i, a1);
        sub_22B4D01A0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22B7AB904((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_22B4D7F04(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_22B4D01A0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22B7AB904((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_22B4D7F04(v16, (v7 + 32 * v15 + 32));
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

uint64_t sub_22B7971D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_22B705E44(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B7972D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_22B7DC388();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22B7DBB38();
      sub_22B7DC358();
      v6 = *(v7 + 16);
      sub_22B7DC398();
      sub_22B7DC3A8();
      sub_22B7DC368();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_22B797380@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_getObjCClassFromMetadata() pTaskQueryProvider];
  *a2 = result;
  return result;
}

uint64_t sub_22B7973C0(uint64_t a1)
{
  v1 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_22B7973F4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F520);
  v1 = sub_22B4CFA74(v0, qword_28141F520);
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4CFA74(v0, qword_281422680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_22B7974BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x2822009F8](sub_22B7974E0, 0, 0);
}

uint64_t sub_22B7974E0()
{
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = v0 + 2;
    v3 = v0[26];
    sub_22B7972D8(v1);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v4 = sub_22B7DB8F8();
    v0[29] = v4;

    v0[2] = v0;
    v0[3] = sub_22B797774;
    v5 = swift_continuation_init();
    v0[25] = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B7973C0;
    v0[21] = &unk_283F1F308;
    v0[22] = v5;
    [v3 clearTasksWithRowIDs:v4 completionBlock:v0 + 18];
LABEL_5:

    return MEMORY[0x282200938](v2);
  }

  v6 = v0[28];
  if (*(v6 + 16))
  {
    v2 = v0 + 10;
    v7 = v0[26];
    sub_22B7972D8(v6);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v8 = sub_22B7DB8F8();
    v0[30] = v8;

    v0[10] = v0;
    v0[11] = sub_22B7979F8;
    v9 = swift_continuation_init();
    v0[25] = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B7973C0;
    v0[21] = &unk_283F1F330;
    v0[22] = v9;
    [v7 incrementRetryCountForTasksWithRowIDs:v8 completionBlock:v0 + 18];
    goto LABEL_5;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B797774()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B797854, 0, 0);
}

uint64_t sub_22B797854()
{
  v1 = *(v0 + 224);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 208);
    sub_22B7972D8(v1);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v3 = sub_22B7DB8F8();
    *(v0 + 240) = v3;

    *(v0 + 80) = v0;
    *(v0 + 88) = sub_22B7979F8;
    v4 = swift_continuation_init();
    *(v0 + 200) = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_22B7973C0;
    *(v0 + 168) = &unk_283F1F330;
    *(v0 + 176) = v4;
    [v2 incrementRetryCountForTasksWithRowIDs:v3 completionBlock:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22B7979F8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B797AD8, 0, 0);
}

uint64_t sub_22B797AD8()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_22B797B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71[6] = *MEMORY[0x277D85DE8];
  v6 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v65 - v8;
  v10 = sub_22B7DB368();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = v2[18];
  if (!v18)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v19 = v2[19];
  if (!*(v19 + 16) || (v20 = sub_22B725570(a1), (v21 & 1) == 0))
  {
    v24 = v3[15];
    v67 = v3[14];
    v68 = a2;
    v71[0] = v67;
    v71[1] = v24;
    v66 = v24;

    v69 = v18;
    MEMORY[0x231895140](46, 0xE100000000000000);
    v25 = sub_22B7DBE48();
    MEMORY[0x231895140](v25);

    v26 = v3[16];
    if (v26 > 3)
    {
      v27 = MEMORY[0x277D851A8];
    }

    else
    {
      v27 = qword_278708A90[v26];
    }

    (*(v11 + 104))(v15, *v27, v10);
    (*(v11 + 32))(v17, v15, v10);
    v28 = sub_22B7DB358();
    (*(v11 + 8))(v17, v10);
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v30 = objc_allocWithZone(MEMORY[0x277CF0818]);
    v31 = sub_22B7DB678();

    v22 = [v30 initWithIdentifier:v31 qos:v29 workloadCategory:20 expectedMetricValue:0];

    if (qword_28141F510 != -1)
    {
      swift_once();
    }

    v32 = sub_22B7DB2B8();
    sub_22B4CFA74(v32, qword_28141F520);

    v33 = sub_22B7DB298();
    v34 = sub_22B7DBC88();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71[0] = v65;
      *v35 = 136446466;
      *(v35 + 4) = sub_22B4CFAAC(v67, v66, v71);
      *(v35 + 12) = 2082;
      v36 = sub_22B7DBE48();
      v38 = sub_22B4CFAAC(v36, v37, v71);

      *(v35 + 14) = v38;
      _os_log_impl(&dword_22B4CC000, v33, v34, "[%{public}s] registering for throughput tracking for flag %{public}s", v35, 0x16u);
      v39 = v65;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v39, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    v40 = v69;
    sub_22B7368FC(v68, v9);
    v41 = sub_22B7DA968();
    v42 = *(v41 - 8);
    v43 = 0;
    if ((*(v42 + 48))(v9, 1, v41) != 1)
    {
      v43 = sub_22B7DA8B8();
      (*(v42 + 8))(v9, v41);
    }

    v71[0] = 0;
    v44 = [v40 registerThroughputTrackingFor:v22 withStartTime:v43 error:v71];

    v45 = v71[0];
    if (v44)
    {
      swift_beginAccess();
      v46 = v22;
      v47 = v45;
      v48 = v3[19];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v3[19];
      v3[19] = 0x8000000000000000;
      sub_22B768CF0(v46, a1, isUniquelyReferenced_nonNull_native);
      v3[19] = v70;
      swift_endAccess();

      goto LABEL_20;
    }

    v50 = v71[0];
    v51 = sub_22B7DA6F8();

    swift_willThrow();

    v52 = v51;
    v53 = sub_22B7DB298();
    v54 = sub_22B7DBC98();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71[0] = v57;
      *v55 = 136446722;
      *(v55 + 4) = sub_22B4CFAAC(v67, v66, v71);
      *(v55 + 12) = 2082;
      v58 = sub_22B7DBE48();
      v60 = sub_22B4CFAAC(v58, v59, v71);

      *(v55 + 14) = v60;
      *(v55 + 22) = 2112;
      v61 = v51;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 24) = v62;
      *v56 = v62;
      _os_log_impl(&dword_22B4CC000, v53, v54, "[%{public}s] failed to register for throughput tracking for flag %{public}s: %@", v55, 0x20u);
      sub_22B708A24(v56);
      MEMORY[0x231898D60](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v57, -1, -1);
      MEMORY[0x231898D60](v55, -1, -1);
    }

    else
    {
    }

LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  v23 = v22;
LABEL_20:
  v63 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_22B798264()
{
  v65[4] = *MEMORY[0x277D85DE8];
  v60 = sub_22B7DA968();
  v1 = *(v60 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 144);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v0 + 152);
    v6 = sub_22B71E3E4(MEMORY[0x277D84F90]);
    v7 = *(v0 + 152);
    v64 = v0;
    *(v0 + 152) = v6;
    v61 = v4;

    v9 = 0;
    v54 = 0;
    v11 = v5 + 64;
    v10 = *(v5 + 64);
    v62 = v5;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    v58 = (v1 + 8);
    *&v8 = 136446722;
    v55 = v8;
    v56 = v15;
    if ((v13 & v10) != 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    v18 = v64;
    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v17);
      ++v9;
      if (v14)
      {
        while (1)
        {
          v19 = (v17 << 9) | (8 * __clz(__rbit64(v14)));
          v20 = *(v62 + 56);
          v63 = *(*(v62 + 48) + v19);
          v21 = qword_28141F510;
          v22 = *(v20 + v19);
          if (v21 != -1)
          {
            swift_once();
          }

          v23 = sub_22B7DB2B8();
          v24 = sub_22B4CFA74(v23, qword_28141F520);
          v25 = v22;

          v26 = sub_22B7DB298();
          v27 = sub_22B7DBC88();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v57 = v24;
            v30 = v29;
            v65[0] = v29;
            *v28 = v55;
            *(v28 + 4) = sub_22B4CFAAC(*(v18 + 112), *(v18 + 120), v65);
            *(v28 + 12) = 2082;
            v31 = sub_22B7DBE48();
            v33 = sub_22B4CFAAC(v31, v32, v65);
            v15 = v56;

            *(v28 + 14) = v33;
            *(v28 + 22) = 2048;
            v34 = [v25 itemCount];

            *(v28 + 24) = v34;
            _os_log_impl(&dword_22B4CC000, v26, v27, "[%{public}s] submitting throughput metric for flag %{public}s with %lu completed items", v28, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v30, -1, -1);
            MEMORY[0x231898D60](v28, -1, -1);
          }

          else
          {
          }

          v14 &= v14 - 1;
          v35 = v59;
          sub_22B7DA938();
          v36 = sub_22B7DA8B8();
          (*v58)(v35, v60);
          v65[0] = 0;
          LODWORD(v35) = [v61 deregisterThroughputTrackingFor:v25 withEndTime:v36 error:v65];

          if (v35)
          {
            v16 = v65[0];

            v9 = v17;
            if (!v14)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v57 = v25;
            v37 = v65[0];
            v38 = sub_22B7DA6F8();

            swift_willThrow();
            v39 = v64;

            v40 = v38;
            v41 = sub_22B7DB298();
            v42 = sub_22B7DBC98();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v65[0] = v54;
              *v43 = v55;
              *(v43 + 4) = sub_22B4CFAAC(*(v39 + 112), *(v39 + 120), v65);
              *(v43 + 12) = 2082;
              v45 = sub_22B7DBE48();
              v47 = sub_22B4CFAAC(v45, v46, v65);

              *(v43 + 14) = v47;
              *(v43 + 22) = 2112;
              v48 = v38;
              v49 = _swift_stdlib_bridgeErrorToNSError();
              *(v43 + 24) = v49;
              *v44 = v49;
              _os_log_impl(&dword_22B4CC000, v41, v42, "[%{public}s] failed to submit throughput metric for flag %{public}s: %@", v43, 0x20u);
              sub_22B708A24(v44);
              v50 = v44;
              v15 = v56;
              MEMORY[0x231898D60](v50, -1, -1);
              v51 = v54;
              swift_arrayDestroy();
              MEMORY[0x231898D60](v51, -1, -1);
              MEMORY[0x231898D60](v43, -1, -1);
            }

            else
            {
            }

            v54 = 0;
            v9 = v17;
            if (!v14)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v17 = v9;
          v18 = v64;
        }
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B798834()
{
  v1[2] = v0;
  v2 = sub_22B7DB368();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B798900, v0, 0);
}

uint64_t sub_22B798900()
{
  v2 = *(v0[2] + 128);
  if (v2 > 3)
  {
    v3 = MEMORY[0x277D851A8];
  }

  else
  {
    v3 = qword_278708A90[v2];
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  (*(v7 + 104))(v5, *v3, v6);
  (*(v7 + 32))(v4, v5, v6);

  return MEMORY[0x2822009F8](sub_22B7989E8, 0, 0);
}

uint64_t sub_22B7989E8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7990E0;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_22B798AF4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v3, v6);
}

uint64_t sub_22B798AF4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_22B798C8C, v6, 0);
}

uint64_t sub_22B798C8C()
{
  v1 = v0[2];
  sub_22B7DBED8();
  v9 = *(v1 + 160);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 160) = MEMORY[0x277D84F90];
  *(v1 + 168) = v2;
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v9;
  v5 = *(MEMORY[0x277D18E48] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_22B798DA8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282172F38](v6, KeyPath, &unk_22B7FD088, v4, v7);
}

uint64_t sub_22B798DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[2];
  if (v0)
  {

    v8 = sub_22B79A0AC;
  }

  else
  {

    v8 = sub_22B798F30;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B798F30()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B798F98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B782FB8;

  return sub_22B7974BC(v7, a3, a4);
}

uint64_t sub_22B799044()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);

  v5 = *(v0 + 160);
  v4 = *(v0 + 168);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B7990E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = sub_22B7DB348();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB398();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v18 = sub_22B7DBD98();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  aBlock[4] = sub_22B799C30;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F380;
  v23 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v30 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v29 + 8))(v8, v5);
  (*(v27 + 8))(v12, v28);
}

uint64_t sub_22B79946C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F0D94;

  return sub_22B798F98(a1, a2, v7, v6);
}

uint64_t sub_22B799520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = sub_22B7DB348();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB398();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v18 = sub_22B7DBD98();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  aBlock[4] = sub_22B799FC0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F420;
  v23 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v30 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v29 + 8))(v8, v5);
  (*(v27 + 8))(v12, v28);
}

uint64_t sub_22B7998A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = sub_22B7DB348();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB398();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v18 = sub_22B7DBD98();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  aBlock[4] = sub_22B799E48;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F3D0;
  v23 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v30 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v29 + 8))(v8, v5);
  (*(v27 + 8))(v12, v28);
}

uint64_t sub_22B799C30()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0) - 8);
  v2 = v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(v2 + 8);
  (*v2)();
  sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B799CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B799D14()
{
  result = qword_28141F340;
  if (!qword_28141F340)
  {
    sub_22B7DB348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F340);
  }

  return result;
}

unint64_t sub_22B799D6C()
{
  result = qword_28141F2E0;
  if (!qword_28141F2E0)
  {
    sub_22B6FB8C4(&unk_27D8CF580, &unk_22B7FB880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2E0);
  }

  return result;
}

void *sub_22B799DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_defaultActor_initialize();
  v9 = MEMORY[0x277D84F90];
  v4[17] = MEMORY[0x277D84F90];
  v4[18] = 0;
  v10 = sub_22B71E3E4(v9);
  v4[20] = v9;
  v4[21] = v9;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v11 = v4[18];
  v4[18] = a4;
  v4[19] = v10;
  v12 = a4;

  return v4;
}

uint64_t sub_22B799E48()
{
  v1 = *(sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0) - 8);
  v2 = v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(v2 + 8);
  (*v2)(&v5);
  sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B799F24(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22B6F0AD4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_22B799FC0()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0) - 8);
  v2 = v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(v2 + 8);
  (*v2)(&v5);
  sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B79A0E0(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = objc_allocWithZone(sub_22B7DB278());
  v6 = v4;
  result = sub_22B7DB268();
  *a3 = result;
  return result;
}

id static MessagesBlastDoorInterface.blastdoorInterface(for:)(void *a1)
{
  if ([a1 isTrustedSender])
  {
    if (qword_27D8CCCE8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D8D4930;
  }

  else
  {
    if (qword_27D8CCCF0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D8D4938;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_22B79A1D4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F3B0);
  sub_22B4CFA74(v0, qword_28141F3B0);
  return sub_22B7DB2A8();
}

void sub_22B79A2FC(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (!(*a1 >> 62))
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_22B7DC1C8();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x231895C80](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 phoneNumber];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = sub_22B7DB6A8();
    v34 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_22B71BD80(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_22B71BD80((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v34;
  }

  while (v5 != v4);
LABEL_23:
  v17 = *(v6 + 2);
  if (v17)
  {
    v18 = 0;
    v19 = v6 + 40;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = &v19[16 * v18];
      v22 = v18;
      while (1)
      {
        if (v22 >= *(v6 + 2))
        {
          __break(1u);
          return;
        }

        v24 = *(v21 - 1);
        v23 = *v21;

        v25 = sub_22B7DB678();
        v26 = IMChatCanonicalIDSIDsForAddress();

        if (v26)
        {
          v27 = [v26 _stripFZIDPrefix];

          if (v27)
          {
            break;
          }
        }

        ++v22;

        v21 += 16;
        if (v17 == v22)
        {
          goto LABEL_37;
        }
      }

      v28 = sub_22B7DB6A8();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22B71BD80(0, *(v20 + 2) + 1, 1, v20);
      }

      v19 = v6 + 40;
      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      if (v32 >= v31 >> 1)
      {
        v20 = sub_22B71BD80((v31 > 1), v32 + 1, 1, v20);
      }

      v18 = v22 + 1;
      *(v20 + 2) = v32 + 1;
      v33 = &v20[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
    }

    while (v17 - 1 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_37:

  *a2 = v20;
}

id sub_22B79A5F0()
{
  result = [objc_allocWithZone(IMDEmergencyContactsManager) init];
  qword_28141F0E8 = result;
  return result;
}

char *sub_22B79A680()
{
  v1 = sub_22B7DBD48();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_22B7DBD38();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22B7DB398();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OBJC_IVAR___IMDEmergencyContactsManager_processingQueue;
  sub_22B6F0AD4(&qword_27D8CF628, qword_22B7FD0C8);
  v8 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  sub_22B7DACD8();
  sub_22B7DAF78();
  MEMORY[0x231894900](&_s5StateVN_0);
  *&v0[v7] = sub_22B7DAF58();
  *&v0[OBJC_IVAR___IMDEmergencyContactsManager_emergencyContactsNotificationToken] = 0;
  *&v0[OBJC_IVAR___IMDEmergencyContactsManager_emergencyContacts] = v8;
  v13.receiver = v0;
  v13.super_class = IMDEmergencyContactsManager;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *&v9[OBJC_IVAR___IMDEmergencyContactsManager_processingQueue];
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_22B7DAF48();

  sub_22B79A8C0();

  return v11;
}

void sub_22B79A8C0()
{
  v1 = v0;
  v2 = *MEMORY[0x277CCE4B8];
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v3 = sub_22B7DBD58();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v13[4] = sub_22B79B10C;
  v13[5] = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22B79B494;
  v13[3] = &unk_283F1F498;
  v5 = _Block_copy(v13);
  v6 = v1;

  v7 = OBJC_IVAR___IMDEmergencyContactsManager_emergencyContactsNotificationToken;
  swift_beginAccess();
  v8 = notify_register_dispatch(v2, &v6[v7], v3, v5);
  swift_endAccess();
  _Block_release(v5);

  if (v8)
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_28141F3B0);
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Failed to register for emergency contacts change notification: %u", v12, 8u);
      MEMORY[0x231898D60](v12, -1, -1);
    }
  }
}

uint64_t sub_22B79AAE8(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR___IMDEmergencyContactsManager_processingQueue];
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  sub_22B7DAF48();
}

void sub_22B79AB6C(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CCD5E8]) initWithHealthStore_];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v8[4] = sub_22B79B114;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22B79B000;
  v8[3] = &unk_283F1F510;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v4 fetchMedicalIDEmergencyContactsWithCompletion_];
  _Block_release(v6);
}

void sub_22B79AC90(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_28141F3B0);

    v6 = sub_22B7DB298();
    v7 = sub_22B7DBC78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (a1 >> 62)
      {
        v9 = sub_22B7DC1C8();
      }

      else
      {
        v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_22B4CC000, v6, v7, "Got %ld emergency contacts from medical ID", v8, 0xCu);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    else
    {
    }

    v20 = *(a3 + OBJC_IVAR___IMDEmergencyContactsManager_processingQueue);
    MEMORY[0x28223BE20](v10);
    sub_22B7DAF18();
    v21 = [objc_opt_self() defaultCenter];
    [v21 postNotificationName:@"IMDEmergencyContactsDidChangeNotification" object:a3];
  }

  else
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_28141F3B0);
    v13 = a2;
    v23 = sub_22B7DB298();
    v14 = sub_22B7DBC98();

    if (os_log_type_enabled(v23, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v17 = sub_22B7DC5C8();
        v19 = v18;
      }

      else
      {
        v19 = 0x800000022B811560;
        v17 = 0xD000000000000014;
      }

      v22 = sub_22B4CFAAC(v17, v19, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_22B4CC000, v23, v14, "Failed to fetch medical ID for emergency contacts: %s", v15, 0xCu);
      sub_22B4CFB78(v16);
      MEMORY[0x231898D60](v16, -1, -1);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22B79B000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22B4D01A0(0, &qword_28141F1C8, 0x277CCDDA0);
    v4 = sub_22B7DB918();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_22B79B11C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_22B79B17C(uint64_t result)
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

  v3 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
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

uint64_t sub_22B79B2B4(uint64_t result)
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

  result = sub_22B71B8E0(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_22B79B3A0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B71BD80(result, v11, 1, v3);
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

uint64_t sub_22B79B494(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22B79B4E8()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F400);
  sub_22B4CFA74(v0, qword_28141F400);
  return sub_22B7DB2A8();
}

uint64_t sub_22B79B56C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v18 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9 = sub_22B7DB678();
      v10 = IMChatCanonicalIDSIDsForAddress();

      if (v10)
      {
        v11 = [v10 _stripFZIDPrefix];

        if (v11)
        {
          break;
        }
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v12 = sub_22B7DB6A8();
    v14 = v13;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B71BD80(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v3 = v18;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_22B71BD80((v15 > 1), v16 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v16 + 1;
    v17 = v4 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  while (v2 != v1);
  return v4;
}

id sub_22B79B700()
{
  result = [objc_allocWithZone(IMDFamilyManager) init];
  qword_28141F258 = result;
  return result;
}

char *sub_22B79B864()
{
  v1 = sub_22B7DBD48();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_22B7DBD38();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22B7DB398();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OBJC_IVAR___IMDFamilyManager_processingQueue;
  sub_22B6F0AD4(&qword_27D8CF6B0, qword_22B7FD100);
  v13 = MEMORY[0x277D84F90];
  sub_22B7DACD8();
  sub_22B7DAF78();
  MEMORY[0x231894900](&_s5StateVN_1);
  *&v0[v7] = sub_22B7DAF58();
  *&v0[OBJC_IVAR___IMDFamilyManager_familyContactsNotificationToken] = 0;
  v12.receiver = v0;
  v12.super_class = IMDFamilyManager;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *&v8[OBJC_IVAR___IMDFamilyManager_processingQueue];
  *(swift_allocObject() + 16) = v8;
  v10 = v8;
  sub_22B7DAF28();

  sub_22B79BA98();

  return v10;
}

void sub_22B79BA98()
{
  v1 = v0;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v2 = sub_22B7DBD58();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v12[4] = sub_22B79C290;
  v12[5] = v3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22B79B494;
  v12[3] = &unk_283F1F5B0;
  v4 = _Block_copy(v12);
  v5 = v1;

  v6 = OBJC_IVAR___IMDFamilyManager_familyContactsNotificationToken;
  swift_beginAccess();
  v7 = notify_register_dispatch("com.apple.family.family_updated", &v5[v6], v2, v4);
  swift_endAccess();
  _Block_release(v4);

  if (v7)
  {
    if (qword_28141F3F8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_28141F400);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Failed to register for family contacts change notification: %u", v11, 8u);
      MEMORY[0x231898D60](v11, -1, -1);
    }
  }
}

uint64_t sub_22B79BCB0(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR___IMDFamilyManager_processingQueue];
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  sub_22B7DAF28();
}

void sub_22B79BD34(char **a1, uint64_t a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v44[0] = 0;
  v5 = [v4 fetchFamilyCircleWithError_];
  if (!v5)
  {
    v24 = v44[0];
    v6 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F3F8 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  v6 = v5;
  v7 = *a1;
  v8 = v44[0];

  v9 = [v6 members];
  sub_22B4D01A0(0, &qword_28141F280, 0x277D08268);
  v10 = sub_22B7DB918();

  if (v10 >> 62)
  {
    goto LABEL_41;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v42 = a2;
  v43 = v4;
  v40 = a1;
  v41 = v6;
  if (v11)
  {
    if (v11 >= 1)
    {
      v4 = 0;
      a1 = (v10 & 0xC000000000000001);
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        if (a1)
        {
          v13 = MEMORY[0x231895C80](v4, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v4 + 32);
        }

        v14 = v13;
        v15 = sub_22B7DBCC8();
        a2 = *(v15 + 16);
        v6 = *(v12 + 2);
        v16 = &v6[a2];
        if (__OFADD__(v6, a2))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v11 = sub_22B7DC1C8();
          goto LABEL_4;
        }

        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && (v19 = *(v12 + 3) >> 1, v19 >= v16))
        {
          if (*(v17 + 16))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v6 <= v16)
          {
            v20 = &v6[a2];
          }

          else
          {
            v20 = v6;
          }

          v12 = sub_22B71BD80(isUniquelyReferenced_nonNull_native, v20, 1, v12);
          v19 = *(v12 + 3) >> 1;
          if (*(v17 + 16))
          {
LABEL_21:
            if (v19 - *(v12 + 2) < a2)
            {
              goto LABEL_39;
            }

            swift_arrayInitWithCopy();

            if (a2)
            {
              v21 = *(v12 + 2);
              v22 = __OFADD__(v21, a2);
              v23 = v21 + a2;
              if (v22)
              {
                goto LABEL_40;
              }

              *(v12 + 2) = v23;
            }

            goto LABEL_8;
          }
        }

        if (a2)
        {
          goto LABEL_38;
        }

LABEL_8:
        v4 = v4 + 1;

        if (v11 == v4)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
LABEL_26:
    v25 = sub_22B7DB2B8();
    sub_22B4CFA74(v25, qword_28141F400);
    v26 = v6;
    v27 = sub_22B7DB298();
    v28 = sub_22B7DBC98();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_22B7DC5C8();
      v33 = sub_22B4CFAAC(v31, v32, v44);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22B4CC000, v27, v28, "Failed to fetch family circle: %s", v29, 0xCu);
      sub_22B4CFB78(v30);
      MEMORY[0x231898D60](v30, -1, -1);
      MEMORY[0x231898D60](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_36;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_29:

  if (qword_28141F3F8 != -1)
  {
    swift_once();
  }

  v34 = sub_22B7DB2B8();
  sub_22B4CFA74(v34, qword_28141F400);

  v35 = sub_22B7DB298();
  v36 = sub_22B7DBC78();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = *(v12 + 2);

    _os_log_impl(&dword_22B4CC000, v35, v36, "Got %ld family contacts from family circle", v37, 0xCu);
    MEMORY[0x231898D60](v37, -1, -1);
  }

  else
  {
  }

  *v40 = v12;
  v38 = [objc_opt_self() defaultCenter];
  [v38 postNotificationName:@"IMDFamilyDidChangeNotification" object:v42];

LABEL_36:
  v39 = *MEMORY[0x277D85DE8];
}