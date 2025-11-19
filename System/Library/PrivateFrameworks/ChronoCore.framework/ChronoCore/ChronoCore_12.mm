void *sub_224B2F374(void *result, void *a2, uint64_t a3, uint64_t a4)
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

        goto LABEL_24;
      }

      v11 += 2;

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

id sub_224B2F4CC(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_224DAF7E8();
  sub_224DAF538();
  sub_224A439BC(&unk_2813509A0, MEMORY[0x277CFA140]);
  result = sub_224DAF1F8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_224DAF878())
      {
        goto LABEL_30;
      }

      sub_224DAF538();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_224B2F73C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B2FA18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  v38 = a4;
  v21 = *(a4 + 64);
  v20 = a4 + 64;
  v19 = v21;
  v22 = -1 << *(v20 - 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v38;
    a1[1] = v20;
    a1[2] = ~v22;
    a1[3] = v25;
    a1[4] = v24;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    result = 0;
    v25 = 0;
    v34 = v22;
    v26 = (63 - v22) >> 6;
    v27 = 1;
    while (v24)
    {
LABEL_14:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      a1 = *(v37 + 72);
      sub_224B313D0(*(v38 + 56) + a1 * (v30 | (v25 << 6)), v15, a6);
      sub_224B31438(v15, v18, a6);
      sub_224B31438(v18, a2, a6);
      if (v27 == v36)
      {
        a1 = v35;
        a3 = v36;
        goto LABEL_23;
      }

      a2 += a1;
      result = v27;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v28 = v25;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v29 >= v26)
      {
        break;
      }

      v24 = *(v20 + 8 * v29);
      ++v28;
      if (v24)
      {
        v25 = v29;
        goto LABEL_14;
      }
    }

    v24 = 0;
    if (v26 <= v25 + 1)
    {
      v32 = v25 + 1;
    }

    else
    {
      v32 = v26;
    }

    v25 = v32 - 1;
    a3 = result;
    a1 = v35;
LABEL_23:
    v22 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B2FC64(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v10 = v21 & *(v4 + 64);
    v23 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_224DAFA68();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_224DAFB18())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for WidgetRendererSession();
      swift_dynamicCast();
      result = v25;
      v15 = v11;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v13 == v24)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v22 = v11 + 1;
  }

  else
  {
    v22 = v12;
  }

  v15 = v22 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v23;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_224B2FE70(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_224DAF7E8();
  type metadata accessor for EmptyKey();
  sub_224A439BC(&qword_27D6F3798, type metadata accessor for EmptyKey);
  result = sub_224DAF1F8();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_224DAF878())
      {
        goto LABEL_30;
      }

      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_224B300B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        v25 = v19;

        goto LABEL_23;
      }

      v11 += 3;
      v22 = v19;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B30250(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 56);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_224B304F8()
{
  v1 = *(v0 + 40);
  sub_224DAFE68();
  v2 = sub_224DAFEA8();
  return sub_224AA27D0(v2);
}

uint64_t sub_224B30540(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v59 = a5;
  v46 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v7 = *(*(v56 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v62 = sub_224DAE438();
  v12 = *(*(v62 - 8) + 64);
  result = MEMORY[0x28223BE20](v62);
  v61 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v57 = a4;
  v58 = a3;
  v17 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v49 = (v18 + 63) >> 6;
  v52 = v14 + 16;
  v53 = v14;
  v54 = v11;
  v51 = v14 + 8;
  while (v20)
  {
    v22 = v11;
    v23 = __clz(__rbit64(v20));
    v60 = (v20 - 1) & v20;
LABEL_12:
    v26 = v23 | (v16 << 6);
    v27 = v58[7];
    v28 = (v58[6] + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = v53;
    v32 = *(v53 + 72);
    v50 = v26;
    v33 = *(v53 + 16);
    v34 = v61;
    v35 = v62;
    v33(v61, v27 + v32 * v26, v62);
    *v22 = v30;
    *(v22 + 1) = v29;
    v36 = v56;
    v33(&v22[*(v56 + 48)], v34, v35);
    v37 = v55;
    sub_224B30F7C(v22, v55);
    v38 = *(v37 + 8);
    swift_bridgeObjectRetain_n();

    v39 = *(v36 + 48);
    v40 = sub_224DAE3F8();
    v42 = v41;
    v43 = *(v31 + 8);
    v43(v37 + v39, v35);
    if (v40 == v57 && v42 == v59)
    {

      v11 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v43(v61, v62);

      v20 = v60;
      goto LABEL_15;
    }

    v21 = sub_224DAFD88();

    v11 = v54;
    sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
    v43(v61, v62);

    v20 = v60;
    if (v21)
    {
LABEL_15:
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_224B2C754(v46, v45, v47, v58, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
      }
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v49)
    {
      return sub_224B2C754(v46, v45, v47, v58, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
    }

    v25 = *(v48 + 8 * v16);
    ++v24;
    if (v25)
    {
      v22 = v11;
      v23 = __clz(__rbit64(v25));
      v60 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B30938(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v58 = a5;
  v59 = a4;
  v46 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v6 = *(*(v56 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v45 - v9);
  v11 = sub_224DAE438();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a3;
  v18 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v49 = (v19 + 63) >> 6;
  v52 = v14 + 2;
  v53 = v16;
  v62 = v14;
  v54 = v10;
  v51 = v14 + 1;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v61 = (v21 - 1) & v21;
LABEL_12:
    v26 = v23 | (v17 << 6);
    v27 = v57[7];
    v28 = (v57[6] + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v62[9];
    v50 = v26;
    v32 = v62[2];
    v33 = v11;
    v32(v16, v27 + v31 * v26, v11);
    *v10 = v29;
    v10[1] = v30;
    v34 = v56;
    v32(v10 + *(v56 + 48), v16, v11);
    v35 = v10;
    v36 = v55;
    sub_224B30F7C(v35, v55);
    v37 = *(v36 + 8);
    v60 = v30;
    swift_bridgeObjectRetain_n();

    v38 = *(v34 + 48);
    v39 = sub_224DAE3F8();
    v41 = v40;
    v42 = v62[1];
    v43 = v36 + v38;
    v11 = v33;
    v42(v43, v33);
    if (v39 == v59 && v41 == v58)
    {

      v10 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v16 = v53;
      v42(v53, v33);

      v21 = v61;
    }

    else
    {
      v22 = sub_224DAFD88();

      v10 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v16 = v53;
      v42(v53, v33);

      v21 = v61;
      if ((v22 & 1) == 0)
      {
        *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v47++, 1))
        {
          __break(1u);
          return sub_224B2C754(v46, v45, v47, v57, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
        }
      }
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v49)
    {
      return sub_224B2C754(v46, v45, v47, v57, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
    }

    v25 = *(v48 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v61 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_224B30D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_224B30D98(a1, a2, a3, sub_224B30938, sub_224B30938);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_224B30D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v16 = sub_224B2C678(v19, v13, a1, a2, a3, a5);
      MEMORY[0x22AA5EED0](v19, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v15);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = a4(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_224B30F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B30FEC(uint64_t a1)
{
  v2 = type metadata accessor for ReloadRequestKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B31048(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a1;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  v17 = sub_224A438E8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B26F48(MEMORY[0x277CC95F0], &qword_27D6F3950, &qword_224DB4748);
      goto LABEL_9;
    }

    sub_224B105B0(v20, a3 & 1);
    v23 = *a4;
    v24 = sub_224A438E8(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *a4;
  if (v21)
  {
    v28 = (v27[7] + 16 * v17);
    v29 = *v28;
    *v28 = v32;
    v28[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v11 + 16))(v14, a2, v10);
    return sub_224B3124C(v17, v14, v26, v27, v31, a6);
  }
}

uint64_t sub_224B3124C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_224DA9908();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_224B31368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B313D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B31438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B314A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B31520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  __swift_allocate_value_buffer(v0, qword_281365440);
  v1 = __swift_project_value_buffer(v0, qword_281365440);
  sub_224B31578(v1);
}

void sub_224B31578(uint64_t a1@<X8>)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v41 = 0;
  v8 = [v7 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v41];

  v9 = v41;
  if (v8)
  {
    sub_224DA9638();
    v10 = v9;

    sub_224DA9608();
    (*(v3 + 8))(v6, v2);
    (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v11 = v41;
    v12 = sub_224DA9528();

    swift_willThrow();
    v41 = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224AD1978();
    if (swift_dynamicCast())
    {

      v14 = v40;
      if (qword_281351400 != -1)
      {
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281364D18);
      v16 = v14;
      v17 = sub_224DAB228();
      v18 = sub_224DAF298();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v42[0] = v39;
        *v19 = 136446722;
        v20 = [v16 domain];
        v21 = sub_224DAEE18();
        v23 = v22;

        v24 = sub_224A33F74(v21, v23, v42);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2050;
        v25 = [v16 code];

        *(v19 + 14) = v25;
        *(v19 + 22) = 2114;
        *(v19 + 24) = v16;
        v26 = v38;
        *v38 = v16;
        v16 = v16;
        _os_log_impl(&dword_224A2F000, v17, v18, "Couldn't access old chrono path: (%{public}s: %{public}ld): %{public}@", v19, 0x20u);
        sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v26, -1, -1);
        v27 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x22AA5EED0](v27, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      else
      {
      }

      (*(v3 + 56))(a1, 1, 1, v2);
    }

    else
    {

      if (qword_281351400 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281364D18);
      v29 = v12;
      v30 = sub_224DAB228();
      v31 = sub_224DAF298();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138543362;
        v34 = v12;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_224A2F000, v30, v31, "Couldn't access old chrono path: %{public}@", v32, 0xCu);
        sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v33, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);
      }

      else
      {
      }

      (*(v3 + 56))(a1, 1, 1, v2);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224B31AF8()
{
  v48 = sub_224DABD78();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v45 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v46 = v15;
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  sub_224DA9CA8();
  v37 = v6;
  v36 = v8 + 56;
  v52 = v7;
  v42 = v8 + 16;
  v43 = v8 + 32;
  v40 = (v0 + 104);
  v39 = *MEMORY[0x277CF98D8];
  v44 = (v8 + 8);
  v38 = *(v8 + 56);
  v51 = 4;
  *&v18 = 138543362;
  v34 = v18;
  v50 = 100000;
  v35 = v8;
  v41 = v14;
  v38(v6, 0, 1, v7);
  v19 = *(v8 + 32);
  v19(v17, v6, v7);
  sub_224DA9608();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DA0, &unk_224DB4A10) + 48);
  v21 = *(v8 + 16);
  v22 = v14;
  v23 = v47;
  v21(v47, v22, v7);
  *&v23[v20] = 1;
  (*v40)(v23, v39, v48);
  v24 = v45;
  v25 = v17;
  v21(v45, v17, v52);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v49;
  v28 = v24;
  v29 = v52;
  v19((v27 + v26), v28, v52);
  v30 = sub_224DABBD8();
  v31 = *v44;
  v32 = v30;
  (*v44)(v41, v29);
  v31(v25, v29);
  return v32;
}

void sub_224B321FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v4 = sub_224DAF128();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224B324C4(a3);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  sub_224DABC18();
  sub_224DAF0F8();
  *(swift_allocObject() + 16) = v9;
  v9;
  sub_224DABBF8();

  (*(v5 + 8))(v8, v4);
  sub_224DAF2F8();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD00000000000002CLL, 0x8000000224DC5F40);
  v10[1] = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
  sub_224DAFA48();
  sub_224DAFB58();
  __break(1u);
}

void sub_224B32450(uint64_t a1)
{
  v3 = *(sub_224DA9688() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_224B321FC(a1, v4, v5);
}

void sub_224B324C4(uint64_t a1)
{
  v96[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v87 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v81 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v81 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v81 - v13;
  v89 = objc_opt_self();
  v15 = [v89 defaultManager];
  v16 = sub_224DA95F8();
  v96[0] = 0;
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v96];

  v18 = v96[0];
  if (v17)
  {
    v19 = sub_224DAF008();
    v20 = v18;

    v22 = v19;
    v23 = *(v19 + 16);
    if (v23)
    {
      v25 = v3 + 16;
      v24 = *(v3 + 16);
      v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v81[1] = v22;
      v27 = v22 + v26;
      v94 = *(v25 + 56);
      v95 = (v25 - 8);
      *&v21 = 136446210;
      v86 = v21;
      *&v21 = 136446466;
      v82 = v21;
      v88 = v25;
      v91 = v24;
      v92 = v12;
      v24(v14, (v22 + v26), v2);
      while (1)
      {
        sub_224DA95E8();
        v28 = sub_224DAEEF8();

        if (v28)
        {
          if (qword_281351438 != -1)
          {
            swift_once();
          }

          v29 = sub_224DAB258();
          v30 = __swift_project_value_buffer(v29, qword_281364D78);
          v24(v12, v14, v2);
          v90 = v30;
          v31 = sub_224DAB228();
          v32 = sub_224DAF2A8();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = v2;
            v35 = swift_slowAlloc();
            v96[0] = v35;
            *v33 = v86;
            sub_224B32DE8();
            v36 = sub_224DAFD28();
            v38 = v37;
            v93 = *v95;
            v93(v92, v34);
            v39 = sub_224A33F74(v36, v38, v96);
            v12 = v92;

            *(v33 + 4) = v39;
            _os_log_impl(&dword_224A2F000, v31, v32, "Removing %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v35);
            v40 = v35;
            v2 = v34;
            MEMORY[0x22AA5EED0](v40, -1, -1);
            MEMORY[0x22AA5EED0](v33, -1, -1);
          }

          else
          {

            v93 = *v95;
            v93(v12, v2);
          }

          v41 = [v89 defaultManager];
          v42 = sub_224DA95F8();
          v96[0] = 0;
          v43 = [v41 removeItemAtURL:v42 error:v96];

          v44 = v96[0];
          if (v43)
          {
            v93(v14, v2);
          }

          else
          {
            v45 = v44;
            v46 = sub_224DA9528();

            swift_willThrow();
            v47 = v87;
            v91(v87, v14, v2);
            v48 = v46;
            v49 = sub_224DAB228();
            v50 = sub_224DAF2A8();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v96[0] = v90;
              *v51 = v82;
              sub_224B32DE8();
              v84 = v49;
              v52 = sub_224DAFD28();
              v53 = v47;
              v55 = v54;
              v83 = v50;
              v56 = v93;
              v93(v53, v2);
              v57 = sub_224A33F74(v52, v55, v96);

              *(v51 + 4) = v57;
              *(v51 + 12) = 2114;
              v58 = v46;
              v59 = _swift_stdlib_bridgeErrorToNSError();
              *(v51 + 14) = v59;
              v60 = v84;
              v61 = v85;
              *v85 = v59;
              _os_log_impl(&dword_224A2F000, v60, v83, "Unable to clean up item at %{public}s: %{public}@", v51, 0x16u);
              sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v61, -1, -1);
              v62 = v90;
              __swift_destroy_boxed_opaque_existential_1(v90);
              MEMORY[0x22AA5EED0](v62, -1, -1);
              MEMORY[0x22AA5EED0](v51, -1, -1);

              v56(v14, v2);
            }

            else
            {

              v63 = v93;
              v93(v47, v2);
              v63(v14, v2);
            }

            v12 = v92;
          }

          v24 = v91;
        }

        else
        {
          (*v95)(v14, v2);
        }

        v27 += v94;
        if (!--v23)
        {
          break;
        }

        v24(v14, v27, v2);
      }
    }
  }

  else
  {
    v64 = v96[0];
    v65 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v66 = sub_224DAB258();
    __swift_project_value_buffer(v66, qword_281364D78);
    (*(v3 + 16))(v9, a1, v2);
    v67 = v65;
    v68 = sub_224DAB228();
    v69 = sub_224DAF2A8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v71 = v2;
      v72 = swift_slowAlloc();
      v96[0] = v72;
      *v70 = 136446466;
      sub_224B32DE8();
      v73 = sub_224DAFD28();
      v75 = v74;
      (*(v3 + 8))(v9, v71);
      v76 = sub_224A33F74(v73, v75, v96);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2114;
      v77 = v65;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v78;
      v79 = v95;
      *v95 = v78;
      _os_log_impl(&dword_224A2F000, v68, v69, "Unable to clean up %{public}s: %{public}@", v70, 0x16u);
      sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x22AA5EED0](v72, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

unint64_t sub_224B32DE8()
{
  result = qword_281351A70;
  if (!qword_281351A70)
  {
    sub_224DA9688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A70);
  }

  return result;
}

uint64_t sub_224B32E48()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-v2];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28135CCF0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_281365440);
  sub_224B330C4(v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_224A3311C(v3, &unk_27D6F4680, &unk_224DB4610);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v11 = [objc_opt_self() defaultManager];
    v12 = sub_224DA95F8();
    v19[0] = 0;
    v13 = [v11 removeItemAtURL:v12 error:v19];

    if (v13)
    {
      v14 = v19[0];
    }

    else
    {
      v15 = v19[0];
      v16 = sub_224DA9528();

      swift_willThrow();
    }

    result = (*(v5 + 8))(v8, v4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224B330C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance CHSPairingState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v2 == 3)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_224B331A4()
{
  result = qword_27D6F3DA8;
  if (!qword_27D6F3DA8)
  {
    type metadata accessor for CHSPairingState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3DA8);
  }

  return result;
}

uint64_t sub_224B331FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 1;
  }

  v4 = *a1;
  if (*a1 == 2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (v4 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_224B33260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  v4 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (v4 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_224B332C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v2 == 3)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_224B3340C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_224B334D4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

unint64_t sub_224B3350C()
{
  result = qword_281351D08[0];
  if (!qword_281351D08[0])
  {
    type metadata accessor for EmptyKey();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281351D08);
  }

  return result;
}

id sub_224B336C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_224B3372C()
{
  v13 = v0;
  ObjectType = swift_getObjectType();
  v1 = sub_224DA9538();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DD8, &qword_224DB4B60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB30F0;
  *(v6 + 32) = sub_224A3B79C(0, &unk_27D6F3DE0, 0x277CBEA60);
  *(v6 + 40) = sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);

  sub_224DAF628();

  if (v22)
  {
    sub_224A739A4(&v21, &v23);
    swift_dynamicCast();
    v8 = v20;
    v9 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    sub_224DAF618();
    sub_224B339F4();
    while (1)
    {
      sub_224DAF738();
      if (!v18)
      {
        break;
      }

      sub_224A739A4(&v17, &v14);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {
        MEMORY[0x22AA5D350]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
        v9 = v19;
      }
    }

    (*(v2 + 8))(v5, v1);
    v11 = v13;
    *&v13[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors] = v9;
    v16.receiver = v11;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_224B339F4()
{
  result = qword_27D6F3DF0;
  if (!qword_27D6F3DF0)
  {
    sub_224DA9538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3DF0);
  }

  return result;
}

id sub_224B33A70()
{
  v1 = *v0;
  v2 = sub_224DAA0D8();
  v3 = [v2 extensionIdentity];

  return v3;
}

uint64_t sub_224B33AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_224DAA0D8();
  a1[3] = sub_224AB43D8();
  result = sub_224B36084(&qword_27D6F3E88, sub_224AB43D8);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_224B33B2C(uint64_t a1)
{
  result = sub_224B36084(&qword_2813518A8, MEMORY[0x277CF9FD8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B33B84()
{
  v1 = v0;
  v2 = sub_224DA9F08();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v0 + v7, v2);
  sub_224B36084(&qword_2813519D8, MEMORY[0x277CF9F40]);
  v9 = sub_224DAEDD8();
  v10 = v3[1];
  result = v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    v36 = v10;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364FE8);

    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v15 = 136446466;
      v34 = v13;
      v16 = *(v1 + 16);
      v17 = sub_224DAA0C8();
      v19 = sub_224A33F74(v17, v18, v38);
      v33 = v14;
      v20 = v8;
      v21 = v19;

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v20(v6, v1 + v7, v2);
      v22 = sub_224DA9EC8();
      v24 = v23;
      v36(v6, v2);
      v25 = sub_224A33F74(v22, v24, v38);
      v8 = v20;

      *(v15 + 14) = v25;
      v13 = v34;
      _os_log_impl(&dword_224A2F000, v34, v33, "[%{public}s] Task priority did change: %{public}s", v15, 0x16u);
      v26 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    sub_224A3317C(*(v1 + 24) + 96, v38);
    v27 = v39;
    v28 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v8(v6, v1 + v7, v2);
    v29 = *(v1 + 16);
    v37[3] = sub_224DAA0F8();
    v37[4] = sub_224B36084(&qword_2813518B0, MEMORY[0x277CF9FD8]);
    v37[0] = v29;
    v30 = *(v28 + 8);
    v31 = *(v30 + 8);

    v31(v6, v37, v27, v30);
    v36(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

void sub_224B33F84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v53 - v4;
  v5 = sub_224DAC2B8();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAD158();
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351620 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281364FE8);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  v15 = os_log_type_enabled(v13, v14);
  v56 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v64[0] = v17;
    *v16 = 136446466;
    v18 = *(v0 + 16);
    v19 = sub_224DAA0C8();
    v21 = sub_224A33F74(v19, v20, v64);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    v23 = v59;
    (*(v59 + 16))(v11, v1 + v22, v8);
    v24 = sub_224DAD008();
    v26 = v25;
    (*(v23 + 8))(v11, v8);
    v27 = sub_224A33F74(v24, v26, v64);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s] Environment modifiers did change: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  v28 = OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion;
  v29 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion);

  sub_224B35158(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E60, &qword_224DB4C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E68, &qword_224DB4C30);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v60, v64);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_224DAF938();

    v62 = 0x536C6F72746E6F43;
    v63 = 0xEF2D6E6F69737365;
    v30 = *(v1 + 16);
    v31 = sub_224DAA0E8();
    [v31 contentType];

    v32 = NSStringFromCHSControlContentType();
    if (v32)
    {
      v33 = v32;
      v34 = sub_224DAEE18();
      v36 = v35;
    }

    else
    {
      v36 = 0xE700000000000000;
      v34 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x22AA5D210](v34, v36);

    MEMORY[0x22AA5D210](45, 0xE100000000000000);
    v37 = sub_224DAA0B8();
    MEMORY[0x22AA5D210](v37);

    v38 = v62;
    v39 = v63;
    sub_224DAA0D8();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
    v41 = v55;
    sub_224DAC298();
    v42 = v65;
    v43 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v44 = (*(v43 + 8))(v41, v38, v39, v42, v43);

    v45 = *(v1 + v28);
    *(v1 + v28) = v44;

    v46 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    (*(v59 + 16))(v11, v1 + v46, v56);
    sub_224DADCB8();

    (*(v57 + 8))(v41, v58);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    sub_224A3311C(v60, &qword_27D6F3E70, &qword_224DB4C38);
  }

  v47 = *(v1 + 16);
  v48 = sub_224DAA0E8();
  v49 = [v48 contentType];

  if (!v49)
  {
    sub_224A3317C(*(v1 + 24) + 16, v64);
    v50 = __swift_project_boxed_opaque_existential_1(v64, v65);
    v51 = sub_224DAA0D8();
    v52 = *v50;
    sub_224C80650(v51);

    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v29)
  {

    sub_224DADCC8();
  }
}

void sub_224B34624(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility;
  if (*(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) != a1)
  {
    v66 = v7;
    v67 = v6;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281364FE8);

    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v68[0] = v15;
      *v14 = 136446466;
      v16 = *(v2 + 16);
      v17 = sub_224DAA0C8();
      v19 = sub_224A33F74(v17, v18, v68);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v20 = *(v2 + v10);
      v21 = sub_224DAF4D8();
      v23 = sub_224A33F74(v21, v22, v68);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_224A2F000, v12, v13, "[%{public}s] Visibility did change: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v15, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    v24 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion);
    if (v24)
    {
      v25 = *(v2 + v10) == 2;
      v26 = *(v24 + 144);
      v27 = *(v26 + 16);
      v28 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion);

      os_unfair_lock_lock(v27);
      sub_224A71EF0(v24, v25);
      os_unfair_lock_unlock(*(v26 + 16));
    }

    v29 = *(v2 + 24);
    sub_224A3317C(v29 + 216, v68);
    v30 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v31 = *(v30 + 24);
    if (sub_224DADA48())
    {
      v32 = *(v2 + 16);
      v33 = sub_224DAA0D8();
      v34 = sub_224DACFB8();
    }

    else
    {
      v34 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v68);
    v35 = *(v2 + v10);
    if (v35 == 2 && v34)
    {
      if ([v34 disablesControlStateCaching])
      {

        v36 = sub_224DAB228();
        v37 = sub_224DAF2A8();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v65 = v29;
          v40 = v39;
          v68[0] = v39;
          *v38 = 136315138;
          v41 = *(v2 + 16);
          v42 = sub_224DAA0C8();
          v44 = sub_224A33F74(v42, v43, v68);

          *(v38 + 4) = v44;
          _os_log_impl(&dword_224A2F000, v36, v37, "[%s] Updating non-cachable control state because we're now visible.", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          v45 = v40;
          v29 = v65;
          MEMORY[0x22AA5EED0](v45, -1, -1);
          MEMORY[0x22AA5EED0](v38, -1, -1);
        }

        v46 = *(v2 + 16);
        v47 = sub_224DAA0E8();
        v48 = [v47 contentType];

        if (!v48)
        {
          sub_224A3317C(v29 + 16, v68);
          v49 = v69;
          v64 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          v50 = sub_224DAA0D8();
          v51 = *MEMORY[0x277CF9BE8];
          v52 = v66;
          v53 = *(v66 + 104);
          v65 = v29;
          v54 = v67;
          v53(v9, v51, v67);
          (*(*(v64 + 8) + 32))(v50, v9, v49);

          v55 = v54;
          v29 = v65;
          (*(v52 + 8))(v9, v55);
          __swift_destroy_boxed_opaque_existential_1(v68);
        }
      }

      v35 = *(v2 + v10);
    }

    if (v35 >= 2)
    {
      if (v35 == 2)
      {
        v57 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession);
        *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
        sub_224B34BBC(v57);
        v58 = *(v2 + 16);
        v59 = sub_224DAA0E8();
        v60 = [v59 contentType];

        if (!v60)
        {
          sub_224A3317C(v29 + 16, v68);
          v61 = __swift_project_boxed_opaque_existential_1(v68, v69);
          v62 = sub_224DAA0D8();
          v63 = *v61;
          sub_224C7E044(v62);

          __swift_destroy_boxed_opaque_existential_1(v68);
          return;
        }
      }
    }

    else
    {
      v56 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession);
      *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
      sub_224B34BBC(v56);
    }
  }
}

void sub_224B34BBC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_224DADAA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) == v3)
  {
    return;
  }

  v10 = *(v1 + 24);
  sub_224A3317C(v10 + 176, &v60);
  v11 = *(&v61 + 1);
  v12 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  v13 = (*(v12 + 24))(256, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  if (!v13)
  {
    return;
  }

  v49 = v9;
  v50 = v8;
  v54 = v5;
  v14 = sub_224A7B208(v13);
  v15 = v14;
  *&v60 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
LABEL_27:
    v58 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_224DAF838();
    v55 = v4;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_28:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v58 = v14 & 0xFFFFFFFFFFFFFF8;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v55 = v4;
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_5:
  v4 = 0;
  v57 = v15 & 0xC000000000000001;
  v17 = MEMORY[0x277D84F90];
  v52 = v13;
  v53 = v10;
  v56 = v16;
  do
  {
    v51 = v17;
    v18 = v4;
    while (1)
    {
      if (v57)
      {
        v19 = MEMORY[0x22AA5DCC0](v18, v15);
      }

      else
      {
        if (v18 >= *(v58 + 16))
        {
          goto LABEL_26;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v10 = v19;
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v20 = [v19 uniqueIdentifier];
      v21 = sub_224DAEE18();
      v13 = v22;

      v23 = *(v2 + 16);
      v24 = sub_224DAA0E8();
      v25 = [v24 configurationIdentifier];

      if (!v25)
      {

        goto LABEL_8;
      }

      v26 = v15;
      v27 = v2;
      v28 = sub_224DAEE18();
      v30 = v29;

      if (v21 == v28 && v13 == v30)
      {
        break;
      }

      v31 = sub_224DAFD88();

      v2 = v27;
      v15 = v26;
      v16 = v56;
      if (v31)
      {
        goto LABEL_20;
      }

LABEL_8:

      ++v18;
      if (v4 == v16)
      {
        v10 = v53;
        v17 = v51;
        goto LABEL_29;
      }
    }

    v2 = v27;
    v15 = v26;
    v16 = v56;
LABEL_20:
    MEMORY[0x22AA5D350](v32);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_224DAF038();
    }

    sub_224DAF078();
    v17 = v60;
    v13 = v52;
    v10 = v53;
  }

  while (v4 != v16);
LABEL_29:

  if (v17 >> 62)
  {
    v47 = sub_224DAF838();
    v35 = v54;
    v34 = v55;
    if (!v47)
    {
      goto LABEL_49;
    }

LABEL_31:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x22AA5DCC0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v36 = *(v17 + 32);
    }

    v37 = v36;

    sub_224A3317C(v10 + 216, &v60);
    v38 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    v39 = *(v38 + 24);
    if (sub_224DADA48())
    {
      v40 = v2;
      v41 = [v37 controlIdentity];
      v42 = sub_224DACFB8();

      __swift_destroy_boxed_opaque_existential_1(&v60);
      if (!v42)
      {

        return;
      }

      [v42 supportsPush];
      sub_224DAF5B8();
      swift_beginAccess();
      if (*(v10 + 45))
      {
        sub_224A3317C(v10 + 336, &v60);
        if (*(&v61 + 1))
        {
LABEL_38:
          sub_224A3317C(&v60, v59);
          if (*(&v61 + 1))
          {
            __swift_destroy_boxed_opaque_existential_1(&v60);
          }

          __swift_project_boxed_opaque_existential_1(v59, v59[3]);
          v43 = *(v40 + v49);
          v44 = v50;
          sub_224DAD328();

          (*(v35 + 8))(v44, v34);
          v45 = v59;
          goto LABEL_43;
        }
      }

      else
      {
        v46 = *(v10 + 22);
        v60 = *(v10 + 21);
        v61 = v46;
        v62 = *(v10 + 46);
        if (*(&v46 + 1))
        {
          goto LABEL_38;
        }
      }

      (*(v35 + 8))(v50, v34);

      if (!*(&v61 + 1))
      {
        return;
      }
    }

    else
    {
    }

    v45 = &v60;
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1(v45);
    return;
  }

  v35 = v54;
  v34 = v55;
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_49:
}

uint64_t sub_224B35158@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_224DAA0E8();
  v6 = [v5 contentType];

  v7 = *(v2 + 24);
  if (v6 == 1)
  {
    return sub_224A3317C((v7 + 7), a1);
  }

  v8 = v7[5];
  v9 = v7[6];
  v10 = __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  a1[3] = v8;
  a1[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v12 = *(*(v8 - 8) + 16);

  return v12(boxed_opaque_existential_1, v10, v8);
}

void sub_224B35230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v9 = sub_224DAD158();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351620 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364FE8);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v47 = a4;
    v45 = v19;
    *&v52[0] = v19;
    *v18 = 136446210;
    v20 = *(a1 + 16);
    v21 = sub_224DAA0C8();
    v23 = v10;
    v24 = v13;
    v25 = v9;
    v26 = a5;
    v27 = sub_224A33F74(v21, v22, v52);

    *(v18 + 4) = v27;
    a5 = v26;
    v9 = v25;
    v13 = v24;
    v10 = v23;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s] Initialized", v18, 0xCu);
    v28 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    a4 = v47;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v18;
    a2 = v46;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  (*(v10 + 16))(v13, a2, v9);
  v30 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
  swift_beginAccess();
  (*(v10 + 24))(a1 + v30, v13, v9);
  swift_endAccess();
  sub_224B33F84();
  (*(v10 + 8))(v13, v9);
  v31 = sub_224DAA0D8();
  v32 = [v31 extensionIdentity];

  sub_224A3317C(a4 + 136, v52);
  sub_224A3317C(a4 + 296, &v49);
  type metadata accessor for ExtensionVisibilityAssertion();
  v33 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v34 = swift_allocObject();
  v35 = swift_slowAlloc();
  *v35 = 0;
  *(v34 + 16) = v35;
  v36 = v52[1];
  *(v33 + 24) = v52[0];
  *(v33 + 168) = 0u;
  *(v33 + 184) = 0u;
  *(v33 + 200) = 0u;
  *(v33 + 216) = 0u;
  *(v33 + 232) = 0u;
  *(v33 + 248) = 0u;
  *(v33 + 152) = 0u;
  *(v33 + 257) = 0u;
  *(v33 + 16) = v32;
  *(v33 + 40) = v36;
  *(v33 + 56) = v53;
  *(v33 + 96) = 0;
  *(v33 + 64) = 0u;
  *(v33 + 80) = 0u;
  *(v33 + 136) = v51;
  *(v33 + 144) = v34;
  v37 = v49;
  *(v33 + 120) = v50;
  *(v33 + 104) = v37;
  v38 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion);
  *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = v33;

  sub_224B35158(&v49);
  v39 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v40 = sub_224DAA0D8();
  v41 = *(v39 + 8);
  sub_224DAD858();

  v42 = OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A71D4C(v52, a1 + v42);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v49);
  v43 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility);
  *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = a5;
  sub_224B34624(v43);
}

void sub_224B35664()
{
  if (v0[OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated] == 1)
  {
    v1 = *(v0 + 2);

    v2 = *(v0 + 3);

    v3 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
    v4 = sub_224DA9F08();
    (*(*(v4 - 8) + 8))(&v0[v3], v4);
    v5 = *&v0[OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion];

    v6 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    v7 = sub_224DAD158();
    (*(*(v7 - 8) + 8))(&v0[v6], v7);
    sub_224A3311C(&v0[OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion], &qword_27D6F3AE8, &unk_224DB9600);
    v8 = *&v0[OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion];

    v9 = *(*v0 + 48);
    v10 = *(*v0 + 52);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ControlSession()
{
  result = qword_28135B9A8;
  if (!qword_28135B9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B357FC()
{
  result = sub_224DA9F08();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_224DAD158();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_224B35900()
{
  v1 = OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated;
  if ((*(v0 + OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated) & 1) == 0)
  {
    v2 = v0;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281364FE8);

    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23[0] = v7;
      *v6 = 136446210;
      v8 = *(v0 + 16);
      v9 = sub_224DAA0C8();
      v11 = sub_224A33F74(v9, v10, v23);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_224A2F000, v4, v5, "[%{public}s] Invalidated", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x22AA5EED0](v7, -1, -1);
      MEMORY[0x22AA5EED0](v6, -1, -1);
    }

    *(v2 + v1) = 1;
    v12 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion);
    *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = 0;

    v13 = OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
    swift_beginAccess();
    sub_224A8FA54(v2 + v13, v23);
    if (v24)
    {
      sub_224A3317C(v23, v20);
      sub_224A3311C(v23, &qword_27D6F3AE8, &unk_224DB9600);
      __swift_project_boxed_opaque_existential_1(v20, v21);
      sub_224DAE1F8();
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      sub_224A3311C(v23, &qword_27D6F3AE8, &unk_224DB9600);
    }

    if (*(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion))
    {
      v14 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion);

      sub_224DADCC8();
    }

    sub_224A3317C(*(v2 + 24) + 96, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = *(v2 + 16);
    v21 = sub_224DAA0F8();
    v22 = sub_224B36084(&qword_2813518B0, MEMORY[0x277CF9FD8]);
    v20[0] = v17;
    v18 = *(v16 + 8);
    v19 = *(v18 + 16);

    v19(v20, v15, v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_224B35BF0()
{
  v1 = v0;
  v31 = sub_224DAD158();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DA9F08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_224DAF938();
  v34 = v32;
  v35 = v33;
  MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DC6140);
  v11 = *(v0 + 16);
  v12 = sub_224DAA0B8();
  MEMORY[0x22AA5D210](v12);

  MEMORY[0x22AA5D210](0x6F72746E6F63202CLL, 0xEA00000000003D6CLL);
  v13 = sub_224DAA0E8();
  v14 = [v13 control];

  v15 = [v14 _loggingIdentifier];
  v16 = sub_224DAEE18();
  v18 = v17;

  MEMORY[0x22AA5D210](v16, v18);

  MEMORY[0x22AA5D210](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v19 = sub_224DAA0E8();
  [v19 contentType];

  v20 = sub_224DAF578();
  MEMORY[0x22AA5D210](v20);

  MEMORY[0x22AA5D210](0x69726F697270202CLL, 0xEB000000003D7974);
  v21 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v21, v6);
  sub_224B36084(&qword_27D6F3E78, MEMORY[0x277CF9F40]);
  v22 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v22);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DC6160);
  v23 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility);
  v24 = sub_224DAF4D8();
  MEMORY[0x22AA5D210](v24);

  MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DC6180);
  v25 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v31;
  (*(v2 + 16))(v5, v26, v31);
  sub_224B36084(&qword_27D6F3E80, MEMORY[0x277CF9C60]);
  v28 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v28);

  (*(v2 + 8))(v5, v27);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return v34;
}

uint64_t sub_224B36084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EventReplicatorMessageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7265766F63736964;
  v3 = 0x7974697669746361;
  v4 = 0x73656E656C617473;
  if (v1 != 4)
  {
    v4 = 7037793;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463617265746E69;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t EventType.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x7463617265746E69;
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0x73656E656C617473;
  }

  v3 = *v0;
  sub_224DAF938();

  MEMORY[0x22AA5D210](v3, v1);
  return 0xD00000000000001BLL;
}

unint64_t sub_224B36294()
{
  v1 = 0x7463617265746E69;
  v2 = 0x73656E656C617473;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_224B36320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224B3D7B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224B36360(uint64_t a1)
{
  v2 = sub_224B36B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3639C(uint64_t a1)
{
  v2 = sub_224B36B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B363D8(uint64_t a1)
{
  v2 = sub_224B36C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B36414(uint64_t a1)
{
  v2 = sub_224B36C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B36450()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  return sub_224DAFEA8();
}

uint64_t sub_224B36494()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  return sub_224DAFEA8();
}

uint64_t sub_224B364E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B36560(uint64_t a1)
{
  v2 = sub_224B36CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3659C(uint64_t a1)
{
  v2 = sub_224B36CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B365D8(uint64_t a1)
{
  v2 = sub_224B36C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B36614(uint64_t a1)
{
  v2 = sub_224B36C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B36650(uint64_t a1)
{
  v2 = sub_224B36BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3668C(uint64_t a1)
{
  v2 = sub_224B36BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E90, &qword_224DB4C40);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E98, &qword_224DB4C48);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EA0, &qword_224DB4C50);
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = v28 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EA8, &qword_224DB4C58);
  v29 = *(v31 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = v28 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EB0, &qword_224DB4C60);
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v39);
  v18 = v28 - v17;
  v19 = v1[1];
  v28[1] = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B36B68();
  sub_224DAFF08();
  switch(v19)
  {
    case 0:
      v41 = 1;
      sub_224B36C64();
      v22 = v39;
      sub_224DAFC98();
      (*(v30 + 8))(v11, v32);
      return (*(v15 + 8))(v18, v22);
    case 1:
      v42 = 2;
      sub_224B36C10();
      v21 = v33;
      v22 = v39;
      sub_224DAFC98();
      v24 = v34;
      v23 = v35;
      goto LABEL_6;
    case 2:
      v43 = 3;
      sub_224B36BBC();
      v21 = v36;
      v22 = v39;
      sub_224DAFC98();
      v24 = v37;
      v23 = v38;
LABEL_6:
      (*(v24 + 8))(v21, v23);
      return (*(v15 + 8))(v18, v22);
  }

  v40 = 0;
  sub_224B36CB8();
  v26 = v39;
  sub_224DAFC98();
  v27 = v31;
  sub_224DAFCC8();
  (*(v29 + 8))(v14, v27);
  return (*(v15 + 8))(v18, v26);
}

unint64_t sub_224B36B68()
{
  result = qword_27D6F3EB8;
  if (!qword_27D6F3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EB8);
  }

  return result;
}

unint64_t sub_224B36BBC()
{
  result = qword_27D6F3EC0;
  if (!qword_27D6F3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EC0);
  }

  return result;
}

unint64_t sub_224B36C10()
{
  result = qword_27D6F3EC8;
  if (!qword_27D6F3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EC8);
  }

  return result;
}

unint64_t sub_224B36C64()
{
  result = qword_27D6F3ED0;
  if (!qword_27D6F3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3ED0);
  }

  return result;
}

unint64_t sub_224B36CB8()
{
  result = qword_27D6F3ED8;
  if (!qword_27D6F3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3ED8);
  }

  return result;
}

uint64_t EventType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EE0, &qword_224DB4C68);
  v62 = *(v71 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EE8, &qword_224DB4C70);
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v69 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EF0, &qword_224DB4C78);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EF8, &qword_224DB4C80);
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F00, &qword_224DB4C88);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_224B36B68();
  v24 = v72;
  sub_224DAFEF8();
  if (!v24)
  {
    v25 = v16;
    v59 = v13;
    v60 = 0;
    v26 = v69;
    v27 = v70;
    v28 = v71;
    v72 = v18;
    v61 = v21;
    v29 = sub_224DAFC78();
    v30 = *(v29 + 16);
    if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
    {
      v33 = sub_224DAF988();
      swift_allocError();
      v35 = v34;
      v36 = v17;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F08, &qword_224DB4C90) + 48);
      *v35 = &type metadata for EventType;
      v38 = v61;
      sub_224DAFC18();
      sub_224DAF978();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v72 + 8))(v38, v36);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    if (*(v29 + 32) <= 1u)
    {
      if (!*(v29 + 32))
      {
        v74 = 0;
        sub_224B36CB8();
        v40 = v60;
        v41 = v61;
        sub_224DAFC08();
        if (v40)
        {
          v42 = *(v72 + 8);
          v43 = v41;
LABEL_21:
          v42(v43, v17);
          goto LABEL_9;
        }

        v55 = v17;
        v56 = v59;
        v48 = sub_224DAFC58();
        v49 = v57;
        (*(v63 + 8))(v25, v56);
        (*(v72 + 8))(v41, v55);
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      v75 = 1;
      sub_224B36C64();
      v50 = v60;
      v45 = v61;
      sub_224DAFC08();
      if (!v50)
      {
        (*(v64 + 8))(v12, v65);
        (*(v72 + 8))(v45, v17);
        swift_unknownObjectRelease();
        v48 = 0;
        v49 = 0;
LABEL_27:
        v44 = v68;
        goto LABEL_28;
      }

      v47 = v72;
LABEL_20:
      v42 = *(v47 + 8);
      v43 = v45;
      goto LABEL_21;
    }

    v44 = v68;
    if (v31 == 2)
    {
      v76 = 2;
      sub_224B36C10();
      v46 = v60;
      v45 = v61;
      sub_224DAFC08();
      v47 = v72;
      if (v46)
      {
        goto LABEL_20;
      }

      (*(v67 + 8))(v26, v66);
      (*(v47 + 8))(v45, v17);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 1;
    }

    else
    {
      v77 = 3;
      sub_224B36BBC();
      v51 = v27;
      v53 = v60;
      v52 = v61;
      sub_224DAFC08();
      v54 = v72;
      v60 = v53;
      if (v53)
      {
        (*(v72 + 8))(v52, v17);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v73);
      }

      (*(v62 + 8))(v51, v28);
      (*(v54 + 8))(v52, v17);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 2;
    }

LABEL_28:
    *v44 = v48;
    v44[1] = v49;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

ChronoCore::EventReplicatorMessageType_optional __swiftcall EventReplicatorMessageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_224DAFBF8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_224B374E4()
{
  result = qword_27D6F3F10;
  if (!qword_27D6F3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F10);
  }

  return result;
}

uint64_t sub_224B37540()
{
  *v0;
  *v0;
  *v0;
  sub_224DAEE78();
}

void sub_224B3765C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x7265766F63736964;
  v5 = 0xEE0068636E75614CLL;
  v6 = 0x7974697669746361;
  v7 = 0xEA00000000007373;
  v8 = 0x73656E656C617473;
  if (v2 != 4)
  {
    v8 = 7037793;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7463617265746E69;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x8000000224DC4510;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore9EventTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_224B377AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224B37808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_224B37858(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventReplicatorMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventReplicatorMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224B37A78(unsigned __int8 a1)
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](a1);
  return sub_224DAFEA8();
}

uint64_t sub_224B37ADC()
{
  sub_224DAFE68();
  sub_224B37A50(v2, *v0);
  return sub_224DAFEA8();
}

void sub_224B37B1C(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v62 = *v6;
  v9 = sub_224DA9908();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v53 - v18;
  v19 = *a2;
  v20 = v6[18];
  v63 = __swift_project_boxed_opaque_existential_1(v6 + 14, v6[17]);
  v21 = a1[4];
  v22 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = "very";
  v52 = *(v20 + 16);
  v23 = v64;
  v24 = v65;
  v25 = sub_224DAAB48();
  if (v23)
  {

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_281365120);
    v28 = v23;
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v32;
      *v31 = 136446210;
      v66 = v23;
      v33 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      v34 = sub_224DAEE28();
      v36 = sub_224A33F74(v34, v35, &v67);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_224A2F000, v29, v30, "Could not encode keys for event replicator: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    v37 = *(v62 + 80);
    v38 = *(v62 + 88);
    type metadata accessor for EventReplicator.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
  }

  else
  {
    v63 = v26;
    v64 = v25;

    v40 = v6[12];
    __swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
    v41 = v59;
    sub_224DAAC68();
    v43 = v60;
    v42 = v61;
    v44 = (*(v60 + 48))(v41, 1, v61);
    sub_224A3311C(v41, &unk_27D6F5630, &unk_224DB34C0);
    if (v44 == 1)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v45 = sub_224DAB258();
      __swift_project_value_buffer(v45, qword_281365120);
      v46 = sub_224DAB228();
      v47 = sub_224DAF288();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_224A2F000, v46, v47, "Cannot send messages until we have a valid local device ID", v48, 2u);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      v49 = *(v62 + 80);
      v50 = *(v62 + 88);
      type metadata accessor for EventReplicator.Error();
      swift_getWitnessTable();
      swift_allocError();
      *v51 = 3;
      swift_willThrow();
      sub_224A78024(v64, v63);
    }

    else
    {
      (*(v43 + 16))(v55, v24, v42);
      sub_224A3796C(v57, v54, &unk_27D6F5630, &unk_224DB34C0);
      sub_224DA98F8();
      sub_224DAB068();
    }
  }
}

void sub_224B3828C(uint64_t a1, uint64_t a2)
{
  v126 = a1;
  v127 = a2;
  v136 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v125 = &v106 - v5;
  v123 = sub_224DAB088();
  v108 = *(v123 - 8);
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v123);
  v134 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_224DA9908();
  v135 = *(v137 - 8);
  v8 = *(v135 + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v110 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v106 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v106 - v16;
  v18 = sub_224DAAD78();
  v128 = *(v18 - 8);
  v19 = *(v128 + 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v106 - v23;
  v25 = sub_224DAAE38();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v29 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v33 = &v106 - v32;
  if (*(v136 + 80) == &type metadata for DiscoveryMessage)
  {
    *&v118 = v31;
    v133 = v24;
    *&v119 = v22;
    v120 = v18;
    v136 = v30;
    v131 = v26;
    v107 = v17;
    v132 = v15;
    v38 = v2[11];
    v39 = v2[13];
    v122 = v2;
    __swift_project_boxed_opaque_existential_1(v2 + 8, v38);
    v40 = sub_224DAAC78();
    v41 = v40;
    v130 = *(v40 + 16);
    if (v130)
    {
      v42 = 0;
      v43 = v131;
      v129 = (v131 + 16);
      v117 = *MEMORY[0x277D46720];
      v116 = (v128 + 104);
      v115 = (v128 + 8);
      v128 = v131 + 8;
      v112 = v131 + 32;
      v124 = MEMORY[0x277D84F90];
      v44 = v137;
      v114 = v40;
      v113 = v25;
      while (v42 < *(v41 + 16))
      {
        v46 = (v43[80] + 32) & ~v43[80];
        v47 = *(v43 + 9);
        (*(v43 + 2))(v33, v41 + v46 + v47 * v42, v25);
        if ((sub_224DAAE28() & 1) == 0)
        {
          goto LABEL_8;
        }

        sub_224DAAD88();
        v48 = v119;
        v49 = v120;
        (*v116)(v119, v117, v120);
        sub_224A80E70(qword_27D6F3F98, MEMORY[0x277D46738]);
        sub_224DAEFA8();
        v50 = v47;
        v51 = v33;
        v52 = v46;
        v53 = v137;
        sub_224DAEFA8();
        v54 = *v115;
        v55 = v48;
        v56 = v133;
        (*v115)(v55, v49);
        v57 = v49;
        v41 = v114;
        v54(v56, v57);
        v44 = v53;
        v58 = v52;
        v33 = v51;
        v59 = v50;
        v25 = v113;
        if (v139 == v138[6])
        {
          v60 = *v112;
          (*v112)(v118, v33, v113);
          v61 = v124;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138[0] = v61;
          v111 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA1C0(0, *(v61 + 16) + 1, 1);
            v61 = v138[0];
          }

          v64 = *(v61 + 16);
          v63 = *(v61 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_224ADA1C0(v63 > 1, v64 + 1, 1);
            v61 = v138[0];
          }

          *(v61 + 16) = v64 + 1;
          v124 = v61;
          v111(v61 + v58 + v64 * v59, v118, v25);
          v44 = v137;
        }

        else
        {
LABEL_8:
          (*v128)(v33, v25);
        }

        ++v42;
        v43 = v131;
        v45 = v134;
        if (v130 == v42)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v124 = MEMORY[0x277D84F90];
      v44 = v137;
      v45 = v134;
LABEL_19:

      v65 = *(v124 + 16);
      if (v65)
      {
        v138[0] = MEMORY[0x277D84F90];
        v66 = v124;
        sub_224ADA3D0(0, v65, 0);
        v67 = v138[0];
        v68 = v131 + 16;
        v133 = *(v131 + 2);
        v69 = v66 + ((v131[80] + 32) & ~v131[80]);
        v70 = *(v131 + 9);
        v130 = (v131 + 8);
        v131 = v70;
        v71 = v136;
        v129 = (v135 + 32);
        v72 = v107;
        do
        {
          v73 = v68;
          (v133)(v71, v69, v25);
          sub_224DAAD98();
          v71 = v136;
          (*v130)(v136, v25);
          v138[0] = v67;
          v75 = *(v67 + 16);
          v74 = *(v67 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_224ADA3D0(v74 > 1, v75 + 1, 1);
            v71 = v136;
            v67 = v138[0];
          }

          *(v67 + 16) = v75 + 1;
          v76 = v67 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v75;
          v44 = v137;
          (*(v135 + 32))(v76, v72, v137);
          v69 += v131;
          --v65;
          v68 = v73;
        }

        while (v65);

        v78 = v121;
        v45 = v134;
        v79 = v67;
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
        v78 = v121;
      }

      v80 = v122;
      v82 = v126;
      v81 = v127;
      v83 = v135;
      v131 = v79[2];
      if (!v131)
      {
LABEL_36:

        return;
      }

      v84 = 0;
      v136 = v135 + 16;
      v128 = (v135 + 56);
      v129 = (v135 + 8);
      v124 = v108 + 8;
      *&v77 = 136446210;
      v118 = v77;
      *&v77 = 136446466;
      v119 = v77;
      v130 = v79;
      while (v84 < v79[2])
      {
        v85 = v79 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v86 = *(v83 + 72);
        v133 = v84;
        v87 = v83;
        v88 = *(v83 + 16);
        v89 = v132;
        v88(v132, &v85[v86 * v84], v44);
        v138[3] = &type metadata for DiscoveryMessage;
        v138[4] = sub_224B3DCA0();
        v138[5] = sub_224B3DCF4();
        v138[0] = v82;
        v138[1] = v81;
        LOBYTE(v139) = 0;
        v90 = v125;
        (*(v87 + 56))(v125, 1, 1, v44);

        sub_224B37B1C(v138, &v139, v89, v90, v45);
        if (v78)
        {

          sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
          (*v129)(v132, v44);
          __swift_destroy_boxed_opaque_existential_1(v138);
          return;
        }

        sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
        __swift_destroy_boxed_opaque_existential_1(v138);
        v91 = v80[7];
        __swift_project_boxed_opaque_existential_1(v80 + 3, v80[6]);
        sub_224DAAC38();
        v92 = v132;
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v93 = sub_224DAB258();
        __swift_project_value_buffer(v93, qword_281365120);
        v94 = v109;
        v88(v109, v92, v44);
        v95 = sub_224DAB228();
        v96 = sub_224DAF2A8();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v138[0] = v98;
          *v97 = v118;
          sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
          v99 = sub_224DAFD28();
          v101 = v100;
          v102 = v94;
          v103 = *v129;
          (*v129)(v102, v137);
          v104 = sub_224A33F74(v99, v101, v138);
          v45 = v134;

          *(v97 + 4) = v104;
          _os_log_impl(&dword_224A2F000, v95, v96, "Descriptor discovery message sent to %{public}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v98);
          v44 = v137;
          MEMORY[0x22AA5EED0](v98, -1, -1);
          MEMORY[0x22AA5EED0](v97, -1, -1);

          (*v124)(v45, v123);
          v103(v132, v44);
          v78 = 0;
        }

        else
        {

          v105 = *v129;
          (*v129)(v94, v44);
          (*v124)(v45, v123);
          v105(v92, v44);
        }

        v82 = v126;
        v81 = v127;
        v83 = v135;
        v84 = v133 + 1;
        v79 = v130;
        v80 = v122;
        if (v131 == v133 + 1)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (qword_2813516C8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v34 = sub_224DAB258();
  __swift_project_value_buffer(v34, qword_281365120);
  v35 = sub_224DAB228();
  v36 = sub_224DAF288();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_224A2F000, v35, v36, "Wrong type sent to Event Replicator", v37, 2u);
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }
}

void sub_224B392C0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v135 = a4;
  v136 = a5;
  v124 = a3;
  v121 = a2;
  v120 = a1;
  v128 = *v5;
  v7 = v128;
  v8 = sub_224DAB7B8();
  v133 = *(v8 - 8);
  v134 = v8;
  v9 = v133[8];
  MEMORY[0x28223BE20](v8);
  v130 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v11);
  v129 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_224DA9908();
  v125 = *(v126 - 8);
  v14 = *(v125 + 64);
  v15 = MEMORY[0x28223BE20](v126);
  v116 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v123 = &v108 - v17;
  MEMORY[0x28223BE20](v16);
  v117 = &v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v122 = &v108 - v21;
  v119 = sub_224DAB088();
  v118 = *(v119 - 8);
  v22 = *(v118 + 64);
  v23 = MEMORY[0x28223BE20](v119);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v108 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v108 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v108 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v108 - v39;
  v41 = v7;
  v42 = v6;
  v43 = *(v41 + 80);
  v44 = type metadata accessor for InteractionMessage();
  v127 = v43;
  if (v43 == v44)
  {
    v110 = v33;
    v111 = v32;
    v112 = v36;
    v113 = v44;
    v114 = v31;
    v58 = v123;
    v115 = v25;
    v59 = v122;
    v108 = v14;
    v109 = v27;
    v60 = *(v42 + 13);
    __swift_project_boxed_opaque_existential_1(v42 + 8, *(v42 + 11));
    v61 = v124;
    sub_224DAAC98();
    v62 = sub_224DAAE38();
    v63 = (*(*(v62 - 8) + 48))(v40, 1, v62);
    sub_224A3311C(v40, &qword_27D6F3320, &unk_224DBD6F0);
    if (v63 != 1)
    {
      v81 = [v120 extensionIdentity];
      sub_224DAF538();
      v82 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v110 + 16))(v112, &v81[v82], v111);
      v83 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      sub_224A3796C(&v81[v83], v114, &unk_27D6F5060, &qword_224DB5620);
      v84 = sub_224DAF508();

      v85 = sub_224C931C8(v84);
      v86 = v113;
      v87 = swift_allocObject();
      v88 = v121;
      *(v87 + 16) = v85;
      *(v87 + 24) = v88;
      v142 = v86;
      v143 = sub_224A80E70(&unk_281359D90, type metadata accessor for InteractionMessage);
      v144 = sub_224A80E70(qword_281359DA0, type metadata accessor for InteractionMessage);
      aBlock = v87;
      LOBYTE(v137) = 1;
      v89 = v125;
      v90 = v126;
      (*(v125 + 56))(v59, 1, 1, v126);
      v91 = v88;
      v128 = v87;

      v92 = v115;
      sub_224B37B1C(&aBlock, &v137, v61, v59, v115);
      sub_224A3311C(v59, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v98 = v109;
      (*(v118 + 32))(v109, v92, v119);
      v99 = *(v42 + 6);
      v134 = *(v42 + 7);
      v133 = __swift_project_boxed_opaque_existential_1(v42 + 3, v99);
      v100 = v90;
      v101 = v117;
      v132 = *(v89 + 16);
      v132(v117, v61, v100);
      v102 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v103 = (v108 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v89 + 32))(v104 + v102, v101, v100);
      v105 = (v104 + v103);
      v107 = v135;
      v106 = v136;
      *v105 = v135;
      v105[1] = v106;
      sub_224A364AC(v107);
      sub_224DAAC28();
      (*(v118 + 8))(v98, v119);

LABEL_18:

      return;
    }

    v122 = v42;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v64 = sub_224DAB258();
    __swift_project_value_buffer(v64, qword_281365120);
    v65 = v125;
    v66 = v126;
    (*(v125 + 16))(v58, v61, v126);
    v67 = sub_224DAB228();
    v68 = sub_224DAF288();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v135;
    v70 = v136;
    if (v69)
    {
      v72 = v58;
      v73 = v65;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
      v76 = sub_224DAFD28();
      v77 = v66;
      v79 = v78;
      (*(v73 + 8))(v72, v77);
      v80 = sub_224A33F74(v76, v79, &aBlock);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_224A2F000, v67, v68, "Cannot send interaction messages: no relationship exists with id %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x22AA5EED0](v75, -1, -1);
      MEMORY[0x22AA5EED0](v74, -1, -1);

      if (!v71)
      {
        return;
      }
    }

    else
    {

      (*(v65 + 8))(v58, v66);
      if (!v71)
      {
        return;
      }
    }

    v93 = *(v122 + 2);
    v94 = swift_allocObject();
    v94[2] = v127;
    v94[3] = *(v128 + 88);
    v94[4] = v71;
    v94[5] = v70;
    v143 = sub_224B3DAA0;
    v144 = v94;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_224A39F40;
    v142 = &block_descriptor_67;
    v95 = _Block_copy(&aBlock);
    sub_224A364AC(v71);

    v55 = v129;
    sub_224DAB7E8();
    v138 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v96 = v130;
    v97 = v134;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v55, v96, v95);
    _Block_release(v95);
    sub_224A3D418(v71);
    (v133[1])(v96, v97);
    goto LABEL_17;
  }

  v45 = v136;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v46 = sub_224DAB258();
  __swift_project_value_buffer(v46, qword_281365120);
  v47 = sub_224DAB228();
  v48 = sub_224DAF288();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v135;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_224A2F000, v47, v48, "Wrong type sent to Interaction Event Replicator", v51, 2u);
    MEMORY[0x22AA5EED0](v51, -1, -1);
  }

  if (v50)
  {
    v52 = *(v42 + 2);
    v53 = swift_allocObject();
    v53[2] = v127;
    v53[3] = *(v128 + 88);
    v53[4] = v50;
    v53[5] = v45;
    v143 = sub_224B3DA7C;
    v144 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_224A39F40;
    v142 = &block_descriptor_61;
    v54 = _Block_copy(&aBlock);
    sub_224A364AC(v50);

    v55 = v129;
    sub_224DAB7E8();
    v138 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v56 = v130;
    v57 = v134;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v55, v56, v54);
    _Block_release(v54);
    sub_224A3D418(v50);
    (v133[1])(v56, v57);
LABEL_17:
    (*(v131 + 8))(v55, v132);
    goto LABEL_18;
  }
}

void sub_224B3A7F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v128 = a4;
  v129 = a5;
  v117 = a3;
  v113 = a2;
  v116 = a1;
  v121 = *v5;
  v6 = v121;
  v7 = sub_224DAB7B8();
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = v126[8];
  MEMORY[0x28223BE20](v7);
  v123 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v10);
  v122 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v109 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v114 = &v103 - v17;
  MEMORY[0x28223BE20](v16);
  v115 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v112 = &v103 - v21;
  v22 = sub_224DAB088();
  v110 = *(v22 - 8);
  v23 = *(v110 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v103 - v27;
  v29 = sub_224DAE738();
  v111 = *(v29 - 8);
  v30 = *(v111 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v103 - v35;
  v37 = *(v6 + 80);
  v38 = type metadata accessor for ControlInteractionMessage(0);
  v120 = v37;
  if (v37 == v38)
  {
    v54 = v38;
    v107 = v32;
    v108 = v26;
    v104 = v14;
    v55 = v115;
    v105 = v28;
    v106 = v22;
    v56 = v5;
    v57 = v5[13];
    __swift_project_boxed_opaque_existential_1(v5 + 8, v5[11]);
    v58 = v117;
    sub_224DAAC98();
    v59 = sub_224DAAE38();
    v60 = (*(*(v59 - 8) + 48))(v36, 1, v59);
    sub_224A3311C(v36, &qword_27D6F3320, &unk_224DBD6F0);
    if (v60 != 1)
    {
      v77 = sub_224D6F754();
      v78 = v111;
      v79 = v107;
      (*(v111 + 16))(v107, v113, v29);
      v80 = *(v54 + 48);
      v81 = *(v54 + 52);
      v82 = swift_allocObject();
      *(v82 + 16) = v77;
      (*(v78 + 32))(v82 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v79, v29);
      v134 = v54;
      v135 = sub_224A80E70(&qword_281355990, type metadata accessor for ControlInteractionMessage);
      v136 = sub_224A80E70(qword_281355998, type metadata accessor for ControlInteractionMessage);
      aBlock = v82;
      LOBYTE(v130) = 2;
      v83 = v118;
      v84 = v119;
      v85 = v112;
      (*(v118 + 56))(v112, 1, 1, v119);
      v121 = v82;

      v86 = v108;
      sub_224B37B1C(&aBlock, &v130, v58, v85, v108);
      sub_224A3311C(v85, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v93 = v105;
      (*(v110 + 32))(v105, v86, v106);
      v94 = v58;
      v95 = v56[6];
      v127 = v56[7];
      v126 = __swift_project_boxed_opaque_existential_1(v56 + 3, v95);
      v96 = v55;
      v125 = *(v83 + 16);
      v125(v55, v94, v84);
      v97 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v98 = (v104 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      (*(v83 + 32))(v99 + v97, v96, v84);
      v100 = (v99 + v98);
      v102 = v128;
      v101 = v129;
      *v100 = v128;
      v100[1] = v101;
      sub_224A364AC(v102);
      sub_224DAAC28();
      (*(v110 + 8))(v93, v106);

LABEL_18:

      return;
    }

    v116 = v56;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v61 = sub_224DAB258();
    __swift_project_value_buffer(v61, qword_281365120);
    v62 = v118;
    v63 = v119;
    v64 = v114;
    (*(v118 + 16))(v114, v58, v119);
    v65 = sub_224DAB228();
    v66 = sub_224DAF288();
    v67 = os_log_type_enabled(v65, v66);
    v69 = v128;
    v68 = v129;
    if (v67)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
      v72 = sub_224DAFD28();
      v73 = v64;
      v75 = v74;
      (*(v62 + 8))(v73, v63);
      v76 = sub_224A33F74(v72, v75, &aBlock);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v65, v66, "Cannot send interaction messages: no relationship exists with id %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);

      if (!v69)
      {
        return;
      }
    }

    else
    {

      (*(v62 + 8))(v64, v63);
      if (!v69)
      {
        return;
      }
    }

    v87 = v116[2];
    v88 = swift_allocObject();
    v89 = v121;
    v88[2] = v120;
    v88[3] = *(v89 + 88);
    v88[4] = v69;
    v88[5] = v68;
    v135 = sub_224B3DF04;
    v136 = v88;
    aBlock = MEMORY[0x277D85DD0];
    v132 = 1107296256;
    v133 = sub_224A39F40;
    v134 = &block_descriptor_46;
    v90 = _Block_copy(&aBlock);
    sub_224A364AC(v69);

    v51 = v122;
    sub_224DAB7E8();
    v130 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v91 = v123;
    v92 = v127;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v51, v91, v90);
    _Block_release(v90);
    sub_224A3D418(v69);
    (v126[1])(v91, v92);
    goto LABEL_17;
  }

  v39 = v129;
  v40 = v5;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v41 = sub_224DAB258();
  __swift_project_value_buffer(v41, qword_281365120);
  v42 = sub_224DAB228();
  v43 = sub_224DAF288();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v128;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_224A2F000, v42, v43, "Wrong type sent to Control Interaction Event Replicator", v46, 2u);
    MEMORY[0x22AA5EED0](v46, -1, -1);
  }

  if (v45)
  {
    v47 = v40[2];
    v48 = swift_allocObject();
    v49 = v121;
    v48[2] = v120;
    v48[3] = *(v49 + 88);
    v48[4] = v45;
    v48[5] = v39;
    v135 = sub_224B3DF00;
    v136 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v132 = 1107296256;
    v133 = sub_224A39F40;
    v134 = &block_descriptor_40;
    v50 = _Block_copy(&aBlock);
    sub_224A364AC(v45);

    v51 = v122;
    sub_224DAB7E8();
    v130 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v52 = v123;
    v53 = v127;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v51, v52, v50);
    _Block_release(v50);
    sub_224A3D418(v45);
    (v126[1])(v52, v53);
LABEL_17:
    (*(v124 + 8))(v51, v125);
    goto LABEL_18;
  }
}

void sub_224B3BBA8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t *a5, const char *a6)
{
  v47 = a5;
  v48 = a6;
  v49 = a4;
  v50 = a3;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F90, &qword_224DB53E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v46 - v18);
  sub_224A3796C(a1, &v46 - v18, &qword_27D6F3F90, &qword_224DB53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281365120);
    (*(v9 + 16))(v13, a2, v8);
    v22 = v20;
    v23 = sub_224DAB228();
    v24 = sub_224DAF288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v25 = 136446466;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
      v27 = sub_224DAFD28();
      v29 = v28;
      (*(v9 + 8))(v13, v8);
      v30 = sub_224A33F74(v27, v29, &v51);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2114;
      v31 = v20;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v32;
      *v26 = v32;
      _os_log_impl(&dword_224A2F000, v23, v24, v48, v25, 0x16u);
      sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      v33 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);

      v34 = v50;
      if (!v50)
      {
        goto LABEL_14;
      }
    }

    else
    {

      (*(v9 + 8))(v13, v8);
      v34 = v50;
      if (!v50)
      {
LABEL_14:

        return;
      }
    }

    v45 = v20;
    v34(v20, 1);

    goto LABEL_14;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  __swift_project_value_buffer(v35, qword_281365120);
  (*(v9 + 16))(v15, a2, v8);
  v36 = sub_224DAB228();
  v37 = sub_224DAF2A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v38 = 136446210;
    sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
    v40 = sub_224DAFD28();
    v42 = v41;
    (*(v9 + 8))(v15, v8);
    v43 = sub_224A33F74(v40, v42, &v51);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_224A2F000, v36, v37, v47, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);

    v44 = v50;
    if (!v50)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(v9 + 8))(v15, v8);
  v44 = v50;
  if (v50)
  {
LABEL_16:
    v44(1, 0);
  }

LABEL_17:
  sub_224A3311C(v19, &qword_27D6F3F90, &qword_224DB53E0);
}

void sub_224B3C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v89 = a4;
  v90 = a3;
  v79 = a1;
  v80 = a2;
  v82 = *v4;
  v6 = v82;
  v7 = sub_224DAB7B8();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v74 - v19;
  v21 = sub_224DAB088();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v74 - v31;
  v33 = *(v6 + 80);
  if (v33 == &type metadata for StalenessMessage)
  {
    v76 = v20;
    v77 = v26;
    v74 = v28;
    v78 = v16;
    v75 = v22;
    v43 = v5[13];
    __swift_project_boxed_opaque_existential_1(v5 + 8, v5[11]);
    v44 = v80;
    sub_224DAAC98();
    v45 = sub_224DAAE38();
    v46 = (*(*(v45 - 8) + 48))(v32, 1, v45);
    sub_224A3311C(v32, &qword_27D6F3320, &unk_224DBD6F0);
    if (v46 != 1)
    {
      v95 = &type metadata for StalenessMessage;
      v96 = sub_224B3D9B8();
      v97 = sub_224B3DA0C();
      aBlock = v79;
      LOBYTE(v91) = 4;
      v59 = v76;
      (*(v81 + 56))(v76, 1, 1, v13);

      v60 = v77;
      sub_224B37B1C(&aBlock, &v91, v44, v59, v77);
      sub_224A3311C(v59, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v67 = v75;
      v68 = v74;
      v69 = v21;
      (*(v75 + 32))(v74, v60, v21);
      v70 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
      v71 = swift_allocObject();
      v72 = v89;
      v73 = v90;
      *(v71 + 16) = v90;
      *(v71 + 24) = v72;
      sub_224A364AC(v73);
      sub_224DAAC28();
      (*(v67 + 8))(v68, v69);
LABEL_18:

      return;
    }

    v47 = v13;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v48 = sub_224DAB258();
    __swift_project_value_buffer(v48, qword_281365120);
    v49 = v81;
    v50 = v78;
    (*(v81 + 16))(v78, v44, v47);
    v51 = sub_224DAB228();
    v52 = sub_224DAF288();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136446210;
      sub_224A80E70(&qword_281351A00, MEMORY[0x277CC95F0]);
      v55 = sub_224DAFD28();
      v57 = v56;
      (*(v49 + 8))(v50, v47);
      v58 = sub_224A33F74(v55, v57, &aBlock);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_224A2F000, v51, v52, "Cannot send staleness messages: no relationship exists for id %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x22AA5EED0](v54, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);

      v38 = v90;
      if (!v90)
      {
        return;
      }
    }

    else
    {

      (*(v49 + 8))(v50, v47);
      v38 = v90;
      if (!v90)
      {
        return;
      }
    }

    v61 = v5[2];
    v62 = swift_allocObject();
    v62[2] = &type metadata for StalenessMessage;
    v62[3] = *(v82 + 88);
    v62[4] = v38;
    v62[5] = v89;
    v96 = sub_224B3DF04;
    v97 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v42 = &block_descriptor_25;
    goto LABEL_17;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v34 = sub_224DAB258();
  __swift_project_value_buffer(v34, qword_281365120);
  v35 = sub_224DAB228();
  v36 = sub_224DAF288();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v90;
  if (v37)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_224A2F000, v35, v36, "Wrong type sent to Staleness Event Replicator", v39, 2u);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  if (v38)
  {
    v40 = v5[2];
    v41 = swift_allocObject();
    v41[2] = v33;
    v41[3] = *(v82 + 88);
    v41[4] = v38;
    v41[5] = v89;
    v96 = sub_224B3DF00;
    v97 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v42 = &block_descriptor_7;
LABEL_17:
    v94 = sub_224A39F40;
    v95 = v42;
    v63 = _Block_copy(&aBlock);
    sub_224A364AC(v38);

    v64 = v83;
    sub_224DAB7E8();
    v91 = MEMORY[0x277D84F90];
    sub_224A80E70(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v65 = v84;
    v66 = v88;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v64, v65, v63);
    _Block_release(v63);
    sub_224A3D418(v38);
    (*(v87 + 8))(v65, v66);
    (*(v85 + 8))(v64, v86);
    goto LABEL_18;
  }
}

void sub_224B3CF24(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for EventReplicator.Error();
  swift_getWitnessTable();
  v7 = swift_allocError();
  *v8 = a5;
  a1(v7, 1);
}

void sub_224B3CFC0(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F90, &qword_224DB53E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - v6);
  sub_224A3796C(a1, &v10 - v6, &qword_27D6F3F90, &qword_224DB53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (a2)
    {
      v9 = v8;
      a2(v8, 1);
    }
  }

  else
  {
    if (a2)
    {
      a2(1, 0);
    }

    sub_224A3311C(v7, &qword_27D6F3F90, &qword_224DB53E0);
  }
}

uint64_t sub_224B3D0E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_224A3311C(v0 + 152, &qword_27D6F3F88, &unk_224DB53D0);
  return v0;
}

uint64_t sub_224B3D138()
{
  sub_224B3D0E8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for EventType.DiscoverDescriptorsCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EventType.DiscoverDescriptorsCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_224B3D2B0()
{
  result = qword_27D6F3F28;
  if (!qword_27D6F3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F28);
  }

  return result;
}

unint64_t sub_224B3D308()
{
  result = qword_27D6F3F30;
  if (!qword_27D6F3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F30);
  }

  return result;
}

uint64_t sub_224B3D35C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_224B3D930(a1, v3 + 152);
  return swift_endAccess();
}

unint64_t sub_224B3D444()
{
  result = qword_27D6F3F38;
  if (!qword_27D6F3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F38);
  }

  return result;
}

unint64_t sub_224B3D49C()
{
  result = qword_27D6F3F40;
  if (!qword_27D6F3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F40);
  }

  return result;
}

unint64_t sub_224B3D4F4()
{
  result = qword_27D6F3F48;
  if (!qword_27D6F3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F48);
  }

  return result;
}

unint64_t sub_224B3D54C()
{
  result = qword_27D6F3F50;
  if (!qword_27D6F3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F50);
  }

  return result;
}

unint64_t sub_224B3D5A4()
{
  result = qword_27D6F3F58;
  if (!qword_27D6F3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F58);
  }

  return result;
}

unint64_t sub_224B3D5FC()
{
  result = qword_27D6F3F60;
  if (!qword_27D6F3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F60);
  }

  return result;
}

unint64_t sub_224B3D654()
{
  result = qword_27D6F3F68;
  if (!qword_27D6F3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F68);
  }

  return result;
}

unint64_t sub_224B3D6AC()
{
  result = qword_27D6F3F70;
  if (!qword_27D6F3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F70);
  }

  return result;
}

unint64_t sub_224B3D704()
{
  result = qword_27D6F3F78;
  if (!qword_27D6F3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F78);
  }

  return result;
}

unint64_t sub_224B3D75C()
{
  result = qword_27D6F3F80;
  if (!qword_27D6F3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F80);
  }

  return result;
}

uint64_t sub_224B3D7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000224DC6240 == a2;
  if (v3 || (sub_224DAFD88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69 || (sub_224DAFD88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000224DC4510 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E656C617473 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_224DAFD88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_224B3D930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F88, &unk_224DB53D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B3D9B8()
{
  result = qword_28135AD30;
  if (!qword_28135AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135AD30);
  }

  return result;
}

unint64_t sub_224B3DA0C()
{
  result = qword_28135AD38[0];
  if (!qword_28135AD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135AD38);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_54Tm()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_224B3DBF4(uint64_t a1, uint64_t *a2, const char *a3)
{
  v7 = *(sub_224DA9908() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_224B3BBA8(a1, v3 + v8, *v9, *(v9 + 8), a2, a3);
}

unint64_t sub_224B3DCA0()
{
  result = qword_28135B158;
  if (!qword_28135B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B158);
  }

  return result;
}

unint64_t sub_224B3DCF4()
{
  result = qword_28135B160;
  if (!qword_28135B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatedTypeGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatedTypeGroup(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224B3DF0C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_224DAF798();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v21 = v1 + 72;
    v22 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v23 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      v12 = *(v11 + *(*v11 + 104));
      sub_224DAF9B8();
      v13 = *(v24 + 16);
      sub_224DAF9F8();
      v1 = v22;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v9 = 1 << *(v22 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v4 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_224A3E204(v6, v8, 0);
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v6, v8, 0);
      }

LABEL_4:
      v7 = v23 + 1;
      v6 = v9;
      if (v23 + 1 == v2)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_21:
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

  return result;
}

uint64_t sub_224B3E288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_224B0B830(a1);
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
    sub_224B285A4();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_224B1CF84(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_224B3E35C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_224A89A08(a1);
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
    sub_224B2A2E4();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_224B3151C(v6, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_224B3E484(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_224DAF838();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_224DAF838();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
              v20 = sub_224A6996C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224B3E818(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_224B3E8C4(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v29 = a3;

  v16 = 0;
  while (v13)
  {
    v30 = v4;
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = v29;
    v20 = *(v29 + 48);
    v21 = sub_224DAAF48();
    (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
    v22 = *(v19 + 56);
    v23 = sub_224DA9908();
    (*(*(v23 - 8) + 16))(&v9[*(v27 + 48)], v22 + *(*(v23 - 8) + 72) * v18, v23);
    v24 = v30;
    v25 = v28(v9);
    v4 = v24;
    result = sub_224A3311C(v9, &qword_27D6F3890, &unk_224DB9C30);
    if (v24)
    {
      goto LABEL_14;
    }

    v13 &= v13 - 1;
    if (v25)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v30 = v4;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B3EAEC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AA5DCC0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_224DAF838();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_224B3EC2C()
{
  sub_224A58004(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_224B3EC88(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_224B3EDA8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v6 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF0));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
    sub_224A33088(&qword_27D6F40D8, &qword_27D6F53D0, &qword_224DB56A8);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224B3EEC4()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88)) + 16));
  v11 = *(v0 + *((*v10 & *v0) + 0x98));
  swift_beginAccess();
  v12 = *(v11 + 40);
  v17 = *(v0 + *((*v10 & *v0) + 0xC0));
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_224B445D8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28;
  v14 = _Block_copy(aBlock);

  v15 = v0;
  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v9, v5, v14);
  _Block_release(v14);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v18);
}

void sub_224B3F218(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_224B43E90();
}

id sub_224B3F258()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TaskService();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_224B3F2C8(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x68)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x70)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x78)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x80)]);
  v3 = *&a1[*((*v2 & *a1) + 0x88)];

  v4 = *&a1[*((*v2 & *a1) + 0x90)];

  v5 = *&a1[*((*v2 & *a1) + 0x98)];

  v6 = *&a1[*((*v2 & *a1) + 0xA0)];

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA8)]);

  v7 = *&a1[*((*v2 & *a1) + 0xB8)];

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xD8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xE0)]);
  v8 = *&a1[*((*v2 & *a1) + 0xE8)];

  v9 = *&a1[*((*v2 & *a1) + 0xF0)];

  v10 = *&a1[*((*v2 & *a1) + 0xF8)];
}

uint64_t sub_224B3F61C()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88));
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B3F6AC(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224B3F6AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

void sub_224B3F72C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x88));
  os_unfair_lock_assert_not_owner(*(v7 + 16));
  os_unfair_lock_lock(*(v7 + 16));
  sub_224B3F7EC(v3, a3 & 0x101, a1, a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_224B3F7EC(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  LOWORD(v4) = a2;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = 257;
  if (*(v8 + 16) && (v10 = sub_224A48FA0(v4 & 0x101), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
    v28 = v4;
    if (v12 >> 62)
    {
      goto LABEL_22;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    swift_bridgeObjectRetain_n();
    if (v13)
    {
      v6 = 0;
      v9 = v12 & 0xFFF8;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AA5DCC0](v6, v12);
          v4 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            v13 = sub_224DAF838();
            goto LABEL_5;
          }

          v14 = *(v12 + 8 * v6 + 32);

          v4 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_16;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          swift_unknownObjectRelease();
          if (Strong == a3)
          {
            return swift_bridgeObjectRelease_n();
          }
        }

        ++v6;
      }

      while (v4 != v13);
    }

    type metadata accessor for WeakTaskObserver();
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v21 + 24) = a4;
    v22 = swift_unknownObjectWeakAssign();
    MEMORY[0x22AA5D350](v22);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_224DAF038();
    }

    sub_224DAF078();
    v23 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
    swift_beginAccess();
    v24 = *(a1 + v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v23);
    *(a1 + v23) = 0x8000000000000000;
    sub_224B20368(v12, v28 & 0x101, isUniquelyReferenced_nonNull_native);
    *(a1 + v23) = v31;
    return swift_endAccess();
  }

  else
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_224DB2780;
    type metadata accessor for WeakTaskObserver();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v17 + 24) = a4;
    swift_unknownObjectWeakAssign();
    *(v16 + 32) = v17;
    v18 = *((*v6 & *a1) + 0xB8);
    swift_beginAccess();
    v19 = *(a1 + v18);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a1 + v18);
    *(a1 + v18) = 0x8000000000000000;
    sub_224B20368(v16, v4 & v9, v20);
    *(a1 + v18) = v32;
    return swift_endAccess();
  }
}

void sub_224B3FB70(uint64_t a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B3FC1C(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_224B3FC1C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v51 = a1;
  v50 = *((*v5 & *a1) + 0xB8);
  v12 = (v9 + 63) >> 6;
  v48 = v7;

  v13 = 0;
  while (v11)
  {
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = (*(v48 + 48) + 2 * v17);
    v52 = v18[1];
    v53 = *v18;
    v54 = *(*(v48 + 56) + 8 * v17);
    swift_unknownObjectRetain();

    v19 = sub_224B43EC0(&v54, a2);
    v49 = v3;
    swift_unknownObjectRelease();
    v20 = v54;
    v21 = v54 >> 62;
    if (v54 >> 62)
    {
      v22 = sub_224DAF838();
      v23 = v22 - v19;
      if (v22 < v19)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v22 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 - v19;
      if (v22 < v19)
      {
        goto LABEL_49;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_50;
    }

    if (v21)
    {
      v24 = sub_224DAF838();
    }

    else
    {
      v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24 < v22)
    {
      goto LABEL_51;
    }

    v25 = __OFSUB__(0, v23);
    v26 = -v23;
    if (v25)
    {
      goto LABEL_52;
    }

    if (v21)
    {
      v27 = sub_224DAF838();
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = __OFADD__(v27, v26);
    v28 = v27 + v26;
    if (v25)
    {
      goto LABEL_53;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v21)
      {
        goto LABEL_30;
      }

      v29 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v28 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v21)
      {
LABEL_30:
        sub_224DAF838();
        goto LABEL_31;
      }

      v29 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    v30 = *(v29 + 16);
LABEL_31:
    v20 = sub_224DAF968();
    v54 = v20;
LABEL_32:
    sub_224B441E8(v19, v22, 0, type metadata accessor for WeakTaskObserver);
    swift_beginAccess();
    v31 = *(v51 + v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v51 + v50);
    *(v51 + v50) = 0x8000000000000000;
    if (v52)
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_224A48FA0(v34 | v53);
    v37 = v33[2];
    v38 = (v36 & 1) == 0;
    v25 = __OFADD__(v37, v38);
    v39 = v37 + v38;
    if (v25)
    {
      goto LABEL_54;
    }

    v40 = v36;
    if (v33[3] < v39)
    {
      sub_224A3D7F0(v39, isUniquelyReferenced_nonNull_native);
      v35 = sub_224A48FA0(v34 | v53);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_56;
      }

LABEL_40:
      if (v40)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v45 = v35;
    sub_224B2625C();
    v35 = v45;
    if (v40)
    {
LABEL_4:
      v14 = v33[7];
      v15 = *(v14 + 8 * v35);
      *(v14 + 8 * v35) = v20;

      goto LABEL_5;
    }

LABEL_41:
    v33[(v35 >> 6) + 8] |= 1 << v35;
    v42 = (v33[6] + 2 * v35);
    *v42 = v53;
    v42[1] = v52;
    *(v33[7] + 8 * v35) = v20;
    v43 = v33[2];
    v25 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v25)
    {
      goto LABEL_55;
    }

    v33[2] = v44;
LABEL_5:
    v11 &= v11 - 1;
    *(v51 + v50) = v33;
    swift_endAccess();
    v3 = v49;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224B400D0(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B4016C(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_224B4016C(void *a1, void *a2)
{
  v3 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));

  sub_224CCFDFC(a2);
}

uint64_t sub_224B401D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 4) != 0)
  {
    v3 = MEMORY[0x277CF9AF8];
  }

  else if ((result & 0x12) != 0)
  {
    v3 = MEMORY[0x277CF9AD0];
  }

  else if ((result & 0x20) != 0)
  {
    v3 = MEMORY[0x277CF9AF0];
  }

  else
  {
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v3 = MEMORY[0x277CF9AE0];
  }

  v4 = *v3;
  v5 = sub_224DAC938();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_224B402AC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = sub_224A438E8(a2 + v4);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B263CC();
    }

    v14 = *(v13 + 48);
    v15 = sub_224DA9908();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
    v16 = *(*(v13 + 56) + 8 * v10);
    sub_224A4ADF4(v10, v13);
    *(a1 + v6) = v13;
    swift_endAccess();
    v17 = *(a1 + *((*v5 & *a1) + 0x98));

    sub_224A49DBC(v16);

    sub_224B3EEC4();
  }

  else
  {
    swift_endAccess();
  }
}

void sub_224B4042C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*MEMORY[0x277D85000] & *v1);
  v6 = *(v1 + v5[17]);
  os_unfair_lock_assert_not_owner(*(v6 + 16));
  if (a1)
  {
    v8 = a1;
LABEL_5:
    v37 = v6;
    MEMORY[0x28223BE20](v7);
    v35[2] = v2;
    v35[3] = v8;
    v11 = type metadata accessor for UnfairLock();
    v12 = v5[10];
    v13 = v5[11];
    type metadata accessor for TaskSession();
    v14 = sub_224DAF728();
    v15 = a1;

    sub_224A49C20(sub_224B443FC, v35, v11, v14, &off_28382D228);

    v16 = v38;
    if (v38)
    {
      os_unfair_lock_lock(*(v6 + 16));
      v17 = *(v2 + *((*v4 & *v2) + 0x98));
      swift_beginAccess();
      v18 = *(*(v17 + 16) + 16);
      os_unfair_lock_unlock(*(v6 + 16));
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281365108);

      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37 = v24;
        *v22 = 136446722;
        v25 = (*(v16 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
        v26 = *v25;
        v27 = v25[1];

        v28 = sub_224A33F74(v26, v27, &v37);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2114;
        v29 = *(v16 + 24);
        *(v22 + 14) = v29;
        *v23 = v29;
        *(v22 + 22) = 2050;
        *(v22 + 24) = v18;
        v30 = v29;
        _os_log_impl(&dword_224A2F000, v20, v21, "[%{public}s]: starting pended task %{public}@; pendingTasks.count = %{public}ld", v22, 0x20u);
        sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x22AA5EED0](v24, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }

      sub_224A4BF74();
    }

    else
    {
      os_unfair_lock_lock(*(v6 + 16));
      v31 = *(v2 + *((*v4 & *v2) + 0xB0));
      sub_224A57804(v8);
      os_unfair_lock_unlock(*(v6 + 16));
    }

    return;
  }

  os_unfair_lock_lock(*(v6 + 16));
  v9 = *(v1 + *((*v4 & *v1) + 0xB0));
  v10 = sub_224A4AB6C();
  os_unfair_lock_unlock(*(v6 + 16));
  if (v10)
  {
    v7 = v10;
    v8 = v7;
    goto LABEL_5;
  }

  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v32 = sub_224DAB258();
  __swift_project_value_buffer(v32, qword_281365108);
  v36 = sub_224DAB228();
  v33 = sub_224DAF2A8();
  if (os_log_type_enabled(v36, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_224A2F000, v36, v33, "No available queue to process pending tasks", v34, 2u);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }
}

void sub_224B40904(void *a1, _BYTE *a2, void *a3)
{
  v6 = MEMORY[0x277D85000];
  v7 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  if (!*(*(v7 + 16) + 16))
  {
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365108);
    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224A2F000, v9, v10, "No tasks pending", v11, 2u);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    *a2 = 1;
    v12 = *(a1 + *((*v6 & *a1) + 0xB0));
    sub_224A57804(a3);
  }
}

unint64_t sub_224B40A80()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88)) + 16));
  v5 = *((*v3 & *v0) + 0xA0);
  swift_beginAccess();
  v6 = *(v0 + v5);
  sub_224DA9908();
  v7 = *((v4 & v2) + 0x50);
  v8 = *((v4 & v2) + 0x58);
  type metadata accessor for TaskSession();
  sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0]);
  v63 = v6;
  v59 = v7;
  v60 = v8;
  v9 = sub_224DAED38();
  v10 = sub_224DAF538();

  WitnessTable = swift_getWitnessTable();
  v13 = sub_224A4A740(sub_224A95C04, v58, v9, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v14 = (v1 + *((*v3 & *v1) + 0x80));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 32))(&v63, 769, v15, v16);
  v17 = MEMORY[0x277D84F90];
  v56 = v13;
  if (v64)
  {
    if (*(v64 + 16))
    {
      v55 = v0;

      v19 = sub_224B3DF0C(v18);

      sub_224A699F0(&v63);
      v20 = sub_224B3E484(v19);

      v21 = sub_224A7B5CC(v20);

      v63 = v17;
      v22 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v21 >> 62)
      {
LABEL_38:
        v23 = sub_224DAF838();
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      v57 = MEMORY[0x277D84F90];
      while (v23 != v24)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x22AA5DCC0](v24, v21);
        }

        else
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_35;
          }

          v25 = *(v21 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v28 = [v25 extensionIdentity];

        ++v24;
        if (v28)
        {
          MEMORY[0x22AA5D350]();
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_224DAF038();
          }

          sub_224DAF078();
          v57 = v63;
          v24 = v27;
        }
      }

      v30 = v57;
      if (v57 >> 62)
      {
        v31 = sub_224DAF838();
        v30 = v57;
        if (v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v31 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_18:
          v22 = 0;
          v32 = v30 & 0xC000000000000001;
          v21 = v30 & 0xFFFFFFFFFFFFFF8;
          v33 = MEMORY[0x277D84F90];
          v34 = MEMORY[0x277CFA130];
          while (1)
          {
            if (v32)
            {
              v35 = MEMORY[0x22AA5DCC0](v22, v30);
            }

            else
            {
              if (v22 >= *(v21 + 16))
              {
                goto LABEL_37;
              }

              v35 = *(v30 + 8 * v22 + 32);
            }

            v36 = v35;
            v37 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_36;
            }

            v38 = *v34;
            swift_beginAccess();
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            if ((*(*(v39 - 8) + 48))(&v36[v38], 1, v39))
            {
              swift_endAccess();

              v30 = v57;
            }

            else
            {
              v40 = sub_224DA9FE8();
              v42 = v41;
              swift_endAccess();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_224A865C4(0, *(v33 + 2) + 1, 1, v33);
              }

              v44 = *(v33 + 2);
              v43 = *(v33 + 3);
              if (v44 >= v43 >> 1)
              {
                v33 = sub_224A865C4((v43 > 1), v44 + 1, 1, v33);
              }

              *(v33 + 2) = v44 + 1;
              v45 = &v33[16 * v44];
              *(v45 + 4) = v40;
              *(v45 + 5) = v42;
              v30 = v57;
              v34 = MEMORY[0x277CFA130];
            }

            ++v22;
            if (v37 == v31)
            {
              goto LABEL_41;
            }
          }
        }
      }

      v33 = MEMORY[0x277D84F90];
LABEL_41:

      v1 = v55;
      v3 = MEMORY[0x277D85000];
    }

    else
    {
      sub_224A699F0(&v63);
      v33 = 0;
    }
  }

  else
  {
    sub_224A3311C(&v63, &qword_27D6F50E0, &qword_224DB41A0);
    v33 = 0;
  }

  v46 = *(v1 + *((*v3 & *v1) + 0x98));
  if (v33)
  {
    v47 = v33;
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v48 = *(v1 + *((*v3 & *v1) + 0x98));

  v49 = sub_224CD006C(v56, v47);
  v51 = v50;

  v61 = v49;
  v62 = v51 & 1;
  MEMORY[0x28223BE20](v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4038, &unk_224DB5640);
  sub_224B41EDC(sub_224B44458, v53, &v63);
  sub_224B44460(v49, v51 & 1);
  return v63;
}

uint64_t sub_224B41110@<X0>(char **a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_224B411B4(*a1, 2, a3);
  if (v7)
  {
    result = sub_224B3EEC4();
    v9 = v7;
  }

  else
  {
    v10 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x98));

    sub_224A49DBC(v6);

    v9 = 2;
  }

  *a4 = v9;
  *(a4 + 8) = v7 == 0;
  return result;
}

uint64_t *sub_224B411B4(char *a1, int a2, void *a3)
{
  v4 = v3;
  v116 = a3;
  v117 = a2;
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](a1);
  v115 = &v107 - v11;
  v120 = sub_224DABCC8();
  v127 = *(v120 - 8);
  v12 = *(v127 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_224DABE18();
  v126 = *(v129 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for ExtensionTask.Identifier(0);
  v16 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v18 = (&v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_224DA9908();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v114 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v107 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  os_unfair_lock_assert_owner(*(*&v4[*((v8 & v6) + 0x88)] + 16));
  v28 = *(v20 + 16);
  v134 = a1;
  v122 = v20 + 16;
  v121 = v28;
  v28(v27, &a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v19);
  v29 = *((*v7 & *v4) + 0xA0);
  swift_beginAccess();
  v30 = *&v4[v29];
  v31 = *((v8 & v6) + 0x58);
  v32 = type metadata accessor for TaskSession();
  v33 = sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0]);
  v137 = v31;
  v138 = v30;
  v113 = v9;
  v136 = v9;
  v111 = v32;
  v110 = v33;
  v34 = sub_224DAED38();
  v35 = sub_224DAF538();

  WitnessTable = swift_getWitnessTable();
  v131 = v35;
  v38 = sub_224A4A740(sub_224B44A08, v135, v34, v35, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v37);

  v125 = v19;
  v123 = v20;
  v124 = v27;
  v118 = v4;
  if (v38 >> 62)
  {
LABEL_43:
    v39 = sub_224DAF838();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v39)
  {
LABEL_33:

    v64 = v118;
    v65 = MEMORY[0x277D85000];
    v66 = *MEMORY[0x277D85000] & *v118;
    v67 = v115;
    (*(v112 + 16))(v115, &v64[*((*MEMORY[0x277D85000] & *v64) + 0x60)], v113);
    sub_224B44674(&v64[*((*v65 & *v64) + 0x68)], &v138);
    v68 = v139;
    v69 = v140;
    v70 = __swift_project_boxed_opaque_existential_1(&v138, v139);
    v141[3] = v68;
    v141[4] = v69;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
    (*(*(v68 - 8) + 16))(boxed_opaque_existential_1, v70, v68);
    v72 = v134;
    v73 = v116;
    v74 = v64;
    v75 = sub_224A4BA90(v72, v67, v73, v117, v141, v64, &off_28382A450);

    __swift_destroy_boxed_opaque_existential_1(&v138);
    v76 = v124;
    v77 = v125;
    v121(v114, v124, v125);
    v141[0] = v75;
    v78 = *((*v65 & *v74) + 0xA0);
    swift_beginAccess();
    sub_224DAED48();
    swift_retain_n();
    sub_224DAED68();
    swift_endAccess();

    (*(v123 + 8))(v76, v77);
    return v75;
  }

  v40 = 0;
  v132 = (v38 & 0xC000000000000001);
  v133 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v109 = (v127 + 32);
  v108 = (v127 + 8);
  v127 = v126 + 32;
  v126 += 8;
  while (1)
  {
    if (v132)
    {
      v41 = MEMORY[0x22AA5DCC0](v40, v38);
    }

    else
    {
      if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v41 = *(v38 + 8 * v40 + 32);
    }

    v42 = v41;
    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_224A414C4(v134 + v133, v18, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v52 = *v18;
      v57 = v18[1];
      v58 = v42;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_21;
      }

      v52 = *v18;
      v53 = v42;
    }

    v48 = [v52 extensionIdentity];

    if (v48)
    {
      goto LABEL_29;
    }

LABEL_30:
    ++v40;
    if (v43 == v39)
    {
      goto LABEL_33;
    }
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v54 = v119;
      v55 = v120;
      (*v109)(v119, v18, v120);
      v56 = v42;
      v48 = sub_224DABCA8();
      (*v108)(v54, v55);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v48 = *v18;
      v49 = v18[2];
      v50 = v42;

      goto LABEL_29;
    }

LABEL_21:
    v48 = *v18;
    v51 = v42;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v45 = v128;
    v46 = v129;
    (*v127)(v128, v18, v129);
    v47 = v42;
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v60 = *(v18 + *(v59 + 48));
    v61 = v42;

    v62 = *(v18 + *(v59 + 64));

    v45 = v128;
    v46 = v129;
    (*v127)(v128, v18, v129);
  }

  v48 = sub_224DABDB8();
  (*v126)(v45, v46);
LABEL_29:
  v63 = sub_224DAF6A8();

  if ((v63 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v80 = sub_224DAB258();
  __swift_project_value_buffer(v80, qword_281365108);
  v81 = v107;
  v82 = v124;
  v83 = v125;
  v121(v107, v124, v125);
  v84 = v134;
  v85 = sub_224DAB228();
  v86 = sub_224DAF2A8();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v138 = v132;
    *v87 = 136446466;
    v141[0] = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v89 = sub_224A3D19C(8);
    v90 = v81;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v97 = MEMORY[0x22AA5D1C0](v89, v92, v94, v96);
    v99 = v98;

    v100 = *(v123 + 8);
    v101 = v90;
    v102 = v125;
    v100(v101, v125);
    v103 = sub_224A33F74(v97, v99, &v138);

    *(v87 + 4) = v103;
    *(v87 + 12) = 2114;
    v104 = sub_224A4A248();
    *(v87 + 14) = v104;
    *v88 = v104;
    _os_log_impl(&dword_224A2F000, v85, v86, "[%{public}s]: extension's already busy (%{public}@)", v87, 0x16u);
    sub_224A3311C(v88, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v88, -1, -1);
    v105 = v132;
    __swift_destroy_boxed_opaque_existential_1(v132);
    MEMORY[0x22AA5EED0](v105, -1, -1);
    MEMORY[0x22AA5EED0](v87, -1, -1);

    v100(v124, v102);
  }

  else
  {

    v106 = *(v123 + 8);
    v106(v81, v83);
    v106(v82, v83);
  }

  return 0;
}

uint64_t sub_224B41EDC@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
    v18 = a2[4];
    sub_224DAFEE8();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_224B420E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      swift_dynamicCast();
      sub_224DAF9B8();
      v7 = *(v8 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224B421FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_224A6FB70(0, v1, 0);
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
        sub_224A6FB70((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_224A739A4(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_224B42310(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_224ADA5A4(0, v1, 0);
    v2 = v12;
    v4 = *(type metadata accessor for PlatterContentError(0) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_224A43A04(&qword_281359048, type metadata accessor for PlatterContentError);
    do
    {
      v7 = swift_allocError();
      sub_224A414C4(v5, v8, type metadata accessor for PlatterContentError);
      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_224ADA5A4((v9 > 1), v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v7;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_224B424B8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  swift_getObjectType();
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  type metadata accessor for TaskService();
  swift_getMetatypeMetadata();
  return sub_224DAEE28();
}

uint64_t sub_224B42564()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224B425B0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_224DAEE78();
}

uint64_t sub_224B425B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224B42600(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88();
  }
}

uint64_t sub_224B42678(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *v1;
  if (!(*v1 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    v17 = *v1;
  }

  v18 = sub_224DAF838();
  v8 = __OFADD__(v18, v5);
  result = v18 + v5;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_224A57BDC(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  result = sub_224B2F0C4(&v36, (v3 + 8 * v10 + 32), v11, v4);
  if (result < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v8)
    {
      __break(1u);
LABEL_18:
      v21 = (v13 + 64) >> 6;
      while (1)
      {
        v22 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          goto LABEL_8;
        }

        v23 = *(v12 + 8 * v22);
        ++v3;
        if (v23)
        {
          v19 = (v23 - 1) & v23;
          v20 = __clz(__rbit64(v23)) | (v22 << 6);
          v3 = v22;
          goto LABEL_23;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  result = v36;
  if (v14 != v11)
  {
LABEL_8:
    result = sub_224A3B7E4();
    *v1 = v2;
    return result;
  }

LABEL_15:
  v4 = *(v3 + 16);
  v12 = v37;
  v13 = v38;
  v3 = v39;
  v35 = v37;
  if (!v40)
  {
    goto LABEL_18;
  }

  v19 = (v40 - 1) & v40;
  v20 = __clz(__rbit64(v40)) | (v39 << 6);
  v21 = (v38 + 64) >> 6;
LABEL_23:
  v24 = result;
  v25 = *(*(result + 56) + 8 * v20);
  v26 = v25;
  v27 = v25;
  v28 = v35;
  while (1)
  {
LABEL_25:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = v27;
      sub_224DAF038();
      v27 = v34;
      v28 = v35;
    }

    v2 = *v1;
    v29 = *v1 & 0xFFFFFFFFFFFFFF8;
    v30 = *(v29 + 0x18) >> 1;
    if (v4 < v30)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v29 + 32 + 8 * v4++) = v27;
    if (!v19)
    {
      break;
    }

    result = v24;
LABEL_35:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(*(result + 56) + ((v3 << 9) | (8 * v33)));
    v28 = v35;
    if (v4 == v30)
    {
      v4 = v30;
      *(v29 + 16) = v30;
      goto LABEL_25;
    }
  }

  v31 = v3;
  result = v24;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v21)
    {
      *(v29 + 16) = v4;
      goto LABEL_8;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v3 = v32;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_224B42914(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_224AD95EC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3578, &unk_224DB3B30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_224B42A30(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_224AD9600(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3590, &qword_224DB5660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_224B42BB8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_224DAF838();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_224DAF838();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_224A57BDC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_224B42CDC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_224B42E20(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_224B42E40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_224B42E98(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_224B42EF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_224DAF838();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_224DAF968();
}

uint64_t sub_224B42F5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224DAF5D8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43100(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4080, &qword_27D6F4078, &qword_224DB5670);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4078, &qword_224DB5670);
            v9 = sub_224AE89EC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4070, &qword_224DB5668);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B432B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43464(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40B8, &qword_27D6F40B0, &unk_224DB5690);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40B0, &unk_224DB5690);
            v9 = sub_224AE896C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40A8, &qword_224DB5688);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43614(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40D0, &qword_27D6F40C8, &qword_224DB56A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40C8, &qword_224DB56A0);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B437C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40E8, &qword_27D6F40E0, &qword_224DB56C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40E0, &qword_224DB56C0);
            v9 = sub_224AE8A74(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ExtensionTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B4396C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4090, &qword_27D6F4088, &unk_224DC1A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4088, &unk_224DC1A90);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43B20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F4058, &qword_27D6F4050, &unk_224DB5650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4050, &unk_224DB5650);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224A3B79C(0, &qword_281350A58, 0x277D06A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43CD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_224DAF838();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_224DAF838();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_224A33088(&qword_27D6F40A0, &qword_27D6F4098, &unk_224DB5678);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4098, &unk_224DB5678);
            v9 = sub_224A6996C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_224DAF538();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B43EC0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        return sub_224DAF838();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA5DCC0](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_59;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_unknownObjectRelease();
      if (v10 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_60;
    }
  }

  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_224DAF838())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_224DAF838();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v3 + 8 * v13 + 32);
      }

      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17 && (v18 = v17, swift_unknownObjectRelease(), v18 == a2))
      {
      }

      else
      {
        v19 = swift_unknownObjectWeakLoadStrong();

        if (v19)
        {
          swift_unknownObjectRelease();
          if (v7 != v13)
          {
            if (v5)
            {
              v20 = MEMORY[0x22AA5DCC0](v7, v3);
              v21 = MEMORY[0x22AA5DCC0](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v22)
              {
                goto LABEL_64;
              }

              if (v13 >= v22)
              {
                goto LABEL_65;
              }

              v20 = *(v3 + 32 + 8 * v7);
              v21 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_224B42EF8(v3);
              v23 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v23) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v21;

            if ((v3 & 0x8000000000000000) != 0 || v23)
            {
              v3 = sub_224B42EF8(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v13 >= *(v5 + 16))
            {
              goto LABEL_62;
            }

            v14 = v5 + 8 * v13;
            v15 = *(v14 + 32);
            *(v14 + 32) = v20;

            *a1 = v3;
          }

          v11 = __OFADD__(v7++, 1);
          if (v11)
          {
            goto LABEL_61;
          }
        }
      }

      v11 = __OFADD__(v13++, 1);
      if (v11)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}