void sub_252DAE2F8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_252DACC30(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_252DB0E60(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_252DB3500(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_252E37684();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_252E37694();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_252E37E14();
  __break(1u);
}

uint64_t sub_252DAE47C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F541638, &qword_252E40900, StateSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F541638, &qword_252E40900);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F541638, &qword_252E40900, StateSemantic.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = StateSemantic.rawValue.getter();
      v14 = v13;
      if (v12 == StateSemantic.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAE6BC(uint64_t result, unint64_t a2, char a3)
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
    sub_252DAB4E4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_252DB05BC(&qword_27F5445E8, &qword_252E54DD8);
      goto LABEL_16;
    }

    sub_252DB1FC4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_252E37EC4();
  sub_252A9AD58(v6);
  sub_252E37044();

  result = sub_252E37F14();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_252A9AD58(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == sub_252A9AD58(v6) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_252E37DB4();

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
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAE8A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 112);
  v71 = *(result + 96);
  v72 = v7;
  v73 = *(result + 128);
  v74 = *(result + 144);
  v8 = *(result + 48);
  v67 = *(result + 32);
  v68 = v8;
  v9 = *(result + 80);
  v69 = *(result + 64);
  v70 = v9;
  v10 = *(result + 16);
  v65 = *result;
  v66 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAB750(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_252DB02CC();
      goto LABEL_12;
    }

    sub_252DB2200(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  v15 = *(v6 + 112);
  v61 = *(v6 + 96);
  v62 = v15;
  v63 = *(v6 + 128);
  v64 = *(v6 + 144);
  v16 = *(v6 + 48);
  v57 = *(v6 + 32);
  v58 = v16;
  v17 = *(v6 + 80);
  v59 = *(v6 + 64);
  v60 = v17;
  v18 = *(v6 + 16);
  v55 = *v6;
  v56 = v18;
  sub_252E37EC4();
  sub_252A34930();
  result = sub_252E37F14();
  v19 = -1 << *(v13 + 32);
  a2 = result & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    do
    {
      v21 = *(v13 + 48) + 152 * a2;
      v22 = *(v21 + 16);
      v53[0] = *v21;
      v53[1] = v22;
      v23 = *(v21 + 80);
      v25 = *(v21 + 32);
      v24 = *(v21 + 48);
      v53[4] = *(v21 + 64);
      v53[5] = v23;
      v53[2] = v25;
      v53[3] = v24;
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v28 = *(v21 + 128);
      v54 = *(v21 + 144);
      v53[7] = v27;
      v53[8] = v28;
      v53[6] = v26;
      v29 = *(v21 + 112);
      v49 = *(v21 + 96);
      v50 = v29;
      v51 = *(v21 + 128);
      v52 = *(v21 + 144);
      v30 = *(v21 + 48);
      v45 = *(v21 + 32);
      v46 = v30;
      v31 = *(v21 + 80);
      v47 = *(v21 + 64);
      v48 = v31;
      v32 = *(v21 + 16);
      v43 = *v21;
      v44 = v32;
      sub_25297DE08(v53, &v55);
      v33 = sub_252A39200(&v43, &v65);
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v64 = v52;
      v57 = v45;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v55 = v43;
      v56 = v44;
      result = sub_2529AEC80(&v55);
      if (v33)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v34 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = *(v34 + 48) + 152 * a2;
  v36 = v70;
  *(v35 + 64) = v69;
  *(v35 + 80) = v36;
  v37 = v68;
  *(v35 + 32) = v67;
  *(v35 + 48) = v37;
  *(v35 + 144) = v74;
  v38 = v73;
  *(v35 + 112) = v72;
  *(v35 + 128) = v38;
  *(v35 + 96) = v71;
  v39 = v66;
  *v35 = v65;
  *(v35 + 16) = v39;
  v40 = *(v34 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (!v41)
  {
    *(v34 + 16) = v42;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEB44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DAB9CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252DB047C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252DB2440(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_252E37EB4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEC64(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DABBF0(v6 + 1, &qword_27F545DF0, &qword_252E600D0, AttributeSemantic.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB05BC(&qword_27F545DF0, &qword_252E600D0);
      goto LABEL_16;
    }

    sub_252DB2630(v6 + 1, &qword_27F545DF0, &qword_252E600D0, AttributeSemantic.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = AttributeSemantic.rawValue.getter();
      v14 = v13;
      if (v12 == AttributeSemantic.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAEEA4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DABE64(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252DB06EC();
      goto LABEL_12;
    }

    sub_252DB2874(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80);
  v15 = sub_252E36E84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2529E6488(qword_27F542ED0, &qword_27F540A28, &qword_252E3DF80);
      v23 = sub_252E36EF4();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
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
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAF148(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_252DAC1C4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB092C();
      goto LABEL_16;
    }

    sub_252DB2B94(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  result = sub_252E37F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + 2 * a2);
      v12 = HueSemantic.rawValue.getter();
      v14 = v13;
      if (v12 == HueSemantic.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 2 * a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252DAF330(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v26 = a6;
      sub_252DAA7C0(v9 + 1, a4, a5);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_252DB0B9C(a4, a5);
        goto LABEL_20;
      }

      v26 = a6;
      sub_252DB1360(v9 + 1, a4, a5);
    }

    v11 = *v6;
    v12 = *(*v6 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
    sub_252E36E94();
    v13 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v14 = (v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v15 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E37044();

    result = sub_252E37F14();
    v17 = -1 << *(v11 + 32);
    a2 = result & ~v17;
    if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      do
      {
        v19 = *(*(v11 + 48) + 8 * a2);

        if ((sub_252E32E54() & 1) != 0 && *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v8 + v13))
        {
          if (*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v14 && *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v14[1])
          {
            goto LABEL_23;
          }

          v21 = sub_252E37DB4();

          if (v21)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        a2 = (a2 + 1) & v18;
      }

      while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v8;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_23:

LABEL_24:
    v26(0);
    result = sub_252E37E14();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

void sub_252DAF5DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
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
    sub_252DACC30(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_252DB0E60(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_252DB3500(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_252E37684();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_25293F638(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_252E37694();

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
  sub_252E37E14();
  __break(1u);
}

uint64_t sub_252DAF76C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v47 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_252DAC690(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252DB0CDC();
      goto LABEL_69;
    }

    sub_252DB3000(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = *(v5 + 16);
  v55[0] = *v5;
  v55[1] = v10;
  v11 = *(v5 + 48);
  v55[2] = *(v5 + 32);
  v55[3] = v11;
  sub_252E37EC4();
  IconInfo.hash(into:)(&v52);
  result = sub_252E37F14();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v51 = ~v12;
    v13 = *(v5 + 32);
    v48 = *(v5 + 33);
    v14 = *v5;
    v15 = *(v5 + 8);
    v16 = *(v5 + 16);
    v49 = *(v5 + 48);
    v50 = *(v5 + 24);
    v44 = *(v5 + 40);
    v45 = *(v5 + 56);
    do
    {
      v17 = (*(v8 + 48) + (a2 << 6));
      v19 = v17[2];
      v18 = v17[3];
      v20 = v17[1];
      v52 = *v17;
      v53 = v20;
      *v54 = v19;
      *&v54[16] = v18;
      if (v52 != __PAIR128__(v15, v14))
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v53 != __PAIR128__(v50, v16))
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v21 = 0x6F7268636F6E6F6DLL;
      if (v54[0] != 2)
      {
        v21 = 0x657474656C6170;
      }

      v22 = 0xE700000000000000;
      if (v54[0] == 2)
      {
        v22 = 0xEA0000000000656DLL;
      }

      v23 = 0xEA0000000000726FLL;
      v24 = 0x6C6F6369746C756DLL;
      if (!v54[0])
      {
        v24 = 0x6863726172656968;
        v23 = 0xEC0000006C616369;
      }

      if (v54[0] <= 1u)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      if (v54[0] <= 1u)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v27 = 0x6F7268636F6E6F6DLL;
        }

        else
        {
          v27 = 0x657474656C6170;
        }

        if (v13 == 2)
        {
          v28 = 0xEA0000000000656DLL;
        }

        else
        {
          v28 = 0xE700000000000000;
        }
      }

      else
      {
        v27 = 0x6863726172656968;
        v28 = 0xEC0000006C616369;
        if (v13)
        {
          v28 = 0xEA0000000000726FLL;
          v27 = 0x6C6F6369746C756DLL;
        }
      }

      if (v25 == v27 && v26 == v28)
      {
        sub_252C76A80(&v52, v55);
      }

      else
      {
        v29 = sub_252E37DB4();
        sub_252C76A80(&v52, v55);

        if ((v29 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v54[1] > 1u)
      {
        if (v54[1] == 2)
        {
          v30 = 0x6F7268636F6E6F6DLL;
          v31 = 0xEA0000000000656DLL;
        }

        else
        {
          v31 = 0xE700000000000000;
          v30 = 0x657474656C6170;
        }
      }

      else
      {
        v30 = 0x6863726172656968;
        v31 = 0xEC0000006C616369;
        if (v54[1])
        {
          v31 = 0xEA0000000000726FLL;
          v30 = 0x6C6F6369746C756DLL;
        }
      }

      if (v48 > 1)
      {
        if (v48 != 2)
        {
          v33 = 0xE700000000000000;
          if (v30 != 0x657474656C6170)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }

        v32 = 0x6F7268636F6E6F6DLL;
        v33 = 0xEA0000000000656DLL;
      }

      else
      {
        v32 = 0x6863726172656968;
        v33 = 0xEC0000006C616369;
        if (v48)
        {
          v33 = 0xEA0000000000726FLL;
          if (v30 != 0x6C6F6369746C756DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }
      }

      if (v30 != v32)
      {
        goto LABEL_58;
      }

LABEL_55:
      if (v31 == v33)
      {

        goto LABEL_59;
      }

LABEL_58:
      v34 = sub_252E37DB4();

      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_59:
      if (*&v54[16])
      {
        if (!v49 || *&v54[8] != __PAIR128__(v49, v44) && (sub_252E37DB4() & 1) == 0)
        {
LABEL_11:
          result = sub_252C76ADC(&v52);
          goto LABEL_12;
        }
      }

      else if (v49)
      {
        goto LABEL_11;
      }

      v35 = *&v54[24];
      if (*&v54[24])
      {
        if (!v45)
        {
          goto LABEL_11;
        }

        v36 = sub_252DA6B34(v35, v45);

        result = sub_252C76ADC(&v52);
        if (v36)
        {
          goto LABEL_68;
        }
      }

      else
      {
        result = sub_252C76ADC(&v52);
        if (!v45)
        {
LABEL_68:
          result = sub_252E37E14();
          __break(1u);
          break;
        }
      }

LABEL_12:
      a2 = (a2 + 1) & v51;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v37 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = (*(v37 + 48) + (a2 << 6));
  v39 = v47[1];
  *v38 = *v47;
  v38[1] = v39;
  v40 = v47[3];
  v38[2] = v47[2];
  v38[3] = v40;
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v43;
  }

  return result;
}

uint64_t sub_252DAFCCC(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252DACE50(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_252DB0FA0();
      goto LABEL_12;
    }

    sub_252DB370C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  memcpy(v23, __src, sizeof(v23));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v22);
  v12 = sub_252E37F14();
  v13 = -1 << *(v10 + 32);
  a2 = v12 & ~v13;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v10 + 48) + 504 * a2;
      memcpy(v22, v15, sizeof(v22));
      memcpy(v21, v15, sizeof(v21));
      sub_2529353AC(v22, v23);
      LOBYTE(v15) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v21, __dst);
      memcpy(v23, v21, sizeof(v23));
      sub_252935408(v23);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v16 + 48) + 504 * a2), __dst, 0x1F8uLL);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

void *sub_252DAFEB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  v2 = *v0;
  v3 = sub_252E37974();
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

void *sub_252DB000C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  v2 = *v0;
  v3 = sub_252E37974();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_252DB0164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  v2 = *v0;
  v3 = sub_252E37974();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_252DB02CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  v2 = *v0;
  v3 = sub_252E37974();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_25297DE08(v26, v25))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 152 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[5];
      v26[4] = v17[4];
      v26[5] = v20;
      v26[3] = v19;
      v21 = v17[6];
      v22 = v17[7];
      v23 = v17[8];
      v27 = *(v17 + 72);
      v26[7] = v22;
      v26[8] = v23;
      v26[6] = v21;
      v24 = v17[1];
      v26[0] = *v17;
      v26[1] = v24;
      v26[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x92uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_252DB047C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  v2 = *v0;
  v3 = sub_252E37974();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_252DB05BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
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

void *sub_252DB06EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  v7 = *v0;
  v8 = sub_252E37974();
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

void *sub_252DB092C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  v2 = *v0;
  v3 = sub_252E37974();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void *sub_252DB0A6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
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

void *sub_252DB0B9C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
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

void *sub_252DB0CDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  v2 = *v0;
  v3 = sub_252E37974();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_252C76A80(v27, &v26);
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

id sub_252DB0E60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_252E37974();
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

void *sub_252DB0FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  v2 = *v0;
  v3 = sub_252E37974();
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
        v17 = *(v2 + 48);
        v18 = 504 * (v14 | (v8 << 6));
        memcpy(__dst, (v17 + v18), sizeof(__dst));
        memmove((*(v4 + 48) + v18), (v17 + v18), 0x1F8uLL);
        result = sub_2529353AC(__dst, &v19);
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

uint64_t sub_252DB1128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E37984();
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
      sub_252E37EC4();

      sub_252E37044();
      result = sub_252E37F14();
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

uint64_t sub_252DB1360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = v5 + 56;
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
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);

      sub_252E36E94();
      MEMORY[0x2530AE390](*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v23 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      sub_252E37044();

      result = sub_252E37F14();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v10 + 8 * v9);
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_252DB162C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E37984();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v19)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
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

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_30;
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
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252DB1880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E48, &qword_252E60128);
  result = sub_252E37984();
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = v14 | (v7 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 8 * v17);
      v20 = *(v6 + 40);
      if (v19 != 0.0)
      {
        v21 = *(v18 + 8 * v17);
      }

      result = sub_252E37EB4();
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
      *(*(v6 + 48) + 8 * v13) = v19;
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

uint64_t sub_252DB1A80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v46 - v12;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E37984();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v54 = (v5 + 48);
    v50 = (v5 + 8);
    v51 = v13;
    v46 = v2;
    v47 = (v5 + 32);
    v23 = result + 56;
    v52 = v4;
    v24 = v53;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v55 = (v21 - 1) & v21;
LABEL_17:
      v29 = *(*(v13 + 48) + 8 * (v26 | (v17 << 6)));
      v30 = *(v16 + 40);
      sub_252E37EC4();
      sub_252956C1C(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v24);
      v31 = *v54;
      v32 = (*v54)(v24, 1, v4);

      if (v32 == 1)
      {
        sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v50)(v24, v4);
        sub_252E37EE4();
        sub_252E37044();
      }

      v33 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v33)
      {
        sub_252E37EE4();
        v34 = v49;
        sub_252956C1C(v33 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v49);
        v4 = v52;
        if (v31(v34, 1, v52) == 1)
        {
          sub_25293847C(v34, &qword_27F540298, &unk_252E3C270);
          v13 = v51;
          if (*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            v35 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

            HomeAutomationAbstractMeasurement.hash(into:)();
          }

          else
          {
            v38 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            sub_252E37EE4();
          }
        }

        else
        {
          v36 = v34;
          v37 = v48;
          (*v47)(v48, v36, v4);
          sub_252E36304();
          sub_252E37044();

          (*v50)(v37, v4);
          v13 = v51;
        }
      }

      else
      {
        sub_252E37EE4();
        v13 = v51;
        v4 = v52;
      }

      result = sub_252E37F14();
      v39 = -1 << *(v16 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      v24 = v53;
      if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v23 + 8 * v41);
          if (v45 != -1)
          {
            v25 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_40;
      }

      v25 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v16 + 48) + 8 * v25) = v29;
      ++*(v16 + 16);
      v21 = v55;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v46;
        goto LABEL_38;
      }

      v28 = *(v18 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v55 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

LABEL_38:
    *v2 = v16;
  }

  return result;
}

uint64_t sub_252DB1FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E37984();
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
      sub_252E37EC4();
      sub_252A9AD58(v17);
      sub_252E37044();

      result = sub_252E37F14();
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

unint64_t sub_252DB2200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
  result = sub_252E37984();
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
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = *(v3 + 48) + 152 * (v12 | (v7 << 6));
      v16 = *(v15 + 80);
      v18 = *(v15 + 32);
      v17 = *(v15 + 48);
      v43 = *(v15 + 64);
      v44 = v16;
      v41 = v18;
      v42 = v17;
      v19 = *(v15 + 96);
      v20 = *(v15 + 112);
      v21 = *(v15 + 128);
      v48 = *(v15 + 144);
      v46 = v20;
      v47 = v21;
      v45 = v19;
      v22 = *(v15 + 16);
      v39 = *v15;
      v40 = v22;
      v23 = *(v6 + 40);
      v24 = *(v15 + 112);
      v37[20] = *(v15 + 96);
      v37[21] = v24;
      v37[22] = *(v15 + 128);
      v38 = *(v15 + 144);
      v25 = *(v15 + 48);
      v37[16] = *(v15 + 32);
      v37[17] = v25;
      v26 = *(v15 + 80);
      v37[18] = *(v15 + 64);
      v37[19] = v26;
      v27 = *(v15 + 16);
      v37[14] = *v15;
      v37[15] = v27;
      sub_252E37EC4();
      sub_25297DE08(&v39, v37);
      sub_252A34930();
      sub_252E37F14();
      v28 = -1 << *(v6 + 32);
      result = sub_252E37854();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v29 = *(v6 + 48) + 152 * result;
      v30 = v40;
      *v29 = v39;
      *(v29 + 16) = v30;
      v31 = v44;
      v33 = v41;
      v32 = v42;
      *(v29 + 64) = v43;
      *(v29 + 80) = v31;
      *(v29 + 32) = v33;
      *(v29 + 48) = v32;
      v34 = v45;
      v35 = v46;
      v36 = v47;
      *(v29 + 144) = v48;
      *(v29 + 112) = v35;
      *(v29 + 128) = v36;
      *(v29 + 96) = v34;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_16;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_252DB2440(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
  result = sub_252E37984();
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_252E37EB4();
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

        goto LABEL_28;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_252DB2630(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v9 = result;
  if (*(v6 + 16))
  {
    v30 = v5;
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
      v22 = sub_252E37EC4();
      a4(v22);
      sub_252E37044();

      result = sub_252E37F14();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

        v5 = v30;
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

uint64_t sub_252DB2874(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  v10 = sub_252E37984();
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
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80);
      result = sub_252E36E84();
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

uint64_t sub_252DB2B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  result = sub_252E37984();
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_252E37EC4();
      HueSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
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
      *(*(v6 + 48) + 2 * v13) = v17;
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

uint64_t sub_252DB2DE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
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
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v19);
      result = sub_252E37F14();
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
      *(*(v8 + 48) + 8 * v15) = v19;
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

uint64_t sub_252DB3000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  result = sub_252E37984();
  v6 = result;
  if (*(v3 + 16))
  {
    v48 = v2;
    v7 = 0;
    v49 = v3 + 56;
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
    v50 = v11;
    v51 = result;
    v52 = v3;
    while (1)
    {
      if (!v10)
      {
        v19 = v7;
        while (1)
        {
          v7 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_49;
          }

          if (v7 >= v11)
          {

            v2 = v48;
            goto LABEL_47;
          }

          v20 = *(v49 + 8 * v7);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v53 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }
      }

      v18 = __clz(__rbit64(v10));
      v53 = (v10 - 1) & v10;
LABEL_17:
      v21 = (*(v3 + 48) + ((v18 | (v7 << 6)) << 6));
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v63 = v21[2];
      v64 = v24;
      v61 = v23;
      v62 = v22;
      v25 = *(v6 + 40);
      sub_252E37EC4();
      sub_252C76A80(&v61, v54);
      sub_252E37044();
      sub_252E37044();
      sub_252E37044();

      v26 = v64;
      sub_252E37044();

      sub_252E37EE4();
      if (v26)
      {
        sub_252E37044();
      }

      v3 = v52;
      v27 = *(&v64 + 1);
      if (*(&v64 + 1))
      {
        sub_252E37EE4();
        v28 = 1 << *(v27 + 32);
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v30 = v29 & *(v27 + 64);
        v31 = (v28 + 63) >> 6;

        v32 = 0;
        for (i = 0; v30; v32 ^= result)
        {
          v34 = i;
LABEL_29:
          v35 = __clz(__rbit64(v30)) | (v34 << 6);
          v36 = (*(v27 + 48) + 16 * v35);
          v37 = *v36;
          v38 = v36[1];
          v39 = *(*(v27 + 56) + 8 * v35);
          v30 &= v30 - 1;
          v54[2] = v58;
          v54[3] = v59;
          v55 = v60;
          v54[0] = v56;
          v54[1] = v57;

          sub_252E37044();

          if (v39 == 0.0)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v39;
          }

          MEMORY[0x2530AE3C0](*&v40);
          result = sub_252E37F14();
        }

        while (1)
        {
          v34 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v34 >= v31)
          {

            MEMORY[0x2530AE390](v32);
            v3 = v52;
            goto LABEL_36;
          }

          v30 = *(v27 + 64 + 8 * v34);
          ++i;
          if (v30)
          {
            i = v34;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      sub_252E37EE4();
LABEL_36:
      result = sub_252E37F14();
      v6 = v51;
      v41 = -1 << *(v51 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v12 + 8 * (v42 >> 6))) == 0)
      {
        break;
      }

      v13 = __clz(__rbit64((-1 << v42) & ~*(v12 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v51 + 48) + (v13 << 6));
      v15 = v61;
      v16 = v62;
      v17 = v64;
      v14[2] = v63;
      v14[3] = v17;
      *v14 = v15;
      v14[1] = v16;
      ++*(v51 + 16);
      v11 = v50;
      v10 = v53;
    }

    v44 = 0;
    v45 = (63 - v41) >> 6;
    while (++v43 != v45 || (v44 & 1) == 0)
    {
      v46 = v43 == v45;
      if (v43 == v45)
      {
        v43 = 0;
      }

      v44 |= v46;
      v47 = *(v12 + 8 * v43);
      if (v47 != -1)
      {
        v13 = __clz(__rbit64(~v47)) + (v43 << 6);
        goto LABEL_9;
      }
    }

LABEL_50:
    __break(1u);
  }

  else
  {

LABEL_47:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252DB3500(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
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
      result = sub_252E37684();
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

uint64_t sub_252DB370C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E37984();
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
      v17 = (*(v3 + 48) + 504 * (v14 | (v7 << 6)));
      memcpy(__src, v17, 0x1F8uLL);
      v18 = *(v6 + 40);
      memcpy(__dst, v17, sizeof(__dst));
      sub_252E37EC4();
      sub_2529353AC(__src, v27);
      HomeAutomationIntent.hash(into:)(v28);
      result = sub_252E37F14();
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
      result = memcpy((*(v6 + 48) + 504 * v13), __src, 0x1F8uLL);
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

uint64_t sub_252DB3974(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB39C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_252E359C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_252DB3A84(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2530ADDA0](result, a2, v8);
      a5(0);
      swift_dynamicCast();
      return v21;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (sub_252E378A4() == *(a4 + 36))
    {
      sub_252E378B4();
      a5(0);
      swift_dynamicCast();
      v9 = *(a4 + 40);
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0]);
      sub_252E36E94();
      v10 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      MEMORY[0x2530AE390](*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v11 = (v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v12 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v13 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      sub_252E37044();

      v14 = sub_252E37F14();
      v15 = -1 << *(a4 + 32);
      v7 = v14 & ~v15;
      if ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        v16 = ~v15;
        while (1)
        {
          v17 = *(*(a4 + 48) + 8 * v7);

          if ((sub_252E32E54() & 1) != 0 && *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v21 + v10))
          {
            if (*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v11 && *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v11[1])
            {
              goto LABEL_26;
            }

            v19 = sub_252E37DB4();

            if (v19)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          v7 = (v7 + 1) & v16;
          if (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:

    __break(1u);
    goto LABEL_34;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_26:

LABEL_27:
  }

  v20 = *(*(a4 + 48) + 8 * v7);
}

void *sub_252DB3DB4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB3E10(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_252DB3E60(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v120 - v9;
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = &v120 - v17;
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v19 = result;
  v121 = v8;
  v122 = v12;
  v20 = [result attribute];
  if (qword_27F53F2A8 != -1)
  {
    v118 = v20;
    swift_once();
    v20 = v118;
  }

  v21 = off_27F541CD8;
  if (!*(off_27F541CD8 + 2) || (v22 = sub_252A488EC(v20), (v23 & 1) == 0))
  {

    return 0;
  }

  LOBYTE(v124) = *(v21[7] + v22);
  AttributeSemantic.rawValue.getter();
  sub_252E362F4();
  (*(v122 + 32))(v123, v16, v11);
  v24 = &off_279711000;
  v25 = [v19 value];
  if (!v25)
  {
    goto LABEL_34;
  }

  if ((sub_2529C61E4() & 1) == 0 && (sub_2529C6784() & 1) == 0)
  {
    v41 = [a1 userTask];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 attribute];

      v44 = v43 == 67;
      v24 = &off_279711000;
      if (v44)
      {
        v45 = [a1 taskOutcome];
        v46 = sub_2529FC1F0(&unk_2864A1628);
        LOBYTE(v45) = sub_252DA05B4(v45, v46);
        v24 = &off_279711000;

        if (v45)
        {
          v47 = [a2 userTask];
          v48 = [v47 value];

          v49 = [v48 cleaningJob];
          v50 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
          v51 = *(v50 + 48);
          v52 = *(v50 + 52);
          v53 = swift_allocObject();
          (*(v122 + 56))(v53 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v11);
          *(v53 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
          *(v53 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
          v54 = [a1 taskOutcome];
          v120 = v49;
          v55 = sub_252BEE270(v54, v49);

          v56 = type metadata accessor for HomeAutomationEntityStateValue(0);
          v57 = *(v56 + 48);
          v58 = *(v56 + 52);
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          v59 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
          swift_beginAccess();
          sub_252956C1C(v55 + v59, v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
          *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v55 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
          LOBYTE(v59) = *(v55 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

          *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v59;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v60 = sub_252E36AD4();
          __swift_project_value_buffer(v60, qword_27F544D60);
          v124 = 0;
          v125 = 0xE000000000000000;
          sub_252E379F4();

          v124 = 0xD00000000000001BLL;
          v125 = 0x8000000252E9B890;
          sub_252956C1C(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v10);
          v61 = sub_252E36F94();
          MEMORY[0x2530AD570](v61);

          v62 = v124;
          v63 = v125;
LABEL_26:
          sub_252CC3D90(v62, v63, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_35:
          v38 = v122;
          goto LABEL_36;
        }
      }
    }

    v64 = [a1 userTask];
    if (v64)
    {
      v65 = v64;
      v66 = v24;
      v67 = [v64 attribute];

      v44 = v67 == 67;
      v24 = v66;
      if (v44)
      {
        v68 = [v19 v66 + 376];
        if (v68)
        {
          v69 = v68;
          v70 = [v68 cleaningJob];

          if (v70)
          {
            v71 = [a2 userTask];
            v72 = [v71 v24 + 376];

            v73 = [v72 cleaningJob];
            [v73 runState];

            v74 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
            v75 = *(v74 + 48);
            v76 = *(v74 + 52);
            v77 = swift_allocObject();
            (*(v122 + 56))(v77 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v11);
            *(v77 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
            *(v77 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
            v120 = v70;
            v78 = sub_252BEEB34(v70);

            v79 = type metadata accessor for HomeAutomationEntityStateValue(0);
            v80 = *(v79 + 48);
            v81 = *(v79 + 52);
            v36 = swift_allocObject();
            *(v36 + 16) = 0;
            v82 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
            swift_beginAccess();
            sub_252956C1C(v78 + v82, v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
            *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
            LOBYTE(v82) = *(v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

            *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v82;
            if (qword_27F53F4E8 != -1)
            {
              swift_once();
            }

            v83 = sub_252E36AD4();
            __swift_project_value_buffer(v83, qword_27F544D60);
            v124 = 0;
            v125 = 0xE000000000000000;
            sub_252E379F4();

            v124 = 0xD00000000000001BLL;
            v125 = 0x8000000252E9B870;
            sub_252956C1C(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v10);
            v84 = sub_252E36F94();
            MEMORY[0x2530AD570](v84);

            v62 = v124;
            v63 = v125;
            goto LABEL_26;
          }
        }
      }
    }

    v85 = [a1 userTask];
    if (v85 && (v86 = v85, v87 = sub_2529C6FFC(), v89 = v88, v86, (v89 & 1) == 0))
    {
      v91 = [a1 userTask];
      v92 = [v91 v24[206]];

      [v92 setUnit_];
      v90 = [a1 userTask];
      if (v90)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v90 = [a1 userTask];
      if (v90)
      {
LABEL_32:
        v93 = v90;
        v94 = [v90 v24[206]];

        v38 = v122;
        if (v94)
        {
          v36 = sub_252D0842C();
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_36;
      }
    }

LABEL_34:
    v36 = 0;
    goto LABEL_35;
  }

  v26 = sub_2529C61E4();
  v27 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v32 = v122;
  (*(v122 + 56))(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v11);
  v33 = type metadata accessor for HomeAutomationEntityStateValue(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  swift_beginAccess();
  v37 = v30 + v31;
  v38 = v32;
  sub_252956C1C(v37, v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
  swift_setDeallocating();
  sub_25293847C(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, &qword_27F540298, &unk_252E3C270);
  v39 = *(*v30 + 48);
  v40 = *(*v30 + 52);
  swift_deallocClassInstance();
  *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = (v26 & 1) != 0;
LABEL_36:
  v95 = type metadata accessor for HomeAutomationEntityState.Builder(0);
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  v98 = swift_allocObject();
  v99 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
  v100 = v38;
  v101 = *(v38 + 56);
  v101(v98 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v11);
  v102 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
  v101(v98 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v11);
  (*(v100 + 16))(v10, v123, v11);
  v101(v10, 0, 1, v11);
  swift_beginAccess();
  sub_252956BAC(v10, v98 + v99);
  swift_endAccess();
  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);

  v103 = [v19 taskType];
  if (qword_27F53F298 != -1)
  {
    v119 = v103;
    swift_once();
    v103 = v119;
  }

  v104 = off_27F541CC8;
  if (*(off_27F541CC8 + 2) && (v105 = sub_252A488EC(v103), (v106 & 1) != 0))
  {
    v107 = (v104[7] + 16 * v105);
    v108 = *v107;
    v109 = v107[1];

    sub_252E37024();

    (*(v122 + 8))(v123, v11);
    v110 = 0;
  }

  else
  {
    (*(v122 + 8))(v123, v11);

    v110 = 1;
  }

  v111 = v121;
  v101(v121, v110, 1, v11);
  swift_beginAccess();
  sub_252956BAC(v111, v98 + v102);
  swift_endAccess();
  sub_25293847C(v111, &qword_27F540298, &unk_252E3C270);
  v112 = type metadata accessor for HomeAutomationEntityState(0);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  sub_252956C1C(v98 + v99, v115 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
  *(v115 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v36;
  sub_252956C1C(v98 + v102, v115 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType);
  swift_setDeallocating();
  sub_25293847C(v98 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

  sub_25293847C(v98 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
  v116 = *(*v98 + 48);
  v117 = *(*v98 + 52);
  swift_deallocClassInstance();
  return v115;
}

uint64_t sub_252DB4BA0(unint64_t a1)
{
  v24 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 entity];
        v11 = sub_252A44C9C(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_252DFEB3C(v14, 1);
          v4 = v24;
          v16 = sub_252A44C9C(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D50, &qword_252E3E868);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x2530AD700]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_252E3C130;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252DB4E10(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB4E64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB4EB4()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252DB4F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252DB4FB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WaterSystemRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252DB4FEC(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v8 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v9 = sub_252E36F04();
    v10 = [v8 initWithIdentifier:0 displayString:v9];

    v11 = v10;
    [v11 setBoolValue_];
    [v11 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v12 = sub_252D6CC80(v11);
    swift_beginAccess();
    v13 = v7[4];
    v7[4] = v12;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v14, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_252E379F4();
  v30 = v27;
  v31 = v28;
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E9B9D0);
  if (v7)
  {
    swift_beginAccess();
    v15 = v7[4];
  }

  else
  {
    v16 = 0;
  }

  v29 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(v30, v31, 0xD000000000000092, 0x8000000252E9B930);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v18 = sub_252D6CB58();
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 filters];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for HomeFilter();
    v21 = sub_252E37264();
  }

  else
  {
    v21 = 0;
  }

  v22 = [a1 time];
  v23 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v23 setUserTask_];
  if (v21)
  {
    type metadata accessor for HomeFilter();
    v24 = sub_252E37254();
  }

  else
  {
    v24 = 0;
  }

  [v23 setFilters_];

  [v23 setTime_];

  return v23;
}

id sub_252DB5424(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_8:
    sub_252C515AC();
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 27)
  {
    v8 = [a1 userTask];
    if (!v8)
    {
      return sub_252DB4FEC(a1);
    }

    v9 = v8;
    v10 = [v8 value];

    if (!v10)
    {
      return sub_252DB4FEC(a1);
    }
  }

LABEL_9:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E8B110, 0xD000000000000092, 0x8000000252E9B930);
  return a1;
}

id sub_252DB559C()
{
  [v0 setCommandOutcome_];
  result = [v0 homeAutomationRequests];
  if (result)
  {
    v2 = result;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_24:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ([v6 homeAutomationRequestOutcome] == 2)
      {

LABEL_19:

        return [v0 setCommandOutcome_];
      }

      v8 = [v7 homeAutomationRequestOutcome];

      ++v5;
      if (v8 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

dispatch_semaphore_t sub_252DB575C()
{
  result = dispatch_semaphore_create(1);
  qword_27F575C60 = result;
  return result;
}

uint64_t sub_252DB5780()
{
  v1 = v0;
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32DF4();
  sub_252E32D44();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = v8 * 1000.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < 9.22337204e18)
  {
    v6 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v6 = sub_2529F7BA0(0, *(v6 + 2) + 1, 1, v6);
  *(v1 + 24) = v6;
LABEL_5:
  v12 = *(v6 + 2);
  v11 = *(v6 + 3);
  if (v12 >= v11 >> 1)
  {
    v6 = sub_2529F7BA0((v11 > 1), v12 + 1, 1, v6);
  }

  result = v9;
  *(v6 + 2) = v12 + 1;
  *&v6[8 * v12 + 32] = v9;
  *(v1 + 24) = v6;
  return result;
}

uint64_t sub_252DB5924()
{
  sub_252DB5780();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2 && (v3 = *(v1 + 8 * v2 + 24), v3 > 0) && (v4 = *(v0 + 16), v4 >= 1))
  {
    v5 = (v3 - v4) & ~((v3 - v4) >> 63);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;

  return v5;
}

void *sub_252DB5990()
{
  v1 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];
  type metadata accessor for MetricsService.StopWatch();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  v0[5] = v2;
  v3 = type metadata accessor for SiriKitEvent.HomeAutomationBuilder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v8 = *MEMORY[0x277D5BB10];
  v9 = sub_252E339A4();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  v10 = v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType;
  strcpy((v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType), "INCurrentTask");
  *(v10 + 14) = -4864;
  v11 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
  *v11 = 0;
  v11[1] = 0;
  *(v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app) = 0;
  v12 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute);
  *v12 = 0;
  v12[1] = 0;
  *(v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = 0;
  v13 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  v14 = sub_252E33744();
  (*(*(v14 - 8) + 56))(v6 + v13, 1, 1, v14);
  v15 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription);
  *v15 = 0;
  v15[1] = 0;
  v0[2] = v6;
  _s7BuilderCMa_0();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v0[3] = v16;
  return v0;
}

uint64_t sub_252DB5B44()
{
  v1 = *(v0 + 24);
  type metadata accessor for HomeStore();

  v2 = static HomeStore.shared.getter();
  v3 = sub_2529D8DC0();

  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v5 = sub_252C78058(v4, 0);

  v6 = static HomeStore.shared.getter();
  v7 = sub_2529D9D50();

  v49 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v47 = v5;
    v10 = 0;
    v11 = *MEMORY[0x277CCE8B0];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v10, v7);
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v23 = v49;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v4 = sub_252E378C4();
          goto LABEL_3;
        }

        v13 = *(v7 + 8 * v10 + 32);

        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_21;
        }
      }

      v15 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
      v16 = [v15 categoryType];

      v17 = sub_252E36F34();
      v19 = v18;

      if (v17 == sub_252E36F34() && v19 == v20)
      {
      }

      else
      {
        v22 = sub_252E37DB4();

        if ((v22 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      sub_252E37A94();
      v12 = *(v49 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_9:
      ++v10;
      if (v14 == v8)
      {
        goto LABEL_22;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_252E378C4();
  }

  else
  {
    v24 = *(v23 + 16);
  }

  v25 = sub_252C781CC(v24, 0);

  v26 = static HomeStore.shared.getter();
  v27 = sub_2529D9D50();

  v50 = v9;
  if (v27 >> 62)
  {
    v28 = sub_252E378C4();
    if (v28)
    {
      goto LABEL_29;
    }

LABEL_51:
    v42 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_51;
  }

LABEL_29:
  v48 = v25;
  v29 = 0;
  v30 = *MEMORY[0x277CCE870];
  while ((v27 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x2530ADF00](v29, v27);
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_44;
    }

LABEL_36:
    v34 = [*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
    v35 = [v34 categoryType];

    v36 = sub_252E36F34();
    v38 = v37;

    if (v36 == sub_252E36F34() && v38 == v39)
    {
    }

    else
    {
      v41 = sub_252E37DB4();

      if ((v41 & 1) == 0)
      {

        goto LABEL_32;
      }
    }

    sub_252E37A94();
    v31 = *(v50 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_32:
    ++v29;
    if (v33 == v28)
    {
      goto LABEL_45;
    }
  }

  if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  v32 = *(v27 + 8 * v29 + 32);

  v33 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_36;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v42 = v50;
LABEL_52:

  if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
  {
    v43 = sub_252E378C4();
  }

  else
  {
    v43 = *(v42 + 16);
  }

  sub_252C7833C(v43, 0);

  v44 = static HomeStore.shared.getter();
  v45 = sub_2529D9114();

  if (v45)
  {
  }

  sub_252C784AC(v45 != 0);
}

void *sub_252DB6088()
{
  result = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    memcpy(__dst, v2 + 11, sizeof(__dst));
    v3 = __dst[63];
    sub_252938414(__dst, v28, &qword_27F545B08, &qword_252E5E730);
    [v3 lock];
    sub_252938414(__dst, v28, &qword_27F5404C8, &unk_252E3FD60);
    [v3 unlock];
    sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
    memcpy(v30, __dst, 0x1F8uLL);
    v4 = sub_252956B94(v30);
    if (v4 != 1)
    {
      sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
    }

    swift_beginAccess();
    v5 = *(v0 + 32);
    if (v5 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v26 = v5 & 0xC000000000000001;
      v23 = v5 & 0xFFFFFFFFFFFFFF8;
      v22 = v5 + 32;

      v7 = 0;
      v24 = i;
      v25 = v5;
      while (1)
      {
        if (v26)
        {
          v9 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *(v23 + 16))
          {
            goto LABEL_36;
          }

          v9 = *(v22 + 8 * v7);
        }

        v8 = v9;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        v11 = [v9 homeAutomationRequests];
        if (!v11)
        {
          goto LABEL_8;
        }

        v12 = v11;
        v27 = v8;
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v5 = sub_252E37264();

        if (!(v5 >> 62))
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            break;
          }

          goto LABEL_7;
        }

        v13 = sub_252E378C4();
        if (v13)
        {
          break;
        }

LABEL_7:

        i = v24;
        v5 = v25;
        v8 = v27;
LABEL_8:

        if (v7 == i)
        {
        }
      }

      if (v13 >= 1)
      {
        v14 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x2530ADF00](v14, v5);
          }

          else
          {
            v16 = *(v5 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = [v16 homeAutomationRequestMetadata];
          if (v18)
          {
            v15 = v18;
            [v18 setIsIntentSelectionCacheHit_];
          }

          else
          {
            v19 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
            if (!v19)
            {
              if (qword_27F53F530 != -1)
              {
                swift_once();
              }

              v21 = sub_252E36AD4();
              __swift_project_value_buffer(v21, qword_27F544E38);
              sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E960, 486);
              goto LABEL_21;
            }

            v20 = v19;
            [v19 setIsIntentSelectionCacheHit_];
            v15 = v20;
            [v17 setHomeAutomationRequestMetadata_];
          }

LABEL_21:
          ++v14;

          if (v13 == v14)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t sub_252DB649C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v86 = a1;
  v7 = sub_252E339A4();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E78, &qword_252E601E8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v81 - v22;
  if (a3)
  {
    sub_252DB5B44();
    sub_252DB6088();
  }

  swift_beginAccess();
  v24 = v4[4];
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v78 = v4[4];
    }

    v25 = sub_252E378C4();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Metrics/SELF/MetricsService.swift";
  v81 = v12;
  v84 = v17;
  if (!v25)
  {
    if (qword_27F53F530 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  v27 = v4[3];
  v26 = v4[4];
  if ((v26 & 0xC000000000000001) != 0)
  {
    v79 = v4[3];

    v30 = MEMORY[0x2530ADF00](0, v26);

    goto LABEL_9;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 32);
    v29 = v4[3];

    v30 = v28;
LABEL_9:
    v31 = *(v27 + 24);
    *(v27 + 24) = v30;

    v32 = v4[4];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v80 = v4[4];

      v33 = MEMORY[0x2530ADF00](0, v32);

LABEL_12:
      v34 = [v33 commandOutcome];

      v35 = v4[2];
      v36 = sub_252E33744();
      v37 = *(v36 - 8);
      v38 = (v37 + 56);
      if (v34 == 1)
      {
        v39 = MEMORY[0x277D5B950];
      }

      else
      {
        v39 = MEMORY[0x277D5B910];
      }

      (*(v37 + 104))(v23, *v39, v36);
      (*v38)(v23, 0, 1, v36);

      sub_252A42278(v23);

      sub_25293847C(v23, &qword_27F541C78, &unk_252E42170);
      v41 = a2;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v32 + 32);
      goto LABEL_12;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_15:
  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544E38);
  sub_252CC4050(0xD00000000000006ALL, 0x8000000252E9BE40, 0xD000000000000071, (v26 - 32) | 0x8000000000000000, 0xD000000000000033, 0x8000000252E9BD80, 149);
  v41 = a2;
  if (a2)
  {
    goto LABEL_22;
  }

LABEL_19:
  v42 = *(sub_252B680FC() + 136);

  if (!v42 || (v86 = sub_252E33694(), v41 = v43, , !v41))
  {
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F24();

    v86 = sub_252E33694();
    v41 = v44;
  }

LABEL_22:
  v82 = v7;
  v83 = v23;
  v45 = qword_27F53F530;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544E38);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_252E379F4();

  v88 = 0xD000000000000023;
  v89 = 0x8000000252E9BCD0;
  v47 = v86;
  v91 = v86;
  v92 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v48 = sub_252E36F94();
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(v88, v89, 0xD000000000000071, 0x8000000252E9BB90);

  v49 = v4[2];

  v50 = sub_252A4246C(v47, v41);

  v51 = *(v4[3] + 24);
  v52 = v84;
  v53 = v87;
  if (v51)
  {
    v54 = [v51 commandType];
    v55 = 0xD000000000000014;
    if (v54 > 2)
    {
      if (v54 != 3)
      {
        if (v54 == 4)
        {
          v56 = "AdditionalMetrics:)";
          v55 = 0xD000000000000010;
          goto LABEL_36;
        }

LABEL_32:
        v56 = "event with taskId: ";
        v55 = 0xD000000000000016;
        goto LABEL_36;
      }

      v57 = "INDiscoverHomeIntent";
    }

    else
    {
      if (v54 != 1)
      {
        if (v54 == 2)
        {
          v56 = "INDiscoverHomeIntent";
          v55 = 0xD000000000000013;
LABEL_36:
          v58 = (v50 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType);
          v59 = *(v50 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType + 8);
          *v58 = v55;
          v58[1] = v56 | 0x8000000000000000;

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v57 = "INAutomateHomeIntent";
    }

    v56 = (v57 - 32);
    goto LABEL_36;
  }

LABEL_37:
  v60 = v82;
  (*(v53 + 104))(v19, *MEMORY[0x277D5BB90], v82);
  (*(v53 + 56))(v19, 0, 1, v60);
  sub_252DB8BC8(v19, v52);
  if ((*(v53 + 48))(v52, 1, v60) == 1)
  {

    sub_25293847C(v52, &qword_27F545E78, &qword_252E601E8);
  }

  else
  {
    v61 = v81;
    (*(v53 + 32))(v81, v52, v60);
    v62 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
    swift_beginAccess();
    (*(v53 + 40))(v50 + v62, v61, v60);
    swift_endAccess();
  }

  v63 = v83;
  v64 = v4[3];

  v65 = sub_252C785FC();

  if (v65)
  {
    v66 = v4[2];
    v67 = objc_allocWithZone(MEMORY[0x277D57520]);
    v68 = v65;

    v69 = [v67 init];
    v70 = *(v66 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext);
    *(v66 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = v69;
    v71 = v69;

    [v71 setHomeAutomationContext_];
  }

  else
  {
    sub_252CC4050(0xD00000000000005CLL, 0x8000000252E9BD20, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000033, 0x8000000252E9BD80, 165);
  }

  v72 = v4[2];
  sub_252E33804();
  v73 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  swift_beginAccess();
  (*(v87 + 16))(v85, v72 + v73, v60);
  v74 = *(v72 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType);
  v75 = *(v72 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType + 8);
  v76 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  swift_beginAccess();
  sub_252938414(v72 + v76, v63, &qword_27F541C78, &unk_252E42170);

  sub_252E337E4();
  sub_252CC3D90(0x20676E69646E6553, 0xEF7363697274656DLL, 0xD000000000000071, 0x8000000252E9BB90);
  sub_252E336C4();
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  sub_252E336D4();
  __swift_destroy_boxed_opaque_existential_1(&v88);
  sub_252DB6EE4();
}

uint64_t sub_252DB6EE4()
{
  v1 = v0;
  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E38);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E9BCB0, 0xD000000000000071, 0x8000000252E9BB90);
  v3 = type metadata accessor for SiriKitEvent.HomeAutomationBuilder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v8 = *MEMORY[0x277D5BB10];
  v9 = sub_252E339A4();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  v10 = v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType;
  strcpy((v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType), "INCurrentTask");
  *(v10 + 14) = -4864;
  v11 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
  *v11 = 0;
  v11[1] = 0;
  *(v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app) = 0;
  v12 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute);
  *v12 = 0;
  v12[1] = 0;
  *(v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = 0;
  v13 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  v14 = sub_252E33744();
  (*(*(v14 - 8) + 56))(v6 + v13, 1, 1, v14);
  v15 = (v6 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription);
  *v15 = 0;
  v15[1] = 0;
  v16 = v1[2];
  v1[2] = v6;

  swift_beginAccess();
  v17 = v1[4];
  v1[4] = MEMORY[0x277D84F90];

  _s7BuilderCMa_0();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = v1[3];
  v1[3] = v18;
}

void sub_252DB7138(void *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_beginAccess();
    v4 = a1;
    MEMORY[0x2530AD700]();
    if (*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E38);
    sub_252CC4050(0xD000000000000022, 0x8000000252E9BC60, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000011, 0x8000000252E9BC90, 191);
  }
}

void *sub_252DB7280(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_252E32E84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 clientContext];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 metricIdentifier];

    sub_252E36F34();
    sub_252E32E14();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_25293847C(v6, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v15 = swift_beginAccess();
      v16 = *(v1 + 32);
      MEMORY[0x28223BE20](v15);
      *(&v20 - 2) = v11;

      v17 = sub_2529A1AB0(sub_252DB8B88, (&v20 - 4), v16);

      (*(v8 + 8))(v11, v7);
      result = v17;
      if (v17)
      {
        return result;
      }
    }
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544E38);
  sub_252CC4050(0xD000000000000025, 0x8000000252E9BC30, 0xD000000000000071, 0x8000000252E9BB90, 0x28646E616D6D6F63, 0xEE00293A68746977, 224);
  return 0;
}

uint64_t sub_252DB7594(id *a1, uint64_t a2)
{
  v3 = [*a1 homeAutomationRequests];
  if (v3)
  {
    v4 = v3;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v5 = sub_252E37264();

    MEMORY[0x28223BE20](v6);
    v9[2] = a2;
    v7 = sub_252A00B74(sub_252DB8BA8, v9, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_252DB767C(id *a1)
{
  v1 = [*a1 homeAutomationRequestId];
  v2 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v3 = sub_252E32E44();
  v4 = [v2 initWithNSUUID_];

  if (v1)
  {
    if (v4)
    {
      sub_25293F638(0, &qword_27F543150, 0x277D5AC78);
      v5 = sub_252E37694();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
    v1 = v4;
  }

  return v5 & 1;
}

uint64_t sub_252DB775C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

id sub_252DB77AC(void *a1)
{
  v1 = a1;
  FLOWSchemaFLOWHomeAutomationCommand.description.getter();

  v2 = sub_252E36F04();

  return v2;
}

uint64_t FLOWSchemaFLOWHomeAutomationCommand.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  [v0 hash];
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E9BA10);
  v3 = [v0 commandId];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E68, &qword_252E60170);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0x7974202020200A2CLL, 0xEC000000203A6570);
  [v0 commandType];
  v5 = sub_252E37644();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9BA30);
  [v0 commandDuration];
  v6 = sub_252E37D94();
  MEMORY[0x2530AD570](v6);

  MEMORY[0x2530AD570](0x756F202020200A2CLL, 0xEF203A656D6F6374);
  [v0 commandOutcome];
  v7 = sub_252E37634();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9BA50);
  [v0 commandErrorReason];
  v8 = sub_252E37654();
  MEMORY[0x2530AD570](v8);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9BA70);
  v9 = [v0 homeAutomationRequests];
  if (v9)
  {
    v10 = v9;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E70, &qword_252E60178);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_252DB7B98()
{
  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E38);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E9BC10, 0xD000000000000071, 0x8000000252E9BB90);
  if (qword_27F53F750 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F545E60 = 0;

  return sub_252E37614();
}

void *sub_252DB7C84()
{
  sub_252D806C0();
  sub_252D7ED58(0x537363697274654DLL, 0xEE00656369767265, sub_252DB7B98, 0, 15);

  if (qword_27F53F750 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v0 = qword_27F545E60;
  if (qword_27F545E60)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E9BB70, 0xD000000000000071, 0x8000000252E9BB90);
    type metadata accessor for MetricsService();
    swift_allocObject();
    v0 = sub_252DB5990();
    qword_27F545E60 = v0;
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252DB7E0C(char *a1)
{
  v1 = a1;
  v2 = [a1 runState];
  if (v2 != 2)
  {
    v89 = 1598248530;
    v90 = 0xE400000000000000;
    v15 = HomeAttributeStateType.description.getter(v2);
    goto LABEL_120;
  }

  v92 = 0;
  v93 = 0xE000000000000000;
  if (qword_27F53F920 != -1)
  {
    goto LABEL_125;
  }

  while (1)
  {

    v4 = sub_252C7486C(v3);
    v88 = v1;
    v5 = [v1 cleanModes];
    v6 = sub_252E37264();

    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = (v6 + 32);
      v10 = MEMORY[0x277D84F90];
      do
      {
        v12 = *v9++;
        v11 = v12;
        if (v12 <= 0xF)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2529F7F9C(0, *(v10 + 2) + 1, 1, v10);
          }

          v14 = *(v10 + 2);
          v13 = *(v10 + 3);
          if (v14 >= v13 >> 1)
          {
            v10 = sub_2529F7F9C((v13 > 1), v14 + 1, 1, v10);
          }

          *(v10 + 2) = v14 + 1;
          *&v10[8 * v14 + 32] = v11;
        }

        --v7;
      }

      while (v7);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v1 = *(v10 + 2);
    if (v1)
    {
      v17 = 0;
      v18 = v4 + 56;
      v19 = MEMORY[0x277D84F90];
      do
      {
        if (v17 >= *(v10 + 2))
        {
          __break(1u);
          goto LABEL_122;
        }

        v22 = *&v10[8 * v17 + 32];
        if (*(v4 + 16) && (v23 = *(v4 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](v22), v24 = sub_252E37F14(), v25 = -1 << *(v4 + 32), v26 = v24 & ~v25, ((*(v18 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (*(*(v4 + 48) + 8 * v26) != v22)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v18 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA460(0, *(v19 + 16) + 1, 1);
            v19 = v91;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_2529AA460((v20 > 1), v21 + 1, 1);
            v19 = v91;
          }

          *(v19 + 16) = v21 + 1;
          *(v19 + 8 * v21 + 32) = v22;
        }

        ++v17;
      }

      while (v17 != v1);

      v8 = MEMORY[0x277D84F90];
      v29 = *(v19 + 16);
      if (!v29)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      v29 = *(MEMORY[0x277D84F90] + 16);
      if (!v29)
      {
LABEL_52:

        v31 = MEMORY[0x277D84F90];
        goto LABEL_53;
      }
    }

    v89 = v8;
    sub_2529AA3A0(0, v29, 0);
    v30 = 0;
    v31 = v89;
LABEL_30:
    if (v30 < *(v19 + 16))
    {
      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
  }

  v32 = *(v19 + 8 * v30 + 32);
  v1 = 0xE400000000000000;
  v33 = 1869903201;
  switch(v32)
  {
    case 0:
      v1 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
      goto LABEL_47;
    case 1:
      v1 = 0xE600000000000000;
      v33 = 0x6D7575636176;
      goto LABEL_47;
    case 2:
      v1 = 0xE300000000000000;
      v33 = 7368557;
      goto LABEL_47;
    case 3:
      v1 = 0xE800000000000000;
      v33 = 0x6E6F697461636176;
      goto LABEL_47;
    case 4:
      v33 = 0x61656C4370656564;
      v1 = 0xE90000000000006ELL;
      goto LABEL_47;
    case 5:
      goto LABEL_47;
    case 6:
      v1 = 0xE500000000000000;
      v33 = 0x6B63697571;
      goto LABEL_47;
    case 7:
      v1 = 0xE500000000000000;
      v33 = 0x7465697571;
      goto LABEL_47;
    case 8:
      v1 = 0xE300000000000000;
      v33 = 7889261;
      goto LABEL_47;
    case 9:
      v33 = 1701736302;
      goto LABEL_47;
    case 10:
      v1 = 0xE900000000000079;
      v33 = 0x6772656E45776F6CLL;
      goto LABEL_47;
    case 11:
      v1 = 0xE500000000000000;
      v33 = 0x746867696ELL;
      goto LABEL_47;
    case 12:
      v1 = 0xE300000000000000;
      v33 = 7954788;
      goto LABEL_47;
    case 13:
      v1 = 0xE300000000000000;
      v33 = 7235949;
      goto LABEL_47;
    case 14:
      v1 = 0xE500000000000000;
      v33 = 0x7465736E75;
      goto LABEL_47;
    case 15:
      v1 = 0xE800000000000000;
      v33 = 0x6573696F4E776F6CLL;
LABEL_47:
      v89 = v31;
      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_2529AA3A0((v34 > 1), v35 + 1, 1);
        v31 = v89;
      }

      ++v30;
      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v33;
      *(v36 + 5) = v1;
      if (v29 != v30)
      {
        goto LABEL_30;
      }

      break;
    default:
LABEL_128:
      v91 = v32;
      sub_252E37DF4();
      __break(1u);

      __break(1u);
      return result;
  }

LABEL_53:
  v89 = v31;

  sub_252AC841C(&v89);
  v87 = 0;

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v85 = sub_2529508A0();
  v86 = v37;
  v38 = sub_252E36EA4();
  v40 = v39;

  MEMORY[0x2530AD570](v38, v40);

  v41 = [v88 cleanModes];
  v42 = sub_252E37264();

  v1 = *(v42 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v1)
  {
    v44 = (v42 + 32);
    do
    {
      v46 = *v44++;
      v45 = v46;
      if (v46 <= 0xF)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F7F9C(0, *(v43 + 2) + 1, 1, v43);
        }

        v48 = *(v43 + 2);
        v47 = *(v43 + 3);
        if (v48 >= v47 >> 1)
        {
          v43 = sub_2529F7F9C((v47 > 1), v48 + 1, 1, v43);
        }

        *(v43 + 2) = v48 + 1;
        *&v43[8 * v48 + 32] = v45;
      }

      --v1;
    }

    while (v1);
  }

  v49 = *(v43 + 2);
  if (v49)
  {
    v50 = 0;
    v51 = v43 + 32;
    v1 = (v4 + 56);
    v52 = MEMORY[0x277D84F90];
    while (v50 < *(v43 + 2))
    {
      if (*(v4 + 16))
      {
        v55 = *&v51[8 * v50];
        v56 = *(v4 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v55);
        v57 = sub_252E37F14();
        v58 = -1 << *(v4 + 32);
        v59 = v57 & ~v58;
        if ((*&v1[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59))
        {
          v60 = ~v58;
          while (*(*(v4 + 48) + 8 * v59) != v55)
          {
            v59 = (v59 + 1) & v60;
            if (((*&v1[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v52;
          if ((v61 & 1) == 0)
          {
            sub_2529AA460(0, *(v52 + 16) + 1, 1);
            v52 = v91;
          }

          v54 = *(v52 + 16);
          v53 = *(v52 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2529AA460((v53 > 1), v54 + 1, 1);
            v52 = v91;
          }

          *(v52 + 16) = v54 + 1;
          *(v52 + 8 * v54 + 32) = v55;
          v51 = v43 + 32;
        }
      }

LABEL_67:
      if (++v50 == v49)
      {

        goto LABEL_79;
      }
    }

    goto LABEL_123;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_79:
  v62 = *(v52 + 16);
  if (v62)
  {
    v89 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v62, 0);
    v63 = 0;
    v64 = v89;
    while (v63 < *(v52 + 16))
    {
      v32 = *(v52 + 8 * v63 + 32);
      v1 = 0xE400000000000000;
      v65 = 1869903201;
      switch(v32)
      {
        case 0:
          v1 = 0xE700000000000000;
          v65 = 0x6E776F6E6B6E75;
          break;
        case 1:
          v1 = 0xE600000000000000;
          v65 = 0x6D7575636176;
          break;
        case 2:
          v1 = 0xE300000000000000;
          v65 = 7368557;
          break;
        case 3:
          v1 = 0xE800000000000000;
          v65 = 0x6E6F697461636176;
          break;
        case 4:
          v65 = 0x61656C4370656564;
          v1 = 0xE90000000000006ELL;
          break;
        case 5:
          break;
        case 6:
          v1 = 0xE500000000000000;
          v65 = 0x6B63697571;
          break;
        case 7:
          v1 = 0xE500000000000000;
          v65 = 0x7465697571;
          break;
        case 8:
          v1 = 0xE300000000000000;
          v65 = 7889261;
          break;
        case 9:
          v65 = 1701736302;
          break;
        case 10:
          v1 = 0xE900000000000079;
          v65 = 0x6772656E45776F6CLL;
          break;
        case 11:
          v1 = 0xE500000000000000;
          v65 = 0x746867696ELL;
          break;
        case 12:
          v1 = 0xE300000000000000;
          v65 = 7954788;
          break;
        case 13:
          v1 = 0xE300000000000000;
          v65 = 7235949;
          break;
        case 14:
          v1 = 0xE500000000000000;
          v65 = 0x7465736E75;
          break;
        case 15:
          v1 = 0xE800000000000000;
          v65 = 0x6573696F4E776F6CLL;
          break;
        default:
          goto LABEL_128;
      }

      v89 = v64;
      v67 = *(v64 + 2);
      v66 = *(v64 + 3);
      if (v67 >= v66 >> 1)
      {
        sub_2529AA3A0((v66 > 1), v67 + 1, 1);
        v64 = v89;
      }

      ++v63;
      *(v64 + 2) = v67 + 1;
      v68 = &v64[16 * v67];
      *(v68 + 4) = v65;
      *(v68 + 5) = v1;
      if (v62 == v63)
      {

        goto LABEL_103;
      }
    }

    goto LABEL_124;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_103:
  v89 = v64;

  sub_252AC841C(&v89);

  v69 = v89;
  if (*(v89 + 16))
  {
    v89 = 58;
    v90 = 0xE100000000000000;
    v91 = v69;
    v70 = sub_252E36EA4();
    v72 = v71;

    MEMORY[0x2530AD570](v70, v72);

    MEMORY[0x2530AD570](v89, v90);
  }

  else
  {
  }

  v73 = [v88 targetMap];
  if (v73)
  {

    MEMORY[0x2530AD570](1885433183, 0xE400000000000000);
  }

  v74 = [v88 targetAreas];
  if (v74)
  {
    v75 = v74;
    type metadata accessor for HomeAttributeTargetArea();
    v76 = sub_252E37264();

    v77 = v76 >> 62 ? sub_252E378C4() : *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v77)
    {
      v78 = [v88 targetAreas];
      if (v78)
      {
        v79 = v78;
        v80 = sub_252E37264();

        if (v80 >> 62)
        {
          v81 = sub_252E378C4();
        }

        else
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v81 < 2)
        {
          v82 = 0x616572615FLL;
          v83 = 0xE500000000000000;
        }

        else
        {
          v82 = 0x73616572615FLL;
          v83 = 0xE600000000000000;
        }

        MEMORY[0x2530AD570](v82, v83);
      }
    }
  }

  v89 = 1598248530;
  v90 = 0xE400000000000000;
  v15 = v92;
  v16 = v93;
LABEL_120:
  MEMORY[0x2530AD570](v15, v16);

  return v89;
}

uint64_t sub_252DB8BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E78, &qword_252E601E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252DB8C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_252E32E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    sub_252E32E14();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v17 = sub_252E32E44();
      v18 = [v16 initWithNSUUID_];

      [v12 setCommandId_];
      [v12 setCommandType_];
      (*(v7 + 8))(v10, v6);
      return v12;
    }

    sub_25293847C(v5, &unk_27F541F20, &qword_252E3C180);
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544E38);
  sub_252CC4050(0xD000000000000033, 0x8000000252E747E0, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000019, 0x8000000252E9BEB0, 240);
  return 0;
}

id sub_252DB8EE4(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v11 = sub_252D6CA80(v10);
    v12 = *(v2 + 16);
    v13 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v14 = sub_252E36F04();
    v15 = [v13 initWithIdentifier:0 displayString:v14];

    v16 = v15;
    [v16 setDoubleValue_];
    [v16 setUnit_];
    [v16 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v17 = sub_252D6CC80(v16);
    swift_beginAccess();
    v18 = v11[4];
    v11[4] = v17;
  }

  else
  {
    v11 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_27F544DA8);
  (*(v5 + 16))(v8, v19, v4);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E379F4();
  v33 = v30;
  v34 = v31;
  MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E9BF30);
  if (v11)
  {
    swift_beginAccess();
    v20 = v11[4];
  }

  else
  {
    v21 = 0;
  }

  v32 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v22 = sub_252E36F94();
  MEMORY[0x2530AD570](v22);

  sub_252CC3D90(v33, v34, 0xD000000000000092, 0x8000000252E9BF80);

  (*(v5 + 8))(v8, v4);
  if (v11)
  {

    v23 = sub_252D6CB58();
  }

  else
  {
    v23 = 0;
  }

  v24 = [a1 filters];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for HomeFilter();
    v26 = sub_252E37264();
  }

  else
  {
    v26 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v27 = sub_252D473EC(v23, v26);

  return v27;
}

uint64_t sub_252DB931C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultFanSpeedHandler();
  result = swift_allocObject();
  *(result + 16) = 0x4039000000000000;
  *a1 = result;
  return result;
}

BOOL sub_252DB9358(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 != 1 || (sub_252CCFCB8() & 1) != 0)
    {
      return 0;
    }

    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 11;
    }
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252DB9404(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_252DB9428, 0, 0);
}

uint64_t sub_252DB9428()
{
  v2 = v0[8];
  v1 = v0[9];
  v19 = v0[7];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 16), (v0 + 2));

  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v18 = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 16), (v0 + 2));

  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v17 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 16), (v0 + 2));

  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  LOBYTE(v6) = sub_252E33884();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v9 + 16), (v0 + 2));

  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  LOBYTE(v8) = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  v11 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  LOBYTE(v10) = [v11 canEvaluatePolicy:2 error:0];

  LOBYTE(v11) = sub_252C4D664(5);
  v13 = v1[12];
  v12 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v18 & 1;
  *(v14 + 25) = v17 & 1;
  *(v14 + 26) = v6 & 1;
  *(v14 + 27) = v8 & 1;
  *(v14 + 28) = v10;
  *(v14 + 29) = v11 & 1;

  sub_252943B8C(sub_2529B10D4, v14, v13, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252DB96F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*(a2 + v3) == 111)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252C2C2E4(0x16);
  }

  return v4 & 1;
}

uint64_t sub_252DB976C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252DB9404(a1, a2);
}

void *sub_252DB9818@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SecureAccessDeniedResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SceneResult()
{
  result = qword_27F545E90;
  if (!qword_27F545E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252DB9918()
{
  v1 = v0;
  v2 = *(v0 + qword_27F545E80);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F30, &qword_252E60688);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v3 = *(v1 + qword_27F545E88);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F38, &qword_252E60690);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  return v6;
}

uint64_t sub_252DB9A0C(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F545E80;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F20, &qword_252E60678);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F545E88;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F28, &qword_252E60680);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_252DB9B98()
{
  v1 = *(v0 + qword_27F545E80);

  v2 = *(v0 + qword_27F545E88);
}

uint64_t sub_252DB9BD8()
{
  v0 = sub_252E364A4();
  v1 = *(v0 + qword_27F545E80);

  v2 = *(v0 + qword_27F545E88);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SceneOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SceneOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_252DB9CFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_252DB9D2C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_252DB9D68()
{
  result = qword_27F545EA0;
  if (!qword_27F545EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545EA0);
  }

  return result;
}

uint64_t sub_252DB9E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252DB9E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252DB9EB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252DB9F14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!(v2 >> 6))
  {
    v7 = 0x203A726F727265;
    v3 = &qword_27F544530;
    v4 = &unk_252E60660;
    goto LABEL_5;
  }

  if (v2 >> 6 == 1)
  {
    sub_252E379F4();

    v7 = 0xD000000000000013;
    v3 = &qword_27F541EE0;
    v4 = &qword_252E4D8A0;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v5 = sub_252E36F94();
    MEMORY[0x2530AD570](v5);

    return v7;
  }

  return 0x73736563637573;
}

uint64_t sub_252DBA018(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "SceneOutcome.success";
  v4 = 0xD000000000000028;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000028;
  }

  if (v2 == 1)
  {
    v6 = "SceneOutcome.success";
  }

  else
  {
    v6 = "SceneOutcome.failure";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "rget_value";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = "SceneOutcome.failure";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "rget_value";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DBA0EC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DBA184()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252DBA208()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DBA29C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252DBAEE8();
  *a2 = result;
  return result;
}

void sub_252DBA2CC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "SceneOutcome.success";
  v4 = 0xD000000000000028;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = "SceneOutcome.failure";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "rget_value";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_252DBA324@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252DBA378()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EE0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C650, 0xD00000000000007FLL, 0x8000000252E9C0C0);
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      sub_252DBB00C();
      sub_252E36574();
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_252E379F4();
      v13 = 0;
      v14 = 0xE000000000000000;
      MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C670);
      sub_252E36584();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544568, &qword_252E60670);
      sub_252E37AE4();
      __swift_destroy_boxed_opaque_existential_1(&v11);
      sub_252CC3D90(v13, v14, 0xD00000000000007FLL, 0x8000000252E9C0C0);
    }

    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v4 = *(sub_252E36724() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v11 = v1;
    LOBYTE(v12) = v2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    v13 = sub_252E37724();
    sub_252C468D0();
    sub_252DBAFB8();
    sub_252E366F4();
    sub_252DBB00C();
  }

  else
  {
    LOBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v7 = *(sub_252E36724() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C45864();
    v11 = sub_252E37724();
    sub_252C468D0();
    sub_252DBAFB8();
    sub_252E366F4();
    sub_252DBB00C();
  }

  sub_252E36574();
}

void sub_252DBA758(uint64_t a1@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v7, v10);
  sub_252E364C4();
  v2 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v7);
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    sub_252C467D8();
    sub_252E36594();
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }

    if (v9)
    {
      v5 = -2;
    }

    else
    {
      v5 = v8 & 1 | 0x40;
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252DBAF34();
    sub_252E36594();
    if (v7 == 24)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
    }

    if (v7 == 24)
    {
      v5 = -2;
    }

    else
    {
      v5 = 0;
    }

LABEL_17:
    *a1 = v4;
    *(a1 + 8) = v5;
    return;
  }

  if (v2)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544EE0);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E9C0A0, 0xD00000000000007FLL, 0x8000000252E9C0C0, 0xD000000000000010, 0x8000000252E6F060, 88);
    *a1 = 0;
    v3 = -2;
  }

  else
  {
    *a1 = 0;
    v3 = 0x80;
  }

  *(a1 + 8) = v3;
}

uint64_t sub_252DBA97C()
{
  sub_252DBB060();

  return sub_252E36514();
}

uint64_t sub_252DBA9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DBB060();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252DBAA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252DBB060();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252DBAA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DBB060();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252DBAAB8()
{
  result = qword_27F545EA8;
  if (!qword_27F545EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545EA8);
  }

  return result;
}

unint64_t sub_252DBAB10()
{
  result = qword_27F545EB0;
  if (!qword_27F545EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545EB0);
  }

  return result;
}

unint64_t sub_252DBAB68()
{
  result = qword_27F545EB8;
  if (!qword_27F545EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545EB8);
  }

  return result;
}

uint64_t sub_252DBAD5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SceneResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_252DBADA0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v4 & 0xC0) == 0x40)
      {
        if (v2)
        {
          if (v4)
          {
            return 1;
          }
        }

        else if ((v4 & 1) == 0 && *a1 == v3)
        {
          return 1;
        }
      }
    }

    else
    {
      v5 = (v4 & 0xC0) == 0x80 && v3 == 0;
      if (v5 && v4 == 128)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4 >= 0x40)
  {
    return 0;
  }

  if (*a1 == 23)
  {
    return *a2 == 23;
  }

  if (*a2 == 23)
  {
    return 0;
  }

  v7 = HomeError.rawValue.getter();
  v9 = v8;
  if (v7 == HomeError.rawValue.getter() && v9 == v10)
  {

    return 1;
  }

  v11 = sub_252E37DB4();

  return (v11 & 1) != 0;
}

uint64_t sub_252DBAEE8()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252DBAF34()
{
  result = qword_27F544548;
  if (!qword_27F544548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544530, &unk_252E60660);
    sub_252C45864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544548);
  }

  return result;
}

unint64_t sub_252DBAFB8()
{
  result = qword_27F545F08;
  if (!qword_27F545F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F08);
  }

  return result;
}

unint64_t sub_252DBB00C()
{
  result = qword_27F545F10;
  if (!qword_27F545F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F10);
  }

  return result;
}

unint64_t sub_252DBB060()
{
  result = qword_27F545F18;
  if (!qword_27F545F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F18);
  }

  return result;
}

unint64_t sub_252DBB0D8()
{
  result = qword_27F545F40;
  if (!qword_27F545F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F40);
  }

  return result;
}

unint64_t sub_252DBB130()
{
  result = qword_27F545F48;
  if (!qword_27F545F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F48);
  }

  return result;
}

uint64_t sub_252DBB18C(__int128 *a1)
{
  v2 = sub_252E36F84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = a1[1];
  v72 = *a1;
  v73 = v16;
  v74 = *(a1 + 4);
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v63 = v17;
  sub_252E36A84();
  v18 = *(v6 + 16);
  v65 = v13;
  v18(v11);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v18)(v64, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = *(v6 + 32);
  v66 = v5;
  v21(v20 + v19, v11, v5);
  v22 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_252ADD33C;
  v22[1] = 0;
  *&aBlock = 0xD000000000000027;
  *(&aBlock + 1) = 0x8000000252E80C30;
  MEMORY[0x2530AD570](v14, v15);
  v23 = *(&aBlock + 1);
  v62 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544D30);

  v25 = sub_252E36AC4();
  v26 = sub_252E374C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&aBlock = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_252BE2CE0(v62, v23, &aBlock);
    _os_log_impl(&dword_252917000, v25, v26, "Writting record to: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2530AED00](v28, -1, -1);
    MEMORY[0x2530AED00](v27, -1, -1);
  }

  v29 = sub_252E329C4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252ADEECC();
  v32 = sub_252E329A4();
  v34 = v33;
  v60 = v20;

  sub_252E36F74();
  sub_252E36F54();
  v36 = v35;
  sub_25296464C(v32, v34);
  if (v36)
  {
    v37 = *(v6 + 8);
    v37(v64, v66);
    v38 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v39 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v48 = sub_252E35A14();
      v49 = qword_27F545F50;
      qword_27F545F50 = v48;
      v39 = v48;

      v38 = 0;
    }

    v50 = v38;
    v51 = sub_252E36F04();

    v52 = sub_252E36F04();

    v69 = sub_252DC0BEC;
    v70 = v60;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v68 = sub_2529E0210;
    *(&v68 + 1) = &block_descriptor_45;
    v53 = _Block_copy(&aBlock);

    [v39 setValue:v51 forKey:v52 completionHandler:v53];
    _Block_release(v53);

    v54 = v66;
  }

  else
  {

    v76[0] = *a1;
    v75 = *(a1 + 4);

    sub_252DBFEA4(v76, &aBlock);
    sub_252938414(&v75, &aBlock, &qword_27F540378, &unk_252E43ED0);

    sub_252DBFEA4(v76, &aBlock);
    sub_252938414(&v75, &aBlock, &qword_27F540378, &unk_252E43ED0);
    v40 = sub_252E36AC4();
    v41 = sub_252E374D4();
    sub_252A01B34(v76);

    sub_25293847C(&v75, &qword_27F540378, &unk_252E43ED0);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71 = v43;
      *v42 = 136315138;
      v44 = a1[1];
      aBlock = *a1;
      v68 = v44;
      v69 = *(a1 + 4);
      v45 = sub_252E36F94();
      v47 = sub_252BE2CE0(v45, v46, &v71);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_252917000, v40, v41, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2530AED00](v43, -1, -1);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    else
    {
      sub_252A01B34(v76);

      sub_25293847C(&v75, &qword_27F540378, &unk_252E43ED0);
    }

    v54 = v66;
    sub_2529318DC();
    v56 = swift_allocError();
    *v57 = 13;
    sub_252E375C4();
    v58 = v64;
    sub_252E36A74();
    sub_252ADD33C(v56);

    v37 = *(v6 + 8);
    v37(v58, v54);
  }

  return (v37)(v65, v54);
}

uint64_t sub_252DBBCA0(__int128 *a1)
{
  v2 = sub_252E36F84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = a1[1];
  v72 = *a1;
  v73 = v16;
  v74 = *(a1 + 4);
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v63 = v17;
  sub_252E36A84();
  v18 = *(v6 + 16);
  v65 = v13;
  v18(v11);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v18)(v64, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = *(v6 + 32);
  v66 = v5;
  v21(v20 + v19, v11, v5);
  v22 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_252ADD33C;
  v22[1] = 0;
  *&aBlock = 0xD000000000000023;
  *(&aBlock + 1) = 0x8000000252E81160;
  MEMORY[0x2530AD570](v14, v15);
  v23 = *(&aBlock + 1);
  v62 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544D30);

  v25 = sub_252E36AC4();
  v26 = sub_252E374C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&aBlock = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_252BE2CE0(v62, v23, &aBlock);
    _os_log_impl(&dword_252917000, v25, v26, "Writting record to: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2530AED00](v28, -1, -1);
    MEMORY[0x2530AED00](v27, -1, -1);
  }

  v29 = sub_252E329C4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252CB0724();
  v32 = sub_252E329A4();
  v34 = v33;
  v60 = v20;

  sub_252E36F74();
  sub_252E36F54();
  v36 = v35;
  sub_25296464C(v32, v34);
  if (v36)
  {
    v37 = *(v6 + 8);
    v37(v64, v66);
    v38 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v39 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v48 = sub_252E35A14();
      v49 = qword_27F545F50;
      qword_27F545F50 = v48;
      v39 = v48;

      v38 = 0;
    }

    v50 = v38;
    v51 = sub_252E36F04();

    v52 = sub_252E36F04();

    v69 = sub_252DC0BEC;
    v70 = v60;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v68 = sub_2529E0210;
    *(&v68 + 1) = &block_descriptor_38;
    v53 = _Block_copy(&aBlock);

    [v39 setValue:v51 forKey:v52 completionHandler:v53];
    _Block_release(v53);

    v54 = v66;
  }

  else
  {

    v76[0] = *a1;
    v75 = *(a1 + 4);

    sub_252DBFEA4(v76, &aBlock);
    sub_252938414(&v75, &aBlock, &qword_27F540480, &qword_252E3C910);

    sub_252DBFEA4(v76, &aBlock);
    sub_252938414(&v75, &aBlock, &qword_27F540480, &qword_252E3C910);
    v40 = sub_252E36AC4();
    v41 = sub_252E374D4();
    sub_252A01B34(v76);

    sub_25293847C(&v75, &qword_27F540480, &qword_252E3C910);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71 = v43;
      *v42 = 136315138;
      v44 = a1[1];
      aBlock = *a1;
      v68 = v44;
      v69 = *(a1 + 4);
      v45 = sub_252E36F94();
      v47 = sub_252BE2CE0(v45, v46, &v71);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_252917000, v40, v41, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2530AED00](v43, -1, -1);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    else
    {
      sub_252A01B34(v76);

      sub_25293847C(&v75, &qword_27F540480, &qword_252E3C910);
    }

    v54 = v66;
    sub_2529318DC();
    v56 = swift_allocError();
    *v57 = 13;
    sub_252E375C4();
    v58 = v64;
    sub_252E36A74();
    sub_252ADD33C(v56);

    v37 = *(v6 + 8);
    v37(v58, v54);
  }

  return (v37)(v65, v54);
}

uint64_t sub_252DBC7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  return a3(a1);
}

uint64_t sub_252DBC8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36F84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = swift_allocObject();
  v67 = a2;
  v68 = a3;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v80 = a1;
  v19 = qword_27F53F5F0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v66 = v20;
  sub_252E36A84();
  v21 = *(v10 + 16);
  v71 = v17;
  v21(v15, v17, v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v69, v15, v9);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v22, v15, v9);
  v24 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_252DBE730;
  v24[1] = v18;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  aBlock = 0xD00000000000002ELL;
  v74 = 0x8000000252E80C90;
  v70 = v18;

  MEMORY[0x2530AD570](v25, v26);

  v27 = v74;
  v65 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D30);

  v29 = sub_252E36AC4();
  v30 = sub_252E374C4();

  v31 = os_log_type_enabled(v29, v30);
  v72 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_252BE2CE0(v65, v27, &aBlock);
    _os_log_impl(&dword_252917000, v29, v30, "Writting record to: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2530AED00](v33, -1, -1);
    MEMORY[0x2530AED00](v32, -1, -1);
  }

  v34 = sub_252E329C4();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for IntentSelectionCacheKeysRecord();
  sub_252DBE7E0(&qword_27F543190, type metadata accessor for IntentSelectionCacheKeysRecord);
  v37 = sub_252E329A4();
  v39 = v38;
  v64 = v23;

  sub_252E36F74();
  sub_252E36F54();
  v41 = v40;
  sub_25296464C(v37, v39);
  if (v41)
  {
    v42 = *(v10 + 8);
    v42(v69, v72);
    v43 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v44 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v52 = sub_252E35A14();
      v53 = qword_27F545F50;
      qword_27F545F50 = v52;
      v44 = v52;

      v43 = 0;
    }

    v54 = v43;
    v55 = sub_252E36F04();

    v56 = sub_252E36F04();

    v77 = sub_252DC0BEC;
    v78 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_2529E0210;
    v76 = &block_descriptor_11_0;
    v57 = _Block_copy(&aBlock);

    [v44 setValue:v55 forKey:v56 completionHandler:v57];
    _Block_release(v57);

    v58 = v72;
  }

  else
  {

    v45 = sub_252E36AC4();
    v46 = sub_252E374D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136315138;
      v79 = a1;
      v49 = sub_252E36F94();
      v51 = sub_252BE2CE0(v49, v50, &aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_252917000, v45, v46, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x2530AED00](v48, -1, -1);
      MEMORY[0x2530AED00](v47, -1, -1);
    }

    else
    {
    }

    v60 = v69;
    sub_2529318DC();
    v61 = swift_allocError();
    *v62 = 13;
    sub_252E375C4();
    sub_252E36A74();
    sub_252AFE770(v61, v67, v68);

    v42 = *(v10 + 8);
    v58 = v72;
    v42(v60, v72);
  }

  v42(v71, v58);
}

uint64_t sub_252DBD2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36F84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = swift_allocObject();
  v67 = a2;
  v68 = a3;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v80 = a1;
  v19 = qword_27F53F5F0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v66 = v20;
  sub_252E36A84();
  v21 = *(v10 + 16);
  v71 = v17;
  v21(v15, v17, v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v69, v15, v9);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v22, v15, v9);
  v24 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_252DBE7D8;
  v24[1] = v18;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  aBlock = 0xD000000000000054;
  v74 = 0x8000000252E80CC0;
  v70 = v18;

  MEMORY[0x2530AD570](v25, v26);

  v27 = v74;
  v65 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D30);

  v29 = sub_252E36AC4();
  v30 = sub_252E374C4();

  v31 = os_log_type_enabled(v29, v30);
  v72 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_252BE2CE0(v65, v27, &aBlock);
    _os_log_impl(&dword_252917000, v29, v30, "Writting record to: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2530AED00](v33, -1, -1);
    MEMORY[0x2530AED00](v32, -1, -1);
  }

  v34 = sub_252E329C4();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for CacheInvalidationSignalRecord();
  sub_252DBE7E0(&qword_27F543180, type metadata accessor for CacheInvalidationSignalRecord);
  v37 = sub_252E329A4();
  v39 = v38;
  v64 = v23;

  sub_252E36F74();
  sub_252E36F54();
  v41 = v40;
  sub_25296464C(v37, v39);
  if (v41)
  {
    v42 = *(v10 + 8);
    v42(v69, v72);
    v43 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v44 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v52 = sub_252E35A14();
      v53 = qword_27F545F50;
      qword_27F545F50 = v52;
      v44 = v52;

      v43 = 0;
    }

    v54 = v43;
    v55 = sub_252E36F04();

    v56 = sub_252E36F04();

    v77 = sub_252DC0BEC;
    v78 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = sub_2529E0210;
    v76 = &block_descriptor_21;
    v57 = _Block_copy(&aBlock);

    [v44 setValue:v55 forKey:v56 completionHandler:v57];
    _Block_release(v57);

    v58 = v72;
  }

  else
  {

    v45 = sub_252E36AC4();
    v46 = sub_252E374D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136315138;
      v79 = a1;
      v49 = sub_252E36F94();
      v51 = sub_252BE2CE0(v49, v50, &aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_252917000, v45, v46, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x2530AED00](v48, -1, -1);
      MEMORY[0x2530AED00](v47, -1, -1);
    }

    else
    {
    }

    v60 = v69;
    sub_2529318DC();
    v61 = swift_allocError();
    *v62 = 13;
    sub_252E375C4();
    sub_252E36A74();
    sub_252AFE9F8(v61, v67, v68);

    v42 = *(v10 + 8);
    v58 = v72;
    v42(v60, v72);
  }

  v42(v71, v58);
}

uint64_t sub_252DBDD08(uint64_t a1, uint64_t (*a2)(uint64_t a1))
{
  v4 = sub_252E36F84();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v79 = a1;
  v16 = qword_27F53F5F0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v67 = v17;
  sub_252E36A84();
  v18 = *(v8 + 16);
  v69 = v15;
  v18(v13, v15, v7);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v68, v13, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v21 = *(v8 + 32);
  v71 = v7;
  v21(v20 + v19, v13, v7);
  v22 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_252DBE70C;
  v22[1] = a2;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  aBlock = 0xD000000000000029;
  v73 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](v23, v24);

  v25 = v73;
  v66 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544D30);

  v27 = sub_252E36AC4();
  v28 = sub_252E374C4();

  v29 = os_log_type_enabled(v27, v28);
  v70 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_252BE2CE0(v66, v25, &aBlock);
    _os_log_impl(&dword_252917000, v27, v28, "Writting record to: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x2530AED00](v31, -1, -1);
    MEMORY[0x2530AED00](v30, -1, -1);
  }

  v32 = sub_252E329C4();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for IntentSelectionCacheEntry();
  sub_252DBE7E0(&qword_27F5431A0, type metadata accessor for IntentSelectionCacheEntry);
  v35 = sub_252E329A4();
  v37 = v36;
  v64 = v20;

  sub_252E36F74();
  sub_252E36F54();
  v39 = v38;
  sub_25296464C(v35, v37);
  if (v39)
  {
    v40 = *(v8 + 8);
    v40(v68, v71);
    v41 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v42 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v50 = sub_252E35A14();
      v51 = qword_27F545F50;
      qword_27F545F50 = v50;
      v42 = v50;

      v41 = 0;
    }

    v52 = v41;
    v53 = sub_252E36F04();

    v54 = sub_252E36F04();

    v76 = sub_252DBE714;
    v77 = v64;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = sub_2529E0210;
    v75 = &block_descriptor_26;
    v55 = _Block_copy(&aBlock);

    [v42 setValue:v53 forKey:v54 completionHandler:v55];
    _Block_release(v55);

    v56 = v71;
    v57 = v69;
  }

  else
  {

    v43 = sub_252E36AC4();
    v44 = sub_252E374D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136315138;
      v78 = a1;
      v47 = sub_252E36F94();
      v49 = sub_252BE2CE0(v47, v48, &aBlock);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_252917000, v43, v44, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x2530AED00](v46, -1, -1);
      MEMORY[0x2530AED00](v45, -1, -1);
    }

    else
    {
    }

    v59 = v70;
    v56 = v71;
    v60 = v68;
    v57 = v69;
    sub_2529318DC();
    v61 = swift_allocError();
    *v62 = 13;
    sub_252E375C4();
    sub_252E36A74();
    sub_252AFE3DC(v61, v59);

    v40 = *(v8 + 8);
    v40(v60, v56);
  }

  v40(v57, v56);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252DBE738(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_252DBC7C4(a1, v1 + v4, *v5);
}

uint64_t sub_252DBE7E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252DBE828(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_252E36F84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71[0] = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36AB4();
  v80 = *(v9 - 8);
  v10 = v80[8];
  v11 = MEMORY[0x28223BE20](v9);
  v79 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v71 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v71 - v15;
  v17 = swift_allocObject();
  v72 = a2;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(a1 + 3);
  v74 = *(a1 + 2);
  v75 = v18;
  v19 = a1[7];
  v99 = a1[6];
  v100 = v19;
  v101 = *(a1 + 16);
  v20 = a1[1];
  v22 = a1[3];
  v21 = a1[4];
  v95 = a1[2];
  v96 = v22;
  v23 = a1[5];
  v97 = v21;
  v98 = v23;
  v93 = *a1;
  v94 = v20;
  v24 = qword_27F53F5F0;
  v73 = a3;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v71[1] = v25;
  sub_252E36A84();
  v26 = v80;
  v27 = v16;
  v28 = v80[2];
  v77 = v27;
  v28(v14);
  (v28)(v79, v14, v9);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = v26[4];
  v78 = v9;
  v31(v30 + v29, v14, v9);
  v32 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_252DBFF60;
  v32[1] = v17;
  *&v84 = 0xD000000000000026;
  *(&v84 + 1) = 0x8000000252E80E10;
  v76 = v17;

  v33 = v75;

  MEMORY[0x2530AD570](v74, v33);

  v34 = v84;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D30);

  v36 = sub_252E36AC4();
  v37 = sub_252E374C4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v84 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_252BE2CE0(v34, *(&v34 + 1), &v84);
    _os_log_impl(&dword_252917000, v36, v37, "Writting record to: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](v38, -1, -1);
  }

  v40 = sub_252E329C4();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252B5200C();
  v43 = sub_252E329A4();
  v45 = v44;

  sub_252E36F74();
  sub_252E36F54();
  v47 = v46;
  sub_25296464C(v43, v45);
  if (v47)
  {
    v75 = v30;
    v48 = v80[1];
    v48(v79, v78);
    v49 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v50 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v58 = sub_252E35A14();
      v59 = qword_27F545F50;
      qword_27F545F50 = v58;
      v50 = v58;

      v49 = 0;
    }

    v60 = v49;
    v61 = sub_252E36F04();

    v62 = sub_252E36F04();

    *&v86 = sub_252DC0BEC;
    *(&v86 + 1) = v75;
    *&v84 = MEMORY[0x277D85DD0];
    *(&v84 + 1) = 1107296256;
    *&v85 = sub_2529E0210;
    *(&v85 + 1) = &block_descriptor_65;
    v63 = _Block_copy(&v84);

    [v50 setValue:v61 forKey:v62 completionHandler:v63];
    _Block_release(v63);

    v65 = v77;
    v64 = v78;
  }

  else
  {

    v90 = v99;
    v91 = v100;
    v92 = v101;
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v89 = v98;
    v84 = v93;
    v85 = v94;
    sub_252B5ADE8(&v84, v82);
    sub_252B5ADE8(&v84, v82);
    v51 = sub_252E36AC4();
    v52 = sub_252E374D4();
    sub_252B5AE20(&v84);
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v81 = v54;
      *v53 = 136315138;
      v82[6] = v90;
      v82[7] = v91;
      v83 = v92;
      v82[2] = v86;
      v82[3] = v87;
      v82[4] = v88;
      v82[5] = v89;
      v82[0] = v84;
      v82[1] = v85;
      v55 = sub_252E36F94();
      v57 = sub_252BE2CE0(v55, v56, &v81);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_252917000, v51, v52, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x2530AED00](v54, -1, -1);
      MEMORY[0x2530AED00](v53, -1, -1);
    }

    else
    {
      sub_252B5AE20(&v84);
    }

    v65 = v77;
    v68 = v79;
    v67 = v80;
    sub_2529318DC();
    v69 = swift_allocError();
    *v70 = 13;
    sub_252E375C4();
    sub_252E36A74();
    sub_252B5263C(v69, v72, v73);

    v48 = v67[1];
    v64 = v78;
    v48(v68, v78);
  }

  v48(v65, v64);
}

uint64_t sub_252DBF330(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v85 = a5;
  v86 = a3;
  v8 = sub_252E36F84();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77[0] = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E36AB4();
  v88 = *(v11 - 8);
  v12 = v88[8];
  v13 = MEMORY[0x28223BE20](v11);
  v87 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v77 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v77 - v17;
  v19 = swift_allocObject();
  v79 = a2;
  *(v19 + 16) = a2;
  v20 = v85;
  *(v19 + 24) = v86;
  v21 = *(a4 + 112);
  *(v19 + 128) = *(a4 + 96);
  *(v19 + 144) = v21;
  v22 = *(a4 + 128);
  v23 = *(a4 + 48);
  *(v19 + 64) = *(a4 + 32);
  *(v19 + 80) = v23;
  v24 = *(a4 + 80);
  *(v19 + 96) = *(a4 + 64);
  *(v19 + 112) = v24;
  v25 = *(a4 + 16);
  *(v19 + 32) = *a4;
  *(v19 + 48) = v25;
  *(v19 + 160) = v22;
  *(v19 + 168) = v20;
  v26 = *(a1 + 3);
  v83 = *(a1 + 2);
  v81 = v26;
  v27 = a1[7];
  v107 = a1[6];
  v108 = v27;
  v109 = *(a1 + 16);
  v28 = a1[1];
  v30 = a1[3];
  v29 = a1[4];
  v103 = a1[2];
  v104 = v30;
  v31 = a1[5];
  v105 = v29;
  v106 = v31;
  v101 = *a1;
  v102 = v28;

  v80 = a4;
  sub_252B5ADE8(a4, &v92);
  v32 = qword_27F53F5F0;
  v78 = v20;
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v77[1] = v33;
  sub_252E36A84();
  v34 = v88;
  v35 = v18;
  v36 = v88[2];
  v84 = v35;
  v36(v16);
  (v36)(v87, v16, v11);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v34[4];
  v85 = v11;
  v39(v38 + v37, v16, v11);
  v82 = v38;
  v40 = (v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_252DBFE94;
  v40[1] = v19;
  *&v92 = 0xD000000000000026;
  *(&v92 + 1) = 0x8000000252E80E10;

  v41 = v81;

  MEMORY[0x2530AD570](v83, v41);

  v42 = v92;
  v83 = v19;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544D30);

  v44 = sub_252E36AC4();
  v45 = sub_252E374C4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v92 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_252BE2CE0(v42, *(&v42 + 1), &v92);
    _os_log_impl(&dword_252917000, v44, v45, "Writting record to: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x2530AED00](v47, -1, -1);
    MEMORY[0x2530AED00](v46, -1, -1);
  }

  v48 = sub_252E329C4();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252B5200C();
  v51 = sub_252E329A4();
  v53 = v52;

  sub_252E36F74();
  sub_252E36F54();
  v55 = v54;
  sub_25296464C(v51, v53);
  if (v55)
  {
    v56 = v88[1];
    v56(v87, v85);
    v57 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v58 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v66 = sub_252E35A14();
      v67 = qword_27F545F50;
      qword_27F545F50 = v66;
      v58 = v66;

      v57 = 0;
    }

    v68 = v57;
    v69 = sub_252E36F04();

    v70 = sub_252E36F04();

    *&v94 = sub_252DC0BEC;
    *(&v94 + 1) = v82;
    *&v92 = MEMORY[0x277D85DD0];
    *(&v92 + 1) = 1107296256;
    *&v93 = sub_2529E0210;
    *(&v93 + 1) = &block_descriptor_31_1;
    v71 = _Block_copy(&v92);

    [v58 setValue:v69 forKey:v70 completionHandler:v71];
    _Block_release(v71);

    v72 = v85;
  }

  else
  {

    v98 = v107;
    v99 = v108;
    v100 = v109;
    v94 = v103;
    v95 = v104;
    v96 = v105;
    v97 = v106;
    v92 = v101;
    v93 = v102;
    sub_252B5ADE8(&v92, v90);
    sub_252B5ADE8(&v92, v90);
    v59 = sub_252E36AC4();
    v60 = sub_252E374D4();
    sub_252B5AE20(&v92);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v89 = v62;
      *v61 = 136315138;
      v90[6] = v98;
      v90[7] = v99;
      v91 = v100;
      v90[2] = v94;
      v90[3] = v95;
      v90[4] = v96;
      v90[5] = v97;
      v90[0] = v92;
      v90[1] = v93;
      v63 = sub_252E36F94();
      v65 = sub_252BE2CE0(v63, v64, &v89);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_252917000, v59, v60, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x2530AED00](v62, -1, -1);
      MEMORY[0x2530AED00](v61, -1, -1);
    }

    else
    {
      sub_252B5AE20(&v92);
    }

    v73 = v87;
    sub_2529318DC();
    v74 = swift_allocError();
    *v75 = 13;
    sub_252E375C4();
    sub_252E36A74();
    sub_252B5377C(v74, v79, v86, v80, v78);

    v56 = v88[1];
    v72 = v85;
    v56(v73, v85);
  }

  v56(v84, v72);
}

uint64_t sub_252DBFFC0(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, id))
{
  v79 = a8;
  v74 = a7;
  v73 = a6;
  v83 = a5;
  v85 = a4;
  v10 = sub_252E36F84();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E36AB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = *(a1 + 3);
  v80 = *(a1 + 2);
  v24 = a1[1];
  v91 = *a1;
  v92 = v24;
  v76 = a1;
  v93 = *(a1 + 4);
  v25 = qword_27F53F5F0;
  v78 = a2;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v77 = v26;
  sub_252E36A84();
  v27 = *(v14 + 16);
  v84 = v21;
  v27(v19, v21, v13);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27(v81, v19, v13);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v82 = v14;
  v30 = *(v14 + 32);
  v85 = v13;
  v30(v29 + v28, v19, v13);
  v31 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v83;
  v31[1] = v22;
  *&aBlock = 0xD00000000000002ALL;
  *(&aBlock + 1) = 0x8000000252E80BC0;

  MEMORY[0x2530AD570](v80, v23);
  v32 = aBlock;
  v83 = v22;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544D30);

  v34 = sub_252E36AC4();
  v35 = sub_252E374C4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_252BE2CE0(v32, *(&v32 + 1), &aBlock);
    _os_log_impl(&dword_252917000, v34, v35, "Writting record to: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x2530AED00](v37, -1, -1);
    MEMORY[0x2530AED00](v36, -1, -1);
  }

  v38 = sub_252E329C4();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_252E329B4();
  sub_252B5C1A4();
  v41 = sub_252E329A4();
  v43 = v42;

  sub_252E36F74();
  sub_252E36F54();
  v45 = v44;
  sub_25296464C(v41, v43);
  if (v45)
  {
    v80 = v29;
    v46 = *(v82 + 8);
    v47 = v85;
    v46(v81, v85);
    v48 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v49 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v59 = sub_252E35A14();
      v60 = qword_27F545F50;
      qword_27F545F50 = v59;
      v49 = v59;

      v48 = 0;
    }

    v61 = v48;
    v62 = sub_252E36F04();

    v63 = sub_252E36F04();

    v88 = v73;
    v89 = v80;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v87 = sub_2529E0210;
    *(&v87 + 1) = v74;
    v64 = _Block_copy(&aBlock);

    [v49 setValue:v62 forKey:v63 completionHandler:v64];
    _Block_release(v64);

    v65 = v84;
  }

  else
  {

    v50 = v76;
    v95[0] = *v76;
    v94 = *(v76 + 4);

    sub_252DBFEA4(v95, &aBlock);
    sub_252938414(&v94, &aBlock, &qword_27F540480, &qword_252E3C910);

    sub_252DBFEA4(v95, &aBlock);
    sub_252938414(&v94, &aBlock, &qword_27F540480, &qword_252E3C910);
    v51 = sub_252E36AC4();
    v52 = sub_252E374D4();
    sub_252A01B34(v95);

    sub_25293847C(&v94, &qword_27F540480, &qword_252E3C910);
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v90 = v54;
      *v53 = 136315138;
      v55 = v50[1];
      aBlock = *v50;
      v87 = v55;
      v88 = *(v50 + 4);
      v56 = sub_252E36F94();
      v58 = sub_252BE2CE0(v56, v57, &v90);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_252917000, v51, v52, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x2530AED00](v54, -1, -1);
      MEMORY[0x2530AED00](v53, -1, -1);
    }

    else
    {
      sub_252A01B34(v95);

      sub_25293847C(&v94, &qword_27F540480, &qword_252E3C910);
    }

    v67 = v82;
    v68 = v81;
    sub_2529318DC();
    v69 = swift_allocError();
    *v70 = 13;
    sub_252E375C4();
    sub_252E36A74();
    v79(v69, v78);

    v46 = *(v67 + 8);
    v71 = v68;
    v47 = v85;
    v46(v71, v85);
    v65 = v84;
  }

  v46(v65, v47);
}

uint64_t sub_252DC0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[143] = v3;
  v4[142] = a3;
  v4[141] = a2;
  v4[140] = a1;
  v5 = sub_252E34014();
  v4[144] = v5;
  v6 = *(v5 - 8);
  v4[145] = v6;
  v7 = *(v6 + 64) + 15;
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DC0CC8, 0, 0);
}

uint64_t sub_252DC0CC8()
{
  v35 = v0;
  v1 = v0 + 138;
  v2 = MEMORY[0x277D84F90];
  v33 = v0[142];
  if (v33)
  {
    v3 = sub_252C31A30();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *v1 = v2;
  if (v3 >> 62)
  {
LABEL_30:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_7:
  v38 = v6;
  v0[148] = v6;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = sub_252DA124C(0);

    ++v5;
    if (v10)
    {
      MEMORY[0x2530AD700]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = *v1;
      v5 = v9;
      goto LABEL_7;
    }
  }

  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[141];

  memcpy(v0 + 2, (v12 + 112), 0x1F8uLL);
  memcpy(__dst, (v12 + 112), 0x1F8uLL);
  v15 = v14;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v16 = v13;
  v17 = sub_252953488(v14, __dst, v13);
  v0[149] = v17;

  v18 = swift_allocObject();
  v0[150] = v18;
  v19 = v38;
  v18[2] = v12;
  v18[3] = v19;
  v18[4] = v17;

  if (v33)
  {
    v20 = v0[143];
    v21 = *(v20 + 48);
    v22 = v16;
    v23 = *__swift_project_boxed_opaque_existential_1((v20 + 24), v21);

    v24 = swift_task_alloc();
    v0[151] = v24;
    *v24 = v0;
    v24[1] = sub_252DC1134;

    return sub_252C0ECBC(0, v23, v19, v17);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v26 = v0[147];
    v27 = v0[143];
    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v29 = v27[12];
    v30 = v27[13];
    __swift_project_boxed_opaque_existential_1(v27 + 9, v29);
    sub_252AD7CC4();
    v31 = swift_task_alloc();
    v0[157] = v31;
    *v31 = v0;
    v31[1] = sub_252DC14B4;
    v32 = v0[147];
    v37 = v30;

    return sub_252BDB88C((v0 + 128), &unk_252E608A8, v18, v32, 0, 0, 0, v29);
  }
}