void *sub_254125BC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_254125C14(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_254125CD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254125D14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254125DD4(uint64_t a1)
{
  result = sub_25413EA9C(&qword_27F5B8B68, type metadata accessor for EnergyKit.LoadEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254125E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for EnergyKit.LoadEvent.State(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_254125F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EnergyKit.EventBase();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for EnergyKit.LoadEvent.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_254126018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2541260D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25424D948();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_254126188(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 32)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_25412623C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_254126300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25424D8B8();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_254126408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D8B8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_254126510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Base = type metadata accessor for QueryBase();
  v7 = *(Base - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Base);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2541265D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryBase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_254126690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 36) + 8) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 36) + 8) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254126750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25424D948();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 36));
    *v11 = 0;
    v11[1] = 2 * -a2;
    v11[2] = 0;
  }

  return result;
}

uint64_t sub_254126814()
{
  v1 = (type metadata accessor for EncryptionKeyQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25424D8B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v16 = *(v6 + 64);
  v9 = v2 | v7;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = v0 + v3;
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v13(v11 + v1[8], v12);
  sub_254148B1C(*(v11 + v1[11]), *(v11 + v1[11] + 8), *(v11 + v1[11] + 16));
  v14 = *(v11 + v1[12]);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v16, v9 | 7);
}

uint64_t sub_2541269D0(uint64_t a1)
{
  result = sub_25414A784(&qword_27F5B8E90, type metadata accessor for LockEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254126A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_254126AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_254126BE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254126C24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  result = sub_25424E638();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_25424EBD8();
      MEMORY[0x259C06AA0](qword_2542546A0[v18]);
      result = sub_25424EC28();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_254126E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventQuery.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254126EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventQuery.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_254126F5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_25424D948();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_25424D218();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_2541270D4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_25424D948();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25424D218();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_25412724C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  result = sub_25424E638();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_25424EBD8();
      MEMORY[0x259C06AA0](qword_2542546A0[v17]);
      result = sub_25424EC28();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_254127478()
{
  v1 = *(type metadata accessor for EventQuery(0) - 8);
  v27 = *(v1 + 80);
  v24 = *(v1 + 64);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v2 = *(v28 - 8);
  v22 = *(v2 + 80);
  v21 = *(v2 + 64);
  v26 = sub_25424D8B8();
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v29 = v0;
  v25 = (v27 + 32) & ~v27;
  v6 = v0 + v25;
  __swift_destroy_boxed_opaque_existential_1((v0 + v25));
  sub_254148B1C(*(v6 + 40), *(v6 + 48), *(v6 + 56));
  v7 = type metadata accessor for EventQuery.Configuration(0);
  v8 = v7[6];
  v9 = sub_25424D948();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v25 + v8, v9);
  v11(v0 + v25 + v7[7], v9);
  v12 = v7[8];
  v13 = sub_25424D218();
  (*(*(v13 - 8) + 8))(v0 + v25 + v12, v13);
  v14 = *(v0 + v25 + v7[9]);

  v15 = *(v0 + v25 + v7[10]);

  v16 = v7[11];
  if (!(*(v10 + 48))(v0 + v25 + v16, 1, v9))
  {
    v11(v6 + v16, v9);
  }

  v17 = (v25 + v24 + v22) & ~v22;
  v18 = (v17 + v21 + v4) & ~v4;
  v19 = *(v6 + v7[16]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v6 + v7[18]));
  (*(v2 + 8))(v29 + v17, v28);
  (*(v3 + 8))(v29 + v18, v26);

  return MEMORY[0x2821FE8E8](v29, v18 + v23, v27 | v22 | v4 | 7);
}

uint64_t sub_25412779C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SomeEvent();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25412788C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SomeEvent();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_254127988()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2541279C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254127A08@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_254127A38(uint64_t a1)
{
  result = sub_25418E354(&qword_27F5B9828, type metadata accessor for ThermostatAutomationEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254127A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ThermostatAutomationEvent.State(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_254127B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryEventBase(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ThermostatAutomationEvent.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_254127C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 3)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_254127D38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_254127DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254127E60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_254127EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_254127FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25424D948();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

BOOL sub_254128064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) != 0 && (v6 = *(a3 + 20), (sub_25424D8F8()))
  {
    return qword_254257568[*(a1 + *(a3 + 24))] == qword_254257568[*(a2 + *(a3 + 24))];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2541280DC(uint64_t a1)
{
  v3 = v1;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v4 = *(a1 + 20);
  sub_25424D948();
  sub_25419434C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257568[*(v3 + *(a1 + 24))]);
  return sub_25424EC28();
}

uint64_t sub_2541281E8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = *(a2 + 20);
  sub_25424D948();
  sub_25419434C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  return MEMORY[0x259C06AA0](qword_254257568[*(v4 + *(a2 + 24))]);
}

uint64_t sub_2541282E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = *(a2 + 20);
  sub_25424D948();
  sub_25419434C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257568[*(v4 + *(a2 + 24))]);
  return sub_25424EC28();
}

uint64_t sub_25412840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeActivityStateEvent.State(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_254128558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EventBase(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeActivityStateEvent.State(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2541286B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_254128780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 1) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25412882C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D948();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 249)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 7)
    {
      return v15 - 6;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for HomeActivityStateEvent.State(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_2541289EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_25424D948();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 249)
  {
    *(a1 + a4[6]) = a2 + 6;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for HomeActivityStateEvent.State(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_254128BB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254128BE8()
{
  v1 = sub_25424D8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_254128CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_2541A1114(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254128D0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254128D44()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for Promise.ValueType() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  v7 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_254128E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_254128F34()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v2 = sub_25424E098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_25412902C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2541290C0(uint64_t a1)
{
  result = sub_2541A8E70(&qword_27F5BA120, type metadata accessor for SecuritySystemEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254129118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2541291D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_254129288()
{
  v1 = *(type metadata accessor for EventQuery(0) - 8);
  v22 = *(v1 + 80);
  v19 = *(v1 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 80);
  v20 = *(v2 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v21 = (v22 + 32) & ~v22;
  v5 = v0 + v21;
  __swift_destroy_boxed_opaque_existential_1((v0 + v21));
  sub_254148B1C(*(v5 + 40), *(v5 + 48), *(v5 + 56));
  v6 = type metadata accessor for EventQuery.Configuration(0);
  v7 = v6[6];
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v21 + v7, v8);
  v10(v0 + v21 + v6[7], v8);
  v11 = v6[8];
  v12 = sub_25424D218();
  (*(*(v12 - 8) + 8))(v0 + v21 + v11, v12);
  v13 = *(v0 + v21 + v6[9]);

  v14 = *(v0 + v21 + v6[10]);

  v15 = v6[11];
  if (!(*(v9 + 48))(v0 + v21 + v15, 1, v8))
  {
    v10(v5 + v15, v8);
  }

  v16 = (v21 + v19 + v3) & ~v3;
  v17 = *(v5 + v6[16]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[18]));
  (*(v2 + 8))(v0 + v16, v23);

  return MEMORY[0x2821FE8E8](v0, v16 + v20, v22 | v3 | 7);
}

uint64_t sub_25412951C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2541295B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25412961C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_254129690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2541296D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DigestRecord.Metadata(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_25424D418();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25412984C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25424D948();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for DigestRecord.Metadata(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_25424D418();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2541299C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_254129ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D8B8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_254129BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424DA48();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254129C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424DA48();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_254129CB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254129CFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254129D3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254129D74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254129DB4(uint64_t a1)
{
  result = sub_2541C6260(&qword_27F5BA850, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254129E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_254129EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryEventBase(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_254129FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0) - 8) + 84) == a2)
  {
    v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 <= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = *(a1 + *(a3 + 20));
    }

    v11 = v10 - 2;
    if (v9 >= 2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412A0D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 84) == a3)
  {
    v11 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25412A1C8(uint64_t a1)
{
  result = sub_2541CC040(&qword_27F5BAB88, type metadata accessor for ThermostatAutomationFailureEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412A2E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBase(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_25412A3A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412A3E4(uint64_t a1)
{
  result = sub_2541CE508(&qword_27F5BACE0, type metadata accessor for SmokeDetectorEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412A43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412A4F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25412A5B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412A5EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412A628()
{
  v1 = sub_25424D418();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25412A6BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412A6FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412A738(uint64_t a1)
{
  result = sub_2541E08DC(&qword_27F5BB1A0, type metadata accessor for WindowEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412A848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_25412A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Base = type metadata accessor for QueryBase();
  v7 = *(Base - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Base);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412A9B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryBase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_25412AA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDigestQuery(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25412AADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDigestQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25412AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25412AC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_25412ACD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412AD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25412AE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D8B8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25412AF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2541EB854(*a1, a2, *v3, v3[1], v3[2]);
  *a3 = result;
  return result;
}

uint64_t sub_25412AFD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B040@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_25412B050@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result < 0;
  *a2 = *result & ~(*result >> 63);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_25412B06C(unsigned __int8 a1)
{
  v1 = 0x6E61656C63;
  v2 = 0x64696F7661;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 0x656375646572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25412B0DC(unsigned __int8 a1)
{
  v1 = 0x66664F7265707573;
  v2 = 0x6B6165506E6FLL;
  v3 = 0x6C61636974697263;
  if (a1 != 4)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6B61655066666FLL;
  if (a1 != 1)
  {
    v4 = 0x506C616974726170;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s13HomeKitEvents9EnergyKitO9LoadLevelVwet_0(uint64_t a1, int a2)
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

uint64_t _s13HomeKitEvents9EnergyKitO9LoadLevelVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_25412B1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25412B300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EventBase(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D948();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25412B41C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25412B4AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B4EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B528()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25412B570()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B5AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412B5F8(uint64_t a1)
{
  result = sub_254205000(&qword_27F5BBAE0, type metadata accessor for EnergyKit.LoadSessionEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412B650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
    v11 = *(*(SessionEventV5StateVMa - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, SessionEventV5StateVMa);
  }
}

uint64_t sub_25412B740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EnergyKit.EventBase();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
    v13 = *(*(SessionEventV5StateVMa - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, SessionEventV5StateVMa);
  }
}

uint64_t sub_25412B83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25412B948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D948();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25412BA54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412BA90(uint64_t a1)
{
  result = sub_254207204(&qword_27F5BBBD8, type metadata accessor for GarageDoorEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412BAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 7)
    {
      return v10 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412BBA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_25412BC58()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25412BCD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_25412DCB8(v3);
}

uint64_t sub_25412BCF0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  sub_25412DCB8(*a1);
  result = sub_25412DC98(v6);
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25412BD60()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25412BD98(uint64_t a1)
{
  result = sub_254209540(&qword_27F5BBD60, type metadata accessor for DoorEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412BEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_25412BF60(uint64_t a1)
{
  result = sub_25420B5EC(&qword_27F5BBDE8, type metadata accessor for ContactSensorEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412BFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412C070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25412C128(uint64_t a1, unint64_t a2)
{
  v4 = sub_25424D548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_254134D04(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2541826A4(v11, 0);
      v15 = sub_25424D458();
      sub_254134D04(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_25412C2E0()
{
  v1 = (type metadata accessor for CKQueryAsyncSequence() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v5 = *(v23 - 8);
  v6 = *(v5 + 80);
  v19 = (v4 + v6) & ~v6;
  v7 = *(v5 + 64);
  v22 = sub_25424D8B8();
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v10 = (v19 + v7 + v9) & ~v9;
  v20 = v2 | v9 | v6;
  v21 = *(v8 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  sub_254148B1C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v13 = v1[9];
  v14 = sub_25424D948();
  v15 = *(*(v14 - 8) + 8);
  v15(v12 + v13, v14);
  v15(v12 + v1[10], v14);
  v16 = *(v12 + v1[11]);

  v17 = *(v12 + v1[14]);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v0 + v19, v23);
  (*(v8 + 8))(v0 + v10, v22);

  return MEMORY[0x2821FE8E8](v0, v10 + v21, v20 | 7);
}

uint64_t sub_25412C554()
{
  MEMORY[0x259C07420](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) >> 1) > 0x80000000)
    {
      return -(*(a1 + 8) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_25424D948();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 28);

    return v8(v9, a2, v7);
  }
}

void *sub_25412C658(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = 0;
    result[1] = 2 * -a2;
    result[2] = 0;
  }

  else
  {
    v7 = sub_25424D948();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25412C710()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412C74C()
{
  v1 = sub_25424D418();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_25412C8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25412C97C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25412CA38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412CA74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412CAC8(uint64_t a1)
{
  result = sub_25422A050(&qword_27F5BC098, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25412CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
    v11 = *(*(DailyDigestEventV5StateVMa - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, DailyDigestEventV5StateVMa);
  }
}

uint64_t sub_25412CC10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EnergyKit.EventBase();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
    v13 = *(*(DailyDigestEventV5StateVMa - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, DailyDigestEventV5StateVMa);
  }
}

uint64_t sub_25412CD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 329);
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25412CDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25424D8B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 329) = a2 + 1;
  }

  return result;
}

uint64_t sub_25412CF10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412CF48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25412CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_25424D8B8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25412D0B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25424D948();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_25424D8B8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25412D1D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_25412D35C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_25424D948();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_25412D4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBase(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25412D54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBase(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25412D624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDigestQuery.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25412D690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDigestQuery.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25412D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25424D948();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25424D218();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25412D824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_25424D948();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25424D218();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25412D948()
{
  v1 = *(type metadata accessor for EventDigestQuery(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
  v5 = *(v26 - 8);
  v6 = *(v5 + 80);
  v22 = (v4 + v6) & ~v6;
  v7 = *(v5 + 64);
  v25 = sub_25424D8B8();
  v8 = *(v25 - 8);
  v9 = *(v8 + 80);
  v10 = (v22 + v7 + v9) & ~v9;
  v23 = v2 | v9 | v6;
  v24 = *(v8 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v13 = *(v0 + v3 + 40);
  swift_unknownObjectRelease();
  sub_254148B1C(*(v12 + 48), *(v12 + 56), *(v12 + 64));
  v14 = type metadata accessor for EventDigestQuery.Configuration(0);
  v15 = v14[7];
  v16 = sub_25424D948();
  v17 = *(*(v16 - 8) + 8);
  v17(v12 + v15, v16);
  v18 = v14[8];
  v19 = sub_25424D218();
  (*(*(v19 - 8) + 8))(v12 + v18, v19);
  v20 = *(v12 + v14[9]);

  v17(v12 + v14[15], v16);
  (*(v5 + 8))(v0 + v22, v26);
  (*(v8 + 8))(v0 + v10, v25);

  return MEMORY[0x2821FE8E8](v0, v10 + v24, v23 | 7);
}

uint64_t sub_25412DC4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25412DC98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_25412DCA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25412DCB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO12SleepDetailsO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_25412DD10()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

id sub_25412DDB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudKitQueryLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CloudKitQueryLogEvent()
{
  result = qword_27F5B8490;
  if (!qword_27F5B8490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25412DEAC()
{
  result = sub_25424D948();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitQueryLogEvent.CloudKitQueryState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitQueryLogEvent.CloudKitQueryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25412E0F8()
{
  result = qword_27F5B85D8;
  if (!qword_27F5B85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B85D8);
  }

  return result;
}

uint64_t sub_25412E14C(uint64_t a1)
{
  v2 = sub_25412E774(&qword_27F5B86E0, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25412E1B8(uint64_t a1)
{
  v2 = sub_25412E774(&qword_27F5B86E0, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_25412E228(uint64_t a1)
{
  v2 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

void *sub_25412E2CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25412E2F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25412E3B8(uint64_t a1)
{
  v2 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_25412E424(uint64_t a1)
{
  v2 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_25412E490(void *a1, uint64_t a2)
{
  v4 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25412E544(uint64_t a1, uint64_t a2)
{
  v4 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_25412E5C0()
{
  v2 = *v0;
  sub_25424EBD8();
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t sub_25412E620@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2541BB724();

  *a1 = v2;
  return result;
}

uint64_t sub_25412E660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25412E774(&unk_27F5B8E40, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_25412E774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25412E858(uint64_t a1, int a2)
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

uint64_t sub_25412E878(uint64_t result, int a2, int a3)
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

void sub_25412EA44(uint64_t a1, unint64_t *a2)
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

unint64_t sub_25412EADC()
{
  result = qword_27F5B8708;
  if (!qword_27F5B8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalAccessoryEventStateCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InternalAccessoryEventStateCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25412ED3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 115;
  }

  if (v3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617473;
  }

  else
  {
    v6 = 115;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();
  }

  return v9 & 1;
}

uint64_t sub_25412EDD4()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_25412EE48()
{
  *v0;
  sub_25424DD88();
}

uint64_t sub_25412EEA8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_25412EF18@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25424E8E8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25412EF78(uint64_t *a1@<X8>)
{
  v2 = 115;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25412EFA8()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 115;
  }

  *v0;
  return result;
}

uint64_t sub_25412EFD4@<X0>(char *a1@<X8>)
{
  v2 = sub_25424E8E8();

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

uint64_t sub_25412F044(uint64_t a1)
{
  v2 = sub_25412F1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25412F080(uint64_t a1)
{
  v2 = sub_25412F1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25412F0C0()
{
  result = qword_27F5B87F0;
  if (!qword_27F5B87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B87F0);
  }

  return result;
}

unint64_t sub_25412F118()
{
  result = qword_27F5B87F8;
  if (!qword_27F5B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B87F8);
  }

  return result;
}

unint64_t sub_25412F170()
{
  result = qword_27F5B8800;
  if (!qword_27F5B8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8800);
  }

  return result;
}

unint64_t sub_25412F1C4()
{
  result = qword_27F5B8808;
  if (!qword_27F5B8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8808);
  }

  return result;
}

void sub_25412F218(void *a1, uint64_t a2)
{
  v4[4] = sub_25412F4D8;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2541ED26C;
  v4[3] = &block_descriptor;
  v3 = _Block_copy(v4);

  [a1 resetConfigurationWithReply_];
  _Block_release(v3);
}

uint64_t sub_25412F2E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254252CB8;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_25412F544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_254130D50(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25412F65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_254130D50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25412F724()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25412F83C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25412F910;

  return sub_25412FDA0();
}

uint64_t sub_25412F910()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_25412FA44;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25412FA44()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_25412FAA8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    sub_25424D948();
    v3 = sub_25424DF88();
  }

  v7[4] = sub_254132F24;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2541ED26C;
  v7[3] = &block_descriptor_0;
  v6 = _Block_copy(v7);

  [a1 hmvutilClearLocalDatabaseWithHomes:v3 reply:v6];
  _Block_release(v6);
}

uint64_t sub_25412FBA8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_254132F4C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254252DA0;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252D98;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t sub_25412FDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25424DAA8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25412FE64, 0, 0);
}

uint64_t sub_25412FE64()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  if (byte_281407088 == 1)
  {
    type metadata accessor for XPCHMVUtilClient();
    v1 = swift_allocObject();
    *(v0 + 64) = v1;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    v16 = *(v0 + 24);
    sub_2541FB1B8();
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *(v2 + 16) = v1;
    *(v2 + 24) = v16;
    v3 = *(MEMORY[0x277D85A40] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_2541300E0;
    v5 = *(v0 + 16);
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001ELL, 0x8000000254250380, sub_254132EBC, v2, v6);
  }

  else
  {
    sub_254219E50(*(v0 + 56));
    v7 = sub_25424DA88();
    v8 = sub_25424E408();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_254124000, v7, v8, "Rejected request to connect because device does not have an internal build", v9, 2u);
      MEMORY[0x259C07330](v9, -1, -1);
    }

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);

    (*(v11 + 8))(v10, v12);
    sub_254130CFC();
    swift_allocError();
    swift_willThrow();
    v13 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2541300E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_254130268;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2541301FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541301FC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_254130268()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2541302DC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25424DAA8();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25413039C, 0, 0);
}

uint64_t sub_25413039C()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  if (byte_281407088 == 1)
  {
    type metadata accessor for XPCHMVUtilClient();
    v1 = swift_allocObject();
    *(v0 + 72) = v1;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    v15 = *(v0 + 32);
    sub_2541FB1B8();
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *(v2 + 16) = v1;
    *(v2 + 24) = v15;
    v3 = *(MEMORY[0x277D85A40] + 4);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_254130614;
    v5 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001ELL, 0x8000000254250380, sub_254132C30, v2, v5);
  }

  else
  {
    sub_254219E50(*(v0 + 64));
    v6 = sub_25424DA88();
    v7 = sub_25424E408();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_254124000, v6, v7, "Rejected request to connect because device does not have an internal build", v8, 2u);
      MEMORY[0x259C07330](v8, -1, -1);
    }

    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);

    (*(v10 + 8))(v9, v11);
    sub_254130CFC();
    swift_allocError();
    swift_willThrow();
    v12 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_254130614()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2541307B0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_254130730;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254130730()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_2541307B0()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_254130824(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_25424DAA8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541308E4, 0, 0);
}

uint64_t sub_2541308E4()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  if (byte_281407088 == 1)
  {
    type metadata accessor for XPCHMVUtilClient();
    v1 = swift_allocObject();
    *(v0 + 64) = v1;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    v15 = *(v0 + 24);
    sub_2541FB1B8();
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *(v2 + 16) = v1;
    *(v2 + 24) = v15;
    v3 = *(MEMORY[0x277D85A40] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8818, &qword_254252CD8);
    *v4 = v0;
    v4[1] = sub_254130B6C;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001ELL, 0x8000000254250380, sub_254132930, v2, v5);
  }

  else
  {
    sub_254219E50(*(v0 + 56));
    v6 = sub_25424DA88();
    v7 = sub_25424E408();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_254124000, v6, v7, "Rejected request to connect because device does not have an internal build", v8, 2u);
      MEMORY[0x259C07330](v8, -1, -1);
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);

    (*(v10 + 8))(v9, v11);
    sub_254130CFC();
    swift_allocError();
    swift_willThrow();
    v12 = *(v0 + 56);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_254130B6C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_254130268;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_254130C88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254130C88()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_254130CFC()
{
  result = qword_27F5B8810;
  if (!qword_27F5B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8810);
  }

  return result;
}

uint64_t sub_254130D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254130E68, a4, 0);
}

uint64_t sub_254130E68()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = *(*v4 + 112);
  swift_beginAccess();
  sub_254132DF4(v4 + v5, v3, &qword_27F5B8840, &qword_254252D18);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_254132E5C(v0[12], &qword_27F5B8840, &qword_254252D18);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    (*(v7 + 32))(v6, v0[12], v8);
    (*(v7 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_254132C3C(v10, v4 + v5, &qword_27F5B8840, &qword_254252D18);
    swift_endAccess();
    v11(v6);
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_254131030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8870, &qword_254252D58) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8878, &qword_254252D60);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254131148, a4, 0);
}

uint64_t sub_254131148()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = *(*v4 + 112);
  swift_beginAccess();
  sub_254132DF4(v4 + v5, v3, &qword_27F5B8870, &qword_254252D58);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_254132E5C(v0[12], &qword_27F5B8870, &qword_254252D58);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    (*(v7 + 32))(v6, v0[12], v8);
    (*(v7 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_254132C3C(v10, v4 + v5, &qword_27F5B8870, &qword_254252D58);
    swift_endAccess();
    v11(v6);
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_254131310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8860, &qword_254252D40) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254131428, a4, 0);
}

uint64_t sub_254131428()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = *(*v4 + 112);
  swift_beginAccess();
  sub_254132DF4(v4 + v5, v3, &qword_27F5B8860, &qword_254252D40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_254132E5C(v0[12], &qword_27F5B8860, &qword_254252D40);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    (*(v7 + 32))(v6, v0[12], v8);
    (*(v7 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_254132C3C(v10, v4 + v5, &qword_27F5B8860, &qword_254252D40);
    swift_endAccess();
    v11(v6);
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2541315F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8850, &qword_254252D28) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254131708, a4, 0);
}

uint64_t sub_254131708()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = *(*v4 + 112);
  swift_beginAccess();
  sub_254132DF4(v4 + v5, v3, &qword_27F5B8850, &qword_254252D28);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_254132E5C(v0[12], &qword_27F5B8850, &qword_254252D28);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    (*(v7 + 32))(v6, v0[12], v8);
    (*(v7 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_254132C3C(v10, v4 + v5, &qword_27F5B8850, &qword_254252D28);
    swift_endAccess();
    v11(v6);
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2541318D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8820, &qword_254252CE0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8828, &qword_254252CE8);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541319E8, a4, 0);
}

uint64_t sub_2541319E8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = *(*v4 + 112);
  swift_beginAccess();
  sub_254132DF4(v4 + v5, v3, &qword_27F5B8820, &qword_254252CE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_254132E5C(v0[12], &qword_27F5B8820, &qword_254252CE0);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
    (*(v7 + 32))(v6, v0[12], v8);
    (*(v7 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_254132C3C(v10, v4 + v5, &qword_27F5B8820, &qword_254252CE0);
    swift_endAccess();
    v11(v6);
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_254131BB0(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  (*(v11 + 16))(v26 - v13, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B8888, &qword_254252D88);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 112);
  v20 = *(v11 + 56);
  v20(v18 + v19, 1, 1, v10);
  (*(v11 + 32))(v9, v14, v10);
  v20(v9, 0, 1, v10);
  swift_beginAccess();
  sub_254132C3C(v9, v18 + v19, &qword_27F5B8840, &qword_254252D18);
  swift_endAccess();
  v21 = a2[5];
  v22 = a2[6];
  a2[5] = sub_254132EC8;
  a2[6] = v18;

  sub_25412DC98(v21);
  v23 = a2[3];
  v24 = a2[4];
  a2[3] = sub_254132F1C;
  a2[4] = v18;

  sub_25412DC98(v23);
  sub_2541FB634();
  v27();

  return swift_unknownObjectRelease();
}

uint64_t sub_254131E3C(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8870, &qword_254252D58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8878, &qword_254252D60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  (*(v11 + 16))(v26 - v13, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8880, &qword_254252D68);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 112);
  v20 = *(v11 + 56);
  v20(v18 + v19, 1, 1, v10);
  (*(v11 + 32))(v9, v14, v10);
  v20(v9, 0, 1, v10);
  swift_beginAccess();
  sub_254132C3C(v9, v18 + v19, &qword_27F5B8870, &qword_254252D58);
  swift_endAccess();
  v21 = a2[5];
  v22 = a2[6];
  a2[5] = sub_254132CA4;
  a2[6] = v18;

  sub_25412DC98(v21);
  v23 = a2[3];
  v24 = a2[4];
  a2[3] = sub_254132CF8;
  a2[4] = v18;

  sub_25412DC98(v23);
  sub_2541FB634();
  v27();

  return swift_unknownObjectRelease();
}

uint64_t sub_2541320C8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8820, &qword_254252CE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8828, &qword_254252CE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  (*(v11 + 16))(v26 - v13, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8830, &qword_254252CF0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 112);
  v20 = *(v11 + 56);
  v20(v18 + v19, 1, 1, v10);
  (*(v11 + 32))(v9, v14, v10);
  v20(v9, 0, 1, v10);
  swift_beginAccess();
  sub_254132C3C(v9, v18 + v19, &qword_27F5B8820, &qword_254252CE0);
  swift_endAccess();
  v21 = a2[5];
  v22 = a2[6];
  a2[5] = sub_25413293C;
  a2[6] = v18;

  sub_25412DC98(v21);
  v23 = a2[3];
  v24 = a2[4];
  a2[3] = sub_254132990;
  a2[4] = v18;

  sub_25412DC98(v23);
  sub_2541FB634();
  v27();

  return swift_unknownObjectRelease();
}

void sub_254132354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_254132998();
  v12 = swift_allocError();
  *v13 = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_25424E128();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = v14;
  v17 = v12;

  sub_25419CC1C(0, 0, v11, a5, v16);
}

void sub_2541324BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_254132998();
  v6 = swift_allocError();
  *v7 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = sub_25412F60C;
  v10[6] = v8;
  v11 = v6;

  sub_25419CC1C(0, 0, v5, &unk_254252CB0, v10);
}

void sub_254132638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_254132998();
  v6 = swift_allocError();
  *v7 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = sub_254132D00;
  v10[6] = v8;
  v11 = v6;

  sub_25419CC1C(0, 0, v5, &unk_254252D78, v10);
}

void sub_2541327B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_254132998();
  v6 = swift_allocError();
  *v7 = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = sub_254132A74;
  v10[6] = v8;
  v11 = v6;

  sub_25419CC1C(0, 0, v5, &unk_254252D00, v10);
}

unint64_t sub_254132998()
{
  result = qword_27F5B8838;
  if (!qword_27F5B8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8838);
  }

  return result;
}

uint64_t sub_254132A14(uint64_t a1, id *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_25424E078();
}

uint64_t sub_254132AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_2541318D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_254132B68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_2541318D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_254132C3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_254132D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_254131030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_254132DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_254132E5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static DecodingError.dataCorruptedError<A>(_:_:)@<X0>(uint64_t a1@<X8>)
{
  sub_25424EC38();

  sub_25424E6E8();
  v2 = *MEMORY[0x277D84168];
  v3 = sub_25424E6F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AsyncDataChunkSequence.init(source:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a3 - 8) + 32))(a4, result);
    result = type metadata accessor for AsyncDataChunkSequence();
    *(a4 + *(result + 36)) = a2;
  }

  return result;
}

uint64_t sub_2541330B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for AsyncDataChunkSequence.AsyncIterator();
  v7 = a3 + *(result + 40);
  *v7 = xmmword_254252DB0;
  *(v7 + 16) = 0;
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    result = (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
    *(a3 + *(v8 + 36)) = a2;
  }

  return result;
}

uint64_t AsyncDataChunkSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v18 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25424E208();
  return sub_2541330B0(v16, *(v3 + *(a1 + 36)), a2);
}

uint64_t sub_2541332DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncDataChunkSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncDataChunkSequence.AsyncIterator.next()(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2541333CC, 0, 0);
}

uint64_t sub_2541333CC()
{
  v11 = *MEMORY[0x277D85DE8];
  sub_25424E1E8();
  v1 = v0[2];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[4] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[5] = AssociatedConformanceWitness;
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_254133564;
  v8 = v0[3];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200308](v0 + 107, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_254133564()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2541341F4;
  }

  else
  {
    v3 = sub_2541336A4;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541336A4()
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 108) & 1) == 0)
  {
    v3 = *(v0 + 107);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = *(v5 + 40);
    *(v0 + 88) = v6;
    v7 = (v4 + v6);
    v8 = *(v4 + v6 + 8);
    if (v8 >> 60 == 15)
    {
      v9 = sub_2541ED1B4(*(v4 + *(v5 + 36)));
      v11 = v10;
      v13 = v12;
      v14 = v7[2];
      v15 = sub_254134CF0(*v7, v7[1]);
      *v7 = v9;
      v7[1] = v11;
      v7[2] = v13;
      goto LABEL_15;
    }

    v18 = *v7;
    v19 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v19 != 2)
      {
LABEL_14:
        v15 = sub_25424D478();
        v7[2] = 0;
        v11 = v7[1];
LABEL_15:
        if (v11 >> 60 == 15)
        {
          __break(1u);
        }

        else
        {
          v15 = sub_2541EB0F4(v3);
          v22 = v7[1];
          if (v22 >> 60 != 15)
          {
            v23 = *(v0 + 24);
            v24 = (v23 + *(v0 + 88));
            v25 = v24[2];
            if (v25 < *(v23 + *(*(v0 + 16) + 36)))
            {
              v26 = *(MEMORY[0x277D856D0] + 4);
              v27 = swift_task_alloc();
              *(v0 + 72) = v27;
              *v27 = v0;
              v27[1] = sub_25413396C;
              v16 = *(v0 + 32);
              v17 = *(v0 + 40);
              v28 = *(v0 + 24);
              v29 = *MEMORY[0x277D85DE8];
              v15 = v0 + 109;

              return MEMORY[0x282200308](v15, v16, v17);
            }

            if ((v25 & 0x8000000000000000) == 0)
            {
              v30 = *v24;
              v31 = v22 >> 62;
              if ((v22 >> 62) > 1)
              {
                v32 = 0;
                if (v31 == 2)
                {
                  v32 = *(v30 + 16);
                }
              }

              else if (v31)
              {
                v32 = v30;
              }

              else
              {
                v32 = 0;
              }

              v33 = sub_2541347C8(v32, 0, v30, v22);
              if (sub_2541347C8(v32, v25, v30, v22) >= v33)
              {
                v1 = sub_25424D4B8();
                goto LABEL_30;
              }

LABEL_35:
              __break(1u);
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        __break(1u);
        return MEMORY[0x282200308](v15, v16, v17);
      }

      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = v18;
      v21 = v18 >> 32;
    }

    if (v21 < v20)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  v1 = 0;
  v2 = 0xF000000000000000;
LABEL_30:
  v34 = *(v0 + 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34(v1, v2);
}

uint64_t sub_25413396C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_25413427C;
  }

  else
  {
    v3 = sub_254133AAC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254133AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(v3 + 109);
  v5 = (*(v3 + 24) + *(v3 + 88));
  if (*(v3 + 110))
  {
    v6 = v5[1];
    if (v6 >> 60 != 15)
    {
      v7 = v5[2];
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_96;
  }

  v8 = v5[1];
  if (v8 >> 60 == 15)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v9 = v5[2];
  v10 = *v5;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v16 = 0;
      LODWORD(v11) = 3;
LABEL_24:
      v17 = v16 + v9;
      if (__OFADD__(v16, v9))
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }
      }

      else
      {
        v18 = v10 >> 32;
        if (v11)
        {
          v19 = v10;
        }

        else
        {
          v18 = BYTE6(v8);
          v19 = 0;
        }
      }

      if (v18 < v17 || v17 < v19)
      {
        goto LABEL_83;
      }

      if (v11 > 1)
      {
        if (v11 != 2)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          return MEMORY[0x282200308](a1, a2, a3);
        }

        v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v25 = *v5;

        sub_254134D04(v10, v8);
        *v5 = xmmword_254252DC0;
        sub_254134D04(0, 0xC000000000000000);
        if (v17 < *(v10 + 16))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v17 >= *(v10 + 24))
        {
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v10 + 16);
          v26 = *(v10 + 24);
          if (sub_25424D268() && __OFSUB__(v27, sub_25424D298()))
          {
LABEL_94:
            __break(1u);
          }

          if (__OFSUB__(v26, v27))
          {
            goto LABEL_92;
          }

          v35 = sub_25424D2B8();
          v36 = *(v35 + 48);
          v37 = *(v35 + 52);
          swift_allocObject();
          v38 = sub_25424D248();

          v24 = v38;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v10 + 16);
          v40 = *(v10 + 24);
          sub_25424D468();
          v41 = swift_allocObject();
          *(v41 + 16) = v39;
          *(v41 + 24) = v40;

          v10 = v41;
        }

        sub_25424D238();
        a1 = sub_25424D268();
        if (!a1)
        {
          goto LABEL_100;
        }

        v32 = a1;
        a1 = sub_25424D298();
        v33 = v17 - a1;
        if (__OFSUB__(v17, a1))
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v34 = 0x8000000000000000;
      }

      else
      {
        if (!v11)
        {
          sub_254134D04(v10, v8);
          *(v3 + 92) = v10;
          *(v3 + 100) = v8;
          *(v3 + 102) = BYTE2(v8);
          *(v3 + 103) = BYTE3(v8);
          *(v3 + 104) = BYTE4(v8);
          *(v3 + 105) = BYTE5(v8);
          *(v3 + 106) = BYTE6(v8);
          if (v17 >= BYTE6(v8))
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v21 = *(v3 + 64);
          v22 = (*(v3 + 24) + *(v3 + 88));
          *(v3 + 92 + v17) = v4;
          v6 = v21 & 0xF00000000000000 | *(v3 + 100) | ((*(v3 + 104) | (*(v3 + 106) << 16)) << 32);
          *v22 = *(v3 + 92);
          v22[1] = v6;
          *(*(v3 + 24) + *(v3 + 88) + 16) = v9 + 1;
          v23 = v6;
LABEL_64:
          *(v3 + 64) = v23;
          goto LABEL_65;
        }

        v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;

        sub_254134D04(v10, v8);
        *v5 = xmmword_254252DC0;
        sub_254134D04(0, 0xC000000000000000);
        if (v17 < v10 || v17 >= v10 >> 32)
        {
          goto LABEL_88;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25424D268() && __OFSUB__(v10, sub_25424D298()))
          {
            goto LABEL_93;
          }

          v28 = sub_25424D2B8();
          v29 = *(v28 + 48);
          v30 = *(v28 + 52);
          swift_allocObject();
          v31 = sub_25424D248();

          v24 = v31;
        }

        sub_25424D238();
        a1 = sub_25424D268();
        if (!a1)
        {
          goto LABEL_99;
        }

        v32 = a1;
        a1 = sub_25424D298();
        v33 = v17 - a1;
        if (__OFSUB__(v17, a1))
        {
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v34 = 0x4000000000000000;
      }

      v42 = *(v3 + 88);
      v43 = *(v3 + 24);
      *(v32 + v33) = v4;
      v44 = (v43 + v42);
      v6 = v34 | v24;
      *v44 = v10;
      v44[1] = v34 | v24;
      v23 = *(v3 + 64);
      *(*(v3 + 24) + *(v3 + 88) + 16) = v9 + 1;
      if ((v34 | v24) >> 60 == 15)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      goto LABEL_64;
    }

    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (v14)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v9 < v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v11)
    {
      if (v9 >= BYTE6(v8))
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v9 < HIDWORD(v10) - v10)
    {
LABEL_15:
      if (v11)
      {
        if (v11 == 2)
        {
          v16 = *(v10 + 16);
          LODWORD(v11) = 2;
        }

        else
        {
          v16 = v10;
          LODWORD(v11) = 1;
        }
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_24;
    }
  }

LABEL_19:
  a1 = sub_25413482C(v5[2], v5[2], *(v3 + 109));
  v6 = v5[1];
  if (v6 >> 60 == 15)
  {
    goto LABEL_97;
  }

LABEL_65:
  v45 = *(v3 + 24);
  v5 = (v45 + *(v3 + 88));
  v7 = v5[2];
  if (v7 < *(v45 + *(*(v3 + 16) + 36)))
  {
    v46 = *(MEMORY[0x277D856D0] + 4);
    v47 = swift_task_alloc();
    *(v3 + 72) = v47;
    *v47 = v3;
    v47[1] = sub_25413396C;
    a2 = *(v3 + 32);
    a3 = *(v3 + 40);
    v48 = *(v3 + 24);
    v49 = *MEMORY[0x277D85DE8];
    a1 = v3 + 109;

    return MEMORY[0x282200308](a1, a2, a3);
  }

LABEL_69:
  if (v7 < 0)
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v50 = *v5;
  v51 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v52 = 0;
    if (v51 == 2)
    {
      v52 = *(v50 + 16);
    }
  }

  else if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  v53 = sub_2541347C8(v52, 0, v50, v6);
  if (sub_2541347C8(v52, v7, v50, v6) < v53)
  {
    goto LABEL_81;
  }

  v54 = sub_25424D4B8();
  v55 = *(v3 + 8);
  v56 = *MEMORY[0x277D85DE8];

  return v55(v54);
}

uint64_t sub_2541341F4()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_25413427C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_254134304(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return AsyncDataChunkSequence.AsyncIterator.next()(a2);
}

uint64_t sub_25413439C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2541344B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_25413458C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_25413458C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t AsyncSequence<>.hmvChunked(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a2);
  a3[3] = type metadata accessor for AsyncDataChunkSequence();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return AsyncDataChunkSequence.init(source:count:)(v9, a1, a2, boxed_opaque_existential_1);
}

uint64_t sub_2541347C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25413482C(uint64_t a1, uint64_t a2, char a3)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v7 = v3[2];
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v7 < a2 || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_89;
  }

  v11 = v8 + 1;
  v12 = *v3;
  v13 = v3[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_20;
    }

    v17 = v12 + 16;
    v15 = *(v12 + 16);
    v16 = *(v17 + 8);
    v18 = __OFSUB__(v16, v15);
    v19 = v16 - v15;
    if (v18)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v19 <= v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!v14)
    {
      if (BYTE6(v13) > v8)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    v18 = __OFSUB__(HIDWORD(v12), v12);
    v20 = HIDWORD(v12) - v12;
    if (v18)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (v20 <= v8)
    {
LABEL_18:
      if (v8 >= -1)
      {
LABEL_21:
        sub_25424D498();
        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      if (v8 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v60 = a3;
  if (v6 != 1)
  {
    v21 = v7 - a2;
    if (__OFSUB__(v7, a2))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v21 > 0)
    {
      v22 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v23 = *v3;
      v24 = v3[1];
      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        v26 = 0;
        if (v25 == 2)
        {
          v26 = *(v23 + 16);
        }
      }

      else if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_2541347C8(v26, a2, *v3, v3[1]);
      if (sub_2541347C8(v26, v7, v23, v24) < v27)
      {
        goto LABEL_95;
      }

      v28 = *v3;
      v29 = v3[1];
      v30 = sub_25424D4B8();
      v32 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v32 < v22)
      {
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v33 = v30;
      v34 = 0;
      v36 = *v3;
      v35 = v3[1];
      v37 = v35 >> 62;
      v59 = v31;
      if ((v35 >> 62) > 1)
      {
        if (v37 == 2)
        {
          v34 = *(v36 + 16);
        }
      }

      else if (v37)
      {
        v34 = v36;
      }

      v38 = sub_2541347C8(v34, a1 + 1, v36, v35);
      if (sub_2541347C8(v34, v32, v36, v35) < v38)
      {
        goto LABEL_98;
      }

      sub_2541EFE04(v33, v59);
      sub_254134D04(v33, v59);
      v11 = v8 + 1;
    }
  }

  v39 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_90;
  }

  if (v39 < a1)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v41 = *v3;
  v40 = v3[1];
  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    v43 = 0;
    v44 = v60;
    if (v42 == 2)
    {
      v43 = *(v41 + 16);
    }
  }

  else
  {
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    v44 = v60;
  }

  v45 = sub_2541347C8(v43, a1, *v3, v3[1]);
  if (sub_2541347C8(v43, v39, v41, v40) < v45)
  {
    goto LABEL_92;
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8998, &qword_254252EC8);
  v64 = sub_254135950();
  LOBYTE(v62[0]) = v44;
  v61 = *__swift_project_boxed_opaque_existential_1(v62, v63);
  sub_25424D488();
  result = __swift_destroy_boxed_opaque_existential_1(v62);
  v3[2] = v11;
  if (v11 >= v7)
  {
    goto LABEL_85;
  }

  v47 = *v3;
  v48 = v3[1];
  v49 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (v49)
    {
      if (__OFSUB__(HIDWORD(v47), v47))
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (v11 >= HIDWORD(v47) - v47)
      {
        goto LABEL_85;
      }
    }

    else if (v11 >= BYTE6(v48))
    {
      goto LABEL_85;
    }

    goto LABEL_63;
  }

  if (v49 == 2)
  {
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v18 = __OFSUB__(v50, v51);
    v52 = v50 - v51;
    if (v18)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v11 >= v52)
    {
      goto LABEL_85;
    }

LABEL_63:
    if (v49 == 2)
    {
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      v18 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (!v18)
      {
LABEL_73:
        if (v53 < v7)
        {
          v7 = v53;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    else if (v49 == 1)
    {
      LODWORD(v53) = HIDWORD(v47) - v47;
      if (__OFSUB__(HIDWORD(v47), v47))
      {
        goto LABEL_106;
      }

      v53 = v53;
      goto LABEL_73;
    }

    v53 = BYTE6(v48);
    goto LABEL_73;
  }

  if (v8 >= -1)
  {
    goto LABEL_85;
  }

  v7 &= v7 >> 63;
LABEL_75:
  if (v7 <= v8)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v11 != v7)
  {
    v56 = 0;
    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v56 = *(v47 + 16);
      }
    }

    else if (v49)
    {
      v56 = v47;
    }

    v57 = sub_2541347C8(v56, v11, v47, v48);
    if (sub_2541347C8(v56, v7, v47, v48) >= v57)
    {
      if ((v57 & 0x8000000000000000) == 0)
      {
        result = sub_25424D478();
        goto LABEL_85;
      }

      goto LABEL_105;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

LABEL_85:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254134CF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254134D04(a1, a2);
  }

  return a1;
}

uint64_t sub_254134D04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_254134DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254134E5C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_254134F60(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_2541350E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_25413555C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254135184(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xB)
  {
    v11 = 11;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0xB)
    {
      v22 = *(((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      v23 = ((v22 >> 2) & 0xFFFFFFF3 | (4 * (v22 & 3))) ^ 0xF;
      if (v23 >= 0xC)
      {
        v23 = -1;
      }

      if (v23 + 1 >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_254135334(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xB)
  {
    v12 = 11;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0xB)
      {
        v21 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        *v21 = 0;
        if (a2 > 0xB)
        {
          v21[1] = 0;
          v21[2] = 0;
          *v21 = a2 - 12;
        }

        else
        {
          v21[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

void sub_25413555C()
{
  if (!qword_27F5B8990)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8990);
    }
  }
}

uint64_t sub_2541355AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  v4 = v2[2];
  if (v4 < a2)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_17;
    }

    v13 = v8 + 16;
    v11 = *(v8 + 16);
    v12 = *(v13 + 8);
    v14 = __OFSUB__(v12, v11);
    v15 = v12 - v11;
    if (v14)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v15 < v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v10)
    {
      if (BYTE6(v9) >= v7)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v14 = __OFSUB__(HIDWORD(v8), v8);
    v16 = HIDWORD(v8) - v8;
    if (v14)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v16 < v7)
    {
LABEL_15:
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_18:
        result = sub_25424D498();
        goto LABEL_19;
      }

      __break(1u);
LABEL_17:
      if (v7 <= 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  if (!v6)
  {
    goto LABEL_38;
  }

  v17 = v4 - a2;
  if (__OFSUB__(v4, a2))
  {
    goto LABEL_78;
  }

  if (v17 <= 0)
  {
    goto LABEL_38;
  }

  v18 = *v2;
  v19 = v2[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    v21 = 0;
    if (v20 == 2)
    {
      v21 = *(v18 + 16);
    }
  }

  else if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2541347C8(v21, a2, *v2, v2[1]);
  result = sub_2541347C8(v21, v4, v18, v19);
  if (result < v22)
  {
    goto LABEL_79;
  }

  v23 = *v2;
  v24 = v2[1];
  result = sub_25424D4B8();
  v26 = v5 + v17;
  if (__OFADD__(v5, v17))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v26 < v5)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v27 = result;
  v28 = v25;
  v29 = 0;
  v30 = *v2;
  v31 = v2[1];
  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v29 = *(v30 + 16);
    }
  }

  else if (v32)
  {
    v29 = v30;
  }

  v33 = sub_2541347C8(v29, v5, *v2, v2[1]);
  result = sub_2541347C8(v29, v26, v30, v31);
  if (result < v33)
  {
    goto LABEL_82;
  }

  sub_2541EFE04(v27, v28);
  result = sub_254134D04(v27, v28);
LABEL_38:
  v2[2] = v7;
  if (v7 >= v4)
  {
    return result;
  }

  v34 = *v2;
  v35 = v2[1];
  v36 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (v36)
    {
      if (__OFSUB__(HIDWORD(v34), v34))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v7 >= HIDWORD(v34) - v34)
      {
        return result;
      }
    }

    else if (v7 >= BYTE6(v35))
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v36 == 2)
  {
    v38 = *(v34 + 16);
    v37 = *(v34 + 24);
    v14 = __OFSUB__(v37, v38);
    v39 = v37 - v38;
    if (v14)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v7 >= v39)
    {
      return result;
    }

LABEL_49:
    if (v36 == 2)
    {
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      v14 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (!v14)
      {
LABEL_59:
        if (v40 < v4)
        {
          v4 = v40;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    else if (v36 == 1)
    {
      LODWORD(v40) = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
LABEL_90:
        __break(1u);
        return result;
      }

      v40 = v40;
      goto LABEL_59;
    }

    v40 = BYTE6(v35);
    goto LABEL_59;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    return result;
  }

  v4 &= v4 >> 63;
LABEL_61:
  if (v4 < v7)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v7 == v4)
  {
    return result;
  }

  v43 = 0;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v43 = *(v34 + 16);
    }
  }

  else if (v36)
  {
    v43 = v34;
  }

  v44 = sub_2541347C8(v43, v7, v34, v35);
  result = sub_2541347C8(v43, v4, v34, v35);
  if (result < v44)
  {
    goto LABEL_88;
  }

  if (v44 < 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  return sub_25424D478();
}

unint64_t sub_254135950()
{
  result = qword_27F5B89A0;
  if (!qword_27F5B89A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B8998, &qword_254252EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89A0);
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

uint64_t EnergyKit.LoadEvent.LoadState.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_25424E8E8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t EnergyKit.LoadEvent.LoadState.rawValue.getter()
{
  v1 = 6710895;
  v2 = 0x656767756C706E75;
  if (*v0 != 2)
  {
    v2 = 0x64656767756C70;
  }

  if (*v0)
  {
    v1 = 28271;
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

uint64_t sub_254135C28@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return EnergyKit.LoadEvent.LoadState.init(rawValue:)(a1);
}

void sub_254135C34(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6710895;
  v4 = 0xE900000000000064;
  v5 = 0x656767756C706E75;
  if (*v1 != 2)
  {
    v5 = 0x64656767756C70;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 28271;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_254135CB4()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254135D68()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_254135E08()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254135EBC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_254135ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_254135FA4(uint64_t a1)
{
  v2 = sub_25413EC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254135FE0(uint64_t a1)
{
  v2 = sub_25413EC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254136030(uint64_t a1)
{
  v2 = sub_25413EDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25413606C(uint64_t a1)
{
  v2 = sub_25413EDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO11HoldDetailsO9hashValueSivg_0()
{
  sub_25424EBD8();
  MEMORY[0x259C06AA0](0);
  return sub_25424EC28();
}

uint64_t sub_2541360EC()
{
  sub_25424EBD8();
  MEMORY[0x259C06AA0](0);
  return sub_25424EC28();
}

uint64_t sub_25413612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541361AC(uint64_t a1)
{
  v2 = sub_25413ED98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541361E8(uint64_t a1)
{
  v2 = sub_25413ED98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadEvent.Value.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v2 = v0[1];
    MEMORY[0x259C06AA0](2);
    v1 = v2;
  }

  MEMORY[0x259C06AA0]();
  return MEMORY[0x259C06AA0](v1);
}

uint64_t EnergyKit.LoadEvent.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 == 1)
    {
      v3 = 1;
    }

    else
    {
      MEMORY[0x259C06AA0](2);
      v3 = v1;
      v1 = v2;
    }
  }

  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_254136314()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 == 1)
    {
      v3 = 1;
    }

    else
    {
      MEMORY[0x259C06AA0](2);
      v3 = v1;
      v1 = v2;
    }
  }

  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_25413639C()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v2 = v0[1];
    MEMORY[0x259C06AA0](2);
    v1 = v2;
  }

  MEMORY[0x259C06AA0]();
  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_254136404()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25424EBD8();
  if (v3)
  {
    if (v3 == 1)
    {
      v3 = 1;
    }

    else
    {
      MEMORY[0x259C06AA0](2);
      v3 = v1;
      v1 = v2;
    }
  }

  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadEvent.Session.State.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_25424E8E8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t EnergyKit.LoadEvent.Session.State.rawValue.getter()
{
  v1 = 0x657669746361;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69676562;
  }
}

uint64_t sub_254136540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657669746361;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E69676562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x657669746361;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E69676562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_254136628@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return EnergyKit.LoadEvent.Session.State.init(rawValue:)(a1);
}

void sub_254136634(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x657669746361;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69676562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_254136694()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254136728()
{
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2541367A8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t EnergyKit.LoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t EnergyKit.LoadEvent.Session.init(identifier:state:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_25424D948();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static EnergyKit.LoadEvent.Session.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25424D8F8())
  {
    v4 = *(type metadata accessor for EnergyKit.LoadEvent.Session(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    v7 = 0xE600000000000000;
    v8 = 0x657669746361;
    if (v5 != 1)
    {
      v8 = 6581861;
      v7 = 0xE300000000000000;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6E69676562;
    }

    if (v5)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        v11 = 0x657669746361;
      }

      else
      {
        v11 = 6581861;
      }

      if (v6 == 1)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      if (v9 != v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v9 != 0x6E69676562)
      {
        goto LABEL_23;
      }
    }

    if (v10 == v12)
    {
      v13 = 1;
LABEL_24:

      return v13 & 1;
    }

LABEL_23:
    v13 = sub_25424EAB8();
    goto LABEL_24;
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t EnergyKit.LoadEvent.Session.hash(into:)()
{
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v1 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  if (*(v0 + *(v1 + 20)))
  {
    *(v0 + *(v1 + 20));
  }

  sub_25424DD88();
}

uint64_t EnergyKit.LoadEvent.Session.hashValue.getter()
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  v1 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  if (*(v0 + *(v1 + 20)))
  {
    *(v0 + *(v1 + 20));
  }

  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254136BE8(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v1 + *(a1 + 20)))
  {
    *(v1 + *(a1 + 20));
  }

  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254136CD8(uint64_t a1, uint64_t a2)
{
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v2 + *(a2 + 20)))
  {
    *(v2 + *(a2 + 20));
  }

  sub_25424DD88();
}

uint64_t sub_254136DBC(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  if (*(v2 + *(a2 + 20)))
  {
    *(v2 + *(a2 + 20));
  }

  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254136EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25424D8F8())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    v9 = 0xE600000000000000;
    v10 = 0x657669746361;
    if (v7 != 1)
    {
      v10 = 6581861;
      v9 = 0xE300000000000000;
    }

    if (v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x6E69676562;
    }

    if (v7)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        v13 = 0x657669746361;
      }

      else
      {
        v13 = 6581861;
      }

      if (v8 == 1)
      {
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      if (v11 != v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v11 != 0x6E69676562)
      {
        goto LABEL_23;
      }
    }

    if (v12 == v14)
    {
      v15 = 1;
LABEL_24:

      return v15 & 1;
    }

LABEL_23:
    v15 = sub_25424EAB8();
    goto LABEL_24;
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t EnergyKit.LoadEvent.State.guidance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_25413E94C(v2, v3, v4);
}

__n128 EnergyKit.LoadEvent.State.consumption.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EnergyKit.LoadEvent.State(0) + 36));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 EnergyKit.LoadEvent.State.production.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EnergyKit.LoadEvent.State(0) + 40));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t EnergyKit.LoadEvent.State.init(type:state:level:guidance:session:consumption:production:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *(a4 + 16);
  v13 = *a6;
  v14 = a6[1];
  v15 = *(a6 + 16);
  v16 = *a7;
  v17 = a7[1];
  v18 = *(a7 + 16);
  *a8 = *a1;
  *(a8 + 1) = v10;
  *(a8 + 8) = v11;
  *(a8 + 16) = *a4;
  *(a8 + 32) = v12;
  v19 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  result = sub_25413E964(a5, a8 + v19[8]);
  v21 = a8 + v19[9];
  *v21 = v13;
  *(v21 + 8) = v14;
  *(v21 + 16) = v15;
  v22 = a8 + v19[10];
  *v22 = v16;
  *(v22 + 8) = v17;
  *(v22 + 16) = v18;
  return result;
}

_BYTE *EnergyKit.LoadEvent.State.init(type:state:level:guidance:session:consumption:production:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a2;
  v10 = *a4;
  v11 = *(a4 + 16);
  v12 = *a6;
  v13 = a6[1];
  v14 = *(a6 + 16);
  v15 = *a7;
  v16 = a7[1];
  v17 = *(a7 + 16);
  *a8 = *result;
  *(a8 + 1) = v9;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a3 <= 0x64)
  {
    *(a8 + 8) = a3;
    *(a8 + 16) = v10;
    *(a8 + 32) = v11;
    v19 = type metadata accessor for EnergyKit.LoadEvent.State(0);
    result = sub_25413E964(a5, a8 + v19[8]);
    v20 = a8 + v19[9];
    *v20 = v12;
    *(v20 + 8) = v13;
    *(v20 + 16) = v14;
    v21 = a8 + v19[10];
    *v21 = v15;
    *(v21 + 8) = v16;
    *(v21 + 16) = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t EnergyKit.LoadEvent.State.hash(into:)()
{
  v1 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  *v0;
  sub_25424DD88();

  *(v0 + 1);
  sub_25424DD88();

  MEMORY[0x259C06AA0](*(v0 + 8));
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (!*(v0 + 32))
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v12 = 2;
LABEL_5:
    MEMORY[0x259C06AA0](v12);
    sub_25424DD88();
    goto LABEL_7;
  }

  MEMORY[0x259C06AA0](1);
LABEL_7:
  v13 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  sub_254132DF4(v0 + v13[8], v9, &qword_27F5B89B0, &qword_254252EE0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    sub_25413E9D4(v9, v5, type metadata accessor for EnergyKit.LoadEvent.Session);
    sub_25424EBF8();
    sub_25424D948();
    sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    sub_25424DC28();
    if (v5[*(v1 + 20)])
    {
      v5[*(v1 + 20)];
    }

    sub_25424DD88();

    sub_25413EA3C(v5, type metadata accessor for EnergyKit.LoadEvent.Session);
  }

  v14 = (v0 + v13[9]);
  v15 = *(v14 + 16);
  if (v15 == 255)
  {
    sub_25424EBF8();
    goto LABEL_21;
  }

  v16 = *v14;
  v17 = v14[1];
  sub_25424EBF8();
  if (v15)
  {
    if (v15 != 1)
    {
      MEMORY[0x259C06AA0](2);
      MEMORY[0x259C06AA0](v16);
      v19 = v17;
      goto LABEL_20;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x259C06AA0](v18);
  v19 = v16;
LABEL_20:
  MEMORY[0x259C06AA0](v19);
LABEL_21:
  v20 = (v0 + v13[10]);
  v21 = *(v20 + 16);
  if (v21 == 255)
  {
    return sub_25424EBF8();
  }

  v23 = *v20;
  v24 = v20[1];
  sub_25424EBF8();
  if (v21)
  {
    if (v21 != 1)
    {
      MEMORY[0x259C06AA0](2);
      MEMORY[0x259C06AA0](v23);
      v26 = v24;
      return MEMORY[0x259C06AA0](v26);
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x259C06AA0](v25);
  v26 = v23;
  return MEMORY[0x259C06AA0](v26);
}

uint64_t EnergyKit.LoadEvent.State.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254137708()
{
  sub_25424EBD8();
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25413774C()
{
  sub_25424EBD8();
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadEvent.init(date:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = sub_25424D8B8();
  (*(*(v15 - 8) + 32))(a9, a1, v15);
  v16 = type metadata accessor for EventBase(0);
  v17 = v16[5];
  v18 = sub_25424D948();
  v19 = *(*(v18 - 8) + 32);
  v19(a9 + v17, a2, v18);
  *(a9 + v16[6]) = 5;
  v20 = (a9 + v16[7]);
  *v20 = 15;
  v21 = type metadata accessor for EnergyKit.EventBase();
  v20[1] = 0;
  v20[2] = 0;
  v19(a9 + v21[5], a3, v18);
  v22 = (a9 + v21[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v21[7]);
  *v23 = a6;
  v23[1] = a7;
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  return sub_25413E9D4(a8, a9 + *(Event + 20), type metadata accessor for EnergyKit.LoadEvent.State);
}

uint64_t EnergyKit.LoadEvent.init(date:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:type:state:level:guidance:session:consumption:production:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t *a14, uint64_t *a15)
{
  v39 = *a10;
  v40 = *a8;
  v38 = *a11;
  v37 = *a12;
  v36 = a12[1];
  v35 = *(a12 + 16);
  v44 = a14[1];
  v45 = *a14;
  v43 = *(a14 + 16);
  v47 = a15[1];
  v48 = *a15;
  v46 = *(a15 + 16);
  v21 = sub_25424D8B8();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for EventBase(0);
  v23 = v22[5];
  v24 = sub_25424D948();
  v25 = *(*(v24 - 8) + 32);
  v25(a9 + v23, a2, v24);
  *(a9 + v22[6]) = 5;
  v26 = (a9 + v22[7]);
  *v26 = 15;
  v27 = type metadata accessor for EnergyKit.EventBase();
  v26[1] = 0;
  v26[2] = 0;
  v25(a9 + v27[5], a3, v24);
  v28 = (a9 + v27[6]);
  *v28 = a4;
  v28[1] = a5;
  v29 = (a9 + v27[7]);
  *v29 = a6;
  v29[1] = a7;
  v30 = a9 + *(type metadata accessor for EnergyKit.LoadEvent(0) + 20);
  *v30 = v40;
  *(v30 + 1) = v39;
  *(v30 + 8) = v38;
  *(v30 + 16) = v37;
  *(v30 + 24) = v36;
  *(v30 + 32) = v35;
  v31 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  result = sub_25413E964(a13, v30 + v31[8]);
  v33 = v30 + v31[9];
  *v33 = v45;
  *(v33 + 8) = v44;
  *(v33 + 16) = v43;
  v34 = v30 + v31[10];
  *v34 = v48;
  *(v34 + 8) = v47;
  *(v34 + 16) = v46;
  return result;
}

uint64_t EnergyKit.LoadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for EnergyKit.EventBase();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  sub_254137F34(v16, v9, a1, &qword_27F5B89B8, &qword_254252EE8, sub_25413CA78, type metadata accessor for EnergyKit.LoadEvent.State);
  if (!v2)
  {
    sub_25413E9D4(v16, v18, type metadata accessor for EnergyKit.EventBase);
    sub_25413E9D4(v9, v11, type metadata accessor for EnergyKit.LoadEvent.State);
    v19 = *(type metadata accessor for EventBase(0) + 24);
    if (v18[v19] == 5)
    {
      sub_25413E9D4(v18, a2, type metadata accessor for EnergyKit.EventBase);
      Event = type metadata accessor for EnergyKit.LoadEvent(0);
      sub_25413E9D4(v11, a2 + *(Event + 20), type metadata accessor for EnergyKit.LoadEvent.State);
    }

    else
    {
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
      MEMORY[0x259C05CA0](0x6E65764564616F4CLL, 0xE900000000000074);
      MEMORY[0x259C05CA0](0xD000000000000020, 0x80000002542503C0);
      v25 = v18[v19];
      sub_25424E7D8();
      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v22);

      swift_willThrow();
      sub_25413EA3C(v11, type metadata accessor for EnergyKit.LoadEvent.State);
      sub_25413EA3C(v18, type metadata accessor for EnergyKit.EventBase);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_254137F34(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(_BYTE *), uint64_t (*a7)(void))
{
  v62 = a2;
  v63 = a7;
  v69 = a6;
  v61 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v55[-v13];
  v15 = sub_25424E848();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v55[-v21];
  sub_254140708(a3, v68);
  result = v69(v68);
  if (!v7)
  {
    v59 = v18;
    v60 = a5;
    v69 = 0;
    v24 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v25 = sub_25424EC58();
    sub_25424E838();
    v26 = v64;
    result = (*(v64 + 48))(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v27 = v59;
      (*(v26 + 32))();
      v28 = *(v25 + 16);
      v58 = a4;
      v29 = v61;
      v30 = v19;
      if (v28 && (v31 = sub_2542208F8(v27), (v32 & 1) != 0))
      {
        sub_25414076C(*(v25 + 56) + 32 * v31, v68);
        (*(v26 + 8))(v27, v15);

        v33 = swift_dynamicCast();
        v34 = v65;
        if (!v33)
        {
          v34 = 15;
        }

        v59 = v34;
        if (v33)
        {
          v35 = v66;
        }

        else
        {
          v35 = 0;
        }

        v64 = v35;
        if (v33)
        {
          v36 = v67;
        }

        else
        {
          v36 = 0;
        }

        v57 = v36;
      }

      else
      {

        (*(v26 + 8))(v27, v15);
        v64 = 0;
        v57 = 0;
        v59 = 15;
      }

      v37 = sub_25424D8B8();
      (*(*(v37 - 8) + 16))(v29, v22, v37);
      v38 = *(v19 + 44);
      v39 = type metadata accessor for EventBase(0);
      v40 = v39[5];
      v41 = sub_25424D948();
      v42 = *(*(v41 - 8) + 16);
      v42(v29 + v40, &v22[v38], v41);
      v43 = v30[13];
      v56 = v22[v30[12]];
      v44 = type metadata accessor for EnergyKit.EventBase();
      v42(v29 + v44[5], &v22[v43], v41);
      v45 = &v22[v30[14]];
      v46 = *v45;
      v47 = v45[1];
      v48 = &v22[v30[15]];
      v49 = *v48;
      v50 = v48[1];
      *(v29 + v39[6]) = v56;
      v51 = (v29 + v39[7]);
      *v51 = v59;
      v52 = v63;
      v51[1] = v64;
      v51[2] = v57;
      v53 = (v29 + v44[6]);
      *v53 = v46;
      v53[1] = v47;
      v54 = (v29 + v44[7]);
      *v54 = v49;
      v54[1] = v50;
      sub_25413EBE0(&v22[v30[16]], v62, v52);

      return sub_254132E5C(v22, v58, v60);
    }
  }

  return result;
}

uint64_t EnergyKit.LoadEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v24 = *(type metadata accessor for EnergyKit.LoadEvent(0) + 20);
  v8 = sub_25424D8B8();
  (*(*(v8 - 8) + 16))(v7, v1, v8);
  v9 = type metadata accessor for EventBase(0);
  v10 = *(v9 + 20);
  v11 = v4[13];
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 16);
  v13(&v7[v11], v2 + v10, v12);
  LOBYTE(v10) = *(v2 + *(v9 + 24));
  v14 = type metadata accessor for EnergyKit.EventBase();
  v13(&v7[v4[15]], v2 + v14[5], v12);
  v15 = v14[7];
  v16 = (v2 + v14[6]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v2 + v15);
  v20 = *(v2 + v15 + 8);
  sub_25413EBE0(v2 + v24, &v7[v4[18]], type metadata accessor for EnergyKit.LoadEvent.State);
  v7[v4[14]] = v10;
  v21 = &v7[v4[16]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v7[v4[17]];
  *v22 = v19;
  *(v22 + 1) = v20;

  sub_25413BEA8(v25);
  return sub_254132E5C(v7, &qword_27F5B89B8, &qword_254252EE8);
}

uint64_t sub_2541385B4(void *a1, uint64_t a2)
{
  v4 = v2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v26 = *(a2 + 20);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  v13 = v6[13];
  v14 = sub_25424D948();
  v15 = *(*(v14 - 8) + 16);
  v15(&v9[v13], v4 + v12, v14);
  LOBYTE(v12) = *(v4 + *(v11 + 24));
  v16 = type metadata accessor for EnergyKit.EventBase();
  v15(&v9[v6[15]], v4 + v16[5], v14);
  v17 = v16[7];
  v18 = (v4 + v16[6]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v4 + v17);
  v22 = *(v4 + v17 + 8);
  sub_25413EBE0(v4 + v26, &v9[v6[18]], type metadata accessor for EnergyKit.LoadEvent.State);
  v9[v6[14]] = v12;
  v23 = &v9[v6[16]];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = &v9[v6[17]];
  *v24 = v21;
  *(v24 + 1) = v22;

  sub_25413BEA8(v27);
  return sub_254132E5C(v9, &qword_27F5B89B8, &qword_254252EE8);
}

uint64_t sub_2541387D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t EnergyKit.LoadEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

BOOL static EnergyKit.LoadEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254253D48[*(a1 + *(v4 + 24))] != qword_254253D48[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v6[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[6];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v13 = v6[7];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for EnergyKit.LoadEvent(0) + 20);

  return _s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0((a1 + v18), a2 + v18);
}

uint64_t EnergyKit.LoadEvent.hash(into:)()
{
  v1 = v0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v2 = type metadata accessor for EventBase(0);
  v3 = *(v2 + 20);
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254253D48[*(v1 + *(v2 + 24))]);
  v4 = type metadata accessor for EnergyKit.EventBase();
  v5 = v1 + v4[5];
  sub_25424DC28();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_25424DD88();
  v9 = (v1 + v4[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_25424DD88();
  v12 = v1 + *(type metadata accessor for EnergyKit.LoadEvent(0) + 20);
  return EnergyKit.LoadEvent.State.hash(into:)();
}

uint64_t EnergyKit.LoadEvent.hashValue.getter()
{
  v1 = v0;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v2 = type metadata accessor for EventBase(0);
  v3 = *(v2 + 20);
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254253D48[*(v1 + *(v2 + 24))]);
  v4 = type metadata accessor for EnergyKit.EventBase();
  v5 = v1 + v4[5];
  sub_25424DC28();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_25424DD88();
  v9 = (v1 + v4[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_25424DD88();
  v12 = v1 + *(type metadata accessor for EnergyKit.LoadEvent(0) + 20);
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

uint64_t _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV7endDate10Foundation0N0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_254138D2C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_254138D60(uint64_t a1)
{
  v3 = v1;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254253D48[*(v3 + *(v4 + 24))]);
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v3 + v6[5];
  sub_25424DC28();
  v8 = (v3 + v6[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_25424DD88();
  v11 = (v3 + v6[7]);
  v12 = *v11;
  v13 = v11[1];
  sub_25424DD88();
  v14 = v3 + *(a1 + 20);
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254138EE0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = type metadata accessor for EventBase(0);
  v6 = *(v5 + 20);
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254253D48[*(v4 + *(v5 + 24))]);
  v7 = type metadata accessor for EnergyKit.EventBase();
  v8 = v4 + v7[5];
  sub_25424DC28();
  v9 = (v4 + v7[6]);
  v10 = *v9;
  v11 = v9[1];
  sub_25424DD88();
  v12 = (v4 + v7[7]);
  v13 = *v12;
  v14 = v12[1];
  sub_25424DD88();
  v15 = v4 + *(a2 + 20);
  return EnergyKit.LoadEvent.State.hash(into:)();
}

uint64_t sub_254139050(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25424EBD8();
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v5 = type metadata accessor for EventBase(0);
  v6 = *(v5 + 20);
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254253D48[*(v4 + *(v5 + 24))]);
  v7 = type metadata accessor for EnergyKit.EventBase();
  v8 = v4 + v7[5];
  sub_25424DC28();
  v9 = (v4 + v7[6]);
  v10 = *v9;
  v11 = v9[1];
  sub_25424DD88();
  v12 = (v4 + v7[7]);
  v13 = *v12;
  v14 = v12[1];
  sub_25424DD88();
  v15 = v4 + *(a2 + 20);
  EnergyKit.LoadEvent.State.hash(into:)();
  return sub_25424EC28();
}

BOOL sub_2541391CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for EventBase(0);
  v7 = *(v6 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254253D48[*(a1 + *(v6 + 24))] != qword_254253D48[*(a2 + *(v6 + 24))])
  {
    return 0;
  }

  v8 = type metadata accessor for EnergyKit.EventBase();
  v9 = v8[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v15 = v8[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v20 = *(a3 + 20);

  return _s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0((a1 + v20), a2 + v20);
}

uint64_t sub_2541392F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EventBase(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_254140644(v4, v5, v6);
}

uint64_t sub_254139358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyKit.LoadEvent.sourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyKit.LoadEvent.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254139474@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2541394F4()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254139534()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254139584@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = a2;
  }

  return result;
}

uint64_t static EnergyKit.LoadEvent.Value.energyAndPower(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    *a3 = result;
    *(a3 + 8) = a2;
    *(a3 + 16) = 2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_254139668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617473;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();
  }

  return v9 & 1;
}

uint64_t sub_254139710()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254139794()
{
  *v0;
  sub_25424DD88();
}

uint64_t sub_254139804()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254139884@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25424E8E8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2541398E4(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_254139924()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_254139960@<X0>(char *a1@<X8>)
{
  v2 = sub_25424E8E8();

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

uint64_t sub_2541399C4(uint64_t a1)
{
  v2 = sub_25413EAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254139A00(uint64_t a1)
{
  v2 = sub_25413EAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89C8, &qword_254252EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25413EAE4();
  sub_25424EC78();
  v12[15] = 0;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for EnergyKit.LoadEvent.Session(0) + 20));
    v12[13] = 1;
    sub_25413EB38();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyKit.LoadEvent.Session.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_25424D948();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89E8, &qword_254252EF8);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25413EAE4();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_25424E978();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_25413EB8C();
  sub_25424E978();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_25413EBE0(v22, v27, type metadata accessor for EnergyKit.LoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25413EA3C(v22, type metadata accessor for EnergyKit.LoadEvent.Session);
}

uint64_t sub_25413A074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7265776F70;
  if (v2 != 1)
  {
    v4 = 0x6E41796772656E65;
    v3 = 0xEE007265776F5064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x796772656E65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7265776F70;
  if (*a2 != 1)
  {
    v8 = 0x6E41796772656E65;
    v7 = 0xEE007265776F5064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796772656E65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_25413A184()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_25413A22C()
{
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_25413A2C0()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}