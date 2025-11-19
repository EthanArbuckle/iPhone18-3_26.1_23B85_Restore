unint64_t sub_2295747B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  sub_22A4DD4EC();
  v5 = -1 << *(a2 + 32);
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_229574870(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  sub_22A4DE7BC();
  v5 = -1 << *(a2 + 32);
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_229574968(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22A4DDECC();
  v5 = -1 << *(a2 + 32);
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2295749EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229574598(v6 + 1, &unk_27D87CEB8, &qword_22A577D30);
  }

  else
  {
    if (v7 > v6)
    {
      sub_229576F48(&unk_27D87CEB8, &qword_22A577D30);
      goto LABEL_12;
    }

    sub_229578890(v6 + 1, &unk_27D87CEB8, &qword_22A577D30);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_22A4DDECC();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for DemoAccessoryServer();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_22A4DDEDC();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22A4DE66C();
  __break(1u);
}

void sub_229574B7C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
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
    sub_229574598(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229576F48(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_229578890(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22A4DDECC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_229562F68(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22A4DDEDC();

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
  sub_22A4DE66C();
  __break(1u);
}

uint64_t sub_229574D0C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_229572BC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2295765E0();
      goto LABEL_16;
    }

    sub_229577088(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22A4DE77C();
  sub_22A4DD6BC();
  result = sub_22A4DE7BC();
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

      result = sub_22A4DE60C();
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229574E8C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for HomeDeviceEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v30 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_229572E24(v13 + 1);
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_2295772C0(v13 + 1);
LABEL_8:
    v16 = *v3;
    v17 = *(*v3 + 40);
    sub_22A4DE77C();
    sub_22A4DB7DC();
    sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
    sub_22A4DD4FC();
    v18 = sub_22A4DE7BC();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v8;
      v21 = *(v8 + 72);
      while (1)
      {
        sub_229579FEC(*(v16 + 48) + v21 * a2, v12, type metadata accessor for HomeDeviceEntity);
        v22 = sub_22A4DB78C();
        sub_22957A054(v12, type metadata accessor for HomeDeviceEntity);
        if (v22)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v8;
  sub_22957673C(type metadata accessor for HomeDeviceEntity, &qword_27D87CFA8, &qword_22A577DC0, type metadata accessor for HomeDeviceEntity);
LABEL_14:
  v23 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22957A0B4(a1, *(v23 + 48) + *(v15 + 72) * a2, type metadata accessor for HomeDeviceEntity);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_22957513C(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v6 = type metadata accessor for HomeGroupEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229573178(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22957673C(type metadata accessor for HomeGroupEntity, &qword_27D87CFB8, &qword_22A577DD0, type metadata accessor for HomeGroupEntity);
      goto LABEL_12;
    }

    sub_2295775E4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22A4DE77C();
  v15 = *(v6 + 20);
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  v16 = sub_22A4DE7BC();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v7 + 72);
    do
    {
      sub_229579FEC(*(v13 + 48) + v19 * a2, v10, type metadata accessor for HomeGroupEntity);
      v20 = &v10[*(v6 + 20)];
      v21 = sub_22A4DB78C();
      sub_22957A054(v10, type metadata accessor for HomeGroupEntity);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v30;
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22957A0B4(v22, *(v23 + 48) + *(v28 + 72) * a2, type metadata accessor for HomeGroupEntity);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295753E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2295734D8(v7 + 1, &unk_27D87CFC0, &qword_22A577DD8, sub_2295C50B0);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576944(&unk_27D87CFC0, &qword_22A577DD8);
      goto LABEL_16;
    }

    sub_229577914(v7 + 1, &unk_27D87CFC0, &qword_22A577DD8, sub_2295C50B0);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22A4DE77C();
  sub_2295C50B0(v6);
  sub_22A4DD6BC();

  result = sub_22A4DE7BC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_2295C50B0(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == sub_2295C50B0(v6) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22A4DE60C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229575618(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2295734D8(v7 + 1, &qword_27D87CFB0, &qword_22A577DC8, sub_2295C6134);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576944(&qword_27D87CFB0, &qword_22A577DC8);
      goto LABEL_16;
    }

    sub_229577914(v7 + 1, &qword_27D87CFB0, &qword_22A577DC8, sub_2295C6134);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22A4DE77C();
  sub_2295C6134(v6);
  sub_22A4DD6BC();

  result = sub_22A4DE7BC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_2295C6134(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == sub_2295C6134(v6) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22A4DE60C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229575848(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229573748(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_229576E08(&qword_27D87CFA0, &qword_22A577DB8);
      goto LABEL_12;
    }

    sub_229577B54(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  result = sub_22A4DD4EC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_22A4DD58C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295759EC(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2295739B0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_229576A74();
        goto LABEL_68;
      }

      sub_229577D94(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_22A4DE77C();
    sub_22A4DB63C();
    result = sub_22A4DE7BC();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_22956C148(v21, v20);
              v35 = sub_22A4DB24C();
              if (v35)
              {
                v36 = sub_22A4DB27C();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_22956C148(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_22956C148(v21, v20);
              v35 = sub_22A4DB24C();
              if (v35)
              {
                v37 = sub_22A4DB27C();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_22A4DB26C();
              v7 = v43;
              a2 = v44;
              sub_229838464(v35, v43, v44, v52);
              result = sub_2295798D4(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_22956C148(v21, v20);
            v14 = v48;
          }

          sub_229838464(v52, v7, a2, &v51);
          result = sub_2295798D4(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_22A4DE66C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_229575E64(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22A4DCCAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_229573C10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_229576BD0(MEMORY[0x277D173F0], &unk_27D87CF28, &qword_22A577D60);
      goto LABEL_12;
    }

    sub_229577FD0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0]);
  v15 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_27D87CF20, MEMORY[0x277D173F0]);
      v23 = sub_22A4DD58C();
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_22957612C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_229573F6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_229576BD0(MEMORY[0x277CC95F0], &qword_27D87CF40, &qword_22A577D70);
      goto LABEL_12;
    }

    sub_2295782EC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  v15 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0]);
      v23 = sub_22A4DD58C();
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295763F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2295742DC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576E08(&qword_27D87CF10, &qword_22A577D58);
      goto LABEL_12;
    }

    sub_229578608(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  result = sub_22A4DE7BC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AssertionHandle.Assertion(0);
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_22A4DB78C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

void *sub_2295765E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  v2 = *v0;
  v3 = sub_22A4DE19C();
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

void *sub_22957673C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = sub_22A4DE19C();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_229579FEC(*(v14 + 48) + v29, v13, a4);
        result = sub_22957A0B4(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_229576944(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_229576A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  v2 = *v0;
  v3 = sub_22A4DE19C();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22956C148(v18, *(&v18 + 1));
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

void *sub_229576BD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_22A4DE19C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_229576E08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
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
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

id sub_229576F48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE19C();
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

uint64_t sub_229577088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1AC();
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
      sub_22A4DE77C();

      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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

uint64_t sub_2295772C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeDeviceEntity();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
  result = sub_22A4DE1AC();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_229579FEC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeDeviceEntity);
      v25 = *(v11 + 40);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22957A0B4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeDeviceEntity);
      ++*(v11 + 16);
      v8 = v34;
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

        v2 = v33;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2295775E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeGroupEntity();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFB8, &qword_22A577DD0);
  result = sub_22A4DE1AC();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_229579FEC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeGroupEntity);
      v25 = *(v11 + 40);
      sub_22A4DE77C();
      v26 = *(v38 + 20);
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22957A0B4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeGroupEntity);
      ++*(v11 + 16);
      v8 = v36;
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

        v2 = v35;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_229577914(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v9 = result;
  if (*(v6 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      sub_22A4DE77C();
      a4(v20);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v22 = -1 << *(v9 + 32);
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

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v29;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

uint64_t sub_229577B54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
  result = sub_22A4DE1AC();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      result = sub_22A4DD4EC();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

uint64_t sub_229577D94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1AC();
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
      sub_22A4DE77C();
      sub_22956C148(v19, v20);
      sub_22A4DB63C();
      result = sub_22A4DE7BC();
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

uint64_t sub_229577FD0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22A4DCCAC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CF28, &qword_22A577D60);
  v10 = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0]);
      result = sub_22A4DD4EC();
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

uint64_t sub_2295782EC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22A4DB7DC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  v10 = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
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

uint64_t sub_229578608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
  result = sub_22A4DE1AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);

      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_229578890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
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
      result = sub_22A4DDECC();
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

uint64_t sub_229578A9C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22A4DE13C();

    if (v7)
    {
      v8 = sub_2295793BC();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for DemoAccessoryServer();
  v11 = *(v3 + 40);
  v12 = sub_22A4DDECC();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22A4DDEDC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229576F48(&unk_27D87CEB8, &qword_22A577D30);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_229579E4C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

id sub_229578C34()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  if (result)
  {
    v2 = *(v0 + 24);
    return [result accessoryServerBrowser_didRemoveAccessoryServer_error_];
  }

  return result;
}

uint64_t sub_229578C84(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *v5;

    v14 = a1;
    v15 = sub_22A4DE13C();

    if (v15)
    {
      v16 = sub_2295796D8(v12, v14, a4, a5, a2, a3);

      return v16;
    }

    return 0;
  }

  v29 = v5;
  sub_229562F68(0, a2, a3);
  v18 = *(v9 + 40);
  v19 = sub_22A4DDECC();
  v20 = -1 << *(v9 + 32);
  v21 = v19 & ~v20;
  if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v9 + 48) + 8 * v21);
    v24 = sub_22A4DDEDC();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v29;
  v30 = *v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229576F48(a4, a5);
    v27 = v30;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_229579E4C(v21);
  result = v28;
  *v29 = v30;
  return result;
}

uint64_t sub_229578E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0]);
      v22 = sub_22A4DD58C();
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
      sub_229576BD0(MEMORY[0x277CC95F0], &qword_27D87CF40, &qword_22A577D70);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_229579928(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_229579104()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_22A4DE13C();

    if (v4)
    {
      v5 = sub_229579514();

      return v5;
    }

    return 0;
  }

  v18 = v0;
  v7 = *(v1 + 40);
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  v8 = sub_22A4DE7BC();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v10);

    v13 = sub_22A4DB78C();

    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v18;
  v19 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229576E08(&qword_27D87CF10, &qword_22A577D58);
    v16 = v19;
  }

  v17 = *(*(v16 + 48) + 8 * v10);
  sub_229579C30(v10);
  result = v17;
  *v18 = v19;
  return result;
}

uint64_t sub_2295793BC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22A4DE0EC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_229572298(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22A4DDECC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for DemoAccessoryServer();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22A4DDEDC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_229579E4C(v9);
  result = sub_22A4DDEDC();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229579514()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22A4DE0EC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2295728C8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);

  sub_22A4DD4FC();
  v7 = sub_22A4DE7BC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);

      v12 = sub_22A4DB78C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_229579C30(v9);
  result = sub_22A4DB78C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2295796D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;

  v13 = sub_22A4DE0EC();
  v14 = swift_unknownObjectRetain();
  v15 = sub_2295724BC(v14, v13, a3, a4, a5, a6);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = sub_22A4DDECC();
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    sub_229562F68(0, a5, a6);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = sub_22A4DDEDC();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v15 + 48) + 8 * v19);
  sub_229579E4C(v19);
  result = sub_22A4DDEDC();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229579858(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2295798D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_229579928(int64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_22A4DE05C();
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
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
        v27 = sub_22A4DD4EC();
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

unint64_t sub_229579C30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22A4DE05C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_22A4DE77C();
        sub_22A4DB7DC();
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);

        sub_22A4DD4FC();
        v13 = sub_22A4DE7BC();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_229579E4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22A4DE05C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22A4DDECC();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_229579FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957A054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22957A0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22957A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v8 = *(a5 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer();
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer);
    sub_22A4DDBAC();
    v9 = v30;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = v34;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
    v9 = v8;
    swift_bridgeObjectRetain_n();
    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v22)
    {
      while (1)
      {
        v23 = v9;
        v24 = v22;
        v25 = sub_22A4DD5AC();
        v26 = sub_22A4DD5AC();
        v27 = [v24 matchesSetupID:v25 serverIdentifier:v26];

        if (v27)
        {
          break;
        }

        v12 = v20;
        v13 = v21;
        v9 = v23;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22A4DE12C())
        {
          type metadata accessor for DemoAccessoryServer();
          swift_dynamicCast();
          v22 = v29;
          v20 = v12;
          v21 = v13;
          if (v29)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_22953EE84();

      (*(a6 + 16))(a6, 1, v24);
    }

    else
    {
LABEL_19:
      sub_22953EE84();

      (*(a6 + 16))(a6, 0, 0);
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_22957A3FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22956DA58(*(v0 + 16));
}

uint64_t HMMediaShuffleState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x697463656C6C6F43;
      }

      return 0x746C7561666564;
    }

    return 0x736D657449;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_22957A544()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x697463656C6C6F43;
      }

      return 0x746C7561666564;
    }

    return 0x736D657449;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 6710863;
      }

      return 0x746C7561666564;
    }

    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_22957A5E0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87CFE0);
  __swift_project_value_buffer(v0, qword_27D87CFE0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22957AC7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v11 = a1;
  v12 = [v11 cameraRecordingEventObserver];
  v13 = sub_22A4DB6AC();
  [v12 deleteCountersBefore:a4 & 1 date:v13];

  return (*(v7 + 8))(v10, v6);
}

HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory __swiftcall HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.cameraRecordingEventObserver = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_22957AE68(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 40) = 0x800000022A58A3A0;
      v6 = CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = v6;
      v7 = sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);

      return v7;
    }

LABEL_9:
    if (qword_27D87B8A8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v9 = sub_22A4DD07C();
  __swift_project_value_buffer(v9, qword_27D87CFE0);

  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v10, v11))
  {
LABEL_17:

    return 0;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  v13 = result;
  *v12 = 138412290;
  if (!v2)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_16:
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_229538000, v10, v11, "Failed to cast log event: %@ to CameraRecordingDailySummaryLogEvent", v12, 0xCu);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_22957B11C(uint64_t a1)
{
  sub_22A4DE18C();
  if (!*(a1 + 16) || (v2 = sub_2295402E8(v14), (v3 & 1) == 0))
  {
    sub_22954045C(v14);
    goto LABEL_7;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v2, v15);
  sub_22954045C(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27D87B8A8 != -1)
    {
      swift_once();
    }

    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D87CFE0);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing CameraRecordingEventDailySummaryLogEvent in serialized events";
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(type metadata accessor for CameraRecordingEventDailySummaryLogEvent());
  v5 = CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(0xD00000000000002BLL);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    result = swift_allocObject();
    *(result + 16) = xmmword_22A576190;
    *(result + 32) = v6;
    return result;
  }

  if (qword_27D87B8A8 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DD07C();
  __swift_project_value_buffer(v13, qword_27D87CFE0);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to create CameraRecordingEventDailySummaryLogEvent from dictionary";
LABEL_11:
    _os_log_impl(&dword_229538000, v9, v10, v12, v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_22957B390(unint64_t a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v33 = v5;
    v34 = result;
    v32 = a2;
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v10 < 1)
    {
      __break(1u);
      return result;
    }

    v11 = v9;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    a2 = (a1 + 32);
    a1 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    v12 = 0;
    v5 = 0;
    v13 = 0;
    v24 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions;
    v9 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads;
    v25 = OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds;
    while (1)
    {
      v26 = *a2;
      result = swift_dynamicCastClass();
      if (result)
      {
        v27 = *(result + v24);
        v15 = __OFADD__(v13, v27);
        v13 += v27;
        if (v15)
        {
          goto LABEL_27;
        }

        v28 = *(result + v9);
        v15 = __OFADD__(v5, v28);
        v5 += v28;
        if (v15)
        {
          goto LABEL_28;
        }

        v29 = *(result + v25);
        v15 = __OFADD__(v12, v29);
        v12 += v29;
        if (v15)
        {
          break;
        }
      }

      ++a2;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v30 = result;
    v10 = sub_22A4DE0EC();
    result = v30;
  }

  v12 = 0;
  v5 = 0;
  v13 = 0;
  a2 = 0;
  while (1)
  {
    MEMORY[0x22AAD13F0](a2, a1);
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v14 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions);
    v15 = __OFADD__(v13, v14);
    v13 += v14;
    if (v15)
    {
      goto LABEL_25;
    }

    v16 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads);
    v15 = __OFADD__(v5, v16);
    v5 += v16;
    if (v15)
    {
      goto LABEL_26;
    }

    v9 = *(result + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds);
    swift_unknownObjectRelease();
    v15 = __OFADD__(v12, v9);
    v12 += v9;
    if (v15)
    {
      break;
    }

LABEL_8:
    a2 = (a2 + 1);
    if (v10 == a2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  v11 = v9;
  v12 = 0;
  v5 = 0;
  v13 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22A576190;
  v18 = v33;
  v19 = v34;
  (*(v33 + 16))(v11, v32, v34);
  v20 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v13;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v5;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v12;
  v21[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 1;
  v22 = sub_22A4DB77C();
  v35.receiver = v21;
  v35.super_class = v20;
  v23 = objc_msgSendSuper2(&v35, sel_initWithHomeUUID_, v22);

  (*(v18 + 8))(v11, v19);
  *(v17 + 32) = v23;
  return v17;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22957B74C()
{
  v1 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask;
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 112);

  sub_22957F360(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_home);

  v4 = *(v0 + v1);

  v5 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description + 8);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s8ObserverCMa()
{
  result = qword_27D87D0A0;
  if (!qword_27D87D0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22957B88C()
{
  result = _s20ControlBlockInternalVMa();
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

uint64_t sub_22957B95C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v7, &unk_27D881FF0, &qword_22A57A380);
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_22957F2F8(v7, v15 + v14, &unk_27D881FF0, &qword_22A57A380);
  v16 = sub_22957F3C0(0, 0, v11, &unk_22A577F70, v15);
  v17 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask) = v16;
}

uint64_t sub_22957BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E0, &qword_22A577F78);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F450, &qword_22A577F80);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22957BCA8, 0, 0);
}

uint64_t sub_22957BCA8()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v9 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_adapter);

    (*(v6 + 16))(v3, v9 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_events, v5);

    (*(v6 + 32))(v4, v3, v5);
    sub_22A4DDA3C();
    swift_beginAccess();
    v10 = *(MEMORY[0x277D85798] + 4);
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_22957BE80;
    v12 = v0[13];
    v13 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v13);
  }

  else
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[13];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22957BE80()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22957BF7C, 0, 0);
}

uint64_t sub_22957BF7C()
{
  v1 = v0[8];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[9];
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_22957C090, Strong, 0);
    }
  }

  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v6 + 8))(v4, v5);
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_22957C090()
{
  v1 = *(v0 + 160);
  sub_22957C1B0(*(v0 + 80), *(v0 + 152));

  return MEMORY[0x2822009F8](sub_22957C0FC, 0, 0);
}

uint64_t sub_22957C0FC()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_22957BE80;
  v5 = v0[13];
  v6 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v6);
}

void sub_22957C1B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  v43 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - v7;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0F0, &qword_22A577F88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = _s13MicroLocationO5EventVMa();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = v9;
    v26 = Strong;
    sub_22957C7A8(v26, a2, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      sub_22953EAE4(v16, &qword_27D87D0F0, &qword_22A577F88);
    }

    else
    {
      v41 = v26;
      sub_22957F290(v16, v24, _s13MicroLocationO5EventVMa);
      v27 = v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock;
      swift_beginAccess();
      if (v27[*(_s20ControlBlockInternalVMa() + 20)])
      {
        sub_229541CB0(v43, &off_283CDCC10);
        sub_22957F228(v24, v22, _s13MicroLocationO5EventVMa);

        v28 = sub_22A4DD05C();
        v29 = sub_22A4DDCDC();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v49[0] = v43;
          *v30 = 136315394;
          *(v30 + 4) = sub_2295A3E30(*(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description), *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description + 8), v49);
          *(v30 + 12) = 2080;
          v31 = sub_229890C50();
          v33 = v32;
          sub_22957F360(v22, _s13MicroLocationO5EventVMa);
          v34 = sub_2295A3E30(v31, v33, v49);

          *(v30 + 14) = v34;
          _os_log_impl(&dword_229538000, v28, v29, "%s received event %s", v30, 0x16u);
          v35 = v43;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v35, -1, -1);
          MEMORY[0x22AAD4E50](v30, -1, -1);
        }

        else
        {

          sub_22957F360(v22, _s13MicroLocationO5EventVMa);
        }

        (*(v42 + 8))(v12, v8);
        v36 = v41;
        v49[3] = v17;
        v49[4] = sub_22957F17C(&qword_27D87D0F8, _s13MicroLocationO5EventVMa);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
        sub_22957F228(v24, boxed_opaque_existential_1, _s13MicroLocationO5EventVMa);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) + 28);
        sub_22957F1C4(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v39 = v44;
        sub_22A4DDA0C();

        (*(v45 + 8))(v39, v46);
        sub_22957F360(v24, _s13MicroLocationO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v49);
      }

      else
      {
        sub_22957F360(v24, _s13MicroLocationO5EventVMa);
      }
    }
  }
}

uint64_t sub_22957C7A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v198 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v183 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v184 = &v173 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v206 = &v173 - v12;
  v13 = _s21EventMetadataInternalV6DeviceVMa(0);
  v207 = *(v13 - 8);
  v208 = v13;
  v14 = *(v207 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v193 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v190 = &v173 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v173 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v181 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v182 = &v173 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v192 = &v173 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v196 = &v173 - v30;
  MEMORY[0x28223BE20](v29);
  v195 = (&v173 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v203 = &v173 - v34;
  v35 = sub_22A4DB7DC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v212 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v191 = &v173 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v194 = &v173 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v173 - v44;
  v187 = _s21EventMetadataInternalV4HomeVMa(0);
  v46 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v204 = &v173 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22A4DB74C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v205 = &v173 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = _s21EventMetadataInternalVMa(0);
  v52 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v186 = &v173 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _s13MicroLocationO5EventVMa();
  v197 = *(v54 - 8);
  v55 = *(v197 + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v173 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215[1] = a2;
  v59 = *(v56 + 20);
  v213 = v36;
  v214 = v35;
  v60 = *(v36 + 56);
  v199 = v59;
  v201 = v60;
  v202 = v36 + 56;
  v60(&v58[v59], 1, 1, v35);
  v61 = *(v54 + 24);
  v189 = v49;
  v63 = *(v49 + 56);
  v62 = v49 + 56;
  v209 = v58;
  v180 = v63;
  v63(&v58[v61], 1, 1, v48);
  v64 = [a1 currentDevice];
  if (!v64)
  {
    goto LABEL_6;
  }

  v200 = v64;
  v188 = [a1 currentUser];
  if (!v188)
  {

    a1 = v200;
LABEL_6:

    v67 = v209;
    sub_22953EAE4(&v209[v199], &qword_27D87CBF0, &qword_22A577898);
    sub_22953EAE4(v67 + v61, &qword_27D87D100, &unk_22A583B00);
    return (*(v197 + 56))(v198, 1, 1, v54);
  }

  v179 = v54;
  v65 = [a1 homeManager];
  v176 = v48;
  if (v65)
  {
    v66 = v65;
    v178 = [v65 isThisDesignatedFMFDevice];
  }

  else
  {
    v178 = 0;
  }

  sub_22A4DB71C();
  v69 = [a1 uuid];
  sub_22A4DB79C();

  v70 = [a1 users];
  v177 = a2;
  if (!v70)
  {
    goto LABEL_13;
  }

  v71 = v70;
  sub_229562F68(0, &qword_281401790, off_278666348);
  v72 = sub_22A4DD83C();

  if (v72 >> 62)
  {
    goto LABEL_81;
  }

  v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (1)
  {
    if (HIDWORD(v73))
    {
      __break(1u);
LABEL_13:
      LODWORD(v73) = 1;
    }

    v175 = v62;
    v173 = a1;
    v75 = v213;
    v74 = v214;
    v76 = v204;
    v210 = *(v213 + 32);
    v211 = v213 + 32;
    v210(v204, v45, v214);
    *(v76 + *(v187 + 20)) = v73;
    v77 = [v200 identifier];
    v78 = v194;
    sub_22A4DB79C();

    v79 = v195;
    v80 = v201;
    v201(v195, 1, 1, v74);
    v81 = v208;
    v82 = v208[5];
    v80(&v20[v82], 1, 1, v74);
    v83 = &v20[v81[9]];
    v84 = *(v75 + 16);
    *v83 = 0;
    v83[1] = 0;
    v187 = v84;
    v84(v20, v78, v74);
    v45 = &unk_27D87D2A0;
    v85 = v79;
    v86 = v196;
    sub_229564F88(v85, v196, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(&v20[v82], &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v86, &v20[v82], &unk_27D87D2A0, &unk_22A578BD0);
    v20[v81[6]] = 1;
    v20[v81[7]] = v178;
    v20[v81[8]] = 0;
    v87 = MobileGestalt_get_current_device();
    if (!v87)
    {
      break;
    }

    v88 = v87;
    v89 = MobileGestalt_copy_deviceColor_obj();

    v174 = v61;
    if (v89)
    {
      v90 = sub_22A4DD5EC();
      v92 = v91;
    }

    else
    {
      v90 = 0;
      v92 = 0;
    }

    sub_22953EAE4(v195, &unk_27D87D2A0, &unk_22A578BD0);
    v93 = v214;
    v62 = v213 + 8;
    v195 = *(v213 + 8);
    (v195)(v194, v214);
    *v83 = v90;
    v83[1] = v92;
    v94 = v203;
    sub_22957F290(v20, v203, _s21EventMetadataInternalV6DeviceVMa);
    v95 = v208;
    v96 = *(v207 + 56);
    v207 += 56;
    v194 = v96;
    (v96)(v94, 0, 1, v208);
    v97 = [v200 identifier];
    v98 = v191;
    sub_22A4DB79C();

    v99 = v192;
    v100 = v201;
    v201(v192, 1, 1, v93);
    v45 = v95[5];
    v101 = v193;
    v100(v193 + v45, 1, 1, v93);
    v102 = (v101 + v95[9]);
    *v102 = 0;
    v102[1] = 0;
    (v187)(v101, v98, v93);
    v103 = v196;
    sub_229564F88(v99, v196, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v101 + v45, &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v103, v101 + v45, &unk_27D87D2A0, &unk_22A578BD0);
    *(v101 + v95[6]) = 1;
    *(v101 + v95[7]) = v178;
    *(v101 + v95[8]) = 0;
    v104 = MobileGestalt_get_current_device();
    if (!v104)
    {
      goto LABEL_86;
    }

    v105 = v104;
    v106 = MobileGestalt_copy_deviceColor_obj();

    v61 = v212;
    v107 = v186;
    if (v106)
    {
      v108 = sub_22A4DD5EC();
      v110 = v109;
    }

    else
    {
      v108 = 0;
      v110 = 0;
    }

    sub_22953EAE4(v192, &unk_27D87D2A0, &unk_22A578BD0);
    (v195)(v191, v214);
    *v102 = v108;
    v102[1] = v110;
    sub_22957F290(v193, v190, _s21EventMetadataInternalV6DeviceVMa);
    v111 = v188;
    v45 = [v188 uuid];
    v112 = v206;
    sub_22A4DB79C();

    v113 = [v111 privilege];
    if (!HIDWORD(v113))
    {
      v114 = v113;
      v115 = _s21EventMetadataInternalV4UserVMa(0);
      *&v112[*(v115 + 20)] = v114;
      v116 = *(*(v115 - 8) + 56);
      v116(v206, 0, 1, v115);
      *v107 = 1;
      v117 = v185;
      v118 = v107 + *(v185 + 24);
      sub_22A4DB7CC();
      v119 = v117[9];
      (v194)(v107 + v119, 1, 1, v208);
      v62 = v117[11];
      v120 = v115;
      v106 = v190;
      v116((v107 + v62), 1, 1, v120);
      *(v107 + 8) = 0xD000000000000013;
      *(v107 + 16) = 0x800000022A58A4C0;
      v121 = v176;
      (*(v189 + 16))(v107 + v117[7], v205, v176);
      sub_22957F228(v204, v107 + v117[8], _s21EventMetadataInternalV4HomeVMa);
      v45 = v206;
      sub_229564B7C(v203, v107 + v119, &qword_27D87CBE8, &qword_22A577890);
      sub_22957F228(v106, v107 + v117[10], _s21EventMetadataInternalV6DeviceVMa);
      sub_229564B7C(v45, v107 + v62, &qword_27D87CBE0, &unk_22A577880);
      v122 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
      [v122 systemUptime];
      v124 = v123;

      v125 = v124 * 1000.0;
      if (COERCE__INT64(fabs(v124 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v125 > -1.0)
        {
          if (v125 < 1.84467441e19)
          {
            *(v107 + v117[12]) = v125;
            v126 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
            [v126 timeIntervalSince1970];
            v128 = v127;

            sub_22953EAE4(v45, &qword_27D87CBE0, &unk_22A577880);
            sub_22957F360(v106, _s21EventMetadataInternalV6DeviceVMa);
            sub_22953EAE4(v203, &qword_27D87CBE8, &qword_22A577890);
            sub_22957F360(v204, _s21EventMetadataInternalV4HomeVMa);
            (*(v189 + 8))(v205, v121);
            v129 = v128 * 1000.0;
            if (COERCE__INT64(fabs(v128 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v129 > -1.0)
              {
                if (v129 < 1.84467441e19)
                {
                  *(v107 + v117[13]) = v129;
                  v130 = v209;
                  sub_22957F290(v107, v209, _s21EventMetadataInternalVMa);
                  v131 = v177;
                  v132 = [v177 requestIdentifier];
                  if (v132)
                  {
                    v133 = v181;
                    v134 = v132;
                    sub_22A4DB79C();

                    v135 = 0;
                    v136 = v183;
                    v137 = v182;
                  }

                  else
                  {
                    v135 = 1;
                    v136 = v183;
                    v137 = v182;
                    v133 = v181;
                  }

                  v138 = 1;
                  v201(v133, v135, 1, v214);
                  sub_22957F2F8(v133, v137, &unk_27D87D2A0, &unk_22A578BD0);
                  v139 = v199;
                  sub_22953EAE4(v130 + v199, &qword_27D87CBF0, &qword_22A577898);
                  sub_22957F2F8(v137, v130 + v139, &unk_27D87D2A0, &unk_22A578BD0);
                  v140 = [v131 time];
                  if (v140)
                  {
                    v141 = v140;
                    sub_22A4DB70C();

                    v138 = 0;
                  }

                  v142 = v184;
                  v180(v136, v138, 1, v121);
                  sub_22957F2F8(v136, v142, &unk_27D881AA0, &qword_22A57BC20);
                  v143 = v174;
                  sub_22953EAE4(v130 + v174, &qword_27D87D100, &unk_22A583B00);
                  sub_22957F2F8(v142, v130 + v143, &unk_27D881AA0, &qword_22A57BC20);
                  v62 = &off_281891ED8;
                  v45 = off_281891F18[0];
                  v107 = sub_229562F68(0, &qword_27D87F410, 0x277D287F0);
                  v144 = (v45)(v107, &off_281891ED8);
                  v106 = v144;
                  if (!(v144 >> 62))
                  {
                    v145 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    goto LABEL_36;
                  }

                  goto LABEL_75;
                }

                goto LABEL_74;
              }

              goto LABEL_73;
            }

            goto LABEL_72;
          }

          goto LABEL_71;
        }

        goto LABEL_70;
      }

      goto LABEL_69;
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      v145 = sub_22A4DE0EC();
LABEL_36:
      a1 = MEMORY[0x277D84F90];
      v208 = v107;
      if (!v145)
      {
        break;
      }

      v215[0] = MEMORY[0x277D84F90];
      sub_229583374(0, v145 & ~(v145 >> 63), 0);
      if (v145 < 0)
      {
        goto LABEL_83;
      }

      v62 = 0;
      v107 = v215[0];
      while (1)
      {
        v146 = (v106 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0](v62, v106) : *(v106 + 8 * v62 + 32);
        v147 = v146;
        v148 = [v146 confidenceReasonEnum];

        if (HIDWORD(v148))
        {
          break;
        }

        v215[0] = v107;
        v150 = *(v107 + 16);
        v149 = *(v107 + 24);
        v45 = v150 + 1;
        if (v150 >= v149 >> 1)
        {
          sub_229583374((v149 > 1), v150 + 1, 1);
          v107 = v215[0];
        }

        ++v62;
        *(v107 + 16) = v45;
        *(v107 + 4 * v150 + 32) = v148;
        v61 = v212;
        if (v145 == v62)
        {

          v62 = &off_281891ED8;
          goto LABEL_48;
        }
      }

      __break(1u);
    }

    v107 = MEMORY[0x277D84F90];
LABEL_48:
    v151 = v179;
    v152 = v208;
    v20 = v209;
    *&v209[v179[7]] = v107;
    (*(v62 + 0x48))(v152, v62);

    v215[0] = sub_22957EE00(v153);
    sub_22957E0FC(v215);

    v45 = v215[0];
    if (v215[0] < 0 || (v215[0] & 0x4000000000000000) != 0)
    {
      v154 = sub_22A4DE0EC();
      if (v154)
      {
LABEL_51:
        v215[0] = a1;
        v212 = v154 & ~(v154 >> 63);
        sub_22958345C(0, v212, 0);
        if (v154 < 0)
        {
          goto LABEL_84;
        }

        v155 = 0;
        v156 = v215[0];
        v157 = v45 & 0xC000000000000001;
        do
        {
          if (v157)
          {
            v158 = MEMORY[0x22AAD13F0](v155, v45);
          }

          else
          {
            v158 = *(v45 + 8 * v155 + 32);
          }

          v159 = v158;
          v160 = [v158 identifier];
          sub_22A4DB79C();

          v215[0] = v156;
          v162 = *(v156 + 16);
          v161 = *(v156 + 24);
          if (v162 >= v161 >> 1)
          {
            sub_22958345C(v161 > 1, v162 + 1, 1);
            v156 = v215[0];
          }

          ++v155;
          *(v156 + 16) = v162 + 1;
          v210(v156 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v162, v61, v214);
        }

        while (v154 != v155);
        *&v209[v179[8]] = v156;
        v215[0] = a1;
        sub_229583354(0, v212, 0);
        v163 = 0;
        a1 = v215[0];
        do
        {
          if (v157)
          {
            v164 = MEMORY[0x22AAD13F0](v163, v45);
          }

          else
          {
            v164 = *(v45 + 8 * v163 + 32);
          }

          v165 = v164;
          v166 = [v164 score];
          sub_22A4DDB4C();
          v168 = v167;

          v215[0] = a1;
          v62 = a1[2];
          v169 = a1[3];
          if (v62 >= v169 >> 1)
          {
            sub_229583354((v169 > 1), v62 + 1, 1);
            a1 = v215[0];
          }

          ++v163;
          a1[2] = v62 + 1;
          *(a1 + v62 + 8) = v168;
        }

        while (v154 != v163);

        v151 = v179;
        v20 = v209;
        goto LABEL_78;
      }
    }

    else
    {
      v154 = *(v215[0] + 16);
      if (v154)
      {
        goto LABEL_51;
      }
    }

    *&v20[v151[8]] = a1;
LABEL_78:
    *&v20[v151[9]] = a1;
    v170 = v177;
    v171 = [v177 confidence];

    if (!HIDWORD(v171))
    {
      *&v20[v151[10]] = v171;
      v172 = v198;
      sub_22957F228(v20, v198, _s13MicroLocationO5EventVMa);
      (*(v197 + 56))(v172, 0, 1, v151);
      return sub_22957F360(v20, _s13MicroLocationO5EventVMa);
    }

    __break(1u);
LABEL_81:
    v73 = sub_22A4DE0EC();

    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22957DDF0()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_22957DE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock;
  swift_beginAccess();
  return sub_22957F228(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

uint64_t sub_22957DF40()
{
  v1 = (*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22957DF9C(uint64_t a1)
{
  *(a1 + 16) = sub_22957F17C(&qword_27D87D0B0, _s8ObserverCMa);
  result = sub_22957F17C(&qword_27D87D0B8, _s8ObserverCMa);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22957E020(uint64_t a1)
{
  result = sub_22957F17C(&qword_27D87D0B8, _s8ObserverCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22957E078(uint64_t a1)
{
  *(a1 + 8) = sub_22957F17C(&qword_27D87D0C0, _s8ObserverCMa);
  result = sub_22957F17C(&qword_27D87D0C8, _s8ObserverCMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22957E0FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_229669DB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22957E178(v6);
  return sub_22A4DE28C();
}

void sub_22957E178(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22A4DE5BC();
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
        sub_229562F68(0, &qword_27D87D108, 0x277D287E8);
        v6 = sub_22A4DD86C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22957E3B4(v8, v9, a1, v4);
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
    sub_22957E28C(0, v2, 1, a1);
  }
}

void sub_22957E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v19 = a3;
    v7 = *(v4 + 8 * a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 score];
      v12 = [v10 score];
      v13 = [v11 compare_];

      if (v13 != 1)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 8;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v14;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22957E3B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_229668AF0(v5);
    }

    v95 = *(v5 + 2);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v95 - 1);
        v97 = *&v5[16 * v95];
        v98 = *&v5[16 * v95 + 24];
        sub_22957EAB8((v96 + 8 * v97), (v96 + 8 * *&v5[16 * v95 + 16]), (v96 + 8 * v98), v10);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_229668AF0(v5);
        }

        if (v95 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v5[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        sub_229668A64(v95 - 1);
        v95 = *(v5 + 2);
        v7 = a3;
      }

      while (v95 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v104 = v6;
      v108 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v14 = *v13;
      v5 = (v13 + 2);
      v15 = *(*v7 + 8 * v12);
      v16 = v14;
      v17 = [v15 score];
      v18 = [v16 score];
      v112 = [v17 compare_];

      v102 = v11;
      v19 = v11 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v19)
        {
          break;
        }

        v20 = v10;
        v21 = *(v5 - 1);
        v22 = *v5;
        v23 = v21;
        v24 = [v22 score];
        v25 = [v23 score];
        v26 = [v24 compare_];

        v27 = v26 == 1;
        v10 = v20;
        v28 = !v27;
        ++v19;
        v5 += 8;
        if ((((v112 == 1) ^ v28) & 1) == 0)
        {
          v12 = v19 - 1;
          break;
        }
      }

      v11 = v102;
      v6 = v104;
      v7 = a3;
      v29 = v108;
      if (v112 == 1)
      {
        if (v12 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v12)
        {
          v30 = 8 * v12 - 8;
          v31 = v12;
          v32 = v102;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v29);
              *(v34 + v29) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = v7[1];
    if (v12 < v35)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v36 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v36 >= v35)
        {
          v36 = v7[1];
        }

        if (v36 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v36)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22958A414(0, *(v10 + 2) + 1, 1, v10);
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v10 = sub_22958A414((v49 > 1), v50 + 1, 1, v10);
    }

    *(v10 + 2) = v51;
    v52 = &v10[16 * v50];
    *(v52 + 4) = v11;
    *(v52 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v114 = v12;
    if (v50)
    {
      while (1)
      {
        v53 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v10 + 4);
          v55 = *(v10 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_58:
          if (v57)
          {
            goto LABEL_105;
          }

          v70 = &v10[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_108;
          }

          v76 = &v10[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_112;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v80 = &v10[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_107;
        }

        v83 = &v10[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        v91 = v53 - 1;
        if (v53 - 1 >= v51)
        {
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v92 = *&v10[16 * v91 + 32];
        v93 = *&v10[16 * v53 + 40];
        sub_22957EAB8((*v7 + 8 * v92), (*v7 + 8 * *&v10[16 * v53 + 32]), (*v7 + 8 * v93), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v93 < v92)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_229668AF0(v10);
        }

        if (v91 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v94 = &v10[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        sub_229668A64(v53);
        v51 = *(v10 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v10[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_103;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_104;
      }

      v65 = &v10[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_106;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_109;
      }

      if (v69 >= v61)
      {
        v87 = &v10[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v114;
    if (v114 >= v8)
    {
      goto LABEL_89;
    }
  }

  v100 = v10;
  v103 = v11;
  v105 = v6;
  v37 = *v7;
  v38 = *v7 + 8 * v12 - 8;
  v39 = v11 - v12;
  v109 = v36;
LABEL_31:
  v111 = v38;
  v113 = v12;
  v40 = *(v37 + 8 * v12);
  v41 = v39;
  while (1)
  {
    v42 = *v38;
    v43 = v40;
    v44 = v42;
    v5 = [v43 score];
    v45 = [v44 score];
    v46 = [v5 compare_];

    if (v46 != 1)
    {
LABEL_30:
      v12 = v113 + 1;
      v38 = v111 + 8;
      --v39;
      if (v113 + 1 != v109)
      {
        goto LABEL_31;
      }

      v12 = v109;
      v11 = v103;
      v6 = v105;
      v7 = a3;
      v10 = v100;
      goto LABEL_38;
    }

    if (!v37)
    {
      break;
    }

    v47 = *v38;
    v40 = *(v38 + 8);
    *v38 = v40;
    *(v38 + 8) = v47;
    v38 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_22957EAB8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v25;
    }

    v24 = a2;
    v41 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v40 = v14;
      v38 = v5;
LABEL_27:
      __dst = v24;
      v26 = v24 - 1;
      --v4;
      v27 = v41;
      do
      {
        v28 = (v4 + 1);
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        v34 = [v32 score];
        v35 = [v33 score];
        v36 = [v34 compare_];

        if (v36 == 1)
        {
          if (v28 != __dst)
          {
            *v4 = *v30;
          }

          v14 = v40;
          if (v41 <= v40 || (v24 = v30, v30 <= v38))
          {
            v24 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v41)
        {
          *v4 = *v27;
        }

        --v4;
        v41 = v27;
        v26 = v30;
      }

      while (v27 > v40);
      v41 = v27;
      v14 = v40;
      v24 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v41 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 score];
        v20 = [v18 score];
        v21 = [v19 compare_];

        if (v21 != 1)
        {
          break;
        }

        v22 = v15;
        v23 = v5 == v15++;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v41 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v22 = v14;
      v23 = v5 == v14++;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v24 = v5;
  }

LABEL_38:
  if (v24 != v14 || v24 >= (v14 + ((v41 - v14 + (v41 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v14, 8 * ((v41 - v14) / 8));
  }

  return 1;
}

uint64_t sub_22957EE00(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22A4DE0EC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_229716310(v3, 0);
  sub_2296F3BA0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22957EE94()
{
  v1 = _s20ControlBlockInternalVMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5 = swift_allocObject();
  if (qword_27D87B950 != -1)
  {
    swift_once();
  }

  *(v5 + 16) = qword_27D8AB730;
  v6 = qword_27D87B940;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v5 + 24) = qword_27D8AB720;
  *(v0 + 112) = v5 | 0x4000000000000000;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_observationTask) = 0;
  v7 = (v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_description);
  *v7 = 0xD000000000000036;
  v7[1] = 0x800000022A58A480;
  swift_unknownObjectWeakAssign();

  sub_22A4DB7CC();
  v4[*(v1 + 20)] = 0;
  sub_22957F290(v4, v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_controlBlock, _s20ControlBlockInternalVMa);
  *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation8Observer_adapter) = [objc_allocWithZone(_s7AdapterCMa()) init];
  return v0;
}

uint64_t sub_22957F078(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22957BB68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22957F17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22957F1C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22957F228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957F290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22957F2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22957F360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22957F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_229569C24(a3, v26 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22A4DD8CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22A4DD67C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22957F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_229569C24(a3, v27 - v11);
  v13 = sub_22A4DD9DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22953EAE4(v12, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22A4DD8CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22A4DD67C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D150, &qword_22A578068);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D150, &qword_22A578068);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22957F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_229569C24(a3, v27 - v11);
  v13 = sub_22A4DD9DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22953EAE4(v12, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22A4DD8CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22A4DD67C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22953EAE4(a3, &unk_27D87D8F0, &qword_22A578D70);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id static AddACWGKeysToExistingHomesOperation.predicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AddACWGKeysToExistingHomesOperation.main()()
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = [v0 homeManager];
  v39 = v12;
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  sub_22A4DBD4C();

  if (!v1)
  {
    v13 = v38[1];
    v14 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
    swift_beginAccess();
    v15 = *&v0[v14];
    v31 = v15;
    v16 = [v13 homes];
    if (!v16)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v17 = v16;
    v33 = v11;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v18 = sub_22A4DD83C();

    if (v18 >> 62)
    {
      goto LABEL_18;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v15;
    if (v19)
    {
      while (1)
      {
        v29 = ObjectType;
        v30 = v13;
        v35 = v4;
        v39 = MEMORY[0x277D84F90];
        sub_2295834A0(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          break;
        }

        v20 = 0;
        v15 = v39;
        v21 = v18;
        v13 = (v18 & 0xC000000000000001);
        v34 = v18 & 0xFFFFFFFFFFFFFF8;
        v36 = v18;
        while (1)
        {
          ObjectType = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v13)
          {
            v22 = MEMORY[0x22AAD13F0](v20, v21);
          }

          else
          {
            if (v20 >= *(v34 + 16))
            {
              goto LABEL_17;
            }

            v22 = *(v21 + 8 * v20 + 32);
          }

          v23 = v22;
          v38[0] = v22;
          sub_2295801C0(v38, &v37, v7);

          v39 = v15;
          v4 = v15[2];
          v24 = v15[3];
          v18 = v4 + 1;
          if (v4 >= v24 >> 1)
          {
            sub_2295834A0(v24 > 1, v4 + 1, 1);
            v15 = v39;
          }

          v15[2] = v18;
          sub_2295834E0(v7, v15 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v4);
          ++v20;
          v21 = v36;
          if (ObjectType == v19)
          {

            ObjectType = v29;
            v13 = v30;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v19 = sub_22A4DE0EC();
        v32 = v15;
        if (!v19)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_19:

    v15 = MEMORY[0x277D84F90];
LABEL_20:
    v25 = sub_22A4DD9DC();
    v26 = v33;
    (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v32;
    v27[5] = v15;
    v27[6] = ObjectType;
    sub_22957F3C0(0, 0, v26, &unk_22A577FC8, v27);
  }
}

void sub_2295801C0(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v28 - v16;
  v31 = *a1;
  v18 = [v31 uuid];
  sub_22A4DB79C();

  v19 = *(v7 + 32);
  v19(v17, v13, v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v30 = "MicroLocation.Event";
  sub_22A4DBD4C();
  sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
  if (v3)
  {
    *v32 = v3;
  }

  else
  {
    v29 = v19;
    v20 = [v31 currentUser];
    v34 = v20;
    sub_229562F68(0, &qword_281401790, off_278666348);
    sub_22A4DBD4C();
    v28[1] = v7;

    v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
    v21 = *(v28[0] + 48);
    v22 = v35;
    v23 = [v35 uuid];

    sub_22A4DB79C();
    v29(a3 + v21, v11, v6);
    v24 = [v31 backingStore];
    v33 = v24;
    sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();

    v25 = *(v28[0] + 64);
    v26 = v34;
    v27 = [v34 context];

    *(a3 + v25) = v27;
  }
}

uint64_t sub_22958060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_229580630, 0, 0);
}

uint64_t sub_229580630()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  *(v0 + 80) = v3;
  sub_22A4DBCEC();
  *(v0 + 88) = v4;
  v5 = *(MEMORY[0x277D0EFF8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_229580754;
  v7 = *(v0 + 48);

  return MEMORY[0x2821677F0]();
}

uint64_t sub_229580754()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_229580898;
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[9];

    v4 = sub_229580884;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229580898()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A58A850);
  swift_getErrorValue();
  v5 = v0[2];
  v6 = v0[3];
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22958098C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return static AddACWGKeysToExistingHomesOperation.run(withHomeData:)(a2);
}

uint64_t static AddACWGKeysToExistingHomesOperation.run(withHomeData:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_229580A44, 0, 0);
}

uint64_t sub_229580A44()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D0F018] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D128, &qword_22A577FE8);
  v6 = sub_229579858(&unk_281401CD0, &qword_27D87D128, &qword_22A577FE8);
  *v4 = v0;
  v4[1] = sub_229580B68;

  return MEMORY[0x282167818](&unk_22A577FE0, v2, v5, v6);
}

uint64_t sub_229580B68()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229580CA4, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_229580CA4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void *AddACWGKeysToExistingHomesOperation.flow.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AddACWGKeysToExistingHomesOperation.flow.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_229580F34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229580F54, 0, 0);
}

uint64_t sub_229580F54()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  v3 = *(v2 + 48);
  v4 = *(v1 + *(v2 + 64));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_22958101C;
  v6 = v0[2];
  v7 = v0[3];

  return sub_229581110(v6, v1 + v3, v4);
}

uint64_t sub_22958101C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_229581110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[283] = v3;
  v4[277] = a3;
  v4[271] = a2;
  v4[265] = a1;
  v5 = sub_22A4DB7DC();
  v4[289] = v5;
  v6 = *(v5 - 8);
  v4[295] = v6;
  v4[301] = *(v6 + 64);
  v4[307] = swift_task_alloc();
  v4[313] = swift_task_alloc();
  v4[319] = swift_task_alloc();
  v4[325] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229581208, 0, 0);
}

uint64_t sub_229581208()
{
  v1 = v0[325];
  v2 = v0[301];
  v20 = v2;
  v21 = v0[319];
  v3 = v0[295];
  v26 = v0[307];
  v27 = v0[289];
  v4 = v0[283];
  v25 = v4;
  v5 = v0[277];
  v22 = v0[271];
  v23 = v0[313];
  v29 = v0[265];
  v18 = *(v3 + 16);
  v18(v1);
  v6 = *(v3 + 80);
  v19 = ((v6 + 16) & ~v6) + v2;
  v28 = (v6 + 16) & ~v6;
  v24 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v17 = *(v3 + 32);
  v17(v7 + v28, v1, v27);
  *(v7 + v24) = v5;
  *(v7 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v8 = swift_allocObject();
  v0[331] = v8;
  *(v8 + 16) = &unk_22A5781C8;
  *(v8 + 24) = v7;
  v16 = v5;
  swift_asyncLet_begin();
  (v18)(v21, v29, v27);
  (v18)(v23, v22, v27);
  v9 = (v19 + v6) & ~v6;
  v10 = swift_allocObject();
  v17(v10 + v28, v21, v27);
  v17(v10 + v9, v23, v27);
  *(v10 + ((v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v11 = swift_allocObject();
  v0[337] = v11;
  *(v11 + 16) = &unk_22A5781E8;
  *(v11 + 24) = v10;
  v12 = v16;
  swift_asyncLet_begin();
  (v18)(v26, v29, v27);
  v13 = swift_allocObject();
  v17(v13 + v28, v26, v27);
  *(v13 + v24) = v25;
  v14 = swift_allocObject();
  v0[343] = v14;
  *(v14 + 16) = &unk_22A578208;
  *(v14 + 24) = v13;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_22958159C()
{
  *(v1 + 2792) = v0;
  if (v0)
  {
    v2 = sub_2295818BC;
  }

  else
  {
    v2 = sub_2295815D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229581600()
{
  *(v1 + 2800) = v0;
  if (v0)
  {
    v2 = sub_229581A88;
  }

  else
  {
    v2 = sub_229581634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229581634()
{
  v1 = v0[263];
  v2 = v0[264];
  v0[258] = MEMORY[0x277CC9318];
  v0[255] = v1;
  v0[256] = v2;
  sub_22956C148(v1, v2);

  return MEMORY[0x282200930](v0 + 162);
}

uint64_t sub_2295816B4()
{
  *(v1 + 2808) = v0;
  if (v0)
  {
    v2 = sub_229581C5C;
  }

  else
  {
    v2 = sub_2295816E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295816E8()
{
  *(v0 + 2096) = MEMORY[0x277D84F78] + 8;
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296, v1, sub_229581770, v0 + 2656);
}

uint64_t sub_229581800()
{
  v1 = v0[343];
  v2 = v0[337];
  v3 = v0[331];
  v4 = v0[325];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2295818BC()
{
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296, v1, sub_229581934, v0 + 2128);
}

uint64_t sub_2295819C4()
{
  v1 = v0[349];
  v2 = v0[343];
  v3 = v0[337];
  v4 = v0[331];
  v5 = v0[325];
  v6 = v0[319];
  v7 = v0[313];
  v8 = v0[307];

  v9 = v0[1];

  return v9();
}

uint64_t sub_229581A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2008));
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296, v1, sub_229581B08, v0 + 2320);
}

uint64_t sub_229581B98()
{
  v1 = v0[350];
  v2 = v0[343];
  v3 = v0[337];
  v4 = v0[331];
  v5 = v0[325];
  v6 = v0[319];
  v7 = v0[313];
  v8 = v0[307];

  v9 = v0[1];

  return v9();
}

uint64_t sub_229581C5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2040));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2008));
  swift_arrayDestroy();

  return MEMORY[0x282200920](v0 + 1296, v1, sub_229581CE4, v0 + 2512);
}

uint64_t sub_229581D74()
{
  v1 = v0[351];
  v2 = v0[343];
  v3 = v0[337];
  v4 = v0[331];
  v5 = v0[325];
  v6 = v0[319];
  v7 = v0[313];
  v8 = v0[307];

  v9 = v0[1];

  return v9();
}

uint64_t sub_229581E38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22958530C(a1, a2);
}

uint64_t sub_229581ED4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return v6();
}

uint64_t sub_229581FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229581FE0, 0, 0);
}

uint64_t sub_229581FE0()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2295820BC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(v4, v2, v3, 0);
}

uint64_t sub_2295820BC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2295821CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2295822B8;

  return v6();
}

uint64_t sub_2295822B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2295823D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229569B30;

  return sub_229585B28(a1);
}

uint64_t sub_229582468()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  [v1 findHomeWithModelID_];

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    v4 = [v18 matCredGRK];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22A4DB62C();
      v8 = v7;

      sub_2295798D4(v6, v8);
    }

    else
    {
      v9 = [objc_opt_self() createGroupResolvingKey];
      if (v9)
      {
        v10 = v9;
        v11 = sub_22A4DB62C();
        v13 = v12;

        v14 = sub_22A4DB61C();
        [v18 setMatCredGRK_];

        sub_2297082C0();
        sub_22A4DE1FC();

        v15 = sub_22A4DB5AC();
        MEMORY[0x22AAD08C0](v15);

        MEMORY[0x22AAD08C0](0x656D6F68206F7420, 0xEA0000000000203ALL);
        sub_22A4DB7DC();
        sub_229586A3C();
        v16 = sub_22A4DE5CC();
        MEMORY[0x22AAD08C0](v16);

        sub_22A4DBD0C();

        swift_unknownObjectRelease();
        return sub_2295798D4(v11, v13);
      }

      sub_22A4DBD3C();
      [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_229582764(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_229582870(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_229582894, 0, 0);
}

uint64_t sub_229582894()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_229582980;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000035, 0x800000022A58A660, sub_229586B30, v1, v4);
}

uint64_t sub_229582980()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229566EE4, 0, 0);
}

void sub_229582A98(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_22A4DBCFC();
  if (!v11)
  {
    v11 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  v12 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_229586B38;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229582E94;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [a2 getOrCreateUniqueIDForAccessoriesForUser:v16 flow:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_229582C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003ALL, 0x800000022A58A720);
    v10 = [a3 uuid];
    sub_22A4DB79C();

    sub_229586A3C();
    v11 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v11);

    (*(v6 + 8))(v9, v5);
    MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
    v15[1] = a2;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D288, &qword_22A578240);
    v13 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v13);

    sub_22A4DBD3C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

void sub_229582E94(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id AddACWGKeysToExistingHomesOperation.__allocating_init(uuid:userData:backGroundOpsManager:scheduledDate:expirationDate:dataSource:dependentOperations:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = sub_22A4DB77C();
  v15 = sub_22A4DD47C();

  v24 = a4;
  v16 = sub_22A4DB6AC();
  v17 = sub_22A4DB6AC();
  if (a7)
  {
    v18 = sub_22A4DDB5C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(v8) initWithUUID:v14 userData:v15 backGroundOpsManager:a3 scheduledDate:v16 expirationDate:v17 dataSource:a6 dependentOperations:v18];

  swift_unknownObjectRelease();
  v20 = sub_22A4DB74C();
  v21 = *(*(v20 - 8) + 8);
  v21(a5, v20);
  v21(v24, v20);
  v22 = sub_22A4DB7DC();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v19;
}

id AddACWGKeysToExistingHomesOperation.init(uuid:userData:backGroundOpsManager:scheduledDate:expirationDate:dataSource:dependentOperations:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_229586134(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v8;
}

id AddACWGKeysToExistingHomesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddACWGKeysToExistingHomesOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_229583334(char *a1, int64_t a2, char a3)
{
  result = sub_229583BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583354(char *a1, int64_t a2, char a3)
{
  result = sub_229583CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583374(char *a1, int64_t a2, char a3)
{
  result = sub_229583DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583394(void *a1, int64_t a2, char a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D230, &qword_22A578178, &qword_27D87D238, &qword_22A578180);
  *v3 = result;
  return result;
}

size_t sub_2295833D4(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D2B0, &qword_22A578290, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
  *v3 = result;
  return result;
}

size_t sub_229583418(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D2B8, qword_22A578298, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
  *v3 = result;
  return result;
}

size_t sub_22958345C(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D180, &qword_22A5780B0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_2295834A0(size_t a1, int64_t a2, char a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D298, &unk_22A578280, &qword_27D87D110, &unk_22A577FB0);
  *v3 = result;
  return result;
}

uint64_t sub_2295834E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D110, &unk_22A577FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229583550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22958060C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229583618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229580F34(a1, v4);
}

void *sub_2295836B4(void *a1, int64_t a2, char a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D248, &qword_22A578190, &qword_27D87D250, &qword_22A578198);
  *v3 = result;
  return result;
}

char *sub_2295836F4(char *a1, int64_t a2, char a3)
{
  result = sub_229583EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583714(void *a1, int64_t a2, char a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &unk_27D87D380, &unk_22A578500, &unk_27D87C370, &qword_22A578090);
  *v3 = result;
  return result;
}

void *sub_229583754(void *a1, int64_t a2, char a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D158, &qword_22A578078, &qword_27D87D160, &unk_22A578080);
  *v3 = result;
  return result;
}

size_t sub_229583794(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D268, &qword_22A5781B0, MEMORY[0x277D0EFB0]);
  *v3 = result;
  return result;
}

size_t sub_2295837D8(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D240, &qword_22A578188, MEMORY[0x277D17408]);
  *v3 = result;
  return result;
}

char *sub_22958381C(char *a1, int64_t a2, char a3)
{
  result = sub_229583FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22958383C(void *a1, int64_t a2, char a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D220, &unk_22A5785F0, &qword_27D87D228, &qword_22A578170);
  *v3 = result;
  return result;
}

char *sub_22958387C(char *a1, int64_t a2, char a3)
{
  result = sub_2295840C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22958389C(size_t a1, int64_t a2, char a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D188, &qword_22A5780B8, &qword_27D87D190, &qword_22A5780C0);
  *v3 = result;
  return result;
}

size_t sub_2295838DC(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D178, &qword_22A5780A8, _s13PresenceStateOMa);
  *v3 = result;
  return result;
}

size_t sub_229583920(size_t a1, int64_t a2, char a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D200, &unk_22A5785D0, &qword_27D87D208, &qword_22A578150);
  *v3 = result;
  return result;
}

size_t sub_229583960(size_t a1, int64_t a2, char a3)
{
  result = sub_2295841D0(a1, a2, a3, *v3, &qword_27D87D210, &qword_22A578158, &qword_27D87D218, &unk_22A578160);
  *v3 = result;
  return result;
}

void *sub_2295839A0(void *a1, int64_t a2, char a3)
{
  result = sub_2295843B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2295839C0(char *a1, int64_t a2, char a3)
{
  result = sub_2295844EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2295839E0(char *a1, int64_t a2, char a3)
{
  result = sub_2295845F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_229583A00(char *a1, int64_t a2, char a3)
{
  result = sub_229584710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583A20(void *a1, int64_t a2, char a3)
{
  result = sub_229584830(a1, a2, a3, *v3, &qword_27D87D1E0, &qword_22A578128, &qword_27D87D1E8, &qword_22A578130);
  *v3 = result;
  return result;
}

void *sub_229583A60(void *a1, int64_t a2, char a3)
{
  result = sub_229584830(a1, a2, a3, *v3, &qword_27D87D1F0, &qword_22A578138, &qword_27D87D1F8, &unk_22A578140);
  *v3 = result;
  return result;
}

size_t sub_229583AA0(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &qword_27D87D1B0, &qword_22A5780E0, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
  *v3 = result;
  return result;
}

char *sub_229583AE4(char *a1, int64_t a2, char a3)
{
  result = sub_229584978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_229583B04(void *a1, int64_t a2, char a3)
{
  result = sub_229584A88(a1, a2, a3, *v3, &qword_27D87D1C0, &qword_22A5780F0, &qword_27D87D1C8, &qword_22A5780F8);
  *v3 = result;
  return result;
}

size_t sub_229583B44(size_t a1, int64_t a2, char a3)
{
  result = sub_229584BD0(a1, a2, a3, *v3, &unk_27D87D130, &qword_22A578028, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_229583B88(void *a1, int64_t a2, char a3)
{
  result = sub_229584DAC(a1, a2, a3, *v3, &qword_27D87D148, &unk_22A578040, &qword_27D87C410, &qword_22A576EE0);
  *v3 = result;
  return result;
}

char *sub_229583BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_229583CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D258, &qword_22A5781A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_229583DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D260, &qword_22A5781A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_229583EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D140, &unk_22A57A950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_229583FD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D1B8, &qword_22A5780E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2295840C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D198, &qword_22A5780C8);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2295841D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2295843B8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1A0, &unk_22A5780D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2295844EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
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

char *sub_2295845F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D170, &qword_22A5780A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_229584710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D168, &qword_22A578098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_229584830(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_229584978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
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

void *sub_229584A88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_229584BD0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_229584DAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_229584EE0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_229584FD4;

  return v6(v2 + 32);
}

uint64_t sub_229584FD4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2295850E8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_2295851DC;

  return v6(v2 + 16);
}

uint64_t sub_2295851DC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22958530C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_22A4DB7DC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295853D4, 0, 0);
}

uint64_t sub_2295853D4()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_22A4DE1FC();

  v0[14] = sub_229586A3C();
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  sub_22A4DBD0C();

  v4 = [objc_opt_self() driver];
  v5 = [v4 homeManager];

  v6 = [v5 homes];
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x2822008A0]();
  }

  v7 = v0[8];
  v8 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v9 = sub_22A4DD83C();

  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  v11 = sub_22968FFF0(sub_229586BC8, v10, v9);

  v0[6] = v11;
  sub_22A4DBD4C();

  v12 = v0[5];
  v0[15] = v12;
  if ([v12 isOwnerUser])
  {
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[9];
    (*(v16 + 16))(v13, v0[8], v15);
    v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v0[16] = v20;
    (*(v16 + 32))(v20 + v18, v13, v15);
    *(v20 + v19) = v17;
    v21 = v17;
    v22 = swift_task_alloc();
    v0[17] = v22;
    v22[2] = v21;
    v22[3] = sub_229586BE8;
    v22[4] = v20;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_22958583C;

    return MEMORY[0x2822008A0]();
  }

  v25 = v0[10];
  v26 = v0[8];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58A6A0);
  v27 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v27);

  MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58A7B0);
  sub_22A4DBD0C();

  v28 = v0[13];

  v29 = v0[1];

  return v29();
}

uint64_t sub_22958583C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2295859CC;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);

    v4 = sub_229585960;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229585960()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295859CC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[8];

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000020, 0x800000022A58A800);
  v8 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v8);

  MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
  swift_getErrorValue();
  v9 = v0[2];
  v10 = v0[3];
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  swift_willThrow();

  v11 = v0[19];
  v12 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229585B48()
{
  v1 = v0[5];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000039, 0x800000022A58A620);
  sub_22A4DB7DC();
  sub_229586A3C();
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  sub_22A4DBD0C();

  v3 = [objc_opt_self() driver];
  v4 = [v3 homeManager];

  v5 = [v4 homes];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v0[5];
  v11 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v12 = sub_22A4DD83C();

  v13 = swift_task_alloc();
  *(v13 + 16) = v10;
  v14 = sub_22968FFF0(sub_229586D3C, v13, v12);

  v0[3] = v14;
  sub_22A4DBD4C();

  v15 = v0[2];
  v0[6] = v15;
  if ([v15 isOwnerUser])
  {
    v6 = [v15 users];
    if (v6)
    {
      v16 = v6;
      sub_229562F68(0, &qword_281401790, off_278666348);
      v17 = sub_22A4DD83C();
      v0[7] = v17;

      v0[4] = v17;
      v18 = swift_task_alloc();
      v0[8] = v18;
      *(v18 + 16) = v15;
      v19 = *(MEMORY[0x277D0F008] + 4);
      v20 = swift_task_alloc();
      v0[9] = v20;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D270, &unk_22A578230);
      v9 = sub_229579858(&qword_281401C88, &unk_27D87D270, &unk_22A578230);
      *v20 = v0;
      v20[1] = sub_229585F8C;
      v6 = &unk_22A578228;
      v7 = v18;
      v8 = v21;

      return MEMORY[0x282167808](v6, v7, v8, v9);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x282167808](v6, v7, v8, v9);
  }

  v22 = v0[5];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58A6A0);
  v23 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v23);

  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58A6C0);
  sub_22A4DBD0C();

  v24 = v0[1];

  return v24();
}

void sub_229585F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);

    MEMORY[0x2822009F8](sub_2295860D0, 0, 0);
  }
}

uint64_t sub_2295860D0()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_229586134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow] = 0;
  v13 = sub_22A4DB77C();
  v14 = sub_22A4DD47C();

  v15 = sub_22A4DB6AC();
  v16 = sub_22A4DB6AC();
  if (a7)
  {
    v17 = sub_22A4DDB5C();
  }

  else
  {
    v17 = 0;
  }

  v25.receiver = v8;
  v25.super_class = type metadata accessor for AddACWGKeysToExistingHomesOperation();
  v18 = objc_msgSendSuper2(&v25, sel_initWithUUID_userData_backGroundOpsManager_scheduledDate_expirationDate_dataSource_dependentOperations_, v13, v14, a3, v15, v16, a6, v17);

  v19 = sub_22A4DB74C();
  v20 = *(*(v19 - 8) + 8);
  v20(a5, v19);
  v20(a4, v19);
  v21 = sub_22A4DB7DC();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v18;
}

uint64_t sub_229586324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229584EE0(a1, v5);
}

uint64_t sub_2295863DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_2295850E8(a1, v5);
}

uint64_t sub_229586494()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_229586D38;

  return sub_229581E38(v0 + v3, v5);
}

uint64_t sub_2295865A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229581ED4(a1, v5);
}

uint64_t sub_229586660()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586774;

  return sub_229581FBC(v0 + v4, v0 + v6, v7);
}

uint64_t sub_229586774(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_229586880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2295821CC(a1, v5);
}

uint64_t sub_229586938()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2295823D4(v0 + v3);
}

unint64_t sub_229586A3C()
{
  result = qword_281403860;
  if (!qword_281403860)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403860);
  }

  return result;
}

uint64_t sub_229586A94(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229582870(a1, v4);
}

uint64_t sub_229586B38(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_229582C9C(a1, a2, v6);
}

uint64_t sub_229586BE8()
{
  v1 = *(sub_22A4DB7DC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_229582468();
}

uint64_t sub_229586C8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22958098C(a1, v5);
}

uint64_t sub_229586D58@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v160 = &v152 - v10;
  v11 = _s21EventMetadataInternalV6DeviceVMa(0);
  v175 = *(v11 - 8);
  v176 = v11;
  v12 = *(v175 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v159 = &v152 - v16;
  MEMORY[0x28223BE20](v15);
  v169 = &v152 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v165 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v170 = &v152 - v23;
  MEMORY[0x28223BE20](v22);
  v168 = (&v152 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v172 = &v152 - v27;
  v161 = _s21EventMetadataInternalV4HomeVMa(0);
  v28 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v173 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22A4DB74C();
  v163 = *(v156 - 8);
  v30 = *(v163 + 64);
  MEMORY[0x28223BE20](v156);
  v174 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = _s21EventMetadataInternalVMa(0);
  v32 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v157 = (&v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_22A4DB7DC();
  v35 = *(v34 - 8);
  v182 = v34;
  v183 = v35;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v164 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v167 = &v152 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v152 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v162 = &v152 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v178 = &v152 - v47;
  MEMORY[0x28223BE20](v46);
  v177 = &v152 - v48;
  v49 = sub_22A4DD07C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v152 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _s24AppleMediaAccessoryStateO5EventVMa();
  v180 = *(v54 - 8);
  v181 = v54;
  v55 = *(v180 + 64);
  MEMORY[0x28223BE20](v54);
  v179 = &v152 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229588CF8(a2);
  v57 = *a2;
  v58 = a2[3];
  if (!(*a2 | v58))
  {

    v59 = 1;
    return (*(v180 + 56))(a4, v59, 1, v181);
  }

  v171 = a1;
  KeyPath = swift_getKeyPath();
  v61 = sub_22956ECE8(KeyPath, a3);

  if (v61)
  {

    if ((v57 - 1) >= 6)
    {
      v62 = 0;
    }

    else
    {
      v62 = v57;
    }

LABEL_14:
    v65 = v171;
    *(v179 + *(v181 + 20)) = v62;
    v66 = [v65 currentAccessory];
    if (!v66)
    {

      v59 = 1;
      return (*(v180 + 56))(a4, v59, 1, v181);
    }

    v67 = v66;
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (!v68)
    {

      v59 = 1;
      return (*(v180 + 56))(a4, v59, 1, v181);
    }

    v69 = v68;
    v70 = v67;
    v71 = [v69 uuid];
    sub_22A4DB79C();

    v72 = [v69 room];
    v153 = v70;

    v73 = [v72 uuid];
    sub_22A4DB79C();

    v74 = sub_229723AE0(v69);
    v75 = v74;
    if (v74 >> 62)
    {
      v76 = sub_22A4DE0EC();
    }

    else
    {
      v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v155 = a4;
    if (v76)
    {
      v184 = MEMORY[0x277D84F90];
      sub_22958345C(0, v76 & ~(v76 >> 63), 0);
      if (v76 < 0)
      {
        goto LABEL_62;
      }

      v77 = 0;
      v78 = v184;
      do
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v79 = MEMORY[0x22AAD13F0](v77, v75);
        }

        else
        {
          v79 = *(v75 + 8 * v77 + 32);
        }

        v80 = v79;
        v81 = [v79 uuid];
        sub_22A4DB79C();

        v184 = v78;
        v83 = *(v78 + 16);
        v82 = *(v78 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_22958345C(v82 > 1, v83 + 1, 1);
          v78 = v184;
        }

        ++v77;
        *(v78 + 16) = v83 + 1;
        (*(v183 + 32))(v78 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v83, v43, v182);
      }

      while (v76 != v77);

      v65 = v171;
    }

    else
    {

      v78 = MEMORY[0x277D84F90];
    }

    *(v179 + *(v181 + 24)) = v78;
    sub_22A4DB71C();
    v88 = [v65 uuid];
    v89 = v162;
    sub_22A4DB79C();

    v90 = [v65 users];
    if (!v90)
    {
LABEL_38:
      LODWORD(v93) = 1;
      goto LABEL_39;
    }

    v91 = v90;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v92 = sub_22A4DD83C();

    if (v92 >> 62)
    {
      goto LABEL_63;
    }

    v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (HIDWORD(v93))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_39:
    while (1)
    {
      v94 = v182;
      v95 = v183;
      v96 = v173;
      (*(v183 + 32))(v173, v89, v182);
      *(v96 + *(v161 + 20)) = v93;
      v93 = *(v95 + 16);
      v97 = v167;
      (v93)(v167, v177, v94);
      v98 = v168;
      (v93)(v168, v178, v94);
      v99 = *(v95 + 56);
      v99(v98, 0, 1, v94);
      LODWORD(v162) = [v65 isCurrentDevicePrimaryResident];
      v100 = v176;
      v101 = v176[5];
      v102 = v169;
      v154 = v99;
      v99(v169 + v101, 1, 1, v94);
      v103 = (v102 + v100[9]);
      *v103 = 0;
      v103[1] = 0;
      v161 = v93;
      (v93)(v102, v97, v94);
      v104 = v170;
      sub_229564F88(v98, v170, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v102 + v101, &qword_27D87CBF0, &qword_22A577898);
      sub_229564B0C(v104, v102 + v101);
      *(v102 + v100[6]) = 1;
      *(v102 + v100[7]) = 0;
      *(v102 + v100[8]) = v162;
      v105 = MobileGestalt_get_current_device();
      if (v105)
      {
        break;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v65 = v171;
      v89 = v162;
      if (HIDWORD(v93))
      {
        goto LABEL_37;
      }
    }

    v106 = v105;
    v107 = MobileGestalt_copy_deviceColor_obj();

    if (v107)
    {
      v108 = sub_22A4DD5EC();
      v110 = v109;
    }

    else
    {
      v108 = 0;
      v110 = 0;
    }

    sub_22953EAE4(v168, &unk_27D87D2A0, &unk_22A578BD0);
    v111 = v182;
    v112 = *(v183 + 8);
    v183 += 8;
    v168 = v112;
    (v112)(v167, v182);
    *v103 = v108;
    v103[1] = v110;
    v113 = v172;
    sub_229589154(v169, v172, _s21EventMetadataInternalV6DeviceVMa);
    v114 = v176;
    v115 = *(v175 + 56);
    v175 += 56;
    v167 = v115;
    (v115)(v113, 0, 1, v176);
    v116 = v164;
    v117 = v161;
    (v161)(v164, v177, v111);
    v118 = v165;
    v117(v165, v178, v111);
    v119 = v154;
    v154(v118, 0, 1, v111);
    LODWORD(v169) = [v171 isCurrentDevicePrimaryResident];
    v120 = v114[5];
    v93 = v166;
    v119(v166 + v120, 1, 1, v111);
    v121 = (v93 + v114[9]);
    *v121 = 0;
    v121[1] = 0;
    v117(v93, v116, v111);
    v122 = v118;
    v123 = v170;
    sub_229564F88(v122, v170, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v93 + v120, &qword_27D87CBF0, &qword_22A577898);
    sub_229564B0C(v123, v93 + v120);
    *(v93 + v114[6]) = 1;
    *(v93 + v114[7]) = 0;
    *(v93 + v114[8]) = v169;
    v124 = MobileGestalt_get_current_device();
    if (!v124)
    {
      goto LABEL_66;
    }

    v125 = v124;
    v126 = MobileGestalt_copy_deviceColor_obj();

    v127 = v160;
    v128 = v159;
    v129 = v158;
    if (v126)
    {
      v130 = sub_22A4DD5EC();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0;
    }

    sub_22953EAE4(v165, &unk_27D87D2A0, &unk_22A578BD0);
    (v168)(v164, v182);
    *v121 = v130;
    v121[1] = v132;
    sub_229589154(v166, v128, _s21EventMetadataInternalV6DeviceVMa);
    v133 = _s21EventMetadataInternalV4UserVMa(0);
    v134 = *(*(v133 - 8) + 56);
    v134(v127, 1, 1, v133);
    v135 = v157;
    *v157 = 1;
    v136 = v135 + v129[6];
    sub_22A4DB7CC();
    v137 = v129[9];
    (v167)(v135 + v137, 1, 1, v176);
    v138 = v129[11];
    v134(v135 + v138, 1, 1, v133);
    *(v135 + 8) = 0xD00000000000001ELL;
    *(v135 + 16) = 0x800000022A58A8B0;
    v139 = v156;
    (*(v163 + 16))(v135 + v129[7], v174, v156);
    sub_229564EB8(v173, v135 + v129[8], _s21EventMetadataInternalV4HomeVMa);
    sub_229564B7C(v172, v135 + v137, &qword_27D87CBE8, &qword_22A577890);
    sub_229564EB8(v128, v135 + v129[10], _s21EventMetadataInternalV6DeviceVMa);
    sub_229564B7C(v127, v135 + v138, &qword_27D87CBE0, &unk_22A577880);
    v140 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v140 systemUptime];
    v142 = v141;

    v143 = v142 * 1000.0;
    if (COERCE__INT64(fabs(v142 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v143 > -1.0)
    {
      a4 = v155;
      if (v143 < 1.84467441e19)
      {
        *(v135 + v129[12]) = v143;
        v144 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
        [v144 timeIntervalSince1970];
        v146 = v145;

        sub_22953EAE4(v127, &qword_27D87CBE0, &unk_22A577880);
        sub_229564BE4(v128, _s21EventMetadataInternalV6DeviceVMa);
        sub_22953EAE4(v172, &qword_27D87CBE8, &qword_22A577890);
        sub_229564BE4(v173, _s21EventMetadataInternalV4HomeVMa);
        (*(v163 + 8))(v174, v139);
        v147 = v182;
        v148 = v168;
        (v168)(v178, v182);
        v148(v177, v147);
        v149 = v146 * 1000.0;
        if (COERCE__INT64(fabs(v146 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v149 > -1.0)
          {
            if (v149 < 1.84467441e19)
            {
              *(v135 + v129[13]) = v149;
              v150 = v179;
              sub_229589154(v135, v179, _s21EventMetadataInternalVMa);
              sub_229589154(v150, a4, _s24AppleMediaAccessoryStateO5EventVMa);
              v59 = 0;
              return (*(v180 + 56))(a4, v59, 1, v181);
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v93 = sub_22A4DE0EC();

          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
          goto LABEL_65;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_58;
  }

  v63 = swift_getKeyPath();
  v64 = sub_22956ECE8(v63, a3);

  if (v64)
  {
    if (v58 == 1)
    {
      v62 = 7;
    }

    else
    {
      v62 = 0;
    }

    if (v58 == 2)
    {
      v62 = 8;
    }

    goto LABEL_14;
  }

  v84 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_229709260(v181, &off_283CDD040);
  sub_22A4DD06C();
  v85 = sub_22A4DD05C();
  v86 = sub_22A4DDCEC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_229538000, v85, v86, "keyPaths does not contain either playbackState or sleepWakeState", v87, 2u);
    MEMORY[0x22AAD4E50](v87, -1, -1);
  }

  (*(v50 + 8))(v53, v49);
  v59 = 1;
  return (*(v180 + 56))(a4, v59, 1, v181);
}