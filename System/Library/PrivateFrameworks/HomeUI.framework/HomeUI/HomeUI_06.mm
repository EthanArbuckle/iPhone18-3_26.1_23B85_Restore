void *sub_20CF4F510()
{
  v1 = v0;
  v2 = sub_20D5643B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D4D0);
  v6 = *v0;
  v7 = sub_20D568808();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t sub_20CF4F748()
{
  v1 = v0;
  v32 = sub_20D5643B8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D4D0);
  v6 = sub_20D568818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20CF508B8(&qword_27C81D4C0, MEMORY[0x277D15CB0]);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CF4FA64()
{
  v1 = v0;
  v35 = sub_20D5643B8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D4D0);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20CF508B8(&qword_27C81D4C0, MEMORY[0x277D15CB0]);
      result = sub_20D5677B8();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void *sub_20CF4FDC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_20D5663C8();
        goto LABEL_24;
      }

      v11 += 2;
      sub_20D5663C8();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20CF4FF18(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_20CEF9064(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CF5009C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20D5643B8();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20CF50340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20CF504C8()
{
  sub_20CF50830(319, &qword_27C81D3A0, &unk_27C821640, &unk_20D5BF0D0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20D563818();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CF50578()
{
  result = qword_27C81D3A8;
  if (!qword_27C81D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D3B0);
    sub_20CF508B8(&qword_27C81D360, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D3A8);
  }

  return result;
}

void sub_20CF5065C()
{
  sub_20D563DA8();
  if (v0 <= 0x3F)
  {
    sub_20CF5078C(319, &qword_27C81D3D8, MEMORY[0x277D15CB0]);
    if (v1 <= 0x3F)
    {
      sub_20CF5078C(319, &qword_27C81D3E0, type metadata accessor for BridgesListView.Config);
      if (v2 <= 0x3F)
      {
        sub_20CF507E0();
        if (v3 <= 0x3F)
        {
          sub_20CF50830(319, &unk_27C81D3F0, &qword_27C81C180, &unk_20D5BF660, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20CF5078C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D567B58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20CF507E0()
{
  result = qword_27C81D3E8;
  if (!qword_27C81D3E8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27C81D3E8);
  }

  return result;
}

void sub_20CF50830(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CF508B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CF50900()
{
  result = qword_27C81D460;
  if (!qword_27C81D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D460);
  }

  return result;
}

uint64_t sub_20CF50954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF509C4(uint64_t result)
{
  if (result)
  {
    sub_20D5663C8();
  }

  return result;
}

uint64_t sub_20CF50A04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20CF50A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF50AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20CF50B0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_20CF50C7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20D5637A8();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_20CF50F90(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_20D568718();
  sub_20CECF940(0, a5);
  sub_20CEF7F74(a7, a5);
  result = sub_20D567D58();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_20D568798())
      {
        goto LABEL_30;
      }

      sub_20CECF940(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

void sub_20CF511C0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20D563818() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_20CF484D0(a1, a2, v8, v2 + v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CF512B4(void *a1)
{
  v3 = *(sub_20D563818() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20CF48284(a1, v4, v5);
}

double sub_20CF51360@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v53[0] = *v3;
  v50 = v6;
  v7 = *(v3 + 64);
  v46 = *(v3 + 48);
  v47 = v7;
  v48 = *(v3 + 80);
  v8 = *(v3 + 104);
  v49 = *(v3 + 96);
  v9 = *(v3 + 112);
  if (a1)
  {
    v10 = *MEMORY[0x277D13F60];
    sub_20CF0A20C(v3, &v36);
    MEMORY[0x20F31D7A0](v28, v10);
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = *(&v36 + 1);
        v12 = v36;
        sub_20CEF928C(v53, &qword_27C81C260);
      }

      else
      {
        sub_20CEF928C(v53, &qword_27C81C260);
        v12 = 0;
        v11 = 0;
      }

      v52 = *(v3 + 32);
      goto LABEL_10;
    }
  }

  else
  {
    v29 = 0u;
    *v28 = 0u;
    sub_20CF0A20C(v3, &v36);
  }

  sub_20CEF928C(v28, &qword_27C81BF00);
  sub_20CEF928C(v53, &qword_27C81C260);
  v52 = *(v3 + 32);
  v11 = 0;
  v12 = 0;
  if (!a1)
  {
    v36 = 0u;
    v37 = 0u;
    goto LABEL_16;
  }

LABEL_10:
  MEMORY[0x20F31D7A0](&v36, *MEMORY[0x277D13E20]);
  if (!*(&v37 + 1))
  {
LABEL_16:
    sub_20CEF928C(&v36, &qword_27C81BF00);
    sub_20CEF928C(&v52, &qword_27C81C260);
    v14 = 0;
    v13 = 0;
    if (!a1)
    {
      v36 = 0u;
      v37 = 0u;
LABEL_23:
      v18 = &qword_27C81BF00;
      v19 = &v36;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_20CEF928C(&v52, &qword_27C81C260);
    goto LABEL_19;
  }

  v14 = v28[0];
  v13 = v28[1];
  sub_20CEF928C(&v52, &qword_27C81C260);
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_19:
    v13 = 0;
    v14 = 0;
  }

LABEL_20:
  MEMORY[0x20F31D7A0](&v36, *MEMORY[0x277D13E88]);
  if (!*(&v37 + 1))
  {
    goto LABEL_23;
  }

  sub_20CECF940(0, &unk_27C81F7A0);
  if (swift_dynamicCast())
  {
    v51 = *(v3 + 104);
    v26 = v28[0];
    v16 = [v28[0] imageIdentifier];
    sub_20D567838();

    v17 = sub_20D5677F8();

    v8 = [objc_opt_self() _systemImageNamed_];

    v18 = &unk_27C81BEC0;
    v19 = &v51;
LABEL_24:
    sub_20CEF928C(v19, v18);
  }

  v29 = v50;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v37 = v50;
  v41 = v47;
  v42 = v48;
  v28[0] = v12;
  v28[1] = v11;
  *&v30 = v14;
  *(&v30 + 1) = v13;
  *&v34 = v49;
  *(&v34 + 1) = v8;
  v35 = v9;
  *&v36 = v12;
  *(&v36 + 1) = v11;
  v38 = v14;
  v39 = v13;
  v40 = v46;
  v43 = v49;
  v44 = v8;
  v45 = v9;
  sub_20CF0A20C(v28, v27);
  sub_20CF0A164(&v36);
  v20 = v33;
  v21 = v34;
  v22 = v31;
  *(a2 + 64) = v32;
  *(a2 + 80) = v20;
  *(a2 + 96) = v21;
  result = *v28;
  v24 = v29;
  v25 = v30;
  *a2 = *v28;
  *(a2 + 16) = v24;
  *(a2 + 112) = v35;
  *(a2 + 32) = v25;
  *(a2 + 48) = v22;
  return result;
}

double sub_20CF51784@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v31 = *v2;
  v29 = *(v2 + 24);
  v6 = *(v2 + 48);
  v30 = *(v2 + 40);
  v7 = *(v2 + 56);
  v28 = *(v2 + 104);
  sub_20CF0A20C(v2, &v38);
  v8 = [a1 primaryTextFont];

  v9 = [a1 secondaryTextFont];
  [a1 iconToTextPadding];
  v11 = v10;
  [a1 innerTopMargin];
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultMetrics];
  [a1 innerLeadingMargin];
  [v15 scaledValueForValue_];
  v17 = v16;

  [a1 innerBottomMargin];
  v19 = v18;
  v20 = [v14 defaultMetrics];
  [a1 innerTrailingMargin];
  [v20 scaledValueForValue_];
  v22 = v21;

  *v33 = v8;
  *&v33[24] = v30;
  *&v34 = v9;
  *&v33[8] = v29;
  *&v37[8] = v28;
  v32 = v31;
  *(&v34 + 1) = v7;
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v17;
  *(&v36 + 1) = v19;
  *v37 = v22;
  v38 = v31;
  v39 = v8;
  v41 = v30;
  v42 = v9;
  v40 = v29;
  v43 = v7;
  v44 = v11;
  v45 = v13;
  v46 = v17;
  v47 = v19;
  v48 = v22;
  v49 = v28;
  sub_20CF0A20C(&v32, v27);
  sub_20CF0A164(&v38);
  v23 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v23;
  *(a2 + 96) = *v37;
  *(a2 + 112) = *&v37[16];
  v24 = *v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  result = *&v33[16];
  v26 = v34;
  *(a2 + 32) = *&v33[16];
  *(a2 + 48) = v26;
  return result;
}

char *sub_20CF519CC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v10[5] = *(v0 + 80);
  v10[6] = v2;
  v3 = *(v0 + 16);
  v10[0] = *v0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v10[1] = v3;
  v10[2] = v4;
  v11 = *(v0 + 112);
  v10[3] = v5;
  v10[4] = v1;
  v6 = objc_allocWithZone(_s11ContentViewCMa());
  sub_20CF0A20C(v10, v9);
  v7 = sub_20CF51DEC(v10);
  sub_20CF53A44();
  return v7;
}

double sub_20CF51A54@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 96);
  v23[5] = *(v2 + 80);
  v23[6] = v5;
  v6 = *(v2 + 16);
  v23[0] = *v2;
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v23[1] = v6;
  v23[2] = v7;
  v24 = *(v2 + 112);
  v23[3] = v8;
  v23[4] = v4;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_20CF52FF4(v11, v23, v9, v10, v16);
  v12 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v12;
  *(a2 + 96) = v21;
  *(a2 + 112) = v22;
  v13 = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = v13;
  result = *&v17;
  v15 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_20CF51B04(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_20CF53270(v12, v14) & 1;
}

void (*sub_20CF51B88(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x260uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 600) = v1;
  v5 = (v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  *(v3 + 32) = v5[2];
  *(v3 + 48) = v8;
  *v3 = v6;
  *(v3 + 16) = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[6];
  *(v3 + 112) = *(v5 + 14);
  *(v3 + 80) = v10;
  *(v3 + 96) = v11;
  *(v3 + 64) = v9;
  *(v3 + 504) = &_s20ContentConfigurationVN;
  *(v3 + 512) = sub_20CF0A1B8();
  v12 = swift_allocObject();
  *(v4 + 480) = v12;
  v13 = v5[1];
  *(v12 + 16) = *v5;
  *(v12 + 32) = v13;
  v14 = v5[3];
  *(v12 + 48) = v5[2];
  *(v12 + 64) = v14;
  v15 = v5[5];
  *(v12 + 80) = v5[4];
  *(v12 + 96) = v15;
  *(v12 + 112) = v5[6];
  *(v12 + 128) = *(v5 + 14);
  sub_20CF0A20C(v4, v4 + 360);
  return sub_20CF51C8C;
}

void sub_20CF51C8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 360;
  if (a2)
  {
    sub_20CECF7A0(v2 + 480, v2 + 520);
    sub_20CECF7A0(v2 + 520, v2 + 560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    swift_dynamicCast();
    v4 = *(v3 + 80);
    *(v2 + 184) = *(v3 + 64);
    *(v2 + 200) = v4;
    *(v2 + 216) = *(v3 + 96);
    v5 = *(v3 + 16);
    *(v2 + 120) = *v3;
    *(v2 + 136) = v5;
    v6 = *(v3 + 48);
    *(v2 + 152) = *(v3 + 32);
    *(v2 + 232) = *(v3 + 112);
    *(v2 + 168) = v6;
    sub_20CF53924(v2 + 120);
    sub_20CF0A164(v2 + 120);
    __swift_destroy_boxed_opaque_existential_1(v2 + 520);
  }

  else
  {
    sub_20CECF7A0(v2 + 480, v2 + 520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    swift_dynamicCast();
    v7 = *(v3 + 80);
    *(v2 + 304) = *(v3 + 64);
    *(v2 + 320) = v7;
    *(v2 + 336) = *(v3 + 96);
    *(v2 + 352) = *(v3 + 112);
    v8 = *(v3 + 16);
    *(v2 + 240) = *v3;
    *(v2 + 256) = v8;
    v9 = *(v3 + 48);
    *(v2 + 272) = *(v3 + 32);
    *(v2 + 288) = v9;
    sub_20CF53924(v2 + 240);
    sub_20CF0A164(v2 + 240);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 480);

  free(v2);
}

char *sub_20CF51DEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v1[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_activeConstraints] = MEMORY[0x277D84F90];
  v6 = &v1[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config];
  v7 = *(a1 + 80);
  *(v6 + 4) = *(a1 + 64);
  *(v6 + 5) = v7;
  *(v6 + 6) = *(a1 + 96);
  *(v6 + 14) = *(a1 + 112);
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v8;
  v9 = *(a1 + 48);
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 3) = v9;
  sub_20CF0A20C(a1, v28);
  v27.receiver = v1;
  v27.super_class = _s11ContentViewCMa();
  v10 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BECD0;
  v12 = *&v10[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_imageView];
  *(inited + 32) = v12;
  v13 = *&v10[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label];
  *(inited + 40) = v13;
  v14 = *&v10[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel];
  *(inited + 48) = v14;
  v15 = inited & 0xC000000000000001;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v17; ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v21 = i;
    [v16 addSubview_];

    if (v15)
    {
      v22 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v22 = *(inited + 40);
    }

    v23 = v22;
    [v16 addSubview_];

    if (v15)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v24 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v24 = MEMORY[0x20F31DD20](2, inited);
LABEL_10:
  v25 = v24;
  [v16 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_20CF53580();
  [v16 updateConstraints];
  sub_20CF0A164(a1);

  return v16;
}

uint64_t sub_20CF520C8()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = _s11ContentViewCMa();
  objc_msgSendSuper2(&v37, sel_updateConstraints);
  [*&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_imageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = MEMORY[0x277D84F90];
  v3 = [v1 layoutMarginsGuide];
  v4 = [v3 leadingAnchor];

  v5 = 0.0;
  if (([v2 isHidden] & 1) == 0)
  {
    v6 = [v2 trailingAnchor];

    v5 = *&v1[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 64];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC4C0;
    v8 = [v2 centerYAnchor];
    v9 = [v1 layoutMarginsGuide];
    v10 = [v9 centerYAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(inited + 32) = v11;
    v12 = [v2 leadingAnchor];
    v13 = [v1 layoutMarginsGuide];
    v14 = [v13 leadingAnchor];

    v15 = [v12 constraintEqualToAnchor_];
    *(inited + 40) = v15;
    v16 = [v2 topAnchor];
    v17 = [v1 layoutMarginsGuide];
    v18 = [v17 topAnchor];

    v19 = [v16 constraintGreaterThanOrEqualToAnchor_];
    *(inited + 48) = v19;
    v20 = [v2 bottomAnchor];
    v21 = [v1 layoutMarginsGuide];
    v22 = [v21 bottomAnchor];

    v23 = [v20 constraintLessThanOrEqualToAnchor_];
    *(inited + 56) = v23;
    sub_20CF6BECC(inited);
    v4 = v6;
  }

  v24 = sub_20CF525A8(v4, v5);
  sub_20CF6BECC(v24);
  v25 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_activeConstraints;
  v26 = *&v1[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_activeConstraints];
  v35 = v4;
  if (v26 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    sub_20D5663C8();
    if (!i)
    {
      break;
    }

    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x20F31DD20](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v29 setActive_];

      ++v28;
      if (v31 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  v32 = objc_opt_self();
  sub_20CECF940(0, &qword_28111FEC0);
  v33 = sub_20D567A58();
  [v32 activateConstraints_];

  *&v1[v25] = v36;
}

uint64_t sub_20CF525A8(uint64_t a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label];
  if ([v5 isHidden] & 1) != 0 || (v6 = *&v2[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel], (objc_msgSend(v6, sel_isHidden)))
  {
    if ([v5 isHidden])
    {
      v5 = *&v2[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20D5BF1C0;
    v8 = v5;
    v9 = [v8 leadingAnchor];
    v10 = [v9 constraintEqualToAnchor:a1 constant:a2];

    *(v7 + 32) = v10;
    v11 = [v8 trailingAnchor];
    v12 = [v2 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v7 + 40) = v14;
    v15 = [v8 topAnchor];
    v16 = [v2 layoutMarginsGuide];
    v17 = [v16 topAnchor];

    v18 = [v15 constraintGreaterThanOrEqualToAnchor_];
    *(v7 + 48) = v18;
    v19 = [v8 centerYAnchor];
    v20 = [v2 layoutMarginsGuide];
    v21 = [v20 centerYAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v7 + 56) = v22;
    v23 = [v8 bottomAnchor];

    v24 = [v2 layoutMarginsGuide];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintLessThanOrEqualToAnchor_];
    *(v7 + 64) = v26;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20D5BF1B0;
    v27 = [v5 leadingAnchor];
    v28 = [v27 constraintEqualToAnchor:a1 constant:a2];

    *(v7 + 32) = v28;
    v29 = [v6 leadingAnchor];
    v30 = [v29 constraintEqualToAnchor:a1 constant:a2];

    *(v7 + 40) = v30;
    v31 = [v5 topAnchor];
    v32 = [v2 layoutMarginsGuide];
    v33 = [v32 topAnchor];

    v34 = [v31 constraintGreaterThanOrEqualToAnchor_];
    *(v7 + 48) = v34;
    v35 = [v5 bottomAnchor];
    v36 = [v6 topAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v7 + 56) = v37;
    v38 = [v5 trailingAnchor];
    v39 = [v2 layoutMarginsGuide];
    v40 = [v39 trailingAnchor];

    v41 = [v38 constraintEqualToAnchor_];
    *(v7 + 64) = v41;
    v42 = [v6 trailingAnchor];
    v43 = [v2 layoutMarginsGuide];
    v44 = [v43 trailingAnchor];

    v45 = [v42 constraintEqualToAnchor_];
    *(v7 + 72) = v45;
    v46 = [v6 bottomAnchor];
    v47 = [v2 layoutMarginsGuide];
    v48 = [v47 bottomAnchor];

    v49 = [v46 constraintLessThanOrEqualToAnchor_];
    *(v7 + 80) = v49;
  }

  return v7;
}

id sub_20CF52BCC()
{
  v2.receiver = v0;
  v2.super_class = _s11ContentViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_20CF52D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CF52D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CF52DD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config;
  v4 = *(v3 + 64);
  v5 = *(v3 + 96);
  v15[5] = *(v3 + 80);
  v15[6] = v5;
  v6 = *(v3 + 16);
  v15[0] = *v3;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v15[1] = v6;
  v15[2] = v7;
  v16 = *(v3 + 112);
  v15[3] = v8;
  v15[4] = v4;
  a1[3] = &_s20ContentConfigurationVN;
  a1[4] = sub_20CF0A1B8();
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = *(v3 + 80);
  *(v9 + 80) = *(v3 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v3 + 96);
  *(v9 + 128) = *(v3 + 112);
  v11 = *(v3 + 16);
  *(v9 + 16) = *v3;
  *(v9 + 32) = v11;
  v12 = *(v3 + 48);
  *(v9 + 48) = *(v3 + 32);
  *(v9 + 64) = v12;
  return sub_20CF0A20C(v15, v14);
}

uint64_t sub_20CF52E98(uint64_t a1)
{
  sub_20CECF7A0(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
  swift_dynamicCast();
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v13 = v10;
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  sub_20CF53924(v12);
  sub_20CF0A164(v12);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_20CF52F38(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_20CF51B88(v2);
  return sub_20CF52FA8;
}

void sub_20CF52FA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_20CF52FF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v53 = *a2;
  v12 = *(a2 + 24);
  v54 = *(a2 + 16);
  v51 = *(a2 + 32);
  v13 = *(a2 + 56);
  v52 = *(a2 + 48);
  v50 = *(a2 + 112);
  v14 = *(a2 + 96);
  v48 = *(a2 + 80);
  v49 = v14;
  v47 = *(a2 + 64);
  sub_20CF0A20C(a2, &v37);
  v15 = UIConfigurationState.isActive.getter(a3, a4);
  v16 = objc_opt_self();
  if (v15)
  {
    v17 = 0.18;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = &selRef_blackColor;
  if ((v15 & 1) == 0)
  {
    v18 = &selRef_whiteColor;
  }

  v19 = [v16 *v18];

  v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v17 alpha:0.6];
  v29 = v53;
  v31 = v51;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v37 = v53;
  v40 = v51;
  v36 = v50;
  *&v30 = v54;
  *(&v30 + 1) = v19;
  v38 = v54;
  v39 = v19;
  *&v32 = v52;
  *(&v32 + 1) = v20;
  v41 = v52;
  v42 = v20;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  sub_20CF0A20C(&v29, &v28);
  sub_20CF0A164(&v37);
  (*(v9 + 8))(v11, a3);
  v21 = v34;
  v22 = v35;
  v23 = v32;
  *(a5 + 64) = v33;
  *(a5 + 80) = v21;
  *(a5 + 96) = v22;
  result = *&v29;
  v25 = v30;
  v26 = v31;
  *a5 = v29;
  *(a5 + 16) = v25;
  *(a5 + 112) = v36;
  *(a5 + 32) = v26;
  *(a5 + 48) = v23;
  return result;
}

uint64_t sub_20CF53270(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_20D568BF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_20CECF940(0, &qword_28111FB10);
  if ((sub_20D5683F8() & 1) == 0 || (sub_20D5683F8() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7)
  {
    if (!v8 || (*(a1 + 32) != *(a2 + 32) || v7 != v8) && (sub_20D568BF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((sub_20D5683F8() & 1) == 0 || (sub_20D5683F8() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96))
  {
    v10 = *(a1 + 104);
    v11 = *(a2 + 104);
    if (v10)
    {
      if (!v11)
      {
        return 0;
      }

      sub_20CECF940(0, &unk_28111FB50);
      v12 = v11;
      v13 = v10;
      v14 = sub_20D5683F8();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v15 = *(a1 + 112);
    v16 = *(a2 + 112);
    if (v15)
    {
      if (v16)
      {
        sub_20CECF940(0, &qword_27C81D500);
        v17 = v16;
        v18 = v15;
        v19 = sub_20D5683F8();

        if (v19)
        {
          return 1;
        }
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 sub_20CF53488@<Q0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v2 preferredFontForTextStyle_];
  v7 = [v4 blackColor];
  result = *MEMORY[0x277D75060];
  v9 = *(MEMORY[0x277D75060] + 16);
  *(a1 + 72) = *MEMORY[0x277D75060];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  *(a1 + 88) = v9;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

id sub_20CF53580()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label];
  [v2 setNumberOfLines_];
  v3 = *&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel];
  [v3 setNumberOfLines_];
  v4 = &v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config];
  if (*&v0[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 8])
  {
    sub_20D5663C8();
    v5 = sub_20D5677F8();
  }

  else
  {
    v5 = 0;
  }

  [v2 setText_];

  [v2 setFont_];
  [v2 setTextColor_];
  [v2 setHidden_];
  if (*(v4 + 5))
  {
    sub_20D5663C8();
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1701736270;
  [v3 setText_];

  [v3 setFont_];
  [v3 setTextColor_];
  [v3 setHidden_];
  v8 = *&v1[OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_imageView];
  [v8 setImage_];
  [v8 setPreferredSymbolConfiguration_];
  [v8 setHidden_];
  [v1 setDirectionalLayoutMargins_];
  sub_20D568858();

  if (*(v4 + 1))
  {
    v9 = *v4;
    v10 = *(v4 + 1);
  }

  else
  {
    v10 = 0xE400000000000000;
    v9 = 1701736270;
  }

  sub_20D5663C8();
  MEMORY[0x20F31CDB0](v9, v10);

  v11 = sub_20D5677F8();

  [v2 setAccessibilityIdentifier_];

  sub_20D568858();

  if (*(v4 + 1))
  {
    v12 = *v4;
    v13 = *(v4 + 1);
  }

  else
  {
    v13 = 0xE400000000000000;
    v12 = 1701736270;
  }

  sub_20D5663C8();
  MEMORY[0x20F31CDB0](v12, v13);

  MEMORY[0x20F31CDB0](0xD000000000000010, 0x800000020D5CFB00);
  if (*(v4 + 5))
  {
    v7 = *(v4 + 4);
    v14 = *(v4 + 5);
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  sub_20D5663C8();
  MEMORY[0x20F31CDB0](v7, v14);

  v15 = sub_20D5677F8();

  [v3 setAccessibilityIdentifier_];

  return [v1 setNeedsUpdateConstraints];
}

uint64_t sub_20CF53924(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config;
  v4 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 80);
  v22 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 64);
  v23 = v4;
  v24 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 96);
  v25 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 112);
  v5 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config);
  v19[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 48);
  v20 = *(v1 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_config + 32);
  v21 = v6;
  v26[2] = v20;
  v26[3] = v6;
  v26[0] = v19[0];
  v26[1] = v5;
  v27 = v25;
  v26[5] = v4;
  v26[6] = v24;
  v26[4] = v22;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 112) = *(a1 + 112);
  v8 = *(a1 + 96);
  *(v3 + 80) = *(a1 + 80);
  *(v3 + 96) = v8;
  v9 = *(a1 + 64);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 64) = v9;
  *(v3 + 32) = *(a1 + 32);
  sub_20CF0A20C(v19, v17);
  sub_20CF0A20C(v2, v17);
  sub_20CF0A164(v26);
  v10 = *(v3 + 64);
  v11 = *(v3 + 96);
  v17[5] = *(v3 + 80);
  v17[6] = v11;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = *(v3 + 32);
  v14 = *(v3 + 48);
  v17[1] = v12;
  v17[2] = v13;
  v18 = *(v3 + 112);
  v17[3] = v14;
  v17[4] = v10;
  sub_20CF0A20C(v17, v16);
  LOBYTE(v2) = sub_20CF53270(v17, v19);
  sub_20CF0A164(v17);
  if ((v2 & 1) == 0)
  {
    sub_20CF53580();
  }

  return sub_20CF0A164(v19);
}

unint64_t sub_20CF53A44()
{
  result = qword_27C81D508;
  if (!qword_27C81D508)
  {
    _s11ContentViewCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D508);
  }

  return result;
}

void sub_20CF53A98()
{
  v1 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_secondaryLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtCC6HomeUI27DashboardFilterCategoryCell11ContentView_activeConstraints) = MEMORY[0x277D84F90];
  sub_20D568A58();
  __break(1u);
}

BOOL HUDashboardSectionIdentifier.isRoomSection.getter(void *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = HURoomIdentifierForDashboardSectionIdentifier(a1);
  if (v9)
  {
    sub_20D5637E8();

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  sub_20CF53CF4(v8);
  return v9 != 0;
}

uint64_t sub_20CF53CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL HUDashboardSectionIdentifier.isAccessoryTypeGroupSection.getter(void *a1)
{
  v1 = HUAccessoryTypeGroupForDashboardSectionIdentifier(a1);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id HUDashboardSectionIdentifier.accessoryTypeGroup.getter(void *a1)
{
  v1 = HUAccessoryTypeGroupForDashboardSectionIdentifier(a1);

  return v1;
}

HMRoom_optional __swiftcall HUDashboardSectionIdentifier.room(in:)(HMHome in)
{
  v2 = HURoomForDashboardSectionIdentifier(v1, in.super.isa);

  v3 = v2;
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t static EnergyIndicatorAccessoryViewWrapper.createEnergyIndicatorView(home:)(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D510));
  v3 = a1;
  return sub_20D566C08();
}

id EnergyIndicatorAccessoryViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EnergyIndicatorAccessoryViewWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyIndicatorAccessoryViewWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EnergyIndicatorAccessoryViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyIndicatorAccessoryViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s6HomeUI35EnergyIndicatorAccessoryViewWrapperC6update14viewController4withySo06UIViewJ0C_So6HMHomeCtFZ_0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D510);
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    sub_20D566C28();
    sub_20CF0BD08();
    v5 = sub_20D5683F8();

    if ((v5 & 1) == 0)
    {
      v6 = a2;
      sub_20D566C38();
    }
  }
}

uint64_t ControlCenterModuleConfiguration.Content.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v1, v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0x2E746E65746E6F43;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48)];
    (*(v3 + 32))(v5, v8, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_20D568858();

    v21 = 0xD00000000000001BLL;
    v22 = 0x800000020D5CFBD0;
    sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v15 = sub_20D568BB8();
    MEMORY[0x20F31CDB0](v15);

    MEMORY[0x20F31CDB0](0x6E656D656C65202CLL, 0xEC000000203A7374);
    v16 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
    v17 = MEMORY[0x20F31CF30](v14, v16);
    v19 = v18;

    MEMORY[0x20F31CDB0](v17, v19);

    MEMORY[0x20F31CDB0](41, 0xE100000000000000);
    v20 = v21;
    (*(v3 + 8))(v5, v2);
    return v20;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_20D568858();

    v21 = 0xD00000000000001BLL;
    v22 = 0x800000020D5CFBF0;
    sub_20CF54474();
    v10 = sub_20D567D18();
    v12 = v11;

    MEMORY[0x20F31CDB0](v10, v12);

    MEMORY[0x20F31CDB0](41, 0xE100000000000000);
    return v21;
  }
}

unint64_t sub_20CF54474()
{
  result = qword_27C820E60;
  if (!qword_27C820E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820E60);
  }

  return result;
}

uint64_t ControlCenterModuleConfiguration.Content.isSameType(as:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D520);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v11 = &v18 + *(v10 + 56) - v8;
  sub_20CF5A634(v2, &v18 - v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
  sub_20CF5A634(a1, v11, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_14;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_14;
    }

LABEL_11:
    v13 = v9;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20CF5A634(v9, v6, type metadata accessor for ControlCenterModuleConfiguration.Content);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v17 = sub_20D563818();
      (*(*(v17 - 8) + 8))(v6, v17);
      goto LABEL_14;
    }

    v14 = sub_20D563818();
    v15 = *(*(v14 - 8) + 8);
    v15(v11, v14);
    v15(v6, v14);
    goto LABEL_11;
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20CF5A7DC(v11, type metadata accessor for ControlCenterModuleConfiguration.Content);
    v13 = v9;
LABEL_12:
    sub_20CF5A7DC(v13, type metadata accessor for ControlCenterModuleConfiguration.Content);
    return 1;
  }

LABEL_14:
  sub_20CEF928C(v9, &qword_27C81D520);
  return 0;
}

uint64_t ControlCenterModuleConfiguration.Content.canShowTiles.getter()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v6 = sub_20D563818();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  else
  {
    sub_20CF5A7DC(v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
  }

  return 1;
}

BOOL ControlCenterModuleConfiguration.Content.isEmpty.getter()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
  v4 = swift_getEnumCaseMultiPayload() == 3;
  sub_20CF5A7DC(v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
  return v4;
}

uint64_t ControlCenterModuleConfiguration.Content.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CF5A634(v2, v10, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    return MEMORY[0x20F31E200](v14);
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48));
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x20F31E200](1);
    sub_20CF5A5EC(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
    sub_20D5677C8();
    sub_20CF59640(a1, v15);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = *v10;
    MEMORY[0x20F31E200](0);
    sub_20CF599BC(a1, v12);
  }
}

uint64_t ControlCenterModuleConfiguration.ElementID.hash(into:)()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v7, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x20F31E200](EnumCaseMultiPayload);
  sub_20CF5A5EC(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  sub_20D5677C8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_20CF54E00(void (*a1)(_BYTE *))
{
  sub_20D568D48();
  a1(v3);
  return sub_20D568D98();
}

uint64_t sub_20CF54E60(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_20D568D48();
  a3(v5);
  return sub_20D568D98();
}

uint64_t sub_20CF54EC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_20D568D48();
  a4(v6);
  return sub_20D568D98();
}

uint64_t ControlCenterModuleConfiguration.RecommendationType.hashValue.getter()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

Swift::Int __swiftcall ControlCenterModuleConfiguration.tileLimit(fittingTilesOfSize:)(__C::HUGridSize fittingTilesOfSize)
{
  columnsAcross = fittingTilesOfSize.columnsAcross;
  rowsDown = fittingTilesOfSize.rowsDown;
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v3 = CCUINumberOfRowsForGridSizeClass();
  result = CCUINumberOfColumnsForGridSizeClass();
  if (columnsAcross)
  {
    if (rowsDown)
    {
      return v3 / rowsDown * (result / columnsAcross);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ControlCenterModuleConfiguration.tileLimit(fittingTilesOfSize:into:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (a2 == -1 && a4 == 0x8000000000000000)
  {
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (a3 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_13;
  }

  v4 = a3 / result;
  result = a3 / result * (a4 / a2);
  if ((v4 * (a4 / a2)) >> 64 != result >> 63)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t static ControlCenterModuleConfiguration.maximumGridSize.getter()
{
  v0 = CCUINumberOfRowsForGridSizeClass();
  CCUINumberOfColumnsForGridSizeClass();
  return v0;
}

uint64_t ControlCenterModuleConfiguration.hash(into:)(uint64_t a1)
{
  ControlCenterModuleConfiguration.Content.hash(into:)(a1);
  v2 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x20F31E200](*(v1 + *(v2 + 20)));
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 3)
  {
    return sub_20D568D68();
  }

  sub_20D568D68();
  return MEMORY[0x20F31E200](v3);
}

uint64_t ControlCenterModuleConfiguration.hashValue.getter()
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.Content.hash(into:)(v4);
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x20F31E200](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_20D568D68();
  if (v2 != 3)
  {
    MEMORY[0x20F31E200](v2);
  }

  return sub_20D568D98();
}

uint64_t sub_20CF55200(uint64_t a1)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.Content.hash(into:)(v5);
  MEMORY[0x20F31E200](*(v1 + *(a1 + 20)));
  v3 = *(v1 + *(a1 + 24));
  sub_20D568D68();
  if (v3 != 3)
  {
    MEMORY[0x20F31E200](v3);
  }

  return sub_20D568D98();
}

uint64_t sub_20CF55294(uint64_t a1, uint64_t a2)
{
  ControlCenterModuleConfiguration.Content.hash(into:)(a1);
  MEMORY[0x20F31E200](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 3)
  {
    return sub_20D568D68();
  }

  sub_20D568D68();
  return MEMORY[0x20F31E200](v4);
}

uint64_t sub_20CF5530C(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.Content.hash(into:)(v6);
  MEMORY[0x20F31E200](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  sub_20D568D68();
  if (v4 != 3)
  {
    MEMORY[0x20F31E200](v4);
  }

  return sub_20D568D98();
}

uint64_t static ControlCenterModuleConfiguration.empty(gridSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ControlCenterModuleConfiguration(0);
  *(a2 + *(result + 24)) = 3;
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t static ControlCenterModuleConfiguration.recommended(gridSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_20CEF82A0(&unk_2823CE350);
  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ControlCenterModuleConfiguration(0);
  *(a2 + *(result + 24)) = 3;
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t ControlCenterModuleConfiguration.copy(content:gridSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D528);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 48);
  if (v16(a1, 1, v12) == 1 && (a3 & 1) != 0)
  {
    return sub_20CF5A634(v4, a4, type metadata accessor for ControlCenterModuleConfiguration);
  }

  sub_20CEF9178(a1, v11, &qword_27C81D528);
  if (v16(v11, 1, v12) == 1)
  {
    sub_20CF5A634(v4, v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
    if (v16(v11, 1, v12) != 1)
    {
      sub_20CEF928C(v11, &qword_27C81D528);
    }
  }

  else
  {
    sub_20CF5A734(v11, v15);
  }

  if (a3)
  {
    a2 = *(v4 + *(type metadata accessor for ControlCenterModuleConfiguration(0) + 20));
  }

  v18 = type metadata accessor for ControlCenterModuleConfiguration(0);
  *(a4 + *(v18 + 24)) = 3;
  result = sub_20CF5A734(v15, a4);
  *(a4 + *(v18 + 20)) = a2;
  return result;
}

unint64_t ControlCenterModuleConfiguration.description.getter()
{
  sub_20D568858();

  v0 = ControlCenterModuleConfiguration.Content.description.getter();
  MEMORY[0x20F31CDB0](v0);

  MEMORY[0x20F31CDB0](0xD000000000000010, 0x800000020D5CFC40);
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v1 = NSStringFromCCUIGridSizeClass();
  v2 = sub_20D567838();
  v4 = v3;

  MEMORY[0x20F31CDB0](v2, v4);

  MEMORY[0x20F31CDB0](125, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t ControlCenterModuleConfiguration.briefDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 4023163;
  v14[1] = 0xE300000000000000;
  sub_20CF5A634(v1, v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = 0xEC0000007265646CLL;
      v7 = 0x6F686563616C702ELL;
    }

    else
    {
      v6 = 0xE600000000000000;
      v7 = 0x7974706D652ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v8 = sub_20D563818();
    (*(*(v8 - 8) + 8))(v4, v8);
    v6 = 0xEB0000000064657ALL;
    v7 = 0x696D6F747375632ELL;
  }

  else
  {
    sub_20CF5A7DC(v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
    v6 = 0xEC0000006465646ELL;
    v7 = 0x656D6D6F6365722ELL;
  }

  MEMORY[0x20F31CDB0](v7, v6);

  MEMORY[0x20F31CDB0](0x3D657A69732CLL, 0xE600000000000000);
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v9 = NSStringFromCCUIGridSizeClass();
  v10 = sub_20D567838();
  v12 = v11;

  MEMORY[0x20F31CDB0](v10, v12);

  MEMORY[0x20F31CDB0](125, 0xE100000000000000);
  return v14[0];
}

uint64_t ControlCenterModuleConfiguration.Content.briefDescription.getter()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x6F686563616C702ELL;
    }

    else
    {
      return 0x7974706D652ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v6 = sub_20D563818();
    (*(*(v6 - 8) + 8))(v3, v6);
    return 0x696D6F747375632ELL;
  }

  else
  {
    sub_20CF5A7DC(v3, type metadata accessor for ControlCenterModuleConfiguration.Content);
    return 0x656D6D6F6365722ELL;
  }
}

uint64_t ControlCenterModuleConfiguration.expandedDescription.getter()
{
  v0 = ControlCenterModuleConfiguration.Content.expandedDescription.getter();
  MEMORY[0x20F31CDB0](v0);

  MEMORY[0x20F31CDB0](0x3D657A69732CLL, 0xE600000000000000);
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v1 = NSStringFromCCUIGridSizeClass();
  v2 = sub_20D567838();
  v4 = v3;

  MEMORY[0x20F31CDB0](v2, v4);

  MEMORY[0x20F31CDB0](125, 0xE100000000000000);
  return 4023163;
}

uint64_t ControlCenterModuleConfiguration.Content.expandedDescription.getter()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48)];
    v9 = (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x28223BE20](v9);
    *(&v17 - 2) = v4;
    v10 = sub_20CEF9D64(sub_20CF5A798, (&v17 - 4), v8);

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_20D568858();

    v18 = 0xD000000000000014;
    v19 = 0x800000020D5CFC60;
    sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v11 = sub_20D568BB8();
    MEMORY[0x20F31CDB0](v11);

    MEMORY[0x20F31CDB0](0x6E656D656C65202CLL, 0xEC000000203A7374);
    v12 = MEMORY[0x20F31CF30](v10, MEMORY[0x277D837D0]);
    v14 = v13;

    MEMORY[0x20F31CDB0](v12, v14);

    v15 = v18;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v15 = ControlCenterModuleConfiguration.Content.description.getter();
    sub_20CF5A7DC(v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
  }

  return v15;
}

uint64_t ControlCenterModuleConfiguration.Content.description.getter()
{
  v1 = v0;
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v1, v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x6F686563616C702ELL;
    }

    else
    {
      return 0x7974706D652ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48)];
    (*(v3 + 32))(v5, v8, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_20D568858();

    v21 = 0xD000000000000014;
    v22 = 0x800000020D5CFC60;
    sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v15 = sub_20D568BB8();
    MEMORY[0x20F31CDB0](v15);

    MEMORY[0x20F31CDB0](0x6E656D656C65202CLL, 0xEC000000203A7374);
    v16 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
    v17 = MEMORY[0x20F31CF30](v14, v16);
    v19 = v18;

    MEMORY[0x20F31CDB0](v17, v19);

    MEMORY[0x20F31CDB0](41, 0xE100000000000000);
    v20 = v21;
    (*(v3 + 8))(v5, v2);
    return v20;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_20D568858();

    v21 = 0xD000000000000014;
    v22 = 0x800000020D5CFC80;
    sub_20CF54474();
    v10 = sub_20D567D18();
    v12 = v11;

    MEMORY[0x20F31CDB0](v10, v12);

    MEMORY[0x20F31CDB0](41, 0xE100000000000000);
    return v21;
  }
}

uint64_t ControlCenterModuleConfiguration.ElementID.expandedDescription(in:)(uint64_t a1)
{
  v2 = sub_20D5644C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v134 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D564648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v133 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D564578();
  v131 = *(v8 - 8);
  v132 = v8;
  MEMORY[0x28223BE20](v8);
  v130 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_20D564668();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20D5641F8();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20D5644A8();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D563818();
  v148 = *(v13 - 8);
  v149 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v145 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v143 = &v119 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v119 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v138 = &v119 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v137 = &v119 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v119 - v24;
  v146 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v146);
  v27 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v142 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v144 = &v119 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v141 = &v119 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v140 = &v119 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v135 = &v119 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v136 = &v119 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v119 - v41;
  sub_20D563F48();
  v43 = sub_20D563F18();
  v44 = sub_20D563EE8();

  if (*(v44 + 16) && (v45 = sub_20CEED7C0(a1), (v46 & 1) != 0))
  {
    v47 = v45;
    v119 = v6;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v51 = v42;
    v52 = *(v44 + 56);
    v53 = sub_20D5641B8();
    v54 = *(v53 - 8);
    v120 = v25;
    v55 = v54;
    v56 = v52 + *(v54 + 72) * v47;
    v42 = v51;
    v2 = v50;
    v3 = v49;
    v5 = v48;
    v6 = v119;
    (*(v54 + 16))(v42, v56, v53);

    (*(v55 + 56))(v42, 0, 1, v53);
    v25 = v120;
  }

  else
  {

    v57 = sub_20D5641B8();
    (*(*(v57 - 8) + 56))(v42, 1, 1, v57);
  }

  sub_20CF5A634(v147, v27, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = *(v148 + 32);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = v139;
      v59(v139, v27, v149);
      v150[0] = 0;
      v150[1] = 0xE000000000000000;
      sub_20D568858();

      strcpy(v150, "Media System: ");
      HIBYTE(v150[1]) = -18;
      v73 = v141;
      sub_20CEF9178(v42, v141, &qword_27C81E180);
      v74 = sub_20D5641B8();
      v75 = *(v74 - 8);
      if ((*(v75 + 48))(v73, 1, v74) != 1)
      {
        v76 = sub_20D564188();
        (*(v75 + 8))(v73, v74);
        if (*(v76 + 16))
        {
          v77 = sub_20CEED7C0(v25);
          if (v78)
          {
            v80 = v131;
            v79 = v132;
            v81 = v130;
            (*(v131 + 16))(v130, *(v76 + 56) + *(v131 + 72) * v77, v132);

            v82 = sub_20D564568();
LABEL_32:
            v64 = v82;
            v103 = v83;
            (*(v80 + 8))(v81, v79);
LABEL_49:
            MEMORY[0x20F31CDB0](v64, v103);
            goto LABEL_50;
          }
        }

LABEL_39:
        v64 = 0x6E776F6E6B6E75;

        goto LABEL_40;
      }

LABEL_25:
      v64 = 0x6E776F6E6B6E75;
      sub_20CEF928C(v73, &qword_27C81E180);
LABEL_40:
      v103 = 0xE700000000000000;
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v89 = v2;
      v25 = v145;
      v59(v145, v27, v149);
      strcpy(v150, "Scene: ");
      v150[1] = 0xE700000000000000;
      v73 = v142;
      sub_20CEF9178(v42, v142, &qword_27C81E180);
      v90 = sub_20D5641B8();
      v91 = *(v90 - 8);
      if ((*(v91 + 48))(v73, 1, v90) != 1)
      {
        v110 = sub_20D564168();
        (*(v91 + 8))(v73, v90);
        if (*(v110 + 16))
        {
          v111 = sub_20CEED7C0(v25);
          if (v112)
          {
            v113 = v134;
            (*(v3 + 16))(v134, *(v110 + 56) + *(v3 + 72) * v111, v89);

            v64 = sub_20D5644B8();
            v103 = v114;
            (*(v3 + 8))(v113, v89);
            goto LABEL_49;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_25;
    }

    v25 = v143;
    v59(v143, v27, v149);
    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_20D568858();

    v150[0] = 0x725020616964654DLL;
    v150[1] = 0xEF203A656C69666FLL;
    v65 = v144;
    sub_20CEF9178(v42, v144, &qword_27C81E180);
    v66 = sub_20D5641B8();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      v68 = 0x6E776F6E6B6E75;
      sub_20CEF928C(v65, &qword_27C81E180);
    }

    else
    {
      v104 = sub_20D564198();
      (*(v67 + 8))(v65, v66);
      if (*(v104 + 16))
      {
        v105 = sub_20CEED7C0(v25);
        if (v106)
        {
          v107 = v133;
          (*(v6 + 16))(v133, *(v104 + 56) + *(v6 + 72) * v105, v5);

          v68 = sub_20D564638();
          v109 = v108;
          (*(v6 + 8))(v107, v5);
LABEL_46:
          MEMORY[0x20F31CDB0](v68, v109);
LABEL_50:

          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
          v116 = sub_20D568BB8();
          MEMORY[0x20F31CDB0](v116);

          goto LABEL_51;
        }
      }

      v68 = 0x6E776F6E6B6E75;
    }

    v109 = 0xE700000000000000;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v137;
      v59(v137, v27, v149);
      strcpy(v150, "Service: ");
      WORD1(v150[1]) = 0;
      HIDWORD(v150[1]) = -385875968;
      v60 = v42;
      v61 = v135;
      sub_20CEF9178(v42, v135, &qword_27C81E180);
      v62 = sub_20D5641B8();
      v63 = *(v62 - 8);
      if ((*(v63 + 48))(v61, 1, v62) == 1)
      {
        v64 = 0x6E776F6E6B6E75;
        sub_20CEF928C(v61, &qword_27C81E180);
LABEL_48:
        v103 = 0xE700000000000000;
        v42 = v60;
        goto LABEL_49;
      }

      v100 = sub_20D564158();
      (*(v63 + 8))(v61, v62);
      if (!*(v100 + 16))
      {
        v64 = 0x6E776F6E6B6E75;

        goto LABEL_48;
      }

      v101 = sub_20CEED7C0(v25);
      v42 = v60;
      if (v102)
      {
        v80 = v125;
        v81 = v122;
        v79 = v126;
        (*(v125 + 16))(v122, *(v100 + 56) + *(v125 + 72) * v101, v126);

        v82 = sub_20D5641E8();
        goto LABEL_32;
      }

      goto LABEL_39;
    }

    v25 = v138;
    v59(v138, v27, v149);
    v150[0] = 0;
    v150[1] = 0xE000000000000000;
    sub_20D568858();

    v150[0] = 0x2065636976726553;
    v150[1] = 0xEF203A70756F7247;
    v73 = v140;
    sub_20CEF9178(v42, v140, &qword_27C81E180);
    v84 = sub_20D5641B8();
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v73, 1, v84) != 1)
    {
      v86 = sub_20D5641A8();
      (*(v85 + 8))(v73, v84);
      if (*(v86 + 16))
      {
        v87 = sub_20CEED7C0(v25);
        if (v88)
        {
          v80 = v128;
          v81 = v127;
          v79 = v129;
          (*(v128 + 16))(v127, *(v86 + 56) + *(v128 + 72) * v87, v129);

          v82 = sub_20D564658();
          goto LABEL_32;
        }
      }

      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v59(v25, v27, v149);
  v150[0] = 0;
  v150[1] = 0xE000000000000000;
  sub_20D568858();

  strcpy(v150, "Accessory: ");
  HIDWORD(v150[1]) = -352321536;
  v69 = v136;
  sub_20CEF9178(v42, v136, &qword_27C81E180);
  v70 = sub_20D5641B8();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    v72 = 0x6E776F6E6B6E75;
    sub_20CEF928C(v69, &qword_27C81E180);
LABEL_42:
    v99 = 0xE700000000000000;
    goto LABEL_43;
  }

  v92 = sub_20D564178();
  (*(v71 + 8))(v69, v70);
  if (!*(v92 + 16) || (v93 = sub_20CEED7C0(v25), (v94 & 1) == 0))
  {
    v72 = 0x6E776F6E6B6E75;

    goto LABEL_42;
  }

  v95 = v123;
  v96 = v121;
  v97 = v124;
  (*(v123 + 16))(v121, *(v92 + 56) + *(v123 + 72) * v93, v124);

  v72 = sub_20D564478();
  v99 = v98;
  (*(v95 + 8))(v96, v97);
LABEL_43:
  MEMORY[0x20F31CDB0](v72, v99);

  MEMORY[0x20F31CDB0](10272, 0xE200000000000000);
  sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
  v115 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v115);

  MEMORY[0x20F31CDB0](41, 0xE100000000000000);
LABEL_51:
  v117 = v150[0];
  (*(v148 + 8))(v25, v149);
  sub_20CEF928C(v42, &qword_27C81E180);
  return v117;
}

uint64_t sub_20CF5753C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v80);
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = (&v74 - v10);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D588);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v74 - v13;
  v14 = sub_20D564B08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D590);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v29 = type metadata accessor for ControlCenterModuleConfiguration(0);
  *(a3 + *(v29 + 24)) = 3;
  v30 = *(v29 + 20);
  v82 = a3;
  *(a3 + v30) = v88;
  v87 = a1;
  sub_20D564A98();
  v31 = sub_20D564A28();
  if ((*(*(v31 - 8) + 48))(v20, 1, v31))
  {
    v32 = v28;
    sub_20CEF928C(v20, &qword_27C81D590);
    v33 = *(v6 + 56);
    v34 = 1;
    v33(v25, 1, 1, v5);
    v35 = [objc_opt_self() sharedDispatcher];
    v36 = [v35 home];

    if (v36)
    {
      v37 = [v36 uniqueIdentifier];

      v28 = v32;
      sub_20D5637E8();

      v34 = 0;
    }

    else
    {
      v28 = v32;
    }

    v33(v28, v34, 1, v5);
    if ((*(v6 + 48))(v25, 1, v5) != 1)
    {
      sub_20CEF928C(v25, &qword_27C81C180);
    }
  }

  else
  {
    sub_20D564A18();
    sub_20CEF928C(v20, &qword_27C81D590);
    sub_20D564AF8();
    (*(v15 + 8))(v17, v14);
    v38 = *(v6 + 56);
    v38(v25, 0, 1, v5);
    (*(v6 + 32))(v28, v25, v5);
    v38(v28, 0, 1, v5);
  }

  v77 = v6;
  v39 = v87;
  v40 = sub_20D564AB8();
  v78 = v5;
  if (v40)
  {
    sub_20D564A48();
    sub_20CF5A5EC(&qword_27C81D598, MEMORY[0x277D18350]);
    v41 = sub_20D567A48();

    MEMORY[0x28223BE20](v42);
    *(&v74 - 2) = v28;
    v88 = sub_20CEF9EC0(sub_20CF5AC90, (&v74 - 4), v41);
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v43 = v83;
  v44 = *(v83 + 64);
  v45 = *(v83 + 80);
  v46 = sub_20D564A88();
  v47 = v84;
  *v84 = v46 & 1;
  v48 = sub_20D564AA8();
  *(v47 + 1) = v48;
  v86 = v28;
  sub_20CEF9178(v28, v47 + v44, &qword_27C81C180);
  *(v47 + v45) = v88;
  v49 = *(v43 + 64);
  v50 = v47 + v44;
  v51 = v85;
  sub_20CEF9178(v50, &v85[v49], &qword_27C81C180);
  if ((v46 & 1) == 0)
  {
    v55 = sub_20D564AC8();
    v56 = v39;
    v57 = *(*(v55 - 8) + 8);
    sub_20D5663C8();
    v57(v56, v55);
    sub_20CEF928C(v47, &qword_27C81D588);
    v58 = v76;
    sub_20CF07438(&v51[v49], v76);
    v59 = v77;
    v60 = v78;
    if ((*(v77 + 48))(v58, 1, v78) == 1)
    {

      sub_20CEF928C(v58, &qword_27C81C180);
      v61 = v79;
    }

    else
    {
      v62 = *(v59 + 32);
      v63 = v75;
      v62(v75, v58, v60);
      v61 = v79;
      if (*(v88 + 16))
      {
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48);
        v62(v61, v63, v60);
        *(v61 + v64) = v88;
      }

      else
      {
        (*(v59 + 8))(v63, v60);
      }
    }

    swift_storeEnumTagMultiPayload();
    v68 = v81;
    sub_20CF5A734(v61, v81);
    goto LABEL_24;
  }

  if (!v48)
  {
    v65 = sub_20CEF82A0(&unk_2823CE378);
    v66 = sub_20D564AC8();
    (*(*(v66 - 8) + 8))(v87, v66);
    sub_20CEF928C(v47, &qword_27C81D588);
    v67 = v81;
    *v81 = v65;
    v68 = v67;
    swift_storeEnumTagMultiPayload();
    sub_20CEF928C(&v51[v49], &qword_27C81C180);
LABEL_24:
    v72 = v82;
    v52 = v86;
    goto LABEL_25;
  }

  v52 = v86;
  v53 = v87;
  if (v48 == 1)
  {
    v54 = &unk_2823CE3A0;
  }

  else
  {
    v54 = &unk_2823CE3C8;
  }

  v69 = sub_20CEF82A0(v54);
  v70 = sub_20D564AC8();
  (*(*(v70 - 8) + 8))(v53, v70);
  sub_20CEF928C(v47, &qword_27C81D588);
  v71 = v81;
  *v81 = v69;
  v68 = v71;
  swift_storeEnumTagMultiPayload();
  sub_20CEF928C(&v51[v49], &qword_27C81C180);
  v72 = v82;
LABEL_25:
  sub_20CF5A734(v68, v72);
  return sub_20CEF928C(v52, &qword_27C81C180);
}

uint64_t sub_20CF57EDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D564B58();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D564A38();
  sub_20CEF9178(a1, v5, &qword_27C81C180);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    sub_20D5637F8();
    if (v14(v5, 1, v6) != 1)
    {
      sub_20CEF928C(v5, &qword_27C81C180);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_20CF58188();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_20CF58188()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D564B58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D564B48();
  if (v9 <= 3)
  {
    if (!v9)
    {
      sub_20D564B38();
LABEL_20:
      type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
      goto LABEL_21;
    }

LABEL_5:
    sub_20D564B38();
    type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
LABEL_21:

    return swift_storeEnumTagMultiPayload();
  }

  if (v9 <= 5)
  {
    goto LABEL_5;
  }

  if (v9 == 6)
  {
    sub_20D564B28();
    if ((v10 & 1) != 0 || (sub_20D563F48(), v11 = sub_20D563F18(), v12 = sub_20D563F38(), v11, !v12))
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v27 = sub_20D565988();
      __swift_project_value_buffer(v27, qword_281120958);
      v28 = sub_20D565968();
      v29 = sub_20D567EC8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_20CEE913C(0xD000000000000010, 0x800000020D5CFCC0, &v38);
        _os_log_impl(&dword_20CEB6000, v28, v29, "%s Missing MatterNodeID", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x20F31FC70](v31, -1, -1);
        MEMORY[0x20F31FC70](v30, -1, -1);
      }

      sub_20D5637F8();
    }

    else
    {
      v13 = [v12 uniqueIdentifier];
      sub_20D5637E8();
    }

    goto LABEL_20;
  }

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v14 = sub_20D565988();
  __swift_project_value_buffer(v14, qword_281120958);
  (*(v6 + 16))(v8, v0, v5);
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v16;
    v18 = v17;
    v37 = swift_slowAlloc();
    v38 = v37;
    *v18 = 136315394;
    v19 = sub_20CEE913C(0xD000000000000010, 0x800000020D5CFCC0, &v38);
    v34 = v18;
    v35 = v15;
    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    sub_20D564B38();
    sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v20 = sub_20D568BB8();
    v22 = v21;
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v23 = sub_20CEE913C(v20, v22, &v38);

    v25 = v34;
    v24 = v35;
    *(v34 + 14) = v23;
    _os_log_impl(&dword_20CEB6000, v24, v36, "%s Unsupported UUID: %s", v25, 0x16u);
    v26 = v37;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_20D564B38();
  type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20CF587F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v78 = a1;
  v4 = sub_20D564B58();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D564B08();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D564A78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5A0);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v20 - 8);
  v67 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v25 = sub_20D563818();
  v77 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  v71 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v31 = *(v71 + 24);
  v74 = a3;
  *(a3 + v31) = 3;
  sub_20D564AD8();
  v68 = *(v10 + 48);
  v69 = v10 + 48;
  v32 = v68(v19, 1, v9);
  v62 = v8;
  v76 = v30;
  if (v32)
  {
    v61 = v9;
    sub_20CEF928C(v19, &qword_27C81D5A0);
    v33 = v77;
    v34 = *(v77 + 56);
    v34(v24, 1, 1, v25);
    v35 = [objc_opt_self() sharedDispatcher];
    v36 = [v35 home];

    if (v36)
    {
      v37 = [v36 uniqueIdentifier];

      sub_20D5637E8();
      v38 = *(v33 + 32);
      v39 = v67;
      v38(v67, v27, v25);
      v34(v39, 0, 1, v25);
      v38(v76, v39, v25);
      v40 = v75;
      v41 = v78;
      v42 = v72;
      v43 = (*(v33 + 48))(v24, 1, v25);
    }

    else
    {
      v47 = v67;
      v34(v67, 1, 1, v25);
      sub_20D5637F8();
      v48 = *(v33 + 48);
      if (v48(v47, 1, v25) != 1)
      {
        sub_20CEF928C(v47, &qword_27C81C180);
      }

      v40 = v75;
      v41 = v78;
      v42 = v72;
      v43 = v48(v24, 1, v25);
    }

    v9 = v61;
    v44 = v73;
    v46 = v25;
    if (v43 != 1)
    {
      sub_20CEF928C(v24, &qword_27C81C180);
    }
  }

  else
  {
    (*(v10 + 16))(v14, v19, v9);
    sub_20CEF928C(v19, &qword_27C81D5A0);
    sub_20D564A68();
    (*(v10 + 8))(v14, v9);
    sub_20D564AF8();
    v42 = v72;
    v44 = v73;
    (*(v72 + 8))(v8, v73);
    v45 = v77;
    (*(v77 + 56))(v24, 0, 1, v25);
    (*(v45 + 32))(v30, v24, v25);
    v41 = v78;
    v40 = v75;
    v46 = v25;
  }

  v49 = v70;
  sub_20D564AD8();
  if (v68(v49, 1, v9) == 1)
  {
    v50 = sub_20D564AE8();
    (*(*(v50 - 8) + 8))(v41, v50);
    (*(v77 + 8))(v76, v46);
    sub_20CEF928C(v49, &qword_27C81D5A0);
    v51 = v74;
  }

  else
  {
    v52 = v63;
    (*(v10 + 32))(v63, v49, v9);
    v53 = v10;
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48);
    v54 = v62;
    sub_20D564A68();
    v51 = v74;
    sub_20D564AF8();
    (*(v42 + 8))(v54, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C120);
    type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_20D5BC410;
    v56 = v64;
    sub_20D564A58();
    v57 = v76;
    sub_20CF58188();
    (*(v65 + 8))(v56, v66);
    v58 = sub_20D564AE8();
    (*(*(v58 - 8) + 8))(v41, v58);
    v59 = v52;
    v40 = v75;
    (*(v53 + 8))(v59, v9);
    (*(v77 + 8))(v57, v46);
    *(v51 + v78) = v55;
  }

  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  result = swift_storeEnumTagMultiPayload();
  *(v51 + *(v71 + 20)) = v40;
  return result;
}

uint64_t sub_20CF5912C()
{
  result = sub_20CEF82A0(&unk_2823CE3F0);
  qword_27C81D518 = result;
  return result;
}

uint64_t static Set<>.all.getter()
{
  if (qword_27C81A1E8 != -1)
  {
    swift_once();
  }

  return sub_20D5663C8();
}

uint64_t ControlCenterModuleConfiguration.ElementID.description.getter()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v7, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v4, v7, v1);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_20D568858();

      v9 = 0x795320616964654DLL;
      v10 = 0xEE00203A6D657473;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_20D568858();

      v9 = 0x725020616964654DLL;
      v10 = 0xEF203A656C69666FLL;
    }

    else
    {
      v9 = 0x203A656E656353;
      v10 = 0xE700000000000000;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = 0x3A65636976726553;
      v10 = 0xE900000000000020;
    }

    else
    {
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_20D568858();

      v9 = 0x2065636976726553;
      v10 = 0xEF203A70756F7247;
    }
  }

  else
  {
    v9 = 0x726F737365636341;
    v10 = 0xEB00000000203A79;
  }

  v14 = v9;
  v15 = v10;
  sub_20CF5A5EC(&qword_2811209D0, MEMORY[0x277CC95F0]);
  v11 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v11);

  v12 = v14;
  (*(v2 + 8))(v4, v1);
  return v12;
}

BOOL ControlCenterModuleConfiguration.ElementID.isScene.getter()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  v4 = swift_getEnumCaseMultiPayload() == 5;
  sub_20CF5A7DC(v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  return v4;
}

BOOL ControlCenterModuleConfiguration.ElementID.isAccessory.getter()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF5A634(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  v4 = swift_getEnumCaseMultiPayload() != 5;
  sub_20CF5A7DC(v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  return v4;
}

uint64_t sub_20CF59640(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v7 = *(v21 - 8);
  v8 = MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x20F31E200](v13);
  if (v13)
  {
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = *(v7 + 72);
    v16 = v4;
    v17 = (v4 + 32);
    v18 = (v16 + 8);
    do
    {
      sub_20CF5A634(v15, v12, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      sub_20CF5A634(v12, v10, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      (*v17)(v6, v10, v3);
      MEMORY[0x20F31E200](EnumCaseMultiPayload);
      sub_20CF5A5EC(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      sub_20D5677C8();
      (*v18)(v6, v3);
      result = sub_20CF5A7DC(v12, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v15 += v20;
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_20CF598CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_20D568768();
    MEMORY[0x20F31E200](v8);
    v3 = sub_20D568768();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F31E200](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F31DD20](i, a2);
      sub_20D568408();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_20D568408();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20CF599BC(uint64_t a1, uint64_t a2)
{
  result = sub_20D568D98();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_20D568D48();
    MEMORY[0x20F31E200](v12);
    result = sub_20D568D98();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x20F31E200](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s6HomeUI32ControlCenterModuleConfigurationV9ElementIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = sub_20D563818();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - v5;
  MEMORY[0x28223BE20](v6);
  v68 = &v65 - v7;
  MEMORY[0x28223BE20](v8);
  v67 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v66 = &v65 - v11;
  MEMORY[0x28223BE20](v12);
  v65 = &v65 - v13;
  v14 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5A8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v65 - v33;
  v36 = *(v35 + 56);
  sub_20CF5A634(v71, &v65 - v33, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  sub_20CF5A634(v72, &v34[v36], type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20CF5A634(v34, v31, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      if (!swift_getEnumCaseMultiPayload())
      {
        v61 = v73;
        v60 = v74;
        v62 = v65;
        (*(v73 + 32))(v65, &v34[v36], v74);
        v41 = sub_20D5637D8();
        v63 = *(v61 + 8);
        v63(v62, v60);
        v63(v31, v60);
        goto LABEL_26;
      }

      v16 = v31;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_20CF5A634(v34, v28, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v73;
        v38 = v74;
        v40 = v66;
        (*(v73 + 32))(v66, &v34[v36], v74);
        v41 = sub_20D5637D8();
        v42 = *(v39 + 8);
        v42(v40, v38);
        v42(v28, v38);
LABEL_26:
        sub_20CF5A7DC(v34, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
        return v41 & 1;
      }

      v16 = v28;
      goto LABEL_23;
    }

    sub_20CF5A634(v34, v25, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v16 = v25;
      goto LABEL_23;
    }

    v54 = v73;
    v53 = v74;
    v55 = v67;
    (*(v73 + 32))(v67, &v34[v36], v74);
    v41 = sub_20D5637D8();
    v46 = *(v54 + 8);
    v46(v55, v53);
    v47 = v25;
    v48 = v53;
LABEL_16:
    v46(v47, v48);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_20CF5A634(v34, v16, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v57 = v73;
        v56 = v74;
        v58 = v70;
        (*(v73 + 32))(v70, &v34[v36], v74);
        v41 = sub_20D5637D8();
        v59 = *(v57 + 8);
        v59(v58, v56);
        v59(v16, v56);
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    sub_20CF5A634(v34, v19, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v16 = v19;
      goto LABEL_23;
    }

    v44 = v73;
    v43 = v74;
    v45 = v69;
    (*(v73 + 32))(v69, &v34[v36], v74);
    v41 = sub_20D5637D8();
    v46 = *(v44 + 8);
    v46(v45, v43);
    v47 = v19;
    v48 = v43;
    goto LABEL_16;
  }

  sub_20CF5A634(v34, v22, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v50 = v73;
    v49 = v74;
    v51 = v68;
    (*(v73 + 32))(v68, &v34[v36], v74);
    v41 = sub_20D5637D8();
    v52 = *(v50 + 8);
    v52(v51, v49);
    v52(v22, v49);
    goto LABEL_26;
  }

  v16 = v22;
LABEL_23:
  (*(v73 + 8))(v16, v74);
  sub_20CEF928C(v34, &qword_27C81D5A8);
  v41 = 0;
  return v41 & 1;
}

uint64_t _s6HomeUI32ControlCenterModuleConfigurationV7ContentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D563818();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D520);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v17 = (&v28 + *(v16 + 56) - v14);
  sub_20CF5A634(a1, &v28 - v14, type metadata accessor for ControlCenterModuleConfiguration.Content);
  sub_20CF5A634(a2, v17, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20CF5A634(v15, v9, type metadata accessor for ControlCenterModuleConfiguration.Content);
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48);
      v21 = *&v9[v20];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        (*(v29 + 8))(v9, v4);
        goto LABEL_14;
      }

      v22 = *(v17 + v20);
      v23 = v29;
      (*(v29 + 32))(v6, v17, v4);
      v24 = sub_20D5637D8();
      v25 = *(v23 + 8);
      v25(v9, v4);
      if ((v24 & 1) == 0)
      {
        v25(v6, v4);

        sub_20CF5A7DC(v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
        goto LABEL_15;
      }

      v26 = sub_20D09BB00(v21, v22);

      v25(v6, v4);
    }

    else
    {
      sub_20CF5A634(v15, v12, type metadata accessor for ControlCenterModuleConfiguration.Content);
      v19 = *v12;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_14:
        sub_20CEF928C(v15, &qword_27C81D520);
LABEL_15:
        v26 = 0;
        return v26 & 1;
      }

      v26 = sub_20CEE77F8(v19, *v17);
    }

    sub_20CF5A7DC(v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_14;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_14;
  }

  sub_20CF5A7DC(v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_20CF5A5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CF5A634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s6HomeUI32ControlCenterModuleConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s6HomeUI32ControlCenterModuleConfigurationV7ContentO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_20CF5A734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF5A798@<X0>(uint64_t *a1@<X8>)
{
  result = ControlCenterModuleConfiguration.ElementID.expandedDescription(in:)(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20CF5A7DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CF5A8D0()
{
  result = qword_27C81D540;
  if (!qword_27C81D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D540);
  }

  return result;
}

void sub_20CF5A994()
{
  type metadata accessor for ControlCenterModuleConfiguration.Content(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CCUIGridSizeClass(319);
    if (v1 <= 0x3F)
    {
      sub_20CF5AA30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CF5AA30()
{
  if (!qword_27C81D550)
  {
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D550);
    }
  }
}

void sub_20CF5AA80()
{
  sub_20CF5AAF4();
  if (v0 <= 0x3F)
  {
    sub_20CF5AB98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20CF5AAF4()
{
  if (!qword_27C81D558)
  {
    sub_20CF5AB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D558);
    }
  }
}

void sub_20CF5AB3C()
{
  if (!qword_27C81D560)
  {
    sub_20CF54474();
    v0 = sub_20D567D78();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D560);
    }
  }
}

void sub_20CF5AB98()
{
  if (!qword_27C81D568)
  {
    sub_20D563818();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D570);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C81D568);
    }
  }
}

uint64_t sub_20CF5AC18()
{
  result = sub_20D563818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20CF5ACB8(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20D568798() || (sub_20CECF940(0, &qword_281120AC0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_20CEC80DC();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F31CEE0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_20CF5AF3C(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_categoryItemProvider] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_actionSetItemProvider] = 0;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for DashboardFilterBarItemManager();
  v5 = objc_msgSendSuper2(&v17, sel_initWithDelegate_sourceItem_, a1, a2);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  v9 = sub_20D5677F8();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v16[4] = sub_20CF5E48C;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_20CF64C98;
  v16[3] = &block_descriptor_7;
  v11 = _Block_copy(v16);
  v12 = v7;

  v13 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  v14 = [objc_opt_self() sharedInstance];
  [v14 addObserver_];
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_20CF5B138(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_20D565988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v10 = qword_281120C18;
  sub_20D565998();
  v11 = sub_20D565968();
  v12 = sub_20D567EC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20CEB6000, v11, v12, "Received notification to update the Energy pill", v13, 2u);
    MEMORY[0x20F31FC70](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_20D567C18();
  v15 = a2;
  v16 = sub_20D567C08();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  sub_20CF18960(0, 0, v5, &unk_20D5BF6C8, v17);
}

id sub_20CF5B3FC()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DashboardFilterBarItemManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CF5B544(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D142A0]) initWithHome:a1 room:0];
  v4 = *(v1 + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_categoryItemProvider);
  *(v1 + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_categoryItemProvider) = v3;
  v5 = v3;

  v6 = [objc_allocWithZone(MEMORY[0x277D143A8]) initWithHome:a1 actionSetItemStyle:0];
  v7 = *(v1 + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_actionSetItemProvider);
  *(v1 + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_actionSetItemProvider) = v6;
  v8 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20D5BA040;
  *(v9 + 32) = v5;

  return v9;
}

uint64_t sub_20CF5B6AC()
{
  v1 = *&v0[OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_categoryItemProvider];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 home];
    if (v3)
    {
      v4 = v3;
      if ([v3 hf_currentUserIsRestrictedGuest])
      {
        v5 = MEMORY[0x277D84F90];
LABEL_12:

        return v5;
      }
    }

    v6 = objc_allocWithZone(MEMORY[0x277D14850]);
    v7 = sub_20D5677F8();
    v8 = [v6 initWithIdentifier_];

    v9 = [v0 home];
    if (v9 && (v10 = v9, v11 = [v9 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], v10, v11))
    {
      v12 = [v2 items];
      sub_20CECF940(0, &qword_281120AC0);
      sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
      v13 = sub_20D567D08();

      v14 = v11;
      v24 = sub_20CF81C08(v13);
      sub_20CF5DFF8(&v24, v14);

      v15 = sub_20D567A58();

      [v8 setItems_];
    }

    else
    {
      v16 = [v2 items];
      sub_20CECF940(0, &qword_281120AC0);
      sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
      v17 = sub_20D567D08();

      sub_20CF81C08(v17);

      v15 = sub_20D567A58();

      [v8 setItems_];
    }

    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20D5BA040;
    *(v19 + 32) = v8;
    sub_20CECF940(0, &unk_28111FFD0);
    v20 = v8;
    v21 = sub_20D567A58();

    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v22 = sub_20D567CD8();
    v4 = [v18 filterSections:v21 toDisplayedItems:v22];

    v5 = sub_20D567A78();
    v2 = v20;
    goto LABEL_12;
  }

  return MEMORY[0x277D84F90];
}

void sub_20CF5BB88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v38 - v6;
  v8 = [v2 allDisplayedItems];
  v9 = sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v10 = sub_20D567D08();

  v38 = v3;
  v39 = v7;
  v41 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v10 = v49;
    v11 = v50;
    v12 = v51;
    v13 = v52;
    v14 = v53;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 56);
    sub_20D5663C8();
    v13 = 0;
  }

  v40 = v12;
  v43 = v11;
  while (v10 < 0)
  {
    v23 = sub_20D568798();
    if (!v23 || (v47 = v23, swift_dynamicCast(), v22 = v48, v20 = v13, v21 = v14, !v48))
    {
LABEL_23:
      sub_20CEC80DC();

      v36 = sub_20D5638C8();
      (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
      return;
    }

LABEL_18:
    v45 = v13;
    v46 = v21;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = [v24 accessoryTypeGroup];
      if (v25)
      {
        v26 = v25;
        sub_20CECF940(0, &qword_28111FEA8);
        v27 = v10;
        v28 = v9;
        v29 = v44;
        v30 = sub_20D5683F8();

        v9 = v28;
        v10 = v27;
        v11 = v43;

        if (v30)
        {
          sub_20CEC80DC();

          v31 = [v38 indexPathForItem_];
          if (v31)
          {
            v32 = v39;
            v33 = v31;
            sub_20D563878();

            v34 = 0;
            v22 = v33;
            v35 = v42;
          }

          else
          {
            v34 = 1;
            v35 = v42;
            v32 = v39;
          }

          v37 = sub_20D5638C8();
          (*(*(v37 - 8) + 56))(v32, v34, 1, v37);
          sub_20CF5E4EC(v32, v35);
          return;
        }
      }
    }

    v13 = v20;
    v14 = v46;
  }

  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v19 = *(v11 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20CF5BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  if (qword_28111FAD0 != -1)
  {
    swift_once();
  }

  v10 = qword_281120C08;
  v11 = sub_20D567EC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 138412546;
    *(v12 + 4) = v3;
    *v13 = v3;
    *(v12 + 12) = 2080;
    v14 = v3;
    *(v12 + 14) = sub_20CEE913C(0xD000000000000027, 0x800000020D5CFDE0, &v24);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%@%s", v12, 0x16u);
    sub_20CF31DFC(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    v15 = v23;
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F31FC70](v15, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  v16 = type metadata accessor for DashboardFilterBarItemManager();
  v25.receiver = v3;
  v25.super_class = v16;
  objc_msgSendSuper2(&v25, sel_homeKitDispatcher_manager_didChangeHome_, a1, a2, a3);
  v17 = sub_20D567C58();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_20D567C18();
  v18 = v3;
  v19 = sub_20D567C08();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  sub_20CF18960(0, 0, v9, &unk_20D5BF6C0, v20);
}

uint64_t sub_20CF5C350(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  if (qword_28111FAD0 != -1)
  {
    swift_once();
  }

  v6 = qword_281120C08;
  v7 = sub_20D567EC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v1;
    *v9 = v1;
    *(v8 + 12) = 2080;
    v11 = v1;
    *(v8 + 14) = sub_20CEE913C(0xD000000000000027, 0x800000020D5CFD50, &v20);
    _os_log_impl(&dword_20CEB6000, v6, v7, "%@%s", v8, 0x16u);
    sub_20CF31DFC(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  v12 = type metadata accessor for DashboardFilterBarItemManager();
  v21.receiver = v1;
  v21.super_class = v12;
  objc_msgSendSuper2(&v21, sel_executionEnvironmentDidBecomeActive_, a1);
  v13 = sub_20D567C58();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_20D567C18();
  v14 = v1;
  v15 = sub_20D567C08();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  sub_20CF18960(0, 0, v5, &unk_20D5BF6B0, v16);
}

uint64_t sub_20CF5C66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a5;
  *(v5 + 96) = a4;
  v6 = sub_20D565988();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  sub_20D567C18();
  *(v5 + 128) = sub_20D567C08();
  v8 = sub_20D567BA8();
  *(v5 + 136) = v8;
  *(v5 + 144) = v7;

  return MEMORY[0x2822009F8](sub_20CF5C764, v8, v7);
}

uint64_t sub_20CF5C764()
{
  v37 = v0;
  v1 = [*(v0 + 96) home];
  *(v0 + 152) = v1;
  if (!v1)
  {

    goto LABEL_33;
  }

  v2 = v1;
  if ((*(v0 + 192) & 1) == 0 && [v1 hf_isHomeEnergyHomeEmpty] && !objc_msgSend(v2, sel_hf_isGridForecastVisible) || (v3 = *(*(v0 + 96) + OBJC_IVAR____TtC6HomeUI29DashboardFilterBarItemManager_categoryItemProvider)) == 0)
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  v4 = [v3 items];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v5 = sub_20D567D08();

  sub_20CF5ACB8(v5);
  v7 = v6;

  if (v7 >> 62)
  {
    if (sub_20D568768())
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:

    goto LABEL_31;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F31DD20](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v8 = *(v7 + 32);
  }

  *(v0 + 160) = v8;

  if ([v2 hf_isGridForecastVisible])
  {
    sub_20D563AA8();
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_20CF5CD78;

    return MEMORY[0x282171308]();
  }

  if (*(v0 + 192))
  {
LABEL_18:
    if (qword_28111FAF0 == -1)
    {
LABEL_19:
      v10 = qword_281120C18;
      sub_20D565998();
      sub_20D5663C8();
      v11 = sub_20D565968();
      v12 = sub_20D567EC8();

      v13 = os_log_type_enabled(v11, v12);
      v15 = *(v0 + 112);
      v14 = *(v0 + 120);
      v16 = *(v0 + 104);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_20CEE913C(0xD000000000000022, 0x800000020D5CFD80, v36);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_20CEE913C(0, 0xE000000000000000, v36);
        _os_log_impl(&dword_20CEB6000, v11, v12, "%s Updated Energy Category Status: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v18, -1, -1);
        MEMORY[0x20F31FC70](v17, -1, -1);

        (*(v15 + 8))(v14, v16);
      }

      else
      {

        (*(v15 + 8))(v14, v16);
      }

      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 96);
      v28 = sub_20D5677F8();

      [v25 setEnergyAdviceDisplayDescription_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D4B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D5BC410;
      *(v0 + 88) = v25;
      sub_20CECF940(0, &qword_28111FE18);
      sub_20CEF7F74(&qword_28111FE10, &qword_28111FE18);
      v30 = v25;
      sub_20D5687F8();
      sub_20CEF83DC(inited);
      swift_setDeallocating();
      sub_20CEF90C0(inited + 32);
      v31 = sub_20D567CD8();

      v2 = [v27 updateResultsForItems:v31 senderSelector:sub_20D5638E8()];

      goto LABEL_32;
    }

LABEL_38:
    swift_once();
    goto LABEL_19;
  }

  v19 = [*(v0 + 160) energyAdviceDisplayDescription];
  v20 = sub_20D567838();
  v22 = v21;

  if (v20 || v22 != 0xE000000000000000)
  {
    v32 = sub_20D568BF8();

    if ((v32 & 1) == 0)
    {
      goto LABEL_18;
    }

    v33 = *(v0 + 160);
  }

  else
  {
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
  }

LABEL_33:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_20CF5CD78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);

  return MEMORY[0x2822009F8](sub_20CF5CEA0, v6, v5);
}

uint64_t sub_20CF5CEA0()
{
  v32 = v0;

  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  if (*(v0 + 192))
  {
    goto LABEL_2;
  }

  v12 = [*(v0 + 160) energyAdviceDisplayDescription];
  v13 = sub_20D567838();
  v15 = v14;

  if (v13 == v2 && v15 == v1)
  {
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);

    goto LABEL_15;
  }

  v17 = sub_20D568BF8();

  if (v17)
  {
    v18 = *(v0 + 160);

LABEL_15:

    goto LABEL_16;
  }

LABEL_2:
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v3 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v31 = v11;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000022, 0x800000020D5CFD80, &v31);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20CEE913C(v2, v1, &v31);
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Updated Energy Category Status: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);

    (*(v7 + 8))(v8, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 96);
  v22 = sub_20D5677F8();

  [v19 setEnergyAdviceDisplayDescription_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  *(v0 + 88) = v19;
  sub_20CECF940(0, &qword_28111FE18);
  sub_20CEF7F74(&qword_28111FE10, &qword_28111FE18);
  v24 = v19;
  sub_20D5687F8();
  sub_20CEF83DC(inited);
  swift_setDeallocating();
  sub_20CEF90C0(inited + 32);
  v25 = sub_20D567CD8();

  v26 = [v21 updateResultsForItems:v25 senderSelector:sub_20D5638E8()];

LABEL_16:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20CF5D2A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF5C66C(a1, v4, v5, v6, v7);
}

uint64_t sub_20CF5D36C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v13[v9];
    if (v7 < 8)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = v5;
      v21 = sub_20D565AD8();

      if (v21)
      {
        break;
      }

      v15 = v13;
      v16 = v6 == v13++;
      v5 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v13 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v5 = v20 + 1;
    if (v6 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    v22 = a4;
    memmove(a4, __src, 8 * v12);
    a4 = v22;
  }

  v37 = a4;
  v14 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4;
    if (v5 > v6)
    {
      v35 = v6;
LABEL_24:
      v36 = v5;
      v23 = v5 - 1;
      --v4;
      v24 = v14;
      v25 = v14;
      do
      {
        v26 = v4 + 1;
        v27 = *--v25;
        v28 = v23;
        v29 = *v23;
        v30 = v27;
        v31 = v29;
        v32 = sub_20D565AD8();

        if (v32)
        {
          v33 = v28;
          if (v26 != v36)
          {
            *v4 = *v28;
          }

          v13 = v37;
          v14 = v24;
          if (v24 <= v37 || (v5 = v33, v33 <= v35))
          {
            v5 = v33;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        if (v26 != v24)
        {
          *v4 = *v25;
        }

        --v4;
        v24 = v25;
        v13 = v37;
        v23 = v28;
      }

      while (v25 > v37);
      v14 = v25;
      v5 = v36;
    }
  }

LABEL_36:
  if (v5 != v13 || v5 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v14 - v13));
  }

  return 1;
}

void sub_20CF5D608(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_20D057C88(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __dst = (v9 + 8 * *v10);
      __src = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_20CF5D36C(__dst, __src, v14, a2);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_20CF5D7A8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a3[1];
  v111 = MEMORY[0x277D84F90];
  v110 = a5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v103 = v7;
        v10 = 8 * v6;
        v11 = (*a3 + 8 * v6);
        v13 = *v11;
        v12 = v11 + 2;
        v14 = *(*a3 + 8 * v9);
        v15 = v13;
        v16 = sub_20D565AD8();

        v17 = v8;
        v18 = v8 + 2;
        while (v5 != v18)
        {
          v19 = *(v12 - 1);
          v20 = *v12;
          v21 = v19;
          LODWORD(v19) = sub_20D565AD8() & 1;

          ++v18;
          ++v12;
          if ((v16 & 1) != v19)
          {
            v5 = v18 - 1;
            break;
          }
        }

        v7 = v103;
        v8 = v17;
        if (v16)
        {
          if (v5 < v17)
          {
            goto LABEL_113;
          }

          if (v17 < v5)
          {
            v22 = 8 * v5 - 8;
            v23 = v5;
            v24 = v17;
            do
            {
              if (v24 != --v23)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v25 = *(v26 + v10);
                *(v26 + v10) = *(v26 + v22);
                *(v26 + v22) = v25;
              }

              ++v24;
              v22 -= 8;
              v10 += 8;
            }

            while (v24 < v23);
          }
        }

        v9 = v5;
      }

      v27 = a3[1];
      if (v9 < v27)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_112;
        }

        if (v9 - v8 < a4)
        {
          v28 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_114;
          }

          if (v28 >= v27)
          {
            v28 = a3[1];
          }

          if (v28 < v8)
          {
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
            return;
          }

          if (v9 != v28)
          {
            v101 = v28;
            v104 = v7;
            v29 = *a3;
            v30 = *a3 + 8 * v9 - 8;
            v99 = v8;
            v31 = v8 - v9;
            do
            {
              v106 = v9;
              v32 = *(v29 + 8 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                v35 = *v34;
                v36 = v32;
                v37 = v35;
                v38 = sub_20D565AD8();

                if ((v38 & 1) == 0)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_116;
                }

                v39 = *v34;
                v32 = *(v34 + 8);
                *v34 = v32;
                *(v34 + 8) = v39;
                v34 -= 8;
              }

              while (!__CFADD__(v33++, 1));
              v9 = v106 + 1;
              v30 += 8;
              --v31;
            }

            while ((v106 + 1) != v101);
            v9 = v101;
            v7 = v104;
            v8 = v99;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_111;
      }

      v107 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20CEE81E4(0, *(v7 + 2) + 1, 1, v7);
      }

      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v7 = sub_20CEE81E4((v41 > 1), v42 + 1, 1, v7);
      }

      *(v7 + 2) = v43;
      v44 = v7 + 32;
      v45 = &v7[16 * v42 + 32];
      *v45 = v8;
      *(v45 + 1) = v9;
      v102 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v42)
      {
        v100 = v7 + 32;
        v105 = v7;
        while (1)
        {
          v46 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v47 = *(v7 + 4);
            v48 = *(v7 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_57:
            if (v50)
            {
              goto LABEL_101;
            }

            v63 = &v7[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_103;
            }

            v69 = &v44[16 * v46];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_106;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_108;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v43 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v43 < 2)
          {
            goto LABEL_109;
          }

          v73 = &v7[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_72:
          if (v68)
          {
            goto LABEL_105;
          }

          v76 = &v44[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_107;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_79:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
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
            goto LABEL_115;
          }

          v84 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v85 = &v44[16 * v46 - 16];
          v86 = *v85;
          v87 = v46;
          v88 = &v44[16 * v46];
          v89 = *(v88 + 1);
          v90 = (v84 + 8 * *v85);
          v91 = (v84 + 8 * *v88);
          v92 = (v84 + 8 * v89);
          v93 = v110;
          sub_20CF5D36C(v90, v91, v92, v102);
          if (v109)
          {

            goto LABEL_92;
          }

          v7 = v105;
          if (v89 < v86)
          {
            goto LABEL_96;
          }

          v94 = *(v105 + 2);
          if (v87 > v94)
          {
            goto LABEL_97;
          }

          *v85 = v86;
          *(v85 + 1) = v89;
          if (v87 >= v94)
          {
            goto LABEL_98;
          }

          v43 = v94 - 1;
          memmove(v88, v88 + 16, 16 * (v94 - 1 - v87));
          *(v105 + 2) = v94 - 1;
          v44 = v100;
          if (v94 <= 2)
          {
            goto LABEL_3;
          }
        }

        v51 = &v44[16 * v43];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_99;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_100;
        }

        v58 = &v7[16 * v43];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_102;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_104;
        }

        if (v62 >= v54)
        {
          v80 = &v44[16 * v46];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_110;
          }

          if (v49 < v83)
          {
            v46 = v43 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = v107;
      v5 = a3[1];
      if (v107 >= v5)
      {
        v111 = v7;
        break;
      }
    }
  }

  v95 = *a1;
  if (!*a1)
  {
    goto LABEL_120;
  }

  v96 = v110;
  sub_20CF5D608(&v111, v95, a3, v96);
  if (v109)
  {

LABEL_92:
  }

  else
  {
  }
}

void sub_20CF5DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v17 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_20D565AD8();

      if ((v13 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20CF5DEA4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_20D568BA8();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CECF940(0, &qword_281120AC0);
        v8 = sub_20D567AE8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_20CF5D7A8(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_20CF5DDC0(0, v3, 1, a1);
  }
}

void sub_20CF5DFF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_20D059BE4(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_20CF5DEA4(v8, v7);

  sub_20D5688D8();
}

uint64_t sub_20CF5E098()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v8 = qword_281120C18;
  sub_20D565998();
  v9 = v0;
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v14 = v9;
    *(v12 + 12) = 2080;
    v16 = v9;
    *(v12 + 14) = sub_20CEE913C(0xD000000000000029, 0x800000020D5CFDB0, &v25);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%@%s", v12, 0x16u);
    sub_20CF31DFC(v14);
    v17 = v14;
    v3 = v24;
    MEMORY[0x20F31FC70](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F31FC70](v15, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = sub_20D567C58();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_20D567C18();
  v19 = v9;
  v20 = sub_20D567C08();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = v19;
  *(v21 + 40) = 1;
  sub_20CF18960(0, 0, v3, &unk_20D5BF6B8, v21);
}

uint64_t sub_20CF5E3C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF5FFC;

  return sub_20CF5C66C(a1, v4, v5, v6, v7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20CF5E4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CCUIScaledMetric(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x20F31E320]();
  if ((a4 & 1) == 0)
  {

    UIRoundToScale();
  }
}

double sub_20CF5E5E0()
{
  MEMORY[0x20F31E320]();
  v0 = UIRoundToScale();
  v2 = v1;
  MEMORY[0x20F31E320](v0);
  v3 = UIRoundToScale();
  MEMORY[0x20F31E320](v3);
  v4 = UIRoundToScale();
  MEMORY[0x20F31E320](v4);
  UIRoundToScale();
  return v2;
}

uint64_t type metadata accessor for BridgesListView.Config()
{
  result = qword_27C81D5C8;
  if (!qword_27C81D5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CF5E734()
{
  sub_20D563818();
  if (v0 <= 0x3F)
  {
    sub_20CF5E7C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CF5E7C0()
{
  if (!qword_27C81D5D8)
  {
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D5D8);
    }
  }
}

uint64_t sub_20CF5E810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D640);
  sub_20D563818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D648);
  sub_20CF156D0(&qword_27C81D650, &qword_27C81D640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D5F8);
  sub_20CF5FF88();
  swift_getOpaqueTypeConformance2();
  sub_20CF60130(&qword_27C81D658, type metadata accessor for BridgesListView.Config);
  return sub_20D567548();
}

uint64_t sub_20CF5E9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BridgesListView.Config();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5F8);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  *v13 = sub_20D566B38();
  *(v13 + 1) = 0x4034000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D660);
  sub_20CF5EBD4(&v13[*(v14 + 44)]);
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D610) + 36)] = 0;
  v13[*(v11 + 36)] = 0;
  sub_20CF60178(a1, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  sub_20CF601DC(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_20CF5FF88();
  sub_20D5663C8();

  sub_20D567178();

  return sub_20CEF928C(v13, &qword_27C81D5F8);
}

uint64_t sub_20CF5EBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D668);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v34 - v6);
  *v7 = sub_20D5675E8();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D670);
  sub_20CF5EF24((v7 + *(v9 + 44)));
  v39 = sub_20CF5F2E4();
  v40 = v10;
  sub_20CEF44D8();
  v11 = sub_20D5670E8();
  v13 = v12;
  v15 = v14;
  sub_20D566F98();
  v16 = sub_20D5670C8();
  v37 = v17;
  v38 = v18;
  v36 = v19;

  sub_20CF13F34(v11, v13, v15 & 1);

  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 viewControllerClassForIdentifier_];

  if (v21)
  {
    v22 = sub_20D5673C8();
    v23 = sub_20D566F88();
    KeyPath = swift_getKeyPath();
    v25 = sub_20D567308();
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v23 = 0;
    v25 = 0;
  }

  sub_20CEF9178(v7, v5, &qword_27C81D668);
  sub_20CEF9178(v5, a1, &qword_27C81D668);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D678);
  v27 = a1 + v26[12];
  v29 = v37;
  v28 = v38;
  *v27 = v16;
  *(v27 + 8) = v29;
  v35 = v5;
  v30 = v36 & 1;
  *(v27 + 16) = v36 & 1;
  *(v27 + 24) = v28;
  v31 = a1 + v26[16];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = (a1 + v26[20]);
  sub_20CF14B58(v16, v29, v30);
  sub_20D5663C8();
  sub_20CF602A8(v22);
  sub_20CF6030C(v22);
  *v32 = v22;
  v32[1] = KeyPath;
  v32[2] = v23;
  v32[3] = v25;
  sub_20CEF928C(v7, &qword_27C81D668);
  sub_20CF6030C(v22);
  sub_20CF13F34(v16, v29, v30);

  return sub_20CEF928C(v35, &qword_27C81D668);
}

uint64_t sub_20CF5EF24@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D680);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D688);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-v10];
  v12 = sub_20D567328();
  sub_20D5675E8();
  sub_20D566848();
  *&v24[3] = *&v24[27];
  *&v24[11] = *&v24[35];
  *&v24[19] = *&v24[43];
  sub_20D5673C8();
  sub_20D566BC8();
  v13 = sub_20D566BD8();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = sub_20D5673F8();

  sub_20CEF928C(v4, &qword_27C81D680);
  v15 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D690) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D698) + 28);
  v17 = *MEMORY[0x277CE1048];
  v18 = sub_20D567408();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v11 = v14;
  *(v11 + *(v6 + 44)) = sub_20D567338();
  sub_20CEF9178(v11, v9, &qword_27C81D688);
  *v25 = v12;
  *&v25[8] = 256;
  *&v25[10] = *v24;
  *&v25[26] = *&v24[8];
  *&v25[42] = *&v24[16];
  *&v25[56] = *&v24[23];
  v19 = *&v25[16];
  *a1 = *v25;
  a1[1] = v19;
  v20 = *&v25[48];
  a1[2] = *&v25[32];
  a1[3] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6A0);
  sub_20CEF9178(v9, a1 + *(v21 + 48), &qword_27C81D688);
  sub_20CEF9178(v25, &v26, &qword_27C81D6A8);
  sub_20CEF928C(v11, &qword_27C81D688);
  sub_20CEF928C(v9, &qword_27C81D688);
  v26 = v12;
  v27 = 256;
  v28 = *v24;
  v29 = *&v24[8];
  *v30 = *&v24[16];
  *&v30[14] = *&v24[23];
  return sub_20CEF928C(&v26, &qword_27C81D6A8);
}

uint64_t sub_20CF5F2E4()
{
  v1 = sub_20D5645F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BridgesListView.Config();
  v6 = (v0 + *(v5 + 24));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    sub_20D5663C8();
    sub_20D5663C8();
    sub_20D5645E8();
    v9 = sub_20D5645D8();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    v14[0] = v8;
    v14[1] = v7;
    sub_20D5663C8();
    MEMORY[0x20F31CDB0](32, 0xE100000000000000);
    MEMORY[0x20F31CDB0](v9, v11);

    return v14[0];
  }

  else
  {
    v12 = *(v0 + *(v5 + 20));
    sub_20D5663C8();
  }

  return v12;
}

void sub_20CF5F464(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 viewControllerClassForIdentifier_];

  if (v7)
  {
    a2(a4);
  }
}

uint64_t sub_20CF5F4F0()
{
  v0 = sub_20D5677F8();
  v1 = HFLocalizedString();

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5E8);
  sub_20CF5FEC8();
  return sub_20D567578();
}

uint64_t sub_20CF5F5EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D563818();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CF5F658(uint64_t a1)
{
  sub_20D568D48();
  sub_20D563818();
  sub_20CF60130(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  sub_20D5677C8();
  sub_20D5678C8();
  if (*(v1 + *(a1 + 24) + 8))
  {
    sub_20D568D68();
    sub_20D5678C8();
  }

  else
  {
    sub_20D568D68();
  }

  return sub_20D568D98();
}

uint64_t sub_20CF5F740(uint64_t a1, uint64_t a2)
{
  sub_20D563818();
  sub_20CF60130(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  sub_20D5677C8();
  sub_20D5678C8();
  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_20D568D68();
  }

  sub_20D568D68();

  return sub_20D5678C8();
}

uint64_t sub_20CF5F828(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  sub_20D563818();
  sub_20CF60130(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  sub_20D5677C8();
  sub_20D5678C8();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_20D568D68();
    sub_20D5678C8();
  }

  else
  {
    sub_20D568D68();
  }

  return sub_20D568D98();
}

uint64_t sub_20CF5F9D8(uint64_t a1)
{
  v2 = sub_20D567408();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D5669D8();
}

uint64_t sub_20CF5FAA0(uint64_t a1, uint64_t a2)
{
  if (sub_20D5637D8())
  {
    v4 = type metadata accessor for BridgesListView.Config();
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_20D568BF8() & 1) != 0)
    {
      v10 = *(v4 + 24);
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_20D568BF8() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20CF5FB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D5645F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BridgesListView.Config();
  v9 = v8;
  v10 = *(v8 + 24);
  v11 = *(a1 + v10 + 8);
  if (v11)
  {
    v12 = *(a1 + v10);
    sub_20D5663C8();
    sub_20D5663C8();
    sub_20D5645E8();
    v13 = sub_20D5645D8();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v30 = v12;
    v31 = v11;
    sub_20D5663C8();
    MEMORY[0x20F31CDB0](32, 0xE100000000000000);
    MEMORY[0x20F31CDB0](v13, v15);

    v17 = v30;
    v16 = v31;
    v10 = *(v9 + 24);
  }

  else
  {
    v18 = (a1 + *(v8 + 20));
    v17 = *v18;
    v16 = v18[1];
    sub_20D5663C8();
  }

  v19 = (a2 + v10);
  v20 = *(a2 + v10 + 8);
  if (v20)
  {
    v21 = *v19;
    sub_20D5663C8();
    sub_20D5663C8();
    sub_20D5645E8();
    v22 = sub_20D5645D8();
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v30 = v21;
    v31 = v20;
    sub_20D5663C8();
    MEMORY[0x20F31CDB0](32, 0xE100000000000000);
    MEMORY[0x20F31CDB0](v22, v24);

    v25 = v31;
    if (v17 != v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v26 = (a2 + *(v9 + 20));
    v27 = *v26;
    v25 = v26[1];
    sub_20D5663C8();
    if (v17 != v27)
    {
LABEL_10:
      v28 = sub_20D568BF8();
      goto LABEL_11;
    }
  }

  if (v16 != v25)
  {
    goto LABEL_10;
  }

  v28 = 0;
LABEL_11:

  return v28 & 1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20CF5FE08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20CF5FE50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_20CF5FEC8()
{
  result = qword_27C81D5F0;
  if (!qword_27C81D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D5F8);
    sub_20CF5FF88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D5F0);
  }

  return result;
}

unint64_t sub_20CF5FF88()
{
  result = qword_27C81D600;
  if (!qword_27C81D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D5F8);
    sub_20CF60040();
    sub_20CF156D0(&qword_27C81D630, &qword_27C81D638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D600);
  }

  return result;
}

unint64_t sub_20CF60040()
{
  result = qword_27C81D608;
  if (!qword_27C81D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D610);
    sub_20CF156D0(&qword_27C81D618, &qword_27C81D620);
    sub_20CF156D0(&qword_27C81D628, &qword_27C8202B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D608);
  }

  return result;
}

uint64_t sub_20CF60130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CF60178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgesListView.Config();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF601DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgesListView.Config();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CF60240()
{
  v1 = *(type metadata accessor for BridgesListView.Config() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_20CF5F464(v2, v3, v4, v5);
}

uint64_t sub_20CF602A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20CF6030C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_20CF6036C()
{
  result = qword_27C81D6B0;
  if (!qword_27C81D6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D6B8);
    sub_20CF5FEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D6B0);
  }

  return result;
}

uint64_t sub_20CF60458(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27C81D6C0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CF604C4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27C81D6C0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CEC8420;
}

void sub_20CF60564(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C81D6C8;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_20CF605C4()
{
  v1 = qword_27C81D6C8;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20CF60618(uint64_t a1)
{
  v3 = qword_27C81D6C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20CF606D0(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27C81D6C0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    swift_getObjectType();
    v5 = qword_27C81D6C8;
    swift_beginAccess();
    v6 = *(v4 + 80);
    v7 = *(v1 + v5);
    v6();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_20D564F98();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t ItemCollectionViewControlsTransitionHelper.__allocating_init(delegate:item:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = v5 + qword_27C81D6C0;
  *(v5 + qword_27C81D6C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = v5 + qword_27C81D6D0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = qword_27C81D6D8;
  v9 = sub_20D5655D8();
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  *(v5 + qword_27C81D6C8) = a3;
  v10 = sub_20D565658();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t ItemCollectionViewControlsTransitionHelper.init(delegate:item:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + qword_27C81D6C0;
  *(v3 + qword_27C81D6C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = v3 + qword_27C81D6D0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = qword_27C81D6D8;
  v9 = sub_20D5655D8();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  *(v3 + qword_27C81D6C8) = a3;
  v10 = sub_20D565658();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_20CF60A08()
{
  v1 = v0 + qword_27C81D6C0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CF60A84(uint64_t a1)
{
  v3 = v1 + qword_27C81D6C0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CF60B14()
{
  if ((sub_20D565638() & 1) == 0)
  {
    v1 = v0 + qword_27C81D6C0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      swift_getObjectType();
      v3 = qword_27C81D6C8;
      swift_beginAccess();
      v4 = *(v2 + 48);
      v5 = *(v0 + v3);
      v4();

      swift_unknownObjectRelease();
    }
  }

  return sub_20D565648();
}

uint64_t sub_20CF60BF4()
{
  v1 = v0 + qword_27C81D6C0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CF60C70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = v1 + qword_27C81D6C0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_20D5655C8();
  }

  v28 = a1;
  v29 = v11;
  v14 = *(v12 + 8);
  v15 = Strong;
  v27[0] = swift_getObjectType();
  v16 = qword_27C81D6C8;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = qword_27C81D6D8;
  swift_beginAccess();
  sub_20CF60F34(v1 + v18, v9);
  v19 = v6;
  v20 = *(v14 + 72);
  v21 = v17;
  v27[1] = v15;
  v22 = v29;
  v20();

  sub_20CF60FA4(v9);
  sub_20CF60F34(v22, v9);
  swift_beginAccess();
  sub_20CF6100C(v9, v1 + v18);
  swift_endAccess();
  sub_20CF60F34(v22, v19);
  v23 = sub_20D5655D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v19, 1, v23) == 1)
  {
    sub_20D5655C8();
    swift_unknownObjectRelease();
    sub_20CF60FA4(v22);
    result = v25(v19, 1, v23);
    if (result != 1)
    {
      return sub_20CF60FA4(v19);
    }
  }

  else
  {
    sub_20CF60FA4(v22);
    swift_unknownObjectRelease();
    return (*(v24 + 32))(v28, v19, v23);
  }

  return result;
}

uint64_t sub_20CF60F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF60FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CF6100C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20CF6107C()
{
  if (![objc_opt_self() isAnIPhone] || (*(v0 + qword_27C81D6D0 + 32) & 1) != 0)
  {
    v1 = v0 + qword_27C81D6C0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      swift_getObjectType();
      v3 = qword_27C81D6C8;
      swift_beginAccess();
      v4 = *(v2 + 8);
      v5 = *(v0 + v3);
      v4();
      swift_unknownObjectRelease();
    }
  }
}

void sub_20CF611C8()
{
  if ([objc_opt_self() isAnIPhone] && (v1 = (v0 + qword_27C81D6D0), (*(v0 + qword_27C81D6D0 + 32) & 1) == 0))
  {
    v11 = *(v1 + 2);
    v13 = *(v1 + 3);
    v7 = *v1;
    v9 = *(v1 + 1);
  }

  else
  {
    v2 = v0 + qword_27C81D6C0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      v4 = qword_27C81D6C8;
      swift_beginAccess();
      v5 = *(v3 + 8);
      v6 = *(v0 + v4);
      v7 = v5();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0.0;
      v9 = 0;
      v11 = 0;
      v13 = 0;
    }
  }

  v14 = v0 + qword_27C81D6D0;
  *v14 = v7;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v14 + 32) = 0;
}

double sub_20CF61318()
{
  v1 = v0 + qword_27C81D6C0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  v2 = *(v1 + 8);
  swift_getObjectType();
  v3 = qword_27C81D6C8;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v0 + v3);
  v6 = v4();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_20CF613FC(char a1)
{
  v3 = v1 + qword_27C81D6C0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = qword_27C81D6C8;
    swift_beginAccess();
    v8 = *(v5 + 24);
    v9 = *(v1 + v7);
    v8(a1 & 1, v9, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_20CF614D4()
{
  v1 = v0 + qword_27C81D6C0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 32))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_20CF61598()
{
  sub_20CEC8088(v0 + qword_27C81D6C0);

  v1 = v0 + qword_27C81D6D8;

  return sub_20CF60FA4(v1);
}

uint64_t ItemCollectionViewControlsTransitionHelper.deinit()
{
  v0 = sub_20D565668();
  sub_20CEC8088(v0 + qword_27C81D6C0);

  sub_20CF60FA4(v0 + qword_27C81D6D8);
  return v0;
}

uint64_t ItemCollectionViewControlsTransitionHelper.__deallocating_deinit()
{
  v0 = sub_20D565668();
  v1 = qword_27C81D6C0;

  sub_20CEC8088(v2 + v1);

  sub_20CF60FA4(v0 + qword_27C81D6D8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemCollectionViewControlsTransitionHelper()
{
  result = qword_27C81D6E8;
  if (!qword_27C81D6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CF617F4()
{
  sub_20CF61A64();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_20CF61A64()
{
  if (!qword_27C81D6F8)
  {
    sub_20D5655D8();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D6F8);
    }
  }
}

id HUDashboardViewController.createDashboardTipModuleController(with:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for DashboardTipModuleController()) initWithModule_];
  v2 = [v1 asGeneric];

  return v2;
}

void sub_20CF61BC0()
{
  v1 = v0;
  v2 = [v0 context];
  v3 = *&v2[OBJC_IVAR___HUDashboardContext_home];

  v4 = [v3 hf_energyManager];
  LOBYTE(v3) = sub_20D565A68();

  if ((v3 & 1) == 0)
  {
    v5 = [v1 _dashboardNavigator];
    if (v5)
    {
      v6 = v5;
      v7 = [v1 context];
      v9 = *&v7[OBJC_IVAR___HUDashboardContext_home];

      v8 = [v6 showHome_];
      swift_unknownObjectRelease();
    }
  }
}

id HUDashboardViewController.createEnergyDashboardModuleController(with:)(uint64_t a1)
{
  v3 = [v1 layoutManager];
  v4 = type metadata accessor for EnergyDashboardItemModuleController();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___HUEnergyDashboardItemModuleController_hasSentHomeEnergyAnalytics] = 0;
  *&v5[OBJC_IVAR___HUEnergyDashboardItemModuleController_layoutManager] = v3;
  swift_unknownObjectWeakAssign();
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = objc_msgSendSuper2(&v9, sel_initWithModule_, a1);
  v7 = [v6 asGeneric];

  return v7;
}

Swift::Void __swiftcall HUDashboardViewController.setupTipsObserver()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  if (qword_28111FAE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281120C10;
  v5 = sub_20D567EC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, v5, "[HUDashboardVC-setupTipsObserver]", v6, 2u);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  if ([v0 tipsObserver])
  {
    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CEF928C(v13, &qword_27C81BF00);
    sub_20D567EA8();
    sub_20D565868();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    sub_20CEF928C(v13, &qword_27C81BF00);
    v7 = sub_20D567EC8();
    if (os_log_type_enabled(v4, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CEB6000, v4, v7, "Instantiating TipsObserver", v8, 2u);
      MEMORY[0x20F31FC70](v8, -1, -1);
    }

    sub_20D567C28();
    v9 = sub_20D567C58();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v12 = sub_20CF62F60(0, 0, v3, &unk_20D5BFA08, v11);
    sub_20CEF928C(v3, &qword_27C81C610);
    *&v13[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D700);
    [v0 setTipsObserver_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20CF62258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D770);
  v4[15] = swift_task_alloc();
  v5 = sub_20D566588();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D778);
  v4[20] = swift_task_alloc();
  v4[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D780);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D788);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D790);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF62498, 0, 0);
}

uint64_t sub_20CF62498()
{
  if (sub_20D567C98())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_281120898 != -1)
    {
      swift_once();
    }

    v3 = v0[24];
    v4 = v0[25];
    v5 = v0[23];
    v6 = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip + 8);
    v0[12] = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip);
    v0[13] = v6;
    sub_20CF64678();
    sub_20D5662D8();
    MEMORY[0x20F31DE70](v5);
    sub_20CF156D0(&qword_281120018, &qword_27C81D778);
    sub_20D567CA8();
    sub_20D5689E8();
    (*(v3 + 8))(v4, v5);
    sub_20D5689F8();
    swift_beginAccess();
    swift_beginAccess();

    return MEMORY[0x2822009F8](sub_20CF626FC, 0, 0);
  }
}

uint64_t sub_20CF626FC()
{
  v0[29] = sub_20D5689D8();
  sub_20CF156D0(&unk_281120020, &qword_27C81D780);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_20CF627F0;
  v2 = v0[15];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_20CF627F0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_20CF62AD4;
  }

  else
  {
    (*(v2 + 232))();
    v3 = sub_20CF62918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CF62918()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v3, &qword_27C81D770);

    return MEMORY[0x2822009F8](sub_20CF62DA0, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v4 = sub_20D5689E8();
    v0[31] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_20CF62AEC;
    v7 = v0[18];

    return (v9)(v0 + 36, v7);
  }
}

uint64_t sub_20CF62AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_20CF62C70, 0, 0);
}

uint64_t sub_20CF62C8C()
{
  v1 = *(v0 + 289);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 264) = Strong;
  if (v1)
  {
    if (Strong)
    {
      sub_20D567C18();
      *(v0 + 272) = sub_20D567C08();
      v3 = sub_20D567BA8();
      v5 = v4;
      v6 = sub_20CF62E64;
LABEL_6:
      v8 = v6;
      v9 = v3;
      v10 = v5;
      goto LABEL_8;
    }
  }

  else if (Strong)
  {
    sub_20D567C18();
    *(v0 + 280) = sub_20D567C08();
    v3 = sub_20D567BA8();
    v5 = v7;
    v6 = sub_20CF62EE0;
    goto LABEL_6;
  }

  v8 = sub_20CF626FC;
  v9 = 0;
  v10 = 0;
LABEL_8:

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_20CF62DA0()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CF62E64()
{
  v1 = *(v0 + 264);

  [v1 presentTip];

  return MEMORY[0x2822009F8](sub_20CF626FC, 0, 0);
}

uint64_t sub_20CF62EE0()
{
  v1 = *(v0 + 264);

  [v1 dismissTip];

  return MEMORY[0x2822009F8](sub_20CF626FC, 0, 0);
}

uint64_t sub_20CF62F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CF646CC(a3, v25 - v10);
  v12 = sub_20D567C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CEF928C(v11, &qword_27C81C610);
  }

  else
  {
    sub_20D567C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D567BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D567878() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HUDashboardViewController.tearDownTipsObserver()()
{
  if (qword_28111FAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C10;
  v2 = sub_20D567EC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20CEB6000, v1, v2, "[HUDashboardVC-tearDownTipsObserver]", v3, 2u);
    MEMORY[0x20F31FC70](v3, -1, -1);
  }

  if ([v0 tipsObserver])
  {
    sub_20D568628();
    swift_unknownObjectRelease();
    sub_20CEF928C(&v8, &qword_27C81BF00);
    if ([v0 tipsObserver])
    {
      sub_20D568628();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D700);
      if (swift_dynamicCast())
      {
        v4 = sub_20D567EC8();
        if (os_log_type_enabled(v1, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_20CEB6000, v1, v4, "Cancelling TipsObserver", v5, 2u);
          MEMORY[0x20F31FC70](v5, -1, -1);
        }

        sub_20D567C88();
      }
    }

    else
    {
      sub_20CEF928C(&v8, &qword_27C81BF00);
    }

    [v0 dismissTip];
    [v0 setTipsObserver_];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    sub_20CEF928C(&v8, &qword_27C81BF00);
    sub_20D567EA8();
    sub_20D565868();
  }
}

Swift::Void __swiftcall HUDashboardViewController.changeHomeEnergyTipShouldDisplay(to:)(Swift::Bool to)
{
  if (qword_2811208D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v2, qword_281120C80);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v3 != to)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

void sub_20CF63720()
{
  v1 = sub_20D5672F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v64[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 tipPopoverController];
  if (v5)
  {

    sub_20D567EA8();
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    sub_20D565868();
    return;
  }

  v6 = [v0 navigationController];
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = v6;
  v8 = [v6 viewControllers];

  sub_20CECF940(0, &qword_28111FF50);
  v9 = sub_20D567A78();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (!sub_20D568768())
  {
    goto LABEL_42;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x20F31DD20](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  v9 = v0;
  v12 = sub_20D5683F8();

  if ((v12 & 1) == 0)
  {
    goto LABEL_43;
  }

  v13 = [v9 navigationController];
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = v13;
  v15 = [v13 viewControllers];

  v16 = sub_20D567A78();
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

LABEL_52:
  v17 = sub_20D568768();
LABEL_17:

  if (v17 == 1)
  {
    if (qword_28111FAE0 != -1)
    {
      swift_once();
    }

    v18 = qword_281120C10;
    v19 = sub_20D567EC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20CEB6000, v18, v19, "Presenting HomeEnergyTip", v20, 2u);
      MEMORY[0x20F31FC70](v20, -1, -1);
    }

    v21 = [v9 energyIndicatorViewController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 view];
      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = v23;
      if ([v22 isBeingDismissed])
      {

LABEL_26:
        v63 = v22;
        v25 = sub_20D567EC8();
        if (os_log_type_enabled(v18, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v64[0] = v28;
          *v26 = 136315906;
          v29 = v9;
          v30 = [v29 description];
          v31 = sub_20D567838();
          v33 = v32;

          v34 = sub_20CEE913C(v31, v33, v64);

          *(v26 + 4) = v34;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_20CEE913C(0x54746E6573657270, 0xEC00000029287069, v64);
          *(v26 + 22) = 2112;
          v35 = [v63 view];
          *(v26 + 24) = v35;
          *v27 = v35;
          *(v26 + 32) = 1024;
          LODWORD(v34) = [v63 isBeingDismissed];

          *(v26 + 34) = v34;
          _os_log_impl(&dword_20CEB6000, v18, v25, "%s - %s :  Not presenting Energy tip. energyIndicatorVC.view = %@ | isBeingDismissed =  %{BOOL}d", v26, 0x26u);
          sub_20CEF928C(v27, &unk_27C81BE60);
          MEMORY[0x20F31FC70](v27, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x20F31FC70](v28, -1, -1);
          MEMORY[0x20F31FC70](v26, -1, -1);
        }

        else
        {

          v45 = v63;
        }

        return;
      }

      (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
      sub_20D567388();
      sub_20D566358();
      if (qword_281120898 != -1)
      {
        swift_once();
      }

      v47 = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip);
      v46 = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip + 8);
      v64[3] = &type metadata for HomeEnergyTip;
      v64[4] = sub_20CF64678();
      v64[0] = v47;
      v64[1] = v46;
      sub_20D5663C8();
      v48 = v24;
      v49 = sub_20D566368();
      swift_unknownObjectRetain();
      sub_20D566348();
      v50 = v49;
      v51 = [v50 view];
      if (v51)
      {
        v52 = v51;
        sub_20CECF940(0, &qword_28111FB60);

        v53 = sub_20D568348();
        [v52 setTintColor_];

        v54 = sub_20D566338();
        if (v54)
        {
          v55 = v54;
          [v54 setPermittedArrowDirections_];
        }

        v56 = sub_20D566338();
        if (v56)
        {
          v57 = v56;
          v58 = [v9 view];
          sub_20CF7B3FC(v58);

          sub_20CECF940(0, &qword_28111FB70);
          v59 = sub_20D567A58();

          [v57 setPassthroughViews_];
        }

        [v9 presentViewController:v50 animated:1 completion:0];
        [v9 setTipPopoverController_];

        return;
      }

      __break(1u);
LABEL_54:
      JUMPOUT(0x20F31FC70);
    }

    v36 = sub_20D567EC8();
    if (os_log_type_enabled(v18, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64[0] = v38;
      *v37 = 136315394;
      v39 = v9;
      v40 = [v39 description];
      v41 = sub_20D567838();
      v43 = v42;

      v44 = sub_20CEE913C(v41, v43, v64);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_20CEE913C(0x54746E6573657270, 0xEC00000029287069, v64);
      _os_log_impl(&dword_20CEB6000, v18, v36, "(%s - %s): Not presenting energy tip because energyIndicatorVC is nil.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v38, -1, -1);
      MEMORY[0x20F31FC70](v37, -1, -1);
    }

    return;
  }

LABEL_43:
  if (qword_28111FAE0 != -1)
  {
    swift_once();
  }

  v60 = qword_281120C10;
  v61 = sub_20D567EC8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_20CEB6000, v60, v61, "Energy tip should only be displayed on the root view controller, not in any child view controllers.", v62, 2u);

    goto LABEL_54;
  }
}

Swift::Void __swiftcall HUDashboardViewController.dismissTip()()
{
  v1 = v0;
  v2 = [v0 tipPopoverController];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 presentedViewController];
    if (v4)
    {
      v5 = v4;
      sub_20CECF940(0, &qword_28111FF50);
      v10 = v3;
      v6 = sub_20D5683F8();

      if (v6)
      {
        if (qword_28111FAE0 != -1)
        {
          swift_once();
        }

        v7 = qword_281120C10;
        v8 = sub_20D567EC8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20CEB6000, v7, v8, "Dismissing HomeEnergyTip", v9, 2u);
          MEMORY[0x20F31FC70](v9, -1, -1);
        }

        [v10 dismissViewControllerAnimated:1 completion:0];
        [v1 setTipPopoverController_];

        return;
      }
    }
  }

  sub_20D567EA8();
  if (qword_28111FAE0 != -1)
  {
    swift_once();
  }

  sub_20D565868();
}

Swift::Void __swiftcall HUDashboardViewController.popoverPresentationControllerDidDismissPopover(_:)(UIPopoverPresentationController a1)
{
  v2 = v1;
  v3 = [v1 tipPopoverController];
  if (v3)
  {

    v4 = [v1 tipPopoverController];
    if (v4)
    {
      v5 = v4;
      sub_20CECF940(0, &qword_28111FB10);
      v6 = sub_20D5683F8();

      if (v6)
      {

        [v2 setTipPopoverController_];
      }
    }
  }
}

uint64_t sub_20CF645C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CF62258(a1, v4, v5, v6);
}

unint64_t sub_20CF64678()
{
  result = qword_2811208B8;
  if (!qword_2811208B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811208B8);
  }

  return result;
}

uint64_t sub_20CF646CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF6473C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF5FFC;

  return sub_20CF20B48(a1, v4);
}

Swift::Void __swiftcall UINavigationController.proxyPopViewController()()
{
  v1 = v0;
  v2 = sub_20D567718();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  sub_20D567FF8();

  LOBYTE(v6) = sub_20D5676E8();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = [v1 traitCollection];
    sub_20D567FF8();

    sub_20D567708();
    v7(v5, v2);
  }

  else
  {
  }
}

void sub_20CF64960(void *a1)
{
  v1 = a1;
  UINavigationController.proxyPopViewController()();
}

Swift::Void __swiftcall UINavigationController.proxyPushViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  v3 = v2;
  v17 = animated;
  v18 = _;
  v4 = sub_20D564E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20D567718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v2 traitCollection];
  sub_20D567FF8();

  LOBYTE(v12) = sub_20D5676E8();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    v14 = v18;
    sub_20D564EA8();
    v15 = [v3 traitCollection];
    sub_20D567FF8();

    sub_20CF64BD0();
    sub_20D5676F8();
    v13(v11, v8);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    [v3 pushViewController:v18 animated:v17];
  }
}

unint64_t sub_20CF64BD0()
{
  result = qword_27C81D800;
  if (!qword_27C81D800)
  {
    sub_20D564E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D800);
  }

  return result;
}

void sub_20CF64C28(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  UINavigationController.proxyPushViewController(_:animated:)(v6, a4);
}

uint64_t sub_20CF64C98(uint64_t a1)
{
  v2 = sub_20D563418();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_20D563408();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20CF64E98(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF64EF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *UtilityOnboardingEnterOTP.init(context:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate] = 0;
  v4 = &v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_otpCode];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeLengthMax];
  *v5 = 0;
  v5[8] = 1;
  *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_nextButton] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_orientationNotificationObserver] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_onboardingContext] = a1;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = objc_allocWithZone(MEMORY[0x277D75BB8]);
  v11 = a1;
  v12 = [v10 initWithFrame_];
  *&v2[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField] = v12;
  v13 = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton] = v13;
  swift_getKeyPath();
  aBlock = v11;
  sub_20CF6B6B0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v14 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v15 = *&v11[v14];
  if (v15)
  {
    v16 = v15;
    v17 = sub_20D564BC8();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      *v5 = v17;
      v5[8] = 0;
    }
  }

  swift_getKeyPath();
  aBlock = v11;
  sub_20D563908();

  v20 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__selectedOTPMethod;
  swift_beginAccess();
  v21 = *&v11[v20];
  if (!v21)
  {
LABEL_8:
    v25 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_10;
  }

  v22 = v21;
  v23 = sub_20D564E18();

  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0xE300000000000000;
      v25 = 5459283;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v24 = 0xE500000000000000;
  v25 = 0x4C49414D45;
LABEL_10:

  if ((v24 & 0x700000000000000) != 0)
  {
    aBlock = v25;
    v60 = v24;
    v26 = MEMORY[0x277D837D0];
    v66 = sub_20D567988();
    v67 = v27;
    sub_20D5678F8();

    v28 = sub_20D5677F8();
    v29 = HULocalizedString(v28);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20D5BC410;
    v31 = sub_20D5677F8();

    v32 = HULocalizedString(v31);

    v33 = sub_20D567838();
    v35 = v34;

    *(v30 + 56) = v26;
    *(v30 + 64) = sub_20CED4498();
    *(v30 + 32) = v33;
    *(v30 + 40) = v35;
    sub_20D567808();
  }

  else
  {

    v36 = sub_20D5677F8();
    v37 = HULocalizedString(v36);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20D5BC410;
    swift_getKeyPath();
    aBlock = v11;
    sub_20D563908();

    v39 = *&v11[v14];
    if (v39)
    {
      v40 = v39;
      v41 = sub_20D564C08();
      if (!v42)
      {
        v41 = sub_20D564BE8();
      }

      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_20CED4498();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v46 = 0xE000000000000000;
    if (v44)
    {
      v46 = v44;
    }

    *(v38 + 32) = v45;
    *(v38 + 40) = v46;
    sub_20D567808();
  }

  v47 = sub_20D5677F8();
  v48 = HULocalizedString(v47);

  if (!v48)
  {
    sub_20D567838();
    v48 = sub_20D5677F8();
  }

  v49 = sub_20D5677F8();

  v65.receiver = v2;
  v65.super_class = type metadata accessor for UtilityOnboardingEnterOTP();
  v50 = objc_msgSendSuper2(&v65, sel_initWithTitle_detailText_icon_contentLayout_, v48, v49, 0, 2);

  v51 = [objc_opt_self() currentDevice];
  v52 = [v51 userInterfaceIdiom];

  if (v52 == 1)
  {
    v53 = [objc_opt_self() defaultCenter];
    v54 = *MEMORY[0x277D76878];
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = sub_20CF6B5C8;
    v64 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_20CF64C98;
    v62 = &block_descriptor_8;
    v56 = _Block_copy(&aBlock);

    v57 = [v53 addObserverForName:v54 object:0 queue:0 usingBlock:v56];

    _Block_release(v56);
  }

  else
  {

    v57 = 0;
  }

  *&v50[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_orientationNotificationObserver] = v57;
  swift_unknownObjectRelease();
  return v50;
}

void sub_20CF65778()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27C838280;
  sub_20D565998();
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, v6, "Received notification for updated iPad orientation", v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_20CF6A8D8();
  }
}

void sub_20CF6594C()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for UtilityOnboardingEnterOTP();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v2 = [v0 headerView];
  v3 = [v2 subviews];

  if (!v3)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v3 = sub_20D567A58();
  }

  v4 = objc_opt_self();
  v5 = sub_20D567738();

  [v4 setAccessibilityIDForViews:v3 withIDDictionary:v5];

  v6 = *&v0[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_onboardingContext];
  v7 = [v1 headerView];
  sub_20CEE70AC(v7);

  sub_20CF6A668();
  v8 = *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_nextButton];
  if (v8)
  {
    [v8 setEnabled_];
  }

  v9 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField;
  v10 = *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D858);
  inited = swift_initStackObject();
  v12 = *MEMORY[0x277D741E0];
  *(inited + 32) = *MEMORY[0x277D741E0];
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = 0x4036000000000000;
  v13 = v10;
  v14 = v12;
  sub_20CEF488C(inited);
  swift_setDeallocating();
  sub_20CEF928C(inited + 32, &qword_27C81C270);
  type metadata accessor for Key(0);
  sub_20CF6B6B0(&qword_28111FE70, type metadata accessor for Key);
  v15 = sub_20D567738();

  [v13 setDefaultTextAttributes_];

  v68 = [objc_opt_self() monospacedSystemFontOfSize:38.0 weight:*MEMORY[0x277D74420]];
  [*&v1[v9] setFont_];
  v16 = *&v1[v9];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = [v19 colorWithAlphaComponent_];

  [v18 setTextColor_];
  v21 = *&v1[v9];
  v22 = [v17 tertiarySystemFillColor];
  [v21 setBackgroundColor_];

  v23 = [*&v1[v9] layer];
  [v23 setCornerRadius_];

  [*&v1[v9] setTextAlignment_];
  [*&v1[v9] setKeyboardType_];
  [*&v1[v9] setTextContentType_];
  v24 = *&v1[v9];
  v25 = sub_20D5677F8();
  [v24 setAccessibilityIdentifier_];

  [*&v1[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v9] setDelegate_];
  v26 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton;
  [*&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v26] addTarget:v1 action:sel_resendCode_ forControlEvents:64];
  v27 = *&v1[v26];
  v28 = sub_20D5677F8();
  v29 = HULocalizedString(v28);

  if (!v29)
  {
    sub_20D567838();
    v29 = sub_20D5677F8();
  }

  [v27 setTitle:v29 forState:0];

  v30 = *&v1[v26];
  v31 = sub_20D5677F8();
  [v30 setAccessibilityIdentifier_];

  v32 = [v1 contentView];
  [v32 addSubview_];

  v33 = [v1 contentView];
  [v33 addSubview_];

  sub_20CF6A8D8();
  v67 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20D5BFA40;
  v35 = [*&v1[v9] topAnchor];
  v36 = [v1 contentView];
  v37 = [v36 &selRef_unsupportedTriggers];

  v38 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v38;
  v39 = [*&v1[v9] bottomAnchor];
  v40 = [v1 contentView];
  v41 = [v40 bottomAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:80.0];
  *(v34 + 40) = v42;
  v43 = [*&v1[v9] leadingAnchor];
  v44 = [v1 contentView];
  v45 = [v44 &selRef_layerWithVibrantColor_tintColor_filterType_filterAttributes_ + 1];

  v46 = [v43 constraintEqualToAnchor_];
  *(v34 + 48) = v46;
  v47 = [*&v1[v9] trailingAnchor];
  v48 = [v1 contentView];
  v49 = [v48 &selRef_updateAllBarButton + 4];

  v50 = [v47 constraintEqualToAnchor_];
  *(v34 + 56) = v50;
  v51 = [*&v1[v26] topAnchor];
  v52 = [*&v1[v9] bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:10.0];

  *(v34 + 64) = v53;
  v54 = [*&v1[v26] centerXAnchor];
  v55 = [v1 contentView];
  v56 = [v55 centerXAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v34 + 72) = v57;
  v58 = [*&v1[v26] leadingAnchor];
  v59 = [v1 contentView];
  v60 = [v59 leadingAnchor];

  v61 = [v58 &selRef:v60 connectedServicesSectionFooterLink:? isForAccessory:? + 5];
  *(v34 + 80) = v61;
  v62 = [*&v1[v26] trailingAnchor];
  v63 = [v1 contentView];
  v64 = [v63 trailingAnchor];

  v65 = [v62 &selRef:v64 connectedServicesSectionFooterLink:? isForAccessory:? + 5];
  *(v34 + 88) = v65;
  sub_20CECF940(0, &qword_28111FEC0);
  v66 = sub_20D567A58();

  [v67 activateConstraints_];
}

id sub_20CF664A4(char a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityOnboardingEnterOTP();
  v26.receiver = v2;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, sel_viewWillDisappear_, a1 & 1);
  v9 = *&v2[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_orientationNotificationObserver];
  if (v9)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    [v11 removeObserver_];
    swift_unknownObjectRelease();
  }

  result = [v2 isMovingFromParentViewController];
  if (result)
  {
    v13 = sub_20D564B68();
    v25[3] = v13;
    v25[4] = sub_20CF6B6B0(&qword_27C81BEB0, MEMORY[0x277D073A0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v13);
    LOBYTE(v13) = sub_20D563968();
    __swift_destroy_boxed_opaque_existential_1(v25);
    if (v13)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v15 = qword_27C838280;
      sub_20D565998();
      v16 = v2;
      v17 = sub_20D565968();
      v18 = sub_20D567EC8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25[0] = v21;
        *v19 = 138412546;
        *(v19 + 4) = v16;
        *v20 = v16;
        *(v19 + 12) = 2080;
        v22 = v16;
        *(v19 + 14) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D01E0, v25);
        _os_log_impl(&dword_20CEB6000, v17, v18, "%@:%s Tapped BACK button", v19, 0x16u);
        sub_20CEF928C(v20, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x20F31FC70](v21, -1, -1);
        MEMORY[0x20F31FC70](v19, -1, -1);
      }

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v23 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
      swift_beginAccess();
      result = *&v2[v23];
      if (result)
      {
        return [result viewControllerDidGoBack_];
      }
    }
  }

  return result;
}

uint64_t sub_20CF66910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27C838280;
  sub_20D565998();
  v9 = v0;
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_20CEE913C(0x6F43646E65736572, 0xEE00293A5F286564, &v23);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%@:%s Sending another code", v12, 0x16u);
    sub_20CEF928C(v13, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = sub_20D567C58();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_20D567C18();
  v17 = v9;
  v18 = sub_20D567C08();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  sub_20CF18960(0, 0, v3, &unk_20D5BFB50, v19);
}

uint64_t sub_20CF66C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_20D565988();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = sub_20D567C18();
  v4[28] = sub_20D567C08();
  v7 = sub_20D567BA8();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_20CF66D40, v7, v6);
}

uint64_t sub_20CF66D40()
{
  v1 = v0[23];
  v0[21] = MEMORY[0x277D84F98];
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v3 = [v1 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v3 setRightBarButtonItem_];

  [v2 startAnimating];
  v5 = [v1 navigationItem];
  [v5 setHidesBackButton_];

  [*&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_resendCodeButton] setEnabled_];
  v6 = *&v1[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_onboardingContext];
  v0[31] = v6;
  v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_20CF66EE0;

  return sub_20CEE0F64();
}

uint64_t sub_20CF66EE0(char a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_20CF6767C;
  }

  else
  {

    *(v4 + 304) = a1 & 1;
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_20CF67014;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20CF67014()
{
  v29 = v0;
  if (*(v0 + 304))
  {
    v1 = sub_20CF67330;
  }

  else
  {
    sub_20CEF5CA0();
    v2 = swift_allocError();
    *v3 = 13;
    swift_willThrow();
    *(v0 + 280) = v2;
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v4 = qword_27C838280;
    sub_20D565998();
    v5 = sub_20D565968();
    v6 = sub_20D567EA8();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20CEE913C(0x6F43646E65736572, 0xEE00293A5F286564, &v28);
      _os_log_impl(&dword_20CEB6000, v5, v6, "%s Requesting another OTP failed", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x20F31FC70](v12, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v13 = sub_20D567838();
    v15 = v14;
    swift_getErrorValue();
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    *(v0 + 40) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    sub_20CEC80B0((v0 + 16), (v0 + 48));
    v19 = *(v0 + 168);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v19;
    sub_20CEEF74C((v0 + 48), v13, v15, isUniquelyReferenced_nonNull_native);

    v21 = v28;
    *(v0 + 168) = v28;
    v22 = sub_20D567838();
    v24 = v23;
    *(v0 + 104) = MEMORY[0x277D83E88];
    *(v0 + 80) = 13;
    sub_20CEC80B0((v0 + 80), (v0 + 112));
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v21;
    sub_20CEEF74C((v0 + 112), v22, v24, v25);

    v26 = v28;
    *(v0 + 288) = v28;
    *(v0 + 168) = v26;
    v1 = sub_20CF674C8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20CF67330()
{
  *(v0 + 272) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF673BC, v2, v1);
}

void sub_20CF673BC()
{
  v1 = v0[33];
  v2 = v0[23];

  sub_20CF67958(v2);
  if (v1)
  {
  }

  else
  {
    v3 = v0[29];
    v4 = v0[30];

    MEMORY[0x2822009F8](sub_20CF67460, v3, v4);
  }
}

uint64_t sub_20CF67460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CF674C8()
{
  *(v0 + 296) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF67554, v2, v1);
}

uint64_t sub_20CF67554()
{
  v1 = v0[23];

  sub_20CF67A6C((v0 + 21), v1);
  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822009F8](sub_20CF67600, v2, v3);
}