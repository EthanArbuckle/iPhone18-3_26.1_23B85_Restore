void sub_1ABBC0A28()
{
  qword_1EB5497C8 = 0x6E6F697461636F6CLL;
  unk_1EB5497D0 = 0xE900000000000073;
  qword_1EB5497D8 = 0x6E6F697461636F6CLL;
  unk_1EB5497E0 = 0xE900000000000073;
}

void sub_1ABBC0A58()
{
  qword_1EB5497E8 = 0x73746E657665;
  unk_1EB5497F0 = 0xE600000000000000;
  qword_1EB5497F8 = 0x73746E657665;
  unk_1EB549800 = 0xE600000000000000;
}

void sub_1ABBC0A7C()
{
  qword_1EB549808 = 0x656C706F6570;
  unk_1EB549810 = 0xE600000000000000;
  qword_1EB549818 = 0x656C706F6570;
  unk_1EB549820 = 0xE600000000000000;
}

void sub_1ABBC0AA0()
{
  qword_1EB549828 = 0x736369706F74;
  unk_1EB549830 = 0xE600000000000000;
  qword_1EB549838 = 0x736369706F74;
  unk_1EB549840 = 0xE600000000000000;
}

void sub_1ABBC0AC4()
{
  strcpy(&qword_1EB549848, "organizations");
  unk_1EB549856 = -4864;
  strcpy(&qword_1EB549858, "organizations");
  unk_1EB549866 = -4864;
}

uint64_t NeighborSignal.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NeighborSignal.columnName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall NeighborSignal.init(rawValue:)(IntelligencePlatform::NeighborSignal_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = rawValue._countAndFlagsBits == 0x6E6F697461636F6CLL && rawValue._object == 0xE900000000000073;
  if (v5 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
  {

    if (qword_1EB4D0300 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EB5497C8;
  }

  else
  {
    v9 = countAndFlagsBits == 0x73746E657665 && object == 0xE600000000000000;
    if (v9 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
    {

      if (qword_1EB4D0308 != -1)
      {
        swift_once();
      }

      v6 = &qword_1EB5497E8;
    }

    else
    {
      v10 = countAndFlagsBits == 0x656C706F6570 && object == 0xE600000000000000;
      if (v10 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
      {

        if (qword_1EB4D0310 != -1)
        {
          swift_once();
        }

        v6 = &qword_1EB549808;
      }

      else
      {
        v11 = countAndFlagsBits == 0x736369706F74 && object == 0xE600000000000000;
        if (v11 || (sub_1ABA97788(), (sub_1ABF25054() & 1) != 0))
        {

          if (qword_1EB4D0318 != -1)
          {
            swift_once();
          }

          v6 = &qword_1EB549828;
        }

        else
        {
          if (countAndFlagsBits != 0x617A696E6167726FLL || object != 0xED0000736E6F6974)
          {
            sub_1ABA97788();
            if ((sub_1ABF25054() & 1) == 0)
            {
              v7 = object;
              v8 = countAndFlagsBits;
              goto LABEL_10;
            }
          }

          if (qword_1EB4D0320 != -1)
          {
            swift_once();
          }

          v6 = &qword_1EB549848;
        }
      }
    }
  }

  countAndFlagsBits = *v6;
  v7 = v6[1];
  v8 = v6[2];
  object = v6[3];

LABEL_10:

  retstr->value.name._countAndFlagsBits = countAndFlagsBits;
  retstr->value.name._object = v7;
  retstr->value.columnName._countAndFlagsBits = v8;
  retstr->value.columnName._object = object;
}

void __swiftcall NeighborSignal.init(columnName:)(IntelligencePlatform::NeighborSignal_optional *__return_ptr retstr, Swift::String columnName)
{
  NeighborSignal.init(rawValue:)(&v4, columnName);
  v3 = v4.value.columnName;
  retstr->value.name = v4.value.name;
  retstr->value.columnName = v3;
}

uint64_t sub_1ABBC0F04@<X0>(uint64_t *a1@<X8>)
{
  result = NeighborSignal.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBC0F2C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1ABAC9468(a1, *v1, v1[1]);
}

uint64_t sub_1ABBC0F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABBC7008();
  v5 = sub_1ABBC6FB4();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABBC0FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBC6F60();
  v7 = sub_1ABBC6FB4();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABBC103C(uint64_t a1)
{
  v2 = sub_1ABBC6F0C();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBC1088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBC6F0C();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABBC10DC()
{
  v1 = sub_1ABF21CF4();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABA7D0F8();
  sub_1ABF21C44();
  sub_1ABF21D34();
  if (v0)
  {
    return (*(v4 + 8))(v8, v1);
  }

  (*(v4 + 8))(v8, v1);
  v10 = objc_autoreleasePoolPush();
  sub_1ABA7D0F8();
  sub_1ABBC123C(v11, v12);
  objc_autoreleasePoolPop(v10);
  v13 = sub_1ABA7D0F8();
  sub_1ABA96210(v13, v14);
  return v15[1];
}

uint64_t sub_1ABBC123C@<X0>(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABF217F4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABAD219C(&qword_1EB4D4600, &unk_1ABF44F58);
  sub_1ABBC70B0();
  sub_1ABF217D4();

  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v9 = __src[0];
    v10 = *(__src[0] + 16);
    if (v10)
    {
      v28 = a1;
      v20 = a2;
      v27 = MEMORY[0x1E69E7CC0];
      sub_1ABADE18C();
      v11 = 0;
      v12 = v27;
      if (*(__src[0] + 16) >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = *(__src[0] + 16);
      }

      v14 = (__src[0] + 64);
      while (v13 != v11)
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v14 - 4);
        v15 = *(v14 - 3);
        v22 = v11;
        v23[0] = v16;
        v23[1] = v15;
        v17 = *v14;
        v24 = *(v14 - 1);
        v25 = v17;

        sub_1ABBC151C(v11, v23, __src);

        memcpy(__dst, __src, sizeof(__dst));
        v27 = v12;
        v18 = *(v12 + 16);
        if (v18 >= *(v12 + 24) >> 1)
        {
          sub_1ABADE18C();
          v12 = v27;
        }

        *(v12 + 16) = v18 + 1;
        memcpy((v12 + 1160 * v18 + 32), __dst, 0x488uLL);
        if (v10 - 1 == v11)
        {

          a2 = v20;
          goto LABEL_16;
        }

        v14 += 6;
        ++v11;
      }

      __break(1u);
LABEL_18:
      __break(1u);

      __break(1u);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
LABEL_16:
      __src[0] = v12;

      sub_1ABBB6A70(__src);

      v19 = __src[0];
      sub_1ABAD219C(&qword_1EB4D1960, &qword_1ABF33AF0);
      result = swift_allocObject();
      *(result + 96) = 0;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 16) = xmmword_1ABF34740;
      *(result + 104) = 1;
      *(result + 105) = __dst[0];
      *(result + 108) = *(__dst + 3);
      *(result + 112) = v19;
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_1ABBC151C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 1);
  v21 = *a2;
  v7 = *(a2 + 2);
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  sub_1ABAD219C(&qword_1EB4D4618, &qword_1ABF44F68);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF3BFC0;
  __dst[0] = a1;

  result = EntityIdentifier.stringValue.getter();
  *(v10 + 32) = 0xD000000000000027;
  *(v10 + 40) = 0x80000001ABF8A0C0;
  *(v10 + 48) = 0xD000000000000010;
  *(v10 + 56) = 0x80000001ABF8A0F0;
  *(v10 + 64) = result;
  *(v10 + 72) = v12;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = objc_opt_self();
  *(v10 + 80) = [v13 featureValueWithInt64_];
  v14 = EntityIdentifier.stringValue.getter();
  *(v10 + 88) = 0xD000000000000027;
  *(v10 + 96) = 0x80000001ABF8A0C0;
  *(v10 + 104) = 0xD000000000000012;
  *(v10 + 112) = 0x80000001ABF8A110;
  *(v10 + 120) = v14;
  *(v10 + 128) = v15;
  *(v10 + 136) = [v13 featureValueWithDouble_];
  __dst[0] = a1;
  v16 = EntityIdentifier.stringValue.getter();
  *(v10 + 144) = 0xD000000000000029;
  *(v10 + 152) = 0x80000001ABF8A130;
  *(v10 + 160) = 0xD00000000000002ELL;
  *(v10 + 168) = 0x80000001ABF8A160;
  *(v10 + 176) = v16;
  *(v10 + 184) = v17;
  *(v10 + 192) = [v13 featureValueWithDouble_];
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  sub_1ABBA0480();
  v18 = sub_1ABF239C4();
  v19 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v18, &v25);

  objc_autoreleasePoolPop(v19);
  if (v22)
  {
  }

  else
  {
    memcpy(__dst, __src, 0x3C8uLL);
    sub_1ABB9AEA4(__dst);
    *a3 = a1;
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v7;
    *(a3 + 40) = v21;
    *(a3 + 48) = v5;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
    result = memcpy((a3 + 112), __dst, 0x3C9uLL);
    *(a3 + 1152) = 0;
    *(a3 + 1088) = 0;
    *(a3 + 1096) = 1;
    *(a3 + 1104) = 0x3FF0000000000000;
    *(a3 + 1112) = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *(a3 + 1120) = MEMORY[0x1E69E7CC0];
    *(a3 + 1128) = v20;
    *(a3 + 1136) = v20;
    *(a3 + 1144) = v20;
  }

  return result;
}

uint64_t sub_1ABBC184C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF8A030 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
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

uint64_t sub_1ABBC1964(char a1)
{
  if (!a1)
  {
    return 1684632941;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x7365727574616566;
}

uint64_t sub_1ABBC19C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC184C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC19E8(uint64_t a1)
{
  v2 = sub_1ABBC481C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC1A24(uint64_t a1)
{
  v2 = sub_1ABBC481C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MockRankerResult.encode(to:)(void *a1)
{
  v5 = sub_1ABAD219C(&qword_1EB4D43E8, &qword_1ABF42B68);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  v21 = v20;
  sub_1ABA88DCC(v19, v17);
  sub_1ABBC481C();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA894A0();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v2)
  {
    sub_1ABA7BF34();
    sub_1ABF24F54();
    sub_1ABBC4870();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v3, v21);
}

void MockRankerResult.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4400, &qword_1ABF42B70);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC481C();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABA9A364();
    v9 = sub_1ABF24E14();
    v11 = v10;
    LOBYTE(v16) = 1;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v13 = v12;
    sub_1ABBC48C4();
    sub_1ABF24E64();
    v14 = sub_1ABA7BFF0();
    v15(v14);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 24) = v16;
    *(a2 + 40) = v17;

    sub_1ABA84B54(a1);
  }

  sub_1ABA9EFCC();
}

uint64_t sub_1ABBC1DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000026 && 0x80000001ABF8A050 == a2;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001ABF8A080 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001ABF8A0A0 == a2)
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

unint64_t sub_1ABBC1EF4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0xD000000000000018;
}

uint64_t sub_1ABBC1F78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBC1FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC1DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBC1FF4(uint64_t a1)
{
  v2 = sub_1ABBC4918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC2030(uint64_t a1)
{
  v2 = sub_1ABBC4918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MockLocationFeatures.encode(to:)(uint64_t a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4410, &qword_1ABF42B78);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_1ABAA015C();
  sub_1ABA88DCC(v13, v14);
  sub_1ABBC4918();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v2)
  {
    sub_1ABA7BF34();
    sub_1ABF24F54();
    sub_1ABA7BF34();
    sub_1ABF24F54();
  }

  v15 = sub_1ABA8862C();
  return v16(v15);
}

uint64_t MockLocationFeatures.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4420, &qword_1ABF42B80);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC4918();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABA9A364();
    sub_1ABF24E34();
    v10 = v9;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v13 = v12;
    sub_1ABA9A364();
    sub_1ABF24E34();
    v15 = v14;
    v16 = sub_1ABA7BFF0();
    v17(v16);
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v15;
  }

  return sub_1ABA84B54(a1);
}

uint64_t static NSUserDefaults.ecrRankerResultsMockFile.getter()
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC();
  }

  swift_beginAccess();
  v4[0] = xmmword_1ED86E400;
  v4[1] = *&qword_1ED86E410;
  v5 = qword_1ED86E420;
  sub_1ABBC496C(v4, v3);
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1ABBC2810(v4);
  objc_autoreleasePoolPop(v0);
  sub_1ABA925A4(v4, &qword_1EB4D4428, &qword_1ABF42B88);
  return v1;
}

uint64_t sub_1ABBC245C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static NSUserDefaults.ecrRankerResultsMockFile.setter();
}

uint64_t static NSUserDefaults.ecrRankerResultsMockFile.setter()
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC();
  }

  swift_beginAccess();
  v0 = objc_autoreleasePoolPush();
  sub_1ABA893C0();
  sub_1ABBC2920(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  swift_endAccess();
}

void (*static NSUserDefaults.ecrRankerResultsMockFile.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = sub_1ABAFDD10(0x68uLL);
  *a1 = v2;
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC();
  }

  swift_beginAccess();
  v3 = xmmword_1ED86E400;
  v4 = *&qword_1ED86E410;
  v2[4] = qword_1ED86E420;
  *v2 = v3;
  *(v2 + 1) = v4;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1ABBC2810(v2);
  v2[12] = 0;
  v7 = v6;
  v9 = v8;
  objc_autoreleasePoolPop(v5);
  v2[8] = v7;
  v2[9] = v9;
  return sub_1ABBC2624;
}

void sub_1ABBC2624(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = objc_autoreleasePoolPush();
    sub_1ABBC2920(&xmmword_1ED86E400, v3, v4);
    objc_autoreleasePoolPop(v7);

    v8 = v2[9];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    sub_1ABBC2920(&xmmword_1ED86E400, v3, v4);
    objc_autoreleasePoolPop(v9);
  }

  swift_endAccess();

  free(v2);
}

uint64_t sub_1ABBC26FC()
{
  sub_1ABAFF390(0, &qword_1ED871D88, 0x1E695E000);
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  xmmword_1ED86E400 = 0uLL;
  qword_1ED86E410 = 0xD000000000000018;
  qword_1ED86E418 = 0x80000001ABF8A190;
  qword_1ED86E420 = result;
  return result;
}

id static NSUserDefaults.$ecrRankerResultsMockFile.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED86E3F8 != -1)
  {
    sub_1ABA7F0DC();
  }

  swift_beginAccess();
  v3 = qword_1ED86E418;
  v5 = qword_1ED86E420;
  v2 = qword_1ED86E420;
  *a1 = xmmword_1ED86E400;
  *(a1 + 8) = *(&xmmword_1ED86E400 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;

  return v5;
}

uint64_t sub_1ABBC2810(uint64_t *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  v4 = a1[3];
  v5 = sub_1ABF23BD4();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_1ABF248F4();
    swift_unknownObjectRelease();
    sub_1ABAFF238(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  if (swift_dynamicCast() && *(&v10 + 1) != 1)
  {
    return v10;
  }

  v8 = *a1;
  v7 = a1[1];

  return v8;
}

void sub_1ABBC2920(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];

  v5 = v4;
  sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
  v6 = sub_1ABF250E4();
  v8 = a1[2];
  v7 = a1[3];

  v9 = sub_1ABF23BD4();

  [v5 setObject:v6 forKey:{v9, a2, a3}];

  swift_unknownObjectRelease();
}

void sub_1ABBC29E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_1ABF250E4();
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);

  v6 = sub_1ABF23BD4();

  [v2 setObject:v3 forKey:v6];

  swift_unknownObjectRelease();
}

unint64_t sub_1ABBC2A90()
{
  result = qword_1EB4D4178;
  if (!qword_1EB4D4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4178);
  }

  return result;
}

unint64_t sub_1ABBC2AE4()
{
  result = qword_1EB4D4180;
  if (!qword_1EB4D4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4180);
  }

  return result;
}

unint64_t sub_1ABBC2B38()
{
  result = qword_1EB4D4188;
  if (!qword_1EB4D4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4188);
  }

  return result;
}

unint64_t sub_1ABBC2B8C()
{
  result = qword_1EB4D4190;
  if (!qword_1EB4D4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4190);
  }

  return result;
}

unint64_t sub_1ABBC2BE0()
{
  result = qword_1EB4D4198;
  if (!qword_1EB4D4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4198);
  }

  return result;
}

unint64_t sub_1ABBC2C34()
{
  result = qword_1EB4D41A0;
  if (!qword_1EB4D41A0)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    sub_1ABAE8BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41A0);
  }

  return result;
}

unint64_t sub_1ABBC2CB8()
{
  result = qword_1EB4D41A8;
  if (!qword_1EB4D41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41A8);
  }

  return result;
}

unint64_t sub_1ABBC2D0C()
{
  result = qword_1EB4D41B0;
  if (!qword_1EB4D41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41B0);
  }

  return result;
}

unint64_t sub_1ABBC2D60(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1ABBC2E00(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1ABDEFABC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1ABBC2E00(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1ABB807B0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

char *sub_1ABBC2E70(uint64_t *a1)
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
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABBC2F64(v7, v8, a1, v4);
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
    return sub_1ABBA079C(0, v2, 1, a1);
  }

  return result;
}

void sub_1ABBC2F64(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 1160 * v9 + 8);
        v11 = 1160 * v7;
        v12 = *a3 + 1160 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 2328);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v19 = (v13 < v10) ^ (v16 >= *v14);
          v14 += 145;
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_109;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 1160 * v6 - 1160;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v9)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_114;
                }

                memcpy(__dst, (v23 + v11), sizeof(__dst));
                memmove((v23 + v11), (v23 + v20), 0x488uLL);
                memcpy((v23 + v20), __dst, 0x488uLL);
              }

              ++v22;
              v20 -= 1160;
              v11 += 1160;
            }

            while (v22 < v9);
            v6 = a3[1];
            v9 = v21;
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_108;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_110;
          }

          if (v7 + a4 >= v6)
          {
            v24 = v6;
          }

          else
          {
            v24 = v7 + a4;
          }

          if (v24 < v7)
          {
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
            return;
          }

          if (v9 != v24)
          {
            v25 = *a3;
            v26 = *a3 + 1160 * v9 - 1160;
            v81 = v7;
            v27 = v9;
            v28 = v7 - v9;
            do
            {
              v29 = v28;
              v30 = v26;
              do
              {
                if (v30[1] >= v30[146])
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_112;
                }

                memcpy(__dst, v30 + 145, sizeof(__dst));
                memcpy(v30 + 145, v30, 0x488uLL);
                memcpy(v30, __dst, 0x488uLL);
                v30 -= 145;
              }

              while (!__CFADD__(v29++, 1));
              v26 += 1160;
              --v28;
              ++v27;
            }

            while (v27 != v24);
            v9 = v24;
            v7 = v81;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_107;
      }

      v80 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v8[2];
        sub_1ABAD8820();
        v8 = v76;
      }

      v32 = v8[2];
      v33 = v32 + 1;
      if (v32 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v77;
      }

      v8[2] = v33;
      v34 = v8 + 4;
      v35 = &v8[2 * v32 + 4];
      *v35 = v7;
      v35[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_115;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v8[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v8[4];
            v40 = v8[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_97;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_100;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_105;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_99;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_102;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_104;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
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
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v68 = &v34[2 * v36 - 2];
          v69 = *v68;
          v70 = &v34[2 * v36];
          v71 = v70[1];
          sub_1ABBA1794((*a3 + 1160 * *v68), (*a3 + 1160 * *v70), (*a3 + 1160 * v71), v82);
          if (v5)
          {
            goto LABEL_90;
          }

          if (v71 < v69)
          {
            goto LABEL_92;
          }

          v72 = v8;
          v73 = v8[2];
          if (v36 > v73)
          {
            goto LABEL_93;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v36 >= v73)
          {
            goto LABEL_94;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v70 + 2, 16 * (v73 - 1 - v36));
          v72[2] = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_95;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_96;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_98;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_101;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_106;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v6 = a3[1];
      v7 = v80;
      if (v80 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_116;
  }

  sub_1ABBA1424(&v85, *a1, a3);
LABEL_90:
}

uint64_t sub_1ABBC34A0()
{
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](3943982, 0xE300000000000000);
  sub_1ABF24C54();
  return 0;
}

unint64_t sub_1ABBC3538()
{
  result = qword_1EB4D41E8;
  if (!qword_1EB4D41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41E8);
  }

  return result;
}

unint64_t sub_1ABBC358C()
{
  result = qword_1EB4D41F0;
  if (!qword_1EB4D41F0)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    sub_1ABAE8B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D41F0);
  }

  return result;
}

unint64_t sub_1ABBC3610()
{
  result = qword_1EB4D4200;
  if (!qword_1EB4D4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4200);
  }

  return result;
}

unint64_t sub_1ABBC3664()
{
  result = qword_1EB4D4218;
  if (!qword_1EB4D4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4218);
  }

  return result;
}

unint64_t sub_1ABBC36B8()
{
  result = qword_1EB4D4228;
  if (!qword_1EB4D4228)
  {
    sub_1ABAE2850(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABA98CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4228);
  }

  return result;
}

unint64_t sub_1ABBC373C()
{
  result = qword_1EB4D4238;
  if (!qword_1EB4D4238)
  {
    sub_1ABAE2850(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC37C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4238);
  }

  return result;
}

unint64_t sub_1ABBC37C0()
{
  result = qword_1EB4D4240;
  if (!qword_1EB4D4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4240);
  }

  return result;
}

unint64_t sub_1ABBC3814()
{
  result = qword_1EB4D4248;
  if (!qword_1EB4D4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4248);
  }

  return result;
}

unint64_t sub_1ABBC3868()
{
  result = qword_1EB4D4258;
  if (!qword_1EB4D4258)
  {
    sub_1ABAE2850(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC38EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4258);
  }

  return result;
}

unint64_t sub_1ABBC38EC()
{
  result = qword_1EB4D4260;
  if (!qword_1EB4D4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4260);
  }

  return result;
}

unint64_t sub_1ABBC3940()
{
  result = qword_1EB4D4270;
  if (!qword_1EB4D4270)
  {
    sub_1ABAE2850(&qword_1EB4D4220, &qword_1ABF42AC0);
    sub_1ABA9B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4270);
  }

  return result;
}

unint64_t sub_1ABBC39C4()
{
  result = qword_1EB4D4278;
  if (!qword_1EB4D4278)
  {
    sub_1ABAE2850(&qword_1EB4D4230, &qword_1ABF42AC8);
    sub_1ABBC3A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4278);
  }

  return result;
}

unint64_t sub_1ABBC3A48()
{
  result = qword_1EB4D4280;
  if (!qword_1EB4D4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4280);
  }

  return result;
}

unint64_t sub_1ABBC3A9C()
{
  result = qword_1EB4D4288;
  if (!qword_1EB4D4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4288);
  }

  return result;
}

unint64_t sub_1ABBC3AF0()
{
  result = qword_1EB4D4290;
  if (!qword_1EB4D4290)
  {
    sub_1ABAE2850(&qword_1EB4D4250, &qword_1ABF42AD0);
    sub_1ABBC3B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4290);
  }

  return result;
}

unint64_t sub_1ABBC3B74()
{
  result = qword_1EB4D4298;
  if (!qword_1EB4D4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4298);
  }

  return result;
}

unint64_t sub_1ABBC3C30()
{
  result = qword_1EB4D42B0;
  if (!qword_1EB4D42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42B0);
  }

  return result;
}

unint64_t sub_1ABBC3C84()
{
  result = qword_1EB4D42B8;
  if (!qword_1EB4D42B8)
  {
    sub_1ABAE2850(&qword_1EB4D1970, &qword_1ABF33B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42B8);
  }

  return result;
}

unint64_t sub_1ABBC3D00()
{
  result = qword_1EB4D42D0;
  if (!qword_1EB4D42D0)
  {
    sub_1ABAE2850(&qword_1EB4D42C8, &qword_1ABF42B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42D0);
  }

  return result;
}

unint64_t sub_1ABBC3D7C()
{
  result = qword_1EB4D42E0;
  if (!qword_1EB4D42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42E0);
  }

  return result;
}

unint64_t sub_1ABBC3E00()
{
  result = qword_1EB4D42F8;
  if (!qword_1EB4D42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D42F8);
  }

  return result;
}

unint64_t sub_1ABBC3E54()
{
  result = qword_1EB4D4300;
  if (!qword_1EB4D4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4300);
  }

  return result;
}

unint64_t sub_1ABBC3EA8()
{
  result = qword_1EB4D4308;
  if (!qword_1EB4D4308)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4308);
  }

  return result;
}

unint64_t sub_1ABBC3F24()
{
  result = qword_1EB4D4310;
  if (!qword_1EB4D4310)
  {
    sub_1ABAE2850(&qword_1EB4D1370, &qword_1ABF42B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4310);
  }

  return result;
}

unint64_t sub_1ABBC3FA0()
{
  result = qword_1ED870660;
  if (!qword_1ED870660)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870660);
  }

  return result;
}

unint64_t sub_1ABBC401C()
{
  result = qword_1EB4D4320;
  if (!qword_1EB4D4320)
  {
    sub_1ABAE2850(&qword_1EB4D1370, &qword_1ABF42B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4320);
  }

  return result;
}

unint64_t sub_1ABBC4098()
{
  result = qword_1EB4D4330;
  if (!qword_1EB4D4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4330);
  }

  return result;
}

unint64_t sub_1ABBC40EC()
{
  result = qword_1EB4D4338;
  if (!qword_1EB4D4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4338);
  }

  return result;
}

unint64_t sub_1ABBC4140()
{
  result = qword_1EB4D4348;
  if (!qword_1EB4D4348)
  {
    sub_1ABAE2850(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC41C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4348);
  }

  return result;
}

unint64_t sub_1ABBC41C4()
{
  result = qword_1EB4D4350;
  if (!qword_1EB4D4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4350);
  }

  return result;
}

unint64_t sub_1ABBC4218()
{
  result = qword_1EB4D4360;
  if (!qword_1EB4D4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4360);
  }

  return result;
}

unint64_t sub_1ABBC426C()
{
  result = qword_1EB4D4368;
  if (!qword_1EB4D4368)
  {
    sub_1ABAE2850(&qword_1EB4D4340, &qword_1ABF42B38);
    sub_1ABBC42F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4368);
  }

  return result;
}

unint64_t sub_1ABBC42F0()
{
  result = qword_1EB4D4370;
  if (!qword_1EB4D4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4370);
  }

  return result;
}

unint64_t sub_1ABBC43AC()
{
  result = qword_1EB4D4380;
  if (!qword_1EB4D4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4380);
  }

  return result;
}

unint64_t sub_1ABBC4400()
{
  result = qword_1EB4D4388;
  if (!qword_1EB4D4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4388);
  }

  return result;
}

unint64_t sub_1ABBC4454()
{
  result = qword_1EB4D4390;
  if (!qword_1EB4D4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4390);
  }

  return result;
}

unint64_t sub_1ABBC44A8()
{
  result = qword_1EB4D43A0;
  if (!qword_1EB4D43A0)
  {
    sub_1ABAE2850(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC452C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43A0);
  }

  return result;
}

unint64_t sub_1ABBC452C()
{
  result = qword_1EB4D43A8;
  if (!qword_1EB4D43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43A8);
  }

  return result;
}

unint64_t sub_1ABBC4580()
{
  result = qword_1EB4D43B8;
  if (!qword_1EB4D43B8)
  {
    sub_1ABAE2850(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC40EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43B8);
  }

  return result;
}

unint64_t sub_1ABBC4604()
{
  result = qword_1EB4D43C8;
  if (!qword_1EB4D43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43C8);
  }

  return result;
}

unint64_t sub_1ABBC4658()
{
  result = qword_1EB4D43D0;
  if (!qword_1EB4D43D0)
  {
    sub_1ABAE2850(&qword_1EB4D4398, &qword_1ABF42B50);
    sub_1ABBC46DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43D0);
  }

  return result;
}

unint64_t sub_1ABBC46DC()
{
  result = qword_1EB4D43D8;
  if (!qword_1EB4D43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43D8);
  }

  return result;
}

unint64_t sub_1ABBC4730()
{
  result = qword_1EB4D43E0;
  if (!qword_1EB4D43E0)
  {
    sub_1ABAE2850(&qword_1EB4D43B0, &qword_1ABF42B58);
    sub_1ABBC4218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43E0);
  }

  return result;
}

unint64_t sub_1ABBC481C()
{
  result = qword_1EB4D43F0;
  if (!qword_1EB4D43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43F0);
  }

  return result;
}

unint64_t sub_1ABBC4870()
{
  result = qword_1EB4D43F8;
  if (!qword_1EB4D43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D43F8);
  }

  return result;
}

unint64_t sub_1ABBC48C4()
{
  result = qword_1EB4D4408;
  if (!qword_1EB4D4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4408);
  }

  return result;
}

unint64_t sub_1ABBC4918()
{
  result = qword_1EB4D4418;
  if (!qword_1EB4D4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4418);
  }

  return result;
}

uint64_t sub_1ABBC496C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4428, &qword_1ABF42B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABBC49E0()
{
  result = qword_1EB4D4430;
  if (!qword_1EB4D4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4430);
  }

  return result;
}

unint64_t sub_1ABBC4A38()
{
  result = qword_1EB4D4438;
  if (!qword_1EB4D4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4438);
  }

  return result;
}

unint64_t sub_1ABBC4A90()
{
  result = qword_1EB4D4440;
  if (!qword_1EB4D4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4440);
  }

  return result;
}

unint64_t sub_1ABBC4AE8()
{
  result = qword_1EB4D4448;
  if (!qword_1EB4D4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4448);
  }

  return result;
}

unint64_t sub_1ABBC4B40()
{
  result = qword_1EB4D4450;
  if (!qword_1EB4D4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4450);
  }

  return result;
}

unint64_t sub_1ABBC4B98()
{
  result = qword_1EB4D4458;
  if (!qword_1EB4D4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4458);
  }

  return result;
}

unint64_t sub_1ABBC4BF0()
{
  result = qword_1EB4D4460;
  if (!qword_1EB4D4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4460);
  }

  return result;
}

unint64_t sub_1ABBC4C48()
{
  result = qword_1EB4D4468;
  if (!qword_1EB4D4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4468);
  }

  return result;
}

unint64_t sub_1ABBC4CA0()
{
  result = qword_1EB4D4470;
  if (!qword_1EB4D4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4470);
  }

  return result;
}

uint64_t sub_1ABBC4CF4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1ABBC4D10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 17))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 9)
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

uint64_t sub_1ABBC4D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC4D94(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PreprocessingStep(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1ABBC4EA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABBC4EB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 35))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 34);
      if (v3 <= 4)
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

uint64_t sub_1ABBC4EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 34) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC4F6C(uint64_t a1)
{
  v1 = *(a1 + 34);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBC4F88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 123))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1ABBC4FC8(uint64_t result, int a2, int a3)
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
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC5054(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC50A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC5138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_1ABBC5178(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC51E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABBC5208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 325))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_1ABBC5248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 324) = 0;
    *(result + 320) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 325) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 325) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC535C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 1120);
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

uint64_t sub_1ABBC539C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1144) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1160) = 1;
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
      *(result + 1120) = (a2 - 1);
      return result;
    }

    *(result + 1160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC551C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1ABBC555C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC55C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1ABBC5608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBC56E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5768(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntityResolutionSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RerankedEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RerankedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityResolutionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityResolutionRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBC5C18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5C9C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABBC5D88(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABBC5E44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 2);
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

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBC5EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBC5F98()
{
  result = qword_1EB4D4478;
  if (!qword_1EB4D4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4478);
  }

  return result;
}

unint64_t sub_1ABBC5FF0()
{
  result = qword_1EB4D4480;
  if (!qword_1EB4D4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4480);
  }

  return result;
}

unint64_t sub_1ABBC6048()
{
  result = qword_1EB4D4488;
  if (!qword_1EB4D4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4488);
  }

  return result;
}

unint64_t sub_1ABBC60A0()
{
  result = qword_1EB4D4490;
  if (!qword_1EB4D4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4490);
  }

  return result;
}

unint64_t sub_1ABBC60F8()
{
  result = qword_1EB4D4498;
  if (!qword_1EB4D4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4498);
  }

  return result;
}

unint64_t sub_1ABBC6150()
{
  result = qword_1EB4D44A0;
  if (!qword_1EB4D44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44A0);
  }

  return result;
}

unint64_t sub_1ABBC61A8()
{
  result = qword_1EB4D44A8;
  if (!qword_1EB4D44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44A8);
  }

  return result;
}

unint64_t sub_1ABBC6200()
{
  result = qword_1EB4D44B0;
  if (!qword_1EB4D44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44B0);
  }

  return result;
}

unint64_t sub_1ABBC6258()
{
  result = qword_1EB4D44B8;
  if (!qword_1EB4D44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44B8);
  }

  return result;
}

unint64_t sub_1ABBC62B0()
{
  result = qword_1EB4D44C0;
  if (!qword_1EB4D44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44C0);
  }

  return result;
}

unint64_t sub_1ABBC6308()
{
  result = qword_1EB4D44C8;
  if (!qword_1EB4D44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44C8);
  }

  return result;
}

unint64_t sub_1ABBC6360()
{
  result = qword_1EB4D44D0;
  if (!qword_1EB4D44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44D0);
  }

  return result;
}

unint64_t sub_1ABBC63B8()
{
  result = qword_1EB4D44D8;
  if (!qword_1EB4D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44D8);
  }

  return result;
}

unint64_t sub_1ABBC6410()
{
  result = qword_1EB4D44E0;
  if (!qword_1EB4D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44E0);
  }

  return result;
}

unint64_t sub_1ABBC6468()
{
  result = qword_1EB4D44E8;
  if (!qword_1EB4D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44E8);
  }

  return result;
}

unint64_t sub_1ABBC64C0()
{
  result = qword_1EB4D44F0;
  if (!qword_1EB4D44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44F0);
  }

  return result;
}

unint64_t sub_1ABBC6518()
{
  result = qword_1EB4D44F8;
  if (!qword_1EB4D44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D44F8);
  }

  return result;
}

unint64_t sub_1ABBC6570()
{
  result = qword_1EB4D4500;
  if (!qword_1EB4D4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4500);
  }

  return result;
}

unint64_t sub_1ABBC65C8()
{
  result = qword_1EB4D4508;
  if (!qword_1EB4D4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4508);
  }

  return result;
}

unint64_t sub_1ABBC6620()
{
  result = qword_1EB4D4510;
  if (!qword_1EB4D4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4510);
  }

  return result;
}

unint64_t sub_1ABBC6678()
{
  result = qword_1EB4D4518;
  if (!qword_1EB4D4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4518);
  }

  return result;
}

unint64_t sub_1ABBC66D0()
{
  result = qword_1EB4D4520;
  if (!qword_1EB4D4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4520);
  }

  return result;
}

unint64_t sub_1ABBC6728()
{
  result = qword_1EB4D4528;
  if (!qword_1EB4D4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4528);
  }

  return result;
}

unint64_t sub_1ABBC6780()
{
  result = qword_1EB4D4530;
  if (!qword_1EB4D4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4530);
  }

  return result;
}

unint64_t sub_1ABBC67D8()
{
  result = qword_1EB4D4538;
  if (!qword_1EB4D4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4538);
  }

  return result;
}

unint64_t sub_1ABBC6830()
{
  result = qword_1EB4D4540;
  if (!qword_1EB4D4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4540);
  }

  return result;
}

unint64_t sub_1ABBC6888()
{
  result = qword_1EB4D4548;
  if (!qword_1EB4D4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4548);
  }

  return result;
}

unint64_t sub_1ABBC68E0()
{
  result = qword_1EB4D4550;
  if (!qword_1EB4D4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4550);
  }

  return result;
}

unint64_t sub_1ABBC6938()
{
  result = qword_1EB4D4558;
  if (!qword_1EB4D4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4558);
  }

  return result;
}

unint64_t sub_1ABBC6990()
{
  result = qword_1EB4D4560;
  if (!qword_1EB4D4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4560);
  }

  return result;
}

unint64_t sub_1ABBC69E8()
{
  result = qword_1EB4D4568;
  if (!qword_1EB4D4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4568);
  }

  return result;
}

unint64_t sub_1ABBC6A40()
{
  result = qword_1EB4D4570;
  if (!qword_1EB4D4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4570);
  }

  return result;
}

unint64_t sub_1ABBC6A98()
{
  result = qword_1EB4D4578;
  if (!qword_1EB4D4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4578);
  }

  return result;
}

unint64_t sub_1ABBC6AF0()
{
  result = qword_1EB4D4580;
  if (!qword_1EB4D4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4580);
  }

  return result;
}

unint64_t sub_1ABBC6B48()
{
  result = qword_1EB4D4588;
  if (!qword_1EB4D4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4588);
  }

  return result;
}

unint64_t sub_1ABBC6BA0()
{
  result = qword_1EB4D4590;
  if (!qword_1EB4D4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4590);
  }

  return result;
}

unint64_t sub_1ABBC6BF8()
{
  result = qword_1EB4D4598;
  if (!qword_1EB4D4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4598);
  }

  return result;
}

unint64_t sub_1ABBC6C50()
{
  result = qword_1EB4D45A0;
  if (!qword_1EB4D45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45A0);
  }

  return result;
}

unint64_t sub_1ABBC6CA8()
{
  result = qword_1EB4D45A8;
  if (!qword_1EB4D45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45A8);
  }

  return result;
}

unint64_t sub_1ABBC6D00()
{
  result = qword_1EB4D45B0;
  if (!qword_1EB4D45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45B0);
  }

  return result;
}

unint64_t sub_1ABBC6D58()
{
  result = qword_1EB4D45B8;
  if (!qword_1EB4D45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45B8);
  }

  return result;
}

unint64_t sub_1ABBC6DB0()
{
  result = qword_1EB4D45C0;
  if (!qword_1EB4D45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45C0);
  }

  return result;
}

unint64_t sub_1ABBC6E08()
{
  result = qword_1EB4D45C8;
  if (!qword_1EB4D45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45C8);
  }

  return result;
}

unint64_t sub_1ABBC6E60()
{
  result = qword_1EB4D45D0;
  if (!qword_1EB4D45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45D0);
  }

  return result;
}

unint64_t sub_1ABBC6EB8()
{
  result = qword_1EB4D45D8;
  if (!qword_1EB4D45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45D8);
  }

  return result;
}

unint64_t sub_1ABBC6F0C()
{
  result = qword_1EB4D45E0;
  if (!qword_1EB4D45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45E0);
  }

  return result;
}

unint64_t sub_1ABBC6F60()
{
  result = qword_1EB4D45E8;
  if (!qword_1EB4D45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45E8);
  }

  return result;
}

unint64_t sub_1ABBC6FB4()
{
  result = qword_1EB4D45F0;
  if (!qword_1EB4D45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45F0);
  }

  return result;
}

unint64_t sub_1ABBC7008()
{
  result = qword_1EB4D45F8;
  if (!qword_1EB4D45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D45F8);
  }

  return result;
}

unint64_t sub_1ABBC705C()
{
  result = qword_1ED871280;
  if (!qword_1ED871280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871280);
  }

  return result;
}

unint64_t sub_1ABBC70B0()
{
  result = qword_1EB4D4608;
  if (!qword_1EB4D4608)
  {
    sub_1ABAE2850(&qword_1EB4D4600, &unk_1ABF44F58);
    sub_1ABBC7134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4608);
  }

  return result;
}

unint64_t sub_1ABBC7134()
{
  result = qword_1EB4D4610;
  if (!qword_1EB4D4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4610);
  }

  return result;
}

uint64_t sub_1ABBC7188(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABB32D94(v5, v7) & 1;
}

__n128 EntityResolutionRankingService.TextResolutionOptions.init(typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = a1;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 42) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  return result;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.typeFilter.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

uint64_t sub_1ABBC7378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABBC738C(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABBC738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

__n128 EntityResolutionRankingService.TextResolutionOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

void EntityResolutionRankingService.TextResolutionOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.TextResolutionOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t UnstructuredText.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UnstructuredText.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TextMention.init(span:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t TextMention.entityTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TextMention.span.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t TextMention.span.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1ABBC7670(uint64_t a1)
{
  v1 = *(a1 + 34);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1ABBC7684(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABBC76A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC76F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABBC7770(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBC77C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 EntityResolutionRankingService.ImageResolutionOptions.init(typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 34);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = a1;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 42) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  return result;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.typeFilter.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

__n128 EntityResolutionRankingService.ImageResolutionOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

void EntityResolutionRankingService.ImageResolutionOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.ImageResolutionOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1ABBC7A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBC7B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBC7C18()
{
  result = type metadata accessor for UnstructuredImage.Asset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1ABBC7C8C()
{
  type metadata accessor for CGImage(319);
  if (v0 <= 0x3F)
  {
    sub_1ABF21CF4();
    if (v1 <= 0x3F)
    {
      sub_1ABF21F04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

__n128 EntityResolutionRankingService.RankingOptions.init(rankingType:typeFilter:candidateConstraints:mode:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a3 + 32);
  v10 = *(a3 + 34);
  v11 = *a4;
  v12 = *(a4 + 8);
  *a5 = a2;
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  result = *a3;
  *(a5 + 24) = *(a3 + 16);
  *(a5 + 8) = result;
  *(a5 + 42) = v10;
  *(a5 + 40) = v9;
  *(a5 + 48) = v7;
  *(a5 + 56) = v8;
  *(a5 + 64) = v11;
  *(a5 + 72) = v12;
  return result;
}

uint64_t sub_1ABBC7DB8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1ABF24974();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1ABBC7DF8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
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

  v5 = *(a3 + 48) + 40 * result;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  LOBYTE(v5) = *(v5 + 32);
  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v5;
}

uint64_t sub_1ABBC7E94@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.__allocating_init(id:score:explanation:inferenceEventId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a5;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = 1;
  return result;
}

uint64_t sub_1ABBC7F58(uint64_t a1)
{
  v2 = v1;
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v29 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  v28 = OBJC_IVAR___GDSwiftViewService_databaseCache;
  v4 = (a1 + 40);
  if (!v3)
  {
    result = sub_1ABF24CD4();
    __break(1u);
    return result;
  }

  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v2 + v29);

    v8 = sub_1ABF23BD4();
    v32[0] = 0;
    v9 = [v7 requestAssertionForViewName:v8 error:v32];

    v10 = v32[0];
    if (v9)
    {
      break;
    }

    v19 = v32[0];
    v18 = sub_1ABF21BE4();

    swift_willThrow();
    v31 = 0;
LABEL_6:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED871B40);

    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      v25 = sub_1ABADD6D8(v5, v6, v32);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1ABA78000, v21, v22, "EntityResolutionRanking: view assertion failure for %s", v23, 0xCu);
      sub_1ABA84B54(v24);
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }

    else
    {
    }

    if (!--v3)
    {
      result = swift_willThrow();
      goto LABEL_15;
    }

    v4 += 2;
  }

  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = *(v2 + v28);
  v16 = v14[5];
  v15 = v14[6];
  sub_1ABA93E20(v14 + 2, v16);
  v30 = *(v15 + 8);
  v17 = v10;
  v30(v9, v16, v15);
  v18 = v31;
  if (v31)
  {
    swift_unknownObjectRelease();
    v31 = 0;
    v2 = v13;
    v3 = v12;
    v4 = v11;
    goto LABEL_6;
  }

  result = v9;
LABEL_15:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EntityResolutionRankingService.__allocating_init(config:viewService:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  EntityResolutionRankingService.init(config:viewService:)(v3, a2);
  return v3;
}

void *EntityResolutionRankingService.init(config:viewService:)(uint64_t a1, void *a2)
{
  v5 = sub_1ABBC7F58(&unk_1F2090D30);
  if (v3)
  {

    type metadata accessor for EntityResolutionRankingService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v2[3] = sub_1ABB948C8(v8, v9, v10);
    v2[4] = v12;
    v2[5] = a2;
    v2[6] = a2;
    v13 = objc_allocWithZone(type metadata accessor for FeedbackService());
    v14 = a2;
    v15 = [v13 init];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2[2] = v15;
  }

  return v2;
}

uint64_t sub_1ABBC84B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v9 = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  if (*(a2 + 42) != 255)
  {
    v29 = *(a2 + 64);
    v30 = *(a2 + 72);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v14 = sub_1ABF237F4();
    sub_1ABA7AA24(v14, qword_1ED871B40);
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a3;
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = v18;
      a3 = v17;
      v5 = v4;
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
    }

    v13 = v30;
    v12 = v29;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      if (*(v10 + 16) != 1)
      {
        goto LABEL_34;
      }

      v20 = sub_1ABBC7DB8(v10);
      if ((v22 & 1) == 0)
      {
        if (*(v10 + 36) == v21)
        {
          if (v20 != 1 << *(v10 + 32))
          {
            sub_1ABBC7E94(v20, v21, v10, &v31);
            if (v6[5])
            {
              result = sub_1ABE3D5AC(0, &v31);
              if (v5)
              {
                return result;
              }

              goto LABEL_21;
            }

            sub_1ABBD2A7C();
LABEL_36:
            result = sub_1ABF24CD4();
            __break(1u);
            return result;
          }

LABEL_34:
          sub_1ABBD2A7C();
          goto LABEL_36;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    if (!v10)
    {
      if (v13)
      {
        v27 = 0;
      }

      else
      {
        v27 = v12;
      }

      v25 = v6[3];
      v28 = v6[4];
      v24 = 1;
      goto LABEL_30;
    }

    v24 = 2;
  }

  else
  {
    v24 = v10 & 1;
  }

  v25 = v6[3];
  v26 = v6[4];
  if (a1)
  {
    LOBYTE(v31) = v24;
    result = sub_1ABB95CC8(a1, &v31, v25);
    if (v5)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v27 = 0;
  }

  else
  {
    v27 = v12;
  }

LABEL_30:
  LOBYTE(v31) = v24;
  result = sub_1ABB94F98(v9, v27, v13, &v31, v25);
  if (!v5)
  {
LABEL_21:
    *a3 = result;
    a3[1] = 0;
  }

  return result;
}

char *sub_1ABBC87B8(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 48))
  {
    v3 = *a2;
    v6 = *a1;
    v5 = v3;
    return sub_1ABE3E098(&v6, &v5);
  }

  else
  {
    sub_1ABBD2A7C();
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABBC883C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA933E4(sub_1ABBC8854);
}

uint64_t sub_1ABBC8854()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  sub_1ABB14958();
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBC88D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1ABA933E4(sub_1ABBC88F8);
}

void sub_1ABBC88F8()
{
  v2 = v0[2];
  if (*(v2 + 16))
  {
    v3 = (v2 + 32);
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *v3++;
      sub_1ABAA4D8C();
      v6 = swift_allocObject();
      if ((sub_1ABAA12BC(v6) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v4 = v9;
      }

      sub_1ABAA225C();
      if (v7)
      {
        sub_1ABAA5FE8();
        v4 = v10;
      }

      sub_1ABA9492C();
    }

    while (!v8);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v11 = v0[3];
  if (*(v11 + 16))
  {
    v12 = (v11 + 32);
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v13 = *v12++;
      sub_1ABAA4D8C();
      v14 = swift_allocObject();
      if ((sub_1ABAA12BC(v14) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v4 = v15;
      }

      sub_1ABAA225C();
      if (v7)
      {
        sub_1ABAA5FE8();
        v4 = v16;
      }

      sub_1ABA9492C();
    }

    while (!v8);
  }

  v17 = v0[4];
  if (*(v17 + 16))
  {
    v18 = (v17 + 32);
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v19 = *v18++;
      sub_1ABAA4D8C();
      v20 = swift_allocObject();
      if ((sub_1ABAA12BC(v20) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v4 = v21;
      }

      sub_1ABAA225C();
      if (v7)
      {
        sub_1ABAA5FE8();
        v4 = v22;
      }

      sub_1ABA9492C();
    }

    while (!v8);
  }

  v23 = v0[5];
  if (*(v23 + 16))
  {
    v24 = (v23 + 32);
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    do
    {
      v25 = *v24++;
      sub_1ABAA4D8C();
      v26 = swift_allocObject();
      if ((sub_1ABAA12BC(v26) & 1) == 0)
      {
        sub_1ABA8E1CC();
        v4 = v27;
      }

      sub_1ABAA225C();
      if (v7)
      {
        sub_1ABAA5FE8();
        v4 = v28;
      }

      sub_1ABA9492C();
    }

    while (!v8);
  }

  else
  {
    v1 = *(v4 + 16);
  }

  v29 = 0;
  v30 = v0[6];
  v31 = (v4 + 40);
  while (v1 != v29)
  {
    if (v29 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v32 = *(v31 - 1);
    v33 = *v31;
    v34 = *(v30 + 16);

    sub_1ABB14BE0();

    ++v29;
    v31 += 2;
  }

  sub_1ABA7BBE0();

  v35();
}

uint64_t EntityResolutionRankingDirectFeedback.__allocating_init(kind:)(_BYTE *a1)
{
  sub_1ABAA4D8C();
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t EntityResolutionRankingService.deinit()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t EntityResolutionRankingService.__deallocating_deinit()
{
  EntityResolutionRankingService.deinit();
  sub_1ABAB10A4();

  return swift_deallocClassInstance();
}

uint64_t static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 34);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v102[0] = *a1;
  v102[1] = v2;
  v102[2] = v5;
  v102[3] = v4;
  v103 = v6;
  v104 = v7;
  v105 = v9;
  v106 = v8;
  v107 = v11;
  v108 = v10;
  v109 = v12;
  v110 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_19;
      }

      v65 = v6;
      v92 = sub_1ABB4F410(v3, v9);
      v66 = sub_1ABA7C054();
      sub_1ABBC738C(v66, v67, v68, v69, v12, 1);
      v20 = sub_1ABA809A0();
      v24 = v65;
      v25 = 1;
      goto LABEL_18;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_19;
      }

      v46 = v6;
      v92 = sub_1ABB4F410(v3, v9);
      v47 = sub_1ABA7C054();
      sub_1ABBC738C(v47, v48, v49, v50, v12, 2);
      v20 = sub_1ABA809A0();
      v24 = v46;
      v25 = 2;
      goto LABEL_18;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v51 = *(v3 + 50);
      v52 = *(v3 + 48);
      v53 = *(v9 + 48);
      v54 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v55 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v55;
      v100 = v52;
      v101 = v51;
      v56 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v56;
      v96 = v53;
      v97 = v54;
      v57 = sub_1ABA7C054();
      v59 = v58;
      sub_1ABBC738C(v57, v60, v61, v62, v12, v63);
      v40 = sub_1ABA809A0();
      v44 = v59;
      v45 = 3;
      goto LABEL_14;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v26 = *(v3 + 50);
      v27 = *(v3 + 48);
      v28 = *(v9 + 48);
      v29 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v31 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v31;
      v100 = v27;
      v101 = v26;
      v32 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v32;
      v96 = v28;
      v97 = v29;
      v33 = sub_1ABA7C054();
      v35 = v34;
      sub_1ABBC738C(v33, v36, v37, v38, v12, v39);
      v40 = sub_1ABA809A0();
      v44 = v35;
      v45 = 4;
LABEL_14:
      sub_1ABBC738C(v40, v41, v42, v43, v44, v45);
      if ((static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(&v98, &v94) & 1) == 0)
      {
        goto LABEL_20;
      }

      v98 = v93;
      v99 = v91;
      v100 = v90;
      v101 = v89;
      v94 = v88;
      v95 = v87;
      v96 = v30;
      v97 = v86;
      v64 = static EntityResolutionRankingService.CandidateConstraint.== infix(_:_:)(&v98, &v94);
      sub_1ABBCECB8(v102);
      return v64 & 1;
    default:
      if (v13)
      {
LABEL_19:
        v71 = sub_1ABA7C054();
        v73 = v72;
        sub_1ABBC738C(v71, v74, v75, v76, v12, v77);
        v78 = sub_1ABA809A0();
        sub_1ABBC738C(v78, v79, v80, v81, v73, v7);
LABEL_20:
        sub_1ABBCECB8(v102);
        v64 = 0;
        return v64 & 1;
      }

      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1ABBC738C(v3, v2, v11, v10, v12, 0);
        v82 = sub_1ABA809A0();
        sub_1ABBC738C(v82, v83, v84, v85, v14, 0);
        sub_1ABBCECB8(v102);
        v64 = 1;
        return v64 & 1;
      }

      v92 = sub_1ABF25054();
      v16 = sub_1ABA7C054();
      sub_1ABBC738C(v16, v17, v18, v19, v12, 0);
      v20 = sub_1ABA809A0();
      v24 = v14;
      v25 = 0;
LABEL_18:
      sub_1ABBC738C(v20, v21, v22, v23, v24, v25);
      sub_1ABBCECB8(v102);
      return v92 & 1;
  }
}

uint64_t sub_1ABBC8F84(char a1)
{
  result = 0x6964657250736168;
  switch(a1)
  {
    case 1:
      result = 0x6564756C637865;
      break;
    case 2:
      result = 0x746573627573;
      break;
    case 3:
      result = 6581857;
      break;
    case 4:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBC9010(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABA8CCD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    sub_1ABA8CCD8();
    sub_1ABA8B8B8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABBC90B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8();
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBC9138(uint64_t a1)
{
  v2 = sub_1ABBCEE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9174(uint64_t a1)
{
  v2 = sub_1ABBCEE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC91D0(uint64_t a1)
{
  v2 = sub_1ABBCED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC920C(uint64_t a1)
{
  v2 = sub_1ABBCED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC9248(uint64_t a1)
{
  v2 = sub_1ABBCEEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9284(uint64_t a1)
{
  v2 = sub_1ABBCEEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC92C0(uint64_t a1)
{
  v2 = sub_1ABBCEF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC92FC(uint64_t a1)
{
  v2 = sub_1ABBCEF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC9338(uint64_t a1)
{
  v2 = sub_1ABBCED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9374(uint64_t a1)
{
  v2 = sub_1ABBCED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC93B0(uint64_t a1)
{
  v2 = sub_1ABBCEE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC93EC(uint64_t a1)
{
  v2 = sub_1ABBCEE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingService.CandidateConstraint.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v89 = sub_1ABAD219C(&qword_1EB4D4648, &qword_1ABF452C0);
  sub_1ABA7BB64(v89);
  v87 = v27;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v85 = v31;
  v83 = sub_1ABAD219C(&qword_1EB4D4650, &qword_1ABF452C8);
  sub_1ABA7BB64(v83);
  v81 = v32;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  v79 = v36;
  v78.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4658, &qword_1ABF452D0);
  sub_1ABA7BB64(v78.n128_i64[0]);
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7FBE0();
  v77 = sub_1ABAD219C(&qword_1EB4D4660, &qword_1ABF452D8);
  sub_1ABA7BB64(v77);
  v41 = *(v40 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7FBE0();
  v43 = sub_1ABAD219C(&qword_1EB4D4668, &qword_1ABF452E0);
  sub_1ABA7BB64(v43);
  v45 = *(v44 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  v47 = sub_1ABAD219C(&qword_1EB4D4670, &unk_1ABF452E8);
  v91 = sub_1ABA7BB64(v47);
  v92 = v48;
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA8176C();
  v52 = *v20;
  v76 = *(v20 + 8);
  v75 = *(v20 + 16);
  v74 = *(v20 + 24);
  v93 = *(v20 + 32);
  v53 = *(v20 + 34);
  v54 = v26[4];
  sub_1ABA88DCC(v26, v26[3]);
  sub_1ABBCED20();
  sub_1ABF252E4();
  switch(v53->n128_u64)
  {
    case 1uLL:
      sub_1ABA8BCB4();
      sub_1ABBCEEC4();
      sub_1ABAB5680(&a12);
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABAA3C3C();
      sub_1ABBCEFC0(v70);
      v63 = v77;
      sub_1ABBD2A6C();
      sub_1ABF24F84();
      v64 = &a13;
      goto LABEL_12;
    case 2uLL:
      sub_1ABBCEE70();
      sub_1ABAB5680(&a15);
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABAA3C3C();
      sub_1ABBCEFC0(v62);
      v63 = v78.n128_u64[0];
      sub_1ABBD2A6C();
      sub_1ABF24F84();
      v64 = &a16;
LABEL_12:
      v71 = *(v64 - 32);
      v72 = sub_1ABAA383C();
      v73(v72, v63);
      v67 = sub_1ABA992D8();
      v69 = v53;
      goto LABEL_13;
    case 3uLL:
      v86 = sub_1ABAA0A78();
      v65 = v52[5].n128_u16[4];
      v66 = v52[5].n128_u8[10];
      sub_1ABBCEE1C();
      v88 = v52[2];
      v90 = v52[1];
      v59 = v79;
      sub_1ABA8AEFC();
      sub_1ABA8BAD4(v90, v88);
      sub_1ABA97F74();
      v60 = v83;
      sub_1ABAA1F14();
      sub_1ABF24F84();
      if (!v21)
      {
        sub_1ABA8A4D8(v86, v78);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v61 = v81;
      goto LABEL_10;
    case 4uLL:
      v80 = sub_1ABAA0A78();
      v57 = v52[5].n128_u16[4];
      v58 = v52[5].n128_u8[10];
      sub_1ABBCED74();
      v82 = v52[2];
      v84 = v52[1];
      v59 = v85;
      sub_1ABA8AEFC();
      sub_1ABA8BAD4(v84, v82);
      sub_1ABA97F74();
      v60 = v89;
      sub_1ABAA1F14();
      sub_1ABF24F84();
      if (!v21)
      {
        sub_1ABA8A4D8(v80, v78);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v61 = v87;
LABEL_10:
      (*(v61 + 8))(v59, v60);
      v67 = sub_1ABAA383C();
      v69 = v52;
LABEL_13:
      v68(v67, v69);
      break;
    default:
      sub_1ABBCEF18();
      sub_1ABF24EC4();
      sub_1ABAA68CC();
      sub_1ABF24F84();
      v55 = sub_1ABA8BAC4();
      v56(v55);
      (*(v92 + 8))(v22, v91);
      break;
  }

  sub_1ABA7BC90();
}

void EntityResolutionRankingService.CandidateConstraint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 34))
  {
    case 1:
      v7 = 1;
      goto LABEL_10;
    case 2:
      v7 = 2;
LABEL_10:
      MEMORY[0x1AC5AA8A0](v7);

      sub_1ABB4EC5C(a1, v2);
      return;
    case 3:
      v5 = sub_1ABA97F4C();
      v6 = 3;
      goto LABEL_8;
    case 4:
      v5 = sub_1ABA97F4C();
      v6 = 4;
LABEL_8:
      MEMORY[0x1AC5AA8A0](v6, v5);
      EntityResolutionRankingService.CandidateConstraint.hash(into:)(a1);
      EntityResolutionRankingService.CandidateConstraint.hash(into:)(a1);
      break;
    default:
      v4 = *(v1 + 8);
      MEMORY[0x1AC5AA8A0](0);

      sub_1ABF23D34();
      break;
  }
}

uint64_t EntityResolutionRankingService.CandidateConstraint.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABA7AB5C();
  EntityResolutionRankingService.CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

void EntityResolutionRankingService.CandidateConstraint.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v107 = v4;
  v100 = sub_1ABAD219C(&qword_1EB4D46B0, &qword_1ABF452F8);
  sub_1ABA7BB64(v100);
  v103 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v106 = v9;
  v10 = sub_1ABAD219C(&qword_1EB4D46B8, &qword_1ABF45300);
  v11 = sub_1ABA7BB64(v10);
  v101 = v12;
  v102 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v105 = v16;
  v17 = sub_1ABAD219C(&qword_1EB4D46C0, &qword_1ABF45308);
  v18 = sub_1ABA7BB64(v17);
  v98 = v19;
  v99 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v104 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D46C8, &qword_1ABF45310);
  v25 = sub_1ABA7BB64(v24);
  v96 = v26;
  v97 = v25;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BCE0();
  v30 = sub_1ABAD219C(&qword_1EB4D46D0, &qword_1ABF45318);
  sub_1ABA7BB64(v30);
  v95 = v31;
  v33 = *(v32 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  v37 = sub_1ABAD219C(&qword_1EB4D46D8, &unk_1ABF45320);
  sub_1ABA7BB64(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7E5C0();
  v44 = v3[3];
  v43 = v3[4];
  v108 = v3;
  sub_1ABA88DCC(v3, v44);
  sub_1ABBCED20();
  sub_1ABF252C4();
  if (!v1)
  {
    v93 = v36;
    v92 = v30;
    v94 = v37;
    v45 = v107;
    v114 = v39;
    v46 = sub_1ABF24EA4();
    sub_1ABAD4EA4(v46, 0);
    if (v48 != v47 >> 1)
    {
      sub_1ABA83F18();
      if (v51 == v52)
      {
        __break(1u);
        return;
      }

      v53 = 0;
      v91 = *(v50 + v49);
      sub_1ABAD4E90(v49 + 1);
      sub_1ABAA0554();
      if (!v36)
      {
        switch(v91)
        {
          case 1:
            sub_1ABA8BCB4();
            sub_1ABBCEEC4();
            v53 = v94;
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
            sub_1ABAA3048();
            sub_1ABBCEFC0(v64);
            v65 = v97;
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v79 = sub_1ABA992D8();
            v80(v79, v65);
            sub_1ABAA1BE0();
            v69 = v0;
            goto LABEL_15;
          case 2:
            LOBYTE(v109) = 2;
            sub_1ABBCEE70();
            sub_1ABA9A390();
            sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
            sub_1ABAA3048();
            sub_1ABBCEFC0(v63);
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v67 = sub_1ABA7E5B0();
            v68(v67);
            v69 = sub_1ABAA5290();
LABEL_15:
            v70(v69, v53);
            sub_1ABA96C54();
            v61 = v108;
            v75 = v109;
            goto LABEL_17;
          case 3:
            LOBYTE(v109) = 3;
            sub_1ABBCEE1C();
            sub_1ABA9A390();
            sub_1ABA8913C();
            v75 = swift_allocObject();
            LOBYTE(v109) = 0;
            sub_1ABBCEF6C();
            sub_1ABA974E0();
            sub_1ABF24E64();
            sub_1ABA8BCB4();
            sub_1ABA974E0();
            sub_1ABF24E64();
            v71 = v101;
            swift_unknownObjectRelease();
            v85 = *(v71 + 8);
            v86 = sub_1ABA8C744();
            v87(v86);
            v88 = sub_1ABAA5290();
            v89(v88, 0);
            sub_1ABA96C54();
            goto LABEL_16;
          case 4:
            LOBYTE(v109) = 4;
            sub_1ABBCED74();
            sub_1ABA9A390();
            v105 = v0;
            sub_1ABA8913C();
            v62 = swift_allocObject();
            LOBYTE(v109) = 0;
            sub_1ABBCEF6C();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            sub_1ABA8BCB4();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            v66 = v103;
            swift_unknownObjectRelease();
            v81 = *(v66 + 8);
            v82 = sub_1ABA8EF78();
            v83(v82);
            sub_1ABAA1BE0();
            v84(v105, 0);
            sub_1ABA96C54();
            v61 = v108;
            v75 = v62;
            goto LABEL_17;
          default:
            LOBYTE(v109) = 0;
            sub_1ABBCEF18();
            sub_1ABA9A390();
            sub_1ABAA6FE4();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v72 = sub_1ABA7E5B0();
            v73(v72);
            (*(v114 + 8))(v0, 0);
            v75 = v109;
            v74 = v110;
            v76 = v111;
            v77 = v112;
            v78 = v113;
LABEL_16:
            v61 = v108;
LABEL_17:
            *v45 = v75;
            *(v45 + 8) = v74;
            *(v45 + 16) = v76;
            *(v45 + 24) = v77;
            *(v45 + 32) = v78;
            *(v45 + 34) = v91;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1ABF24B44();
    swift_allocError();
    v55 = v54;
    v56 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v55 = &type metadata for EntityResolutionRankingService.CandidateConstraint;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    v57 = *MEMORY[0x1E69E6AF8];
    sub_1ABA8AD50();
    (*(v58 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABAA1BE0();
    v59 = sub_1ABA8C744();
    v60(v59);
  }

  v61 = v108;
LABEL_10:
  sub_1ABA84B54(v61);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCA750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABF25234();
  EntityResolutionRankingService.CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities.init(mention:entities:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities();
  v8 = (a4 + *(result + 28));
  *v8 = v5;
  v8[1] = v6;
  return result;
}

uint64_t EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities.entities.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  v5 = v3[1];
  *a2 = v4;
  a2[1] = v5;
}

uint64_t EntityResolutionRankingService.MentionedEntities.init(mentions:inferenceEventId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.typeFilter.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

__n128 EntityResolutionRankingService.RankingOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.rankingType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  v3 = *(v1 + 56);
  *(a1 + 8) = v3;
  return sub_1ABBCF04C(v2, v3);
}

uint64_t EntityResolutionRankingService.RankingOptions.rankingType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1ABBCF060(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

void EntityResolutionRankingService.RankingOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.RankingOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t EntityResolutionRankingService.RankingFilter.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

IntelligencePlatform::EntityResolutionRankingService::EntityResolutionMode_optional __swiftcall EntityResolutionRankingService.EntityResolutionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntityResolutionRankingService.EntityResolutionMode.rawValue.getter()
{
  result = 0x6E6574614C776F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6465636E616C6162;
      break;
    case 2:
      result = 0x6C61755168676968;
      break;
    case 3:
      result = 0x6553786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCABBC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABACF664();
}

uint64_t sub_1ABBCABEC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.EntityResolutionMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__allocating_init(name:value:zScore:importance:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_1ABAB10A4();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.init(name:value:zScore:importance:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t EntityResolutionRankingService.Explanation.Feature.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1ABBCAD88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726F63537ALL && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
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

uint64_t sub_1ABBCAEE0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x65726F63537ALL;
      break;
    case 3:
      result = 0x6E6174726F706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCAF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCAD88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCAF88(uint64_t a1)
{
  v2 = sub_1ABBCF074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCAFC4(uint64_t a1)
{
  v2 = sub_1ABBCF074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.Feature.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_1ABAB10A4();

  return swift_deallocClassInstance();
}

uint64_t EntityResolutionRankingService.Explanation.Feature.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = sub_1ABAD219C(&qword_1EB4D46E8, &qword_1ABF45330);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7E338();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_1ABA8C744();
  sub_1ABA88DCC(v14, v15);
  sub_1ABBCF074();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v16 = v4[2];
  v17 = v4[3];
  sub_1ABAB5848();
  sub_1ABF24F34();
  if (!v2)
  {
    v18 = v4[4];
    sub_1ABAB5848();
    sub_1ABF24F54();
    v19 = v4[5];
    sub_1ABAB5848();
    sub_1ABF24F54();
    v20 = v4[6];
    sub_1ABAB5848();
    sub_1ABF24F54();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  sub_1ABA8A294();
  EntityResolutionRankingService.Explanation.Feature.init(from:)();
  return v0;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.init(from:)()
{
  sub_1ABA7FC6C();
  sub_1ABA7D5F0();
  v15 = sub_1ABAD219C(&qword_1EB4D46F0, &qword_1ABF45338);
  sub_1ABA7BB64(v15);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  v6 = v2[4];
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABBCF074();
  sub_1ABBD2A8C();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABAA2C4C();
    v0[2] = sub_1ABF24E14();
    v0[3] = v7;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v0[4] = v8;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v0[5] = v10;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v12 = v11;
    v13 = sub_1ABAB2AF8();
    v14(v13);
    v0[6] = v12;
  }

  sub_1ABA84B54(v2);
  return sub_1ABAB50E4();
}

uint64_t sub_1ABBCB408@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.Explanation.Feature.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EntityResolutionRankingService.Explanation.__allocating_init(positiveContributions:negativeContributions:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.init(positiveContributions:negativeContributions:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t sub_1ABBCB4B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF8A440 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF8A460 == a2)
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

uint64_t sub_1ABBCB5B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBCB608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCB4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCB630(uint64_t a1)
{
  v2 = sub_1ABBCF0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCB66C(uint64_t a1)
{
  v2 = sub_1ABBCF0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EntityResolutionRankingService.Explanation.__deallocating_deinit()
{
  EntityResolutionRankingService.Explanation.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityResolutionRankingService.Explanation.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = sub_1ABAD219C(&qword_1EB4D46F8, &qword_1ABF45340);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7E338();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_1ABA8C744();
  sub_1ABA88DCC(v14, v15);
  sub_1ABBCF0C8();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v17 = *(v4 + 16);
  sub_1ABAD219C(&qword_1EB4D4700, &qword_1ABF45348);
  sub_1ABBCF11C(&unk_1EB4CE718);
  sub_1ABA892E8();
  sub_1ABAB5848();
  sub_1ABF24F84();
  if (!v2)
  {
    v18 = *(v4 + 24);
    sub_1ABA892E8();
    sub_1ABAB5848();
    sub_1ABF24F84();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t EntityResolutionRankingService.Explanation.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  v1 = sub_1ABA8A294();
  EntityResolutionRankingService.Explanation.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v0;
}

void EntityResolutionRankingService.Explanation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA7FC6C();
  sub_1ABA7D5F0();
  v19 = sub_1ABAD219C(&qword_1EB4D4708, &qword_1ABF45350);
  sub_1ABA7BB64(v19);
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8176C();
  v16 = v12[4];
  sub_1ABA88DCC(v12, v12[3]);
  sub_1ABBCF0C8();
  sub_1ABBD2A8C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D4700, &qword_1ABF45348);
    sub_1ABBCF11C(&unk_1EB4D4710);
    sub_1ABAA2C4C();
    sub_1ABF24E64();
    *(v10 + 16) = a10;
    sub_1ABAA2C4C();
    sub_1ABF24E64();
    v17 = sub_1ABA7E5B0();
    v18(v17);
    *(v10 + 24) = a10;
  }

  sub_1ABA84B54(v12);
  sub_1ABAB50E4();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCBAFC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.Explanation.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = *a1;
  *(v5 + 24) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = 1;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.explanation.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1ABBCBBD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABBCBD6C(v4);
}

uint64_t sub_1ABBCBC04()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v1[5];
    if (v4)
    {
      v5 = v1[4];
      v6 = objc_autoreleasePoolPush();
      v7 = sub_1ABF217F4();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1ABF217E4();
      type metadata accessor for EntityResolutionRankingService.Explanation();

      sub_1ABB5E998(v5, v4);
      sub_1ABBCFB88(&unk_1EB4D4720);
      sub_1ABA8EF78();
      sub_1ABF217D4();
      v10 = sub_1ABA8C53C();
      sub_1ABA96210(v10, v11);

      v3 = v14;
      objc_autoreleasePoolPop(v6);
      v12 = v1[7];
    }

    else
    {
      v3 = 0;
      v12 = 1;
    }

    v1[7] = v3;

    sub_1ABBCF1D8(v12);
  }

  sub_1ABBCF1E8(v2);
  return v3;
}

uint64_t sub_1ABBCBD6C(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_1ABBCF1D8(v2);
}

uint64_t (*sub_1ABBCBD7C(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1ABBCBC04();
  return sub_1ABBCBDC4;
}

uint64_t sub_1ABBCBDC4(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
  if (a2)
  {

    sub_1ABBCF1D8(v3);
  }

  else
  {

    return sub_1ABBCF1D8(v3);
  }
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.deinit()
{
  v1 = *(v0 + 40);

  sub_1ABBCF1D8(*(v0 + 56));
  return v0;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.__deallocating_deinit()
{
  EntityResolutionRankingService.RankedEntities.ScoredEntity.deinit();

  return swift_deallocClassInstance();
}

__n128 StructuredInput.init(data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1ABBCBEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465536E75 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465726165707061 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6165707061736964 && a2 == 0xEB00000000646572)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

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

uint64_t sub_1ABBCC06C(char a1)
{
  result = 0x7465536E75;
  switch(a1)
  {
    case 1:
      v3 = 0x726165707061;
      goto LABEL_6;
    case 2:
      v3 = 0x747065636361;
      goto LABEL_6;
    case 3:
      v3 = 0x7463656A6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 4:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCC104(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8();
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBCC170(uint64_t a1)
{
  v2 = sub_1ABBCF318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC1AC(uint64_t a1)
{
  v2 = sub_1ABBCF318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC1E8(uint64_t a1)
{
  v2 = sub_1ABBCF36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC224(uint64_t a1)
{
  v2 = sub_1ABBCF36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCBEC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCC290(uint64_t a1)
{
  v2 = sub_1ABBCF21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC2CC(uint64_t a1)
{
  v2 = sub_1ABBCF21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC308(uint64_t a1)
{
  v2 = sub_1ABBCF270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC344(uint64_t a1)
{
  v2 = sub_1ABBCF270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC380(uint64_t a1)
{
  v2 = sub_1ABBCF2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC3BC(uint64_t a1)
{
  v2 = sub_1ABBCF2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC3F8(uint64_t a1)
{
  v2 = sub_1ABBCF3C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC434(uint64_t a1)
{
  v2 = sub_1ABBCF3C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingStatefulFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v1;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D4728, &qword_1ABF45358);
  v45 = sub_1ABA7BB64(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v10 = sub_1ABAD219C(&qword_1EB4D4730, &qword_1ABF45360);
  v44 = sub_1ABA7BB64(v10);
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v14 = sub_1ABAD219C(&qword_1EB4D4738, &qword_1ABF45368);
  sub_1ABA7BB64(v14);
  v43 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v19 = sub_1ABAD219C(&qword_1EB4D4740, &qword_1ABF45370);
  v42 = sub_1ABA7BB64(v19);
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA8176C();
  v23 = sub_1ABAD219C(&qword_1EB4D4748, &qword_1ABF45378);
  sub_1ABA7BB64(v23);
  v41 = v24;
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA9F7AC();
  v28 = sub_1ABAD219C(&qword_1EB4D4750, &unk_1ABF45380);
  sub_1ABA7BB64(v28);
  v47 = v29;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7E5C0();
  v46 = *v3;
  v33 = *(v3 + 8);
  v34 = v5[4];
  sub_1ABA88DCC(v5, v5[3]);
  sub_1ABBCF21C();
  sub_1ABF252E4();
  switch(v33)
  {
    case 1:
      sub_1ABBCF36C();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&unk_1EB4D4770);
      sub_1ABA97304();
      v35 = v42;
      sub_1ABBD2A6C();
      sub_1ABF24F14();
      v39 = sub_1ABAA383C();
      goto LABEL_8;
    case 2:
      sub_1ABBCF318();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&unk_1EB4D4770);
      sub_1ABA97304();
      sub_1ABF24F14();
      v36 = *(v43 + 8);
      v37 = sub_1ABA805B4();
      v38(v37);
      (*(v47 + 8))(v0, v34);
      goto LABEL_10;
    case 3:
      sub_1ABBCF2C4();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&unk_1EB4D4770);
      sub_1ABA97304();
      v35 = v44;
      sub_1ABAA043C();
      goto LABEL_6;
    case 4:
      sub_1ABBCF270();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&unk_1EB4D4770);
      sub_1ABA97304();
      v35 = v45;
      sub_1ABAA043C();
LABEL_6:
      v39 = sub_1ABA992D8();
LABEL_8:
      v40(v39, v35);
      break;
    default:
      sub_1ABBCF3C0();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&unk_1EB4D4770);
      sub_1ABA97304();
      sub_1ABF24F14();
      (*(v41 + 8))(v2, v23);
      break;
  }

  (*(v47 + 8))(v0, v34);
LABEL_10:
  sub_1ABA7BC90();
}

void EntityResolutionRankingStatefulFeedback.FeedbackKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v66 = v14;
  v65 = sub_1ABAD219C(&qword_1EB4D4798, &qword_1ABF45390);
  sub_1ABA7BB64(v65);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v18 = sub_1ABAD219C(&qword_1EB4D47A0, &qword_1ABF45398);
  sub_1ABA7BB64(v18);
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  v22 = sub_1ABAD219C(&qword_1EB4D47A8, &qword_1ABF453A0);
  sub_1ABA7BB64(v22);
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v26 = sub_1ABAD219C(&qword_1EB4D47B0, &qword_1ABF453A8);
  sub_1ABA7BB64(v26);
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BCE0();
  v30 = sub_1ABAD219C(&qword_1EB4D47B8, &qword_1ABF453B0);
  sub_1ABA7BB64(v30);
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7E338();
  v34 = sub_1ABAD219C(&qword_1EB4D47C0, &qword_1ABF453B8);
  sub_1ABA7BB64(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA9F7AC();
  v40 = v13[4];
  sub_1ABA88DCC(v13, v13[3]);
  sub_1ABBCF21C();
  sub_1ABF252C4();
  if (!v10)
  {
    v67 = v36;
    v41 = sub_1ABF24EA4();
    sub_1ABAD4EA4(v41, 0);
    if (v43 != v42 >> 1)
    {
      sub_1ABA83F18();
      if (v46 == v47)
      {
        __break(1u);
        return;
      }

      v48 = v34;
      v64 = *(v45 + v44);
      sub_1ABAD4E90(v44 + 1);
      sub_1ABAA0554();
      if (v40 == v34 >> 1)
      {
        switch(v64)
        {
          case 1:
            LOBYTE(a10) = 1;
            sub_1ABBCF36C();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&unk_1EB4D47C8);
            sub_1ABA96F98();
            sub_1ABAA2880();
            swift_unknownObjectRelease();
            v60 = sub_1ABA8BAC4();
            v61(v60);
            v62 = sub_1ABA8BCC0();
            v63(v62);
            goto LABEL_16;
          case 2:
            LOBYTE(a10) = 2;
            sub_1ABBCF318();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&unk_1EB4D47C8);
            sub_1ABF24DF4();
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            LOBYTE(a10) = 3;
            sub_1ABBCF2C4();
            sub_1ABA827AC();
            sub_1ABF24D94();
            v48 = sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&unk_1EB4D47C8);
            sub_1ABA96F98();
            sub_1ABAA2880();
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 4:
            LOBYTE(a10) = 4;
            sub_1ABBCF270();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            v48 = sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&unk_1EB4D47C8);
            sub_1ABA96F98();
            sub_1ABAA2880();
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          default:
            LOBYTE(a10) = 0;
            sub_1ABBCF3C0();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            v48 = sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&unk_1EB4D47C8);
            sub_1ABA96F98();
            sub_1ABAA2880();
            sub_1ABA8C750();
            swift_unknownObjectRelease();
LABEL_15:
            v55 = sub_1ABA8BAC4();
            v56(v55);
            v57 = *(v48 + 8);
            v58 = sub_1ABA805B4();
            v59(v58);
LABEL_16:
            v54 = v13;
            *v66 = a10;
            *(v66 + 8) = v64;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1ABF24B44();
    swift_allocError();
    v50 = v49;
    v51 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v50 = &type metadata for EntityResolutionRankingStatefulFeedback.FeedbackKind;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    v52 = *MEMORY[0x1E69E6AF8];
    sub_1ABA8AD50();
    (*(v53 + 104))(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v11, v34);
  }

  v54 = v13;
LABEL_10:
  sub_1ABA84B54(v54);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRankingStatefulFeedback.__allocating_init(kind:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *(a1 + 8);
  *(result + 16) = *a1;
  *(result + 24) = v3;
  return result;
}

uint64_t EntityResolutionRankingStatefulFeedback.init(kind:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t sub_1ABBCD31C(uint64_t a1)
{
  v2 = sub_1ABBCF490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCD358(uint64_t a1)
{
  v2 = sub_1ABBCF490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingStatefulFeedback.__deallocating_deinit()
{
  sub_1ABBCF47C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBCD3F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4D47D0, &qword_1ABF453C0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_1ABA8C744();
  sub_1ABA88DCC(v14, v15);
  sub_1ABBCF490();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v16 = *(v2 + 24);
  v18 = *(v2 + 16);
  v19 = v16;
  sub_1ABBCF4E4(v18, v16);
  sub_1ABBCF4F8();
  sub_1ABF24F84();
  sub_1ABBCF47C(v18, v19);
  return (*(v6 + 8))(v11, v4);
}

uint64_t EntityResolutionRankingStatefulFeedback.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  sub_1ABA8A294();
  EntityResolutionRankingStatefulFeedback.init(from:)();
  return v0;
}

void EntityResolutionRankingStatefulFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D47E8, &qword_1ABF453C8);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  v10 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABBCF490();
  sub_1ABF252C4();
  if (v1)
  {
    type metadata accessor for EntityResolutionRankingStatefulFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABBCF570();
    sub_1ABF24E64();
    v11 = *(v6 + 8);
    v12 = sub_1ABA8C53C();
    v13(v12);
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCD718@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingStatefulFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABBCD77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465736E75 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656761676E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657250726576656ELL && a2 == 0xEE006465746E6573)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

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

uint64_t sub_1ABBCD920(char a1)
{
  result = 0x7465736E75;
  switch(a1)
  {
    case 1:
      v3 = 0x656761676E65;
      goto LABEL_6;
    case 2:
      result = 0x64657463656A6572;
      break;
    case 3:
      v3 = 0x65726F6E6769;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      result = 0x657250726576656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCD9C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBCDA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCD77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCDA3C(uint64_t a1)
{
  v2 = sub_1ABBCF5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDA78(uint64_t a1)
{
  v2 = sub_1ABBCF5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDAB4(uint64_t a1)
{
  v2 = sub_1ABBCF714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDAF0(uint64_t a1)
{
  v2 = sub_1ABBCF714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDB2C(uint64_t a1)
{
  v2 = sub_1ABBCF66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDB68(uint64_t a1)
{
  v2 = sub_1ABBCF66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDBA4(uint64_t a1)
{
  v2 = sub_1ABBCF618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDBE0(uint64_t a1)
{
  v2 = sub_1ABBCF618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDC1C(uint64_t a1)
{
  v2 = sub_1ABBCF6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDC58(uint64_t a1)
{
  v2 = sub_1ABBCF6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDC94(uint64_t a1)
{
  v2 = sub_1ABBCF768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDCD0(uint64_t a1)
{
  v2 = sub_1ABBCF768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingDirectFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D47F8, &qword_1ABF453D0);
  v6 = sub_1ABA7BB64(v5);
  v63 = v7;
  v64 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v62 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4D4800, &qword_1ABF453D8);
  v13 = sub_1ABA7BB64(v12);
  v60 = v14;
  v61 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v59 = v18;
  v19 = sub_1ABAD219C(&qword_1EB4D4808, &qword_1ABF453E0);
  v20 = sub_1ABA7BB64(v19);
  v57 = v21;
  v58 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v56 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4D4810, &qword_1ABF453E8);
  v27 = sub_1ABA7BB64(v26);
  v54 = v28;
  v55 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v53 = v32;
  v33 = sub_1ABAD219C(&qword_1EB4D4818, &qword_1ABF453F0);
  v34 = sub_1ABA7BB64(v33);
  v51 = v35;
  v52 = v34;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA9F7AC();
  v39 = sub_1ABAD219C(&qword_1EB4D4820, &qword_1ABF453F8);
  sub_1ABA7BB64(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA8176C();
  v45 = *v0;
  v46 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABBCF5C4();
  sub_1ABF252E4();
  v47 = (v41 + 8);
  switch(v45)
  {
    case 1:
      sub_1ABBCF714();
      v48 = v53;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v50 = v54;
      v49 = v55;
      goto LABEL_7;
    case 2:
      sub_1ABBCF6C0();
      v48 = v56;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v50 = v57;
      v49 = v58;
      goto LABEL_7;
    case 3:
      sub_1ABBCF66C();
      v48 = v59;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v50 = v60;
      v49 = v61;
      goto LABEL_7;
    case 4:
      sub_1ABBCF618();
      v48 = v62;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v50 = v63;
      v49 = v64;
LABEL_7:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      sub_1ABBCF768();
      sub_1ABA827AC();
      sub_1ABF24EC4();
      (*(v51 + 8))(v2, v52);
      break;
  }

  (*v47)(v1, v39);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRankingDirectFeedback.FeedbackKind.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void EntityResolutionRankingDirectFeedback.FeedbackKind.init(from:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v78 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D4858, &qword_1ABF45400);
  sub_1ABA7BB64(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v10 = sub_1ABAD219C(&qword_1EB4D4860, &qword_1ABF45408);
  v75 = sub_1ABA7BB64(v10);
  v76 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v80 = v15;
  v16 = sub_1ABAD219C(&qword_1EB4D4868, &qword_1ABF45410);
  v17 = sub_1ABA7BB64(v16);
  v73 = v18;
  v74 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  v77 = v22;
  v23 = sub_1ABAD219C(&qword_1EB4D4870, &qword_1ABF45418);
  v24 = sub_1ABA7BB64(v23);
  v71 = v25;
  v72 = v24;
  v27 = *(v26 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA8176C();
  v29 = sub_1ABAD219C(&qword_1EB4D4878, &qword_1ABF45420);
  sub_1ABA7BB64(v29);
  v70 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7E338();
  v34 = sub_1ABAD219C(&qword_1EB4D4880, &qword_1ABF45428);
  sub_1ABA7BB64(v34);
  v79 = v35;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7E5C0();
  v39 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABBCF5C4();
  sub_1ABF252C4();
  if (!v0)
  {
    v69 = v29;
    v40 = v80;
    v41 = sub_1ABF24EA4();
    sub_1ABAD4EA4(v41, 0);
    if (v43 == v42 >> 1)
    {
      v44 = v79;
    }

    else
    {
      sub_1ABA83F18();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      v68 = *(v46 + v45);
      sub_1ABAD4E90(v45 + 1);
      v50 = v49;
      v52 = v51;
      swift_unknownObjectRelease();
      if (v50 == v52 >> 1)
      {
        switch(v68)
        {
          case 1:
            sub_1ABBCF714();
            v40 = v2;
            sub_1ABA9070C();
            swift_unknownObjectRelease();
            v64 = v71;
            v62 = v72;
            goto LABEL_17;
          case 2:
            sub_1ABBCF6C0();
            v40 = v77;
            sub_1ABA9070C();
            swift_unknownObjectRelease();
            v64 = v73;
            v62 = v74;
            goto LABEL_17;
          case 3:
            sub_1ABBCF66C();
            sub_1ABA9070C();
            swift_unknownObjectRelease();
            v62 = v75;
            v64 = v76;
LABEL_17:
            v63 = *(v64 + 8);
            v61 = v40;
            goto LABEL_18;
          case 4:
            sub_1ABBCF618();
            sub_1ABA974E0();
            sub_1ABF24D94();
            swift_unknownObjectRelease();
            v61 = sub_1ABAA383C();
LABEL_18:
            v63(v61, v62);
            break;
          default:
            sub_1ABBCF768();
            sub_1ABA9070C();
            swift_unknownObjectRelease();
            (*(v70 + 8))(v1, v69);
            break;
        }

        v65 = *(v79 + 8);
        v66 = sub_1ABA8C744();
        v67(v66);
        *v78 = v68;
        sub_1ABA84B54(v4);
        goto LABEL_12;
      }

      v44 = v79;
    }

    sub_1ABF24B44();
    swift_allocError();
    v54 = v53;
    v55 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v54 = &type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    v56 = *MEMORY[0x1E69E6AF8];
    sub_1ABA8AD50();
    (*(v57 + 104))(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = *(v44 + 8);
    v59 = sub_1ABA8C744();
    v60(v59);
  }

  sub_1ABA84B54(v4);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCE854(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8();
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBCE8BC(uint64_t a1)
{
  v2 = sub_1ABBCF7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCE8F8(uint64_t a1)
{
  v2 = sub_1ABBCF7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCE950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4D4888, &qword_1ABF45430);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_1ABA8C744();
  sub_1ABA88DCC(v14, v15);
  sub_1ABBCF7BC();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v17[15] = *(v2 + 16);
  sub_1ABBCF810();
  sub_1ABF24F84();
  return (*(v6 + 8))(v11, v4);
}

uint64_t EntityResolutionRankingDirectFeedback.__allocating_init(from:)()
{
  sub_1ABAA4D8C();
  swift_allocObject();
  v1 = sub_1ABA8A294();
  EntityResolutionRankingDirectFeedback.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  return v0;
}

void EntityResolutionRankingDirectFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA7FC6C();
  v17 = sub_1ABAD219C(&qword_1EB4D48A0, &qword_1ABF45438);
  sub_1ABA7BB64(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BCE0();
  v23 = v14[4];
  sub_1ABA88DCC(v14, v14[3]);
  sub_1ABBCF7BC();
  sub_1ABF252C4();
  if (v15)
  {
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABBCF864();
    sub_1ABA827AC();
    sub_1ABF24E64();
    (*(v19 + 8))(v16, v17);
    *(v13 + 16) = a13;
  }

  sub_1ABA84B54(v14);
  sub_1ABAB50E4();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCEC44@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingDirectFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABBCECB8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4640, &qword_1ABF452B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBCED20()
{
  result = qword_1EB4D4678;
  if (!qword_1EB4D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4678);
  }

  return result;
}

unint64_t sub_1ABBCED74()
{
  result = qword_1EB4D4680;
  if (!qword_1EB4D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4680);
  }

  return result;
}

unint64_t sub_1ABBCEDC8()
{
  result = qword_1EB4D4688;
  if (!qword_1EB4D4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4688);
  }

  return result;
}

unint64_t sub_1ABBCEE1C()
{
  result = qword_1EB4D4690;
  if (!qword_1EB4D4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4690);
  }

  return result;
}

unint64_t sub_1ABBCEE70()
{
  result = qword_1EB4D4698;
  if (!qword_1EB4D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4698);
  }

  return result;
}

unint64_t sub_1ABBCEEC4()
{
  result = qword_1EB4D46A0;
  if (!qword_1EB4D46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46A0);
  }

  return result;
}

unint64_t sub_1ABBCEF18()
{
  result = qword_1EB4D46A8;
  if (!qword_1EB4D46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46A8);
  }

  return result;
}

unint64_t sub_1ABBCEF6C()
{
  result = qword_1EB4D46E0;
  if (!qword_1EB4D46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46E0);
  }

  return result;
}

unint64_t sub_1ABBCEFC0(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF04C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1ABBCF060(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1ABBCF074()
{
  result = qword_1EB4CEC28;
  if (!qword_1EB4CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC28);
  }

  return result;
}

unint64_t sub_1ABBCF0C8()
{
  result = qword_1EB4CEC40;
  if (!qword_1EB4CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC40);
  }

  return result;
}

unint64_t sub_1ABBCF11C(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D4700, &qword_1ABF45348);
    sub_1ABBCFB88(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF1D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1ABBCF1E8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1ABBCF21C()
{
  result = qword_1EB4D4758;
  if (!qword_1EB4D4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4758);
  }

  return result;
}

unint64_t sub_1ABBCF270()
{
  result = qword_1EB4D4760;
  if (!qword_1EB4D4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4760);
  }

  return result;
}

unint64_t sub_1ABBCF2C4()
{
  result = qword_1EB4D4778;
  if (!qword_1EB4D4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4778);
  }

  return result;
}

unint64_t sub_1ABBCF318()
{
  result = qword_1EB4D4780;
  if (!qword_1EB4D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4780);
  }

  return result;
}

unint64_t sub_1ABBCF36C()
{
  result = qword_1EB4D4788;
  if (!qword_1EB4D4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4788);
  }

  return result;
}

unint64_t sub_1ABBCF3C0()
{
  result = qword_1EB4D4790;
  if (!qword_1EB4D4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4790);
  }

  return result;
}

unint64_t sub_1ABBCF414(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF47C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1ABBCF490()
{
  result = qword_1EB4D47D8;
  if (!qword_1EB4D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47D8);
  }

  return result;
}

uint64_t sub_1ABBCF4E4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1ABBCF4F8()
{
  result = qword_1EB4D47E0;
  if (!qword_1EB4D47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47E0);
  }

  return result;
}

unint64_t sub_1ABBCF570()
{
  result = qword_1EB4D47F0;
  if (!qword_1EB4D47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47F0);
  }

  return result;
}

unint64_t sub_1ABBCF5C4()
{
  result = qword_1EB4D4828;
  if (!qword_1EB4D4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4828);
  }

  return result;
}

unint64_t sub_1ABBCF618()
{
  result = qword_1EB4D4830;
  if (!qword_1EB4D4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4830);
  }

  return result;
}

unint64_t sub_1ABBCF66C()
{
  result = qword_1EB4D4838;
  if (!qword_1EB4D4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4838);
  }

  return result;
}

unint64_t sub_1ABBCF6C0()
{
  result = qword_1EB4D4840;
  if (!qword_1EB4D4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4840);
  }

  return result;
}

unint64_t sub_1ABBCF714()
{
  result = qword_1EB4D4848;
  if (!qword_1EB4D4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4848);
  }

  return result;
}

unint64_t sub_1ABBCF768()
{
  result = qword_1EB4D4850;
  if (!qword_1EB4D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4850);
  }

  return result;
}

unint64_t sub_1ABBCF7BC()
{
  result = qword_1EB4D4890;
  if (!qword_1EB4D4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4890);
  }

  return result;
}

unint64_t sub_1ABBCF810()
{
  result = qword_1EB4D4898;
  if (!qword_1EB4D4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4898);
  }

  return result;
}

unint64_t sub_1ABBCF864()
{
  result = qword_1EB4D48A8;
  if (!qword_1EB4D48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48A8);
  }

  return result;
}

unint64_t sub_1ABBCF8BC()
{
  result = qword_1EB4D48B0;
  if (!qword_1EB4D48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48B0);
  }

  return result;
}

unint64_t sub_1ABBCF914()
{
  result = qword_1EB4D48B8;
  if (!qword_1EB4D48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48B8);
  }

  return result;
}

unint64_t sub_1ABBCF96C()
{
  result = qword_1EB4D48C0;
  if (!qword_1EB4D48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48C0);
  }

  return result;
}

unint64_t sub_1ABBCF9C4()
{
  result = qword_1EB4D48C8;
  if (!qword_1EB4D48C8)
  {
    sub_1ABAE2850(&qword_1EB4D48D0, &qword_1ABF45620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48C8);
  }

  return result;
}

unint64_t sub_1ABBCFA28(uint64_t a1)
{
  *(a1 + 8) = sub_1ABBCFB88(&unk_1EB4D48D8);
  result = sub_1ABBCFB88(&qword_1EB4D2B98);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABBCFAB0()
{
  result = qword_1EB4D48E0;
  if (!qword_1EB4D48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48E0);
  }

  return result;
}

unint64_t sub_1ABBCFB04(uint64_t a1)
{
  *(a1 + 8) = sub_1ABBCFB88(&unk_1EB4D48E8);
  result = sub_1ABBCFB88(&qword_1EB4D2B90);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABBCFB88(uint64_t a1)
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

uint64_t sub_1ABBCFBC8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of EntityResolutionRankingService.resolveEntitiesInStructuredData(_:options:)(uint64_t a1, uint64_t a2)
{
  sub_1ABA7D5F0();
  v5 = *(v4 + 120);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = sub_1ABA8864C(v7);
  *v8 = v9;
  sub_1ABAB52DC(v8);

  return v11(a1, a2);
}

uint64_t dispatch thunk of EntityResolutionRankingService.recordStatefulFeedback(_:)(uint64_t a1)
{
  sub_1ABA7D5F0();
  v3 = *(v2 + 144);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = sub_1ABA8864C(v5);
  *v6 = v7;
  sub_1ABAB52DC(v6);

  return v9(a1);
}

uint64_t dispatch thunk of EntityResolutionRankingService.recordDirectFeedback(engaged:rejected:ignored:neverPresented:)()
{
  sub_1ABA88C5C();
  sub_1ABA7D5F0();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  sub_1ABAB52DC(v4);
  v6 = sub_1ABA805B4();

  return v8(v6);
}

uint64_t sub_1ABBD00C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_1ABA7BBE0();

  return v2();
}

void sub_1ABBD01BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1ABBD057C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABBD0244(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABBD0388(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1ABBD057C()
{
  if (!qword_1EB4D4970[0])
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB4D4970);
    }
  }
}

uint64_t sub_1ABBD05EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABBD0640(uint64_t a1)
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

uint64_t sub_1ABBD06B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABBD07F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABBD09C4(uint64_t a1)
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

uint64_t sub_1ABBD09E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBD0A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}