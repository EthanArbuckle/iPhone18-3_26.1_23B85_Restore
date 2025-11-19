uint64_t sub_21BC65848(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4];
  v6 = objc_opt_self();
  *&v18 = 0;
  v7 = [v6 urlDestinationTo:11 error:&v18];
  v8 = v18;
  if (v7)
  {
    v9 = v7;
    sub_21BE25B5C();
    v10 = v8;

    v11 = 0;
  }

  else
  {
    v12 = v18;
    v13 = sub_21BE25A8C();

    swift_willThrow();
    v11 = 1;
  }

  v14 = sub_21BE25B9C();
  (*(*(v14 - 8) + 56))(v5, v11, 1, v14);
  sub_21BDEF00C(v5);
  v18 = *(a1 + 56);
  v17[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  result = sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BC65A04@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BC65AE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 17) = 0;
  }
}

uint64_t sub_21BC65CE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_21BC637C0(a1);
}

unint64_t sub_21BC65D64()
{
  result = qword_27CDB80F0;
  if (!qword_27CDB80F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65DF0();
    sub_21BC65EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80F0);
  }

  return result;
}

unint64_t sub_21BC65DF0()
{
  result = qword_27CDB80F8;
  if (!qword_27CDB80F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8100, &unk_21BE4D1C0);
    sub_21BC65EA8();
    sub_21BB3B038(&qword_27CDB8118, &qword_27CDB8120, &qword_21BE4D1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB80F8);
  }

  return result;
}

unint64_t sub_21BC65EA8()
{
  result = qword_27CDB8108;
  if (!qword_27CDB8108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8110, &unk_21BE3AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8108);
  }

  return result;
}

unint64_t sub_21BC65F2C()
{
  result = qword_27CDB8140;
  if (!qword_27CDB8140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    sub_21BC65FE8(&qword_27CDB8148, type metadata accessor for SharedGroceryListFlowView);
    sub_21BC66030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8140);
  }

  return result;
}

uint64_t sub_21BC65FE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BC66030()
{
  result = qword_27CDB8150;
  if (!qword_27CDB8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8150);
  }

  return result;
}

uint64_t sub_21BC660E8()
{
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BC66160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_21BE295BC();
    v24 = v10;
    sub_21BE2950C();
    if (sub_21BE2953C())
    {
      sub_21BB3A2A4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_21BC66810(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_21BE293FC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_21BE2953C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_21BC66360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  result = sub_21BE295AC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
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

uint64_t sub_21BC66810(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21BE295AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_21BE293FC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_21BC66A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  result = sub_21BE295AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_21BC66C94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_21BE293FC();
  v5 = -1 << *(a2 + 32);
  result = sub_21BE294FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_21BC66D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  v2 = *v0;
  v3 = sub_21BE2959C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_21BC66E58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21BE2959C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_21BC66F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  v2 = *v0;
  v3 = sub_21BE2959C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_21BC670F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  result = sub_21BE295AC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21BC67560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21BE295AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_21BE293FC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_21BC6776C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  result = sub_21BE295AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21BE29ACC();

      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_21BC679EC(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_21BE2952C();

    if (v17)
    {

      sub_21BB3A2A4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_21BE2951C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_21BC66160(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_21BC66810(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_21BC66C94(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_21BB3A2A4(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_21BE293FC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_21BE2940C();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_21BC683A4(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21BC67C60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();
  v9 = sub_21BE29B0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21BE2995C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21BC68534(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21BC67DB0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21BE29ACC();
  sub_21BC5C62C(a2);
  sub_21BE28ABC();

  v7 = sub_21BE29B0C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_54:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21BC686B4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
    goto LABEL_57;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v12 = 0x696D694C6D6D6F63;
        v11 = 0xEE006D6574497374;
        break;
      case 2:
        v12 = 0xD000000000000013;
        v11 = 0x800000021BE543D0;
        break;
      case 3:
        v12 = 0xD000000000000014;
        v11 = 0x800000021BE543F0;
        break;
      case 4:
        v12 = 0x6E6F697461636F6CLL;
        v11 = 0xEC0000006D657449;
        break;
      case 5:
        v12 = 0xD000000000000013;
        v11 = 0x800000021BE54420;
        break;
      case 6:
        v12 = 0x69636966656E6562;
        v11 = 0xEF6D657449797261;
        break;
      case 7:
        v11 = 0xEE006D6574497375;
        v12 = 0x6C5064756F6C4369;
        break;
      case 8:
        v11 = 0xE800000000000000;
        v12 = 0x6D657449656D6F68;
        break;
      case 9:
        v12 = 0xD000000000000013;
        v11 = 0x800000021BE54460;
        break;
      case 0xA:
        v12 = 0x736143656C707061;
        v11 = 0xED00006D65744968;
        break;
      case 0xB:
        v12 = 0x49746361746E6F63;
        v11 = 0xEB000000006D6574;
        break;
      case 0xC:
        v12 = 0xD000000000000012;
        v11 = 0x800000021BE54490;
        break;
      case 0xD:
        v12 = 0xD000000000000015;
        v11 = 0x800000021BE544B0;
        break;
      case 0xE:
        v12 = 0xD000000000000018;
        v11 = 0x800000021BE544D0;
        break;
      case 0xF:
        v12 = 0xD000000000000012;
        v11 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    switch(a2)
    {
      case 1:
        v13 = 0xEE006D6574497374;
        if (v12 == 0x696D694C6D6D6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      case 2:
        v13 = 0x800000021BE543D0;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 3:
        v13 = 0x800000021BE543F0;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 4:
        v13 = 0xEC0000006D657449;
        if (v12 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 5:
        v13 = 0x800000021BE54420;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 6:
        v13 = 0xEF6D657449797261;
        if (v12 != 0x69636966656E6562)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 7:
        v13 = 0xEE006D6574497375;
        if (v12 != 0x6C5064756F6C4369)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 8:
        v13 = 0xE800000000000000;
        if (v12 != 0x6D657449656D6F68)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 9:
        v13 = 0x800000021BE54460;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 10:
        v14 = 0x736143656C707061;
        v13 = 0xED00006D65744968;
        goto LABEL_47;
      case 11:
        v13 = 0xEB000000006D6574;
        if (v12 != 0x49746361746E6F63)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 12:
        v13 = 0x800000021BE54490;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 13:
        v13 = 0x800000021BE544B0;
        if (v12 != 0xD000000000000015)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 14:
        v13 = 0x800000021BE544D0;
        if (v12 != 0xD000000000000018)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 15:
        v13 = 0x800000021BE544F0;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v12 != v14)
        {
          goto LABEL_49;
        }

LABEL_48:
        if (v11 != v13)
        {
LABEL_49:
          v15 = sub_21BE2995C();

          if (v15)
          {
            goto LABEL_56;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_54;
          }

          continue;
        }

LABEL_56:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_57:
        *a1 = a2;
        return result;
    }
  }
}

void sub_21BC683A4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_21BC66810(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21BC66E58(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_21BC67560(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_21BE293FC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_21BB3A2A4(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_21BE2940C();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21BE299EC();
  __break(1u);
}

uint64_t sub_21BC68534(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21BC66A30(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21BC66F98();
      goto LABEL_16;
    }

    sub_21BC6776C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();
  result = sub_21BE29B0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21BE2995C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21BE299EC();
  __break(1u);
  return result;
}

uint64_t sub_21BC686B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21BC66360(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_21BC66D18();
        goto LABEL_61;
      }

      sub_21BC670F4(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_21BE29ACC();
    sub_21BC5C62C(v6);
    sub_21BE28ABC();

    result = sub_21BE29B0C();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x696D694C6D6D6F63;
            v13 = 0xEE006D6574497374;
            break;
          case 2:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE543D0;
            break;
          case 3:
            v14 = 0xD000000000000014;
            v13 = 0x800000021BE543F0;
            break;
          case 4:
            v14 = 0x6E6F697461636F6CLL;
            v13 = 0xEC0000006D657449;
            break;
          case 5:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE54420;
            break;
          case 6:
            v14 = 0x69636966656E6562;
            v13 = 0xEF6D657449797261;
            break;
          case 7:
            v13 = 0xEE006D6574497375;
            v14 = 0x6C5064756F6C4369;
            break;
          case 8:
            v13 = 0xE800000000000000;
            v14 = 0x6D657449656D6F68;
            break;
          case 9:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE54460;
            break;
          case 0xA:
            v14 = 0x736143656C707061;
            v13 = 0xED00006D65744968;
            break;
          case 0xB:
            v14 = 0x49746361746E6F63;
            v13 = 0xEB000000006D6574;
            break;
          case 0xC:
            v14 = 0xD000000000000012;
            v13 = 0x800000021BE54490;
            break;
          case 0xD:
            v14 = 0xD000000000000015;
            v13 = 0x800000021BE544B0;
            break;
          case 0xE:
            v14 = 0xD000000000000018;
            v13 = 0x800000021BE544D0;
            break;
          case 0xF:
            v14 = 0xD000000000000012;
            v13 = 0x800000021BE544F0;
            break;
          default:
            break;
        }

        v15 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
        switch(v6)
        {
          case 1:
            v15 = 0xEE006D6574497374;
            if (v14 == 0x696D694C6D6D6F63)
            {
              goto LABEL_55;
            }

            goto LABEL_56;
          case 2:
            v15 = 0x800000021BE543D0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 3:
            v15 = 0x800000021BE543F0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 4:
            v15 = 0xEC0000006D657449;
            if (v14 != 0x6E6F697461636F6CLL)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 5:
            v15 = 0x800000021BE54420;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 6:
            v15 = 0xEF6D657449797261;
            if (v14 != 0x69636966656E6562)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 7:
            v15 = 0xEE006D6574497375;
            if (v14 != 0x6C5064756F6C4369)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 8:
            v15 = 0xE800000000000000;
            if (v14 != 0x6D657449656D6F68)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 9:
            v15 = 0x800000021BE54460;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 10:
            v16 = 0x736143656C707061;
            v15 = 0xED00006D65744968;
            goto LABEL_54;
          case 11:
            v15 = 0xEB000000006D6574;
            if (v14 != 0x49746361746E6F63)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 12:
            v15 = 0x800000021BE54490;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 13:
            v15 = 0x800000021BE544B0;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 14:
            v15 = 0x800000021BE544D0;
            if (v14 != 0xD000000000000018)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 15:
            v15 = 0x800000021BE544F0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          default:
LABEL_54:
            if (v14 != v16)
            {
              goto LABEL_56;
            }

LABEL_55:
            if (v13 == v15)
            {
              goto LABEL_64;
            }

LABEL_56:
            v17 = sub_21BE2995C();

            if (v17)
            {
              goto LABEL_65;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_61:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_64:

LABEL_65:
    result = sub_21BE299EC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

void sub_21BC68CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v47 = a2;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21BE2950C();
    sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
    sub_21BC692B8();
    sub_21BE28E7C();
    v3 = v55;
    v4 = v56;
    v5 = v57;
    v6 = v58;
    v7 = v59;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v9 = ~v8;
    v10 = -v8;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 56);

    v5 = v9;
    v6 = 0;
  }

  v43 = v5;
  v12 = (v5 + 64) >> 6;
  v45 = v4;
  v46 = v3;
  for (i = v12; ; v12 = i)
  {
    if (v3 < 0)
    {
      v18 = sub_21BE2953C();
      if (!v18 || (v60 = v18, sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8), swift_dynamicCast(), v17 = v53, v15 = v6, v16 = v7, !v53))
      {
LABEL_37:
        sub_21BC50480();
        return;
      }
    }

    else
    {
      v13 = v6;
      v14 = v7;
      v15 = v6;
      if (!v7)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            goto LABEL_37;
          }

          v14 = *(v4 + 8 * v15);
          ++v13;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_14:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
        goto LABEL_37;
      }
    }

    v51 = v17;
    v48 = v16;
    v49 = v15;
    v19 = *(v47 + 32);
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_8:

    v7 = v48;
    v6 = v49;
    v4 = v45;
    v3 = v46;
  }

  if (v19 < 0)
  {
    v40 = *(v47 + 32);
  }

  v20 = sub_21BE2951C();
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (v20 >= 1)
  {
    v21 = 0;
    v52 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v52)
      {
        v22 = MEMORY[0x21CF047C0](v21, v19);
      }

      else
      {
        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 appleID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_21BE28A0C();
        v28 = v27;

        v29 = [v51 emails];
        v30 = sub_21BE28C3C();

        v53 = v26;
        v54 = v28;
        MEMORY[0x28223BE20](v31);
        v42 = &v53;
        LOBYTE(v26) = sub_21BC9BF08(sub_21BC69628, v41, v30);

        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = [v23 memberPhoneNumbers];
        if (v32)
        {
          v33 = v32;
          v34 = sub_21BE28A0C();
          v36 = v35;

          v37 = [v51 phones];
          v38 = sub_21BE28C3C();

          v53 = v34;
          v54 = v36;
          MEMORY[0x28223BE20](v39);
          v42 = &v53;
          LOBYTE(v37) = sub_21BC9BF08(sub_21BBF0CC4, v41, v38);

          if (v37)
          {
LABEL_32:
            sub_21BC679EC(&v53, v23, &qword_280BD8A40, 0x277D08268, &qword_27CDB8198, &qword_21BE3AE88);

            goto LABEL_23;
          }
        }
      }

LABEL_23:
      if (v20 == ++v21)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_21BC691A4()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BC691F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE2723C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC6925C(uint64_t a1)
{
  v2 = sub_21BE2723C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC692B8()
{
  result = qword_27CDB8190;
  if (!qword_27CDB8190)
  {
    sub_21BB3A2A4(255, &qword_27CDB60E0, 0x277D445D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8190);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21BC6936C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21BC693B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BC6941C()
{
  result = qword_27CDB81A8;
  if (!qword_27CDB81A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80E8, &unk_21BE3AE00);
    sub_21BBC24D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C8, &qword_21BE3ADE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C0, &qword_21BE3ADD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    sub_21BBC2528();
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21BC65F2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB81A8);
  }

  return result;
}

uint64_t sub_21BC69644(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = sub_21BE28A0C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(*(v5 + 64) + 40);
  *v8 = a2;
  v8[1] = v6;
  v8[2] = v7;
  v9 = a2;

  return MEMORY[0x282200948](v5);
}

uint64_t FamilyMemberWithSharedAppleCard.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = *v0;
  sub_21BE2941C();
  sub_21BE29AEC();
  if (v2)
  {
    sub_21BE28ABC();
  }

  sub_21BE29AEC();
  if (v5)
  {
    return sub_21BE29AEC();
  }

  sub_21BE29AEC();
  return MEMORY[0x21CF04C80](v4);
}

uint64_t FamilyMemberWithSharedAppleCard.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21BE29ACC();
  sub_21BE2941C();
  sub_21BE29AEC();
  if (v3)
  {
    sub_21BE28ABC();
  }

  sub_21BE29AEC();
  sub_21BE29AEC();
  if (!v6)
  {
    MEMORY[0x21CF04C80](v5);
  }

  return sub_21BE29B0C();
}

uint64_t sub_21BC69870()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21BE29ACC();
  FamilyMemberWithSharedAppleCard.hash(into:)();
  return sub_21BE29B0C();
}

uint64_t sub_21BC698E0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21BE29ACC();
  FamilyMemberWithSharedAppleCard.hash(into:)();
  return sub_21BE29B0C();
}

uint64_t sub_21BC69960()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC699D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC69A5C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_21BE26A4C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_21BC69B50, v7, v6);
}

uint64_t sub_21BC69B50()
{
  v1 = v0[8];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "AppleCardFamilySettingsViewModel, appleCardPublisher value changed", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_21BC69CF4;

    return sub_21BC6A4A4();
  }

  else
  {
    v12 = v0[9];

    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21BC69CF4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BC69E34, v5, v4);
}

uint64_t sub_21BC69E34()
{
  v1 = v0[9];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

id AppleCardFamilySettingsViewModel.__deallocating_deinit()
{
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppleCardFamilySettingsViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BC6A178()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "AppleCardFamilySettingsViewModel, got notification to update service account", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();
  v15 = v1;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_21BBA932C(0, 0, v5, &unk_21BE3B390, v17);
}

uint64_t sub_21BC6A3B0()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BC6A4A4();
}

uint64_t sub_21BC6A4A4()
{
  v1[25] = v0;
  v2 = sub_21BE26A4C();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = sub_21BE28D7C();
  v1[34] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[35] = v6;
  v1[36] = v5;

  return MEMORY[0x2822009F8](sub_21BC6A5CC, v6, v5);
}

uint64_t sub_21BC6A5CC()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore;
  v0[37] = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore;
  if (*(*__swift_project_boxed_opaque_existential_1Tm((v1 + v2), *(v1 + v2 + 24)) + qword_280BDCB78) == 1)
  {
    v3 = (v0[25] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_familyCircleStore);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v0[38] = v6;
    if (v6)
    {
      v7 = v0[33];
      v0[39] = sub_21BE28D6C();
      v9 = sub_21BE28D0C();
      v0[40] = v9;
      v0[41] = v8;

      return MEMORY[0x2822009F8](sub_21BC6A850, v9, v8);
    }

    v20 = v0[34];
    v21 = v0[29];

    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    v22 = os_log_type_enabled(v12, v13);
    v15 = v0[29];
    v17 = v0[26];
    v16 = v0[27];
    if (v22)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "AppleCardFamilySettingsViewModel, no family";
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v0[34];
    v11 = v0[28];

    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "AppleCardFamilySettingsViewModel, not showing apple card row, no need to load model";
LABEL_10:
      _os_log_impl(&dword_21BB35000, v12, v13, v19, v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }
  }

  (*(v16 + 8))(v15, v17);
  v24 = v0[31];
  v23 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  v27 = v0[28];

  v28 = v0[1];

  return v28();
}

uint64_t sub_21BC6A850()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[25];
  v0[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8238, &unk_21BE4DC00);
  v0[44] = sub_21BE28D6C();
  v4 = swift_task_alloc();
  v0[45] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_21BC6A994;

  return MEMORY[0x282200600](v0 + 24);
}

uint64_t sub_21BC6A994()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v8 = *v0;

  v5 = *(v1 + 328);
  v6 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_21BC6AAF4, v6, v5);
}

uint64_t sub_21BC6AAF4()
{
  v1 = v0[39];

  v0[47] = v0[24];
  v2 = v0[35];
  v3 = v0[36];

  return MEMORY[0x2822009F8](sub_21BC6AB60, v2, v3);
}

uint64_t sub_21BC6AB60()
{
  v1 = v0[47];
  v2 = v0[33];

  v0[48] = sub_21BC708F8(v3);

  v0[49] = sub_21BC70798(v1);
  v0[50] = 0;

  v0[51] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[52] = v5;
  v0[53] = v4;

  return MEMORY[0x2822009F8](sub_21BC6AC28, v5, v4);
}

uint64_t sub_21BC6AC28()
{
  v1 = v0[48];
  v2 = v0[33];
  v3 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8248, &qword_21BE3B138);
  v0[54] = sub_21BE28D6C();
  v4 = swift_task_alloc();
  v0[55] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_21BC6AD64;

  return MEMORY[0x282200600](v0 + 16);
}

uint64_t sub_21BC6AD64()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v8 = *v0;

  v5 = *(v1 + 424);
  v6 = *(v1 + 416);

  return MEMORY[0x2822009F8](sub_21BC6AEC4, v6, v5);
}

uint64_t sub_21BC6AEC4()
{
  v1 = v0[51];
  v2 = v0[33];

  v0[57] = v0[16];
  v0[58] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[59] = v4;
  v0[60] = v3;

  return MEMORY[0x2822009F8](sub_21BC6AF60, v4, v3);
}

uint64_t sub_21BC6AF60()
{
  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[33];
  v4 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  v0[61] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v0[62] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_21BC6B090;

  return MEMORY[0x282200600](v0 + 17);
}

uint64_t sub_21BC6B090()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 488);
  v5 = *(*v0 + 456);
  v9 = *v0;

  v6 = *(v1 + 480);
  v7 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_21BC6B214, v7, v6);
}

uint64_t sub_21BC6B214()
{
  v1 = v0[58];
  v2 = v0[33];

  v0[64] = v0[17];
  v0[65] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[66] = v4;
  v0[67] = v3;

  return MEMORY[0x2822009F8](sub_21BC6B2B4, v4, v3);
}

uint64_t sub_21BC6B2B4()
{
  v1 = v0[49];
  v2 = v0[33];
  v3 = v0[25];
  v0[68] = sub_21BE28D6C();
  v4 = swift_task_alloc();
  v0[69] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[70] = v6;
  *v6 = v0;
  v6[1] = sub_21BC6B3B4;
  v7 = v0[42];
  v8 = v0[43];

  return MEMORY[0x282200600](v0 + 18);
}

uint64_t sub_21BC6B3B4()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v5 = *(*v0 + 392);
  v9 = *v0;

  v6 = *(v1 + 536);
  v7 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_21BC6B538, v7, v6);
}

uint64_t sub_21BC6B538()
{
  v1 = v0[65];

  v0[71] = v0[18];
  v2 = v0[35];
  v3 = v0[36];

  return MEMORY[0x2822009F8](sub_21BC6B5A4, v2, v3);
}

uint64_t sub_21BC6B5A4()
{
  v145 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 512);
  v3 = *(v0 + 400);
  v4 = *(v0 + 272);
  v5 = *(v0 + 200);

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 152) = v2;
  v7 = v5;
  sub_21BE26CBC();

  v9 = sub_21BC708F8(v8);

  v10 = 0;
  v12 = v9 + 64;
  v11 = *(v9 + 64);
  v132 = v0 + 16;
  v133 = v9;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v11;
  v16 = (63 - v14) >> 6;
  v137 = v0;
  if ((v13 & v11) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      do
      {
LABEL_8:
        v18 = *(v0 + 200);
        v19 = *(*(v133 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v15)))));
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = v19;
        v21 = sub_21BE26C9C();
        v9 = v22;
        v23 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v9 = v23;
        v134 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_21BBBD6B0(0, *(v23 + 2) + 1, 1, v23);
          *v9 = v23;
        }

        KeyPath = *(v23 + 2);
        v25 = *(v23 + 3);
        if (KeyPath >= v25 >> 1)
        {
          v23 = sub_21BBBD6B0((v25 > 1), KeyPath + 1, 1, v23);
          *v9 = v23;
        }

        *(v23 + 2) = KeyPath + 1;
        v26 = &v23[48 * KeyPath];
        *(v26 + 5) = 0;
        *(v26 + 6) = 0;
        v15 &= v15 - 1;
        *(v26 + 4) = v20;
        v26[56] = 1;
        *(v26 + 8) = 0;
        v26[72] = 0;
        v134(v132, 0);

        v0 = v137;
      }

      while (v15);
    }
  }

  v27 = *(v0 + 200);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v28 = *(*(v0 + 160) + 16);

  if (v28)
  {
    v29 = *(v0 + 304);
    v30 = *(v0 + 200);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v31 = *(*(v0 + 168) + 16);

    v32 = [v29 members];
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v33 = sub_21BE28C3C();

    if (v33 >> 62)
    {
      v34 = sub_21BE2951C();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v34, 1))
    {
      __break(1u);
      return result;
    }

    if (v31 == v34 - 1)
    {
      v36 = *(v0 + 248);
      sub_21BE2614C();
      v37 = sub_21BE26A2C();
      v38 = sub_21BE28FFC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_21BB35000, v37, v38, "AppleCardFamilySettingsViewModel, shared with all family members. Hide Share Card Button.", v39, 2u);
        MEMORY[0x21CF05C50](v39, -1, -1);
      }

      v40 = *(v0 + 248);
      v41 = *(v0 + 208);
      v42 = *(v0 + 216);
      v43 = *(v0 + 200);

      (*(v42 + 8))(v40, v41);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 577) = 0;
      v44 = v43;
      sub_21BE26CBC();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 578) = 1;
      v45 = v44;
      sub_21BE26CBC();
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v131 = 0x800000021BE59EE0;
      v48 = sub_21BE2599C();
      v50 = v49;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 112) = v48;
      *(v0 + 120) = v50;
      v51 = v45;
      sub_21BE26CBC();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 580) = 1;
      v52 = v51;
      goto LABEL_38;
    }

    v70 = *(v0 + 240);
    sub_21BE2614C();
    v71 = sub_21BE26A2C();
    v72 = sub_21BE28FFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_21BB35000, v71, v72, "AppleCardFamilySettingsViewModel, shared with some members", v73, 2u);
      MEMORY[0x21CF05C50](v73, -1, -1);
    }

    v74 = *(v0 + 240);
    v12 = *(v0 + 208);
    v75 = *(v0 + 216);
    v76 = *(v0 + 200);

    (*(v75 + 8))(v74, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_21BE32770;
    v9 = swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v10 = *(v0 + 176);
    v0 = *(v10 + 16);
    if (v0)
    {
      v77 = 0;
      v78 = (v10 + 48);
      v16 = MEMORY[0x277D84F90];
      KeyPath = MEMORY[0x277D83800];
      while (v77 < *(v10 + 16))
      {
        v79 = *v78;
        v80 = *(v78 - 2);

        v81 = v80;
        *(v137 + 64) = sub_21BE2917C();
        *(v137 + 72) = v82;
        v12 = sub_21BE28B8C();
        v84 = v83;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_21BBBC990(0, *(v16 + 16) + 1, 1, v16);
        }

        v9 = *(v16 + 16);
        v85 = *(v16 + 24);
        if (v9 >= v85 >> 1)
        {
          v16 = sub_21BBBC990((v85 > 1), v9 + 1, 1, v16);
        }

        ++v77;
        *(v16 + 16) = v9 + 1;
        v86 = v16 + 16 * v9;
        *(v86 + 32) = v12;
        *(v86 + 40) = v84;
        v78 += 6;
        if (v0 == v77)
        {
          goto LABEL_37;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
      goto LABEL_41;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_37:
    v0 = v137;
    v135 = *(v137 + 200);

    *(v137 + 184) = v16;
    type metadata accessor for ConfirmChildAgeViewModel();
    v87 = swift_getObjCClassFromMetadata();
    v88 = objc_opt_self();
    v89 = [v88 bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    sub_21BBBF03C();
    v90 = sub_21BE2897C();
    v92 = v91;

    *(v136 + 56) = MEMORY[0x277D837D0];
    *(v136 + 64) = sub_21BBBEFE8();
    *(v136 + 32) = v90;
    *(v136 + 40) = v92;

    v93 = [v88 bundleForClass_];
    v131 = 0xEC00000048544957;
    sub_21BE2599C();

    v94 = sub_21BE289DC();
    v96 = v95;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v137 + 80) = v94;
    *(v137 + 88) = v96;
    v97 = v135;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v137 + 576) = 0;
    v98 = v97;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v137 + 583) = 0;
    v99 = v98;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v137 + 579) = 1;
    v100 = v99;
  }

  else
  {
    v53 = *(v0 + 256);
    sub_21BE2614C();
    v54 = sub_21BE26A2C();
    v55 = sub_21BE28FFC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21BB35000, v54, v55, "AppleCardFamilySettingsViewModel, not sharing with any family members, show share flow", v56, 2u);
      MEMORY[0x21CF05C50](v56, -1, -1);
    }

    v57 = *(v0 + 256);
    v58 = *(v0 + 208);
    v59 = *(v0 + 216);
    v60 = *(v0 + 200);

    (*(v59 + 8))(v57, v58);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 1;
    v61 = v60;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 582) = 0;
    v62 = v61;
    sub_21BE26CBC();
    type metadata accessor for ConfirmChildAgeViewModel();
    v63 = swift_getObjCClassFromMetadata();
    v64 = [objc_opt_self() bundleForClass_];
    v131 = 0x800000021BE59F00;
    v65 = sub_21BE2599C();
    v67 = v66;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = v65;
    *(v0 + 104) = v67;
    v68 = v62;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 584) = 0;
    v69 = v68;
  }

LABEL_38:
  sub_21BE26CBC();
  v101 = *(v0 + 200) + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__persistedCache;
  v102 = *v101;
  v103 = *(v101 + 8);
  v104 = *(v101 + 16);
  sub_21BC718B0();
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC718B8();
  v105 = sub_21BE26EAC();
  sub_21BB47CE0();
  sub_21BE1EF04(v138);
  v107 = v138[0];
  v106 = v138[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v108 = *(v0 + 48);
  v109 = *(v0 + 56);
  v110 = sub_21BE289CC();

  v111 = sub_21BE1F55C();
  if (v111)
  {
    v112 = v111;
    v113 = *(v105 + 24);
    v139 = *(v105 + 16);
    v140 = v113;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v107, v106);
    v114 = sub_21BE289CC();

    [v112 setValue:v110 forKey:{v114, v131}];

    v110 = v114;
  }

  v115 = *(v0 + 568);
  v116 = *(v0 + 384);
  v117 = *(v0 + 296);
  v118 = *(v0 + 304);
  v119 = *(v0 + 200);

  v120 = (v119 + v117);
  v121 = *v101;
  v10 = *(v101 + 8);
  v122 = *(v101 + 16);
  sub_21BC718B0();
  sub_21BE26EAC();
  sub_21BB47CE0();
  v123 = sub_21BE1F55C();
  [v123 synchronize];

  LOBYTE(v10) = *(*__swift_project_boxed_opaque_existential_1Tm(v120, v120[3]) + qword_280BDCB80);
  v16 = *(*__swift_project_boxed_opaque_existential_1Tm(v120, v120[3]) + qword_280BDCB58);
  v9 = [v118 ageCategory];
  v12 = *(v115 + 16);

  KeyPath = *(v116 + 16);

  if (qword_27CDB4F90 != -1)
  {
    goto LABEL_46;
  }

LABEL_41:
  v124 = *(v0 + 304);
  LOBYTE(v139) = v10;
  v140 = v16;
  v141 = v9;
  v142 = v12;
  v143 = KeyPath;
  v144 = 771;
  sub_21BD236A8(&v139);

  v126 = *(v0 + 248);
  v125 = *(v0 + 256);
  v128 = *(v0 + 232);
  v127 = *(v0 + 240);
  v129 = *(v0 + 224);

  v130 = *(v0 + 8);

  return v130();
}

uint64_t sub_21BC6C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8250, &qword_21BE3B2E0);
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v4[27] = v13;
  v4[28] = v12;

  return MEMORY[0x2822009F8](sub_21BC6C720, v13, v12);
}

uint64_t sub_21BC6C720()
{
  v1 = [*(v0 + 120) members];
  *(v0 + 232) = sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v2 = sub_21BE28C3C();

  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
    v7 = v3;
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return MEMORY[0x2822002E8](v3, v4, v5, v6);
  }

  v8 = 0;
  v9 = v2 & 0xC000000000000001;
  v10 = &selRef_fa_URLByAddingAirdropInviteParams;
  v43 = v7;
  v44 = v2;
  v42 = v2 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v11 = MEMORY[0x21CF047C0](v8, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v8 + 32);
    }

    v12 = v11;
    if ([v11 v10[268]])
    {
    }

    else
    {
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 128);
      v16 = sub_21BE28DAC();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v13, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v19 = v18 + 2;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = v12;
      sub_21BC39020(v13, v14);
      LODWORD(v14) = (*(v17 + 48))(v14, 1, v16);
      v20 = v15;
      v21 = v12;
      v22 = *(v0 + 160);
      if (v14 == 1)
      {
        sub_21BBDE578(*(v0 + 160));
      }

      else
      {
        sub_21BE28D9C();
        (*(v17 + 8))(v22, v16);
      }

      v2 = v44;
      if (*v19)
      {
        v23 = v18[3];
        v24 = *v19;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_21BE28D0C();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = **(v0 + 112);
      v29 = swift_allocObject();
      *(v29 + 16) = &unk_21BE3B378;
      *(v29 + 24) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
      v30 = v27 | v25;
      if (v27 | v25)
      {
        v30 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v27;
      }

      v31 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v30;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_21BBDE578(v31);
      v9 = v42;
      v7 = v43;
      v10 = &selRef_fa_URLByAddingAirdropInviteParams;
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_21:

  v32 = *(v0 + 192);
  v33 = *(v0 + 112);
  v34 = sub_21BBB561C(MEMORY[0x277D84F90]);
  v35 = *v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  sub_21BE28D4C();
  *(v0 + 240) = v34;
  v36 = *(v0 + 200);
  v37 = sub_21BE28D6C();
  *(v0 + 248) = v37;
  v38 = *(MEMORY[0x277D856B0] + 4);
  v39 = swift_task_alloc();
  *(v0 + 256) = v39;
  *v39 = v0;
  v39[1] = sub_21BC6CB44;
  v40 = *(v0 + 192);
  v6 = *(v0 + 176);
  v5 = MEMORY[0x277D85700];
  v3 = v0 + 72;
  v4 = v37;

  return MEMORY[0x2822002E8](v3, v4, v5, v6);
}

uint64_t sub_21BC6CB44()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6CC88, v5, v4);
}

uint64_t sub_21BC6CC88()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 152);
    sub_21BE2614C();
    v4 = v1;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v0 + 96) = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v49 = v2;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = *(v0 + 144);
      v47 = *(v0 + 136);
      v48 = *(v0 + 152);
      v15 = sub_21BB3D81C(v11, v13, (v0 + 96));

      *(v7 + 4) = v15;
      *(v7 + 12) = 1024;

      v2 = v49;
      *(v7 + 14) = v49 & 1;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, card shared with %s: %{BOOL}d ", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v48, v47);
    }

    else
    {
      v24 = *(v0 + 144);
      v7 = *(v0 + 152);
      v25 = *(v0 + 136);

      (*(v24 + 8))(v7, v25);
    }

    v26 = *(v0 + 240);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 88) = v26;
    v28 = sub_21BBB31A4(v4);
    v32 = *(v26 + 16);
    v33 = (v29 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v29;
      if (*(*(v0 + 240) + 24) < v35)
      {
        sub_21BC7D26C(v35, isUniquelyReferenced_nonNull_native);
        v36 = *(v0 + 88);
        v28 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v29 & 1))
        {
          v37 = *(v0 + 232);

          return sub_21BE299FC();
        }

LABEL_18:
        v38 = *(v0 + 88);
        if (v7)
        {
LABEL_19:
          *(v38[7] + v28) = v2 & 1;

          goto LABEL_25;
        }

LABEL_23:
        v38[(v28 >> 6) + 8] |= 1 << v28;
        *(v38[6] + 8 * v28) = v4;
        *(v38[7] + v28) = v2 & 1;
        v40 = v38[2];
        v34 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v34)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v28, v29, v30, v31);
        }

        v38[2] = v41;
LABEL_25:
        *(v0 + 240) = v38;
        v42 = *(v0 + 200);
        v43 = sub_21BE28D6C();
        *(v0 + 248) = v43;
        v44 = *(MEMORY[0x277D856B0] + 4);
        v45 = swift_task_alloc();
        *(v0 + 256) = v45;
        *v45 = v0;
        v45[1] = sub_21BC6CB44;
        v46 = *(v0 + 192);
        v31 = *(v0 + 176);
        v30 = MEMORY[0x277D85700];
        v28 = v0 + 72;
        v29 = v43;

        return MEMORY[0x2822002E8](v28, v29, v30, v31);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v39 = v28;
    sub_21BC815D4();
    v28 = v39;
    v38 = *(v0 + 88);
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = *(v0 + 240);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 104);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  *v21 = v16;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21BC6D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_21BC6D0F8, 0, 0);
}

uint64_t sub_21BC6D0F8()
{
  *(v0 + 168) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 176) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6D198, v2, v1);
}

uint64_t sub_21BC6D198()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];

  v0[23] = *(v3 + v2);

  return MEMORY[0x2822009F8](sub_21BC6D20C, 0, 0);
}

uint64_t sub_21BC6D20C()
{
  v1 = [*(v0 + 160) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 184);
  v4 = sub_21BE289CC();
  *(v0 + 192) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_21BC6D388;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BBDC4C4;
  *(v0 + 104) = &block_descriptor_116;
  *(v0 + 112) = v5;
  [v3 appleCardIsSharedWithWithAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6D388()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC71F54, 0, 0);
}

uint64_t sub_21BC6D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8258, &qword_21BE3B310);
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = sub_21BE28D7C();
  v5[26] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v5[27] = v11;
  v5[28] = v10;

  return MEMORY[0x2822009F8](sub_21BC6D5B8, v11, v10);
}

uint64_t sub_21BC6D5B8()
{
  v1 = *(v0 + 136);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 136) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v45 = *(v0 + 136);

  v13 = 0;
  v43 = v8;
  v44 = v3;
  while (v7)
  {
LABEL_11:
    v17 = *(v0 + 168);
    v47 = *(v0 + 160);
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(*(v45 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v21 = sub_21BE28DAC();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v17, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v46 = v23 + 2;
    v23[3] = 0;
    v23[4] = v19;
    v23[5] = v20;
    v23[6] = v18;
    sub_21BC39020(v17, v47);
    LODWORD(v17) = (*(v22 + 48))(v47, 1, v21);
    v48 = v20;
    v24 = v19;

    v25 = *(v0 + 160);
    if (v17 == 1)
    {
      sub_21BBDE578(*(v0 + 160));
    }

    else
    {
      sub_21BE28D9C();
      (*(v22 + 8))(v25, v21);
    }

    if (*v46)
    {
      v26 = v23[3];
      v27 = *v46;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_21BE28D0C();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = **(v0 + 128);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_21BE3B320;
    *(v32 + 24) = v23;

    if (v30 | v28)
    {
      v14 = v0 + 64;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 80) = v28;
      *(v0 + 88) = v30;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 168);
    v7 &= v7 - 1;
    *(v0 + 96) = 1;
    *(v0 + 104) = v14;
    *(v0 + 112) = v31;
    swift_task_create();

    v9 = sub_21BBDE578(v15);
    v8 = v43;
    v3 = v44;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v13;
    if (v7)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  v33 = *(v0 + 192);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);

  v36 = *v35;
  sub_21BE28D4C();
  *(v0 + 232) = MEMORY[0x277D84F90];
  v37 = *(v0 + 200);
  v38 = sub_21BE28D6C();
  *(v0 + 240) = v38;
  v39 = *(MEMORY[0x277D856B0] + 4);
  v40 = swift_task_alloc();
  *(v0 + 248) = v40;
  *v40 = v0;
  v40[1] = sub_21BC6D988;
  v41 = *(v0 + 192);
  v12 = *(v0 + 176);
  v11 = MEMORY[0x277D85700];
  v9 = v0 + 16;
  v10 = v38;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21BC6D988()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6DACC, v5, v4);
}

uint64_t sub_21BC6DACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 232);
  if (v1)
  {
    v24 = *(v0 + 24);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 232);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_21BBBD6B0(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_21BBBD6B0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[48 * v9];
    *(v10 + 4) = v1;
    *(v10 + 40) = v24;
    v10[56] = v4 & 1;
    *(v10 + 8) = v3;
    v10[72] = v5 & 1;
    *(v0 + 232) = v7;
    v11 = *(v0 + 200);
    v12 = sub_21BE28D6C();
    *(v0 + 240) = v12;
    v13 = *(MEMORY[0x277D856B0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_21BC6D988;
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v0 + 16, v12, v17, v16);
  }

  else
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 168);
    v20 = *(v0 + 160);
    v21 = *(v0 + 120);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    *v21 = v2;

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_21BC6DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a1;
  v6[22] = a4;
  return MEMORY[0x2822009F8](sub_21BC6DCF4, 0, 0);
}

uint64_t sub_21BC6DCF4()
{
  *(v0 + 200) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 208) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6DD94, v2, v1);
}

uint64_t sub_21BC6DD94()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];

  v0[27] = *(v3 + v2);

  return MEMORY[0x2822009F8](sub_21BC6DE08, 0, 0);
}

uint64_t sub_21BC6DE08()
{
  v1 = [*(v0 + 184) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 216);
  v4 = sub_21BE289CC();
  *(v0 + 224) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21BC6DF84;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C70, &unk_21BE39790);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BC69644;
  *(v0 + 104) = &block_descriptor_90;
  *(v0 + 112) = v5;
  [v3 appleCardTransactionLimitForAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6DF84()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC6E064, 0, 0);
}

uint64_t sub_21BC6E064()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(v0 + 192);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_21BE2599C();
    v10 = v9;

    if (*(v5 + 16) && (v11 = *(v0 + 192), v12 = sub_21BBB31A4(*(v0 + 184)), (v13 & 1) != 0))
    {
      v14 = 0;
      v15 = *(*(*(v0 + 192) + 56) + 8 * v12);
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    v16 = *(v0 + 184);
    v17 = *(v0 + 168);

    *v17 = v16;
    *(v17 + 8) = v8;
    *(v17 + 16) = v10;
    *(v17 + 24) = 0;
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x277D37E50]);
    v19 = v2;

    v20 = sub_21BE289CC();

    v21 = [v18 initWithAmount:v19 currency:v20 exponent:0];

    if (v21)
    {
      v22 = [v21 formattedStringValue];
      if (v22)
      {
        v23 = *(v0 + 192);
        v24 = v22;
        v25 = sub_21BE28A0C();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_21BE32770;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_21BBBEFE8();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        type metadata accessor for ConfirmChildAgeViewModel();
        v29 = swift_getObjCClassFromMetadata();
        v30 = objc_opt_self();

        v31 = [v30 bundleForClass_];
        sub_21BE2599C();

        v32 = sub_21BE289DC();
        v34 = v33;

        if (*(v23 + 16) && (v35 = *(v0 + 192), v36 = sub_21BBB31A4(*(v0 + 184)), (v37 & 1) != 0))
        {
          v14 = 0;
          v15 = *(*(*(v0 + 192) + 56) + 8 * v36);
        }

        else
        {
          v15 = 0;
          v14 = 1;
        }

        v38 = *(v0 + 184);
        v39 = *(v0 + 168);

        *v39 = v38;
        *(v39 + 8) = v32;
        *(v39 + 16) = v34;
        *(v39 + 24) = 0;
        goto LABEL_24;
      }
    }

    if (*(*(v0 + 192) + 16) && (v40 = sub_21BBB31A4(*(v0 + 184)), (v41 & 1) != 0))
    {
      v14 = 0;
      v15 = *(*(*(v0 + 192) + 56) + 8 * v40);
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    v42 = *(v0 + 184);
    v43 = *(v0 + 168);

    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = v42;
    *(v43 + 24) = 0;
  }

LABEL_24:
  v44 = *(v0 + 184);
  v45 = *(v0 + 168);
  *(v45 + 32) = v15;
  *(v45 + 40) = v14;
  v48 = *(v0 + 8);
  v46 = v44;

  return v48();
}

uint64_t sub_21BC6E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8250, &qword_21BE3B2E0);
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v4[27] = v13;
  v4[28] = v12;

  return MEMORY[0x2822009F8](sub_21BC6E5F8, v13, v12);
}

uint64_t sub_21BC6E5F8()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v45 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v49 = v0[15];

  v13 = 0;
  v47 = v8;
  v48 = v3;
  v46 = v0;
  while (v7)
  {
LABEL_10:
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[16];
    v19 = *(*(v49 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v20 = sub_21BE28DAC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v23 = v22 + 2;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v19;
    sub_21BC39020(v16, v17);
    LODWORD(v17) = (*(v21 + 48))(v17, 1, v20);
    v24 = v19;
    v0 = v46;
    v50 = v24;
    v25 = v18;
    v26 = v46[20];
    if (v17 == 1)
    {
      sub_21BBDE578(v46[20]);
      if (*v23)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21BE28D9C();
      (*(v21 + 8))(v26, v20);
      if (*v23)
      {
LABEL_12:
        v27 = v22[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_21BE28D0C();
        v30 = v29;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v28 = 0;
    v30 = 0;
LABEL_15:
    v31 = *v46[14];
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_21BE3B2F0;
    *(v32 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
    v33 = (v30 | v28);
    if (v30 | v28)
    {
      v33 = v45;
      *v45 = 0;
      v45[1] = 0;
      v46[4] = v28;
      v46[5] = v30;
    }

    v14 = v46[21];
    v7 &= v7 - 1;
    v46[6] = 1;
    v46[7] = v33;
    v46[8] = v31;
    swift_task_create();

    v9 = sub_21BBDE578(v14);
    v8 = v47;
    v3 = v48;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v34 = v0[24];
  v36 = v0[14];
  v35 = v0[15];

  v37 = sub_21BBB561C(MEMORY[0x277D84F90]);
  v38 = *v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  sub_21BE28D4C();
  v0[29] = v37;
  v39 = v0[25];
  v40 = sub_21BE28D6C();
  v0[30] = v40;
  v41 = *(MEMORY[0x277D856B0] + 4);
  v42 = swift_task_alloc();
  v0[31] = v42;
  *v42 = v0;
  v42[1] = sub_21BC6E9E4;
  v43 = v0[24];
  v12 = v0[22];
  v11 = MEMORY[0x277D85700];
  v9 = (v0 + 9);
  v10 = v40;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21BC6E9E4()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6EB28, v5, v4);
}

uint64_t sub_21BC6EB28()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 152);
    sub_21BE2614C();
    v4 = v1;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v0 + 96) = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v48 = v2;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = *(v0 + 144);
      v46 = *(v0 + 136);
      v47 = *(v0 + 152);
      v15 = sub_21BB3D81C(v11, v13, (v0 + 96));

      *(v7 + 4) = v15;
      *(v7 + 12) = 1024;

      v2 = v48;
      *(v7 + 14) = v48 & 1;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, has Pending card invite %s: %{BOOL}d ", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v47, v46);
    }

    else
    {
      v24 = *(v0 + 144);
      v7 = *(v0 + 152);
      v25 = *(v0 + 136);

      (*(v24 + 8))(v7, v25);
    }

    v26 = *(v0 + 232);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 88) = v26;
    v28 = sub_21BBB31A4(v4);
    v32 = *(v26 + 16);
    v33 = (v29 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v29;
      if (*(*(v0 + 232) + 24) < v35)
      {
        sub_21BC7D26C(v35, isUniquelyReferenced_nonNull_native);
        v36 = *(v0 + 88);
        v28 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v29 & 1))
        {
          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

          return sub_21BE299FC();
        }

LABEL_18:
        v37 = *(v0 + 88);
        if (v7)
        {
LABEL_19:
          *(v37[7] + v28) = v2 & 1;

          goto LABEL_25;
        }

LABEL_23:
        v37[(v28 >> 6) + 8] |= 1 << v28;
        *(v37[6] + 8 * v28) = v4;
        *(v37[7] + v28) = v2 & 1;
        v39 = v37[2];
        v34 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v34)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v28, v29, v30, v31);
        }

        v37[2] = v40;
LABEL_25:
        *(v0 + 232) = v37;
        v41 = *(v0 + 200);
        v42 = sub_21BE28D6C();
        *(v0 + 240) = v42;
        v43 = *(MEMORY[0x277D856B0] + 4);
        v44 = swift_task_alloc();
        *(v0 + 248) = v44;
        *v44 = v0;
        v44[1] = sub_21BC6E9E4;
        v45 = *(v0 + 192);
        v31 = *(v0 + 176);
        v30 = MEMORY[0x277D85700];
        v28 = v0 + 72;
        v29 = v42;

        return MEMORY[0x2822002E8](v28, v29, v30, v31);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v38 = v28;
    sub_21BC815D4();
    v28 = v38;
    v37 = *(v0 + 88);
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 104);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  *v21 = v16;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21BC6EF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_21BC6EFAC, 0, 0);
}

uint64_t sub_21BC6EFAC()
{
  *(v0 + 168) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 176) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6F04C, v2, v1);
}

uint64_t sub_21BC6F04C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];

  v0[23] = *(v3 + v2);

  return MEMORY[0x2822009F8](sub_21BC6F0C0, 0, 0);
}

uint64_t sub_21BC6F0C0()
{
  v1 = [*(v0 + 160) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 184);
  v4 = sub_21BE289CC();
  *(v0 + 192) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_21BC6F23C;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BBDC4C4;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v5;
  [v3 hasSentPendingAppleCardInvitationToUserWithAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6F23C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC6F31C, 0, 0);
}

uint64_t sub_21BC6F31C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 200);

  *v2 = v1;
  *(v2 + 8) = v3;
  v6 = *(v0 + 8);
  v4 = v1;

  return v6();
}

uint64_t sub_21BC6F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8260, &qword_21BE3B340);
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v4[27] = v13;
  v4[28] = v12;

  return MEMORY[0x2822009F8](sub_21BC6F54C, v13, v12);
}

uint64_t sub_21BC6F54C()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v45 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v49 = v0[15];

  v13 = 0;
  v47 = v8;
  v48 = v3;
  v46 = v0;
  while (v7)
  {
LABEL_10:
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[16];
    v19 = *(*(v49 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v20 = sub_21BE28DAC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v23 = v22 + 2;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v19;
    sub_21BC39020(v16, v17);
    LODWORD(v17) = (*(v21 + 48))(v17, 1, v20);
    v24 = v19;
    v0 = v46;
    v50 = v24;
    v25 = v18;
    v26 = v46[20];
    if (v17 == 1)
    {
      sub_21BBDE578(v46[20]);
      if (*v23)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21BE28D9C();
      (*(v21 + 8))(v26, v20);
      if (*v23)
      {
LABEL_12:
        v27 = v22[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_21BE28D0C();
        v30 = v29;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v28 = 0;
    v30 = 0;
LABEL_15:
    v31 = *v46[14];
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_21BE3B350;
    *(v32 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
    v33 = (v30 | v28);
    if (v30 | v28)
    {
      v33 = v45;
      *v45 = 0;
      v45[1] = 0;
      v46[4] = v28;
      v46[5] = v30;
    }

    v14 = v46[21];
    v7 &= v7 - 1;
    v46[6] = 1;
    v46[7] = v33;
    v46[8] = v31;
    swift_task_create();

    v9 = sub_21BBDE578(v14);
    v8 = v47;
    v3 = v48;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v34 = v0[24];
  v36 = v0[14];
  v35 = v0[15];

  v37 = sub_21BBB6984(MEMORY[0x277D84F90]);
  v38 = *v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
  sub_21BE28D4C();
  v0[29] = v37;
  v39 = v0[25];
  v40 = sub_21BE28D6C();
  v0[30] = v40;
  v41 = *(MEMORY[0x277D856B0] + 4);
  v42 = swift_task_alloc();
  v0[31] = v42;
  *v42 = v0;
  v42[1] = sub_21BC6F938;
  v43 = v0[24];
  v12 = v0[22];
  v11 = MEMORY[0x277D85700];
  v9 = (v0 + 9);
  v10 = v40;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21BC6F938()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6FA7C, v5, v4);
}

uint64_t sub_21BC6FA7C()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[19];
    sub_21BE2614C();
    v4 = v1;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v0[12] = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v48 = v2;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = v0[18];
      v46 = v0[17];
      v47 = v0[19];
      v15 = sub_21BB3D81C(v11, v13, v0 + 12);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2048;

      v2 = v48;
      *(v7 + 14) = v48;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, has card access level %s: %lu ", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v47, v46);
    }

    else
    {
      v24 = v0[18];
      v7 = v0[19];
      v25 = v0[17];

      (*(v24 + 8))(v7, v25);
    }

    v26 = v0[29];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[11] = v26;
    v28 = sub_21BBB31A4(v4);
    v32 = *(v26 + 16);
    v33 = (v29 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v29;
      if (*(v0[29] + 24) < v35)
      {
        sub_21BC7DCF8(v35, isUniquelyReferenced_nonNull_native);
        v36 = v0[11];
        v28 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v29 & 1))
        {
          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

          return sub_21BE299FC();
        }

LABEL_18:
        v37 = v0[11];
        if (v7)
        {
LABEL_19:
          *(v37[7] + 8 * v28) = v2;

          goto LABEL_25;
        }

LABEL_23:
        v37[(v28 >> 6) + 8] |= 1 << v28;
        *(v37[6] + 8 * v28) = v4;
        *(v37[7] + 8 * v28) = v2;
        v39 = v37[2];
        v34 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v34)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v28, v29, v30, v31);
        }

        v37[2] = v40;
LABEL_25:
        v0[29] = v37;
        v41 = v0[25];
        v42 = sub_21BE28D6C();
        v0[30] = v42;
        v43 = *(MEMORY[0x277D856B0] + 4);
        v44 = swift_task_alloc();
        v0[31] = v44;
        *v44 = v0;
        v44[1] = sub_21BC6F938;
        v45 = v0[24];
        v31 = v0[22];
        v30 = MEMORY[0x277D85700];
        v28 = (v0 + 9);
        v29 = v42;

        return MEMORY[0x2822002E8](v28, v29, v30, v31);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v38 = v28;
    sub_21BC81BF8();
    v28 = v38;
    v37 = v0[11];
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[21];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[13];
  (*(v0[23] + 8))(v0[24], v0[22]);

  *v21 = v16;

  v22 = v0[1];

  return v22();
}

uint64_t sub_21BC6FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_21BC6FEF4, 0, 0);
}

uint64_t sub_21BC6FEF4()
{
  *(v0 + 176) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 184) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6FF94, v2, v1);
}

uint64_t sub_21BC6FF94()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];

  v0[24] = *(v3 + v2);

  return MEMORY[0x2822009F8](sub_21BC70008, 0, 0);
}

uint64_t sub_21BC70008()
{
  v1 = [*(v0 + 168) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 192);
  v4 = sub_21BE289CC();
  *(v0 + 200) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21BC70184;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BE17340;
  *(v0 + 104) = &block_descriptor_103;
  *(v0 + 112) = v5;
  [v3 appleCardAccessLevelForAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC70184()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC70264, 0, 0);
}

uint64_t sub_21BC70264()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v2 = v1;
  v2[1] = v3;
  v6 = *(v0 + 8);
  v4 = v1;

  return v6();
}

id AppleCardFamilySettingsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21BC70378@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppleCardFamilySettingsViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC703B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21BC70438(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_21BE26CBC();
}

uint64_t sub_21BC704B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC70538(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BC705B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC70630(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BC706A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21BC70798(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70A58(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_21BC70C2C(v9, v4, v2);
  result = MEMORY[0x21CF05C50](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BC708F8(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70B40(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_21BC70CA4(v9, v4, v2);
  result = MEMORY[0x21CF05C50](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_21BC70A58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + v11) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_21BDFD378(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_21BDFD378(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21BC70B40(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_21BDFD378(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_21BDFD378(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21BC70C2C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21BC70A58(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_21BC70CA4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21BC70B40(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21BC70D1C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_21BC70E10;

  return v6(v2 + 16);
}

uint64_t sub_21BC70E10()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_21BC70F44(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_21BC71038;

  return v6(v2 + 16);
}

uint64_t sub_21BC71038()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v4 = *(v1 + 24);
  *v3 = *(v1 + 16);
  v3[1] = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t _s14FamilyCircleUI0A25MemberWithSharedAppleCardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v15 = a2[4];
  v16 = a1[4];
  v11 = *(a2 + 40);
  sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
  if ((sub_21BE2940C() & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    if (v2 == v7 && v4 == v9)
    {
      if (v5 != v10)
      {
        return 0;
      }

LABEL_12:
      if (v6)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v15)
        {
          v14 = v11;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      return 1;
    }

    v13 = sub_21BE2995C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if ((v5 ^ v10))
    {
      return result;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t type metadata accessor for AppleCardFamilySettingsViewModel()
{
  result = qword_27CDB8210;
  if (!qword_27CDB8210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BC712EC()
{
  result = qword_27CDB81B8;
  if (!qword_27CDB81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB81B8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BC71354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21BC7139C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21BC71400()
{
  sub_21BC46D8C(319, &qword_280BD6A70);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21BC46D8C(319, &qword_27CDB7C58);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_21BC7156C();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21BC7156C()
{
  if (!qword_27CDB8220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8228, &qword_21BE3B0E0);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8220);
    }
  }
}

uint64_t sub_21BC715D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6C578(a1, a2, v7, v6);
}

uint64_t sub_21BC71684(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6F3A4(a1, a2, v7, v6);
}

uint64_t sub_21BC71738(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC6D468(a1, a2, v6, v7, v8);
}

uint64_t sub_21BC717FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6E450(a1, a2, v7, v6);
}

unint64_t sub_21BC718B8()
{
  result = qword_280BD8840;
  if (!qword_280BD8840)
  {
    type metadata accessor for AppleCardFamilyCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD8840);
  }

  return result;
}

uint64_t sub_21BC71910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC6EF88(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC719D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BC70D1C(a1, v5);
}

uint64_t sub_21BC71A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC6DCD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21BC71B50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v5);
}

uint64_t sub_21BC71C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6FED0(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC71CC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BC70F44(a1, v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC71DC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC6D0D4(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC71E88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC6A3B0();
}

uint64_t sub_21BC71F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21BC59D94(0, v1, 0);
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
        sub_21BC59D94((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_21BB414D0(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21BC72058()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

FamilyCircleUI::FANetworkMonitorStatus_optional __swiftcall FANetworkMonitorStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FANetworkMonitorStatus.rawValue.getter()
{
  v1 = 0x656E6E6F63736964;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657463656E6E6F63;
  }
}

uint64_t sub_21BC72190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656E6E6F63736964;
  v4 = 0xEC00000064657463;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657463656E6E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x656E6E6F63736964;
  v8 = 0xEC00000064657463;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657463656E6E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC722A4()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC72354()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC723F0()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BC724A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000064657463;
  v5 = 0x656E6E6F63736964;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657463656E6E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FamilyNetworkMonitor.shared.getter()
{
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }
}

uint64_t FamilyNetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor__connected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor));
  return v0;
}

uint64_t FamilyNetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor__connected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_21BC726A8()
{
  result = qword_27CDB8270;
  if (!qword_27CDB8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8270);
  }

  return result;
}

uint64_t sub_21BC726FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC72808(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_21BC72850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC728C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = *v0;
  v3 = sub_21BE2916C();
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v4;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  v9 = sub_21BE289DC();

  return v9;
}

uint64_t sub_21BC72A28()
{
  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v7;
  if (!v7)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = [v2 me];

  if (v3)
  {
    v4 = [*v0 dsid];
    if (v4 && (v4, (sub_21BE291FC() & 1) != 0))
    {
      v5 = [v3 isOrganizer];

      if (v5)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21BC72B3C@<X0>(ValueMetadata *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83B0, qword_21BE3B8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = *(v2 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v32;
  if (!v32)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v10 = sub_21BE290FC();

  if ((v10 & 1) == 0)
  {
    if ([(ValueMetadata *)a1 isMe])
    {
      v11 = type metadata accessor for FamilyMemberViewModel();
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      *(v12 + 24) = xmmword_21BE358A0;
      *(v12 + 40) = 0;
      v35 = v11;
      v36 = &off_282D96DE8;
      v32 = v12;
      v13 = qword_27CDB4F88;
      v14 = a1;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FAFamilyImageLoader();
      v16 = sub_21BC75D1C();
      v17 = sub_21BC75D70();
      sub_21BE27EEC();
      sub_21BC75DC8(&v32);
      v32 = &type metadata for FamilyMemberCell;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v18 = [(ValueMetadata *)a1 contact];
      if (v18)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v19 = v32;
        if (!v32)
        {
          v19 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v39 = 0;
        sub_21BE283EC();
        v20 = v32;
        v21 = v33;
        v32 = a1;
        v33 = v19;
        LOBYTE(v34) = v20;
        v35 = v21;
        sub_21BC75CC8();
        v22 = a1;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v23 = v32;
        if (!v32)
        {
          v23 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v24 = *(v3 + 144);
        v39 = *(v3 + 136);
        v40 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
        sub_21BE2841C();
        v25 = v32;
        v26 = v33;
        v27 = v34;
        v39 = 0;
        sub_21BE283EC();
        v28 = v32;
        v29 = v33;
        v32 = a1;
        v33 = v23;
        v34 = v25;
        v35 = v26;
        LOBYTE(v36) = v27;
        v37 = v28;
        v38 = v29;
        sub_21BC75C74();
        v30 = a1;
      }
    }
  }

  result = sub_21BE2852C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC72F44(uint64_t a1, void *a2)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_21BE2599C();
  v7 = v6;

  v25 = *(a1 + 104);
  v24 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v22 = *(&v36 + 1);
  v23 = v36;
  v21 = v37;
  v8 = *a1;
  sub_21BC75988(a1, &v36);
  v9 = swift_allocObject();
  sub_21BC759C0(&v36, v9 + 16);
  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  sub_21BE283EC();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21BC75A00;
  *(v11 + 24) = v10;
  v13 = *(a1 + 128);
  LOBYTE(v36) = *(a1 + 120);
  v12 = v36;
  *(&v36 + 1) = v13;
  sub_21BE283FC();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  LOBYTE(v36) = v12;
  *(&v36 + 1) = v13;
  sub_21BE283FC();
  v16 = 0.8;
  if (!v25)
  {
    v16 = 1.0;
  }

  *&v27 = v23;
  *(&v27 + 1) = v22;
  LOBYTE(v28) = v21;
  *(&v28 + 1) = sub_21BC73368;
  *&v29 = 0;
  *(&v29 + 1) = sub_21BC75A08;
  *&v30 = v11;
  *(&v30 + 1) = sub_21BC759F8;
  *&v31 = v9;
  *(&v31 + 1) = v20;
  LOBYTE(v32) = v25;
  *(&v32 + 1) = v24;
  LOBYTE(v33) = v25;
  *(&v33 + 1) = v24;
  *&v34 = KeyPath;
  *(&v34 + 1) = sub_21BC0AE98;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  LOBYTE(v36) = v25;
  *(&v36 + 1) = v24;
  sub_21BE283FC();
  sub_21BC75988(a1, &v36);
  v17 = swift_allocObject();
  sub_21BC759C0(&v36, v17 + 16);
  *(v17 + 168) = a2;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8348, &qword_21BE3B838);
  sub_21BC75790();
  sub_21BE281BC();

  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  return sub_21BB3A4CC(&v36, &qword_27CDB8348, &qword_21BE3B838);
}

uint64_t sub_21BC73374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a1;
  v67 = a2;
  v70 = a4;
  v5 = sub_21BE2825C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v69 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = v60 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v10 = swift_allocObject();
  v61 = xmmword_21BE32770;
  *(v10 + 16) = xmmword_21BE32770;
  v11 = *a3;
  v12 = [*a3 shortName];
  if (v12 || (v12 = [v11 firstName]) != 0)
  {
    v13 = v12;
    v14 = sub_21BE28A0C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v18 = sub_21BBBEFE8();
  *(v10 + 64) = v18;
  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();

  v21 = [v20 bundleForClass_];
  sub_21BE2599C();

  v22 = sub_21BE289DC();
  v24 = v23;

  v71 = v22;
  v72 = v24;
  sub_21BB41FA4();
  v25 = sub_21BE27DBC();
  v64 = v26;
  v65 = v25;
  v62 = v27;
  v63 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v61;
  v30 = [v11 shortName];
  if (v30 || (v30 = [v11 firstName]) != 0)
  {
    v31 = v30;
    v32 = sub_21BE28A0C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  *(v29 + 56) = v17;
  *(v29 + 64) = v18;
  *(v29 + 32) = v32;
  *(v29 + 40) = v34;

  v35 = [v20 bundleForClass_];
  sub_21BE2599C();

  v36 = sub_21BE289DC();
  v38 = v37;

  v71 = v36;
  v72 = v38;
  v39 = sub_21BE27DBC();
  v60[3] = v40;
  *&v61 = v39;
  v60[1] = v41 & 1;
  v60[2] = v42;
  v43 = [v20 bundleForClass_];
  v44 = sub_21BE2599C();
  v46 = v45;

  v71 = v44;
  v72 = v46;
  v47 = sub_21BE27DBC();
  v49 = v48;
  LOBYTE(v46) = v50;
  sub_21BE2823C();
  sub_21BBC7C7C(v47, v49, v46 & 1);

  v51 = [v20 bundleForClass_];
  v52 = sub_21BE2599C();
  v54 = v53;

  v71 = v52;
  v72 = v54;
  v55 = sub_21BE27DBC();
  v57 = v56;
  LOBYTE(v54) = v58;
  sub_21BE2824C();
  sub_21BBC7C7C(v55, v57, v54 & 1);

  return sub_21BE2822C();
}

uint64_t sub_21BC738E0(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9 + 80;
  v11 = *a2;
  v12 = *(a3 + 128);
  v25[0] = *(a3 + 120);
  v26 = v12;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_21BC75988(a3, v25);
  sub_21BE28D7C();
  v14 = a4;
  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = v11;
  sub_21BC759C0(v25, v16 + 48);
  sub_21BBA932C(0, 0, v10, &unk_21BE3B8A0, v16);

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v18 = *(a3 + 112);
  v25[0] = *(a3 + 104);
  v26 = v18;
  sub_21BE283FC();
  v19 = v27;
  v25[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6E61696472617567;
  v21 = MEMORY[0x277D839B0];
  *(inited + 40) = 0xEF64656C67676F54;
  *(inited + 72) = v21;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v19;

  v22 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v25, v22);
}

uint64_t sub_21BC73BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6[6] = a6;
  v9 = sub_21BE26A4C();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = sub_21BE28D7C();
  v6[11] = sub_21BE28D6C();
  v12 = swift_task_alloc();
  v6[12] = v12;
  *v12 = v6;
  v12[1] = sub_21BC73CD8;

  return sub_21BC5408C(a4, a5);
}

uint64_t sub_21BC73CD8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = a1;
  v3[4] = v1;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  v10 = *v1;

  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC73E1C, v8, v7);
}

uint64_t sub_21BC73E1C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_21BB35000, v3, v4, "Guardian toggle xpc call %{BOOL}d", v6, 8u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  (*(v8 + 8))(v7, v9);
  v11 = *(v10 + 128);
  *(v0 + 16) = *(v10 + 120);
  *(v0 + 24) = v11;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BC73F78@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8388, &unk_21BE3B8A8);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(v1 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v11 = v23[0];
  if (!v23[0])
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v12 = sub_21BE2910C();

  v25[0] = v12;
  swift_getKeyPath();
  sub_21BC75988(v2, v23);
  v13 = swift_allocObject();
  sub_21BC759C0(v23, v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8390, &qword_21BE3B8D8);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
  sub_21BC75BE8();
  sub_21BE285BC();
  v14 = v4[2];
  v15 = v22;
  v14(v22, v9, v3);
  v16 = v21;
  v14(v21, v15, v3);
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83A0, &qword_21BE3B8E0) + 48)];
  memset(v25, 0, sizeof(v25));
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, 24);
  WORD4(v28[1]) = -256;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v27;
  *(v17 + 2) = v26;
  *(v17 + 3) = v18;
  *(v17 + 4) = v28[0];
  *(v17 + 74) = *(v28 + 10);
  sub_21BBA3854(v25, v23, &qword_27CDB83A8, &qword_21BE3B8E8);
  v19 = v4[1];
  v19(v9, v3);
  memset(v23, 0, sizeof(v23));
  v24 = -256;
  sub_21BB3A4CC(v23, &qword_27CDB83A8, &qword_21BE3B8E8);
  return (v19)(v15, v3);
}

id sub_21BC74318@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8280, &qword_21BE3B748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8288, &qword_21BE3B750);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8290, &qword_21BE3B758);
  sub_21BB3B038(&qword_27CDB8298, &qword_27CDB8290, &qword_21BE3B758);
  sub_21BE27D0C();
  v12 = sub_21BB3B038(&qword_27CDB82A0, &qword_27CDB8280, &qword_21BE3B748);
  sub_21BE27E3C();
  (*(v3 + 8))(v6, v2);
  v13 = v21;
  v26 = sub_21BC728C4();
  v27 = v14;
  v24 = v2;
  v25 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  v15 = v22;
  sub_21BE27F9C();

  (*(v8 + 8))(v11, v7);
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82A8, &qword_21BE3B760) + 36));
  *v16 = sub_21BC753E0;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0;
  v21 = v13[2];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v17 = sub_21BE26BFC();
  v18 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82B0, &unk_21BE3B768) + 36));
  v19 = v21;
  *v18 = v17;
  v18[1] = v19;

  return v19;
}

uint64_t sub_21BC74690@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82B8, &qword_21BE3B778);
  v8 = *(v29 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v29);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v33 = a1;
  sub_21BC751FC(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82C0, &qword_21BE3B780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82C8, &qword_21BE3B788);
  sub_21BB3B038(&qword_27CDB82D0, &qword_27CDB82C0, &qword_21BE3B780);
  sub_21BC755E4();
  v30 = v13;
  sub_21BE2861C();
  (*(v4 + 104))(v7, *MEMORY[0x277D07F10], v3);
  v14 = MEMORY[0x21CF01150](v7);
  (*(v4 + 8))(v7, v3);
  if (v14)
  {
    v15 = *(a1 + 96);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v16 = v35[0];
    if (!v35[0])
    {
      v16 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v17 = [v16 me];

    if (v17 && (v18 = [v17 isOrganizer], v17, v18) && (v19 = *a1, (sub_21BE2916C() & 1) != 0))
    {
      swift_unknownObjectWeakLoadStrong();
      v35[0] = v19;
      swift_unknownObjectWeakInit();
      v20 = v19;
      swift_unknownObjectRelease();
      sub_21BC75660(v35, v34);
    }

    else
    {
      v34[0] = 0;
      v34[1] = 0;
    }

    sub_21BBB7D84(v34, v35, &qword_27CDB82F0, &qword_21BE3B7E8);
  }

  else
  {
    *v35 = xmmword_21BE3B610;
  }

  v21 = v8[2];
  v22 = v30;
  v23 = v31;
  v24 = v29;
  v21(v31, v30, v29);
  sub_21BBA3854(v35, v34, &qword_27CDB82E0, &qword_21BE3B790);
  v25 = v32;
  v21(v32, v23, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82E8, &qword_21BE3B798);
  sub_21BBA3854(v34, &v25[*(v26 + 48)], &qword_27CDB82E0, &qword_21BE3B790);
  sub_21BB3A4CC(v35, &qword_27CDB82E0, &qword_21BE3B790);
  v27 = v8[1];
  v27(v22, v24);
  sub_21BB3A4CC(v34, &qword_27CDB82E0, &qword_21BE3B790);
  return (v27)(v23, v24);
}

uint64_t sub_21BC74B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB82F8, &qword_21BE3B7F0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8300, &qword_21BE3B7F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8308, &qword_21BE3B800);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v13 = &v49 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8310, &qword_21BE3B808);
  v14 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8318, &qword_21BE3B810);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8320, &qword_21BE3B818);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8328, &qword_21BE3B820);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v49 - v33;
  v54 = *a1;
  v35 = [v54 dsid];
  v53 = a1;
  if (v35)
  {
    v36 = v35;
    if (sub_21BC72A28())
    {
      sub_21BC72F44(a1, v36);
      sub_21BC756BC();
      sub_21BE2809C();
      sub_21BB3A4CC(v20, &qword_27CDB8318, &qword_21BE3B810);
      sub_21BBA3854(v27, v25, &qword_27CDB8320, &qword_21BE3B818);
      sub_21BBA3854(v25, v16, &qword_27CDB8320, &qword_21BE3B818);
      v37 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8378, &qword_21BE3B858) + 48)];
      *v37 = 0u;
      *(v37 + 1) = 0u;
      sub_21BC75900(0, 0, 0, 0);
      sub_21BC75944(0, 0, 0, 0);
      sub_21BB3A4CC(v25, &qword_27CDB8320, &qword_21BE3B818);
      sub_21BBA3854(v16, v13, &qword_27CDB8310, &qword_21BE3B808);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8380, &qword_27CDB8310, &qword_21BE3B808);
      sub_21BE2784C();

      sub_21BB3A4CC(v16, &qword_27CDB8310, &qword_21BE3B808);
      sub_21BB3A4CC(v27, &qword_27CDB8320, &qword_21BE3B818);
      v38 = 0;
      v39 = v57;
      goto LABEL_8;
    }
  }

  v40 = *(a1 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v41 = v60;
  if (!v60)
  {
    v41 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v39 = v57;

  v38 = 1;
LABEL_8:
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8330, &qword_21BE3B828);
  v43 = 1;
  (*(*(v42 - 8) + 56))(v34, v38, 1, v42);
  if (sub_21BE2916C())
  {
    v44 = v52;
    sub_21BC73F78(v52);
    sub_21BBB7D84(v44, v39, &qword_27CDB82F8, &qword_21BE3B7F0);
    v43 = 0;
  }

  (*(v55 + 56))(v39, v43, 1, v56);
  sub_21BBA3854(v34, v32, &qword_27CDB8328, &qword_21BE3B820);
  v45 = v58;
  sub_21BBA3854(v39, v58, &qword_27CDB8300, &qword_21BE3B7F8);
  v46 = v59;
  sub_21BBA3854(v32, v59, &qword_27CDB8328, &qword_21BE3B820);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8338, &qword_21BE3B830);
  sub_21BBA3854(v45, v46 + *(v47 + 48), &qword_27CDB8300, &qword_21BE3B7F8);
  sub_21BB3A4CC(v39, &qword_27CDB8300, &qword_21BE3B7F8);
  sub_21BB3A4CC(v34, &qword_27CDB8328, &qword_21BE3B820);
  sub_21BB3A4CC(v45, &qword_27CDB8300, &qword_21BE3B7F8);
  return sub_21BB3A4CC(v32, &qword_27CDB8328, &qword_21BE3B820);
}

uint64_t sub_21BC751FC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 isMe])
  {
    [v3 isOrganizer];
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  LOBYTE(v5) = v9;
  sub_21BE27CCC();
  v10 = sub_21BE27D9C();
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v6, v8, v5 & 1);

  sub_21BE2833C();
  v15 = sub_21BE27D4C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v10, v12, v14 & 1);

  *a2 = v15;
  a2[1] = v17;
  a2[2] = v19 & 1;
  a2[3] = v21;
  return result;
}

uint64_t sub_21BC753E0()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE3B6A0;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);
}

id sub_21BC75524()
{
  v1 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

unint64_t sub_21BC755E4()
{
  result = qword_27CDB82D8;
  if (!qword_27CDB82D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82C8, &qword_21BE3B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB82D8);
  }

  return result;
}

unint64_t sub_21BC756BC()
{
  result = qword_27CDB8340;
  if (!qword_27CDB8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8318, &qword_21BE3B810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8348, &qword_21BE3B838);
    sub_21BC75790();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8340);
  }

  return result;
}

unint64_t sub_21BC75790()
{
  result = qword_27CDB8350;
  if (!qword_27CDB8350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8348, &qword_21BE3B838);
    sub_21BC7581C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8350);
  }

  return result;
}

unint64_t sub_21BC7581C()
{
  result = qword_27CDB8358;
  if (!qword_27CDB8358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8360, &qword_21BE3B840);
    sub_21BB3B038(&qword_27CDB8368, &qword_27CDB8370, &qword_21BE3B848);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8358);
  }

  return result;
}

uint64_t sub_21BC75900(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BBA4A38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BC75944(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21BBC7C7C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BC75A00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21BC89DB0();
}

uint64_t sub_21BC75A08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_21BC75A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC73BA8(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t objectdestroyTm_7()
{
  MEMORY[0x21CF05D90](v0 + 56);
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_21BC75BA8@<X0>(ValueMetadata **a1@<X0>, void *a2@<X8>)
{
  result = sub_21BC72B3C(*a1, &v4);
  *a2 = v4;
  return result;
}

unint64_t sub_21BC75BE8()
{
  result = qword_27CDB8398;
  if (!qword_27CDB8398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8390, &qword_21BE3B8D8);
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8398);
  }

  return result;
}

unint64_t sub_21BC75C74()
{
  result = qword_27CDB83B8;
  if (!qword_27CDB83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB83B8);
  }

  return result;
}

unint64_t sub_21BC75CC8()
{
  result = qword_27CDB83C0;
  if (!qword_27CDB83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB83C0);
  }

  return result;
}

unint64_t sub_21BC75D1C()
{
  result = qword_27CDB83C8;
  if (!qword_27CDB83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB83C8);
  }

  return result;
}

unint64_t sub_21BC75D70()
{
  result = qword_27CDB69A8;
  if (!qword_27CDB69A8)
  {
    type metadata accessor for FAFamilyImageLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB69A8);
  }

  return result;
}

unint64_t sub_21BC75E1C()
{
  result = qword_27CDB83D0;
  if (!qword_27CDB83D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82B0, &unk_21BE3B768);
    sub_21BC75ED4();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB83D0);
  }

  return result;
}

unint64_t sub_21BC75ED4()
{
  result = qword_27CDB83D8;
  if (!qword_27CDB83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB82A8, &qword_21BE3B760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8288, &qword_21BE3B750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8280, &qword_21BE3B748);
    sub_21BB3B038(&qword_27CDB82A0, &qword_27CDB8280, &qword_21BE3B748);
    swift_getOpaqueTypeConformance2();
    sub_21BB41FA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB83D8);
  }

  return result;
}

uint64_t type metadata accessor for AskToBuyMemberView()
{
  result = qword_27CDB83E0;
  if (!qword_27CDB83E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC7609C()
{
  sub_21BC08FA8();
  if (v0 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v1 <= 0x3F)
    {
      sub_21BBF088C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BC76164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8408, &unk_21BE3B9A8);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v79 = &v71 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v77 = *(v78 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v71 - v8;
  v80 = type metadata accessor for CircleStateControllerHostView(0);
  v9 = *(*(v80 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v71 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8410, &qword_21BE3B9B8);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v71 - v18;
  v20 = sub_21BE25B9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v82 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  result = MEMORY[0x28223BE20](v24);
  v29 = &v71 - v28;
  v30 = *(a1 + 8);
  if (*(v30 + 40))
  {
    v31 = *(v30 + 40);

    sub_21BE262BC();

    v32 = (*(v25 + 88))(v29, v24);
    v33 = *MEMORY[0x277D07FD8];
    (*(v25 + 8))(v29, v24);
    if (v32 == v33)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v35 = [objc_opt_self() bundleForClass_];
      v36 = sub_21BE2599C();
      v38 = v37;

      v86 = v36;
      v87 = v38;
      sub_21BB41FA4();
      *v15 = sub_21BE27DBC();
      *(v15 + 1) = v39;
      v15[16] = v40 & 1;
      *(v15 + 3) = v41;
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8);
      v42 = v85;
      sub_21BE2784C();
      v43 = 0;
LABEL_10:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8420, &qword_21BE3B9C8);
      return (*(*(v70 - 8) + 56))(v42, v43, 1, v70);
    }

    v44 = type metadata accessor for AskToBuyMemberView();
    sub_21BBA3854(a1 + *(v44 + 24), v19, &unk_27CDB57F0, &qword_21BE328A0);
    v45 = v21;
    v46 = *(v21 + 48);
    v47 = v20;
    if (v46(v19, 1, v20) == 1)
    {
      sub_21BB3A4CC(v19, &unk_27CDB57F0, &qword_21BE328A0);
    }

    else
    {
      v48 = v82;
      (*(v45 + 32))(v82, v19, v20);
      v49 = [*(a1 + 16) dsid];
      if (v49)
      {
        v50 = v49;
        v72 = @"FACircleEventTypeSharedService";
        v51 = *(v80 + 20);
        v52 = v81;
        (*(v45 + 16))(&v81[v51], v48, v47);
        (*(v45 + 56))(&v52[v51], 0, 1, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8428, &qword_21BE3B9D0);
        inited = swift_initStackObject();
        v71 = xmmword_21BE32770;
        *(inited + 16) = xmmword_21BE32770;
        v73 = v45;
        *(inited + 32) = 0xD000000000000011;
        *(inited + 40) = 0x800000021BE55FB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
        v54 = swift_initStackObject();
        *(v54 + 16) = v71;
        *(v54 + 32) = 0xD000000000000012;
        *(v54 + 40) = 0x800000021BE55FD0;
        *(v54 + 72) = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        *(v54 + 48) = v50;
        v55 = v72;
        v72 = v50;
        v56 = sub_21BBB52D8(v54);
        swift_setDeallocating();
        sub_21BB3A4CC(v54 + 32, &qword_27CDB57D8, &qword_21BE32860);
        *(inited + 48) = v56;
        v57 = sub_21BBB6A70(inited);
        swift_setDeallocating();
        sub_21BB3A4CC(inited + 32, &qword_27CDB8430, &qword_21BE3B9D8);
        v58 = v52;
        *v52 = v55;
        v59 = v80;
        *&v52[*(v80 + 24)] = v57;
        v60 = &v52[*(v59 + 28)];
        *v60 = &unk_21BE39410;
        *(v60 + 1) = 0;
        v61 = v76;
        sub_21BE26EEC();
        v80 = v47;
        v62 = v74;
        sub_21BC77310(v58, v74, type metadata accessor for CircleStateControllerHostView);
        v63 = v77;
        v64 = *(v77 + 16);
        v65 = v75;
        v66 = v78;
        v64(v75, v61, v78);
        v67 = v79;
        sub_21BC77310(v62, v79, type metadata accessor for CircleStateControllerHostView);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8438, &qword_21BE3B9E0);
        v64((v67 + *(v68 + 48)), v65, v66);
        v69 = *(v63 + 8);
        v69(v65, v66);
        sub_21BC77378(v62);
        sub_21BBA3854(v67, v15, &qword_27CDB8408, &unk_21BE3B9A8);
        swift_storeEnumTagMultiPayload();
        sub_21BB3B038(&qword_27CDB8440, &qword_27CDB8408, &unk_21BE3B9A8);
        v42 = v85;
        sub_21BE2784C();

        sub_21BB3A4CC(v67, &qword_27CDB8408, &unk_21BE3B9A8);
        v69(v61, v66);
        sub_21BC77378(v81);
        (*(v73 + 8))(v82, v80);
        v43 = 0;
        goto LABEL_10;
      }

      (*(v45 + 8))(v48, v20);
    }

    v43 = 1;
    v42 = v85;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC76B68(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC76C3C, v4, v3);
}

uint64_t sub_21BC76C3C()
{
  v1 = v0[5];
  v0[9] = *(v0[3] + 8);
  v0[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x2822009F8](sub_21BC76CD4, v3, v2);
}

void sub_21BC76CD4()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_21BC76DE8;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC76DE8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  v7 = *(v2 + 32);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BC76FE4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BC76F78;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC76F78()
{
  v1 = v0[10];

  v2 = v0[2];

  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2822009F8](sub_21BC053D4, v3, v4);
}

uint64_t sub_21BC76FE4()
{
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21BC77590, v2, v3);
}

uint64_t sub_21BC77048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F0, &qword_21BE3B978);
  sub_21BC76164(v2, a2 + *(v6 + 44));
  sub_21BC77310(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AskToBuyMemberView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BC771E0(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB83F8, &qword_21BE3B990) + 36));
  v10 = v9 + *(sub_21BE2701C() + 20);
  sub_21BE28D8C();
  *v9 = &unk_21BE3B988;
  v9[1] = v8;
  v11 = sub_21BE271CC();
  LOBYTE(v9) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8400, &unk_21BE3B998);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v9;
  return result;
}

uint64_t sub_21BC771E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AskToBuyMemberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC77244()
{
  v2 = *(type metadata accessor for AskToBuyMemberView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BC76B68(v0 + v3);
}

uint64_t sub_21BC77310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC77378(uint64_t a1)
{
  v2 = type metadata accessor for CircleStateControllerHostView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC773D4()
{
  result = qword_27CDB8448;
  if (!qword_27CDB8448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8400, &unk_21BE3B998);
    sub_21BC77460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8448);
  }

  return result;
}

unint64_t sub_21BC77460()
{
  result = qword_27CDB8450;
  if (!qword_27CDB8450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB83F8, &qword_21BE3B990);
    sub_21BB3B038(&qword_27CDB8458, &qword_27CDB8460, &qword_21BE3B9E8);
    sub_21BC77548(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8450);
  }

  return result;
}

uint64_t sub_21BC77548(unint64_t *a1, void (*a2)(uint64_t))
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

FamilyCircleUI::FARUIPersonPickerClientInfoKeys_optional __swiftcall FARUIPersonPickerClientInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

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

unint64_t FARUIPersonPickerClientInfoKeys.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x64657463656C6573;
  }

  *v0;
  return result;
}

void *sub_21BC7763C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 24);
  v6 = *(v0 + 16);
  v11 = v6;
  if (v12 == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v11, &qword_27CDB8508, &unk_21BE3BE40);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BC777A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x64657463656C6573;
  }

  if (v3)
  {
    v5 = 0xEA00000000006449;
  }

  else
  {
    v5 = 0x800000021BE546F0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v7 = 0x800000021BE546F0;
  }

  else
  {
    v7 = 0xEA00000000006449;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();
  }

  return v9 & 1;
}

unint64_t sub_21BC77858()
{
  result = qword_27CDB8468;
  if (!qword_27CDB8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8468);
  }

  return result;
}

uint64_t sub_21BC778AC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC77938()
{
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC779B0()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC77A38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE2980C();

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

void sub_21BC77A98(unint64_t *a1@<X8>)
{
  v2 = 0x800000021BE546F0;
  v3 = 0x64657463656C6573;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEA00000000006449;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21BC77AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84D8, &qword_21BE3BE10);
  v24 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = *(v1 + 32);
  v31 = *(v1 + 40);
  v32 = *(v1 + 56);
  v29 = *(v1 + 40);
  v30 = *(v1 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84E0, &qword_21BE3BE18);
  sub_21BE2841C();
  v8 = v26;
  v9 = v28;
  v22 = v27;
  v23 = *(&v26 + 1);
  type metadata accessor for CGSize(0);
  v29 = 0uLL;
  sub_21BE283EC();
  v10 = v26;
  v11 = v27;
  v12 = swift_allocObject();
  v13 = v2[1];
  v12[1] = *v2;
  v12[2] = v13;
  v14 = v2[3];
  v12[3] = v2[2];
  v12[4] = v14;
  v15 = &v6[*(v3 + 36)];
  v16 = *(sub_21BE2701C() + 20);
  sub_21BC7B244(v2, &v26);
  sub_21BE28D8C();
  *v15 = &unk_21BE3BE28;
  *(v15 + 1) = v12;
  *v6 = v7;
  *(v6 + 1) = v8;
  v17 = v22;
  *(v6 + 2) = v23;
  *(v6 + 3) = v17;
  *(v6 + 4) = v9;
  *(v6 + 40) = v10;
  *(v6 + 7) = v11;
  v26 = v31;
  v27 = v32;
  sub_21BE283FC();
  v18 = swift_allocObject();
  v19 = v2[1];
  v18[1] = *v2;
  v18[2] = v19;
  v20 = v2[3];
  v18[3] = v2[2];
  v18[4] = v20;
  sub_21BC7B244(v2, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BC7B2E0();
  sub_21BC7B400();
  sub_21BE281BC();

  return sub_21BB3A4CC(v6, &qword_27CDB84D8, &qword_21BE3BE10);
}

uint64_t sub_21BC77D78(uint64_t a1)
{
  *(v1 + 152) = a1;
  sub_21BE28D7C();
  *(v1 + 160) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC77E10, v3, v2);
}

void *sub_21BC77E10()
{
  v1 = *(v0 + 152);
  v2 = sub_21BC7763C();
  if (!v2)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  v3 = v2;
  *(v0 + 96) = 0x64657463656C6573;
  *(v0 + 104) = 0xEA00000000006449;
  sub_21BE2958C();
  result = [v3 clientInfo];
  if (!result)
  {
    goto LABEL_38;
  }

  v5 = result;

  v6 = sub_21BE2890C();
  if (!*(v6 + 16) || (v7 = sub_21BBB31E8(v0 + 16), (v8 & 1) == 0))
  {

    sub_21BBB7238(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_10;
  }

  sub_21BB3DCD4(*(v6 + 56) + 32 * v7, v0 + 56);
  sub_21BBB7238(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_10:
    sub_21BB3A4CC(v0 + 56, &qword_27CDB5940, &unk_21BE32B10);
    v10 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v9 = swift_dynamicCast();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (!v9)
  {
    v10 = 0;
    v11 = 0;
  }

LABEL_11:
  v12 = *(v0 + 152);
  v13 = *(v12 + 56);
  *(v0 + 16) = *(v12 + 40);
  *(v0 + 32) = v13;
  *(v0 + 56) = v10;
  *(v0 + 64) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84E0, &qword_21BE3BE18);
  sub_21BE2840C();
  v14 = sub_21BC7763C();
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 152);
    *(v0 + 56) = 0xD000000000000013;
    *(v0 + 64) = 0x800000021BE546F0;
    sub_21BE2958C();
    v17 = *(v16 + 32);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v36 = *(v16 + 32);
      }

      v18 = sub_21BE2951C();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D84F90];
    if (!v18)
    {
LABEL_23:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8510, &qword_21BE3BE58);
      *(v0 + 120) = v28;
      *(v0 + 96) = v19;
      result = [v15 clientInfo];
      if (result)
      {
        v29 = result;
        v30 = *(v0 + 160);
        v31 = sub_21BE2890C();

        if (v28)
        {
          sub_21BB414D0((v0 + 96), (v0 + 56));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21BC80224((v0 + 56), v0 + 16, isUniquelyReferenced_nonNull_native);
          sub_21BBB7238(v0 + 16);
          if (v31)
          {
LABEL_26:
            v33 = sub_21BE288EC();

LABEL_30:
            [v15 setClientInfo_];

            goto LABEL_31;
          }
        }

        else
        {
          sub_21BB3A4CC(v0 + 96, &qword_27CDB5940, &unk_21BE32B10);
          sub_21BC7B834(v0 + 16, (v0 + 56));
          sub_21BB3A4CC(v0 + 56, &qword_27CDB5940, &unk_21BE32B10);
          sub_21BBB7238(v0 + 16);
          if (v31)
          {
            goto LABEL_26;
          }
        }

        v33 = 0;
        goto LABEL_30;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v38 = MEMORY[0x277D84F90];
    result = sub_21BC59CF4(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v20 = 0;
      v19 = v38;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x21CF047C0](v20, v17);
        }

        else
        {
          v21 = *(v17 + 8 * v20 + 32);
        }

        v22 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
        swift_beginAccess();
        sub_21BBA3854(v21 + v22, v0 + 56, &unk_27CDB8060, &qword_21BE3BDC0);

        v24 = *(v38 + 16);
        v23 = *(v38 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21BC59CF4((v23 > 1), v24 + 1, 1);
        }

        ++v20;
        *(v38 + 16) = v24 + 1;
        v25 = v38 + 40 * v24;
        v26 = *(v0 + 56);
        v27 = *(v0 + 72);
        *(v25 + 64) = *(v0 + 88);
        *(v25 + 32) = v26;
        *(v25 + 48) = v27;
      }

      while (v18 != v20);
      goto LABEL_23;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = *(v0 + 160);

LABEL_31:
  v35 = *(v0 + 8);

  return v35();
}

void sub_21BC78304(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  v12 = *(a3 + 16);
  v30 = v12;
  v31 = *(a3 + 24);
  if (v31 == 1)
  {
    v13 = v12;
    if (!v12)
    {
      return;
    }
  }

  else
  {

    sub_21BE28FEC();
    v14 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v30, &qword_27CDB8508, &unk_21BE3BE40);
    (*(v6 + 8))(v9, v5);
    v12 = v29[0];
    if (!v29[0])
    {
      return;
    }
  }

  *&v26 = 0x64657463656C6573;
  *(&v26 + 1) = 0xEA00000000006449;
  sub_21BE2958C();
  if (v10)
  {
    v15 = MEMORY[0x277D837D0];
    v16 = v10;
  }

  else
  {
    v16 = 0;
    v11 = 0;
    v15 = 0;
    v27 = 0;
  }

  *&v26 = v11;
  *(&v26 + 1) = v16;
  v28 = v15;

  v17 = [v12 clientInfo];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_21BE2890C();

  v25 = v19;
  if (!v10)
  {
    sub_21BB3A4CC(&v26, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BC7B834(v29, v24);
    sub_21BB3A4CC(v24, &qword_27CDB5940, &unk_21BE32B10);
    sub_21BBB7238(v29);
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  sub_21BB414D0(&v26, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v19;
  sub_21BC80224(v24, v29, isUniquelyReferenced_nonNull_native);
  sub_21BBB7238(v29);
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_11:
  v21 = sub_21BE288EC();

LABEL_14:
  [v12 setClientInfo_];
}

uint64_t sub_21BC78618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64657463656C6573;
  v4 = 0xEA00000000006449;
  v5 = 0x800000021BE54710;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000021BE54710;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x64657463656C6573;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006449;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC78714()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC787B4()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC78840()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC788DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC82454();
  *a2 = result;
  return result;
}

void sub_21BC7890C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEA00000000006449;
  v5 = 0x64657463656C6573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000021BE54710;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BC78968()
{
  v1 = 0x64657463656C6573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BC789C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BC82454();
  *a1 = result;
  return result;
}

uint64_t sub_21BC789E8(uint64_t a1)
{
  v2 = sub_21BC82D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC78A24(uint64_t a1)
{
  v2 = sub_21BC82D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC78A60()
{
  v59 = sub_21BE26A4C();
  v1 = *(v59 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v59);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v69 = &v56 - v12;
  v13 = *(v0 + 32);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v13 < 0)
  {
    v55 = *(v0 + 32);
  }

  result = sub_21BE2951C();
  v14 = result;
  if (result)
  {
LABEL_3:
    if (v14 < 1)
    {
      __break(1u);
    }

    else
    {
      v15 = 0;
      v64 = v13 & 0xC000000000000001;
      v58 = (v1 + 8);
      v57 = "s";
      *&v11 = 136315650;
      v56 = v11;
      v63 = v13;
      v62 = v14;
      v61 = v4;
      v60 = v9;
      do
      {
        if (v64)
        {
          v16 = MEMORY[0x21CF047C0](v15, v13);
        }

        else
        {
          v16 = *(v13 + 8 * v15 + 32);
        }

        sub_21BC79318(&v75);
        if (v76)
        {
          v68 = v76;
          v18 = v77;
          v17 = v78;
          v19 = v80;
          v66 = v75;
          v67 = v79;
          if (qword_27CDB4F88 != -1)
          {
            swift_once();
          }

          v20 = off_27CDB9878;
          swift_getKeyPath();
          v74 = v20;
          sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
          sub_21BE25F1C();

          swift_getKeyPath();
          v74 = v20;
          sub_21BE25F1C();

          v21 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
          swift_beginAccess();
          v22 = *&v20[v21];
          v23 = objc_opt_self();
          v65 = v18;
          v24 = sub_21BE289CC();
          v25 = v67;
          v26 = sub_21BE289CC();
          v27 = [v23 profilePictureForContact:0 serverImageData:0 firstName:v24 lastName:v26 diameter:v22];

          v28 = sub_21BE25BFC();
          v30 = v29;

          v31 = objc_allocWithZone(MEMORY[0x277D755B8]);
          v32 = sub_21BE25BCC();
          v33 = [v31 initWithData_];

          sub_21BBBEF94(v28, v30);
          swift_getKeyPath();
          swift_getKeyPath();
          v74 = v33;

          sub_21BE26CBC();
          v34 = sub_21BE28DAC();
          v35 = *(v34 - 8);
          v36 = v69;
          (*(v35 + 56))(v69, 1, 1, v34);
          sub_21BE28D7C();

          v37 = sub_21BE28D6C();
          v38 = swift_allocObject();
          v38[2] = v37;
          v38[3] = MEMORY[0x277D85700];
          v38[4] = v16;
          v39 = v68;
          v38[5] = v66;
          v38[6] = v39;
          v38[7] = v65;
          v38[8] = v17;
          v38[9] = v25;
          v38[10] = v19;
          v40 = v60;
          sub_21BBA3854(v36, v60, &qword_27CDB5790, &qword_21BE32800);
          LODWORD(v37) = (*(v35 + 48))(v40, 1, v34);

          if (v37 == 1)
          {
            sub_21BB3A4CC(v40, &qword_27CDB5790, &qword_21BE32800);
          }

          else
          {
            sub_21BE28D9C();
            (*(v35 + 8))(v40, v34);
          }

          v4 = v61;
          v50 = v38[2];
          v49 = v38[3];
          swift_unknownObjectRetain();

          v13 = v63;
          if (v50)
          {
            swift_getObjectType();
            v51 = sub_21BE28D0C();
            v53 = v52;
            swift_unknownObjectRelease();
          }

          else
          {
            v51 = 0;
            v53 = 0;
          }

          sub_21BB3A4CC(v69, &qword_27CDB5790, &qword_21BE32800);
          v54 = swift_allocObject();
          *(v54 + 16) = &unk_21BE3BF00;
          *(v54 + 24) = v38;
          if (v53 | v51)
          {
            v70 = 0;
            v71 = 0;
            v72 = v51;
            v73 = v53;
          }

          v14 = v62;
          swift_task_create();
        }

        else
        {
          sub_21BE2614C();

          v41 = sub_21BE26A2C();
          v42 = sub_21BE28FDC();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v74 = v44;
            *v43 = v56;
            *(v43 + 4) = sub_21BB3D81C(0xD000000000000077, v57 | 0x8000000000000000, &v74);
            *(v43 + 12) = 2080;
            *(v43 + 14) = sub_21BB3D81C(0x67616D4964616F6CLL, 0xEC00000029287365, &v74);
            *(v43 + 22) = 2080;
            v45 = *(v16 + 16);
            v46 = *(v16 + 24);

            v47 = sub_21BB3D81C(v45, v46, &v74);

            *(v43 + 24) = v47;
            v13 = v63;
            _os_log_impl(&dword_21BB35000, v41, v42, "%s.%s failed to get image item for: %s", v43, 0x20u);
            swift_arrayDestroy();
            v48 = v44;
            v14 = v62;
            MEMORY[0x21CF05C50](v48, -1, -1);
            MEMORY[0x21CF05C50](v43, -1, -1);
          }

          else
          {
          }

          result = (*v58)(v4, v59);
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  return result;
}

uint64_t sub_21BC79298@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BC77AF0(a1);
}

double sub_21BC792D4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_21BC82714(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_21BC79318@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
  swift_beginAccess();
  sub_21BBA3854(v2 + v13, &v36, &unk_27CDB8060, &qword_21BE3BDC0);
  if (v38)
  {
    sub_21BB3D104(&v36, v35);
    sub_21BB3A35C(v35, v34);
    sub_21BC824A0(v34, &v36);
    v33 = v4;
    v24 = *(&v36 + 1);
    v23 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v19 = HIBYTE(*(&v36 + 1)) & 0xFLL;
    if ((*(&v36 + 1) & 0x2000000000000000) == 0)
    {
      v19 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      v31 = v5;
      sub_21BE2614C();

      v32 = sub_21BE26A2C();
      v20 = sub_21BE28FDC();

      v30 = v20;
      if (os_log_type_enabled(v32, v20))
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34[0] = v29;
        *v21 = 136315394;
        *(v21 + 4) = sub_21BB3D81C(0x6574496567616D69, 0xE90000000000006DLL, v34);
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_21BB3D81C(*(v2 + 16), *(v2 + 24), v34);
        _os_log_impl(&dword_21BB35000, v32, v30, "RUIFamilyImageItem.%s invalid altdsid for item: %s", v21, 0x16u);
        v22 = v29;
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v22, -1, -1);
        MEMORY[0x21CF05C50](v21, -1, -1);
      }

      (*(v31 + 8))(v12, v33);
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  else
  {
    sub_21BB3A4CC(&v36, &unk_27CDB8060, &qword_21BE3BDC0);
    sub_21BE2614C();

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FDC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v36 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000077, 0x800000021BE5A180, &v36);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_21BB3D81C(0x6574496567616D69, 0xE90000000000006DLL, &v36);
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_21BB3D81C(*(v2 + 16), *(v2 + 24), &v36);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s.%s failed to get decoder item: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  *a1 = v23;
  a1[1] = v24;
  a1[2] = v25;
  a1[3] = v26;
  a1[4] = v27;
  a1[5] = v28;
  return result;
}

uint64_t sub_21BC798EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21BE28D7C();
  v5[5] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21BC79984, v7, v6);
}

uint64_t sub_21BC79984()
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *((*MEMORY[0x277D85000] & *off_27CDB9878) + 0x150);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_21BC79B24;

  return v12(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21BC79B24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_21BC79D0C;
  }

  else
  {
    v4[9] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_21BC79C50;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BC79C50()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_21BE26CBC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_21BC79D0C()
{
  v1 = v0[5];
  v2 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;

  sub_21BE26CBC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC79DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC8333C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC79DEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BC8333C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC79E14(uint64_t a1)
{
  v2 = sub_21BC82F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC79E50(uint64_t a1)
{
  v2 = sub_21BC82F90();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BC79E8C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21BC824A0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_21BC79ED0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC79F44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC79FC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BC7A048()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC7A124()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC7A1EC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC7A2C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BC83388();
  *a2 = result;
  return result;
}

void sub_21BC7A2F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656C746974627573;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556567616D69;
  if (v2 != 3)
  {
    v8 = 0x49646441776F6873;
    v7 = 0xEC0000006567616DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BC7A38C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 0x4C52556567616D69;
  if (v1 != 3)
  {
    v4 = 0x49646441776F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21BC7A420@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BC83388();
  *a1 = result;
  return result;
}

uint64_t sub_21BC7A448(uint64_t a1)
{
  v2 = sub_21BC7B15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC7A484(uint64_t a1)
{
  v2 = sub_21BC7B15C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_21BC7A4C0(uint64_t *a1)
{
  v3 = v1;
  v64 = *v1;
  v65 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v56 - v7;
  v8 = sub_21BE25D6C();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C0, &qword_21BE3BDB0);
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C8, &qword_21BE3BDB8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL;
  v21 = sub_21BE25B9C();
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  v22 = &v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_showAddImage;
  v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_showAddImage] = 0;
  v24 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image;
  v66[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8490, &qword_21BE3BB58);
  sub_21BE26C6C();
  v25 = *(v16 + 32);
  v63 = v15;
  v25(&v3[v24], v19, v15);
  v27 = a1[3];
  v26 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v27);
  sub_21BC7B15C();
  v28 = v65;
  sub_21BE29B4C();
  if (v28)
  {
    goto LABEL_13;
  }

  v30 = v60;
  v29 = v61;
  v31 = v62;
  LOBYTE(v66[0]) = 0;
  v32 = sub_21BE2982C();
  if (!v33)
  {
    v65 = v11;
    v57 = 0;
    sub_21BE25D5C();
    v34 = sub_21BE25D2C();
    v35 = v14;
    v37 = v36;
    (*(v58 + 8))(v30, v59);
    v33 = v37;
    v14 = v35;
    v32 = v34;
    v31 = v62;
    v28 = v57;
    v11 = v65;
  }

  v38 = v29;
  *(v3 + 2) = v32;
  *(v3 + 3) = v33;
  LOBYTE(v66[0]) = 1;
  v39 = sub_21BE2982C();
  if (v28)
  {
    (*(v31 + 8))(v14, v11);
    v41 = *(v3 + 3);

LABEL_13:
    sub_21BB3A4CC(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL], &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BB3A4CC(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes], &unk_27CDB8060, &qword_21BE3BDC0);
    (*(v16 + 8))(&v3[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image], v63);
    v46 = *(*v3 + 48);
    v47 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    v48 = v67;
    goto LABEL_14;
  }

  if (v40)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  *(v3 + 4) = v42;
  *(v3 + 5) = v43;
  LOBYTE(v66[0]) = 2;
  v44 = sub_21BE2982C();
  if (v45)
  {
    v50 = v44;
  }

  else
  {
    v50 = 0;
  }

  if (v45)
  {
    v51 = v45;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  *(v3 + 6) = v50;
  *(v3 + 7) = v51;
  LOBYTE(v66[0]) = 4;
  v3[v23] = sub_21BE2983C() & 1;
  LOBYTE(v66[0]) = 3;
  sub_21BE2982C();
  if (v52)
  {
    sub_21BE25B7C();

    (*(v31 + 8))(v14, v11);
    v53 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL;
    swift_beginAccess();
    sub_21BBFD920(v38, &v3[v53], &unk_27CDB57F0, &qword_21BE328A0);
    swift_endAccess();
  }

  else
  {
    (*(v31 + 8))(v14, v11);
  }

  v54 = v67;
  sub_21BB3A35C(v67, v66);
  v55 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes;
  swift_beginAccess();
  sub_21BBFD920(v66, &v3[v55], &unk_27CDB8060, &qword_21BE3BDC0);
  swift_endAccess();
  v48 = v54;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  return v3;
}

uint64_t sub_21BC7AB50()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  sub_21BB3A4CC(&v0[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_imageURL], &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BB3A4CC(&v0[OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement_encodedAttributes], &unk_27CDB8060, &qword_21BE3BDC0);
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30FARUIPersonPickerOptionElement__image;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB84C8, &qword_21BE3BDB8);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FARUIPersonPickerOptionElement()
{
  result = qword_27CDB8478;
  if (!qword_27CDB8478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC7ACA4()
{
  sub_21BBF088C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21BC7AD94();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BC7AD94()
{
  if (!qword_27CDB8488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8490, &qword_21BE3BB58);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8488);
    }
  }
}

uint64_t sub_21BC7AE04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BC7AE4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_21BC7AEC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_21BC7A4C0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_21BC7AF20@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_21BC7AF30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21BC7AF60()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_21BC7AF90()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_21BC7AFD0(uint64_t a1)
{
  *(a1 + 8) = sub_21BC82E6C(&qword_27CDB8498, type metadata accessor for FARUIPersonPickerOptionElement);
  result = sub_21BC82E6C(&qword_27CDB84A0, type metadata accessor for FARUIPersonPickerOptionElement);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC7B058()
{
  result = qword_27CDB84A8;
  if (!qword_27CDB84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84A8);
  }

  return result;
}

unint64_t sub_21BC7B0B0()
{
  result = qword_27CDB84B0;
  if (!qword_27CDB84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84B0);
  }

  return result;
}

unint64_t sub_21BC7B108()
{
  result = qword_27CDB84B8;
  if (!qword_27CDB84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84B8);
  }

  return result;
}

unint64_t sub_21BC7B15C()
{
  result = qword_27CDB84D0;
  if (!qword_27CDB84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84D0);
  }

  return result;
}

uint64_t sub_21BC7B1B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB7EB8;

  return sub_21BC77D78(v0 + 16);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 24);

  sub_21BBC9024(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

unint64_t sub_21BC7B2E0()
{
  result = qword_27CDB84E8;
  if (!qword_27CDB84E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84D8, &qword_21BE3BE10);
    sub_21BC7B39C();
    sub_21BC82E6C(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84E8);
  }

  return result;
}

unint64_t sub_21BC7B39C()
{
  result = qword_27CDB84F0;
  if (!qword_27CDB84F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84F8, &qword_21BE3BE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB84F0);
  }

  return result;
}

unint64_t sub_21BC7B400()
{
  result = qword_27CDB8500;
  if (!qword_27CDB8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8500);
  }

  return result;
}

uint64_t sub_21BC7B47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  return sub_21BB3A35C(v3 + v4, a2);
}

uint64_t sub_21BC7B544(uint64_t a1, uint64_t *a2)
{
  sub_21BB3A35C(a1, v17);
  v3 = *a2;
  v4 = v18;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  v10 = *v8;
  v16[3] = type metadata accessor for FAImageProvider();
  v16[4] = &off_282D8FB28;
  v16[0] = v10;
  swift_getKeyPath();
  v13 = v3;
  v14 = v16;
  v15 = v3;
  sub_21BC82E6C(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  sub_21BE25F0C();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_21BC7B6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_21BBB3108(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21BC81000();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_21BC7ECF0(v7, v10);
  *v3 = v10;
  return v13;
}

double sub_21BC7B790@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21BBB3108(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21BC818B0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21BB414D0((*(v12 + 56) + 32 * v9), a3);
    sub_21BC7EEA0(v9, v12);
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

double sub_21BC7B834@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21BBB31E8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21BC81A54();
      v11 = v13;
    }

    sub_21BBB7238(*(v11 + 48) + 40 * v8);
    sub_21BB414D0((*(v11 + 56) + 32 * v8), a2);
    sub_21BC7F050(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}