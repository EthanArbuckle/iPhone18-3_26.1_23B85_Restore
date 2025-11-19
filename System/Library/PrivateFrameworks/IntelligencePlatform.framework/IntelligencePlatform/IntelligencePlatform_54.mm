uint64_t KnosisInternalFact.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB4A8, &qword_1ABF6E770);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v25 = v1[4];
  v26 = v1[3];
  v23 = v1[7];
  v24 = v1[5];
  v20 = v1[8];
  v13 = v1[10];
  v21 = v1[9];
  v22 = v1[6];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_1ABA88DCC(v16, v14);
  sub_1ABE79558();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA90800();
  sub_1ABF24F34();
  if (!v27)
  {
    sub_1ABAA1AEC();
    sub_1ABF24F54();
    sub_1ABAA1AEC();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABAA1DA0();
    sub_1ABF24F14();
    sub_1ABAA1AEC();
    sub_1ABF24ED4();
    sub_1ABAA1AEC();
    sub_1ABF24ED4();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABE795AC();
    sub_1ABAA1DA0();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v2, v18);
}

uint64_t KnosisInternalFact.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[2];
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v9 = *(v1 + 5);
  v8 = *(v1 + 6);
  v11 = *(v1 + 7);
  v10 = *(v1 + 8);
  v13 = *(v1 + 9);
  v12 = *(v1 + 10);
  sub_1ABF23D34();
  v14 = 0.0;
  if (v5 != 0.0)
  {
    v14 = v5;
  }

  MEMORY[0x1AC5AA8D0](*&v14);
  sub_1ABA90800();
  sub_1ABF23D34();
  if (v9)
  {
    sub_1ABF25254();
    sub_1ABB4ED98(a1, v9);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1ABF25254();
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1ABF25254();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_1ABF25254();
  sub_1ABF23D34();
  if (v13)
  {
LABEL_6:
    sub_1ABF25254();
    sub_1ABF23D34();
    goto LABEL_10;
  }

LABEL_9:
  sub_1ABF25254();
LABEL_10:

  return sub_1ABB4F054(a1, v12);
}

uint64_t KnosisInternalFact.hashValue.getter()
{
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABE72EE0()
{
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v1);
  return sub_1ABF25294();
}

void static KnosisInternalFact.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[6];
  v10 = a2[7];
  v12 = a1[3] == a2[3] && a1[4] == a2[4];
  v14 = a2[8];
  v13 = a2[9];
  if (v12)
  {
    goto LABEL_34;
  }

  sub_1ABA7D000();
  v36 = v16;
  v37 = v15;
  v40 = v14;
  v42 = v17;
  v38 = v6;
  v39 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v3;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1ABF25054();
  v11 = v36;
  v10 = v37;
  v5 = v26;
  v4 = v24;
  v14 = v40;
  v13 = v42;
  v2 = v22;
  v3 = v20;
  v9 = v19;
  v8 = v18;
  v6 = v38;
  v7 = v39;
  if (v27)
  {
LABEL_34:
    if (!v4 || !v10 || (v5 == v11 ? (v28 = v4 == v10) : (v28 = 0), v28 || (v41 = v2, v43 = v13, v29 = sub_1ABF25054(), v2 = v41, v13 = v43, (v29 & 1) != 0)))
    {
      if (v7 && v13 && (v6 == v14 ? (v30 = v7 == v13) : (v30 = 0), !v30 && (sub_1ABAA015C(), v32 = v31, v33 = sub_1ABF25054(), v2 = v32, (v33 & 1) == 0)))
      {
        sub_1ABAA015C();
      }

      else if (v2 == v9 && v3 == v8)
      {
        sub_1ABA950C0();
        return;
      }
    }
  }

  else
  {
    sub_1ABA7D000();
  }

  sub_1ABA950C0();

  sub_1ABF25054();
}

BOOL sub_1ABE730E0(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD76EC4(v10, __dst, v3, v4, v5, v6, v7, v8);
}

BOOL sub_1ABE73138(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD77010(v10, __dst, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABE73190(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD76D84(v10, __dst, v3, v4, v5, v6, v7, v8) & 1;
}

uint64_t sub_1ABE731E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF947D0);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x3A737463616620, 0xE700000000000000);

  sub_1ABE7A35C(v5);
  v7 = v6;

  MEMORY[0x1AC5A9750](v7, &type metadata for KnosisInternalFact);

  v8 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v8);

  MEMORY[0x1AC5A9410](0x726577736E61202CLL, 0xED00003A65707954);
  v9 = 0xE900000000000065;
  v10 = 0x7461636964657270;
  if (v4 != 1)
  {
    v10 = 0x7463656A626FLL;
    v9 = 0xE600000000000000;
  }

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x7463656A627573;
  }

  if (v4)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x1AC5A9410](v11, v12);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t KnosisQueryArg.description.getter()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x7463656A626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A627573;
  }
}

IntelligencePlatform::KnosisQueryArg_optional __swiftcall KnosisQueryArg.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABE7343C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACEB28();
}

uint64_t sub_1ABE7346C@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisQueryArg.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE73548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v11 = *(a6 + 16);
  v12 = *(a6 + 24);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 88) = a7;
  *(v10 + 96) = a8;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = *a6;
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  sub_1ABAFEE5C(0, 0);
  *(v10 + 104) = a9;
  *(v10 + 105) = a10;
  return v10;
}

unint64_t sub_1ABE735BC()
{
  sub_1ABF24AB4();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v3);

  MEMORY[0x1AC5A9410](0x3A74696D696C202CLL, 0xE800000000000000);
  v15 = *(v0 + 88);
  sub_1ABA7E79C();
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  MEMORY[0x1AC5A9410](0x74657366666F202CLL, 0xE90000000000003ALL);
  v16 = *(v0 + 96);
  sub_1ABA7E79C();
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  if (*(v0 + 48))
  {

    v6 = sub_1ABE71478();
    MEMORY[0x1AC5A9410](v6);

    MEMORY[0x1AC5A9410](0x6F4E797265757120, 0xEB000000003A6564);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);

    sub_1ABF24AB4();

    v11 = IntentRequest.description.getter();
    v13 = v12;
    sub_1ABAFEE5C(v10, v7);
    MEMORY[0x1AC5A9410](v11, v13);

    MEMORY[0x1AC5A9410](0x52746E65746E6920, 0xEF3A747365757165);
  }

  if (*(v0 + 104) == 1)
  {
    MEMORY[0x1AC5A9410](0x743A677562656420, 0xEB00000000657572);
  }

  if (*(v0 + 105) == 1)
  {
    MEMORY[0x1AC5A9410](0xD000000000000010, 0x80000001ABF8EFA0);
  }

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1ABE73898()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1ABAFEE5C(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1ABE738D8()
{
  sub_1ABE73898();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE73930()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    v3 = sub_1ABE71478(v2);
  }

  else
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v5 = *(v0 + 16);
    v3 = v5[2];
    if (v3)
    {
      if (v3 == 1)
      {
        v3 = v5[4];
        v6 = v5[5];
      }

      else
      {

        v7 = sub_1ABA8CD18();
        sub_1ABAD219C(v7, v8);
        sub_1ABAA3AA4();
        sub_1ABD1044C(v9);
        sub_1ABF23B54();

        v10 = sub_1ABA7E79C();
        MEMORY[0x1AC5A9410](v10);

        MEMORY[0x1AC5A9410](93, 0xE100000000000000);
        return 91;
      }
    }
  }

  return v3;
}

uint64_t sub_1ABE73A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA07D4();
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0x3FF0000000000000;
  *(v3 + 64) = 0;
  *(v3 + 72) = sub_1ABF239C4();
  *(v3 + 80) = 514;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  sub_1ABAA0948();
  swift_beginAccess();
  v7 = *(v3 + 32);
  *(v3 + 32) = a3;

  return v3;
}

uint64_t sub_1ABE73B20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v2;
  type metadata accessor for KnosisQueryParam();
  v5 = sub_1ABF239C4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v49 = v4;
  v50 = a1;
  v48 = v2;
  if (v2[4])
  {
    v6 = v2[4];
  }

  else
  {
    v6 = sub_1ABF239C4();
  }

  v8 = v6 + 64;
  v7 = *(v6 + 64);
  v9 = *(v6 + 32);
  sub_1ABA7D32C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;

  v15 = 0;
  v51 = v14;
  v52 = v6 + 64;
  v53 = v6;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(v6 + 56);
      v19 = (*(v6 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v18 + 8 * v17);

      v54 = sub_1ABE73F04(sub_1ABE75E70);
      swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1ABA94FC8(v20, v21);
      if (__OFADD__(v5[2], (v24 & 1) == 0))
      {
        break;
      }

      v25 = v23;
      v26 = v24;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABF24C64())
      {
        v27 = sub_1ABA94FC8(v20, v21);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_26;
        }

        v25 = v27;
      }

      v12 &= v12 - 1;
      if (v26)
      {

        v29 = v5[7];
        v30 = *(v29 + 8 * v25);
        *(v29 + 8 * v25) = v54;
      }

      else
      {
        v5[(v25 >> 6) + 8] |= 1 << v25;
        v31 = (v5[6] + 16 * v25);
        *v31 = v20;
        v31[1] = v21;
        *(v5[7] + 8 * v25) = v54;

        v32 = v5[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_25;
        }

        v5[2] = v34;
      }

      v15 = v16;
      v8 = v52;
      v6 = v53;
      v14 = v51;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_1ABF25104();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v16 >= v14)
      {
        break;
      }

      v12 = *(v8 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    v35 = v48[2];
    v36 = v48[3];
    v37 = swift_allocObject();

    v38 = sub_1ABA8CD18();
    sub_1ABE73A74(v38, v39, v5);
    if (v48[5])
    {
      v40 = v48[5];

      v41 = sub_1ABAA32CC();
      v42 = sub_1ABE73F04(v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(v37 + 40);
    *(v37 + 40) = v42;

    *(v37 + 48) = v48[6];
    *(v37 + 56) = v48[7];
    *(v37 + 64) = *(v48 + 64);
    *(v37 + 80) = *(v48 + 40);
    sub_1ABA7EF0C();
    swift_beginAccess();
    v44 = v48[9];
    sub_1ABAA0948();
    swift_beginAccess();
    v45 = *(v37 + 72);
    *(v37 + 72) = v44;

    v46 = *(v37 + 88);
    *(v37 + 88) = v48[11];

    v50[3] = v49;
    *v50 = v37;
  }

  return result;
}

uint64_t sub_1ABE73F04(void (*a1)(void *__return_ptr))
{
  v2 = *v1;
  a1(v5);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1ABE73F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047342 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7079547865646E69 && a2 == 0xE900000000000065;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736D61726170 && a2 == 0xE600000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465747563657865 && a2 == 0xE800000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6365784570696B73 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6449746C75736572 && a2 == 0xE900000000000073;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x656D614E706F76 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
  }
}

uint64_t sub_1ABE742E4(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1936159329;
      break;
    case 2:
      result = 1954047342;
      break;
    case 3:
      result = 0x74696D696CLL;
      break;
    case 4:
      result = 0x746867696577;
      break;
    case 5:
      result = 0x7079547865646E69;
      break;
    case 6:
      result = 0x736D61726170;
      break;
    case 7:
      result = 0x6465747563657865;
      break;
    case 8:
      result = 0x6365784570696B73;
      break;
    case 9:
      result = 0x6449746C75736572;
      break;
    case 10:
      result = 0x656D614E706F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE743F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE73F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE74420(uint64_t a1)
{
  v2 = sub_1ABE7BF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7445C(uint64_t a1)
{
  v2 = sub_1ABE7BF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1ABE74498()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[5];
  v0[5] = 0;

  if (v6)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v7 = *(v6 + 40);
      swift_retain_n();

      v6 = v7;
    }

    while (v7);
  }

  return v0;
}

uint64_t sub_1ABE74538()
{
  sub_1ABE74498();

  return swift_deallocClassInstance();
}

void sub_1ABE7456C()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = sub_1ABAD219C(&qword_1EB4DB518, &qword_1ABF6F250);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA83634();
  v9 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE7BF08();
  sub_1ABA8B76C();
  sub_1ABF252E4();
  v10 = v1[2];
  v11 = v1[3];

  sub_1ABA88A3C();
  sub_1ABF24F34();
  if (!v10)
  {

    sub_1ABA7EF0C();
    swift_beginAccess();
    v21 = v1[4];
    sub_1ABAD219C(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7BF5C();
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F14();
    v22 = v1[5];
    sub_1ABA8FBD0();
    sub_1ABE7C628(v14);
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24F14();
    v15 = v1[6];
    sub_1ABA88A3C();
    sub_1ABF24F74();
    v16 = v1[7];
    sub_1ABA88A3C();
    sub_1ABF24F54();
    LOBYTE(v22) = *(v1 + 64);
    sub_1ABE7C018();
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA7EF0C();
    swift_beginAccess();
    v23 = v1[9];
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABAA2710(&qword_1EB4D2070);
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v17 = *(v1 + 80);
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24EE4();
    v18 = *(v1 + 81);
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24EE4();
    v24 = v1[11];
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F14();
    v19 = v1[12];
    v20 = v1[13];

    sub_1ABA88A3C();
    sub_1ABF24ED4();
  }

  v12 = sub_1ABAA0FD0();
  v13(v12);

  sub_1ABA7BC90();
}

uint64_t sub_1ABE74954(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1ABE749A4(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void sub_1ABE749A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v10;
  v14 = v13;
  v49 = *v12;
  v15 = sub_1ABAD219C(&qword_1EB4DB640, &qword_1ABF6F310);
  v16 = sub_1ABA7BB64(v15);
  v46 = v17;
  v47 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v12[4] = 0;
  v23 = v12 + 4;
  v12[5] = 0;
  v12[6] = 0;
  v12[7] = 0x3FF0000000000000;
  *(v12 + 64) = 0;
  v12[9] = sub_1ABF239C4();
  v24 = v12 + 9;
  *(v12 + 40) = 514;
  v12[11] = 0;
  v25 = v12 + 11;
  v12[12] = 0;
  v12[13] = 0;
  v27 = v14[3];
  v26 = v14[4];
  v50 = v14;
  sub_1ABA88DCC(v14, v27);
  sub_1ABE7BF08();
  v48 = v22;
  sub_1ABF252C4();
  if (v11)
  {
    v29 = v12[4];

    v30 = v12[5];

    v31 = v12[9];

    v32 = v12[11];

    v33 = v12[13];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v46;
    v53 = 0;
    sub_1ABAA470C();
    v12[2] = sub_1ABF24E14();
    v12[3] = v34;
    sub_1ABAD219C(&qword_1EB4DB528, &unk_1ABF6F258);
    v53 = 1;
    sub_1ABE7C56C();
    sub_1ABF24DF4();
    v35 = v52;
    sub_1ABAA0948();
    swift_beginAccess();
    v36 = *v23;
    *v23 = v35;

    sub_1ABA8FBD0();
    sub_1ABE7C628(v37);
    sub_1ABF24DF4();
    v38 = v12[5];
    v12[5] = v52;

    LOBYTE(v52) = 3;
    sub_1ABAA470C();
    v12[6] = sub_1ABF24E54();
    LOBYTE(v52) = 4;
    sub_1ABAA470C();
    sub_1ABF24E34();
    v12[7] = v39;
    LOBYTE(a10) = 5;
    sub_1ABE7C668();
    sub_1ABF24E64();
    *(v12 + 64) = v52;
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    LOBYTE(v52) = 6;
    sub_1ABA8295C(&qword_1ED86B400);
    sub_1ABE7DCD0();
    sub_1ABF24E64();
    sub_1ABAA0948();
    swift_beginAccess();
    v40 = *v24;
    *v24 = a10;

    sub_1ABAA470C();
    *(v12 + 80) = sub_1ABF24DC4();
    LOBYTE(a10) = 8;
    sub_1ABAA470C();
    *(v12 + 81) = sub_1ABF24DC4();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v51 = 9;
    sub_1ABA7E810(&qword_1ED870660);
    sub_1ABE7DCD0();
    sub_1ABF24DF4();
    v41 = *v25;
    *v25 = a10;

    v42 = sub_1ABF24DB4();
    v44 = v43;
    (*(v28 + 8))(v48, v47);
    v45 = v12[13];
    v12[12] = v42;
    v12[13] = v44;
  }

  sub_1ABA84B54(v50);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE74EB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE74954(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE74F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1ABE71A88();
}

uint64_t sub_1ABE74F10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701669236 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABE75060(char a1)
{
  result = 0x676E69727473;
  switch(a1)
  {
    case 1:
      result = 0x74616F6C66;
      break;
    case 2:
      result = 1701669236;
      break;
    case 3:
      result = 0x64726F7779656BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE750D4()
{
  sub_1ABA7BCA8();
  v53 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB5B8, &qword_1ABF6F2A0);
  v5 = sub_1ABA7BB64(v4);
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v50 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4DB5C0, &qword_1ABF6F2A8);
  v12 = sub_1ABA7BB64(v11);
  v48 = v13;
  v49 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v47 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4DB5C8, &qword_1ABF6F2B0);
  v19 = sub_1ABA7BB64(v18);
  v45 = v20;
  v46 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7ED98();
  v24 = sub_1ABAD219C(&qword_1EB4DB5D0, &qword_1ABF6F2B8);
  sub_1ABA7BB64(v24);
  v44 = v25;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v43 - v29;
  v31 = sub_1ABAD219C(&qword_1EB4DB5D8, &unk_1ABF6F2C0);
  sub_1ABA7BB64(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v43 - v37;
  v39 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE7C114();
  sub_1ABF252E4();
  switch(v53)
  {
    case 1:
      sub_1ABE7C210();
      sub_1ABAA1624();
      (*(v45 + 8))(v0, v46);
      break;
    case 2:
      sub_1ABE7C1BC();
      v40 = v47;
      sub_1ABAA1624();
      v42 = v48;
      v41 = v49;
      goto LABEL_5;
    case 3:
      sub_1ABE7C168();
      v40 = v50;
      sub_1ABAA1624();
      v42 = v51;
      v41 = v52;
LABEL_5:
      (*(v42 + 8))(v40, v41);
      break;
    default:
      sub_1ABE7C264();
      sub_1ABAA1624();
      (*(v44 + 8))(v30, v24);
      break;
  }

  (*(v33 + 8))(v38, v31);
  sub_1ABA7BC90();
}

void sub_1ABE75480()
{
  sub_1ABA7BCA8();
  v79 = v0;
  v3 = v2;
  v78 = sub_1ABAD219C(&qword_1EB4DB568, &qword_1ABF6F270);
  sub_1ABA7BB64(v78);
  v75 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v77 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4DB570, &qword_1ABF6F278);
  v10 = sub_1ABA7BB64(v9);
  v72 = v11;
  v73 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v74 = v15;
  v16 = sub_1ABAD219C(&qword_1EB4DB578, &qword_1ABF6F280);
  v17 = sub_1ABA7BB64(v16);
  v70 = v18;
  v71 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7ED98();
  v22 = sub_1ABAD219C(&qword_1EB4DB580, &qword_1ABF6F288);
  sub_1ABA7BB64(v22);
  v69 = v23;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA83634();
  v27 = sub_1ABAD219C(&qword_1EB4DB588, &unk_1ABF6F290);
  sub_1ABA7BB64(v27);
  v76 = v28;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  v34 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE7C114();
  v35 = v79;
  sub_1ABF252C4();
  if (v35)
  {
    goto LABEL_8;
  }

  v67 = v22;
  v68 = v1;
  v36 = v77;
  v37 = v78;
  v79 = v3;
  v38 = v33;
  v39 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v39, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v52 = sub_1ABF24B44();
    swift_allocError();
    v54 = v53;
    v55 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v54 = &unk_1F2087180;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v76 + 8))(v38, v27);
    v3 = v79;
LABEL_8:
    sub_1ABA84B54(v3);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  v66 = 0;
  if (v41 < (v42 >> 1))
  {
    v43 = *(v40 + v41);
    sub_1ABAD4E90(v41 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      v48 = v43;
      v50 = v75;
      v49 = v76;
      switch(v48)
      {
        case 1:
          sub_1ABE7C210();
          sub_1ABA980A8();
          swift_unknownObjectRelease();
          v57 = v70;
          v56 = v71;
          goto LABEL_15;
        case 2:
          sub_1ABE7C1BC();
          v37 = v74;
          sub_1ABA980A8();
          swift_unknownObjectRelease();
          v57 = v72;
          v56 = v73;
LABEL_15:
          (*(v57 + 8))(v37, v56);
          goto LABEL_16;
        case 3:
          sub_1ABE7C168();
          v58 = v66;
          sub_1ABF24D94();
          if (v58)
          {
            v59 = *(v49 + 8);
            v60 = sub_1ABA7FD60();
            v61(v60);
            swift_unknownObjectRelease();
            v3 = v79;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v50 + 8))(v36, v37);
LABEL_16:
          v62 = *(v49 + 8);
          v63 = sub_1ABA7FD60();
          v64(v63);
          sub_1ABA84B54(v79);
          break;
        default:
          sub_1ABE7C264();
          v51 = v68;
          sub_1ABA980A8();
          swift_unknownObjectRelease();
          (*(v69 + 8))(v51, v67);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABE75A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE74F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE75A70(uint64_t a1)
{
  v2 = sub_1ABE7C114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75AAC(uint64_t a1)
{
  v2 = sub_1ABE7C114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75AE8(uint64_t a1)
{
  v2 = sub_1ABE7C210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75B24(uint64_t a1)
{
  v2 = sub_1ABE7C210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75B60(uint64_t a1)
{
  v2 = sub_1ABE7C168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75B9C(uint64_t a1)
{
  v2 = sub_1ABE7C168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75BD8(uint64_t a1)
{
  v2 = sub_1ABE7C264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75C14(uint64_t a1)
{
  v2 = sub_1ABE7C264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75C50(uint64_t a1)
{
  v2 = sub_1ABE7C1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75C8C(uint64_t a1)
{
  v2 = sub_1ABE7C1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE75CE0(_BYTE *a1@<X8>)
{
  sub_1ABE75480();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE75D28(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1ABE75D88(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1ABE75DE8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1ABAA07D4();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v3 + 16) = v5;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v3 + 24) = v4;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1ABE75E70@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = v1[2];
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v1[3])
  {

    v6 = sub_1ABAA32CC();
    v7 = sub_1ABE73F04(v6);
  }

  else
  {

    v7 = 0;
  }

  v8 = *(v2 + 32);
  sub_1ABAA096C();
  v9 = swift_allocObject();
  result = sub_1ABE75DE8(v5, v7, v8);
  a1[3] = v4;
  *a1 = v9;
  return result;
}

uint64_t sub_1ABE75F80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{

  a4(v8, v5);

  sub_1ABA93E20(v8, v8[3]);
  v6 = sub_1ABF25044();
  sub_1ABA84B54(v8);
  return v6;
}

uint64_t sub_1ABE75FEC(uint64_t a1, uint64_t a2)
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  v4 = *(a1 + 16);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = *(a2 + 16);

  sub_1ABBA8D30();
  v7 = v6;

  if ((v7 & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v8 = *(a1 + 24);
    sub_1ABA7EF0C();
    swift_beginAccess();
    v9 = *(a2 + 24);
    v10 = (v8 | v9) == 0;
    if (v8 && v9)
    {
      type metadata accessor for QueryNode();

      v10 = sub_1ABE71A88(v11, v9);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1ABE7610C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D726574 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646C696863 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7079546D61726170 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABE76224(char a1)
{
  if (!a1)
  {
    return 0x736D726574;
  }

  if (a1 == 1)
  {
    return 0x646C696863;
  }

  return 0x7079546D61726170;
}

uint64_t sub_1ABE76280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE7610C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE762A8(uint64_t a1)
{
  v2 = sub_1ABE7C06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE762E4(uint64_t a1)
{
  v2 = sub_1ABE7C06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE76320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1ABE76348()
{
  sub_1ABE76320();
  sub_1ABAA096C();

  return swift_deallocClassInstance();
}

void sub_1ABE76378()
{
  sub_1ABA8CCF0();
  v2 = sub_1ABAD219C(&qword_1EB4DB550, &qword_1ABF6F268);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C06C();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v11 = *(v0 + 16);
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA80C3C(&qword_1EB4D4308);
  sub_1ABAA18D0();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v9 = *(v0 + 24);
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v6);
    sub_1ABAA18D0();
    sub_1ABF24F14();
    v10 = *(v0 + 32);
    sub_1ABE7C0C0();
    sub_1ABF24F84();
  }

  v7 = sub_1ABA8862C();
  v8(v7);
  sub_1ABA8CB14();
}

uint64_t sub_1ABE7656C(uint64_t a1)
{
  sub_1ABAA096C();
  v2 = swift_allocObject();
  sub_1ABE765B8(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void sub_1ABE765B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v10;
  v14 = v13;
  v32 = sub_1ABAD219C(&qword_1EB4DB630, &qword_1ABF6F308);
  sub_1ABA7BB64(v32);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7E338();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v20 = (v12 + 16);
  *(v12 + 24) = 0;
  v21 = (v12 + 24);
  *(v12 + 32) = 0;
  v23 = v14[3];
  v22 = v14[4];
  v24 = sub_1ABA7FD60();
  sub_1ABA88DCC(v24, v25);
  sub_1ABE7C06C();
  sub_1ABA82E0C();
  sub_1ABF252C4();
  if (v11)
  {
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7E810(&qword_1ED870660);
    sub_1ABF24E64();
    sub_1ABAA0948();
    swift_beginAccess();
    v26 = *v20;
    *v20 = v33;

    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v27);
    sub_1ABF24DF4();
    sub_1ABAA0948();
    swift_beginAccess();
    v28 = *v21;
    *v21 = a10;

    sub_1ABE7C518();
    sub_1ABF24E64();
    v29 = *(v16 + 8);
    v30 = sub_1ABA7FD60();
    v31(v30);
    *(v12 + 32) = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE76850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE7656C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE768EC()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7865646E496F6ELL;
      break;
    case 3:
      v2 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 5:
      result = 0x49747865746E6F63;
      break;
    case 6:
      v2 = 0x476C61636F6CLL;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE76A3C@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisIndexType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE76B28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746963696C706D69 && a2 == 0xEB00000000677241;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465746165706572 && a2 == 0xEB00000000677241;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7432043 && a2 == 0xE300000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7551646573726170 && a2 == 0xEF65646F4E797265;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001ABF94810 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D614E706F76 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

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

unint64_t sub_1ABE76E08(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1936159329;
      break;
    case 2:
      result = 0x746963696C706D69;
      break;
    case 3:
      result = 0x6465746165706572;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 7432043;
      break;
    case 6:
      result = 0x7551646573726170;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D614E706F76;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE76F04()
{
  sub_1ABA8CCF0();
  v2 = sub_1ABAD219C(&qword_1EB4DB600, &qword_1ABF6F2E8);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C3B4();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v6 = *v0;
  v7 = v0[1];
  sub_1ABA93A3C();
  sub_1ABF24F34();
  if (!v1)
  {
    v20 = v0[2];
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABAA18D0();
    sub_1ABF24F84();
    v8 = v0[3];
    v9 = v0[4];
    sub_1ABA7C834(2);
    sub_1ABF24F34();
    v10 = *(v0 + 40);
    sub_1ABA95404();
    sub_1ABF24F44();
    v11 = v0[6];
    v12 = v0[7];
    sub_1ABA7C834(4);
    sub_1ABF24F34();
    v13 = v0[8];
    v14 = v0[9];
    sub_1ABA7C834(5);
    sub_1ABF24F34();
    v21 = v0[10];
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v15);
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    v22 = v0[11];
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    v16 = v0[12];
    v17 = v0[13];
    sub_1ABA7C834(8);
    sub_1ABF24ED4();
  }

  v18 = sub_1ABA8862C();
  v19(v18);
  sub_1ABA8CB14();
}

void sub_1ABE77148()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DB5F8, &qword_1ABF6F2E0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABE7C3B4();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    sub_1ABA80B50();
    v10 = sub_1ABF24E14();
    v12 = v11;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7E810(&qword_1ED870660);
    sub_1ABA80B50();
    sub_1ABF24E64();
    v37 = v40[0];
    sub_1ABA8C440(2);
    v36 = sub_1ABF24E14();
    v53 = v13;
    sub_1ABA8C440(3);
    v35 = sub_1ABF24E24();
    sub_1ABA8C440(4);
    sub_1ABF24E14();
    v38 = v14;
    sub_1ABA8C440(5);
    sub_1ABF24E14();
    v34 = v10;
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v15);
    sub_1ABAB5934();
    *(v17 - 256) = v16;
    sub_1ABA80B50();
    sub_1ABF24DF4();
    v33 = v4;
    v18 = v40[0];
    LOBYTE(v39[0]) = 7;
    sub_1ABAB5934();
    v20 = *(v19 - 256);
    sub_1ABA80B50();
    sub_1ABF24DF4();
    v21 = v40[0];
    v51 = 8;
    sub_1ABA80B50();
    v32 = sub_1ABF24DB4();
    v35 &= 1u;
    v22 = sub_1ABA81D08();
    v23(v22);
    sub_1ABAA036C(v34);
    v39[1] = v12;
    v39[2] = v37;
    v39[3] = v36;
    v39[4] = v53;
    LOBYTE(v39[5]) = v35;
    *(&v39[5] + 1) = *v52;
    HIDWORD(v39[5]) = *&v52[3];
    sub_1ABA8BB54();
    v39[6] = v24;
    v39[7] = v38;
    sub_1ABAA0620();
    v39[8] = v26;
    v39[9] = v25;
    v39[10] = v18;
    v39[11] = v21;
    sub_1ABA8BD68();
    v39[12] = v32;
    v39[13] = v27;
    sub_1ABB51320(v39, v40);
    sub_1ABA84B54(v2);
    v40[0] = v34;
    v40[1] = v12;
    v40[2] = v37;
    v40[3] = v36;
    v40[4] = v53;
    v41 = v35;
    *v42 = *v52;
    *&v42[3] = *&v52[3];
    sub_1ABA8BB54();
    v43 = v28;
    v44 = v38;
    sub_1ABAA0620();
    v45 = v30;
    v46 = v29;
    v47 = v18;
    v48 = v21;
    sub_1ABA8BD68();
    v49 = v32;
    v50 = v31;
    sub_1ABB5137C(v40);
    memcpy(v33, v39, 0x70uLL);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE77720(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F74617265706FLL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE777BC()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  v0 = sub_1ABAD219C(&qword_1EB4DB778, &unk_1ABF6FD50);
  sub_1ABA7BB64(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7D644();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB770, &unk_1ABF6FD40);
  sub_1ABE7D698(&unk_1EB4DB780);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v4 = sub_1ABA95984();
  v5(v4);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE778F4()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  v2 = sub_1ABAD219C(&qword_1EB4DB768, &qword_1ABF6FD38);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = v0[3];
  v7 = v0[4];
  sub_1ABA8A074(v0);
  sub_1ABE7D644();
  sub_1ABAA557C();
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB770, &unk_1ABF6FD40);
    sub_1ABE7D698(&unk_1ED86B9F0);
    sub_1ABA99758();
    v8 = sub_1ABA8E524();
    v9(v8);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE77A38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xEC00000051474B6ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1936159329 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7432043 && a2 == 0xE300000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x46747865746E6F63 && a2 == 0xEF73657275746165;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001ABF947F0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x674B646573726170 && a2 == 0xE900000000000071;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

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

unint64_t sub_1ABE77D18(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 1936159329;
      break;
    case 3:
      result = 7432043;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x46747865746E6F63;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x674B646573726170;
      break;
    case 8:
      result = 0x614E746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE77E14()
{
  sub_1ABA8CCF0();
  v2 = sub_1ABAD219C(&qword_1EB4DB5E8, &qword_1ABF6F2D8);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C2B8();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v6 = *v0;
  v7 = v0[1];
  sub_1ABA93A3C();
  sub_1ABF24F34();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_1ABA7C834(1);
    sub_1ABF24F34();
    v17 = v0[4];
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308);
    sub_1ABA7FA0C();
    sub_1ABF24F84();
    v10 = v0[5];
    v11 = v0[6];
    sub_1ABA7C834(3);
    sub_1ABF24F34();
    v18 = v0[7];
    sub_1ABA7FA0C();
    sub_1ABF24F84();
    v19 = v0[8];
    sub_1ABE7C360();
    sub_1ABF24F14();
    v20 = v0[9];
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v12);
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    v21 = v0[10];
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    v13 = v0[11];
    v14 = v0[12];
    sub_1ABA7C834(8);
    sub_1ABF24ED4();
  }

  v15 = sub_1ABA8862C();
  v16(v15);
  sub_1ABA8CB14();
}

void sub_1ABE7806C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DB5E0, &qword_1ABF6F2D0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABE7C2B8();
  sub_1ABA82E0C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA900B8();
    sub_1ABF24E14();
    v31 = v10;
    LOBYTE(v33[0]) = 1;
    sub_1ABA900B8();
    sub_1ABF24E14();
    v30 = v11;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAABD94(2);
    sub_1ABA7E810(&qword_1ED870660);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24E64();
    sub_1ABAA036C(v33[0]);
    LOBYTE(v33[0]) = 3;
    sub_1ABA900B8();
    v23 = sub_1ABF24E14();
    v28 = v12;
    sub_1ABAABD94(4);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24E64();
    v27 = v33[0];
    sub_1ABAABD94(5);
    sub_1ABE7C30C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v26 = v33[0];
    type metadata accessor for QueryNode();
    sub_1ABAABD94(6);
    sub_1ABA8FBD0();
    sub_1ABE7C628(v13);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v25 = v33[0];
    sub_1ABAABD94(7);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v24 = v33[0];
    sub_1ABA900B8();
    v22 = sub_1ABF24DB4();
    v15 = v14;
    v16 = sub_1ABA83D04();
    v17(v16);
    sub_1ABA8BB54();
    v32[0] = v18;
    v32[1] = v31;
    sub_1ABA8BD68();
    v32[2] = v19;
    v32[3] = v30;
    v32[4] = v29;
    v32[5] = v23;
    v32[6] = v28;
    v32[7] = v33[0];
    v32[8] = v33[0];
    v32[9] = v33[0];
    v32[10] = v33[0];
    v32[11] = v22;
    v32[12] = v15;
    sub_1ABD213F0(v32, v33);
    sub_1ABA84B54(v2);
    sub_1ABA8BB54();
    v33[0] = v20;
    v33[1] = v31;
    sub_1ABA8BD68();
    v33[2] = v21;
    v33[3] = v30;
    v33[4] = v29;
    v33[5] = v23;
    v33[6] = v28;
    v33[7] = v27;
    v33[8] = v26;
    v33[9] = v25;
    v33[10] = v24;
    v33[11] = v22;
    v33[12] = v15;
    sub_1ABD2144C(v33);
    memcpy(v4, v32, 0x68uLL);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE786A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F52746E65746E69 && a2 == 0xEC00000073657475)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE7873C()
{
  sub_1ABA8CCF0();
  v1 = sub_1ABAD219C(&qword_1EB4DB608, &unk_1ABF6F2F0);
  sub_1ABA7BB64(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  sub_1ABA8EA00();
  sub_1ABE7BD30();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB510, &unk_1ABF6F230);
  sub_1ABE7C408();
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  (*(v3 + 8))(v0, v1);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78854()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  v2 = sub_1ABAD219C(&qword_1EB4DB508, &qword_1ABF6F228);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = v0[3];
  v7 = v0[4];
  sub_1ABA8A074(v0);
  sub_1ABE7BD30();
  sub_1ABAA557C();
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB510, &unk_1ABF6F230);
    sub_1ABE7BD84();
    sub_1ABA99758();
    v8 = sub_1ABA8E524();
    v9(v8);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F746172656E6567 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE789FC()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  v0 = sub_1ABAD219C(&qword_1EB4DB750, &qword_1ABF6FD30);
  sub_1ABA7BB64(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7D4D8();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB738, &qword_1ABF6FD28);
  sub_1ABE7D580(&unk_1EB4DB758);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v4 = sub_1ABA95984();
  v5(v4);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78B34()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  v2 = sub_1ABAD219C(&qword_1EB4DB728, &qword_1ABF6FD20);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = v0[3];
  v7 = v0[4];
  sub_1ABA8A074(v0);
  sub_1ABE7D4D8();
  sub_1ABAA557C();
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB738, &qword_1ABF6FD28);
    sub_1ABE7D580(&unk_1EB4DB740);
    sub_1ABA99758();
    v8 = sub_1ABA8E524();
    v9(v8);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE78D08()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  v0 = sub_1ABAD219C(&qword_1EB4DB7C0, &qword_1ABF6FFE8);
  sub_1ABA7BB64(v0);
  v2 = *(v1 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7DAA0();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAA2710(&qword_1EB4D2070);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v4 = sub_1ABA95984();
  v5(v4);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78E18()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  v2 = sub_1ABAD219C(&qword_1EB4DB7B0, &qword_1ABF6FFE0);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = v0[3];
  v7 = v0[4];
  sub_1ABA8A074(v0);
  sub_1ABE7DAA0();
  sub_1ABAA557C();
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABA8295C(&qword_1ED86B400);
    sub_1ABA99758();
    v8 = sub_1ABA8E524();
    v9(v8);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE76B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE78F64(uint64_t a1)
{
  v2 = sub_1ABE7C3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE78FA0(uint64_t a1)
{
  v2 = sub_1ABE7C3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE78FDC(void *a1@<X8>)
{
  sub_1ABE77148();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_1ABE79044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE77720(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE79070(uint64_t a1)
{
  v2 = sub_1ABE7D644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE790AC(uint64_t a1)
{
  v2 = sub_1ABE7D644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE790E8(void *a1@<X8>)
{
  sub_1ABE778F4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE79130(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE79184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE77A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE791AC(uint64_t a1)
{
  v2 = sub_1ABE7C2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE791E8(uint64_t a1)
{
  v2 = sub_1ABE7C2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79224(void *a1@<X8>)
{
  sub_1ABE7806C();
  if (!v1)
  {
    memcpy(a1, __src, 0x68uLL);
  }
}

uint64_t sub_1ABE7928C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE786A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE792B8(uint64_t a1)
{
  v2 = sub_1ABE7BD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE792F4(uint64_t a1)
{
  v2 = sub_1ABE7BD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79330(void *a1@<X8>)
{
  sub_1ABE78854();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE7937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE78960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE793A8(uint64_t a1)
{
  v2 = sub_1ABE7D4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE793E4(uint64_t a1)
{
  v2 = sub_1ABE7D4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79420(void *a1@<X8>)
{
  sub_1ABE78B34();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE7946C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE78C78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE79498(uint64_t a1)
{
  v2 = sub_1ABE7DAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE794D4(uint64_t a1)
{
  v2 = sub_1ABE7DAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE79510(void *a1@<X8>)
{
  sub_1ABE78E18();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1ABE79558()
{
  result = qword_1EB4DB4B0;
  if (!qword_1EB4DB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4B0);
  }

  return result;
}

unint64_t sub_1ABE795AC()
{
  result = qword_1EB4DB4B8;
  if (!qword_1EB4DB4B8)
  {
    sub_1ABAE2850(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABE79630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4B8);
  }

  return result;
}

unint64_t sub_1ABE79630()
{
  result = qword_1EB4DB4C0;
  if (!qword_1EB4DB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4C0);
  }

  return result;
}

uint64_t sub_1ABE79684(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D10D0, &unk_1ABF6F240);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE79864(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABE79788(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABE79788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABE79864(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1ABF25054();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_1ABAD8820();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1ABE79EEC((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABE79DB4(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABE79DB4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABE79EEC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABE79EEC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1ABADD3A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1ABADD3A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

char *sub_1ABE7A0CC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1ABE7A0F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D10C8, &unk_1ABF33250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1ABE7A35C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);

  v6 = 0;
  v7 = 0;
  v57 = 0;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v54 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v6)
    {
      v10 = *(v6 + 16);
      if (v7 == v10)
      {
        break;
      }

      if (v7 >= v10)
      {
        goto LABEL_40;
      }

      v14 = memcpy(__dst, (v6 + 88 * v7 + 32), sizeof(__dst));
      if (v57)
      {
        v22 = sub_1ABAA04D8(v14, v15, v16, v17, v18, v19, v20, v21, v51, v52, v53, v54, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, __dst[0]);
        sub_1ABB242A4(v22, v23);
        v24 = v9;
      }

      else
      {
        v25 = v9[3];
        sub_1ABAA206C();
        if (v26)
        {
          goto LABEL_42;
        }

        sub_1ABAB1238();
        if (v26 ^ v29 | v28)
        {
          v27 = 1;
        }

        v59 = v27;
        sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
        v24 = swift_allocObject();
        v30 = j__malloc_size(v24);
        v38 = (v30 - 32) / 88;
        v24[2] = v59;
        v24[3] = 2 * v38;
        v39 = v9[3];
        v56 = &v24[11 * (v39 >> 1) + 4];
        v60 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - (v39 >> 1);
        if (v9[2])
        {
          v40 = v24 < v9 || v24 + 4 >= &v9[11 * (v39 >> 1) + 4];
          if (!v40 && v24 == v9)
          {
            v46 = sub_1ABAA04D8(v30, v31, v32, v33, v34, v35, v36, v37, v51, v52, v53, v56, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, __dst[0]);
            sub_1ABB242A4(v46, v47);
          }

          else
          {
            v41 = sub_1ABAA04D8(v30, v31, v32, v33, v34, v35, v36, v37, v51, (v9 + 4), (v24 + 4), v56, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, __dst[0]);
            v51 = v42;
            sub_1ABB242A4(v41, v43);
            memmove(v53, v52, 88 * v51);
          }

          v9[2] = 0;
        }

        else
        {
          v44 = sub_1ABAA04D8(v30, v31, v32, v33, v34, v35, v36, v37, v51, v52, v53, v56, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, __dst[0]);
          sub_1ABB242A4(v44, v45);
        }
      }

      v29 = __OFSUB__(v58, 1);
      v57 = v58 - 1;
      if (v29)
      {
        goto LABEL_41;
      }

      ++v7;
      memcpy(v55, __dst, 0x58uLL);
      v54 = v55 + 88;
      v9 = v24;
    }

    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(a1 + 56) + ((v11 << 9) | (8 * v12)));

    v7 = 0;
    v6 = v13;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v11 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_13;
    }
  }

  sub_1ABAB4C48();

  v48 = v9[3];
  if (v48 < 2)
  {
    return;
  }

  v49 = v48 >> 1;
  v29 = __OFSUB__(v49, v57);
  v50 = v49 - v57;
  if (!v29)
  {
    v9[2] = v50;
    return;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1ABE7A61C()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v83 = sub_1ABF23334();
  v2 = sub_1ABA7BB64(v83);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v82 = v8 - v7;
  v93 = sub_1ABF23314();
  v9 = sub_1ABA7BB64(v93);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v80 = v15 - v14;
  v86 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  v16 = sub_1ABA7BB64(v86);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v79 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v25 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  sub_1ABA7BC58();
  v29 = v28 - v27;
  v87 = v18;
  v73 = *(v18 + 80);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1ABAA036C((v73 + 32) & ~v73);
  v32 = &v30[v31];
  sub_1ABE7D7B0(v1, v29, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  v33 = sub_1ABF233D4();
  v35 = v34;
  v36 = sub_1ABA8CD18();
  sub_1ABE7D80C(v36, v37);
  v38 = 0;
  v85 = *(v33 + 16);
  v77 = v11 + 16;
  v76 = (v4 + 8);
  v81 = v11;
  v75 = v11 + 8;
  v84 = v35;
  v78 = v24;
  v74 = v33;
  while (1)
  {
    if (v85 == v35)
    {

      v69 = *(v30 + 3);
      if (v69 >= 2)
      {
        v70 = v69 >> 1;
        v57 = __OFSUB__(v70, v38);
        v71 = v70 - v38;
        if (v57)
        {
          goto LABEL_39;
        }

        *(v30 + 2) = v71;
      }

      sub_1ABA7BC1C();
      return;
    }

    if ((v84 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v35 >= *(v33 + 16))
    {
      goto LABEL_34;
    }

    v88 = v32;
    v89 = v35;
    v92 = v30;
    v40 = v80;
    v39 = v81;
    (*(v81 + 16))(v80, v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35, v93);
    v91 = sub_1ABF232F4();
    sub_1ABF232F4();
    v41 = v82;
    sub_1ABF24454();
    sub_1ABEC9148();
    (*v76)(v41, v83);
    v90 = v94;
    v43 = v95;
    v42 = v96;
    v44 = v97;
    v45 = sub_1ABF232E4();
    type metadata accessor for VisualUnderstandingService.ObservationSequence();
    v46 = swift_allocObject();
    v46[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
    v46[6] = sub_1ABB66238();
    v46[2] = v45;
    v46[3] = 0;
    v47 = *(v86 + 64);
    v48 = *(v86 + 80);
    v49 = v79;
    *v79 = v91;
    *(v49 + 8) = v90;
    *(v49 + 24) = v43;
    *(v49 + 32) = v42;
    v50 = v78;
    *(v49 + 40) = v44;
    sub_1ABF23304();
    (*(v39 + 8))(v40, v93);
    *(v49 + v48) = v46;
    sub_1ABB65814(v49, v50);
    if (v38)
    {
      v51 = v92;
      v33 = v74;
      v52 = v88;
    }

    else
    {
      v53 = v92;
      v54 = *(v92 + 3);
      sub_1ABAA206C();
      if (v55)
      {
        goto LABEL_36;
      }

      sub_1ABAB1238();
      if (v55 ^ v57 | v63)
      {
        v58 = 1;
      }

      else
      {
        v58 = v56;
      }

      sub_1ABAD219C(&qword_1EB4DB670, &unk_1ABF6F330);
      v59 = *(v87 + 72);
      v60 = v72;
      v51 = swift_allocObject();
      v61 = j__malloc_size(v51);
      if (!v59)
      {
        goto LABEL_37;
      }

      v62 = v61 - v60;
      v63 = v61 - v60 == 0x8000000000000000 && v59 == -1;
      if (v63)
      {
        goto LABEL_38;
      }

      v64 = v62 / v59;
      *(v51 + 2) = v58;
      *(v51 + 3) = 2 * (v62 / v59);
      v65 = &v51[v60];
      v66 = *(v53 + 3);
      v67 = (v66 >> 1) * v59;
      v33 = v74;
      if (*(v53 + 2))
      {
        if (v51 < v53 || v65 >= &v53[v60 + v67])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v51 != v53)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        *(v53 + 2) = 0;
      }

      v52 = &v65[v67];
      v38 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - (v66 >> 1);
    }

    v57 = __OFSUB__(v38--, 1);
    if (v57)
    {
      goto LABEL_35;
    }

    sub_1ABB65814(v50, v52);
    v32 = v52 + *(v87 + 72);
    v35 = v89 + 1;
    v30 = v51;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1ABE7AB84(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 2)
  {
    sub_1ABA7C32C();
    v5 = *(a1 + 48);
    sub_1ABA94E50(a1 + 16, *(a1 + 40));
    sub_1ABAA015C();
    sub_1ABF24864();
    swift_endAccess();
    if (v23)
    {
      break;
    }

    if (!v2)
    {
      v6 = v3[3];
      sub_1ABAA206C();
      if (v7)
      {
        goto LABEL_24;
      }

      sub_1ABAB1238();
      if (v7 ^ v10 | v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      sub_1ABAD219C(&qword_1EB4D11D8, &qword_1ABF33360);
      v12 = swift_allocObject();
      v13 = (j__malloc_size(v12) - 32) / 16;
      v12[2] = v11;
      v12[3] = 2 * v13;
      v14 = (v12 + 4);
      v15 = v3[3];
      v16 = v15 >> 1;
      if (v3[2])
      {
        if (v12 != v3 || v14 >= &v3[2 * v16 + 4])
        {
          memmove(v12 + 4, v3 + 4, 16 * v16);
        }

        v3[2] = 0;
      }

      i = (v14 + 16 * v16);
      v2 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v3 = v12;
    }

    v10 = __OFSUB__(v2--, 1);
    if (v10)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    *i = v21;
    i[1] = v22;
  }

  v18 = v3[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v10 = __OFSUB__(v19, v2);
  v20 = v19 - v2;
  if (!v10)
  {
    v3[2] = v20;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABE7AD14()
{
  sub_1ABA7E2A8();
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v3 = sub_1ABEC4C94();
    if (v4)
    {
      v18 = v1[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v10 = __OFSUB__(v19, v0);
        v20 = v19 - v0;
        if (v10)
        {
          goto LABEL_25;
        }

        v1[2] = v20;
      }

      sub_1ABA7BC1C();
      return;
    }

    v5 = v3;
    if (!v0)
    {
      v6 = v1[3];
      sub_1ABAA206C();
      if (v7)
      {
        goto LABEL_24;
      }

      sub_1ABAB1238();
      if (v7 ^ v10 | v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
      v12 = swift_allocObject();
      v13 = (j__malloc_size(v12) - 32) / 8;
      v12[2] = v11;
      v12[3] = 2 * v13;
      v14 = (v12 + 4);
      v15 = v1[3];
      v16 = v15 >> 1;
      if (v1[2])
      {
        if (v12 != v1 || v14 >= &v1[v16 + 4])
        {
          memmove(v12 + 4, v1 + 4, 8 * v16);
        }

        v1[2] = 0;
      }

      i = (v14 + 8 * v16);
      v0 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v1 = v12;
    }

    v10 = __OFSUB__(v0--, 1);
    if (v10)
    {
      break;
    }

    *i = v5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1ABE7AE44()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v5 = *(*(sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v27 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BB64(v27);
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7ED98();
  sub_1ABAB5B48();
  v12 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0] + v0;
  while (1)
  {
    sub_1ABA7C32C();
    v14 = *(v4 + 64);
    sub_1ABA94E50(v4 + 32, *(v4 + 56));
    sub_1ABA90800();
    sub_1ABF24864();
    swift_endAccess();
    if (sub_1ABA7E1E0(v8, 1, v27) == 1)
    {
      sub_1ABAB480C(v8, &qword_1EB4D3870, &qword_1ABF3DF00);
      v23 = v12[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v1);
        v25 = v24 - v1;
        if (v22)
        {
          goto LABEL_31;
        }

        v12[2] = v25;
      }

      sub_1ABA7BC1C();
      return;
    }

    sub_1ABB65814(v8, v2);
    if (!v1)
    {
      v15 = v12[3];
      sub_1ABAA206C();
      if (v16)
      {
        goto LABEL_28;
      }

      sub_1ABAB1238();
      sub_1ABAD219C(&qword_1EB4DB670, &unk_1ABF6F330);
      v17 = sub_1ABAB2BE0();
      v18 = j__malloc_size(v17);
      if (!v14)
      {
        goto LABEL_29;
      }

      if (v18 - v0 == 0x8000000000000000 && v14 == -1)
      {
        goto LABEL_30;
      }

      sub_1ABAB5DEC(v18 - v0);
      if (v20)
      {
        if (v17 < v12 || v13 >= v12 + v0 + v14)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      sub_1ABA8B164();
    }

    v22 = __OFSUB__(v1--, 1);
    if (v22)
    {
      break;
    }

    sub_1ABB65814(v2, v13);
    sub_1ABA8C630();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1ABE7B094()
{
  sub_1ABA7E2A8();
  v3 = v2;
  v4 = *(*(sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v29 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  v8 = sub_1ABA7BB64(v29);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  sub_1ABAB5B48();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0] + v0;
  while (1)
  {
    sub_1ABA7C32C();
    v16 = *(v3 + 64);
    sub_1ABA94E50(v3 + 32, *(v3 + 56));
    sub_1ABA90800();
    sub_1ABF24864();
    swift_endAccess();
    if (sub_1ABA7E1E0(v7, 1, v29) == 1)
    {
      sub_1ABAB480C(v7, &qword_1EB4D3868, &qword_1ABF3DEF8);
      v25 = v14[3];
      if (v25 >= 2)
      {
        v26 = v25 >> 1;
        v24 = __OFSUB__(v26, v1);
        v27 = v26 - v1;
        if (v24)
        {
          goto LABEL_31;
        }

        v14[2] = v27;
      }

      sub_1ABA7BC1C();
      return;
    }

    sub_1ABE7C724(v7, v13);
    if (!v1)
    {
      v17 = v14[3];
      sub_1ABAA206C();
      if (v18)
      {
        goto LABEL_28;
      }

      sub_1ABAB1238();
      sub_1ABAD219C(&qword_1EB4DB668, &unk_1ABF6F320);
      v19 = sub_1ABAB2BE0();
      v20 = j__malloc_size(v19);
      if (!v16)
      {
        goto LABEL_29;
      }

      if (v20 - v0 == 0x8000000000000000 && v16 == -1)
      {
        goto LABEL_30;
      }

      sub_1ABAB5DEC(v20 - v0);
      if (v22)
      {
        if (v19 < v14 || v15 >= v14 + v0 + v16)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 != v14)
        {
          sub_1ABA8B97C();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      sub_1ABA8B164();
    }

    v24 = __OFSUB__(v1--, 1);
    if (v24)
    {
      break;
    }

    sub_1ABE7C724(v13, v15);
    sub_1ABA8C630();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1ABE7B2E0()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = type metadata accessor for AnswerRenderIterator(0);
  v3 = sub_1ABA7BBB0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  sub_1ABE7D7B0(v1, v7 - v6, type metadata accessor for AnswerRenderIterator);
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = v2[6];
  v12 = (MEMORY[0x1E69E7CC0] + 32);
  sub_1ABAA036C(32);
  v35 = v2;
  while (1)
  {
    v13 = *(*(v8 + v11) + 16);
    if (!v13)
    {
LABEL_32:
      sub_1ABE7D80C(v8, type metadata accessor for AnswerRenderIterator);
      v32 = v10[3];
      if (v32 >= 2)
      {
        v33 = v32 >> 1;
        v24 = __OFSUB__(v33, v9);
        v34 = v33 - v9;
        if (v24)
        {
          goto LABEL_40;
        }

        v10[2] = v34;
      }

      sub_1ABA7BC1C();
      return;
    }

    v14 = v8 + v2[8];
    if (*(v14 + 8))
    {
      v15 = 0;
      *v14 = 0;
      *(v14 + 8) = 0;
LABEL_11:
      sub_1ABE44B9C();
      goto LABEL_12;
    }

    v16 = *v14;
    if (*v14 >= v13 - 1)
    {
      goto LABEL_32;
    }

    *(v14 + 8) = 0;
    v15 = v16 + 1;
    *v14 = v16 + 1;
    if (v16 == -1)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v17 = *(v8 + v2[7]);
    if (v17 == -1 || v17 && !(v15 % v17))
    {
      goto LABEL_11;
    }

LABEL_12:
    if (v15 < 0)
    {
      break;
    }

    v18 = *(v8 + v11);
    if (v15 >= *(v18 + 16))
    {
      goto LABEL_37;
    }

    memcpy(v36, (v18 + 112 * v15 + 32), sizeof(v36));
    if (v9)
    {
      sub_1ABA8AFC4();
      v19 = v10;
    }

    else
    {
      v20 = v10[3];
      sub_1ABAA206C();
      if (v21)
      {
        goto LABEL_39;
      }

      sub_1ABAB1238();
      if (v21 ^ v24 | v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
      v19 = swift_allocObject();
      v26 = (j__malloc_size(v19) - 32) / 112;
      v19[2] = v25;
      v19[3] = 2 * v26;
      v27 = v10[3] >> 1;
      v12 = &v19[14 * v27 + 4];
      v9 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v27;
      if (v10[2])
      {
        v28 = v19 < v10 || v19 + 4 >= &v10[14 * v27 + 4];
        if (!v28 && v19 == v10)
        {
          sub_1ABA8AFC4();
        }

        else
        {
          sub_1ABA8AFC4();
          v29 = sub_1ABA90800();
          memmove(v29, v30, v31);
        }

        v10[2] = 0;

        v2 = v35;
      }

      else
      {
        sub_1ABA8AFC4();
      }
    }

    v24 = __OFSUB__(v9--, 1);
    if (v24)
    {
      goto LABEL_38;
    }

    memcpy(v12, v36, 0x70uLL);
    v12 += 112;
    v10 = v19;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1ABE7B598(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = (v3 + 40 * v2);
      v13 = v12[5];
      v14 = v12[6];
      v15 = v12[7];
      v31 = v14;
      v32 = v12[4];
      v30 = v12[8];
      if (v4)
      {

        v16 = v7;
      }

      else
      {
        v17 = v7[3];
        sub_1ABAA206C();
        if (v18)
        {
          goto LABEL_34;
        }

        sub_1ABAB1238();
        if (v18 ^ v21 | v20)
        {
          v22 = 1;
        }

        else
        {
          v22 = v19;
        }

        sub_1ABAD219C(&qword_1EB4D19C8, &qword_1ABF33B58);
        v16 = swift_allocObject();
        v23 = (j__malloc_size(v16) - 32) / 40;
        v16[2] = v22;
        v16[3] = 2 * v23;
        v24 = v16 + 4;
        v25 = v7[3] >> 1;
        v8 = &v16[5 * v25 + 4];
        v4 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        if (v7[2])
        {
          if (v16 != v7 || v24 >= &v7[5 * v25 + 4])
          {
            memmove(v24, v7 + 4, 40 * v25);
          }

          v7[2] = 0;
        }

        else
        {
        }
      }

      v21 = __OFSUB__(v4--, 1);
      if (v21)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v32;
      v8[1] = v13;
      v8[2] = v31;
      v8[3] = v15;
      v8[4] = v30;
      v8 += 5;
      v7 = v16;
    }

    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  v27 = v7[3];
  if (v27 < 2)
  {
    return;
  }

  v28 = v27 >> 1;
  v21 = __OFSUB__(v28, v4);
  v29 = v28 - v4;
  if (!v21)
  {
    v7[2] = v29;
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1ABE7B7A4()
{
  result = qword_1EB4DB4C8;
  if (!qword_1EB4DB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4C8);
  }

  return result;
}

unint64_t sub_1ABE7B7FC()
{
  result = qword_1EB4DB4D0;
  if (!qword_1EB4DB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4D0);
  }

  return result;
}

unint64_t sub_1ABE7B854()
{
  result = qword_1ED86DB18;
  if (!qword_1ED86DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB18);
  }

  return result;
}

uint64_t sub_1ABE7B99C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1ABE7B9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisInternalFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE7BB1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1ABE7BB5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABE7BBD4()
{
  result = qword_1EB4DB4E8;
  if (!qword_1EB4DB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4E8);
  }

  return result;
}

unint64_t sub_1ABE7BC2C()
{
  result = qword_1EB4DB4F0;
  if (!qword_1EB4DB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4F0);
  }

  return result;
}

unint64_t sub_1ABE7BC84()
{
  result = qword_1EB4DB4F8;
  if (!qword_1EB4DB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4F8);
  }

  return result;
}

unint64_t sub_1ABE7BCDC()
{
  result = qword_1EB4DB500;
  if (!qword_1EB4DB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB500);
  }

  return result;
}

unint64_t sub_1ABE7BD30()
{
  result = qword_1ED86BA30;
  if (!qword_1ED86BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA30);
  }

  return result;
}

unint64_t sub_1ABE7BD84()
{
  result = qword_1ED86B9E8;
  if (!qword_1ED86B9E8)
  {
    sub_1ABAE2850(&qword_1EB4DB510, &unk_1ABF6F230);
    sub_1ABE7BE40(&unk_1ED86B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B9E8);
  }

  return result;
}

unint64_t sub_1ABE7BE40(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D8070, &qword_1ABF58E28);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7BEB4()
{
  result = qword_1ED86DF38;
  if (!qword_1ED86DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF38);
  }

  return result;
}

unint64_t sub_1ABE7BF08()
{
  result = qword_1EB4DB520;
  if (!qword_1EB4DB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB520);
  }

  return result;
}

unint64_t sub_1ABE7BF5C()
{
  result = qword_1EB4DB530;
  if (!qword_1EB4DB530)
  {
    sub_1ABAE2850(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7C628(&unk_1EB4DB538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB530);
  }

  return result;
}

unint64_t sub_1ABE7C018()
{
  result = qword_1EB4DB548;
  if (!qword_1EB4DB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB548);
  }

  return result;
}

unint64_t sub_1ABE7C06C()
{
  result = qword_1EB4DB558;
  if (!qword_1EB4DB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB558);
  }

  return result;
}

unint64_t sub_1ABE7C0C0()
{
  result = qword_1EB4DB560;
  if (!qword_1EB4DB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB560);
  }

  return result;
}

unint64_t sub_1ABE7C114()
{
  result = qword_1EB4DB590;
  if (!qword_1EB4DB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB590);
  }

  return result;
}

unint64_t sub_1ABE7C168()
{
  result = qword_1EB4DB598;
  if (!qword_1EB4DB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB598);
  }

  return result;
}

unint64_t sub_1ABE7C1BC()
{
  result = qword_1EB4DB5A0;
  if (!qword_1EB4DB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5A0);
  }

  return result;
}

unint64_t sub_1ABE7C210()
{
  result = qword_1EB4DB5A8;
  if (!qword_1EB4DB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5A8);
  }

  return result;
}

unint64_t sub_1ABE7C264()
{
  result = qword_1EB4DB5B0;
  if (!qword_1EB4DB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5B0);
  }

  return result;
}

unint64_t sub_1ABE7C2B8()
{
  result = qword_1ED86DF50;
  if (!qword_1ED86DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF50);
  }

  return result;
}

unint64_t sub_1ABE7C30C()
{
  result = qword_1ED86D288;
  if (!qword_1ED86D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D288);
  }

  return result;
}

unint64_t sub_1ABE7C360()
{
  result = qword_1EB4DB5F0;
  if (!qword_1EB4DB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB5F0);
  }

  return result;
}

unint64_t sub_1ABE7C3B4()
{
  result = qword_1ED86BB80;
  if (!qword_1ED86BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB80);
  }

  return result;
}

unint64_t sub_1ABE7C408()
{
  result = qword_1EB4DB610;
  if (!qword_1EB4DB610)
  {
    sub_1ABAE2850(&qword_1EB4DB510, &unk_1ABF6F230);
    sub_1ABE7BE40(&unk_1EB4DB618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB610);
  }

  return result;
}

unint64_t sub_1ABE7C4C4()
{
  result = qword_1EB4DB620;
  if (!qword_1EB4DB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB620);
  }

  return result;
}

unint64_t sub_1ABE7C518()
{
  result = qword_1EB4DB638;
  if (!qword_1EB4DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB638);
  }

  return result;
}

unint64_t sub_1ABE7C56C()
{
  result = qword_1EB4DB648;
  if (!qword_1EB4DB648)
  {
    sub_1ABAE2850(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7C628(&unk_1EB4DB650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB648);
  }

  return result;
}

unint64_t sub_1ABE7C628(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7C668()
{
  result = qword_1EB4DB658;
  if (!qword_1EB4DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB658);
  }

  return result;
}

unint64_t sub_1ABE7C6BC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABE7C724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABE7C788()
{
  result = qword_1EB4DB678;
  if (!qword_1EB4DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB678);
  }

  return result;
}

unint64_t sub_1ABE7C7DC()
{
  result = qword_1EB4DB680;
  if (!qword_1EB4DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB680);
  }

  return result;
}

_BYTE *sub_1ABE7C84C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE7C918(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE7CA24(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryNode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE7CBEC()
{
  result = qword_1EB4DB688;
  if (!qword_1EB4DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB688);
  }

  return result;
}

unint64_t sub_1ABE7CC44()
{
  result = qword_1EB4DB690;
  if (!qword_1EB4DB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB690);
  }

  return result;
}

unint64_t sub_1ABE7CC9C()
{
  result = qword_1EB4DB698;
  if (!qword_1EB4DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB698);
  }

  return result;
}

unint64_t sub_1ABE7CCF4()
{
  result = qword_1EB4DB6A0;
  if (!qword_1EB4DB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6A0);
  }

  return result;
}

unint64_t sub_1ABE7CD4C()
{
  result = qword_1EB4DB6A8;
  if (!qword_1EB4DB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6A8);
  }

  return result;
}

unint64_t sub_1ABE7CDA4()
{
  result = qword_1EB4DB6B0;
  if (!qword_1EB4DB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6B0);
  }

  return result;
}

unint64_t sub_1ABE7CDFC()
{
  result = qword_1ED86BB70;
  if (!qword_1ED86BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB70);
  }

  return result;
}

unint64_t sub_1ABE7CE54()
{
  result = qword_1ED86BB78;
  if (!qword_1ED86BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB78);
  }

  return result;
}

unint64_t sub_1ABE7CEAC()
{
  result = qword_1ED86DF40;
  if (!qword_1ED86DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF40);
  }

  return result;
}

unint64_t sub_1ABE7CF04()
{
  result = qword_1ED86DF48;
  if (!qword_1ED86DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DF48);
  }

  return result;
}

unint64_t sub_1ABE7CF5C()
{
  result = qword_1EB4DB6B8;
  if (!qword_1EB4DB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6B8);
  }

  return result;
}

unint64_t sub_1ABE7CFB4()
{
  result = qword_1EB4DB6C0;
  if (!qword_1EB4DB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6C0);
  }

  return result;
}

unint64_t sub_1ABE7D00C()
{
  result = qword_1EB4DB6C8;
  if (!qword_1EB4DB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6C8);
  }

  return result;
}

unint64_t sub_1ABE7D064()
{
  result = qword_1EB4DB6D0;
  if (!qword_1EB4DB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6D0);
  }

  return result;
}

unint64_t sub_1ABE7D0BC()
{
  result = qword_1EB4DB6D8;
  if (!qword_1EB4DB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6D8);
  }

  return result;
}

unint64_t sub_1ABE7D114()
{
  result = qword_1EB4DB6E0;
  if (!qword_1EB4DB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6E0);
  }

  return result;
}

unint64_t sub_1ABE7D16C()
{
  result = qword_1EB4DB6E8;
  if (!qword_1EB4DB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6E8);
  }

  return result;
}

unint64_t sub_1ABE7D1C4()
{
  result = qword_1EB4DB6F0;
  if (!qword_1EB4DB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6F0);
  }

  return result;
}

unint64_t sub_1ABE7D21C()
{
  result = qword_1EB4DB6F8;
  if (!qword_1EB4DB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB6F8);
  }

  return result;
}

unint64_t sub_1ABE7D274()
{
  result = qword_1EB4DB700;
  if (!qword_1EB4DB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB700);
  }

  return result;
}

unint64_t sub_1ABE7D2CC()
{
  result = qword_1EB4DB708;
  if (!qword_1EB4DB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB708);
  }

  return result;
}

unint64_t sub_1ABE7D324()
{
  result = qword_1EB4DB710;
  if (!qword_1EB4DB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB710);
  }

  return result;
}

unint64_t sub_1ABE7D37C()
{
  result = qword_1EB4DB718;
  if (!qword_1EB4DB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB718);
  }

  return result;
}

unint64_t sub_1ABE7D3D4()
{
  result = qword_1EB4DB720;
  if (!qword_1EB4DB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB720);
  }

  return result;
}

unint64_t sub_1ABE7D42C()
{
  result = qword_1ED86BA20;
  if (!qword_1ED86BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA20);
  }

  return result;
}

unint64_t sub_1ABE7D484()
{
  result = qword_1ED86BA28;
  if (!qword_1ED86BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA28);
  }

  return result;
}

unint64_t sub_1ABE7D4D8()
{
  result = qword_1EB4DB730;
  if (!qword_1EB4DB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB730);
  }

  return result;
}

unint64_t sub_1ABE7D52C()
{
  result = qword_1EB4DB748;
  if (!qword_1EB4DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB748);
  }

  return result;
}

unint64_t sub_1ABE7D580(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4DB738, &qword_1ABF6FD28);
    v4();
    result = sub_1ABA9FEF4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7D5F0()
{
  result = qword_1EB4DB760;
  if (!qword_1EB4DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB760);
  }

  return result;
}

unint64_t sub_1ABE7D644()
{
  result = qword_1ED86D6F0[0];
  if (!qword_1ED86D6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED86D6F0);
  }

  return result;
}

unint64_t sub_1ABE7D698(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4DB770, &unk_1ABF6FD40);
    v4();
    result = sub_1ABA9FEF4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABE7D708()
{
  result = qword_1ED86BB68;
  if (!qword_1ED86BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BB68);
  }

  return result;
}

unint64_t sub_1ABE7D75C()
{
  result = qword_1EB4DB788;
  if (!qword_1EB4DB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB788);
  }

  return result;
}

uint64_t sub_1ABE7D7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1ABA7BBB0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1ABA7D000();
  v8(v7);
  return a2;
}

uint64_t sub_1ABE7D80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1ABE7D894()
{
  result = qword_1EB4DB790;
  if (!qword_1EB4DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB790);
  }

  return result;
}

unint64_t sub_1ABE7D8EC()
{
  result = qword_1EB4DB798;
  if (!qword_1EB4DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB798);
  }

  return result;
}

unint64_t sub_1ABE7D944()
{
  result = qword_1ED86D6E0;
  if (!qword_1ED86D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6E0);
  }

  return result;
}

unint64_t sub_1ABE7D99C()
{
  result = qword_1ED86D6E8;
  if (!qword_1ED86D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6E8);
  }

  return result;
}

unint64_t sub_1ABE7D9F4()
{
  result = qword_1EB4DB7A0;
  if (!qword_1EB4DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7A0);
  }

  return result;
}

unint64_t sub_1ABE7DA4C()
{
  result = qword_1EB4DB7A8;
  if (!qword_1EB4DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7A8);
  }

  return result;
}

unint64_t sub_1ABE7DAA0()
{
  result = qword_1EB4DB7B8;
  if (!qword_1EB4DB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7B8);
  }

  return result;
}

_BYTE *sub_1ABE7DAF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE7DBA4()
{
  result = qword_1EB4DB7C8;
  if (!qword_1EB4DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7C8);
  }

  return result;
}

unint64_t sub_1ABE7DBFC()
{
  result = qword_1EB4DB7D0;
  if (!qword_1EB4DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7D0);
  }

  return result;
}

unint64_t sub_1ABE7DC54()
{
  result = qword_1EB4DB7D8;
  if (!qword_1EB4DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7D8);
  }

  return result;
}

uint64_t sub_1ABE7DCD0()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_1ABE7DCE8()
{
}

uint64_t sub_1ABE7DD04()
{
}

uint64_t sub_1ABE7DD4C(uint64_t a1)
{

  result = sub_1ABB800DC(1, a1);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v7 = (v5 >> 1) - v4;
    if (v5 >> 1 == v4)
    {
      return swift_unknownObjectRelease();
    }

    if ((v5 >> 1) > v4)
    {
      v8 = (v3 + 8 * v4);
      do
      {
        v9 = *v8++;
        v6 = v6 - v9;
        --v7;
      }

      while (v7);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Subentity.id.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t Subentity.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

unint64_t sub_1ABE7DE54(uint64_t a1)
{
  result = sub_1ABE7DE7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE7DE7C()
{
  result = qword_1EB4CE7A8;
  if (!qword_1EB4CE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE7A8);
  }

  return result;
}

unint64_t sub_1ABE7DEE4(uint64_t a1)
{
  result = sub_1ABE7DF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE7DF0C()
{
  result = qword_1EB4CE7B0;
  if (!qword_1EB4CE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE7B0);
  }

  return result;
}

uint64_t sub_1ABE7DF60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABE7DFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *SubentityIdentifier.init(parentId:relationshipId:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*result)
  {
    v3 = *a2;
    if (*a2)
    {
      *a3 = *result;
      a3[1] = v3;
      return result;
    }

    sub_1ABB6DB64();
    swift_allocError();
  }

  else
  {
    sub_1ABB6DA08();
    swift_allocError();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 512;
  }

  return swift_willThrow();
}

uint64_t sub_1ABE7E0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABE7E1B4(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 0x6449746E65726170;
  }
}

uint64_t sub_1ABE7E200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE7E0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE7E228(uint64_t a1)
{
  v2 = sub_1ABE7E408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7E264(uint64_t a1)
{
  v2 = sub_1ABE7E408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubentityIdentifier.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB7E0, &qword_1ABF70210);
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v15 = v1[1];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE7E408();
  sub_1ABF252E4();
  v17 = v12;
  v16 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7E078();
  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    sub_1ABC3C8F0();
    sub_1ABA7E078();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1ABE7E408()
{
  result = qword_1EB4DB7E8;
  if (!qword_1EB4DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7E8);
  }

  return result;
}

uint64_t SubentityIdentifier.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC5AA8D0](*v0);
  return MEMORY[0x1AC5AA8D0](v1);
}

uint64_t SubentityIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  MEMORY[0x1AC5AA8D0](v2);
  return sub_1ABF25294();
}

uint64_t SubentityIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB7F0, &qword_1ABF70218);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE7E408();
  sub_1ABF252C4();
  if (!v2)
  {
    v18 = 0;
    sub_1ABAE8B74();
    sub_1ABA8FBE8();
    v14 = v19;
    v18 = 1;
    sub_1ABC3CD80();
    sub_1ABA8FBE8();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABE7E694()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  MEMORY[0x1AC5AA8D0](v2);
  return sub_1ABF25294();
}

unint64_t sub_1ABE7E6F0()
{
  result = qword_1EB4DB7F8;
  if (!qword_1EB4DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB7F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubentityIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE7E868()
{
  result = qword_1EB4DB800;
  if (!qword_1EB4DB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB800);
  }

  return result;
}

unint64_t sub_1ABE7E8C0()
{
  result = qword_1EB4DB808;
  if (!qword_1EB4DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB808);
  }

  return result;
}

unint64_t sub_1ABE7E918()
{
  result = qword_1EB4DB810;
  if (!qword_1EB4DB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB810);
  }

  return result;
}

uint64_t Subfact.Object.asString.getter()
{
  if (v0[2])
  {
    return 0;
  }

  v3 = v0;
  v1 = *v0;
  v2 = v3[1];

  return v1;
}

void Subfact.Object.asEntityIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 ^ 1;
}

uint64_t sub_1ABE7E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void *sub_1ABE7E9FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t Subfact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t Subfact.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1ABD5A830(v2, v3, v4);
}

uint64_t sub_1ABE7EAA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1ABE7EAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABE7EB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&qword_1EB4DB948, &qword_1EB4DB950, &qword_1ABF70798);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 256;
  }

  else
  {
    sub_1ABA8FC10(&qword_1EB4DB958, &qword_1EB4DB950, &qword_1ABF70798);
    sub_1ABAA55A0();
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (!v13)
    {
      if (a13)
      {
        sub_1ABA7EC08();
        v16 = v15;
        sub_1ABF22664();
        *v14 = a9;
        *(v14 + 8) = a10;
        *(v14 + 16) = a11;
        *(v14 + 24) = v16;
        *(v14 + 25) = 1;
      }

      else
      {
        *v14 = a9;
        *(v14 + 8) = a10;
        *(v14 + 16) = a11;
        *(v14 + 24) = a12 & 1;
        *(v14 + 25) = 0;
      }
    }
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABE7EC84()
{
  sub_1ABA93A50();
  sub_1ABAB47C4(&qword_1EB4DB910, &qword_1EB4DB918, &qword_1ABF70780);
  sub_1ABAA015C();
  result = sub_1ABF22654();
  if (result)
  {
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  else
  {
    sub_1ABAB47C4(&unk_1EB4DB920, &qword_1EB4DB918, &qword_1ABF70780);
    sub_1ABAA55A0();
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (!v0)
    {
      if (v4)
      {
        sub_1ABA7EC08();
        result = sub_1ABF22664();
        *v1 = v3;
        *(v1 + 8) = 1;
      }

      else
      {
        *v1 = v3;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABE7EDC8()
{
  v2 = *v0;
  if (sub_1ABF22654())
  {
    return 0;
  }

  sub_1ABF22434();
  sub_1ABF22BB4();

  sub_1ABF22EF4();
  sub_1ABAA2E4C();

  if (!v1)
  {
    result = v4;
    if (!v4)
    {
      sub_1ABF22664();
      return 0;
    }
  }

  return result;
}

void sub_1ABE7EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&unk_1EB4CF720, &unk_1EB4DB938, &qword_1ABF70790);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  else
  {
    sub_1ABA8FC10(&qword_1EB4CF730, &unk_1EB4DB938, &qword_1ABF70790);
    sub_1ABAA55A0();
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (v12)
    {
      goto LABEL_8;
    }

    if ((a12 & 1) == 0)
    {
      sub_1ABAA2734();
      *(v13 + 24) = 0;
      goto LABEL_8;
    }

    sub_1ABA7EC08();
    sub_1ABF22664();
    sub_1ABAA2734();
  }

  *(v13 + 24) = 1;
LABEL_8:
  sub_1ABA7E708();
}

uint64_t sub_1ABE7EFDC@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  sub_1ABAB47C4(&qword_1EB4DB8B0, &qword_1EB4DB8B8, &qword_1ABF70768);
  result = sub_1ABF22654();
  if (result)
  {
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1ABAB47C4(&qword_1EB4DB8C0, &qword_1EB4DB8B8, &qword_1ABF70768);
    sub_1ABF22434();

    sub_1ABF22EF4();
    if (v2)
    {
    }

    else
    {

      v11 = __src[0];
      memcpy(__dst, &__src[1] + 8, sizeof(__dst));
      if (*&__src[1])
      {
        v6 = __src;
        v7 = a1;
        v8 = 112;
      }

      else
      {
        memcpy(v9, __src, sizeof(v9));
        sub_1ABAB480C(v9, &qword_1EB4DB100, &qword_1ABF70760);
        sub_1ABF22664();
        *a1 = v11;
        *(a1 + 2) = 0;
        v7 = a1 + 24;
        v6 = __dst;
        v8 = 88;
      }

      return memcpy(v7, v6, v8);
    }
  }

  return result;
}

void sub_1ABE7F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1ABA97BA0();
  sub_1ABA93A50();
  sub_1ABA7E09C(&unk_1EB4CF738, &qword_1EB4DB930, &qword_1ABF70788);
  sub_1ABAA015C();
  if (sub_1ABF22654())
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  else
  {
    sub_1ABA8FC10(&qword_1EB4CF748, &qword_1EB4DB930, &qword_1ABF70788);
    sub_1ABAA55A0();
    sub_1ABA7AE6C();
    sub_1ABA90478();
    sub_1ABAA2E4C();

    if (v12)
    {
      goto LABEL_8;
    }

    if ((a12 & 1) == 0)
    {
      sub_1ABAA2734();
      *(v13 + 24) = 0;
      goto LABEL_8;
    }

    sub_1ABA7EC08();
    sub_1ABF22664();
    sub_1ABAA2734();
  }

  *(v13 + 24) = 1;
LABEL_8:
  sub_1ABA7E708();
}

uint64_t sub_1ABE7F2F4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  sub_1ABA7E09C(&qword_1EB4DB8F0, &qword_1EB4DB8F8, &unk_1ABF70770);
  result = sub_1ABF22654();
  if (result)
  {
    a1[14] = 0;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1ABA8FC10(&unk_1EB4DB900, &qword_1EB4DB8F8, &unk_1ABF70770);
    sub_1ABF22434();

    sub_1ABF22EF4();
    if (v2)
    {
    }

    else
    {

      v11 = *__src;
      memcpy(__dst, &__src[24], sizeof(__dst));
      if (*&__src[16])
      {
        v6 = __src;
        v7 = a1;
        v8 = 120;
      }

      else
      {
        memcpy(v9, __src, sizeof(v9));
        sub_1ABAB480C(v9, &qword_1EB4DB410, &qword_1ABF6E388);
        sub_1ABF22664();
        *a1 = v11;
        a1[2] = 0;
        v7 = a1 + 3;
        v6 = __dst;
        v8 = 96;
      }

      return memcpy(v7, v6, v8);
    }
  }

  return result;
}

uint64_t sub_1ABE7F504(uint64_t a1)
{
  *(v1 + 24) = 0u;
  v3 = (v1 + 24);
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 16) = a1;

  sub_1ABE7EFDC(__src);

  if (v2)
  {
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v3, __src, 0x70uLL);
    sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  return v1;
}

void *sub_1ABE7F5E4@<X0>(void *a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  memcpy(__dst, (v1 + 24), sizeof(__dst));
  v5 = *(v1 + 16);
  sub_1ABB3E5B4(__dst, v7, &qword_1EB4DB100, &qword_1ABF70760);
  sub_1ABE7EFDC(__src);
  if (v2)
  {
    return sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  memcpy(v7, (v3 + 24), sizeof(v7));
  memcpy((v3 + 24), __src, 0x70uLL);
  sub_1ABAB480C(v7, &qword_1EB4DB100, &qword_1ABF70760);
  return memcpy(a1, __dst, 0x70uLL);
}

void *SubgraphView.__allocating_init(accessAssertion:database:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *SubgraphView.init(accessAssertion:database:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

void *SubgraphView.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return v0;
}

uint64_t SubgraphView.__deallocating_deinit()
{
  SubgraphView.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE7F7CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getObjectType();
  return sub_1ABF22454();
}

uint64_t sub_1ABE7F868(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void *, void), uint64_t a5)
{
  result = a2();
  if (!v5)
  {
    v9 = result;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_allocObject();
    v10 = sub_1ABE7F504(v9);
    v16[22] = a5;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = (v11 + 16);
    *(v11 + 24) = 1;
    swift_beginAccess();
    v13 = swift_beginAccess();
    v14 = *(v10 + 24);
    if (*(v10 + 40))
    {
LABEL_3:
      if (*(v11 + 24))
      {
        *(v11 + 16) = v14;
        *(v11 + 24) = 0;
      }

      else
      {
        v14 = *v12;
      }

      v16[0] = v14;
      MEMORY[0x1EEE9AC00](v13);
      v13 = a4(v16, sub_1ABE83854);
      if (v13)
      {
        while (*(v10 + 40))
        {
          v14 = *(v10 + 24);
          if ((*(v11 + 24) & 1) != 0 || v14 != *v12)
          {
            *(v11 + 16) = v14;
            *(v11 + 24) = 0;
            goto LABEL_3;
          }

          sub_1ABE7F5E4(v16);
          memcpy(v15, v16, sizeof(v15));
          v13 = sub_1ABAB480C(v15, &qword_1EB4DB100, &qword_1ABF70760);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ABE7FA9C(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  swift_beginAccess();
  do
  {
    result = memcpy(__dst, (a3 + 24), sizeof(__dst));
    if (!*&__dst[1])
    {
      break;
    }

    if (*(a4 + 24))
    {
      break;
    }

    if (*&__dst[0] != *(a4 + 16))
    {
      break;
    }

    __src[0] = __dst[0];
    *&__src[1] = *&__dst[1];
    memcpy(&__src[1] + 8, (a3 + 48), 0x58uLL);
    memcpy(v13, (a3 + 24), sizeof(v13));
    sub_1ABB345D8(v13, v11);
    v10 = a1(__src);
    result = sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
    if (v5)
    {
      break;
    }

    sub_1ABE7F5E4(__src);
    v5 = 0;
    memcpy(v11, __src, sizeof(v11));
    result = sub_1ABAB480C(v11, &qword_1EB4DB100, &qword_1ABF70760);
  }

  while ((v10 & 1) != 0);
  return result;
}

uint64_t sub_1ABE7FC08()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_getObjectType();
  return sub_1ABF22454();
}

uint64_t sub_1ABE7FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v29 = a5;
  v33 = a4;
  v27 = a2;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v16 = *(v28 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v26 - v18;
  (*(v11 + 16))(v14, v27, a7, v17);
  sub_1ABF23F04();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_1ABF24864();
    if (v32)
    {
      break;
    }

    v20 = v31;
    v21 = a3(a1, &v31);
    if (v7)
    {
      break;
    }

    v22 = v21;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_initStackObject();
    v23 = sub_1ABE7F504(v22);
    swift_beginAccess();
    if (*(v23 + 40))
    {
      v31 = v20;
      v24 = v29(&v31, sub_1ABC712A0, v23);

      if ((v24 & 1) == 0)
      {
        return (*(v28 + 8))(v19, AssociatedTypeWitness);
      }
    }

    else
    {
    }
  }

  return (*(v28 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_1ABE7FFDC()
{
  sub_1ABA7C84C();
  do
  {
    result = sub_1ABE7F5E4(__src);
    if (v0)
    {
      break;
    }

    result = memcpy(__dst, __src, sizeof(__dst));
    if (!__dst[2])
    {
      break;
    }

    v4 = __src[0];
    v5 = __dst[2];
    memcpy(v6, &__src[1] + 8, sizeof(v6));
    v3 = v1(&v4);
    result = sub_1ABAB480C(__dst, &qword_1EB4DB100, &qword_1ABF70760);
  }

  while ((v3 & 1) != 0);
  return result;
}

uint64_t sub_1ABE800C0(uint64_t a1, void (*a2)(uint64_t (*)(void *a1), void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  v10 = v9 + 16;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a4;
  v11[4] = a5;

  a2(sub_1ABE83E28, v11);
  if (!v5)
  {
    swift_beginAccess();
    v10 = *(v9 + 16);
  }

  return v10 & 1;
}

uint64_t sub_1ABE801D0(void *__src, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  memcpy(v8, __src, sizeof(v8));
  v6 = a3(v8);
  if (!v3)
  {
    swift_beginAccess();
    *(a2 + 16) = v6 & 1;
  }

  return v6 & 1;
}

uint64_t sub_1ABE8025C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  v10 = sub_1ABF22424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABB3E5B4(a1, v9, &qword_1EB4DB820, &qword_1ABF500A0);
  if (sub_1ABA7E1E0(v9, 1, v10) == 1)
  {
    sub_1ABAB480C(v9, &qword_1EB4DB820, &qword_1ABF500A0);
    return (*(v11 + 16))(a3, a2, v10);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = MEMORY[0x1E699FE60];
    v21[3] = v10;
    v21[4] = MEMORY[0x1E699FE60];
    v17 = sub_1ABA93DC0(v21);
    v18 = *(v11 + 16);
    v18(v17, v14, v10);
    v20[3] = v10;
    v20[4] = v16;
    v19 = sub_1ABA93DC0(v20);
    v18(v19, a2, v10);
    sub_1ABF22AC4();
    (*(v11 + 8))(v14, v10);
    sub_1ABA84B54(v20);
    return sub_1ABA84B54(v21);
  }
}

uint64_t sub_1ABE80484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a1;
  v27 = a2;
  v29 = a3;
  v3 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v26 - v5;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v15 = v26 - v14;
  v16 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - v19;

  sub_1ABF22D04();
  sub_1ABB3E5B4(v27, v6, &qword_1EB4DB820, &qword_1ABF500A0);
  if (sub_1ABA7E1E0(v6, 1, v7) == 1)
  {
    sub_1ABAB480C(v6, &qword_1EB4DB820, &qword_1ABF500A0);
    sub_1ABF22C54();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v30[3] = v7;
    v30[4] = MEMORY[0x1E699FE60];
    v21 = sub_1ABA93DC0(v30);
    (*(v8 + 16))(v21, v11, v7);
    sub_1ABF22CA4();
    (*(v8 + 8))(v11, v7);
    sub_1ABA84B54(v30);
  }

  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1ABF34060;
  *(v22 + 56) = &type metadata for ExtendedTripleColumn;
  v23 = sub_1ABC3D460();
  *(v22 + 64) = v23;
  *(v22 + 32) = 0;
  *(v22 + 96) = &type metadata for ExtendedTripleColumn;
  *(v22 + 104) = v23;
  *(v22 + 72) = 2;
  sub_1ABAB47C4(&qword_1EB4DB8D8, &qword_1EB4DB870, &qword_1ABF70738);
  v24 = v28;
  sub_1ABF22494();

  (*(v12 + 8))(v15, v24);
  return (*(v17 + 8))(v20, v16);
}

void sub_1ABE80870()
{
  sub_1ABA7BCA8();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v23 = *v0;
  v7 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v8 = sub_1ABA7BBD0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v22 - v13;
  v15 = *v6;
  v17 = v0[5];
  v16 = v0[6];
  sub_1ABB3E5B4(v4, &v22 - v13, &qword_1EB4DB820, &qword_1ABF500A0);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v16;
  sub_1ABE8372C(v14, v20 + v18);
  *(v20 + v19) = v15;
  v21 = v24;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v26 = v21;
  v27 = v25;

  sub_1ABE7F7CC();

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE80A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a2;
  v24 = a3;
  v25 = a1;
  v6 = sub_1ABF22424();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v27[3] = &type metadata for ExtendedTripleColumn;
  v27[4] = sub_1ABC3D2C0();
  LOBYTE(v27[0]) = 0;
  v26[3] = &type metadata for EntityIdentifier;
  v26[4] = sub_1ABB3E45C();
  v26[0] = a5;
  sub_1ABF22AD4();
  sub_1ABAB480C(v26, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v27);
  sub_1ABE8025C(v22, v10, v14);
  (*(v7 + 8))(v10, v6);
  sub_1ABA7B9B4(v14, 0, 1, v6);
  sub_1ABE80484(v23, v14, v19);
  sub_1ABAB480C(v14, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABE83AF4();
  v20 = sub_1ABF22224();
  (*(v16 + 8))(v19, v15);
  return v20;
}

uint64_t SubgraphView.enumerateTriples(for:block:)()
{
  sub_1ABA7C84C();
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E358();
  v8 = *v0;
  v6 = sub_1ABF22424();
  sub_1ABA82980(v6);
  sub_1ABE80870();
  return sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABE80DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v32 = a6;
  v34 = a2;
  v35 = *v6;
  v36 = a3;
  v9 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v10 = sub_1ABA7BBD0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = *(*(a5 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v6[6];
  v33 = v6[5];
  (*(v24 + 16))(&v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v21);

  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = v38;
  if (*(v38 + 16) >> 4 > 0x752uLL)
  {

LABEL_5:
    sub_1ABB3E5B4(v34, v15, &qword_1EB4DB820, &qword_1ABF500A0);
    v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v33;
    *(v30 + 24) = v23;
    sub_1ABE8372C(v15, v30 + v29);
    *(v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
    sub_1ABE7FC08();
  }

  sub_1ABB3E5B4(v34, v18, &qword_1EB4DB820, &qword_1ABF500A0);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  *(v28 + 24) = v23;
  sub_1ABE8372C(v18, v28 + v26);
  *(v28 + v27) = v25;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  sub_1ABE7F7CC();
}

uint64_t sub_1ABE810E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v24 = a4;
  v25 = a6;
  v26 = a2;
  v27 = a3;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v23 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v16 = *(v23 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v19 = &v23 - v18;
  v29[6] = a5;
  v29[3] = &type metadata for ExtendedTripleColumn;
  v29[4] = sub_1ABC3D2C0();
  LOBYTE(v29[0]) = 0;
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v29);
  sub_1ABE8025C(v24, v11, v15);
  (*(v8 + 8))(v11, v7);
  sub_1ABA7B9B4(v15, 0, 1, v7);
  sub_1ABE80484(v26, v15, v19);
  sub_1ABAB480C(v15, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABE83AF4();
  v20 = v23;
  v21 = sub_1ABF22224();
  (*(v16 + 8))(v19, v20);
  return v21;
}

void sub_1ABE813F0()
{
  sub_1ABA7BCA8();
  v31 = v2;
  v32 = v1;
  v33 = v4;
  v34 = v3;
  v6 = v5;
  v7 = sub_1ABF22424();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v15);
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABA7BB64(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7E338();
  v27 = *v6;
  v36[3] = &type metadata for ExtendedTripleColumn;
  v36[4] = sub_1ABC3D2C0();
  LOBYTE(v36[0]) = 0;
  v35[3] = &type metadata for EntityIdentifier;
  v35[4] = sub_1ABB3E45C();
  v35[0] = v27;
  sub_1ABF22AD4();
  sub_1ABAB480C(v35, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v36);
  sub_1ABE8025C(v31, v14, v20);
  (*(v10 + 8))(v14, v7);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v28, v29, v30, v7);
  sub_1ABE80484(v32, v20, v0);
  sub_1ABAB480C(v20, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABE83AF4();
  sub_1ABF22224();
  (*(v23 + 8))(v0, v21);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t SubgraphView.enumerateTriples<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E358();
  v15 = sub_1ABF22424();
  sub_1ABA82980(v15);
  sub_1ABE80DBC(a1, v5, a2, a3, a4, a5);
  return sub_1ABAB480C(v5, &qword_1EB4DB820, &qword_1ABF500A0);
}

void sub_1ABE81764()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v15 = *v0;
  v4 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v5 = sub_1ABA7BBD0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v11 = v0[5];
  v10 = v0[6];
  sub_1ABB3E5B4(v3, v1, &qword_1EB4DB820, &qword_1ABF500A0);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
  sub_1ABE8372C(v1, v14 + v12);
  *(v14 + v13) = v15;

  sub_1ABE7F7CC();

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE818D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1ABE80484(a2, a4, &v13 - v9);
  sub_1ABAB47C4(&qword_1EB4DB8C8, &qword_1EB4DB870, &qword_1ABF70738);
  sub_1ABE83AF4();
  v11 = sub_1ABF22224();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t SubgraphView.enumerateTriples(block:)()
{
  v1 = sub_1ABAA015C();
  v3 = sub_1ABAD219C(v1, v2);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA8176C();
  v7 = sub_1ABF22424();
  sub_1ABA96B68(v7);
  sub_1ABE81764();
  return sub_1ABAB480C(v0, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABE81B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[3] = a3;
  v8[2] = a2;
  v6 = *v5;
  return SubgraphView.enumerateTriples<A>(for:block:)(a1, sub_1ABE8409C, v8, a4, a5);
}

void sub_1ABE81BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v31 = v11;
  sub_1ABAA368C();
  v15 = v14;
  v16 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABA7BB64(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  v24 = *v13;
  v25 = v12[5];
  v26 = v12[6];

  sub_1ABF22D04();
  v28 = v12[3];
  v27 = v12[4];
  swift_getObjectType();
  v32 = v23;
  v33 = v10;
  v34 = v24;
  v35 = v15;
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  v29 = v31;
  sub_1ABF22464();
  if (!v29)
  {
    sub_1ABE8AC38(a10);
  }

  (*(v18 + 8))(v23, v16);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE81D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a1;
  v35 = a3;
  v36 = a5;
  v37 = a2;
  v34 = a6;
  v7 = sub_1ABF22424();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v44 = &type metadata for ExtendedTripleColumn;
  v45 = sub_1ABC3D2C0();
  LOBYTE(v43[0]) = 4;
  v46 = a4;
  v25 = EntityIdentifier.stringValue.getter();
  v42[3] = MEMORY[0x1E69E6158];
  v42[4] = MEMORY[0x1E69A0130];
  v42[0] = v25;
  v42[1] = v26;
  sub_1ABF22AD4();
  sub_1ABAB480C(v42, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v43);
  v44 = v7;
  v45 = MEMORY[0x1E699FE60];
  v27 = sub_1ABA93DC0(v43);
  sub_1ABE8025C(v35, v11, v27);
  (*(v8 + 8))(v11, v7);
  sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABF22CA4();
  sub_1ABA84B54(v43);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1ABF34740;
  *(v28 + 56) = &type metadata for ExtendedTripleColumn;
  *(v28 + 64) = sub_1ABC3D4B8();
  *(v28 + 32) = 0;
  v29 = v38;
  sub_1ABF22904();

  (*(v39 + 8))(v16, v29);
  sub_1ABF22914();
  v30 = *(v18 + 8);
  v30(v21, v17);
  sub_1ABAB47C4(&qword_1EB4DB890, &unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABAA98EC();
  v31 = v41;
  v32 = sub_1ABF22274();
  result = (v30)(v24, v17);
  if (!v31)
  {
    *v34 = v32;
  }

  return result;
}

void sub_1ABE821C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v44 = v11;
  sub_1ABAA368C();
  v15 = v14;
  v16 = sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABA7BB64(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v24 = *v13;
  v25 = v12[5];
  v26 = v12[6];

  sub_1ABF22D04();
  v28 = v12[3];
  v27 = v12[4];
  swift_getObjectType();
  v45 = v23;
  v46 = v10;
  v47 = v24;
  v48 = v15;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v29 = v44;
  sub_1ABF22464();
  if (v29)
  {
    (*(v18 + 8))(v23, v16);
LABEL_15:
    sub_1ABA7AC0C();
    sub_1ABA7BC90();
  }

  else
  {
    v43 = 0;
    v30 = 0;
    v31 = *(a10 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v32 = v23;
LABEL_4:
    for (i = (a10 + 40 + 16 * v30); ; i += 2)
    {
      if (v31 == v30)
      {

        sub_1ABE8AC38(v44);
        (*(v18 + 8))(v32, v16);
        goto LABEL_15;
      }

      if (v30 >= *(a10 + 16))
      {
        break;
      }

      v35 = *(i - 1);
      v34 = *i;

      EntityIdentifier.init(_:)(v35, v34, &v49);
      if ((v50 & 1) == 0)
      {
        v42 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v44 + 16);
          sub_1ABAD89C8();
          v44 = v39;
        }

        v36 = *(v44 + 16);
        if (v36 >= *(v44 + 24) >> 1)
        {
          sub_1ABAD89C8();
          v44 = v40;
        }

        ++v30;
        v37 = v44;
        *(v44 + 16) = v36 + 1;
        *(v37 + 8 * v36 + 32) = v42;
        goto LABEL_4;
      }

      ++v30;
    }

    __break(1u);
  }
}

uint64_t sub_1ABE82460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v34 = a5;
  v33 = a3;
  v36 = a2;
  v39 = a1;
  v30 = a6;
  v7 = sub_1ABF22424();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1ABAD219C(&qword_1EB4DB870, &qword_1ABF70738);
  v38 = *(v37 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v29 - v12;
  v14 = sub_1ABAD219C(&unk_1EB4DB878, &unk_1ABF70740);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v32 = &v29 - v19;
  v47 = &type metadata for ExtendedTripleColumn;
  v48 = sub_1ABC3D2C0();
  LOBYTE(v46[0]) = 0;
  v44 = &type metadata for EntityIdentifier;
  v45 = sub_1ABB3E45C();
  v43[0] = a4;
  v50 = v7;
  v51 = MEMORY[0x1E699FE60];
  v20 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v49);
  sub_1ABF22AD4();
  sub_1ABAB480C(v43, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v46);
  v52 = 4;
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0130];
  v43[0] = 624583789;
  v43[1] = 0xE400000000000000;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v47 = v7;
  v48 = v20;
  sub_1ABA93DC0(v46);
  sub_1ABF22984();
  sub_1ABAB480C(v41, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v43);
  sub_1ABF22AC4();
  sub_1ABA84B54(v46);
  sub_1ABA84B54(v49);
  v50 = v7;
  v51 = MEMORY[0x1E699FE60];
  v21 = sub_1ABA93DC0(v49);
  sub_1ABE8025C(v33, v10, v21);
  (*(v31 + 8))(v10, v7);
  sub_1ABAD219C(&unk_1EB4DB860, &unk_1ABF70728);
  sub_1ABF22CA4();
  sub_1ABA84B54(v49);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1ABF34740;
  *(v22 + 56) = &type metadata for ExtendedTripleColumn;
  *(v22 + 64) = sub_1ABC3D4B8();
  *(v22 + 32) = 4;
  v23 = v37;
  sub_1ABF22904();

  (*(v38 + 8))(v13, v23);
  v24 = v32;
  sub_1ABF22914();
  v25 = *(v35 + 8);
  v25(v17, v14);
  sub_1ABAB47C4(&qword_1EB4DB888, &unk_1EB4DB878, &unk_1ABF70740);
  v26 = v40;
  v27 = sub_1ABF22254();
  result = (v25)(v24, v14);
  if (!v26)
  {
    *v30 = v27;
  }

  return result;
}

uint64_t sub_1ABE829B8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v5 = sub_1ABAA015C();
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8176C();
  v11 = *a1;
  v12 = sub_1ABF22424();
  sub_1ABA96B68(v12);
  v15 = v11;
  v13 = a2(v2, &v15);
  sub_1ABAB480C(v2, &qword_1EB4DB820, &qword_1ABF500A0);
  return v13;
}

uint64_t SubgraphView.filteredView(with:)()
{
  v1 = sub_1ABF22424();
  v2 = sub_1ABA7BB64(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1ABA8C458(v5, v15);
  v7(v6);
  v8 = type metadata accessor for SubgraphFilteredView();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = sub_1ABA976B8(v11, OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter);
  v13(v12);

  return v11;
}

uint64_t type metadata accessor for SubgraphFilteredView()
{
  result = qword_1EB4DB850;
  if (!qword_1EB4DB850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SubgraphView.filteredContext(with:)()
{
  v1 = sub_1ABF22424();
  v2 = sub_1ABA7BB64(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1ABA8C458(v5, v15);
  v7(v6);
  v8 = type metadata accessor for SubgraphFilteredView();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = sub_1ABA976B8(v11, OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter);
  v13(v12);
  sub_1ABAD219C(&unk_1EB4DB828, &qword_1ABF705A8);
  swift_allocObject();

  return sub_1ABAE6998(v11);
}

uint64_t SubgraphFilteredView.filter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v4 = sub_1ABF22424();
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SubgraphFilteredView.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v3 = sub_1ABF22424();
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t SubgraphFilteredView.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v3 = sub_1ABF22424();
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void SubgraphFilteredView.enumerateTriples(for:block:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E358();
  v8 = *v3;
  v9 = *(v0 + 16);
  v10 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v11 = sub_1ABF22424();
  sub_1ABA7BBB0(v11);
  (*(v12 + 16))(v1, v0 + v10, v11);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v13, v14, v15, v11);
  sub_1ABE80870();
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void SubgraphFilteredView.enumerateTriples<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E338();
  v15 = *(v0 + 16);
  v16 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v17 = sub_1ABF22424();
  sub_1ABA7BBB0(v17);
  (*(v18 + 16))(v1, v0 + v16, v17);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v19, v20, v21, v17);
  sub_1ABE80DBC(v10, v1, v8, v6, v4, v22);
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BC90();
}

void SubgraphFilteredView.enumerateTriples(block:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v8 = sub_1ABF22424();
  sub_1ABA7BBB0(v8);
  (*(v9 + 16))(v1, v0 + v7, v8);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v10, v11, v12, v8);
  sub_1ABE81764();
  sub_1ABAB480C(v1, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABE8328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7AB80(v28);
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA8176C();
  v32 = *v27;
  v33 = *(v20 + 16);
  v34 = OBJC_IVAR____TtC20IntelligencePlatform20SubgraphFilteredView_filter;
  v35 = sub_1ABF22424();
  sub_1ABA7BBB0(v35);
  (*(v36 + 16))(v21, v20 + v34, v35);
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v37, v38, v39, v35);
  a10 = v32;
  v25(v21, &a10);
  sub_1ABAB480C(v21, &qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE833A0(uint64_t a1, uint64_t a2)
{
  result = sub_1ABE8352C(&qword_1EB4CF620, a2, type metadata accessor for SubgraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE8341C(uint64_t a1, uint64_t a2)
{
  result = sub_1ABE8352C(&qword_1EB4CF628, a2, type metadata accessor for SubgraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE83474(uint64_t a1)
{
  result = sub_1ABE8352C(&qword_1EB4DB838, 255, type metadata accessor for SubgraphFilteredView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE834D0(uint64_t a1)
{
  result = sub_1ABE8352C(&unk_1EB4DB840, 255, type metadata accessor for SubgraphFilteredView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABE8352C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABE835E0()
{
  result = sub_1ABF22424();
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

uint64_t sub_1ABE836B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABA8EDB0();
  return v3() & 1;
}

uint64_t sub_1ABE8372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8379C(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_1ABAA4BE4();
  v11 = *(v1 + v10);
  return sub_1ABE818D8(a1, *(v1 + 16), *(v1 + 24), v1 + v12);
}

uint64_t sub_1ABE83870(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1ABAB47C4(&qword_1EB4DB948, &qword_1EB4DB950, &qword_1ABF70798);
  return sub_1ABF22674();
}

uint64_t sub_1ABE8391C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1ABAB47C4(&qword_1EB4DB910, &qword_1EB4DB918, &qword_1ABF70780);
  return sub_1ABF22674();
}

uint64_t sub_1ABE839C8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = sub_1ABF22674();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ABE83A2C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1ABAB47C4(&qword_1EB4DB8B0, &qword_1EB4DB8B8, &qword_1ABF70768);
  return sub_1ABF22674();
}

unint64_t sub_1ABE83AF4()
{
  result = qword_1EB4DB8D0;
  if (!qword_1EB4DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB8D0);
  }

  return result;
}

uint64_t sub_1ABE83B48()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 24);

  v8 = sub_1ABF22424();
  if (!sub_1ABA84420(v8))
  {
    sub_1ABA8AD50();
    (*(v9 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();

  return MEMORY[0x1EEE6BDD0](v1, v10 + 8, v4 | 7);
}

void sub_1ABE83C2C()
{
  v1 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_1ABAA4BE4();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *(v0 + v10);
  sub_1ABE813F0();
}

uint64_t sub_1ABE83D54(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void))
{
  v5 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  sub_1ABAA4BE4();
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + v13, *(v2 + v12), *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1ABE83E4C(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  sub_1ABAB47C4(a3, a4, a5);
  return sub_1ABF22674();
}

uint64_t sub_1ABE83EEC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1ABAB47C4(&qword_1EB4DB8F0, &qword_1EB4DB8F8, &unk_1ABF70770);
  return sub_1ABF22674();
}

uint64_t sub_1ABE84038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1ABE839C8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ABE840E4()
{
  if (qword_1EB4CE690 != -1)
  {
    sub_1ABA8FC34();
  }

  swift_beginAccess();
  v0 = byte_1EB4CE698;
  v1 = qword_1EB4CE6A0;
  v2 = unk_1EB4CE6A8;
  v3 = qword_1EB4CE6B0;

  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1ABA84CB8(v0, v1, v2, v4);
  objc_autoreleasePoolPop(v5);

  return v6 & 1;
}

void static SystemPreferencesImpl.updatePersonalizationDataCollectionAllowed(_:)()
{
  if (qword_1EB4CE690 != -1)
  {
    sub_1ABA8FC34();
  }

  swift_beginAccess();
  v0 = objc_autoreleasePoolPush();
  sub_1ABBC29E8(&byte_1EB4CE698);
  objc_autoreleasePoolPop(v0);
  swift_endAccess();
  v1 = [objc_opt_self() defaultCenter];
  [v1 postNotificationName:@"com.apple.intelligenceplatform.personalizationDataCollectionAllowed.changed" object:0];
}

id SystemPreferencesImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemPreferencesImpl.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SystemPreferencesImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABE84388()
{
  v0 = [objc_opt_self() isInternalDevice];
  sub_1ABA84BAC();
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  byte_1EB4CE698 = v0;
  qword_1EB4CE6A0 = 0xD000000000000024;
  unk_1EB4CE6A8 = 0x80000001ABF94950;
  qword_1EB4CE6B0 = result;
  return result;
}

uint64_t sub_1ABE84428()
{
  *&__src[0] = 1954047348;
  *(&__src[0] + 1) = 0xE400000000000000;
  *&__src[1] = &unk_1F208E788;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD0000000000000A0;
  *(&__src[3] + 1) = 0x80000001ABF94A10;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

void sub_1ABE844F4(uint64_t a1@<X1>, char *a2@<X8>)
{
  v2 = *(a1 + 64);
  if (((1 << v2) & 0x1DE) != 0)
  {
    goto LABEL_2;
  }

  if (!*(a1 + 64))
  {
    v2 = 6;
LABEL_2:
    *a2 = v2;
    return;
  }

  sub_1ABAF2860();
  swift_allocError();
  *v3 = 0xD000000000000038;
  *(v3 + 8) = 0x80000001ABF949D0;
  *(v3 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_1ABE84590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (((1 << *(a6 + 64)) & 0x1CA) == 0)
  {
    goto LABEL_31;
  }

  sub_1ABA8FC54();
  if (*(a6 + 32))
  {
    v11 = sub_1ABAE305C(115, 0xE100000000000000);
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      if (*(*(v11 + 16) + 16))
      {

LABEL_6:
        v13 = sub_1ABE8AE5C(v12);

        goto LABEL_9;
      }

      if (!*(v11 + 32))
      {
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_6;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  v13 = 0;
LABEL_9:
  sub_1ABA8FC54();
  if (*(a6 + 32))
  {
    v14 = sub_1ABAE305C(112, 0xE100000000000000);
    if (!v14)
    {
      swift_endAccess();
      goto LABEL_19;
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (*(v15 + 16))
    {
      v14 = sub_1ABE8AE5C(v15);
      goto LABEL_19;
    }
  }

  else
  {
    swift_endAccess();
  }

  v14 = 0;
LABEL_19:
  sub_1ABA8FC54();
  if (*(a6 + 32) && (v16 = sub_1ABAE305C(111, 0xE100000000000000)) != 0)
  {
    v17 = v16;
    swift_endAccess();
    swift_beginAccess();
    v18 = *(v17 + 16);

    if (*(v18 + 16))
    {
      v19 = sub_1ABE8AE5C(v18);
      sub_1ABA8FC54();
      v20 = sub_1ABA94FF4(0x65707954737466, 0xE700000000000000, *(a6 + 72));
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        swift_endAccess();
        v24._countAndFlagsBits = v22;
        v24._object = v23;
        TriplesQuery.FullTextSearchType.init(rawValue:)(v24);
        v25 = v51;
        if (v51 == 6)
        {

          sub_1ABAF2860();
          swift_allocError();
          *v26 = 0xD000000000000027;
          *(v26 + 8) = 0x80000001ABF949A0;
          *(v26 + 16) = 1;
          swift_willThrow();
LABEL_42:

          return v31 & 1;
        }
      }

      else
      {
        swift_endAccess();
        v25 = 3;
      }

      v33 = 96;
      if (v13 | v14)
      {
        sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1ABF34060;
        *(v34 + 32) = 0;
        *(v34 + 40) = v13;
        *(v34 + 48) = 0;
        *(v34 + 56) = v14;
        *(v34 + 120) = 0;
        *(v34 + 64) = 0u;
        *(v34 + 80) = 0u;
        *(v34 + 96) = 0u;
        *(v34 + 136) = 32;
        *(v34 + 144) = v19;
        *(v34 + 152) = v25;
        *(v34 + 232) = 0;
        *(v34 + 248) = 96;

        v19 = 0;
        v33 = 0;
        v25 = v34;
      }

      v35 = a2 + *(type metadata accessor for QueryContext() + 32);
      v36 = *(v35 + 88);
      v37 = *(v35 + 104);
      if (v36 >> 1 != 0xFFFFFFFF || (*(v35 + 104) & 0x1E) != 0)
      {
        v44 = *(v35 + 96);
        memcpy(__dst, v35, sizeof(__dst));
        v48 = v36;
        v49 = v44;
        v50 = v37;
        __src[0] = v19;
        __src[1] = v25;
        __src[11] = 0;
        LOBYTE(__src[13]) = v33;
        v45[111] = 1;
        sub_1ABE3A1C8();
        if (v7)
        {
          memcpy(v45, __src, 0x69uLL);
          sub_1ABAE4B6C(v45);
          goto LABEL_42;
        }

        memcpy(v45, __src, 0x69uLL);
        sub_1ABAE4B6C(v45);

        v19 = v51;
        v42 = v52;
        v38 = v53;
        v39 = v54;
        v40 = v55;
        v41 = v56;
        v43 = v57;
        v33 = v58;
      }

      else
      {

        *&v42 = v25;
        v43 = 0uLL;
      }

      *a1 = v19;
      *(a1 + 8) = v42;
      *(a1 + 24) = v38;
      *(a1 + 40) = v39;
      *(a1 + 56) = v40;
      *(a1 + 72) = v41;
      *(a1 + 88) = v43;
      v31 = 1;
      *(a1 + 104) = v33;
      return v31 & 1;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v27 = sub_1ABF237F4();
  sub_1ABA7AA24(v27, qword_1ED86E460);
  v28 = sub_1ABF237D4();
  v29 = sub_1ABF24664();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1ABA78000, v28, v29, "Text operator is given no object parameter.", v30, 2u);
    MEMORY[0x1AC5AB8B0](v30, -1, -1);
  }

LABEL_31:
  v31 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v31 & 1;
}

uint64_t sub_1ABE84AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = sub_1ABF239C4();
  *(v4 + 24) = v5;
  v7 = 0;
  sub_1ABE489A8(a3, &v7);
}

uint64_t sub_1ABE84BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21944();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  v16[0] = a1;
  v16[1] = a2;
  sub_1ABF21924();
  sub_1ABAE28EC();
  v13 = sub_1ABF24874();
  (*(v7 + 8))(v11, v4);
  v16[0] = v13;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v14 = sub_1ABF23B54();

  objc_autoreleasePoolPop(v12);
  return v14;
}

void sub_1ABE84CFC(uint64_t a1)
{
  v19 = objc_autoreleasePoolPush();
  sub_1ABAE28EC();
  v2 = sub_1ABF24884();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = v4; ; v4 = i)
  {
LABEL_2:
    if (v3 == v4)
    {

      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABF23B54();

      objc_autoreleasePoolPop(v19);
      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = (v2 + 32 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    ++v3;
    if (*(a1 + 16))
    {
      v9 = *(a1 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      v10 = sub_1ABF25294();
      v11 = ~(-1 << *(a1 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(a1 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a1 + 48) + 16 * v12);
        if (*v13 != v8 || v13[1] != v7)
        {
          v15 = sub_1ABF25054();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = *(v5 + 16);
      sub_1ABADDBD4();
    }

    v17 = *(v5 + 16);
    if (v17 >= *(v5 + 24) >> 1)
    {
      sub_1ABADDBD4();
    }

    *(v5 + 16) = v17 + 1;
    v18 = v5 + 16 * v17;
    *(v18 + 32) = v8;
    *(v18 + 40) = v7;
  }

  __break(1u);
}

void sub_1ABE84F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21944();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_autoreleasePoolPush();
  v25[0] = a1;
  v25[1] = a2;
  sub_1ABF21934();
  sub_1ABAE28EC();
  v13 = sub_1ABF24874();
  (*(v7 + 8))(v11, v4);
  objc_autoreleasePoolPop(v12);
  v14 = 0;
  v15 = *(v13 + 16);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v17 = (v13 + 40 + 16 * v14);
  while (1)
  {
    if (v15 == v14)
    {

      v25[0] = v16;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABF23B54();

      return;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    ++v14;
    v19 = *(v17 - 1);
    v18 = *v17;
    v17 += 2;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = *(v16 + 16);
        sub_1ABADDBD4();
        v16 = v25[0];
      }

      v23 = *(v16 + 16);
      if (v23 >= *(v16 + 24) >> 1)
      {
        sub_1ABADDBD4();
        v16 = v25[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1ABE85170()
{
  sub_1ABAE28EC();
  sub_1ABA8FC70();
  v0 = sub_1ABA8FC70();

  return v0;
}

uint64_t sub_1ABE85250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v24 - v6;
  v7 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v24 - v9;
  v27 = a2;
  v10 = *(a1 + 48);
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v10;
  v12 = *(v10 + 16);
  sub_1ABE865B8(a1, v28);
  v13 = (v10 + 32);
  while (2)
  {
    if (v12)
    {
      switch(*v13)
      {
        case 7:

          break;
        default:
          v14 = sub_1ABF25054();

          ++v13;
          --v12;
          if ((v14 & 1) == 0)
          {
            continue;
          }

          break;
      }

      sub_1ABE86614(a1);
      v15 = sub_1ABF21F54();
      v16 = v25;
      sub_1ABA7B9B4(v25, 1, 1, v15);
      v17 = v26;
      MorphunTokenizer.init(locale:overrideConfigOptions:)(v16, 0);
      v18 = v27;
      v19 = type metadata accessor for MorphunTokenizer(0);
      sub_1ABA7B9B4(v17, 0, 1, v19);
      v20 = type metadata accessor for TextPreprocessor();
      return sub_1ABE86668(v17, v18 + *(v20 + 20));
    }

    else
    {
      sub_1ABE86614(a1);
      v22 = *(type metadata accessor for TextPreprocessor() + 20);
      v23 = type metadata accessor for MorphunTokenizer(0);
      return sub_1ABA7B9B4(v27 + v22, 1, 1, v23);
    }
  }
}

uint64_t sub_1ABE85574(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 48);
  v8 = *(v7 + 16);

  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      v17 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v17 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {

        sub_1ABB32C5C();
        sub_1ABA7BD00();
        *v20 = 0xD000000000000018;
        *(v20 + 8) = 0x80000001ABF94B70;
LABEL_21:
        *(v20 + 16) = 2;
        swift_willThrow();
        return sub_1ABA7D0F8();
      }

      v25[0] = a1;
      v25[1] = a2;
      sub_1ABAE28EC();
      v18 = *(sub_1ABF24884() + 16);

      if (*(v4 + 24) == 1)
      {
        if (v18 <= 0x40)
        {
LABEL_11:
          sub_1ABA7D0F8();
          v19 = sub_1ABF23D44();
          if (*(v4 + 8) == 1)
          {
            if (v19 <= 1024)
            {
              return sub_1ABA7D0F8();
            }
          }

          else if (*v4 >= v19)
          {
            return sub_1ABA7D0F8();
          }

          sub_1ABF24AB4();

          strcpy(v25, "Query size: ");
          BYTE5(v25[1]) = 0;
          HIWORD(v25[1]) = -5120;
          sub_1ABA7D0F8();
          sub_1ABF23D44();

          v22 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v22);

          sub_1ABA7FA2C();
          goto LABEL_20;
        }
      }

      else if (*(v4 + 16) >= v18)
      {
        goto LABEL_11;
      }

      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF94B50);
      v21 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v21);

      sub_1ABA7FA2C();
LABEL_20:
      sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
      v23 = sub_1ABF23C74();
      MEMORY[0x1AC5A9410](v23);

      MEMORY[0x1AC5A9410](0x6874676E656C20, 0xE700000000000000);
      v24 = v25[1];
      sub_1ABB32C5C();
      sub_1ABA7BD00();
      *v20 = v25[0];
      *(v20 + 8) = v24;
      goto LABEL_21;
    }

    if (i >= *(v7 + 16))
    {
      break;
    }

    LOBYTE(v25[0]) = *(v7 + 32 + i);
    v11 = sub_1ABA7D0F8();
    v14 = sub_1ABE85BD0(v11, v12, v13);
    if (v3)
    {

      return sub_1ABA7D0F8();
    }

    a1 = v14;
    v16 = v15;

    a2 = v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABE858D0()
{
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED871EA8;
  v1 = sub_1ABF23BD4();
  v2 = sub_1ABA7D0EC();
  sub_1ABE863A8(v2, v3, v1, v0);
  v5 = v4;

  if (v5)
  {

    return sub_1ABE86184();
  }

  else
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000037, 0x80000001ABF94AC0);
    v7 = sub_1ABA7D0EC();
    MEMORY[0x1AC5A9410](v7);

    sub_1ABB32C5C();
    sub_1ABA7BD00();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 6;
    return swift_willThrow();
  }
}