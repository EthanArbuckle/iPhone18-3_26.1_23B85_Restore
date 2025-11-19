uint64_t sub_254E74894(uint64_t result, uint64_t a2)
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v13 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v15 = *v13;
      v14 = v13[1];
      sub_254E9E5FC();

      sub_254E9E29C();
      v16 = sub_254E9E63C();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v15 && v19[1] == v14)
        {
          break;
        }

        v21 = sub_254E9E5CC();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    ++v10;
    if (*(v4 + 8 * v3))
    {
      sub_254E76ABC();
      v7 = v12 & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_254E74A34()
{
  sub_254E7392C();
  v4 = v3;
  v6 = v5;
  sub_254E9E0DC();
  sub_254E62124();
  MEMORY[0x28223BE20](v7);
  sub_254E73770();
  MEMORY[0x28223BE20](v8);
  v30[11] = v30 - v9;
  sub_254E76BD8();
  MEMORY[0x28223BE20](v10);
  sub_254E76C48();
  if (v11 || *(v6 + 16) != *(v4 + 16))
  {
LABEL_17:
    sub_254E738E4();
  }

  else
  {
    sub_254E62164();
    if (v13)
    {
      while (2)
      {
        sub_254E76B90();
LABEL_10:
        v17 = sub_254E62F90();
        v2(v17);
        v18 = sub_254E76B74();
        v19(v18);
        v20 = *(v4 + 40);
        sub_254E62BBC();
        sub_254E76A5C(&qword_280C409A8, v21);
        sub_254E76C90();
        sub_254E76C5C();
        do
        {
          sub_254E76B58();
          if ((v22 & 1) == 0)
          {
            v28 = sub_254E76C28();
            v29(v28);
            goto LABEL_17;
          }

          v23 = sub_254E76B24();
          v2(v23);
          sub_254E62BBC();
          sub_254E76A5C(&qword_280C409A0, v24);
          sub_254E76BE4();
          v25 = sub_254E76C14();
          v0(v25);
        }

        while ((v20 & 1) == 0);
        v26 = sub_254E76C28();
        v0(v26);
        sub_254E76BC0();
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v14 = v1;
    while (1)
    {
      v1 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v1 >= v12)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v30[1] + 8 * v1))
      {
        sub_254E76ABC();
        v30[6] = v16 & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_254E74C48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710384 && a2 == 0xE300000000000000;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_254E74D54(char a1)
{
  if (!a1)
  {
    return 6710384;
  }

  if (a1 == 1)
  {
    return 0x746E656D75636F64;
  }

  return 0x6567616D69;
}

uint64_t sub_254E74DA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E74E20()
{
  sub_254E9E5FC();
  MEMORY[0x259C2B8B0](0);
  return sub_254E9E63C();
}

uint64_t sub_254E74E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E74C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E74EC4(uint64_t a1)
{
  v2 = sub_254E7550C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E74F00(uint64_t a1)
{
  v2 = sub_254E7550C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E74F3C(uint64_t a1)
{
  v2 = sub_254E755B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E74F78(uint64_t a1)
{
  v2 = sub_254E755B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E74FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E74DA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E74FE4(uint64_t a1)
{
  v2 = sub_254E75560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E75020(uint64_t a1)
{
  v2 = sub_254E75560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E75060(uint64_t a1)
{
  v2 = sub_254E75608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7509C(uint64_t a1)
{
  v2 = sub_254E75608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnScreenContent.EntityFormat.encode(to:)(void *a1)
{
  sub_254E6775C(&qword_27F755368);
  sub_254E62124();
  v33 = v4;
  v34 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  v32 = &v29 - v6;
  sub_254E6775C(&qword_27F755370);
  sub_254E62124();
  v30 = v8;
  v31 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_254E6775C(&qword_27F755378);
  sub_254E62124();
  v29 = v13;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_254E6775C(&qword_27F755380);
  sub_254E62124();
  v36 = v18;
  v37 = v17;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v19);
  v35 = *v1;
  v20 = *(v1 + 8);
  sub_254E6A434(a1, a1[3]);
  sub_254E7550C();
  sub_254E9E65C();
  if (!v20)
  {
    LOBYTE(v38) = 1;
    sub_254E755B4();
    sub_254E76B04();
    v38 = v35;
    sub_254E6775C(&qword_27F7553B8);
    sub_254E762EC(&qword_27F7553C0, &qword_280C3FDE8);
    v23 = v31;
    sub_254E9E59C();
    (*(v30 + 8))(v11, v23);
    goto LABEL_5;
  }

  if (v20 == 1)
  {
    LOBYTE(v38) = 2;
    sub_254E75560();
    v21 = v32;
    sub_254E76B04();
    v38 = v35;
    sub_254E6775C(&qword_27F755398);
    sub_254E76270(&qword_27F7553A0, &qword_27F7553A8);
    v22 = v34;
    sub_254E9E59C();
    (*(v33 + 8))(v21, v22);
LABEL_5:
    v24 = sub_254E76C34();
    return v25(v24);
  }

  LOBYTE(v38) = 0;
  sub_254E75608();
  sub_254E76B04();
  (*(v29 + 8))(v16, v12);
  v27 = sub_254E76C34();
  return v28(v27);
}

unint64_t sub_254E7550C()
{
  result = qword_27F755388;
  if (!qword_27F755388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755388);
  }

  return result;
}

unint64_t sub_254E75560()
{
  result = qword_27F755390;
  if (!qword_27F755390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755390);
  }

  return result;
}

unint64_t sub_254E755B4()
{
  result = qword_27F7553B0;
  if (!qword_27F7553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7553B0);
  }

  return result;
}

unint64_t sub_254E75608()
{
  result = qword_27F7553C8;
  if (!qword_27F7553C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7553C8);
  }

  return result;
}

void OnScreenContent.EntityFormat.hash(into:)()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x259C2B8B0](2);

      sub_254E75F7C();
    }

    else
    {
      MEMORY[0x259C2B8B0](0);
    }
  }

  else
  {
    MEMORY[0x259C2B8B0](1);

    sub_254E71940();
  }
}

uint64_t OnScreenContent.EntityFormat.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_254E9E5FC();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x259C2B8B0](2);
      sub_254E75F7C();
    }

    else
    {
      MEMORY[0x259C2B8B0](0);
    }
  }

  else
  {
    MEMORY[0x259C2B8B0](1);
    sub_254E71940();
  }

  return sub_254E9E63C();
}

uint64_t OnScreenContent.EntityFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = sub_254E6775C(&qword_27F7553D0);
  sub_254E62124();
  v57 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  v59 = &v51 - v5;
  sub_254E6775C(&qword_27F7553D8);
  sub_254E62124();
  v55 = v6;
  v56 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_254E6775C(&qword_27F7553E0);
  sub_254E62124();
  v54 = v10;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = sub_254E6775C(&qword_27F7553E8);
  sub_254E62124();
  v16 = v15;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = a1[3];
  v61 = a1;
  sub_254E6A434(a1, v20);
  sub_254E7550C();
  v21 = v62;
  sub_254E9E64C();
  if (v21)
  {
    return sub_254E6A780(v61);
  }

  v52 = v9;
  v53 = v13;
  v62 = v16;
  v22 = sub_254E9E51C();
  result = sub_254E734E0(v22, 0);
  if (v25 == v26 >> 1)
  {
    v27 = v19;
LABEL_10:
    v34 = sub_254E9E43C();
    swift_allocError();
    v36 = v35;
    sub_254E6775C(&qword_27F755138);
    *v36 = &type metadata for OnScreenContent.EntityFormat;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v27, v14);
    return sub_254E6A780(v61);
  }

  v51 = 0;
  if (v25 < (v26 >> 1))
  {
    v28 = *(v24 + v25);
    sub_254E734D4(v25 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 != v32 >> 1)
    {
      v27 = v19;
      goto LABEL_10;
    }

    if (v28)
    {
      if (v28 == 1)
      {
        LOBYTE(v63) = 1;
        sub_254E755B4();
        sub_254E76AE4();
        v33 = v58;
        sub_254E6775C(&qword_27F7553B8);
        sub_254E762EC(&qword_27F755400, &qword_280C3FDE0);
        sub_254E9E50C();
        swift_unknownObjectRelease();
        v42 = sub_254E62E60();
        v43(v42);
        v44 = sub_254E6342C();
        v45(v44);
        v46 = 0;
        v47 = v63;
        v48 = v61;
LABEL_15:
        *v33 = v47;
        *(v33 + 8) = v46;
        return sub_254E6A780(v48);
      }

      LOBYTE(v63) = 2;
      sub_254E75560();
      sub_254E76AE4();
      v40 = v14;
      sub_254E6775C(&qword_27F755398);
      sub_254E76270(&qword_27F7553F0, &qword_27F7553F8);
      sub_254E9E50C();
      v41 = v62;
      swift_unknownObjectRelease();
      v49 = sub_254E62E60();
      v50(v49);
      (*(v41 + 8))(v19, v40);
      v47 = v63;
      v46 = 1;
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_254E75608();
      v37 = v53;
      sub_254E76AE4();
      swift_unknownObjectRelease();
      (*(v54 + 8))(v37, v52);
      v38 = sub_254E6342C();
      v39(v38);
      v47 = 0;
      v46 = 2;
    }

    v48 = v61;
    v33 = v58;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_254E75EBC()
{
  v1 = *(v0 + 8);
  sub_254E9E5FC();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x259C2B8B0](2);
      sub_254E75F7C();
    }

    else
    {
      MEMORY[0x259C2B8B0](0);
    }
  }

  else
  {
    MEMORY[0x259C2B8B0](1);
    sub_254E71940();
  }

  return sub_254E9E63C();
}

void sub_254E75F7C()
{
  sub_254E7392C();
  v2 = v1;
  v4 = v3;
  v5 = sub_254E9DE0C();
  sub_254E62124();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v4;
  memcpy(v22, v4, sizeof(v22));
  sub_254E9E63C();
  sub_254E62D00();
  v12 = v11 >> 6;
  v21[3] = v7 + 16;
  v21[4] = v13;
  v21[2] = v7 + 8;

  v14 = 0;
  v15 = 0;
  if (v0)
  {
    while (1)
    {
LABEL_5:
      sub_254E76C70();
      (*(v7 + 16))(v10, *(v2 + 48) + *(v7 + 72) * (v18 | (v17 << 6)), v5);
      sub_254E62AA4();
      sub_254E76A5C(&qword_27F755468, v19);
      v20 = sub_254E9E22C();
      (*(v7 + 8))(v10, v5);
      v14 ^= v20;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      MEMORY[0x259C2B8B0](0);
      sub_254E738E4();
      return;
    }

    ++v15;
    if (*(v2 + 56 + 8 * v16))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_254E76148(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_254E9E63C();
  sub_254E62D00();
  v5 = v4 >> 6;

  v7 = 0;
  v8 = 0;
  if (v2)
  {
    while (1)
    {
LABEL_5:
      sub_254E76C70();
      sub_254E9E5FC();

      sub_254E9E29C();
      v10 = sub_254E9E63C();

      v7 ^= v10;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return MEMORY[0x259C2B8B0](0);
    }

    ++v8;
    if (*(a2 + 56 + 8 * v9))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254E76270(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F755398);
    sub_254E62AA4();
    sub_254E76A5C(a2, v5);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E762EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F7553B8);
    sub_254E62BBC();
    sub_254E76A5C(a2, v5);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E7636C()
{
  result = qword_27F755408;
  if (!qword_27F755408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755408);
  }

  return result;
}

uint64_t sub_254E763C0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_254E763DC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_254E763F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254E76430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_254E76474(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *_s12EntityFormatO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIContextXPCService(unsigned int *a1, int a2)
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

_BYTE *sub_254E765E8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_254E76698()
{
  result = qword_27F755410;
  if (!qword_27F755410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755410);
  }

  return result;
}

unint64_t sub_254E766F0()
{
  result = qword_27F755418;
  if (!qword_27F755418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755418);
  }

  return result;
}

unint64_t sub_254E76748()
{
  result = qword_27F755420;
  if (!qword_27F755420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755420);
  }

  return result;
}

unint64_t sub_254E767A0()
{
  result = qword_27F755428;
  if (!qword_27F755428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755428);
  }

  return result;
}

unint64_t sub_254E767F8()
{
  result = qword_27F755430;
  if (!qword_27F755430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755430);
  }

  return result;
}

unint64_t sub_254E76850()
{
  result = qword_27F755438;
  if (!qword_27F755438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755438);
  }

  return result;
}

unint64_t sub_254E768A8()
{
  result = qword_27F755440;
  if (!qword_27F755440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755440);
  }

  return result;
}

unint64_t sub_254E76900()
{
  result = qword_27F755448;
  if (!qword_27F755448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755448);
  }

  return result;
}

unint64_t sub_254E76958()
{
  result = qword_27F755450;
  if (!qword_27F755450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755450);
  }

  return result;
}

unint64_t sub_254E769B0()
{
  result = qword_27F755458;
  if (!qword_27F755458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755458);
  }

  return result;
}

unint64_t sub_254E76A08()
{
  result = qword_27F755460;
  if (!qword_27F755460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755460);
  }

  return result;
}

uint64_t sub_254E76A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254E76AE4()
{

  return sub_254E9E48C();
}

uint64_t sub_254E76B04()
{

  return sub_254E9E52C();
}

uint64_t sub_254E76BE4()
{

  return sub_254E9E25C();
}

uint64_t sub_254E76C90()
{

  return sub_254E9E22C();
}

uint64_t OnScreenContentRequestParameters.contentTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84FA0];
  sub_254E6775C(&qword_27F755000);
  v2 = sub_254E9E0DC();
  sub_254E62BD4(v2);
  sub_254E797B0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_254EA03C0;
  sub_254E9E08C();
  a1[1] = sub_254E78858(v3);
  sub_254E797B0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_254EA03D0;
  sub_254E9E0BC();
  sub_254E9E09C();
  sub_254E9E0AC();
  result = sub_254E78858(v4);
  a1[2] = result;
  return result;
}

uint64_t OnScreenContentRequestParameters.appEntityFilteringArgs.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

__n128 OnScreenContentRequestParameters.appEntityFilteringArgs.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  return result;
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.assistantSchemaKinds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.coercibleFileTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.coercibleImageTypes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.init(assistantSchemaKinds:coercibleFileTypes:coercibleImageTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_254E6775C(&qword_27F755000);
  v8 = sub_254E9E0DC();
  sub_254E62BD4(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_254EA03C0;
  sub_254E9E08C();
  sub_254E78858(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_254EA03D0;
  sub_254E9E0BC();
  sub_254E9E09C();
  sub_254E9E0AC();
  sub_254E78858(v10);

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void static OnScreenContentRequestParameters.AppEntityFiltering.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (sub_254E74894(*a1, *a2))
  {
    sub_254E74A34();
    if (v2)
    {

      sub_254E74A34();
    }
  }
}

uint64_t sub_254E77240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000254EA56B0 == a2;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000254EA56D0 == a2;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000254EA56F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_254E77358(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000013;
}

uint64_t sub_254E773B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E77240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E773D8(uint64_t a1)
{
  v2 = sub_254E78B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E77414(uint64_t a1)
{
  v2 = sub_254E78B74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.encode(to:)(void *a1)
{
  v3 = sub_254E6775C(&qword_27F755478);
  sub_254E62124();
  v5 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  sub_254E6A434(a1, a1[3]);
  v11 = sub_254E78B74();

  sub_254E9E65C();
  v18 = v10;
  v17 = 0;
  sub_254E6775C(&qword_27F755480);
  sub_254E78BC8(&unk_280C3FE58);
  sub_254E62FB8();
  sub_254E79764();
  sub_254E9E59C();

  if (!v11)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_254E6775C(&qword_27F755488);
    sub_254E78C30(&unk_280C3FC50);
    sub_254E62FB8();
    sub_254E79764();
    sub_254E9E59C();
    v18 = v12;
    v17 = 2;
    sub_254E62FB8();
    sub_254E79764();
    sub_254E9E59C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t OnScreenContentRequestParameters.AppEntityFiltering.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_254E6775C(&qword_27F755490);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  sub_254E6775C(&qword_27F755000);
  v5 = sub_254E9E0DC();
  sub_254E62BD4(v5);
  sub_254E797B0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254EA03C0;
  sub_254E9E08C();
  sub_254E78858(v6);
  sub_254E797B0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254EA03D0;
  sub_254E9E0BC();
  sub_254E9E09C();
  sub_254E9E0AC();
  sub_254E78858(v7);
  sub_254E6A434(a1, a1[3]);
  sub_254E78B74();
  sub_254E9E64C();
  if (!v2)
  {
    sub_254E6775C(&qword_27F755480);
    sub_254E78BC8(&unk_280C3FC20);
    sub_254E9E50C();
    sub_254E6775C(&qword_27F755488);
    sub_254E78C30(&unk_280C3FC48);
    sub_254E62E70();
    sub_254E9E50C();

    sub_254E62E70();
    sub_254E9E50C();
    v9 = sub_254E63440();
    v10(v9);

    *a2 = v12;
    a2[1] = v12;
    a2[2] = v12;
  }

  sub_254E6A780(a1);
}

uint64_t OnScreenContentRequestParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a1 = 0;
  *(a1 + 8) = v2;
  result = OnScreenContentRequestParameters.AppEntityFiltering.init()((a1 + 16));
  *(a1 + 40) = 257;
  *(a1 + 48) = 0x4008000000000000;
  return result;
}

uint64_t OnScreenContentRequestParameters.init(sources:contentTypes:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = 0;
  result = OnScreenContentRequestParameters.AppEntityFiltering.init()((a3 + 16));
  *(a3 + 40) = 257;
  *(a3 + 48) = 0x4008000000000000;
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static OnScreenContentRequestParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 48);
  v5 = *(a2 + 40);
  v6 = *(a2 + 41);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  sub_254E73BDC();
  if (v10)
  {

    if (sub_254E74894(v9, v8))
    {
      sub_254E74A34();
      if (v11)
      {
        sub_254E74A34();
        v14 = v12;

        return (v4 == v7) & ~(v2 ^ v5 | ~v14 | v3 ^ v6);
      }
    }
  }

  return 0;
}

uint64_t sub_254E77C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEC00000073657079;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000254EA5710 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x8000000254EA5730 == a2;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x8000000254EA5750 == a2;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_254E9E5CC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254E77E6C(char a1)
{
  result = 0x73656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x54746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0x74756F656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E77F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E77C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E77F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E77E64();
  *a1 = result;
  return result;
}

uint64_t sub_254E77F90(uint64_t a1)
{
  v2 = sub_254E78CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E77FCC(uint64_t a1)
{
  v2 = sub_254E78CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnScreenContentRequestParameters.encode(to:)(void *a1)
{
  v4 = sub_254E6775C(&qword_27F755498);
  sub_254E62124();
  v6 = v5;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v23 = v10;
  v20 = v1[4];
  v21 = v12;
  LODWORD(v10) = *(v1 + 40);
  v19[2] = *(v1 + 41);
  v19[3] = v10;
  sub_254E6A434(a1, a1[3]);
  sub_254E78CB4();
  v13 = v4;
  sub_254E9E65C();
  v24 = v11;
  v27 = 0;
  sub_254E78D08();
  sub_254E79764();
  sub_254E9E59C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v4);
  }

  v15 = v21;
  v16 = v22;
  v17 = v20;
  v24 = v23;
  v27 = 1;
  sub_254E6775C(&qword_27F7554A0);
  sub_254E78D5C(&unk_280C3FC40);
  sub_254E79764();
  sub_254E9E59C();
  v24 = v16;
  v25 = v15;
  v26 = v17;
  v27 = 2;
  v18 = sub_254E78E24();

  sub_254E79764();
  sub_254E9E59C();

  if (!v18)
  {
    LOBYTE(v24) = 3;
    sub_254E79764();
    sub_254E9E57C();
    LOBYTE(v24) = 4;
    sub_254E79764();
    sub_254E9E57C();
    LOBYTE(v24) = 5;
    sub_254E79764();
    sub_254E9E58C();
  }

  return (*(v6 + 8))(v9, v13);
}

uint64_t OnScreenContentRequestParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_254E6775C(&qword_27F7554A8);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  sub_254E6775C(&qword_27F755000);
  v5 = sub_254E9E0DC();
  sub_254E62BD4(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254EA03C0;
  sub_254E9E08C();
  sub_254E78858(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254EA03D0;
  sub_254E9E0BC();
  sub_254E9E09C();
  sub_254E9E0AC();
  sub_254E78858(v7);
  sub_254E6A434(a1, a1[3]);
  sub_254E78CB4();
  sub_254E9E64C();
  if (v2)
  {
    sub_254E797BC();
    sub_254E6A780(a1);
    sub_254E79780();
    v29 = v32;
    v30 = v33;
    v31 = 0x4008000000000000;
  }

  else
  {
    sub_254E78EA8();
    sub_254E621C0();
    sub_254E9E50C();
    v20 = v28[0];
    sub_254E6775C(&qword_27F7554A0);
    sub_254E78D5C(&unk_280C3FC38);
    sub_254E621C0();
    sub_254E9E50C();
    v9 = v28[0];
    LOBYTE(v23) = 2;
    sub_254E78F50();
    sub_254E621C0();
    sub_254E9E50C();
    v10 = v28[0];
    v18 = v28[1];
    v19 = v28[2];

    sub_254E621C0();
    v11 = sub_254E9E4EC() & 1;
    LOBYTE(v28[0]) = 4;
    sub_254E621C0();
    v12 = sub_254E9E4EC() & 1;
    v27 = 5;
    sub_254E621C0();
    sub_254E9E4FC();
    v14 = v13;
    v15 = sub_254E62D28();
    v16(v15, v22);
    *&v23 = v20;
    *(&v23 + 1) = v9;
    *&v24 = v10;
    *(&v24 + 1) = v18;
    *&v25 = v19;
    BYTE8(v25) = v11;
    BYTE9(v25) = v12;
    v26 = v14;
    v17 = v24;
    *a2 = v23;
    *(a2 + 16) = v17;
    *(a2 + 32) = v25;
    *(a2 + 48) = v26;
    sub_254E78FA4(&v23, v28);
    sub_254E6A780(a1);
    sub_254E79780();
    v31 = v14;
  }

  return sub_254E78E78(v28);
}

uint64_t sub_254E78858(uint64_t a1)
{
  v2 = sub_254E9E0DC();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_254E6775C(&qword_27F7554C8);
  result = sub_254E9E3FC();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_254E79718(&unk_280C409A8);
    v14 = sub_254E9E22C();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_254E79718(&unk_280C409A0);
      v21 = sub_254E9E25C();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_254E78B74()
{
  result = qword_280C3FF58;
  if (!qword_280C3FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF58);
  }

  return result;
}

unint64_t sub_254E78BC8(uint64_t a1)
{
  result = sub_254E797C8(a1);
  if (!result)
  {
    sub_254E67858(&qword_27F755480);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254E78C30(uint64_t a1)
{
  result = sub_254E797C8(a1);
  if (!result)
  {
    v4 = v3;
    sub_254E67858(&qword_27F755488);
    sub_254E79718(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254E78CB4()
{
  result = qword_280C3FF70;
  if (!qword_280C3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF70);
  }

  return result;
}

unint64_t sub_254E78D08()
{
  result = qword_280C3FCE0;
  if (!qword_280C3FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FCE0);
  }

  return result;
}

unint64_t sub_254E78D5C(uint64_t a1)
{
  result = sub_254E797C8(a1);
  if (!result)
  {
    v4 = v3;
    sub_254E67858(&qword_27F7554A0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254E78DD0()
{
  result = qword_280C3FD20;
  if (!qword_280C3FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FD20);
  }

  return result;
}

unint64_t sub_254E78E24()
{
  result = qword_280C3FCD0;
  if (!qword_280C3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FCD0);
  }

  return result;
}

unint64_t sub_254E78EA8()
{
  result = qword_280C3FCD8;
  if (!qword_280C3FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FCD8);
  }

  return result;
}

unint64_t sub_254E78EFC()
{
  result = qword_280C3FD18;
  if (!qword_280C3FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FD18);
  }

  return result;
}

unint64_t sub_254E78F50()
{
  result = qword_280C3FCC8;
  if (!qword_280C3FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FCC8);
  }

  return result;
}

__n128 sub_254E78FDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_254E78FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254E79038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_254E79094(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254E790A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254E790E8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OnScreenContentRequestParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OnScreenContentRequestParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OnScreenContentRequestParameters.AppEntityFiltering.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254E7937C()
{
  result = qword_27F7554B0;
  if (!qword_27F7554B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7554B0);
  }

  return result;
}

unint64_t sub_254E793D4()
{
  result = qword_27F7554B8;
  if (!qword_27F7554B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7554B8);
  }

  return result;
}

unint64_t sub_254E7942C()
{
  result = qword_280C3FF60;
  if (!qword_280C3FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF60);
  }

  return result;
}

unint64_t sub_254E79484()
{
  result = qword_280C3FF68;
  if (!qword_280C3FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF68);
  }

  return result;
}

unint64_t sub_254E794DC()
{
  result = qword_280C3FF48;
  if (!qword_280C3FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF48);
  }

  return result;
}

unint64_t sub_254E79534()
{
  result = qword_280C3FF50;
  if (!qword_280C3FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF50);
  }

  return result;
}

uint64_t sub_254E79588(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_254E6775C(&qword_27F7554C0);
  result = sub_254E9E3FC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_254E9E5FC();

    sub_254E9E29C();
    result = sub_254E9E63C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_254E9E5CC() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_254E79718(uint64_t a1)
{
  result = sub_254E797C8(a1);
  if (!result)
  {
    sub_254E9E0DC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_254E79780()
{
  *(v7 - 152) = v0;
  *(v7 - 144) = v2;
  *(v7 - 136) = v6;
  *(v7 - 128) = v4;
  *(v7 - 120) = v3;
  *(v7 - 112) = v1;
  *(v7 - 111) = v5;
}

unint64_t sub_254E79810()
{
  result = qword_280C3FF80;
  if (!qword_280C3FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF80);
  }

  return result;
}

unint64_t sub_254E79868()
{
  result = qword_27F7554D0;
  if (!qword_27F7554D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7554D0);
  }

  return result;
}

unint64_t sub_254E79974()
{
  result = qword_280C3FF88[0];
  if (!qword_280C3FF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3FF88);
  }

  return result;
}

unint64_t sub_254E799E4()
{
  result = qword_280C3FF78;
  if (!qword_280C3FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FF78);
  }

  return result;
}

IntelligenceFlowContext::OnScreenContentSources sub_254E79AE8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = OnScreenContentSources.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_254E79B28@<X0>(uint64_t *a1@<X8>)
{
  result = OnScreenContentSources.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OnScreenContentSources(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OnScreenContentSources(uint64_t result, int a2, int a3)
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

uint64_t static OnScreenContentType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_254E76AA8(*a2, 0);
      sub_254E76AA8(v2, 0);
      sub_254E62FC8();
      sub_254E6FD40();
      v7 = v10;
      sub_254E76AAC(v2, 0);
      v8 = v4;
      v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_254E76AA8(*a2, 1u);
      sub_254E76AA8(v2, 1u);
      sub_254E62FC8();
      sub_254E74680();
      v7 = v6;
      sub_254E76AAC(v2, 1u);
      v8 = v4;
      v9 = 1;
LABEL_7:
      sub_254E76AAC(v8, v9);
      return v7 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_254E76AAC(0, 2u);
      sub_254E76AAC(0, 2u);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != 1)
  {
LABEL_19:
    sub_254E76AA8(*a2, *(a2 + 8));
    sub_254E76AA8(v2, v3);
    sub_254E76AAC(v2, v3);
    sub_254E76AAC(v4, v5);
    return 0;
  }

  v13 = 1;
  sub_254E76AAC(1, 2u);
  sub_254E76AAC(1, 2u);
  return v13;
}

uint64_t sub_254E79D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701603686 && a2 == 0xE400000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254E9E5CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_254E79E74(char a1)
{
  result = 0x797469746E65;
  switch(a1)
  {
    case 1:
      result = 1701603686;
      break;
    case 2:
      result = 0x746E656D75636F64;
      break;
    case 3:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E79EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E79D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E79F18(uint64_t a1)
{
  v2 = sub_254E7A628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E79F54(uint64_t a1)
{
  v2 = sub_254E7A628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E79F90(uint64_t a1)
{
  v2 = sub_254E7A6D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E79FCC(uint64_t a1)
{
  v2 = sub_254E7A6D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7A008(uint64_t a1)
{
  v2 = sub_254E7A778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7A044(uint64_t a1)
{
  v2 = sub_254E7A778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7A080(uint64_t a1)
{
  v2 = sub_254E7A724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7A0BC(uint64_t a1)
{
  v2 = sub_254E7A724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7A0F8(uint64_t a1)
{
  v2 = sub_254E7A67C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7A134(uint64_t a1)
{
  v2 = sub_254E7A67C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnScreenContentType.encode(to:)()
{
  sub_254E6775C(&qword_27F7554D8);
  sub_254E62124();
  v40 = v2;
  v41 = v1;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v3);
  sub_254E62158();
  v39 = v4;
  sub_254E6775C(&qword_27F7554E0);
  sub_254E62124();
  v37 = v6;
  v38 = v5;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  v36 = v8;
  sub_254E6775C(&qword_27F7554E8);
  sub_254E62124();
  v34 = v10;
  v35 = v9;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_254E6775C(&qword_27F7554F0);
  sub_254E62124();
  v33 = v15;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  sub_254E6775C(&qword_27F7554F8);
  sub_254E62124();
  v42 = v20;
  v43 = v19;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = *v0;
  v25 = *(v0 + 8);
  v26 = sub_254E62FC8();
  sub_254E6A434(v26, v27);
  sub_254E7A628();
  sub_254E9E65C();
  if (!v25)
  {
    LOBYTE(v44) = 2;
    sub_254E7A6D0();
    v28 = v36;
    sub_254E636B0();
    v44 = v24;
    sub_254E6775C(&qword_27F7553B8);
    sub_254E7B220(&qword_27F7553C0, &qword_280C3FDE8);
    v29 = v38;
    sub_254E62E88();
    v30 = v37;
    goto LABEL_5;
  }

  if (v25 == 1)
  {
    LOBYTE(v44) = 3;
    sub_254E7A67C();
    v28 = v39;
    sub_254E636B0();
    v44 = v24;
    sub_254E6775C(&qword_27F755398);
    sub_254E7B194(&qword_27F7553A0, &qword_27F7553A8);
    v29 = v41;
    sub_254E62E88();
    v30 = v40;
LABEL_5:
    (*(v30 + 8))(v28, v29);
    return (*(v42 + 8))(v23, v13);
  }

  v32 = (v42 + 8);
  if (v24)
  {
    LOBYTE(v44) = 1;
    sub_254E7A724();
    sub_254E76B04();
    (*(v34 + 8))(v13, v35);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_254E7A778();
    sub_254E76B04();
    (*(v33 + 8))(v18, v14);
  }

  return (*v32)(v23, v24);
}

unint64_t sub_254E7A628()
{
  result = qword_27F755500;
  if (!qword_27F755500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755500);
  }

  return result;
}

unint64_t sub_254E7A67C()
{
  result = qword_27F755508;
  if (!qword_27F755508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755508);
  }

  return result;
}

unint64_t sub_254E7A6D0()
{
  result = qword_27F755510;
  if (!qword_27F755510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755510);
  }

  return result;
}

unint64_t sub_254E7A724()
{
  result = qword_27F755518;
  if (!qword_27F755518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755518);
  }

  return result;
}

unint64_t sub_254E7A778()
{
  result = qword_27F755520;
  if (!qword_27F755520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755520);
  }

  return result;
}

void OnScreenContentType.hash(into:)()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x259C2B8B0](3);

      sub_254E75F7C();
    }

    else
    {
      MEMORY[0x259C2B8B0](*v0 != 0);
    }
  }

  else
  {
    MEMORY[0x259C2B8B0](2);

    sub_254E71940();
  }
}

uint64_t OnScreenContentType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_254E9E5FC();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x259C2B8B0](3);
      sub_254E75F7C();
    }

    else
    {
      MEMORY[0x259C2B8B0](v1 != 0);
    }
  }

  else
  {
    MEMORY[0x259C2B8B0](2);
    sub_254E71940();
  }

  return sub_254E9E63C();
}

uint64_t OnScreenContentType.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v69 = sub_254E6775C(&qword_27F755528);
  sub_254E62124();
  v72 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  sub_254E62158();
  v76 = v5;
  sub_254E6775C(&qword_27F755530);
  sub_254E62124();
  v70 = v6;
  v71 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  sub_254E62158();
  v75 = v9;
  v74 = sub_254E6775C(&qword_27F755538);
  sub_254E62124();
  v68 = v10;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = sub_254E6775C(&qword_27F755540);
  sub_254E62124();
  v67 = v15;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = sub_254E6775C(&qword_27F755548);
  sub_254E62124();
  v21 = v20;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v77 = a1;
  v25 = sub_254E62FC8();
  sub_254E6A434(v25, v26);
  sub_254E7A628();
  v27 = v78;
  sub_254E9E64C();
  if (v27)
  {
    return sub_254E6A780(v77);
  }

  v64 = v14;
  v65 = v18;
  v66 = v13;
  v28 = v74;
  v78 = v21;
  v29 = sub_254E9E51C();
  result = sub_254E734E0(v29, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_7;
  }

  v63 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    return result;
  }

  v62 = *(v31 + v32);
  sub_254E734D4(v32 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_7:
    v44 = v78;
    v45 = sub_254E9E43C();
    swift_allocError();
    v47 = v46;
    sub_254E6775C(&qword_27F755138);
    *v47 = &type metadata for OnScreenContentType;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v24, v19);
    return sub_254E6A780(v77);
  }

  v38 = v73;
  switch(v62)
  {
    case 1:
      v48 = v28;
      LOBYTE(v79) = 1;
      sub_254E7A724();
      v49 = v66;
      sub_254E63454();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v49, v48);
      v50 = sub_254E62BE4();
      v51(v50);
      v43 = 2;
      v42 = 1;
      goto LABEL_12;
    case 2:
      LOBYTE(v79) = 2;
      sub_254E7A6D0();
      sub_254E63454();
      sub_254E6775C(&qword_27F7553B8);
      sub_254E7B220(&qword_27F755400, &qword_280C3FDE0);
      sub_254E9E50C();
      swift_unknownObjectRelease();
      v52 = sub_254E7B9B0();
      v53(v52);
      v54 = sub_254E62BE4();
      v55(v54);
      v43 = 0;
      v42 = v79;
      v56 = v77;
      break;
    case 3:
      LOBYTE(v79) = 3;
      sub_254E7A67C();
      sub_254E63454();
      sub_254E6775C(&qword_27F755398);
      sub_254E7B194(&qword_27F7553F0, &qword_27F7553F8);
      sub_254E9E50C();
      swift_unknownObjectRelease();
      v57 = sub_254E62D38();
      v58(v57);
      v59 = sub_254E62BE4();
      v60(v59);
      v42 = v79;
      v43 = 1;
      v56 = v77;
      v38 = v73;
      break;
    default:
      LOBYTE(v79) = 0;
      sub_254E7A778();
      v39 = v65;
      sub_254E63454();
      swift_unknownObjectRelease();
      (*(v67 + 8))(v39, v64);
      v40 = sub_254E62BE4();
      v41(v40);
      v42 = 0;
      v43 = 2;
LABEL_12:
      v56 = v77;
      break;
  }

  *v38 = v42;
  *(v38 + 8) = v43;
  return sub_254E6A780(v56);
}

uint64_t sub_254E7B144()
{
  sub_254E9E5FC();
  OnScreenContentType.hash(into:)();
  return sub_254E9E63C();
}

uint64_t sub_254E7B194(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F755398);
    sub_254E7B2AC(a2, MEMORY[0x277D74500]);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E7B220(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F7553B8);
    sub_254E7B2AC(a2, MEMORY[0x277D85578]);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E7B2AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254E7B2F8()
{
  result = qword_280C40048[0];
  if (!qword_280C40048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C40048);
  }

  return result;
}

uint64_t sub_254E7B34C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for OnScreenContentType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254E7B484(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_254E7B534()
{
  result = qword_27F755550;
  if (!qword_27F755550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755550);
  }

  return result;
}

unint64_t sub_254E7B58C()
{
  result = qword_27F755558;
  if (!qword_27F755558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755558);
  }

  return result;
}

unint64_t sub_254E7B5E4()
{
  result = qword_27F755560;
  if (!qword_27F755560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755560);
  }

  return result;
}

unint64_t sub_254E7B63C()
{
  result = qword_27F755568;
  if (!qword_27F755568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755568);
  }

  return result;
}

unint64_t sub_254E7B694()
{
  result = qword_27F755570;
  if (!qword_27F755570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755570);
  }

  return result;
}

unint64_t sub_254E7B6EC()
{
  result = qword_27F755578;
  if (!qword_27F755578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755578);
  }

  return result;
}

unint64_t sub_254E7B744()
{
  result = qword_27F755580;
  if (!qword_27F755580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755580);
  }

  return result;
}

unint64_t sub_254E7B79C()
{
  result = qword_27F755588;
  if (!qword_27F755588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755588);
  }

  return result;
}

unint64_t sub_254E7B7F4()
{
  result = qword_27F755590;
  if (!qword_27F755590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755590);
  }

  return result;
}

unint64_t sub_254E7B84C()
{
  result = qword_27F755598;
  if (!qword_27F755598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755598);
  }

  return result;
}

unint64_t sub_254E7B8A4()
{
  result = qword_27F7555A0;
  if (!qword_27F7555A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7555A0);
  }

  return result;
}

unint64_t sub_254E7B8FC()
{
  result = qword_27F7555A8;
  if (!qword_27F7555A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7555A8);
  }

  return result;
}

unint64_t sub_254E7B954()
{
  result = qword_27F7555B0;
  if (!qword_27F7555B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7555B0);
  }

  return result;
}

uint64_t sub_254E7B9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DetectedEntityDetails.isSelected.setter(char a1)
{
  result = sub_254E8C870();
  *(v1 + v4) = a1;
  return result;
}

uint64_t DetectedEntityDetails.isSelected.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedEntityDetails(v0);
  return sub_254E7353C();
}

uint64_t DetectedEntityDetails.init(_:isSelected:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_254E8C460();
  sub_254E7D720();
  result = sub_254E8C870();
  *(a2 + v5) = a1;
  return result;
}

uint64_t static DetectedEntityDetails.== infix(_:_:)()
{
  sub_254E737F0();
  static DetectedEntity.== infix(_:_:)();
  if (v2)
  {
    sub_254E8C870();
    v4 = *(v1 + v3) ^ *(v0 + v3) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void static DetectedEntity.== infix(_:_:)()
{
  sub_254E7392C();
  v66 = v4;
  v67 = v5;
  v6 = type metadata accessor for DetectedAppEntity(0);
  v7 = sub_254E62CE8(v6);
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  v62[2] = v9 - v8;
  v10 = sub_254E8C9FC();
  v11 = type metadata accessor for DetectedLink(v10);
  v12 = sub_254E62CE8(v11);
  MEMORY[0x28223BE20](v12);
  sub_254E62F5C();
  v62[1] = v14 - v13;
  v15 = sub_254E8C9FC();
  v16 = type metadata accessor for DetectedDate(v15);
  v17 = sub_254E62CE8(v16);
  MEMORY[0x28223BE20](v17);
  sub_254E62F5C();
  v62[0] = v19 - v18;
  v20 = sub_254E8C9FC();
  type metadata accessor for DetectedEntity(v20);
  sub_254E62148();
  MEMORY[0x28223BE20](v21);
  sub_254E73770();
  v64 = (v22 - v23);
  sub_254E76BD8();
  MEMORY[0x28223BE20](v24);
  sub_254E8C8E0();
  v65 = v25;
  sub_254E76BD8();
  MEMORY[0x28223BE20](v26);
  sub_254E8CBC8();
  MEMORY[0x28223BE20](v27);
  sub_254E8CBB4();
  MEMORY[0x28223BE20](v28);
  sub_254E8C8E0();
  v63 = v29;
  sub_254E76BD8();
  MEMORY[0x28223BE20](v30);
  sub_254E8CBDC();
  MEMORY[0x28223BE20](v31);
  sub_254E8C8E0();
  v62[3] = v32;
  sub_254E76BD8();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (v62 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (v62 - v37);
  v39 = sub_254E6775C(&qword_27F7555B8);
  sub_254E62CE8(v39);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v40);
  sub_254E8C558();
  v42 = v0 + *(v41 + 56);
  sub_254E80F3C();
  v67 = v42;
  sub_254E80F3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_254E62AC4();
      sub_254E80F3C();
      v52 = *v36;
      v51 = v36[1];
      if (sub_254E8C908() == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    case 2u:
      sub_254E62AC4();
      sub_254E80F3C();
      sub_254E8C6B4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      sub_254E62FD4();
      sub_254E7D720();
      sub_254E8C8C8();
      _s23IntelligenceFlowContext12DetectedLinkV2eeoiySbAC_ACtFZ_0();
      goto LABEL_12;
    case 3u:
      sub_254E62AC4();
      sub_254E80F3C();
      memcpy(v73, v1, 0x80uLL);
      sub_254E8C6B4();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_254E8C8B0();
        memcpy(v45, v46, v47);
        memcpy(v69, v1, sizeof(v69));
        sub_254E8C8B0();
        memcpy(v48, v49, v50);
        static AddressComponents.== infix(_:_:)(v69, v68);
        memcpy(v71, v68, sizeof(v71));
        sub_254E80E3C(v73, v72);
        sub_254E80E3C(v70, v72);
        sub_254E80E74(v71);
        memcpy(v72, v69, sizeof(v72));
        sub_254E80E74(v72);
        sub_254E7D7A8(v70);
        sub_254E7D7A8(v73);
        goto LABEL_39;
      }

      sub_254E7D7A8(v73);
      goto LABEL_36;
    case 4u:
      sub_254E62AC4();
      v43 = v63;
      sub_254E80F3C();
      memcpy(v73, v43, 0x50uLL);
      v44 = v67;
      sub_254E8C6B4();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        memcpy(v72, v44, 0x50uLL);
        memcpy(v71, v43, 0x50uLL);
        memcpy(v70, v44, 0x50uLL);
        static DetectedPerson.== infix(_:_:)(v71, v70);
        sub_254E7D778(v72);
        sub_254E7D778(v73);
        goto LABEL_39;
      }

      sub_254E7D778(v73);
      goto LABEL_36;
    case 5u:
      sub_254E62AC4();
      sub_254E8CB70();
      sub_254E80F3C();
      v52 = *v2;
      v51 = v2[1];
      if (sub_254E8C908() != 5)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    case 6u:
      sub_254E62AC4();
      sub_254E80F3C();
      v52 = *v3;
      v51 = v3[1];
      if (sub_254E8C908() != 6)
      {
        goto LABEL_30;
      }

LABEL_18:
      v53 = *v38;
      v54 = v38[1];
      if (v52 != v53 || v51 != v54)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    case 7u:
      sub_254E62AC4();
      sub_254E80F3C();
      sub_254E8C6B4();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_35;
      }

      sub_254E8C50C();
      sub_254E7D720();
      sub_254E8C8C8();
      static DetectedAppEntity.== infix(_:_:)();
LABEL_12:
      sub_254E7D6CC();
      sub_254E7D6CC();
      goto LABEL_39;
    case 8u:
      sub_254E62AC4();
      v56 = v64;
      sub_254E80F3C();
      v58 = *v56;
      v57 = v56[1];
      if (sub_254E8C908() != 8)
      {
LABEL_30:

        goto LABEL_36;
      }

      v59 = *v38;
      v60 = v38[1];
      if (v58 != v59 || v57 != v60)
      {
LABEL_28:
        sub_254E9E5CC();
      }

LABEL_29:

LABEL_39:
      sub_254E636D4();
      goto LABEL_40;
    default:
      sub_254E62AC4();
      sub_254E80F3C();
      sub_254E8C6B4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_254E62D4C();
LABEL_35:
        sub_254E7D6CC();
LABEL_36:
        sub_254E89D2C(v0, &qword_27F7555B8);
      }

      else
      {
        sub_254E8C4DC();
        sub_254E7D720();
        static DetectedDate.== infix(_:_:)();
        sub_254E7D6CC();
        sub_254E8C8D4();
        sub_254E7D6CC();
        sub_254E636D4();
LABEL_40:
        sub_254E7D6CC();
      }

      sub_254E738E4();
      return;
  }
}

uint64_t sub_254E7C2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465)
  {

    return 1;
  }

  else
  {
    v7 = sub_254E9E5CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254E7C374(char a1)
{
  if (a1)
  {
    return 0x7463656C65537369;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_254E7C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E7C2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E7C3DC(uint64_t a1)
{
  v2 = sub_254E80EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7C418(uint64_t a1)
{
  v2 = sub_254E80EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetectedEntityDetails.encode(to:)()
{
  v2 = sub_254E6775C(&qword_27F7555C0);
  sub_254E62124();
  v4 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E8C588();
  v6 = sub_254E8C6B4();
  sub_254E73820(v6, v7);
  sub_254E80EA4();
  sub_254E8C8BC();
  sub_254E9E65C();
  type metadata accessor for DetectedEntity(0);
  sub_254E8C6C0();
  sub_254E80EF8(v8, v9);
  sub_254E8CA2C();
  sub_254E9E59C();
  if (!v0)
  {
    type metadata accessor for DetectedEntityDetails(0);
    sub_254E73814();
    sub_254E8CA2C();
    sub_254E9E57C();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t DetectedEntityDetails.hash(into:)()
{
  DetectedEntity.hash(into:)();
  sub_254E8C870();
  return sub_254E9E61C();
}

uint64_t DetectedEntityDetails.hashValue.getter()
{
  sub_254E73A88();
  DetectedEntity.hash(into:)();
  sub_254E8C870();
  sub_254E9E61C();
  return sub_254E9E63C();
}

void DetectedEntityDetails.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  type metadata accessor for DetectedEntity(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v4);
  sub_254E62F5C();
  v17 = sub_254E6775C(&qword_27F7555C8);
  sub_254E62124();
  v16 = v5;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_254E8C860();
  v8 = type metadata accessor for DetectedEntityDetails(v7);
  sub_254E62148();
  MEMORY[0x28223BE20](v9);
  sub_254E62F5C();
  v12 = v11 - v10;
  sub_254E73820(v3, v3[3]);
  sub_254E80EA4();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v3);
  }

  else
  {
    sub_254E8C6C0();
    sub_254E80EF8(v13, v14);
    sub_254E739E0();
    sub_254E9E50C();
    sub_254E8C460();
    sub_254E7D720();
    sub_254E73814();
    sub_254E739E0();
    v15 = sub_254E9E4EC();
    (*(v16 + 8))(v1, v17);
    *(v12 + *(v8 + 20)) = v15 & 1;
    sub_254E80F3C();
    sub_254E6A780(v3);
    sub_254E7D6CC();
  }

  sub_254E62F78();
}

uint64_t sub_254E7C8EC()
{
  sub_254E9E5FC();
  DetectedEntity.hash(into:)();
  sub_254E9E61C();
  return sub_254E9E63C();
}

uint64_t DetectedEntity.type.getter()
{
  v1 = sub_254E73920();
  type metadata accessor for DetectedEntity(v1);
  sub_254E62148();
  MEMORY[0x28223BE20](v2);
  sub_254E62F5C();
  sub_254E62AC4();
  sub_254E80F3C();
  sub_254E8CC20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      result = sub_254E7D6CC();
      v4 = 1;
      goto LABEL_13;
    case 2u:
      v5 = 2;
      goto LABEL_7;
    case 3u:
      result = sub_254E7D6CC();
      v4 = 3;
      goto LABEL_13;
    case 4u:
      result = sub_254E7D6CC();
      v4 = 4;
      goto LABEL_13;
    case 5u:
      result = sub_254E7D6CC();
      v4 = 5;
      goto LABEL_13;
    case 6u:
      result = sub_254E7D6CC();
      v4 = 6;
      goto LABEL_13;
    case 7u:
      v5 = 7;
LABEL_7:
      *v0 = v5;
      return sub_254E7D6CC();
    case 8u:
      result = sub_254E7D6CC();
      v4 = 8;
LABEL_13:
      *v0 = v4;
      return result;
    default:
      *v0 = 0;
      return sub_254E7D6CC();
  }
}

uint64_t DetectedEntity.description.getter()
{
  v1 = type metadata accessor for DetectedAppEntity(0);
  v2 = sub_254E62CE8(v1);
  MEMORY[0x28223BE20](v2);
  sub_254E62F5C();
  v3 = type metadata accessor for DetectedLink(0);
  v4 = sub_254E62CE8(v3);
  MEMORY[0x28223BE20](v4);
  sub_254E62F5C();
  sub_254E8CB88();
  v5 = type metadata accessor for DetectedDate(0);
  v6 = sub_254E62CE8(v5);
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  type metadata accessor for DetectedEntity(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  sub_254E737E4();
  sub_254E62AC4();
  sub_254E8C968();
  sub_254E80F3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_254E8C828();
      sub_254E9E40C();

      v16 = 0x754E20656E6F6850;
      v17 = 1919246957;
      goto LABEL_11;
    case 2u:
      sub_254E62FD4();
      sub_254E7D720();
      sub_254E8CB64();
      v27[0] = v8;
      v27[1] = v9;
      sub_254E9DD6C();
      sub_254E62BF8();
      sub_254E80EF8(v10, v11);
      v12 = sub_254E9E5BC();
      MEMORY[0x259C2B550](v12);

      sub_254E8C738();
      goto LABEL_7;
    case 3u:
      memcpy(v27, v0, sizeof(v27));
      sub_254E8C94C();
      v25 = v13;
      v26 = v14;
      memcpy(v24, v0, sizeof(v24));
      v15 = AddressComponents.description.getter();
      MEMORY[0x259C2B550](v15);

      sub_254E7D7A8(v27);
      return sub_254E8C968();
    case 4u:
      memcpy(v27, v0, 0x50uLL);
      memcpy(v24, v0, 0x50uLL);
      DetectedPerson.description.getter();
      sub_254E8CA08();
      sub_254E7D778(v27);
      return sub_254E8C968();
    case 5u:
      sub_254E8C984();
      v27[0] = v18;
      v27[1] = v19;
      MEMORY[0x259C2B550]();
      goto LABEL_14;
    case 6u:
      sub_254E8C828();
      sub_254E9E40C();

      sub_254E8C924();
LABEL_11:
      v27[0] = v16;
      v27[1] = v17 | 0xEE00203A00000000;
      goto LABEL_13;
    case 7u:
      sub_254E8C50C();
      sub_254E7D720();
      DetectedAppEntity.description.getter();
      sub_254E8CA08();
      sub_254E8C4F4();
      goto LABEL_7;
    case 8u:
      sub_254E8C828();
      sub_254E9E40C();

      sub_254E8C7DC();
      v27[0] = v21;
      v27[1] = v20;
LABEL_13:
      v22 = sub_254E8C8D4();
      MEMORY[0x259C2B550](v22);
LABEL_14:

      break;
    default:
      sub_254E8C4DC();
      sub_254E8C9D8();
      sub_254E7D720();
      DetectedDate.description.getter();
      sub_254E8CA08();
      sub_254E62D4C();
LABEL_7:
      sub_254E7D6CC();
      break;
  }

  return sub_254E8C968();
}

void static DetectedDate.== infix(_:_:)()
{
  sub_254E7392C();
  v2 = sub_254E9DCDC();
  sub_254E62124();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254E62F5C();
  v8 = v7 - v6;
  v9 = sub_254E6775C(&qword_27F7555D8);
  sub_254E62CE8(v9);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E8C558();
  v11 = sub_254E6775C(&qword_27F7555E0);
  sub_254E62148();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v12);
  sub_254E8CB88();
  v13 = sub_254E8C8C8();
  if (MEMORY[0x259C2AF70](v13))
  {
    type metadata accessor for DetectedDate(0);
    v14 = *(v11 + 48);
    sub_254E89CD4();
    sub_254E89CD4();
    sub_254E8C600(v0);
    if (!v15)
    {
      sub_254E8C8D4();
      sub_254E89CD4();
      sub_254E8C600(v0 + v14);
      if (!v15)
      {
        (*(v4 + 32))(v8, v0 + v14, v2);
        sub_254E63474();
        sub_254E80EF8(v16, v17);
        sub_254E8CC08();
        sub_254E9E25C();
        v18 = *(v4 + 8);
        v19 = sub_254E62CF4();
        v18(v19);
        (v18)(v1, v2);
        sub_254E89D2C(v0, &qword_27F7555D8);
        goto LABEL_11;
      }

      (*(v4 + 8))(v1, v2);
LABEL_10:
      sub_254E89D2C(v0, &qword_27F7555E0);
      goto LABEL_11;
    }

    sub_254E8C600(v0 + v14);
    if (!v15)
    {
      goto LABEL_10;
    }

    sub_254E89D2C(v0, &qword_27F7555D8);
  }

LABEL_11:
  sub_254E738E4();
}

uint64_t static DetectedAddress.== infix(_:_:)()
{
  sub_254E737F0();
  sub_254E8C8B0();
  memcpy(v2, v3, v4);
  memcpy(__dst, v0, sizeof(__dst));
  v5 = static AddressComponents.== infix(_:_:)(v1, v0);
  memcpy(v12, v0, sizeof(v12));
  sub_254E875A8(&v10, v13);
  sub_254E875A8(__dst, v13);
  sub_254E80E74(v12);
  sub_254E8C8B0();
  memcpy(v6, v7, v8);
  sub_254E80E74(v13);
  return v5 & 1;
}

uint64_t static DetectedPerson.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v20 = a1[9];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[5];
  v9 = a2[6];
  v21 = a2[7];
  v22 = a1[7];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  v17 = a2[8];
  v18 = a1[8];
  v19 = a2[9];
  if (!v10 && (sub_254E9E5CC() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = v2 == v7 && v3 == v6;
    if (!v11 && (sub_254E9E5CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = sub_254E62CF4();
  if (sub_254E74894(v12, v13))
  {
    if (v5)
    {
      if (!v9)
      {
        return 0;
      }

      v14 = v4 == v8 && v5 == v9;
      if (!v14 && (sub_254E9E5CC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (sub_254E74894(v22, v21))
    {
      if (v20)
      {
        if (v19)
        {
          v15 = v18 == v17 && v20 == v19;
          if (v15 || (sub_254E9E5CC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v19)
      {
        return 1;
      }
    }
  }

  return 0;
}

void static DetectedAppEntity.== infix(_:_:)()
{
  sub_254E7392C();
  sub_254E8C668();
  v5 = sub_254E9E16C();
  sub_254E62124();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254E62F5C();
  sub_254E73A04();
  v9 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v9);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E636EC();
  v11 = sub_254E6775C(&qword_27F7555F0);
  sub_254E62148();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v12);
  sub_254E8C588();
  v13 = v1[1];
  v14 = v0[1];
  if (!v13)
  {
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_10:
    v16 = v1[3];
    v17 = v0[3];
    if (v16)
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = v1[2] == v0[2] && v16 == v17;
      if (!v18 && (sub_254E9E5CC() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
      goto LABEL_28;
    }

    v25 = v7;
    type metadata accessor for DetectedAppEntity(0);
    v19 = *(v11 + 48);
    sub_254E89CD4();
    sub_254E89CD4();
    sub_254E8C600(v3);
    if (v15)
    {
      sub_254E8C600(v3 + v19);
      if (v15)
      {
        sub_254E89D2C(v3, &qword_27F755158);
        goto LABEL_28;
      }
    }

    else
    {
      sub_254E8C9D8();
      sub_254E89CD4();
      sub_254E8C600(v3 + v19);
      if (!v20)
      {
        sub_254E8CBF0();
        v21(v2, v3 + v19, v5);
        sub_254E8C48C();
        sub_254E80EF8(v22, v23);
        sub_254E8C940();
        sub_254E9E25C();
        v24 = *(v25 + 8);
        v24(v2, v5);
        v24(v4, v5);
        sub_254E89D2C(v3, &qword_27F755158);
        goto LABEL_28;
      }

      (*(v25 + 8))(v4, v5);
    }

    sub_254E89D2C(v3, &qword_27F7555F0);
    goto LABEL_28;
  }

  if (v14)
  {
    v15 = *v1 == *v0 && v13 == v14;
    if (v15 || (sub_254E9E5CC() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  sub_254E738E4();
}

uint64_t _s23IntelligenceFlowContext13DetectedPlaceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_254E9E5CC();
  }
}

uint64_t sub_254E7D6CC()
{
  v1 = sub_254E73524();
  v2(v1);
  sub_254E62148();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_254E7D720()
{
  sub_254E737F0();
  v1(0);
  sub_254E62148();
  v2 = sub_254E62CF4();
  v3(v2);
  return v0;
}

uint64_t sub_254E7D7D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1802398060 && a2 == 0xE400000000000000;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6563616C70 && a2 == 0xE500000000000000;
            if (v10 || (sub_254E9E5CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974;
              if (v11 || (sub_254E9E5CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
                if (v12 || (sub_254E9E5CC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_254E9E5CC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254E7DAAC(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6D754E656E6F6870;
      break;
    case 2:
      result = 1802398060;
      break;
    case 3:
      result = 0x73736572646461;
      break;
    case 4:
      result = 0x6E6F73726570;
      break;
    case 5:
      result = 0x6563616C70;
      break;
    case 6:
      result = 0x617A696E6167726FLL;
      break;
    case 7:
      result = 0x7469746E45707061;
      break;
    case 8:
      result = 0x6E65746E49707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E7DBA8(uint64_t a1)
{
  v2 = sub_254E87928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DBE4(uint64_t a1)
{
  v2 = sub_254E87928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DC20(uint64_t a1)
{
  v2 = sub_254E876DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DC5C(uint64_t a1)
{
  v2 = sub_254E876DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DC98(uint64_t a1)
{
  v2 = sub_254E87634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DCD4(uint64_t a1)
{
  v2 = sub_254E87634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E7D7D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E7DD40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E7DAA4();
  *a1 = result;
  return result;
}

uint64_t sub_254E7DD68(uint64_t a1)
{
  v2 = sub_254E875E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DDA4(uint64_t a1)
{
  v2 = sub_254E875E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DDE0(uint64_t a1)
{
  v2 = sub_254E87ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DE1C(uint64_t a1)
{
  v2 = sub_254E87ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DE58(uint64_t a1)
{
  v2 = sub_254E879D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DE94(uint64_t a1)
{
  v2 = sub_254E879D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DED0(uint64_t a1)
{
  v2 = sub_254E87730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DF0C(uint64_t a1)
{
  v2 = sub_254E87730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DF48(uint64_t a1)
{
  v2 = sub_254E87880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DF84(uint64_t a1)
{
  v2 = sub_254E87880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7DFC0(uint64_t a1)
{
  v2 = sub_254E87A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7DFFC(uint64_t a1)
{
  v2 = sub_254E87A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E7E038(uint64_t a1)
{
  v2 = sub_254E877D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E7E074(uint64_t a1)
{
  v2 = sub_254E877D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void DetectedEntity.encode(to:)()
{
  sub_254E73838();
  v3 = v2;
  v77 = sub_254E6775C(&qword_27F755600);
  sub_254E62124();
  v66 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E62158();
  v76 = v6;
  sub_254E6775C(&qword_27F755608);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  v8 = sub_254E8C9FC();
  type metadata accessor for DetectedAppEntity(v8);
  sub_254E62148();
  MEMORY[0x28223BE20](v9);
  sub_254E62F5C();
  v75 = sub_254E6775C(&qword_27F755610);
  sub_254E62124();
  v65 = v10;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  sub_254E62158();
  v74 = v12;
  v73 = sub_254E6775C(&qword_27F755618);
  sub_254E62124();
  v64 = v13;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v14);
  sub_254E62158();
  v72 = v15;
  sub_254E6775C(&qword_27F755620);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  sub_254E62158();
  sub_254E6775C(&qword_27F755628);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v17);
  sub_254E62158();
  sub_254E6775C(&qword_27F755630);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v18);
  sub_254E62158();
  v19 = sub_254E8C9FC();
  type metadata accessor for DetectedLink(v19);
  sub_254E62148();
  MEMORY[0x28223BE20](v20);
  sub_254E62F5C();
  sub_254E6775C(&qword_27F755638);
  sub_254E62124();
  v70 = v22;
  v71 = v21;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v23);
  sub_254E62158();
  v68 = v24;
  v69 = sub_254E6775C(&qword_27F755640);
  sub_254E62124();
  v67 = v25;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v26);
  sub_254E8C850();
  type metadata accessor for DetectedDate(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v27);
  sub_254E62F5C();
  v28 = sub_254E8C860();
  type metadata accessor for DetectedEntity(v28);
  sub_254E62148();
  MEMORY[0x28223BE20](v29);
  sub_254E62F5C();
  sub_254E73A04();
  sub_254E6775C(&qword_27F755648);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v30);
  sub_254E73884();
  sub_254E73820(v3, v3[3]);
  sub_254E875E0();
  sub_254E9E65C();
  sub_254E62AC4();
  sub_254E80F3C();
  sub_254E8C968();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = *v0;
      v51 = v0[1];
      sub_254E87A24();
      v53 = v68;
      sub_254E8C644();
      v79[0] = v52;
      v79[1] = v51;
      sub_254E87A78();
      v54 = v71;
      sub_254E8C8EC();
      v55 = v70;
      goto LABEL_12;
    case 2u:
      sub_254E7D720();
      LOBYTE(v79[0]) = 2;
      sub_254E879D0();
      sub_254E8C5DC();
      sub_254E8C720();
      sub_254E80EF8(v37, v38);
      sub_254E8CC60();
      v39 = sub_254E8C674();
      v40(v39);
      goto LABEL_7;
    case 3u:
      memcpy(v79, v0, 0x80uLL);
      v78[0] = 3;
      sub_254E87928();
      sub_254E8C5DC();
      memcpy(v78, v79, sizeof(v78));
      sub_254E8797C();
      sub_254E8CC60();
      v41 = sub_254E8C674();
      v42(v41);
      v43 = sub_254E8C800();
      v44(v43);
      sub_254E7D7A8(v79);
      break;
    case 4u:
      memcpy(v79, v0, 0x50uLL);
      v78[0] = 4;
      sub_254E87880();
      sub_254E8C5DC();
      memcpy(v78, v79, 0x50uLL);
      sub_254E878D4();
      sub_254E8CC60();
      v33 = sub_254E8C674();
      v34(v33);
      v35 = sub_254E8C800();
      v36(v35);
      sub_254E7D778(v79);
      break;
    case 5u:
      v57 = *v0;
      v56 = v0[1];
      sub_254E877D8();
      v53 = v72;
      sub_254E8C644();
      v79[0] = v57;
      v79[1] = v56;
      sub_254E8782C();
      v54 = v73;
      sub_254E8C8EC();
      v55 = v64;
      goto LABEL_12;
    case 6u:
      v59 = *v0;
      v58 = v0[1];
      sub_254E87730();
      v53 = v74;
      sub_254E8C644();
      v79[0] = v59;
      v79[1] = v58;
      sub_254E87784();
      v54 = v75;
      sub_254E8C8EC();
      v55 = v65;
      goto LABEL_12;
    case 7u:
      sub_254E7D720();
      LOBYTE(v79[0]) = 7;
      sub_254E876DC();
      sub_254E8C5DC();
      sub_254E8C708();
      sub_254E80EF8(v45, v46);
      sub_254E8CC60();
      v47 = sub_254E8C674();
      v48(v47);
      goto LABEL_7;
    case 8u:
      v61 = *v0;
      v60 = v0[1];
      sub_254E87634();
      v53 = v76;
      sub_254E8C644();
      v79[0] = v61;
      v79[1] = v60;
      sub_254E87688();
      v54 = v77;
      sub_254E8C8EC();
      v55 = v66;
LABEL_12:
      (*(v55 + 8))(v53, v54);
      v62 = sub_254E8C674();
      v63(v62);

      break;
    default:
      sub_254E8CB70();
      sub_254E7D720();
      LOBYTE(v79[0]) = 0;
      sub_254E87ACC();
      sub_254E9E52C();
      sub_254E8C750();
      sub_254E80EF8(v31, v32);
      sub_254E9E59C();
      (*(v67 + 8))(v1, v69);
LABEL_7:
      sub_254E7D6CC();
      v49 = sub_254E8C800();
      v50(v49);
      break;
  }

  sub_254E62F78();
}

void DetectedEntity.hash(into:)()
{
  sub_254E7392C();
  v3 = type metadata accessor for DetectedAppEntity(0);
  v4 = sub_254E62CE8(v3);
  MEMORY[0x28223BE20](v4);
  sub_254E62F5C();
  v5 = type metadata accessor for DetectedLink(0);
  v6 = sub_254E62CE8(v5);
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  sub_254E9DCDC();
  sub_254E62124();
  v21 = v8;
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  sub_254E737E4();
  v9 = sub_254E6775C(&qword_27F7555D8);
  sub_254E62CE8(v9);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E8C850();
  type metadata accessor for DetectedDate(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v11);
  sub_254E62F5C();
  v12 = sub_254E8C860();
  type metadata accessor for DetectedEntity(v12);
  sub_254E62148();
  MEMORY[0x28223BE20](v13);
  sub_254E62F5C();
  sub_254E8CB88();
  sub_254E62AC4();
  sub_254E80F3C();
  sub_254E8C8D4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v18 = 1;
      goto LABEL_12;
    case 2u:
      sub_254E62FD4();
      sub_254E7D720();
      MEMORY[0x259C2B8B0](2);
      sub_254E9DD6C();
      sub_254E62BF8();
      sub_254E80EF8(v16, v17);
      sub_254E8C9B4();
      sub_254E9E23C();
      sub_254E8C738();
      goto LABEL_15;
    case 3u:
      memcpy(v24, v0, 0x80uLL);
      MEMORY[0x259C2B8B0](3);
      memcpy(v23, v24, sizeof(v23));
      AddressComponents.hash(into:)();
      sub_254E7D7A8(v24);
      break;
    case 4u:
      memcpy(v24, v0, 0x50uLL);
      MEMORY[0x259C2B8B0](4);
      memcpy(v23, v24, 0x50uLL);
      DetectedPerson.hash(into:)();
      sub_254E7D778(v24);
      break;
    case 5u:
      v18 = 5;
      goto LABEL_12;
    case 6u:
      v18 = 6;
      goto LABEL_12;
    case 7u:
      sub_254E8C50C();
      sub_254E7D720();
      MEMORY[0x259C2B8B0](7);
      DetectedAppEntity.hash(into:)();
      sub_254E8C4F4();
      goto LABEL_15;
    case 8u:
      v18 = 8;
LABEL_12:
      MEMORY[0x259C2B8B0](v18);
      sub_254E8CC20();
      sub_254E9E29C();

      break;
    default:
      sub_254E8C4DC();
      sub_254E7D720();
      MEMORY[0x259C2B8B0](0);
      sub_254E63474();
      sub_254E80EF8(v14, v15);
      sub_254E9E23C();
      sub_254E89CD4();
      if (sub_254E655F8(v2, 1, v22) == 1)
      {
        sub_254E9E61C();
      }

      else
      {
        (*(v21 + 32))(v1, v2, v22);
        sub_254E9E61C();
        sub_254E9E23C();
        v19 = sub_254E8C9D8();
        v20(v19);
      }

      sub_254E62D4C();
LABEL_15:
      sub_254E7D6CC();
      break;
  }

  sub_254E738E4();
}

void DetectedEntity.init(from:)()
{
  sub_254E73838();
  v4 = v3;
  v140 = v5;
  v139 = sub_254E6775C(&qword_27F7556C8);
  sub_254E62124();
  v143 = v6;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  sub_254E8C8A4(v8);
  v138 = sub_254E6775C(&qword_27F7556D0);
  sub_254E62124();
  v137 = v9;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E62158();
  sub_254E8C8A4(v11);
  v136 = sub_254E6775C(&qword_27F7556D8);
  sub_254E62124();
  v135 = v12;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v13);
  sub_254E62158();
  sub_254E8C8A4(v14);
  v134 = sub_254E6775C(&qword_27F7556E0);
  sub_254E62124();
  v133 = v15;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  sub_254E62158();
  sub_254E8C8A4(v17);
  v132 = sub_254E6775C(&qword_27F7556E8);
  sub_254E62124();
  v142 = v18;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v19);
  sub_254E62158();
  v146 = v20;
  v131 = sub_254E6775C(&qword_27F7556F0);
  sub_254E62124();
  v141 = v21;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v22);
  sub_254E62158();
  sub_254E8C8A4(v23);
  v130 = sub_254E6775C(&qword_27F7556F8);
  sub_254E62124();
  v129 = v24;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v25);
  sub_254E62158();
  sub_254E8C8A4(v26);
  v125 = sub_254E6775C(&qword_27F755700);
  sub_254E62124();
  v128 = v27;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v28);
  sub_254E62158();
  sub_254E8C8A4(v29);
  v127 = sub_254E6775C(&qword_27F755708);
  sub_254E62124();
  v126 = v30;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v31);
  sub_254E62158();
  sub_254E8C8A4(v32);
  v148 = sub_254E6775C(&qword_27F755710);
  sub_254E62124();
  v145 = v33;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_254E8C860();
  v144 = type metadata accessor for DetectedEntity(v35);
  sub_254E62148();
  MEMORY[0x28223BE20](v36);
  sub_254E73770();
  sub_254E69D68();
  MEMORY[0x28223BE20](v37);
  sub_254E8C8E0();
  sub_254E69D68();
  MEMORY[0x28223BE20](v38);
  sub_254E8C8E0();
  sub_254E69D68();
  MEMORY[0x28223BE20](v39);
  sub_254E8C8E0();
  sub_254E69D68();
  MEMORY[0x28223BE20](v40);
  sub_254E8C8E0();
  sub_254E69D68();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v120 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v120 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v120 - v49;
  MEMORY[0x28223BE20](v48);
  sub_254E8CBC8();
  MEMORY[0x28223BE20](v51);
  v52 = v4[3];
  v149 = v4;
  sub_254E73820(v4, v52);
  sub_254E875E0();
  v147 = v1;
  sub_254E9E64C();
  if (v0)
  {
    goto LABEL_9;
  }

  v120[1] = v50;
  v122 = v2;
  v123 = v47;
  v121 = v44;
  v54 = v146;
  v53 = v147;
  v55 = sub_254E9E51C();
  sub_254E734E0(v55, 0);
  if (v57 == v58 >> 1)
  {
LABEL_8:
    sub_254E8CBFC();
    v67 = sub_254E9E43C();
    swift_allocError();
    v69 = v68;
    sub_254E6775C(&qword_27F755138);
    *v69 = v53;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_254E8C88C();
    v70 = sub_254E8C6B4();
    v71(v70);
LABEL_9:
    v72 = v149;
LABEL_10:
    sub_254E6A780(v72);
    sub_254E62F78();
    return;
  }

  v120[0] = 0;
  if (v57 < (v58 >> 1))
  {
    v59 = *(v56 + v57);
    sub_254E734D4(v57 + 1);
    v61 = v60;
    v53 = v62;
    swift_unknownObjectRelease();
    v63 = v142;
    if (v61 == v53 >> 1)
    {
      v64 = v120[0];
      switch(v59)
      {
        case 1:
          LOBYTE(v150[0]) = 1;
          sub_254E87A24();
          sub_254E8CB58();
          sub_254E8C620();
          sub_254E897CC();
          sub_254E8C684();
          sub_254E739E0();
          sub_254E9E50C();
          sub_254E8C7B0();
          swift_unknownObjectRelease();
          v100 = sub_254E8C5A8();
          v101(v100);
          v102 = sub_254E8C7F0();
          v103(v102);
          sub_254E8C540(v150[0]);
          goto LABEL_20;
        case 2:
          LOBYTE(v150[0]) = 2;
          sub_254E879D0();
          sub_254E8CB7C();
          v76 = v147;
          v75 = v148;
          sub_254E8C7C0();
          sub_254E9E48C();
          type metadata accessor for DetectedLink(0);
          sub_254E8C720();
          sub_254E80EF8(v77, v78);
          sub_254E8CA7C();
          v79 = v145;
          swift_unknownObjectRelease();
          v94 = sub_254E8C83C();
          v95(v94);
          (*(v79 + 8))(v76, v75);
          sub_254E8C568();
          goto LABEL_20;
        case 3:
          LOBYTE(v150[0]) = 3;
          sub_254E87928();
          sub_254E8CB7C();
          v81 = v147;
          v80 = v148;
          sub_254E739E0();
          sub_254E9E48C();
          sub_254E89778();
          sub_254E8C684();
          sub_254E9E50C();
          v87 = (v145 + 8);
          swift_unknownObjectRelease();
          v96 = sub_254E8C798();
          v97(v96);
          (*v87)(v81, v80);
          memcpy(v121, v150, 0x80uLL);
          sub_254E8C568();
          goto LABEL_20;
        case 4:
          LOBYTE(v150[0]) = 4;
          sub_254E87880();
          v74 = v147;
          v73 = v148;
          sub_254E8C7C0();
          sub_254E9E48C();
          sub_254E89724();
          v85 = v132;
          sub_254E9E50C();
          v86 = (v145 + 8);
          swift_unknownObjectRelease();
          (*(v63 + 8))(v54, v85);
          (*v86)(v74, v73);
          memcpy(v124, v150, 0x50uLL);
          sub_254E8C568();
          swift_storeEnumTagMultiPayload();
          sub_254E8C460();
          goto LABEL_21;
        case 5:
          LOBYTE(v150[0]) = 5;
          sub_254E877D8();
          sub_254E8CB58();
          sub_254E8C620();
          sub_254E896D0();
          sub_254E8C684();
          sub_254E739E0();
          sub_254E9E50C();
          sub_254E8C7B0();
          swift_unknownObjectRelease();
          v107 = sub_254E8C5A8();
          v108(v107);
          v109 = sub_254E8C7F0();
          v110(v109);
          sub_254E8C540(v150[0]);
          goto LABEL_20;
        case 6:
          LOBYTE(v150[0]) = 6;
          sub_254E87730();
          sub_254E8CB58();
          sub_254E8C620();
          sub_254E8967C();
          sub_254E8C684();
          sub_254E739E0();
          sub_254E9E50C();
          sub_254E8C7B0();
          swift_unknownObjectRelease();
          v111 = sub_254E8C5A8();
          v112(v111);
          v113 = sub_254E8C7F0();
          v114(v113);
          sub_254E8C540(v150[0]);
          goto LABEL_20;
        case 7:
          LOBYTE(v150[0]) = 7;
          sub_254E876DC();
          sub_254E8CB7C();
          v83 = v147;
          v82 = v148;
          sub_254E8C7C0();
          sub_254E9E48C();
          type metadata accessor for DetectedAppEntity(0);
          sub_254E8C708();
          sub_254E80EF8(v88, v89);
          sub_254E8CA7C();
          v90 = v145;
          swift_unknownObjectRelease();
          v98 = sub_254E8C83C();
          v99(v98);
          (*(v90 + 8))(v83, v82);
          swift_storeEnumTagMultiPayload();
          sub_254E8C460();
          goto LABEL_21;
        case 8:
          LOBYTE(v150[0]) = 8;
          sub_254E87634();
          sub_254E8CB7C();
          sub_254E8C620();
          sub_254E89628();
          sub_254E8C684();
          sub_254E9E50C();
          sub_254E8C7B0();
          swift_unknownObjectRelease();
          v115 = sub_254E8C798();
          v116(v115);
          v117 = sub_254E8C7F0();
          v118(v117);
          sub_254E8C540(v150[0]);
LABEL_20:
          swift_storeEnumTagMultiPayload();
          sub_254E8C460();
          goto LABEL_21;
        default:
          LOBYTE(v150[0]) = 0;
          sub_254E87ACC();
          v66 = v147;
          v65 = v148;
          sub_254E9E48C();
          if (v64)
          {
            sub_254E8C88C();
            v84(v66, v65);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          type metadata accessor for DetectedDate(0);
          sub_254E8C750();
          sub_254E80EF8(v91, v92);
          sub_254E8CB58();
          v93 = v127;
          sub_254E9E50C();
          swift_unknownObjectRelease();
          v104 = sub_254E8C7D0();
          v105(v104, v93);
          sub_254E8C88C();
          v106(v147, v148);
          swift_storeEnumTagMultiPayload();
          sub_254E8C460();
LABEL_21:
          sub_254E7D720();
          v119 = v149;
          sub_254E8C460();
          sub_254E7D720();
          v72 = v119;
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t AddressComponents.name.setter()
{
  sub_254E8C668();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AddressComponents.jobTitle.setter()
{
  sub_254E8C668();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AddressComponents.organization.setter()
{
  sub_254E8C668();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AddressComponents.street.setter()
{
  sub_254E8C668();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AddressComponents.city.setter()
{
  sub_254E8C668();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AddressComponents.state.setter()
{
  sub_254E8C668();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t AddressComponents.zipCode.setter()
{
  sub_254E8C668();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t AddressComponents.country.setter()
{
  sub_254E8C668();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

void __swiftcall AddressComponents.init(name:jobTitle:organization:street:city:state:zipCode:country:)(IntelligenceFlowContext::AddressComponents *__return_ptr retstr, Swift::String_optional name, Swift::String_optional jobTitle, Swift::String_optional organization, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional zipCode, Swift::String_optional country)
{
  retstr->name = name;
  retstr->jobTitle = jobTitle;
  retstr->organization = organization;
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->zipCode = zipCode;
  retstr->country = country;
}

uint64_t AddressComponents.description.getter()
{
  v1 = v0[3];
  v56 = v0[4];
  v57 = v0[6];
  v2 = v0[7];
  v58 = v0[8];
  v3 = v0[9];
  v59 = v0[10];
  v60 = v0[5];
  v4 = v0[12];
  v5 = v0[14];
  v61 = v0[11];
  v62 = v0[13];
  v6 = v0[15];
  if (!v0[1])
  {
    v10 = MEMORY[0x277D84F90];
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v55 = v0[7];
  v7 = v0[9];
  v8 = v0[12];
  v9 = v0[15];
  sub_254E8CB64();
  sub_254E8C898();
  MEMORY[0x259C2B550]();
  v10 = sub_254E67BC8(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v31 = sub_254E8C478(v11);
    v10 = sub_254E67BC8(v31, v32, v33, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[2 * v12];
  v13[4] = v63;
  v13[5] = v64;
  v6 = v9;
  v4 = v8;
  v3 = v7;
  v2 = v55;
  if (v1)
  {
LABEL_7:
    sub_254E8C898();
    MEMORY[0x259C2B550]();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v34 = sub_254E8C478(v14);
      v10 = sub_254E67BC8(v34, v35, v36, v10);
    }

    v10[2] = v15 + 1;
    v16 = &v10[2 * v15];
    v16[4] = v63;
    v16[5] = v64;
  }

LABEL_12:
  v17 = v61;
  if (v60)
  {
    sub_254E9E40C();

    sub_254E8C924();
    sub_254E8C898();
    MEMORY[0x259C2B550](v56, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    v19 = v10[2];
    v18 = v10[3];
    if (v19 >= v18 >> 1)
    {
      v37 = sub_254E8C478(v18);
      v10 = sub_254E67BC8(v37, v38, v39, v10);
    }

    v10[2] = v19 + 1;
    v20 = &v10[2 * v19];
    v20[4] = 0;
    v20[5] = 0xE000000000000000;
  }

  v21 = v62;
  if (v2)
  {
    sub_254E8C898();
    MEMORY[0x259C2B550](v57, v2);
    if ((sub_254E8CAB8() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    sub_254E8C578();
    if (v23)
    {
      v40 = sub_254E8C478(v22);
      v10 = sub_254E67BC8(v40, v41, v42, v10);
    }

    sub_254E8C694();
    v17 = v61;
    v21 = v62;
  }

  if (v3)
  {
    sub_254E8CB64();
    sub_254E8C898();
    MEMORY[0x259C2B550](v58, v3);
    if ((sub_254E8CAB8() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    sub_254E8C578();
    if (v23)
    {
      v43 = sub_254E8C478(v24);
      v10 = sub_254E67BC8(v43, v44, v45, v10);
    }

    sub_254E8C694();
  }

  if (v17)
  {
    sub_254E8C984();
    sub_254E8C898();
    MEMORY[0x259C2B550](v59, v17);
    if ((sub_254E8CAB8() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    sub_254E8C578();
    if (v23)
    {
      v46 = sub_254E8C478(v25);
      v10 = sub_254E67BC8(v46, v47, v48, v10);
    }

    sub_254E8C694();
  }

  if (v21)
  {
    sub_254E8C898();
    MEMORY[0x259C2B550](v4, v21);
    if ((sub_254E8CAB8() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    sub_254E8C578();
    if (v23)
    {
      v49 = sub_254E8C478(v26);
      v10 = sub_254E67BC8(v49, v50, v51, v10);
    }

    sub_254E8C694();
  }

  if (v6)
  {
    sub_254E8C898();
    MEMORY[0x259C2B550](v5, v6);
    if ((sub_254E8CAB8() & 1) == 0)
    {
      v10 = sub_254E8C4B8();
    }

    sub_254E8C578();
    if (v23)
    {
      v52 = sub_254E8C478(v27);
      sub_254E67BC8(v52, v53, v54, v10);
    }

    sub_254E8C694();
  }

  sub_254E6775C(&qword_27F755038);
  sub_254E62EA8();
  sub_254E8A2E8(v28, &qword_27F755038);
  v29 = sub_254E9E24C();

  return v29;
}

uint64_t static AddressComponents.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v112 = a1[12];
  v15 = a1[13];
  v14 = a1[14];
  v114 = a1[15];
  v16 = a2[1];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v24 = a2[10];
  v26 = a2[11];
  v25 = a2[12];
  v27 = a2[13];
  v111 = a2[14];
  v113 = a2[15];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v110 = a2[2];
    if (*a1 != *a2 || v3 != v16)
    {
      v103 = a1[7];
      v106 = a2[9];
      v81 = a1[13];
      v85 = a2[4];
      v87 = a2[5];
      v29 = a1[14];
      v91 = a1[5];
      v93 = a1[8];
      v30 = a2[12];
      v80 = a1[10];
      v31 = a1[11];
      v95 = a2[8];
      v97 = a2[6];
      v32 = a2[11];
      v33 = a2[10];
      v89 = a1[4];
      v34 = a1[9];
      v100 = a2[7];
      v35 = a1[6];
      v36 = sub_254E9E5CC();
      v7 = v35;
      v22 = v100;
      v9 = v103;
      v10 = v93;
      v21 = v95;
      v23 = v106;
      v12 = v34;
      v24 = v33;
      v20 = v87;
      v6 = v89;
      v26 = v32;
      v19 = v97;
      v13 = v31;
      v11 = v80;
      v15 = v81;
      v25 = v30;
      v8 = v91;
      v14 = v29;
      v18 = v85;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v110 = a2[2];
    if (v16)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v110 || v5 != v17)
    {
      v104 = v9;
      v107 = v23;
      v38 = v14;
      v90 = v6;
      v92 = v8;
      v39 = v25;
      v40 = v11;
      v41 = v13;
      v86 = v18;
      v88 = v20;
      v42 = v26;
      v43 = v24;
      v94 = v10;
      v96 = v21;
      v98 = v19;
      v101 = v22;
      v44 = v12;
      v45 = v7;
      v46 = sub_254E9E5CC();
      v7 = v45;
      v22 = v101;
      v9 = v104;
      v23 = v107;
      v12 = v44;
      v21 = v96;
      v19 = v98;
      v24 = v43;
      v26 = v42;
      v18 = v86;
      v20 = v88;
      v13 = v41;
      v11 = v40;
      v6 = v90;
      v25 = v39;
      v8 = v92;
      v10 = v94;
      v14 = v38;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v6 != v18 || v8 != v20)
    {
      v105 = v9;
      v108 = v23;
      v82 = v15;
      v83 = v27;
      v48 = v14;
      v49 = v25;
      v50 = v11;
      v51 = v13;
      v52 = v26;
      v53 = v24;
      v99 = v19;
      v102 = v22;
      v54 = v10;
      v55 = v12;
      v56 = v21;
      v57 = v7;
      v58 = sub_254E9E5CC();
      v9 = v105;
      v23 = v108;
      v7 = v57;
      v21 = v56;
      v12 = v55;
      v10 = v54;
      v19 = v99;
      v22 = v102;
      v24 = v53;
      v26 = v52;
      v13 = v51;
      v11 = v50;
      v25 = v49;
      v14 = v48;
      v15 = v82;
      v27 = v83;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v109 = v23;
      v84 = v27;
      v60 = v15;
      v61 = v14;
      v62 = v25;
      v63 = v11;
      v64 = v13;
      v65 = v26;
      v66 = v24;
      v67 = v10;
      v68 = v12;
      v69 = v21;
      v70 = sub_254E9E5CC();
      v21 = v69;
      v23 = v109;
      v12 = v68;
      v10 = v67;
      v24 = v66;
      v26 = v65;
      v13 = v64;
      v11 = v63;
      v25 = v62;
      v14 = v61;
      v15 = v60;
      v27 = v84;
      if ((v70 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v23)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v23)
    {
      sub_254E8C9C0();
      sub_254E9E5CC();
      sub_254E8CB1C();
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (!v26)
    {
      return 0;
    }

    if (v11 != v24 || v13 != v26)
    {
      sub_254E8C9C0();
      sub_254E9E5CC();
      sub_254E8CB1C();
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v15)
  {
    if (!v27)
    {
      return 0;
    }

    if (v112 != v25 || v15 != v27)
    {
      v76 = v14;
      v77 = sub_254E9E5CC();
      v14 = v76;
      if ((v77 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v114)
  {
    if (v113)
    {
      v78 = v14 == v111 && v114 == v113;
      if (v78 || (sub_254E9E5CC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v113)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_254E80EA4()
{
  result = qword_280C40030;
  if (!qword_280C40030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40030);
  }

  return result;
}

uint64_t sub_254E80EF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_254E8CAE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E80F3C()
{
  sub_254E737F0();
  v1(0);
  sub_254E62148();
  v2 = sub_254E62CF4();
  v3(v2);
  return v0;
}

uint64_t sub_254E80F94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 2037672291 && a2 == 0xE400000000000000;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
            if (v10 || (sub_254E9E5CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65646F4370697ALL && a2 == 0xE700000000000000;
              if (v11 || (sub_254E9E5CC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_254E9E5CC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254E81218(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C746954626F6ALL;
      break;
    case 2:
      result = 0x617A696E6167726FLL;
      break;
    case 3:
      result = 0x746565727473;
      break;
    case 4:
      result = 2037672291;
      break;
    case 5:
      result = 0x6574617473;
      break;
    case 6:
      result = 0x65646F4370697ALL;
      break;
    case 7:
      result = 0x7972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E812F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E80F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E81318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E81210();
  *a1 = result;
  return result;
}

uint64_t sub_254E81340(uint64_t a1)
{
  v2 = sub_254E89820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E8137C(uint64_t a1)
{
  v2 = sub_254E89820();

  return MEMORY[0x2821FE720](a1, v2);
}

void AddressComponents.encode(to:)()
{
  sub_254E73838();
  v2 = v1;
  sub_254E6775C(&qword_27F755750);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v3);
  sub_254E8C558();
  sub_254E73820(v2, v2[3]);
  sub_254E89820();
  sub_254E8CAF0();
  sub_254E9E65C();
  sub_254E9E53C();
  if (!v0)
  {
    sub_254E73814();
    sub_254E8CA38();
    sub_254E8C940();
    sub_254E8CA38();
    sub_254E8CA38();
    sub_254E8CA38();
    sub_254E8CA38();
    sub_254E8CA38();
    sub_254E8CC14(7);
    sub_254E8CA38();
  }

  v4 = sub_254E8C6B4();
  v5(v4);
  sub_254E62F78();
}

uint64_t AddressComponents.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];
  v8 = v0[15];
  if (v0[1])
  {
    sub_254E9E61C();
    sub_254E9E29C();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_254E9E61C();
    if (v1)
    {
LABEL_3:
      sub_254E9E61C();
      sub_254E9E29C();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_254E9E61C();
      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_254E9E61C();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_254E9E61C();
  sub_254E9E29C();
  if (v3)
  {
LABEL_5:
    sub_254E9E61C();
    sub_254E9E29C();
    goto LABEL_10;
  }

LABEL_9:
  sub_254E9E61C();
LABEL_10:
  if (v4)
  {
    sub_254E9E61C();
    sub_254E9E29C();
    if (v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_254E9E61C();
    if (v5)
    {
LABEL_12:
      sub_254E9E61C();
      sub_254E9E29C();
      if (v6)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_254E9E61C();
      if (v8)
      {
        goto LABEL_14;
      }

      return sub_254E9E61C();
    }
  }

  sub_254E9E61C();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_254E9E61C();
  sub_254E9E29C();
  if (!v8)
  {
    return sub_254E9E61C();
  }

LABEL_14:
  sub_254E9E61C();

  return sub_254E9E29C();
}

void AddressComponents.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  v5 = v4;
  v6 = sub_254E6775C(&qword_27F755760);
  sub_254E62124();
  v8 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  sub_254E636EC();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v38 = v3;
  v12 = sub_254E8C6B4();
  sub_254E73820(v12, v13);
  sub_254E89820();
  sub_254E8C8BC();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E8C524();
    sub_254E8CBA0();
    sub_254E6A780(v3);
    v44 = 0;
    v45 = 0;
    v46 = v8;
    v47 = v6;
    v48 = v11;
    v49 = v10;
    v50 = v5;
    v51 = v0;
    v52 = v35;
    v53 = v36;
    sub_254E8C9E4();
    v54 = 0;
    v55 = 0;
  }

  else
  {
    LOBYTE(v44) = 0;
    v33 = sub_254E9E4AC();
    v34 = v14;
    v31 = sub_254E8C5BC(1);
    v32 = v15;
    v16 = sub_254E8C5BC(2);
    v17 = v5;
    v30 = v18;
    v19 = sub_254E8C5BC(3);
    v29 = v20;
    v21 = sub_254E8C5BC(4);
    v37 = v22;
    v39 = sub_254E8C5BC(5);
    v42 = v23;
    v40 = sub_254E8C5BC(6);
    v41 = v24;
    v25 = sub_254E9E4AC();
    v26 = v1;
    v28 = v27;
    (*(v8 + 8))(v26, v6);
    v43[0] = v33;
    v43[1] = v34;
    v43[2] = v31;
    v43[3] = v32;
    v43[4] = v16;
    v43[5] = v30;
    v43[6] = v19;
    v43[7] = v29;
    v43[8] = v21;
    v43[9] = v37;
    v43[10] = v39;
    v43[11] = v42;
    v43[12] = v40;
    v43[13] = v41;
    v43[14] = v25;
    v43[15] = v28;
    memcpy(v17, v43, 0x80uLL);
    sub_254E875A8(v43, &v44);
    sub_254E6A780(v38);
    v44 = v33;
    v45 = v34;
    v46 = v31;
    v47 = v32;
    v48 = v16;
    v49 = v30;
    v50 = v19;
    v51 = v29;
    v52 = v21;
    v53 = v37;
    sub_254E8C9E4();
    v54 = v25;
    v55 = v28;
  }

  sub_254E80E74(&v44);
  sub_254E62F78();
}

uint64_t DetectedDate.endDateComponents.getter()
{
  v0 = sub_254E73920();
  type metadata accessor for DetectedDate(v0);
  return sub_254E89CD4();
}

uint64_t DetectedDate.endDateComponents.setter()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedDate(v0);
  return sub_254E89C7C();
}

uint64_t DetectedDate.endDateComponents.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedDate(v0);
  return sub_254E7353C();
}

uint64_t DetectedDate.init(startDateComponents:endDateComponents:)()
{
  sub_254E737F0();
  v2 = v1;
  type metadata accessor for DetectedDate(0);
  v3 = sub_254E9DCDC();
  sub_254E63420();
  sub_254E65418(v4, v5, v6, v3);
  (*(*(v3 - 8) + 32))(v2, v0, v3);
  return sub_254E89C7C();
}

void DetectedDate.description.getter()
{
  sub_254E7392C();
  v2 = sub_254E6775C(&qword_27F7555D8);
  sub_254E62CE8(v2);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v3);
  sub_254E8C588();
  v4 = sub_254E9DCDC();
  sub_254E62124();
  v27 = v5;
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  sub_254E8CB88();
  sub_254E63474();
  sub_254E80EF8(v7, v8);
  v9 = sub_254E9E5BC();
  MEMORY[0x259C2B550](v9);

  v10 = sub_254E67BC8(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v21 = sub_254E8C478(v11);
    v10 = sub_254E67BC8(v21, v22, v23, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[2 * v12];
  v13[4] = 0x203A7472617453;
  v13[5] = 0xE700000000000000;
  type metadata accessor for DetectedDate(0);
  sub_254E89CD4();
  if (sub_254E655F8(v1, 1, v4) == 1)
  {
    sub_254E89D2C(v1, &qword_27F7555D8);
  }

  else
  {
    (*(v27 + 32))(v0, v1, v4);
    v14 = sub_254E9E5BC();
    MEMORY[0x259C2B550](v14);

    v16 = v10[2];
    v15 = v10[3];
    if (v16 >= v15 >> 1)
    {
      v24 = sub_254E8C478(v15);
      v10 = sub_254E67BC8(v24, v25, v26, v10);
    }

    (*(v27 + 8))(v0, v4);
    v10[2] = v16 + 1;
    v17 = &v10[2 * v16];
    v17[4] = 0x203A646E45;
    v17[5] = 0xE500000000000000;
  }

  v18 = sub_254E62CF4();
  sub_254E6775C(v18);
  sub_254E62EA8();
  sub_254E8CC08();
  sub_254E8A2E8(v19, v20);
  sub_254E9E24C();

  sub_254E62CF4();
  sub_254E738E4();
}

uint64_t sub_254E82044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000254EA57F0 == a2;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000254EA5810 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_254E9E5CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_254E8211C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_254E8215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E82044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E82184(uint64_t a1)
{
  v2 = sub_254E89874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E821C0(uint64_t a1)
{
  v2 = sub_254E89874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetectedDate.encode(to:)()
{
  v2 = sub_254E6775C(&qword_27F755770);
  sub_254E62124();
  v4 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E8C588();
  v6 = sub_254E8C6B4();
  sub_254E73820(v6, v7);
  sub_254E89874();
  sub_254E8C8BC();
  sub_254E9E65C();
  sub_254E9DCDC();
  sub_254E63474();
  sub_254E80EF8(v8, v9);
  sub_254E8C8BC();
  sub_254E8CA2C();
  sub_254E9E59C();
  if (!v0)
  {
    type metadata accessor for DetectedDate(0);
    sub_254E8C8BC();
    sub_254E8CA2C();
    sub_254E9E55C();
  }

  return (*(v4 + 8))(v1, v2);
}

void DetectedDate.hash(into:)()
{
  sub_254E7392C();
  sub_254E73524();
  v2 = sub_254E9DCDC();
  sub_254E62124();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254E62F5C();
  sub_254E73A04();
  v6 = sub_254E6775C(&qword_27F7555D8);
  sub_254E62CE8(v6);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E8C588();
  sub_254E63474();
  sub_254E80EF8(v8, v9);
  sub_254E9E23C();
  type metadata accessor for DetectedDate(0);
  sub_254E89CD4();
  if (sub_254E655F8(v1, 1, v2) == 1)
  {
    sub_254E73A70();
  }

  else
  {
    sub_254E8CBF0();
    v10 = sub_254E8C968();
    v11(v10);
    sub_254E73AA0();
    sub_254E9E23C();
    (*(v4 + 8))(v0, v2);
  }

  sub_254E738E4();
}

void DetectedDate.init(from:)()
{
  sub_254E73838();
  v2 = v1;
  v3 = sub_254E6775C(&qword_27F7555D8);
  sub_254E62CE8(v3);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  sub_254E8C850();
  v5 = sub_254E9DCDC();
  sub_254E62124();
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  sub_254E73A04();
  sub_254E6775C(&qword_27F755778);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E73884();
  v8 = type metadata accessor for DetectedDate(0);
  v9 = sub_254E62CE8(v8);
  MEMORY[0x28223BE20](v9);
  sub_254E62F5C();
  v12 = v11 - v10;
  v23 = *(v13 + 28);
  sub_254E63420();
  sub_254E65418(v14, v15, v16, v5);
  sub_254E73820(v2, v2[3]);
  sub_254E89874();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v2);
    sub_254E89D2C(v12 + v23, &qword_27F7555D8);
  }

  else
  {
    sub_254E63474();
    sub_254E80EF8(v17, v18);
    sub_254E8CAD0();
    sub_254E9E50C();
    sub_254E8CBF0();
    v19 = sub_254E8C940();
    v20(v19);
    sub_254E73814();
    sub_254E8CAD0();
    sub_254E9E4CC();
    v21 = sub_254E8C974();
    v22(v21);
    sub_254E89C7C();
    sub_254E80F3C();
    sub_254E6A780(v2);
    sub_254E62D4C();
    sub_254E7D6CC();
  }

  sub_254E62F78();
}

uint64_t sub_254E828F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E82990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E828F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E829BC(uint64_t a1)
{
  v2 = sub_254E898C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E829F8(uint64_t a1)
{
  v2 = sub_254E898C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E82AE8()
{
  v0 = sub_254E73920();
  v1(v0);
  sub_254E62148();
  v2 = sub_254E62CF4();

  return v3(v2);
}

uint64_t sub_254E82B60()
{
  v1 = sub_254E73524();
  v2(v1);
  sub_254E62148();
  v3 = sub_254E8C9B4();

  return v4(v3, v0);
}

uint64_t DetectedLink.init(url:)(uint64_t a1)
{
  sub_254E9DD6C();
  sub_254E62148();
  v2 = sub_254E8C9B4();

  return v3(v2, a1);
}

uint64_t DetectedLink.description.getter()
{
  sub_254E8CB64();
  v4 = v0;
  sub_254E9DD6C();
  sub_254E62BF8();
  sub_254E80EF8(v1, v2);
  sub_254E9E5BC();
  sub_254E8CC78();

  return v4;
}

uint64_t sub_254E82CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E82D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E82CBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E82D74(uint64_t a1)
{
  v2 = sub_254E8991C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E82DB0(uint64_t a1)
{
  v2 = sub_254E8991C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetectedLink.encode(to:)()
{
  sub_254E6775C(&qword_27F755798);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v0);
  sub_254E636EC();
  v1 = sub_254E8C6B4();
  sub_254E73820(v1, v2);
  sub_254E8991C();
  sub_254E8C8BC();
  sub_254E9E65C();
  sub_254E9DD6C();
  sub_254E62BF8();
  sub_254E80EF8(v3, v4);
  sub_254E9E59C();
  v5 = sub_254E8C940();
  return v6(v5);
}

uint64_t DetectedLink.hash(into:)()
{
  sub_254E73524();
  sub_254E9DD6C();
  sub_254E62BF8();
  sub_254E80EF8(v0, v1);

  return sub_254E9E23C();
}

uint64_t DetectedLink.hashValue.getter()
{
  sub_254E73A88();
  sub_254E9DD6C();
  sub_254E62BF8();
  sub_254E80EF8(v0, v1);
  sub_254E9E23C();
  return sub_254E9E63C();
}

void DetectedLink.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  v4 = sub_254E9DD6C();
  sub_254E62124();
  v19 = v5;
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  v21 = v8 - v7;
  v9 = sub_254E6775C(&qword_27F7557B0);
  sub_254E62124();
  v20 = v10;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  sub_254E73884();
  v12 = type metadata accessor for DetectedLink(0);
  v13 = sub_254E62CE8(v12);
  MEMORY[0x28223BE20](v13);
  sub_254E62F5C();
  v16 = v15 - v14;
  sub_254E73820(v3, v3[3]);
  sub_254E8991C();
  sub_254E9E64C();
  if (!v0)
  {
    sub_254E62BF8();
    sub_254E80EF8(v17, v18);
    sub_254E9E50C();
    (*(v20 + 8))(v1, v9);
    (*(v19 + 32))(v16, v21, v4);
    sub_254E62FD4();
    sub_254E7D720();
  }

  sub_254E6A780(v3);
  sub_254E62F78();
}

uint64_t sub_254E83248()
{
  sub_254E9E5FC();
  sub_254E9DD6C();
  sub_254E80EF8(&qword_27F7556C0, MEMORY[0x277CC9260]);
  sub_254E9E23C();
  return sub_254E9E63C();
}

uint64_t DetectedAddress.addressComponents.getter()
{
  sub_254E8C8B0();
  memcpy(v0, v1, v2);
  v3 = sub_254E62CF4();
  memcpy(v3, v4, 0x80uLL);
  return sub_254E875A8(v7, v6);
}

void *DetectedAddress.addressComponents.setter(const void *a1)
{
  sub_254E8C8B0();
  memcpy(v3, v4, v5);
  sub_254E7D7A8(&v7);
  return memcpy(v1, a1, 0x80uLL);
}

uint64_t DetectedAddress.description.getter()
{
  sub_254E8C94C();
  v2 = v0;
  AddressComponents.description.getter();
  sub_254E8CC78();

  return v2;
}

uint64_t sub_254E83408(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000254EA5830 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E834A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E83408(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E834D4(uint64_t a1)
{
  v2 = sub_254E89970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E83510(uint64_t a1)
{
  v2 = sub_254E89970();

  return MEMORY[0x2821FE720](a1, v2);
}

void DetectedAddress.encode(to:)()
{
  sub_254E73838();
  v2 = v1;
  v3 = sub_254E6775C(&qword_27F7557C0);
  sub_254E62124();
  v5 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  sub_254E8C588();
  sub_254E8C8B0();
  memcpy(v7, v8, v9);
  sub_254E73820(v2, v2[3]);
  sub_254E875A8(v12, v11);
  sub_254E89970();
  sub_254E9E65C();
  memcpy(v11, v12, sizeof(v11));
  sub_254E899C4();
  sub_254E8CA2C();
  sub_254E9E59C();
  memcpy(v10, v11, sizeof(v10));
  sub_254E80E74(v10);
  (*(v5 + 8))(v0, v3);
  sub_254E62F78();
}

uint64_t sub_254E836B4()
{
  sub_254E73A88();
  AddressComponents.hash(into:)();
  return sub_254E9E63C();
}

void DetectedAddress.init(from:)()
{
  sub_254E73838();
  v2 = v1;
  v4 = v3;
  v5 = sub_254E6775C(&qword_27F7557D8);
  sub_254E62124();
  v7 = v6;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  v10 = &v11[-v9];
  sub_254E73820(v2, v2[3]);
  sub_254E89970();
  sub_254E9E64C();
  if (!v0)
  {
    sub_254E89A18();
    sub_254E8C7C0();
    sub_254E9E50C();
    (*(v7 + 8))(v10, v5);
    memcpy(v4, v11, 0x80uLL);
  }

  sub_254E6A780(v2);
  sub_254E62F78();
}

uint64_t sub_254E83840()
{
  sub_254E9E5FC();
  AddressComponents.hash(into:)();
  return sub_254E9E63C();
}

uint64_t DetectedPerson.name.setter()
{
  sub_254E8C668();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DetectedPerson.emailAddress.setter()
{
  sub_254E8C668();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DetectedPerson.emailAddresses.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t DetectedPerson.phoneNumber.setter()
{
  sub_254E8C668();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t DetectedPerson.phoneNumbers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t DetectedPerson.contactId.setter()
{
  sub_254E8C668();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t DetectedPerson.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[3] = 0;
  v3 = MEMORY[0x277D84FA0];
  a3[4] = MEMORY[0x277D84FA0];
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = v3;
  a3[8] = 0;
  a3[9] = 0;
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DetectedPerson.init(name:emailAddress:phoneNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (!a4)
  {
    v15 = MEMORY[0x277D84FA0];
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  sub_254E6775C(&qword_27F755008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254EA03C0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  v15 = sub_254E79588(inited);
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_254E6775C(&qword_27F755008);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_254EA03C0;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;

  result = sub_254E79588(v16);
LABEL_6:
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = v15;
  a7[5] = a5;
  a7[6] = a6;
  a7[7] = result;
  a7[8] = 0;
  a7[9] = 0;
  return result;
}

uint64_t DetectedPerson.init(name:emailAddress:phoneNumber:contactId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (!a4)
  {
    v17 = MEMORY[0x277D84FA0];
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  sub_254E6775C(&qword_27F755008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254EA03C0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  v17 = sub_254E79588(inited);
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_254E6775C(&qword_27F755008);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_254EA03C0;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;

  v19 = sub_254E79588(v18);
LABEL_6:

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = v17;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = v19;
  a9[8] = a7;
  a9[9] = a8;
  return result;
}

void DetectedPerson.init(cnContact:)()
{
  sub_254E7392C();
  v3 = v2;
  v5 = v4;
  sub_254E6775C(&qword_27F7557E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254EA10E0;
  v7 = [v3 givenName];
  sub_254E9E27C();
  sub_254E8CA08();

  *(inited + 32) = v0;
  *(inited + 40) = v1;
  v8 = [v3 familyName];
  sub_254E9E27C();
  sub_254E8CA08();

  v9 = 0;
  *(inited + 48) = v0;
  *(inited + 56) = v1;
  v10 = MEMORY[0x277D84F90];
  v86 = v3;
LABEL_2:
  v11 = (inited + 40 + 16 * v9);
  while (++v9 != 3)
  {
    v12 = v11 + 2;
    v13 = *v11;
    v11 += 2;
    if (v13)
    {
      v14 = *(v12 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_254E8C4B8();
      }

      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        v10 = sub_254E67BC8((v15 > 1), v16 + 1, 1, v10);
      }

      v10[2] = v16 + 1;
      v17 = &v10[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
      v3 = v86;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_254E87E30(&qword_27F755A18);
  v89[0] = v10;
  v18 = sub_254E8CC20();
  sub_254E6775C(v18);
  sub_254E62EA8();
  sub_254E8A2E8(v19, &qword_27F755038);
  v20 = sub_254E8CA50();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    v5[3] = 0u;
    v5[4] = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
LABEL_53:
    sub_254E738E4();
    return;
  }

  v24 = [v3 identifier];
  v25 = sub_254E9E27C();
  v81 = v26;

  v27 = 0x2797B3000uLL;
  v28 = [v3 emailAddresses];
  sub_254E6775C(&qword_27F7557F0);
  sub_254E8CAE4();
  v29 = sub_254E9E30C();

  v84 = v22;
  __dst = v5;
  v82 = v25;
  v83 = v20;
  if (!sub_254E87DF8(v29))
  {

LABEL_21:
    v79 = 0;
    v80 = 0;
    goto LABEL_22;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_58:
    v30 = MEMORY[0x259C2B6C0](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_60:
      v53 = MEMORY[0x259C2B6C0](0, v29);
      goto LABEL_38;
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  v32 = [v31 value];

  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = sub_254E9E27C();
  v79 = v34;
  v80 = v33;

LABEL_22:
  v35 = [v3 *(v27 + 3672)];
  v36 = sub_254E9E30C();

  v29 = sub_254E87DF8(v36);
  v37 = 0;
  v27 = v36 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F90];
  while (v29 != v37)
  {
    if (v27)
    {
      v47 = sub_254E8C8C8();
      v38 = MEMORY[0x259C2B6C0](v47);
    }

    else
    {
      if (v37 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v38 = *(v36 + 8 * v37 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v40 = [v38 value];
    v41 = sub_254E9E27C();
    v43 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_254E67BC8(0, v3[2] + 1, 1, v3);
    }

    v45 = v3[2];
    v44 = v3[3];
    if (v45 >= v44 >> 1)
    {
      v48 = sub_254E8C478(v44);
      v3 = sub_254E67BC8(v48, v49, v50, v3);
    }

    v3[2] = v45 + 1;
    v46 = &v3[2 * v45];
    v46[4] = v41;
    v46[5] = v43;
    ++v37;
  }

  v51 = sub_254E84450(v3);
  v22 = v86;
  v52 = [v86 phoneNumbers];
  v29 = sub_254E9E30C();

  v78 = v51;
  if (!sub_254E87DF8(v29))
  {

    v76 = 0;
    v77 = 0;
LABEL_40:
    v59 = [v22 phoneNumbers];
    v60 = sub_254E9E30C();

    v3 = sub_254E87DF8(v60);
    v61 = 0;
    v27 = v60 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x277D84F90];
    while (v3 != v61)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x259C2B6C0](v61, v60);
      }

      else
      {
        if (v61 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v62 = *(v60 + 8 * v61 + 32);
      }

      v63 = v62;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_56;
      }

      v64 = [v62 value];
      v65 = [v64 stringValue];

      v66 = sub_254E9E27C();
      v68 = v67;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_254E8C4B8();
      }

      sub_254E8C578();
      if (v70)
      {
        v72 = sub_254E8C478(v69);
        v29 = sub_254E67BC8(v72, v73, v74, v29);
      }

      *(v29 + 16) = v63;
      v71 = v29 + 16 * v65;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;
      ++v61;
    }

    v75 = sub_254E84450(v29);

    __src[0] = v83;
    __src[1] = v84;
    __src[2] = v80;
    __src[3] = v79;
    __src[4] = v78;
    __src[5] = v77;
    __src[6] = v76;
    __src[7] = v75;
    __src[8] = v82;
    __src[9] = v81;
    memcpy(__dst, __src, 0x50uLL);
    v89[0] = v83;
    v89[1] = v84;
    v89[2] = v80;
    v89[3] = v79;
    v89[4] = v78;
    v89[5] = v77;
    v89[6] = v76;
    v89[7] = v75;
    v89[8] = v82;
    v89[9] = v81;
    sub_254E89A6C(__src, v87);
    sub_254E7D778(v89);
    goto LABEL_53;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v29 + 32);
LABEL_38:
    v54 = v53;

    v55 = [v54 value];

    v56 = [v55 stringValue];
    v57 = sub_254E9E27C();
    v76 = v58;
    v77 = v57;

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_254E84450(uint64_t a1)
{
  result = MEMORY[0x259C2B600](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_254E87EE4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_254E84510(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_254E8C384();
  v4 = MEMORY[0x259C2B600](v2, &type metadata for DetectableEntityType, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_254E88030(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void DetectedPerson.init(inPerson:)()
{
  sub_254E7392C();
  v3 = v2;
  v5 = v4;
  v6 = sub_254E6775C(&qword_27F7557F8);
  v7 = sub_254E62CE8(v6);
  MEMORY[0x28223BE20](v7);
  sub_254E73770();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_254E8CBDC();
  MEMORY[0x28223BE20](v12);
  sub_254E8CBB4();
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  sub_254E6775C(&qword_27F7557E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254EA10E0;
  v93 = v3;
  v17 = [v3 nameComponents];
  if (v17)
  {
    v18 = v17;
    sub_254E9DD0C();
  }

  v19 = sub_254E9DD1C();
  sub_254E8CB10();
  sub_254E65418(v20, v21, v22, v23);
  sub_254E89AA4(v1, v15);
  if (sub_254E655F8(v15, 1, v19))
  {
    sub_254E89D2C(v15, &qword_27F7557F8);
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  else
  {
    *(inited + 32) = sub_254E9DCEC();
    *(inited + 40) = v24;
    sub_254E89D2C(v15, &qword_27F7557F8);
  }

  v25 = v93;
  v26 = [v93 nameComponents];
  if (v26)
  {
    v27 = v26;
    sub_254E9DD0C();
  }

  sub_254E8CB10();
  sub_254E65418(v28, v29, v30, v31);
  sub_254E89AA4(v10, v0);
  if (sub_254E655F8(v0, 1, v19))
  {
    sub_254E89D2C(v0, &qword_27F7557F8);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  else
  {
    *(inited + 48) = sub_254E9DCFC();
    *(inited + 56) = v32;
    sub_254E89D2C(v0, &qword_27F7557F8);
  }

  v33 = 0;
  v34 = MEMORY[0x277D84F90];
LABEL_12:
  v35 = (inited + 40 + 16 * v33);
  while (++v33 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v38 = *(v36 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254E8CB10();
        v34 = sub_254E67BC8(v41, v42, v43, v44);
      }

      v39 = v34[2];
      if (v39 >= v34[3] >> 1)
      {
        sub_254E8CB10();
        v34 = sub_254E67BC8(v45, v46, v47, v48);
      }

      v34[2] = v39 + 1;
      v40 = &v34[2 * v39];
      v40[4] = v38;
      v40[5] = v37;
      v25 = v93;
      goto LABEL_12;
    }
  }

  swift_setDeallocating();
  sub_254E87E30(&qword_27F755A18);
  v96[0] = v34;
  v49 = sub_254E8CC20();
  sub_254E6775C(v49);
  sub_254E62EA8();
  sub_254E8A2E8(v50, &qword_27F755038);
  v51 = sub_254E8CA50();
  v53 = v52;

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v55 = sub_254E895CC(v25, &selRef_contactIdentifier);
    v57 = v56;
    v58 = [v25 personHandle];
    v91 = v55;
    v92 = v5;
    v90 = v57;
    if (v58)
    {
      v59 = v58;
      v60 = [v58 type];
      if (v60 == 1)
      {
        v74 = sub_254E895CC(v59, &selRef_value);
        v75 = v77;
        v78 = sub_254E895CC(v59, &selRef_value);
        if (v79)
        {
          v80 = v78;
          v81 = v79;
          sub_254E6775C(&qword_27F755008);
          v82 = swift_initStackObject();
          *(v82 + 16) = xmmword_254EA03C0;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v76 = sub_254E79588(v82);

          v63 = 0;
          v65 = 0;
          v73 = MEMORY[0x277D84FA0];
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (v60 == 2)
      {
        v61 = sub_254E8C940();
        v63 = sub_254E895CC(v61, v62);
        v65 = v64;
        v66 = sub_254E8C940();
        v68 = sub_254E895CC(v66, v67);
        if (v69)
        {
          v70 = v68;
          v71 = v69;
          sub_254E6775C(&qword_27F755008);
          v72 = swift_initStackObject();
          *(v72 + 16) = xmmword_254EA03C0;
          *(v72 + 32) = v70;
          *(v72 + 40) = v71;
          v73 = sub_254E79588(v72);

          v74 = 0;
          v75 = 0;
          v76 = MEMORY[0x277D84FA0];
LABEL_36:
          v93 = v73;
          v95[0] = v51;
          v95[1] = v53;
          v95[2] = v74;
          v95[3] = v75;
          v95[4] = v76;
          v95[5] = v63;
          v95[6] = v65;
          v95[7] = v73;
          v83 = v91;
          v84 = v65;
          v85 = v63;
          v86 = v74;
          v87 = v51;
          v88 = v90;
          v95[8] = v91;
          v95[9] = v90;
          memcpy(v92, v95, 0x50uLL);
          v96[0] = v87;
          v96[1] = v53;
          v96[2] = v86;
          v96[3] = v75;
          v96[4] = v76;
          v96[5] = v85;
          v96[6] = v84;
          v96[7] = v93;
          v96[8] = v83;
          v96[9] = v88;
          sub_254E89A6C(v95, &v94);
          sub_254E7D778(v96);
          goto LABEL_37;
        }

        v74 = 0;
        v75 = 0;
LABEL_35:
        v76 = MEMORY[0x277D84FA0];
        v73 = MEMORY[0x277D84FA0];
        goto LABEL_36;
      }
    }

    else
    {
    }

    v74 = 0;
    v75 = 0;
LABEL_34:
    v63 = 0;
    v65 = 0;
    goto LABEL_35;
  }

  v5[3] = 0u;
  v5[4] = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
LABEL_37:
  sub_254E738E4();
}

uint64_t DetectedPerson.description.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_254E9E40C();
  MEMORY[0x259C2B550](0x4E206E6F73726550, 0xED0000203A656D61);
  v3 = sub_254E8C968();
  MEMORY[0x259C2B550](v3);
  MEMORY[0x259C2B550](0x203A64692820, 0xE600000000000000);
  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = 7104878;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x259C2B550](v4, v5);

  MEMORY[0x259C2B550](0xD000000000000012, 0x8000000254EA5790);
  sub_254E8C8D4();
  v6 = sub_254E9E34C();
  MEMORY[0x259C2B550](v6);

  MEMORY[0x259C2B550](0xD000000000000010, 0x8000000254EA57B0);
  sub_254E9E34C();
  sub_254E8CC78();

  MEMORY[0x259C2B550](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_254E84CE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064)
          {

            return 5;
          }

          else
          {
            v11 = sub_254E9E5CC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254E84EE4(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6464416C69616D65;
      break;
    case 3:
    case 4:
      result = 0x6D754E656E6F6870;
      break;
    case 5:
      result = 0x49746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E84FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E84CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E84FC8(uint64_t a1)
{
  v2 = sub_254E89B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E85004(uint64_t a1)
{
  v2 = sub_254E89B14();

  return MEMORY[0x2821FE720](a1, v2);
}

void DetectedPerson.encode(to:)()
{
  sub_254E73838();
  v2 = v1;
  sub_254E6775C(&qword_27F755800);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v3);
  sub_254E8C558();
  sub_254E73820(v2, v2[3]);
  sub_254E89B14();
  sub_254E8CAF0();
  sub_254E9E65C();
  sub_254E9E56C();
  if (!v0)
  {
    sub_254E8CC14(1);
    sub_254E79764();
    sub_254E9E53C();
    sub_254E6775C(&qword_27F755480);
    sub_254E89B68(&qword_280C3FE58);
    sub_254E8CB44();
    sub_254E79764();
    sub_254E9E59C();
    sub_254E8CC14(3);
    sub_254E79764();
    sub_254E9E53C();
    sub_254E8CB44();
    sub_254E79764();
    sub_254E9E59C();
    sub_254E8CC14(5);
    sub_254E79764();
    sub_254E9E53C();
  }

  v4 = sub_254E8CB70();
  v5(v4);
  sub_254E62F78();
}

void DetectedPerson.hash(into:)()
{
  sub_254E7392C();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[9];
  sub_254E9E29C();
  sub_254E9E61C();
  if (v3)
  {
    sub_254E9E29C();
  }

  sub_254E76148(v2, v4);
  sub_254E9E61C();
  if (v6)
  {
    sub_254E9E29C();
  }

  sub_254E76148(v2, v5);
  if (v7)
  {
    sub_254E9E61C();
    sub_254E738E4();

    sub_254E9E29C();
  }

  else
  {
    sub_254E9E61C();
    sub_254E738E4();
  }
}

uint64_t DetectedPerson.hashValue.getter()
{
  sub_254E73A88();
  DetectedPerson.hash(into:)();
  return sub_254E9E63C();
}

void DetectedPerson.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  v5 = v4;
  v6 = sub_254E6775C(&qword_27F755810);
  sub_254E62124();
  v8 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  sub_254E8C850();
  sub_254E73820(v3, v3[3]);
  sub_254E89B14();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v3);
  }

  else
  {
    sub_254E8C814();
    v10 = sub_254E9E4DC();
    v26 = v11;
    sub_254E8C814();
    v23 = v10;
    v24 = sub_254E9E4AC();
    v25 = v12;
    sub_254E6775C(&qword_27F755480);
    sub_254E89B68(&qword_280C3FC20);
    sub_254E8CA14();
    sub_254E9E50C();
    LOBYTE(v28[0]) = 3;
    sub_254E8C814();
    sub_254E9E4AC();
    v22 = v13;
    LOBYTE(v27[0]) = 4;
    sub_254E8CA14();
    sub_254E9E50C();
    v14 = v28[0];
    v15 = sub_254E9E4AC();
    v17 = v16;
    (*(v8 + 8))(v1, v6);
    v27[0] = v23;
    v27[1] = v26;
    v27[2] = v24;
    v27[3] = v25;
    sub_254E8CB30();
    v27[4] = v19;
    v27[5] = v18;
    v27[6] = v22;
    v27[7] = v28[0];
    v27[8] = v15;
    v27[9] = v17;
    memcpy(v5, v27, 0x50uLL);
    sub_254E89A6C(v27, v28);
    sub_254E6A780(v3);
    v28[0] = v23;
    v28[1] = v26;
    v28[2] = v24;
    v28[3] = v25;
    sub_254E8CB30();
    v28[4] = v21;
    v28[5] = v20;
    v28[6] = v22;
    v28[7] = v14;
    v28[8] = v15;
    v28[9] = v17;
    sub_254E7D778(v28);
  }

  sub_254E62F78();
}

uint64_t sub_254E857BC()
{
  sub_254E9E5FC();
  DetectedPerson.hash(into:)();
  return sub_254E9E63C();
}

uint64_t DetectedPlace.place.setter()
{
  sub_254E8C668();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DetectedPlace.description.getter()
{
  sub_254E8C984();
  v2 = v0;
  MEMORY[0x259C2B550]();
  return v2;
}

uint64_t sub_254E858F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563616C70 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E8597C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E858F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E859A8(uint64_t a1)
{
  v2 = sub_254E89BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E859E4(uint64_t a1)
{
  v2 = sub_254E89BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E85B04()
{
  sub_254E8C668();
  sub_254E8C994();
  sub_254E9E40C();

  v1 = sub_254E8C968();
  MEMORY[0x259C2B550](v1);
  return v0;
}

uint64_t sub_254E85B68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E85C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E85B68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E85C34(uint64_t a1)
{
  v2 = sub_254E89C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E85C70(uint64_t a1)
{
  v2 = sub_254E89C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetectedAppEntity.typeIdentifier.setter()
{
  sub_254E8C668();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DetectedAppEntity.instanceIdentifier.setter()
{
  sub_254E8C668();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DetectedAppEntity.entityIdentifier.getter()
{
  v0 = sub_254E73920();
  type metadata accessor for DetectedAppEntity(v0);
  return sub_254E89CD4();
}

uint64_t DetectedAppEntity.entityIdentifier.setter()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedAppEntity(v0);
  return sub_254E89C7C();
}

uint64_t DetectedAppEntity.entityIdentifier.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedAppEntity(v0);
  return sub_254E7353C();
}

uint64_t DetectedAppEntity.isSelected.setter(char a1)
{
  result = type metadata accessor for DetectedAppEntity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DetectedAppEntity.isSelected.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedAppEntity(v0);
  return sub_254E7353C();
}

uint64_t DetectedAppEntity.isPrimary.setter(char a1)
{
  result = type metadata accessor for DetectedAppEntity(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DetectedAppEntity.isPrimary.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for DetectedAppEntity(v0);
  return sub_254E7353C();
}

uint64_t DetectedAppEntity.init(entityIdentifier:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for DetectedAppEntity(0);
  *a1 = 0u;
  a1[1] = 0u;
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v3, v4, v5, v6);
  *(a1 + *(v2 + 28)) = 0;
  *(a1 + *(v2 + 32)) = 0;
  return sub_254E89C7C();
}

void DetectedAppEntity.init(typeId:instanceId:displayRepresentation:appBundleId:)()
{
  sub_254E7392C();
  v34 = v1;
  v35 = v2;
  v36 = v3;
  v37 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_254E6775C(&qword_27F755848);
  sub_254E62CE8(v11);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v12);
  sub_254E73884();
  v13 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v13);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v14);
  sub_254E8C558();
  v15 = sub_254E9E1EC();
  sub_254E62124();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_254E73770();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v34 - v23);
  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v34;
  v25[3] = v26;
  v25[4] = v8;
  v25[5] = v6;
  *v24 = v25;
  (*(v17 + 104))(v24, *MEMORY[0x277D72D28], v15);
  (*(v17 + 16))(v21, v24, v15);
  sub_254E89CD4();
  sub_254E9E15C();
  v27 = sub_254E8C9D8();
  sub_254E89D2C(v27, v28);
  (*(v17 + 8))(v24, v15);
  v29 = sub_254E9E16C();
  sub_254E65418(v0, 0, 1, v29);
  v30 = type metadata accessor for DetectedAppEntity(0);
  *v10 = 0u;
  v10[1] = 0u;
  sub_254E63420();
  sub_254E65418(v31, v32, v33, v29);
  *(v10 + *(v30 + 28)) = 0;
  *(v10 + *(v30 + 32)) = 0;
  sub_254E89C7C();
  sub_254E738E4();
}

uint64_t DetectedAppEntity.init(identifier:)()
{
  v1 = sub_254E73920();
  v2 = type metadata accessor for DetectedAppEntity(v1);
  *v0 = 0u;
  *(v0 + 16) = 0u;
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v3, v4, v5, v6);
  *(v0 + *(v2 + 28)) = 0;
  *(v0 + *(v2 + 32)) = 0;
  v7 = sub_254E89D80();
  v8 = MEMORY[0x259C2B650](47, 0xE100000000000000, 1, 1, MEMORY[0x277D837D0], v7);

  if (*(v8 + 16) != 2)
  {
  }

  v9 = sub_254E8C8D4();
  v10 = MEMORY[0x259C2B530](v9);
  v12 = v11;

  *v0 = v10;
  *(v0 + 8) = v12;
  if (*(v8 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    v14 = sub_254E8C8D4();
    v15 = MEMORY[0x259C2B530](v14);
    v17 = v16;

    *(v0 + 16) = v15;
    *(v0 + 24) = v17;
  }

  return result;
}

uint64_t DetectedAppEntity.init(typeIdentifier:instanceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for DetectedAppEntity(0);
  sub_254E9E16C();
  sub_254E63420();
  result = sub_254E65418(v11, v12, v13, v14);
  *(a5 + *(v10 + 28)) = 0;
  *(a5 + *(v10 + 32)) = 0;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DetectedAppEntity.description.getter()
{
  sub_254E8C994();
  sub_254E9E40C();

  sub_254E8C7DC();
  v2 = v0;
  type metadata accessor for DetectedAppEntity(0);
  sub_254E6775C(&qword_27F755158);
  sub_254E9E37C();
  sub_254E8CC78();

  return v2;
}

uint64_t sub_254E8658C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000254EA5850 == a2;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000254EA5870 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079)
        {

          return 4;
        }

        else
        {
          v10 = sub_254E9E5CC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_254E86754(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7463656C65537369;
      break;
    case 4:
      result = 0x72616D6972507369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E86818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E8658C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E86840(uint64_t a1)
{
  v2 = sub_254E89DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E8687C(uint64_t a1)
{
  v2 = sub_254E89DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetectedAppEntity.encode(to:)()
{
  v2 = sub_254E6775C(&qword_27F755858);
  sub_254E62124();
  v4 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E8C558();
  v6 = sub_254E8C6B4();
  sub_254E73820(v6, v7);
  sub_254E89DD4();
  sub_254E8CAF0();
  sub_254E8C8BC();
  sub_254E9E65C();
  sub_254E73530();
  sub_254E9E53C();
  if (!v0)
  {
    sub_254E73814();
    sub_254E73530();
    sub_254E9E53C();
    type metadata accessor for DetectedAppEntity(0);
    sub_254E9E16C();
    sub_254E8C48C();
    sub_254E80EF8(v8, v9);
    sub_254E73530();
    sub_254E9E55C();
    sub_254E73530();
    sub_254E9E57C();
    sub_254E73530();
    sub_254E9E57C();
  }

  return (*(v4 + 8))(v1, v2);
}

void DetectedAppEntity.hash(into:)()
{
  sub_254E7392C();
  sub_254E73524();
  v3 = sub_254E9E16C();
  sub_254E62124();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  sub_254E737E4();
  v7 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v7);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  sub_254E636EC();
  if (*(v0 + 8))
  {
    sub_254E73AA0();
    sub_254E9E29C();
  }

  else
  {
    sub_254E73A70();
  }

  if (*(v0 + 24))
  {
    sub_254E73AA0();
    sub_254E9E29C();
  }

  else
  {
    sub_254E73A70();
  }

  type metadata accessor for DetectedAppEntity(0);
  sub_254E89CD4();
  if (sub_254E655F8(v2, 1, v3) == 1)
  {
    sub_254E73A70();
  }

  else
  {
    sub_254E8CBF0();
    v9 = sub_254E8C9D8();
    v10(v9);
    sub_254E73AA0();
    sub_254E8C48C();
    sub_254E80EF8(v11, v12);
    sub_254E9E23C();
    (*(v5 + 8))(v1, v3);
  }

  sub_254E9E61C();
  sub_254E9E61C();
  sub_254E738E4();
}

uint64_t sub_254E86CB0(void (*a1)(_BYTE *))
{
  sub_254E73A88();
  a1(v3);
  return sub_254E9E63C();
}

void DetectedAppEntity.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  v4 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v4);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E62158();
  sub_254E6775C(&qword_27F755860);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  sub_254E8C558();
  v7 = type metadata accessor for DetectedAppEntity(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  sub_254E737E4();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v9 = sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v10, v11, v12, v9);
  v13 = *(v8 + 36);
  *(v1 + v13) = 0;
  v14 = *(v8 + 40);
  *(v1 + v14) = 0;
  sub_254E73820(v3, v3[3]);
  sub_254E89DD4();
  sub_254E8CAF0();
  sub_254E9E64C();
  if (!v0)
  {
    v22 = v14;
    *v1 = sub_254E9E4AC();
    *(v1 + 8) = v15;
    sub_254E73814();
    *(v1 + 16) = sub_254E9E4AC();
    *(v1 + 24) = v16;
    sub_254E8C48C();
    sub_254E80EF8(v17, v18);
    sub_254E9E4CC();
    sub_254E89C7C();
    *(v1 + v13) = sub_254E9E4EC() & 1;
    v19 = sub_254E9E4EC();
    v20 = sub_254E8C9A4();
    v21(v20);
    *(v1 + v22) = v19 & 1;
    sub_254E80F3C();
  }

  sub_254E6A780(v3);
  sub_254E8C4F4();
  sub_254E7D6CC();
  sub_254E62F78();
}

uint64_t sub_254E87054(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_254E9E5FC();
  a4(v6);
  return sub_254E9E63C();
}

uint64_t DetectedAppIntent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_254E8C994();
  sub_254E9E40C();

  sub_254E8C7DC();
  v5 = v3;
  MEMORY[0x259C2B550](v1, v2);
  return v5;
}

uint64_t sub_254E87154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E871F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E87154(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E87220(uint64_t a1)
{
  v2 = sub_254E89E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E8725C(uint64_t a1)
{
  v2 = sub_254E89E28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_254E872CC()
{
  sub_254E73838();
  v15 = v1;
  v4 = sub_254E8CB94(v2, v3);
  v5 = sub_254E6775C(v4);
  sub_254E62124();
  v7 = v6;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v14 = *v0;
  v11 = sub_254E8C8C8();
  v13 = sub_254E73820(v11, v12);
  v15(v13);
  sub_254E9E65C();
  sub_254E9E56C();
  (*(v7 + 8))(v10, v5);
  sub_254E62F78();
}

uint64_t _s23IntelligenceFlowContext13DetectedPlaceV9hashValueSivg_0()
{
  sub_254E73A88();
  sub_254E8CC08();
  sub_254E9E29C();
  return sub_254E9E63C();
}

void sub_254E8745C()
{
  sub_254E73838();
  v2 = v1;
  v4 = v3;
  v15 = v5;
  v7 = sub_254E8CB94(v3, v6);
  sub_254E6775C(v7);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  sub_254E636EC();
  v9 = sub_254E73820(v4, v4[3]);
  v2(v9);
  sub_254E9E64C();
  if (!v0)
  {
    v10 = sub_254E9E4DC();
    v12 = v11;
    v13 = sub_254E8C8C8();
    v14(v13);
    *v15 = v10;
    v15[1] = v12;
  }

  sub_254E6A780(v4);
  sub_254E62F78();
}

unint64_t sub_254E875E0()
{
  result = qword_280C40848;
  if (!qword_280C40848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40848);
  }

  return result;
}

unint64_t sub_254E87634()
{
  result = qword_27F755650;
  if (!qword_27F755650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755650);
  }

  return result;
}

unint64_t sub_254E87688()
{
  result = qword_27F755658;
  if (!qword_27F755658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755658);
  }

  return result;
}

unint64_t sub_254E876DC()
{
  result = qword_280C40860[0];
  if (!qword_280C40860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C40860);
  }

  return result;
}

unint64_t sub_254E87730()
{
  result = qword_27F755660;
  if (!qword_27F755660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755660);
  }

  return result;
}

unint64_t sub_254E87784()
{
  result = qword_27F755668;
  if (!qword_27F755668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755668);
  }

  return result;
}

unint64_t sub_254E877D8()
{
  result = qword_27F755670;
  if (!qword_27F755670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755670);
  }

  return result;
}

unint64_t sub_254E8782C()
{
  result = qword_27F755678;
  if (!qword_27F755678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755678);
  }

  return result;
}

unint64_t sub_254E87880()
{
  result = qword_27F755680;
  if (!qword_27F755680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755680);
  }

  return result;
}

unint64_t sub_254E878D4()
{
  result = qword_27F755688;
  if (!qword_27F755688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755688);
  }

  return result;
}

unint64_t sub_254E87928()
{
  result = qword_27F755690;
  if (!qword_27F755690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755690);
  }

  return result;
}

unint64_t sub_254E8797C()
{
  result = qword_27F755698;
  if (!qword_27F755698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755698);
  }

  return result;
}

unint64_t sub_254E879D0()
{
  result = qword_27F7556A0;
  if (!qword_27F7556A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7556A0);
  }

  return result;
}

unint64_t sub_254E87A24()
{
  result = qword_27F7556B0;
  if (!qword_27F7556B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7556B0);
  }

  return result;
}

unint64_t sub_254E87A78()
{
  result = qword_27F7556B8;
  if (!qword_27F7556B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7556B8);
  }

  return result;
}

unint64_t sub_254E87ACC()
{
  result = qword_280C40830;
  if (!qword_280C40830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40830);
  }

  return result;
}

uint64_t sub_254E87B20()
{
  sub_254E9E5FC();
  sub_254E8CC08();
  sub_254E9E29C();
  return sub_254E9E63C();
}

IntelligenceFlowContext::DetectableEntityType_optional __swiftcall DetectableEntityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254E9E47C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DetectableEntityType.rawValue.getter()
{
  result = 1702125924;
  switch(*v0)
  {
    case 1:
      result = 0x6D754E656E6F6870;
      break;
    case 2:
      result = 1802398060;
      break;
    case 3:
      result = 0x73736572646461;
      break;
    case 4:
      result = 0x6E6F73726570;
      break;
    case 5:
      result = 0x6563616C70;
      break;
    case 6:
      result = 0x617A696E6167726FLL;
      break;
    case 7:
      result = 0x7469746E45707061;
      break;
    case 8:
      result = 0x6E65746E49707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E87D00@<X0>(uint64_t *a1@<X8>)
{
  result = DetectableEntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254E87DF8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_254E87E30(uint64_t *a1)
{
  sub_254E6775C(a1);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

uint64_t sub_254E87E80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254EA10F0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_254E87EE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_254E9E5FC();
  sub_254E9E29C();
  v8 = sub_254E9E63C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_254E9E5CC() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_254E88904(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_254E88030(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_254E9E5FC();
  sub_254E62278();
  v7 = sub_254E9E63C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE400000000000000;
      v12 = 1702125924;
      switch(*(*(v6 + 48) + v9))
      {
        case 1:
          v12 = 0x6D754E656E6F6870;
          v11 = 0xEB00000000726562;
          break;
        case 2:
          v12 = 1802398060;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x73736572646461;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v12 = 0x6E6F73726570;
          break;
        case 5:
          v11 = 0xE500000000000000;
          v12 = 0x6563616C70;
          break;
        case 6:
          v12 = 0x617A696E6167726FLL;
          v11 = 0xEC0000006E6F6974;
          break;
        case 7:
          v11 = 0xE900000000000079;
          v12 = 0x7469746E45707061;
          break;
        case 8:
          v12 = 0x6E65746E49707061;
          v11 = 0xE900000000000074;
          break;
        default:
          break;
      }

      v13 = 0xE400000000000000;
      v14 = 1702125924;
      switch(a2)
      {
        case 1:
          v14 = 0x6D754E656E6F6870;
          v13 = 0xEB00000000726562;
          break;
        case 2:
          v14 = 1802398060;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x73736572646461;
          break;
        case 4:
          v13 = 0xE600000000000000;
          v14 = 0x6E6F73726570;
          break;
        case 5:
          v13 = 0xE500000000000000;
          v14 = 0x6563616C70;
          break;
        case 6:
          v14 = 0x617A696E6167726FLL;
          v13 = 0xEC0000006E6F6974;
          break;
        case 7:
          v13 = 0xE900000000000079;
          v14 = 0x7469746E45707061;
          break;
        case 8:
          v14 = 0x6E65746E49707061;
          v13 = 0xE900000000000074;
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        break;
      }

      v16 = sub_254E9E5CC();

      if (v16)
      {
        goto LABEL_29;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_254E88A6C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_254E88360()
{
  v1 = v0;
  v2 = *v0;
  sub_254E6775C(&qword_27F7554C0);
  result = sub_254E9E3EC();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_254E87E80(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_254E9E5FC();
    sub_254E9E29C();
    result = sub_254E9E63C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}