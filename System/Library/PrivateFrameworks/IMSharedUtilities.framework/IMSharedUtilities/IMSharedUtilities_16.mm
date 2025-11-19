uint64_t sub_1A880FD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A881257C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A880FD90(uint64_t a1)
{
  v2 = sub_1A88163D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A880FDCC(uint64_t a1)
{
  v2 = sub_1A88163D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A880FE08()
{
  v0 = qword_1EB306B48;

  return v0;
}

void sub_1A880FE40(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = sub_1A88C82A8();
  if (v3)
  {
    v7 = sub_1A88C82A8();
  }

  else
  {
    v7 = 0;
  }

  sub_1A8757B60(v5);
  v8 = sub_1A88C85E8();

  [a1 service:v6 chat:v7 style:v4 messagesUpdated:v8];
}

double sub_1A880FF18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A88126F4(a1, v6);
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

uint64_t sub_1A880FF74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_1A870CCE0(&qword_1EB306C18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A8812BF0();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C9278();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1A870CCE0(&qword_1EB306778);
    sub_1A85FB520(&qword_1EB306790, &qword_1EB306778);
    sub_1A88C92C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A8810144()
{
  if (*v0)
  {
    return 0x69747265706F7270;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A8810190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001A8917A40 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEE00617461447365)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A8810280(uint64_t a1)
{
  v2 = sub_1A8812BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88102BC(uint64_t a1)
{
  v2 = sub_1A8812BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88102F8()
{
  v0 = qword_1EB306B58;

  return v0;
}

void sub_1A8810330(void *a1)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C8188();
  [a1 chat:v2 propertiesUpdated:v3];
}

uint64_t sub_1A88103C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A88129B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A8810444(uint64_t a1)
{
  result = sub_1A881046C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A881046C()
{
  result = qword_1EB306BF8;
  if (!qword_1EB306BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306BF8);
  }

  return result;
}

unint64_t sub_1A88104C0(uint64_t a1)
{
  result = sub_1A88104E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88104E8()
{
  result = qword_1EB306C00;
  if (!qword_1EB306C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C00);
  }

  return result;
}

void sub_1A881053C(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  if (!v4)
  {
    v4 = *(v1 + 40);
  }

  v5 = sub_1A88C82A8();
  if (*(v1 + 24))
  {
    v6 = sub_1A88C82A8();
    if (v4)
    {
LABEL_5:
      v7 = sub_1A88C8188();

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_8:
  v8 = sub_1A88C82A8();
  if (*(v1 + 80))
  {
    v9 = sub_1A88C82A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 account:v5 chat:v6 style:v3 chatProperties:v7 groupID:v8 chatPersonCentricID:*(v1 + 88) messageSent:?];
}

uint64_t sub_1A8810684(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB306D60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88161B4();
  sub_1A88C95C8();
  LOBYTE(v13) = 0;
  sub_1A88C9278();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_1A88C91C8();
  LOBYTE(v13) = 2;
  sub_1A88C92F8();
  v10 = v3[5];
  v14 = 3;
  if (v10)
  {
    v13 = v10;

    sub_1A870CCE0(&qword_1EB304660);
    sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
    sub_1A88C9228();
  }

  v11 = v3[6];
  v14 = 4;
  if (v11)
  {
    v13 = v11;

    sub_1A870CCE0(&qword_1EB3030B0);
    sub_1A85FB520(&qword_1EB3030D8, &qword_1EB3030B0);
    sub_1A88C9228();
  }

  LOBYTE(v13) = 5;
  sub_1A88C9278();
  LOBYTE(v13) = 6;
  sub_1A88C91C8();
  v13 = v3[11];
  v14 = 7;
  sub_1A870CCE0(&qword_1EB3039F0);
  sub_1A85FB520(&qword_1EB303A08, &qword_1EB3039F0);
  sub_1A88C92C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8810A68()
{
  v1 = *v0;
  v2 = 0x55746E756F636361;
  v3 = 0x65436E6F73726570;
  if (v1 != 6)
  {
    v3 = 0x536567617373656DLL;
  }

  v4 = 0x706F725074616863;
  if (v1 != 4)
  {
    v4 = 0x444970756F7267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C79745374616863;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6E65644974616863;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8810BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8813A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8810BD0(uint64_t a1)
{
  v2 = sub_1A88161B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8810C0C(uint64_t a1)
{
  v2 = sub_1A88161B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8810C48()
{
  v0 = qword_1EB306B68;

  return v0;
}

double sub_1A8810C84@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A8813D20(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1A8810CE8(uint64_t a1)
{
  v2 = sub_1A88147B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8810D24(uint64_t a1)
{
  v2 = sub_1A88147B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8810D60()
{
  v0 = qword_1EB306B78;

  return v0;
}

uint64_t sub_1A8810E08(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_1A870CCE0(a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  sub_1A870C278(a1, a1[3]);
  a4();
  sub_1A88C95C8();
  v21 = 0;
  v12 = v14[0];
  sub_1A88C9278();
  if (!v12)
  {
    v20 = 1;
    sub_1A88C91C8();
    v19 = *(v6 + 32);
    v18 = 2;
    type metadata accessor for IMChatStyle(0);
    sub_1A87B9570(&qword_1EB305B10);
    sub_1A88C92C8();
    v14[1] = *(v6 + 40);
    v17 = 3;
    sub_1A870CCE0(&qword_1EB3039F0);
    sub_1A85FB520(&qword_1EB303A08, &qword_1EB3039F0);
    sub_1A88C92C8();
    v16 = 4;
    sub_1A88C9298();
    v15 = 5;
    sub_1A88C9288();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A88110DC()
{
  v1 = *v0;
  v2 = 0x55746E756F636361;
  v3 = 0xD000000000000011;
  v4 = 0x656D6954646E6573;
  if (v1 != 4)
  {
    v4 = 0x63696C7065527369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65644974616863;
  if (v1 != 1)
  {
    v5 = 0x6C79745374616863;
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

uint64_t sub_1A88111C4(uint64_t a1)
{
  v2 = sub_1A8816270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8811200(uint64_t a1)
{
  v2 = sub_1A8816270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A881123C()
{
  v0 = qword_1EB306B88;

  return v0;
}

double sub_1A88112A0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1A8811334(uint64_t a1)
{
  v2 = sub_1A88153C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8811370(uint64_t a1)
{
  v2 = sub_1A88153C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88113AC()
{
  v0 = qword_1EB306B98;

  return v0;
}

uint64_t sub_1A881146C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_1A870CCE0(a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  sub_1A870C278(a1, a1[3]);
  a4();
  sub_1A88C95C8();
  v19 = 0;
  v12 = v14[0];
  sub_1A88C9278();
  if (!v12)
  {
    v18 = 1;
    sub_1A88C91C8();
    v17 = *(v6 + 32);
    v16 = 2;
    type metadata accessor for IMChatStyle(0);
    sub_1A87B9570(&qword_1EB305B10);
    sub_1A88C92C8();
    v14[1] = *(v6 + 40);
    v15 = 3;
    sub_1A870CCE0(&qword_1EB303090);
    sub_1A85FB520(&qword_1EB3030D0, &qword_1EB303090);
    sub_1A88C92C8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A88116FC(uint64_t a1)
{
  v2 = sub_1A881632C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8811738(uint64_t a1)
{
  v2 = sub_1A881632C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8811774()
{
  v0 = qword_1EB306BA8;

  return v0;
}

double sub_1A88117F0@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, _OWORD *a4@<X8>)
{
  sub_1A881503C(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    a4[1] = v7;
    result = *&v9;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_1A8811888(uint64_t a1)
{
  v2 = sub_1A881536C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88118C4(uint64_t a1)
{
  v2 = sub_1A881536C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8811900()
{
  v0 = qword_1EB306BB8;

  return v0;
}

uint64_t sub_1A88119C0(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_1A870CCE0(a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  sub_1A870C278(a1, a1[3]);
  a4();
  sub_1A88C95C8();
  v19 = 0;
  v12 = v14[0];
  sub_1A88C9278();
  if (!v12)
  {
    v18 = 1;
    sub_1A88C91C8();
    v17 = *(v6 + 32);
    v16 = 2;
    type metadata accessor for IMChatStyle(0);
    sub_1A87B9570(&qword_1EB305B10);
    sub_1A88C92C8();
    v14[1] = *(v6 + 40);
    v15 = 3;
    sub_1A870CCE0(&qword_1EB306940);
    sub_1A85FB520(&qword_1EB306968, &qword_1EB306940);
    sub_1A88C92C8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A8811C50(uint64_t a1)
{
  v2 = sub_1A8816380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8811C8C(uint64_t a1)
{
  v2 = sub_1A8816380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8811CC8()
{
  v0 = qword_1EB306BC8;

  return v0;
}

void sub_1A8811D00(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A88C82A8();
  if (v3)
  {
    v6 = sub_1A88C82A8();
  }

  else
  {
    v6 = 0;
  }

  sub_1A870CCE0(&qword_1EB303320);
  v7 = sub_1A88C85E8();
  [a1 account:v5 chat:v6 style:v4 messagesUpdated:v7];
}

double sub_1A8811E18@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, _OWORD *a4@<X8>)
{
  sub_1A8815598(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    a4[1] = v7;
    result = *&v9;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_1A8811EB0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306D48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A870C278(a1, a1[3]);
  sub_1A88160F8();
  sub_1A88C95C8();
  v8[15] = 0;
  sub_1A88C9278();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1A88C91C8();
  v8[13] = 2;
  sub_1A88C9278();
  v8[12] = 3;
  sub_1A88C9278();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A8812070()
{
  v1 = 0x65436E6F73726570;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x7265646E6573;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1A8812100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88158C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8812128(uint64_t a1)
{
  v2 = sub_1A88160F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8812164(uint64_t a1)
{
  v2 = sub_1A88160F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88121A0()
{
  v0 = qword_1EB306BD8;

  return v0;
}

double sub_1A88121D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A8815A40(a1, v7);
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

uint64_t sub_1A8812234(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306D30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A870C278(a1, a1[3]);
  sub_1A88160A4();
  sub_1A88C95C8();
  v8[15] = 0;
  sub_1A88C9278();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1A88C91C8();
  v8[13] = 2;
  sub_1A88C9278();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A88123D4()
{
  v1 = 0x65436E6F73726570;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A8812448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8815D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8812470(uint64_t a1)
{
  v2 = sub_1A88160A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88124AC(uint64_t a1)
{
  v2 = sub_1A88160A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88124E8()
{
  v0 = qword_1EB306BE8;

  return v0;
}

double sub_1A8812520@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A8815E64(a1, v6);
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

uint64_t sub_1A881257C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEC00000061746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A88126F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306DB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88163D4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v26 = 0;
  v9 = sub_1A88C9108();
  v11 = v10;
  v20 = v9;
  v25 = 1;
  v12 = sub_1A88C9058();
  v14 = v13;
  v19 = v12;
  v24 = 2;
  v22 = sub_1A88C9188();
  sub_1A870CCE0(&qword_1EB306940);
  v23 = 3;
  sub_1A85FB520(&qword_1EB306948, &qword_1EB306940);
  sub_1A88C9158();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = sub_1A85F1084(a1);
  v17 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v22;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1A88129B8(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306C08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A8812BF0();
  sub_1A88C95A8();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1A88C9108();
    sub_1A870CCE0(&qword_1EB306778);
    v9[30] = 1;
    sub_1A85FB520(&qword_1EB306780, &qword_1EB306778);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A8812BF0()
{
  result = qword_1EB306C10;
  if (!qword_1EB306C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C10);
  }

  return result;
}

__n128 sub_1A8812C44(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A8812CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A8812D08(uint64_t result, int a2, int a3)
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

unint64_t sub_1A8812DAC()
{
  result = qword_1EB306C20;
  if (!qword_1EB306C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C20);
  }

  return result;
}

unint64_t sub_1A8812E2C(uint64_t a1)
{
  result = sub_1A8812E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8812E54()
{
  result = qword_1EB306C28;
  if (!qword_1EB306C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C28);
  }

  return result;
}

unint64_t sub_1A8812ED4(uint64_t a1)
{
  result = sub_1A8812EFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8812EFC()
{
  result = qword_1EB306C30;
  if (!qword_1EB306C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C30);
  }

  return result;
}

unint64_t sub_1A8812F7C(uint64_t a1)
{
  result = sub_1A8812FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8812FA4()
{
  result = qword_1EB306C38;
  if (!qword_1EB306C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C38);
  }

  return result;
}

unint64_t sub_1A8813024(uint64_t a1)
{
  result = sub_1A881304C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A881304C()
{
  result = qword_1EB306C40;
  if (!qword_1EB306C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C40);
  }

  return result;
}

unint64_t sub_1A88130CC(uint64_t a1)
{
  result = sub_1A88130F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88130F4()
{
  result = qword_1EB306C48;
  if (!qword_1EB306C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C48);
  }

  return result;
}

unint64_t sub_1A8813174(uint64_t a1)
{
  result = sub_1A881319C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A881319C()
{
  result = qword_1EB306C50;
  if (!qword_1EB306C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C50);
  }

  return result;
}

unint64_t sub_1A881321C(uint64_t a1)
{
  result = sub_1A8813244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813244()
{
  result = qword_1EB306C58;
  if (!qword_1EB306C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C58);
  }

  return result;
}

unint64_t sub_1A88132C4(uint64_t a1)
{
  result = sub_1A88132EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88132EC()
{
  result = qword_1EB306C60;
  if (!qword_1EB306C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C60);
  }

  return result;
}

unint64_t sub_1A881336C(uint64_t a1)
{
  result = sub_1A8813394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813394()
{
  result = qword_1EB306C68;
  if (!qword_1EB306C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C68);
  }

  return result;
}

uint64_t sub_1A8813414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8813450(uint64_t a1)
{
  result = sub_1A8813478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813478()
{
  result = qword_1EB306C70;
  if (!qword_1EB306C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C70);
  }

  return result;
}

unint64_t sub_1A88134CC(uint64_t a1)
{
  result = sub_1A88134F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88134F4()
{
  result = qword_1EB306C78;
  if (!qword_1EB306C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C78);
  }

  return result;
}

unint64_t sub_1A8813548(uint64_t a1)
{
  result = sub_1A8813570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813570()
{
  result = qword_1EB306C80;
  if (!qword_1EB306C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C80);
  }

  return result;
}

unint64_t sub_1A88135C4(uint64_t a1)
{
  result = sub_1A88135EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88135EC()
{
  result = qword_1EB306C88;
  if (!qword_1EB306C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C88);
  }

  return result;
}

unint64_t sub_1A8813640(uint64_t a1)
{
  result = sub_1A8813668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813668()
{
  result = qword_1EB306C90;
  if (!qword_1EB306C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C90);
  }

  return result;
}

unint64_t sub_1A88136BC(uint64_t a1)
{
  result = sub_1A88136E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88136E4()
{
  result = qword_1EB306C98;
  if (!qword_1EB306C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306C98);
  }

  return result;
}

unint64_t sub_1A8813738(uint64_t a1)
{
  result = sub_1A8813760();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813760()
{
  result = qword_1EB306CA0;
  if (!qword_1EB306CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CA0);
  }

  return result;
}

unint64_t sub_1A88137B4(uint64_t a1)
{
  result = sub_1A88137DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88137DC()
{
  result = qword_1EB306CA8;
  if (!qword_1EB306CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CA8);
  }

  return result;
}

unint64_t sub_1A8813830(uint64_t a1)
{
  result = sub_1A8813858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813858()
{
  result = qword_1EB306CB0;
  if (!qword_1EB306CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CB0);
  }

  return result;
}

unint64_t sub_1A88138AC(uint64_t a1)
{
  result = sub_1A88138D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88138D4()
{
  result = qword_1EB306CB8;
  if (!qword_1EB306CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CB8);
  }

  return result;
}

unint64_t sub_1A8813928(uint64_t a1)
{
  result = sub_1A8813950();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8813950()
{
  result = qword_1EB306CC0;
  if (!qword_1EB306CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CC0);
  }

  return result;
}

unint64_t sub_1A88139A8()
{
  result = qword_1EB306CC8;
  if (!qword_1EB306CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CC8);
  }

  return result;
}

unint64_t sub_1A8813A00()
{
  result = qword_1EB306CD0;
  if (!qword_1EB306CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CD0);
  }

  return result;
}

uint64_t sub_1A8813A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x706F725074616863 && a2 == 0xEE00736569747265 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x536567617373656DLL && a2 == 0xEF61746144746E65)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A8813D20@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88161B4();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v10 = sub_1A88C9108();
    v38 = v11;
    LOBYTE(v45[0]) = 1;
    v12 = sub_1A88C9058();
    *(&v37 + 1) = v13;
    LOBYTE(v45[0]) = 2;
    v36 = sub_1A88C9188();
    *&v37 = v12;
    v35 = a2;
    sub_1A870CCE0(&qword_1EB304660);
    LOBYTE(v39) = 3;
    sub_1A85FB520(&qword_1EB304668, &qword_1EB304660);
    sub_1A88C90B8();
    v14 = v45[0];
    if (v45[0] == 1)
    {
      v14 = 0;
    }

    v34 = v14;
    sub_1A870CCE0(&qword_1EB3030B0);
    LOBYTE(v39) = 4;
    sub_1A85FB520(&qword_1EB3030B8, &qword_1EB3030B0);
    sub_1A88C90B8();
    v15 = v45[0];
    if (v45[0] == 1)
    {
      v15 = 0;
    }

    v33 = v15;
    LOBYTE(v45[0]) = 5;
    v16 = sub_1A88C9108();
    v18 = v17;
    v32 = v16;
    LOBYTE(v45[0]) = 6;
    v19 = sub_1A88C9058();
    v21 = v20;
    v31 = v19;
    sub_1A870CCE0(&qword_1EB3039F0);
    v54 = 7;
    sub_1A85FB520(&qword_1EB3039F8, &qword_1EB3039F0);
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    v30 = v55;
    *&v39 = v10;
    v22 = v38;
    *(&v39 + 1) = v38;
    v40 = v37;
    v23 = *(&v37 + 1);
    LOBYTE(v41) = v36;
    v24 = v34;
    v25 = v33;
    *(&v41 + 1) = v34;
    *&v42 = v33;
    *(&v42 + 1) = v32;
    *&v43 = v18;
    *(&v43 + 1) = v31;
    *&v44 = v21;
    *(&v44 + 1) = v55;
    sub_1A8816208(&v39, v45);
    sub_1A85F1084(a1);
    v45[0] = v10;
    v45[1] = v22;
    v45[2] = v37;
    v45[3] = v23;
    v46 = v36;
    v47 = v24;
    v48 = v25;
    v49 = v32;
    v50 = v18;
    v51 = v31;
    v52 = v21;
    v53 = v30;
    result = sub_1A8816240(v45);
    v26 = v42;
    v27 = v35;
    v35[2] = v41;
    v27[3] = v26;
    v28 = v44;
    v27[4] = v43;
    v27[5] = v28;
    v29 = v40;
    *v27 = v39;
    v27[1] = v29;
  }

  return result;
}

void sub_1A8814398(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306CD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88147B8();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v9 = sub_1A88C9108();
    v11 = v10;
    v28 = v9;
    LOBYTE(v32[0]) = 1;
    v12 = sub_1A88C9058();
    v14 = v13;
    v27 = v12;
    type metadata accessor for IMChatStyle(0);
    LOBYTE(v29) = 2;
    sub_1A87B9570(&qword_1EB305B00);
    sub_1A88C9158();
    v26 = LOBYTE(v32[0]);
    sub_1A870CCE0(&qword_1EB3039F0);
    LOBYTE(v29) = 3;
    sub_1A85FB520(&qword_1EB3039F8, &qword_1EB3039F0);
    sub_1A88C9158();
    v25 = v32[0];
    LOBYTE(v32[0]) = 4;
    sub_1A88C9128();
    v16 = v15;
    v38 = 5;
    v17 = sub_1A88C9118();
    (*(v6 + 8))(v8, v5);
    v24 = v17 & 1;
    v19 = v27;
    v18 = v28;
    *&v29 = v28;
    *(&v29 + 1) = v11;
    *&v30 = v27;
    *(&v30 + 1) = v14;
    v20 = v26;
    v31[0] = v26;
    *&v31[1] = v39[0];
    *&v31[4] = *(v39 + 3);
    v21 = v25;
    *&v31[8] = v25;
    *&v31[16] = v16;
    v31[24] = v24;
    sub_1A881480C(&v29, v32);
    sub_1A85F1084(a1);
    v32[0] = v18;
    v32[1] = v11;
    v32[2] = v19;
    v32[3] = v14;
    v33 = v20;
    *v34 = v39[0];
    *&v34[3] = *(v39 + 3);
    v35 = v21;
    v36 = v16;
    v37 = v24;
    sub_1A8814844(v32);
    v22 = v30;
    *a2 = v29;
    a2[1] = v22;
    a2[2] = *v31;
    *(a2 + 41) = *&v31[9];
  }
}

unint64_t sub_1A88147B8()
{
  result = qword_1EB306CE0;
  if (!qword_1EB306CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CE0);
  }

  return result;
}

uint64_t sub_1A8814874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891D5A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E6573 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C7065527369 && a2 == 0xED0000676E697461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1A8814A98(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306D68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8816270();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v9 = sub_1A88C9108();
    v11 = v10;
    v28 = v9;
    LOBYTE(v32[0]) = 1;
    v12 = sub_1A88C9058();
    v14 = v13;
    v27 = v12;
    type metadata accessor for IMChatStyle(0);
    LOBYTE(v29) = 2;
    sub_1A87B9570(&qword_1EB305B00);
    sub_1A88C9158();
    v26 = LOBYTE(v32[0]);
    sub_1A870CCE0(&qword_1EB3039F0);
    LOBYTE(v29) = 3;
    sub_1A85FB520(&qword_1EB3039F8, &qword_1EB3039F0);
    sub_1A88C9158();
    v25 = v32[0];
    LOBYTE(v32[0]) = 4;
    sub_1A88C9128();
    v16 = v15;
    v38 = 5;
    v17 = sub_1A88C9118();
    (*(v6 + 8))(v8, v5);
    v24 = v17 & 1;
    v19 = v27;
    v18 = v28;
    *&v29 = v28;
    *(&v29 + 1) = v11;
    *&v30 = v27;
    *(&v30 + 1) = v14;
    v20 = v26;
    v31[0] = v26;
    *&v31[1] = v39[0];
    *&v31[4] = *(v39 + 3);
    v21 = v25;
    *&v31[8] = v25;
    *&v31[16] = v16;
    v31[24] = v24;
    sub_1A88162C4(&v29, v32);
    sub_1A85F1084(a1);
    v32[0] = v18;
    v32[1] = v11;
    v32[2] = v19;
    v32[3] = v14;
    v33 = v20;
    *v34 = v39[0];
    *&v34[3] = *(v39 + 3);
    v35 = v21;
    v36 = v16;
    v37 = v24;
    sub_1A88162FC(v32);
    v22 = v30;
    *a2 = v29;
    a2[1] = v22;
    a2[2] = *v31;
    *(a2 + 41) = *&v31[9];
  }
}

uint64_t sub_1A8814EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x556567617373656DLL && a2 == 0xEE00646574616470)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A881503C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = sub_1A870CCE0(a2);
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v20 - v8;
  sub_1A870C278(a1, a1[3]);
  a3();
  sub_1A88C95A8();
  if (v4)
  {
    return sub_1A85F1084(a1);
  }

  v10 = v7;
  v32 = 0;
  v12 = v25;
  v11 = v26;
  v13 = sub_1A88C9108();
  v15 = v14;
  v24 = v13;
  v31 = 1;
  v22 = sub_1A88C9058();
  v23 = v16;
  type metadata accessor for IMChatStyle(0);
  v29 = 2;
  sub_1A87B9570(&qword_1EB305B00);
  sub_1A88C9158();
  v21 = v30;
  sub_1A870CCE0(&qword_1EB303090);
  v28 = 3;
  sub_1A85FB520(&qword_1EB3030C0, &qword_1EB303090);
  sub_1A88C9158();
  (*(v10 + 8))(v9, v11);
  v17 = v27;
  result = sub_1A85F1084(a1);
  *v12 = v24;
  *(v12 + 8) = v15;
  v19 = v23;
  *(v12 + 16) = v22;
  *(v12 + 24) = v19;
  *(v12 + 32) = v21;
  *(v12 + 40) = v17;
  return result;
}

unint64_t sub_1A881536C()
{
  result = qword_1EB306CF8;
  if (!qword_1EB306CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306CF8);
  }

  return result;
}

unint64_t sub_1A88153C0()
{
  result = qword_1EB306D10;
  if (!qword_1EB306D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D10);
  }

  return result;
}

uint64_t sub_1A8815414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEF64657461647055)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A8815598@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = sub_1A870CCE0(a2);
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v20 - v8;
  sub_1A870C278(a1, a1[3]);
  a3();
  sub_1A88C95A8();
  if (v4)
  {
    return sub_1A85F1084(a1);
  }

  v10 = v7;
  v32 = 0;
  v12 = v25;
  v11 = v26;
  v13 = sub_1A88C9108();
  v15 = v14;
  v24 = v13;
  v31 = 1;
  v22 = sub_1A88C9058();
  v23 = v16;
  type metadata accessor for IMChatStyle(0);
  v29 = 2;
  sub_1A87B9570(&qword_1EB305B00);
  sub_1A88C9158();
  v21 = v30;
  sub_1A870CCE0(&qword_1EB306940);
  v28 = 3;
  sub_1A85FB520(&qword_1EB306948, &qword_1EB306940);
  sub_1A88C9158();
  (*(v10 + 8))(v9, v11);
  v17 = v27;
  result = sub_1A85F1084(a1);
  *v12 = v24;
  *(v12 + 8) = v15;
  v19 = v23;
  *(v12 + 16) = v22;
  *(v12 + 24) = v19;
  *(v12 + 32) = v21;
  *(v12 + 40) = v17;
  return result;
}

uint64_t sub_1A88158C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001A8917A40 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A8815A40@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306D38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88160F8();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1A88C9108();
  v11 = v10;
  LOBYTE(v32[0]) = 1;
  v25 = sub_1A88C9058();
  v27 = v12;
  LOBYTE(v32[0]) = 2;
  v24 = sub_1A88C9108();
  v26 = v13;
  v33 = 3;
  v14 = sub_1A88C9108();
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  *&v28 = v9;
  *(&v28 + 1) = v11;
  v18 = v25;
  v19 = v27;
  *&v29 = v25;
  *(&v29 + 1) = v27;
  *&v30 = v24;
  *(&v30 + 1) = v26;
  *&v31 = v14;
  *(&v31 + 1) = v17;
  sub_1A881614C(&v28, v32);
  sub_1A85F1084(a1);
  v32[0] = v9;
  v32[1] = v11;
  v32[2] = v18;
  v32[3] = v19;
  v32[4] = v24;
  v32[5] = v26;
  v32[6] = v14;
  v32[7] = v17;
  result = sub_1A8816184(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_1A8815D34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001A8917A40 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8815E64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306D20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88160A4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v25 = 0;
  v9 = sub_1A88C9108();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_1A88C9058();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_1A88C9108();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_1A85F1084(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_1A88160A4()
{
  result = qword_1EB306D28;
  if (!qword_1EB306D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D28);
  }

  return result;
}

unint64_t sub_1A88160F8()
{
  result = qword_1EB306D40;
  if (!qword_1EB306D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D40);
  }

  return result;
}

unint64_t sub_1A88161B4()
{
  result = qword_1EB306D58;
  if (!qword_1EB306D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D58);
  }

  return result;
}

unint64_t sub_1A8816270()
{
  result = qword_1EB306D70;
  if (!qword_1EB306D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D70);
  }

  return result;
}

unint64_t sub_1A881632C()
{
  result = qword_1EB306D88;
  if (!qword_1EB306D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306D88);
  }

  return result;
}

unint64_t sub_1A8816380()
{
  result = qword_1EB306DA0;
  if (!qword_1EB306DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DA0);
  }

  return result;
}

unint64_t sub_1A88163D4()
{
  result = qword_1EB306DB8;
  if (!qword_1EB306DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DB8);
  }

  return result;
}

unint64_t sub_1A88164CC()
{
  result = qword_1EB306DC8;
  if (!qword_1EB306DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DC8);
  }

  return result;
}

unint64_t sub_1A8816524()
{
  result = qword_1EB306DD0;
  if (!qword_1EB306DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DD0);
  }

  return result;
}

unint64_t sub_1A881657C()
{
  result = qword_1EB306DD8;
  if (!qword_1EB306DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DD8);
  }

  return result;
}

unint64_t sub_1A88165D4()
{
  result = qword_1EB306DE0;
  if (!qword_1EB306DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DE0);
  }

  return result;
}

unint64_t sub_1A881662C()
{
  result = qword_1EB306DE8;
  if (!qword_1EB306DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DE8);
  }

  return result;
}

unint64_t sub_1A8816684()
{
  result = qword_1EB306DF0;
  if (!qword_1EB306DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DF0);
  }

  return result;
}

unint64_t sub_1A88166DC()
{
  result = qword_1EB306DF8;
  if (!qword_1EB306DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306DF8);
  }

  return result;
}

unint64_t sub_1A8816734()
{
  result = qword_1EB306E00;
  if (!qword_1EB306E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E00);
  }

  return result;
}

unint64_t sub_1A881678C()
{
  result = qword_1EB306E08;
  if (!qword_1EB306E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E08);
  }

  return result;
}

unint64_t sub_1A88167E4()
{
  result = qword_1EB306E10;
  if (!qword_1EB306E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E10);
  }

  return result;
}

unint64_t sub_1A881683C()
{
  result = qword_1EB306E18;
  if (!qword_1EB306E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E18);
  }

  return result;
}

unint64_t sub_1A8816894()
{
  result = qword_1EB306E20;
  if (!qword_1EB306E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E20);
  }

  return result;
}

unint64_t sub_1A88168EC()
{
  result = qword_1EB306E28;
  if (!qword_1EB306E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E28);
  }

  return result;
}

unint64_t sub_1A8816944()
{
  result = qword_1EB306E30;
  if (!qword_1EB306E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E30);
  }

  return result;
}

unint64_t sub_1A881699C()
{
  result = qword_1EB306E38;
  if (!qword_1EB306E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E38);
  }

  return result;
}

unint64_t sub_1A88169F4()
{
  result = qword_1EB306E40;
  if (!qword_1EB306E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E40);
  }

  return result;
}

unint64_t sub_1A8816A4C()
{
  result = qword_1EB306E48;
  if (!qword_1EB306E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E48);
  }

  return result;
}

unint64_t sub_1A8816AA4()
{
  result = qword_1EB306E50;
  if (!qword_1EB306E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E50);
  }

  return result;
}

unint64_t sub_1A8816AFC()
{
  result = qword_1EB306E58;
  if (!qword_1EB306E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E58);
  }

  return result;
}

unint64_t sub_1A8816B54()
{
  result = qword_1EB306E60;
  if (!qword_1EB306E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E60);
  }

  return result;
}

unint64_t sub_1A8816BAC()
{
  result = qword_1EB306E68;
  if (!qword_1EB306E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E68);
  }

  return result;
}

unint64_t sub_1A8816C04()
{
  result = qword_1EB306E70;
  if (!qword_1EB306E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E70);
  }

  return result;
}

unint64_t sub_1A8816C5C()
{
  result = qword_1EB306E78;
  if (!qword_1EB306E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E78);
  }

  return result;
}

unint64_t sub_1A8816CB4()
{
  result = qword_1EB306E80;
  if (!qword_1EB306E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E80);
  }

  return result;
}

unint64_t sub_1A8816D0C()
{
  result = qword_1EB306E88;
  if (!qword_1EB306E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E88);
  }

  return result;
}

unint64_t sub_1A8816D64()
{
  result = qword_1EB306E90;
  if (!qword_1EB306E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E90);
  }

  return result;
}

unint64_t sub_1A8816DBC()
{
  result = qword_1EB306E98;
  if (!qword_1EB306E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306E98);
  }

  return result;
}

unint64_t sub_1A8816E14()
{
  result = qword_1EB306EA0;
  if (!qword_1EB306EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306EA0);
  }

  return result;
}

unint64_t sub_1A8816E6C()
{
  result = qword_1EB306EA8;
  if (!qword_1EB306EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306EA8);
  }

  return result;
}

unint64_t sub_1A8816EC4()
{
  result = qword_1EB306EB0;
  if (!qword_1EB306EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306EB0);
  }

  return result;
}

uint64_t sub_1A8816F60()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A8816FE0(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1A8817174(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_1A88173B8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB306EB8);
  sub_1A85EF0E4(v0, qword_1EB306EB8);
  return sub_1A88C7E48();
}

uint64_t sub_1A8817438()
{
  sub_1A870CCE0(&qword_1EB303CB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88F14F0;
  *(v0 + 32) = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(v0 + 40) = sub_1A85E9718(0, &qword_1ED8C94D8);
  *(v0 + 48) = sub_1A85E9718(0, &unk_1ED8C9440);
  *(v0 + 56) = sub_1A85E9718(0, &qword_1ED8C9450);
  *(v0 + 64) = sub_1A85E9718(0, &unk_1ED8C9388);
  *(v0 + 72) = sub_1A85E9718(0, &qword_1ED8C9398);
  *(v0 + 80) = sub_1A85E9718(0, &qword_1ED8C91E0);
  result = sub_1A85E9718(0, &qword_1ED8C94E0);
  *(v0 + 88) = result;
  qword_1EB338E50 = v0;
  return result;
}

uint64_t sub_1A881756C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v34 - v8;
  v46 = a3;
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v44 = a2;
  v45 = &v34 - v14;
  v40 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  sub_1A870C278(a1, a1[3]);
  sub_1A88C9598();
  if (v4)
  {
    v33 = a1;
  }

  else
  {
    v35 = v17;
    v36 = v12;
    v37 = v19;
    v38 = a1;
    sub_1A870C278(v47, v47[3]);
    v20 = v46;
    v21 = v44;
    swift_getAssociatedConformanceWitness();
    v22 = v45;
    sub_1A88C93B8();
    v23 = v9;
    v24 = v39;
    v25 = v36;
    (*(v39 + 16))(v36, v22, v9);
    v26 = v35;
    (*(v20 + 48))(v25, v21, v20);
    v27 = v21;
    (*(v24 + 8))(v22, v23);
    v29 = v40;
    v30 = v37;
    (*(v40 + 32))(v37, v26, v27);
    v31 = v38;
    v32 = v41;
    sub_1A85F1084(v47);
    (*(v29 + 32))(v32, v30, v27);
    v33 = v31;
  }

  return sub_1A85F1084(v33);
}

uint64_t sub_1A8817B18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A870C278(a1, a1[3]);
  if ((sub_1A88C93D8() & 1) == 0)
  {
    return sub_1A8818790(a1, a2, a3);
  }

  sub_1A8818B18();
  swift_allocError();
  *v6 = 0;
  return swift_willThrow();
}

uint64_t sub_1A8817BC4(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12[-v8 - 8];
  sub_1A870C278(a1, a1[3]);
  sub_1A88C95B8();
  (*(a3 + 40))(a2, a3);
  sub_1A8606088(v12, v13);
  swift_getAssociatedConformanceWitness();
  sub_1A88C93F8();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return sub_1A85F1084(v12);
}

uint64_t sub_1A8817D68(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v1);
  return (*(v2 + 16))(v6, v3, v2);
}

uint64_t sub_1A8817E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_1A8818064(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A88180A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A88180DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8818118(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A88181A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v3)
  {
    return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return (*(v7 + 32))(a3, v10, a2);
}

uint64_t sub_1A8818410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _RemoteIntentKVEncodedData();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A88C9598();
  if (!v3)
  {
    v11 = v8;
    v12 = v17;
    v13 = v18;
    v14 = v20;
    sub_1A8817B18(v19, a2, v7);
    sub_1A85F1084(v19);
    (*(v13 + 32))(v10, v7, a2);
    (*(v12 + 32))(v14, v10, v11);
  }

  return sub_1A85F1084(a1);
}

uint64_t sub_1A88185E8(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1A870C278(a1, a1[3]);
  sub_1A88C95B8();
  v1 = objc_opt_self();
  v9[0] = 0;
  v2 = [v1 archivedDataWithRootObject:sub_1A88C9388() requiringSecureCoding:1 error:v9];
  swift_unknownObjectRelease();
  v3 = v9[0];
  if (v2)
  {
    v4 = sub_1A88C7358();
    v6 = v5;

    v9[0] = v4;
    v9[1] = v6;
    sub_1A8606088(v10, v11);
    sub_1A871CE08();
    sub_1A88C93F8();
    sub_1A871CD60(v4, v6);
  }

  else
  {
    v7 = v3;
    sub_1A88C7168();

    swift_willThrow();
  }

  return sub_1A85F1084(v10);
}

uint64_t sub_1A8818790@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A88C8BE8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A871C858();
  result = sub_1A88C93B8();
  if (!v3)
  {
    v26 = a3;
    v13 = v24;
    v12 = v25;
    if (qword_1EB3022A0 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB338E50;
    isClassType = swift_isClassType();

    if (isClassType && a2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1A8735488(0, *(v14 + 2) + 1, 1, v14);
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v23 = v17 + 1;
        v21 = sub_1A8735488((v16 > 1), v17 + 1, 1, v14);
        v18 = v23;
        v14 = v21;
      }

      *(v14 + 2) = v18;
      *&v14[8 * v17 + 32] = a2;
    }

    sub_1A85E9718(0, &qword_1EB305AB8);
    sub_1A88C89F8();

    sub_1A870CCE0(&qword_1EB3057B0);
    if (swift_dynamicCast())
    {
      sub_1A871CD60(v13, v12);
      v19 = *(a2 - 8);
      (*(v19 + 56))(v10, 0, 1, a2);
      return (*(v19 + 32))(v26, v10, a2);
    }

    else
    {
      (*(*(a2 - 8) + 56))(v10, 1, 1, a2);
      (*(v8 + 8))(v10, v7);
      sub_1A8818B18();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      return sub_1A871CD60(v13, v12);
    }
  }

  return result;
}

unint64_t sub_1A8818B18()
{
  result = qword_1EB306FD0;
  if (!qword_1EB306FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306FD0);
  }

  return result;
}

unint64_t sub_1A8818B80()
{
  result = qword_1EB306FD8[0];
  if (!qword_1EB306FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB306FD8);
  }

  return result;
}

uint64_t sub_1A8818BD4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A8818C5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8818C98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8818CE8(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB3070A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A881A3BC();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB307088);
  sub_1A881A464(&qword_1EB3070A8, sub_1A881A4DC);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A8818E74(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307070);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A881A368();
  sub_1A88C95C8();
  v12 = 0;
  sub_1A88C91C8();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C9228();
    v10[14] = 2;
    sub_1A88C9208();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8819070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001A891D620 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A8819104(uint64_t a1)
{
  v2 = sub_1A881A3BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8819140(uint64_t a1)
{
  v2 = sub_1A881A3BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A881917C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A8819DE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A88191C4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49747865746E6F63;
  }
}

uint64_t sub_1A8819230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8819F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8819258(uint64_t a1)
{
  v2 = sub_1A881A368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8819294(uint64_t a1)
{
  v2 = sub_1A881A368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A88192D0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A881A0C8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1A8819330(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC8];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = (a1 + 64);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v5 = *(v3 - 3);
    v72 = *(v3 - 4);
    v6 = *(v3 - 2);
    v71 = *(v3 - 1);
    v73 = *v3;
    v7 = sub_1A88C82E8();
    v9 = v8;
    if (v6)
    {
      break;
    }

    v22 = sub_1A85F5F40(v7, v9);
    v24 = v23;

    if (v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v75[0] = v2;
      v26 = v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A87B14EC();
        v26 = *&v75[0];
      }

      sub_1A85E99B0((v26[7] + 32 * v22), &v76);
      sub_1A87B0220(v22, v26);
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v26 = v2;
    }

    sub_1A860169C(&v76);
LABEL_24:
    v32 = sub_1A88C82E8();
    v34 = v32;
    v35 = v33;
    if ((v73 & 1) == 0)
    {
      *(&v77 + 1) = MEMORY[0x1E69E6530];
      *&v76 = v71;
      sub_1A85E99B0(&v76, v75);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = sub_1A85F5F40(v34, v35);
      v44 = v26[2];
      v45 = (v43 & 1) == 0;
      v30 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v30)
      {
        goto LABEL_57;
      }

      v47 = v43;
      if (v26[3] >= v46)
      {
        if (v41)
        {
          goto LABEL_37;
        }

        v51 = v42;
        sub_1A87B14EC();
        v42 = v51;
        if ((v47 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_38:
        v49 = v42;

        v50 = (v26[7] + 32 * v49);
        sub_1A85F1084(v50);
        sub_1A85E99B0(v75, v50);
      }

      else
      {
        sub_1A887935C(v46, v41);
        v42 = sub_1A85F5F40(v34, v35);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_61;
        }

LABEL_37:
        if (v47)
        {
          goto LABEL_38;
        }

LABEL_40:
        v26[(v42 >> 6) + 8] |= 1 << v42;
        v52 = (v26[6] + 16 * v42);
        *v52 = v34;
        v52[1] = v35;
        sub_1A85E99B0(v75, (v26[7] + 32 * v42));
        v53 = v26[2];
        v30 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v30)
        {
          goto LABEL_60;
        }

        v26[2] = v54;
      }

      v40 = v72;
      if (!v5)
      {
        goto LABEL_3;
      }

      goto LABEL_43;
    }

    v36 = sub_1A85F5F40(v32, v33);
    v38 = v37;

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v75[0] = v26;
      v40 = v72;
      if (!v39)
      {
        sub_1A87B14EC();
        v26 = *&v75[0];
      }

      sub_1A85E99B0((v26[7] + 32 * v36), &v76);
      sub_1A87B0220(v36, v26);
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v40 = v72;
    }

    sub_1A860169C(&v76);
    if (!v5)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_43:

    *(&v77 + 1) = sub_1A870CCE0(&unk_1EB3091D0);
    *&v76 = v26;
    sub_1A85E99B0(&v76, v75);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = sub_1A85F5F40(v40, v5);
    v58 = v4[2];
    v59 = (v57 & 1) == 0;
    v30 = __OFADD__(v58, v59);
    v60 = v58 + v59;
    if (v30)
    {
      goto LABEL_56;
    }

    v61 = v57;
    if (v4[3] >= v60)
    {
      if ((v55 & 1) == 0)
      {
        v65 = v56;
        sub_1A87B14EC();
        v56 = v65;
        if (v61)
        {
LABEL_49:
          v63 = v56;

          v64 = (v4[7] + 32 * v63);
          sub_1A85F1084(v64);
          sub_1A85E99B0(v75, v64);
          goto LABEL_4;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_1A887935C(v60, v55);
      v56 = sub_1A85F5F40(v40, v5);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_61;
      }
    }

    if (v61)
    {
      goto LABEL_49;
    }

LABEL_51:
    v4[(v56 >> 6) + 8] |= 1 << v56;
    v66 = (v4[6] + 16 * v56);
    *v66 = v40;
    v66[1] = v5;
    sub_1A85E99B0(v75, (v4[7] + 32 * v56));
    v67 = v4[2];
    v30 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v30)
    {
      goto LABEL_59;
    }

    v4[2] = v68;
LABEL_4:
    v3 += 40;
    if (!--v1)
    {
      return v4;
    }
  }

  *(&v77 + 1) = sub_1A870CCE0(&qword_1EB303100);
  *&v76 = v6;
  sub_1A85E99B0(&v76, v75);

  swift_bridgeObjectRetain_n();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v2;
  v12 = sub_1A85F5F40(v7, v9);
  v13 = v2;
  v14 = v2[2];
  v15 = (v11 & 1) == 0;
  v16 = v14 + v15;
  if (!__OFADD__(v14, v15))
  {
    v17 = v11;
    v70 = v1;
    v18 = v5;
    v19 = v13;
    if (v13[3] < v16)
    {
      sub_1A887935C(v16, v10);
      v20 = sub_1A85F5F40(v7, v9);
      if ((v17 & 1) != (v21 & 1))
      {
        goto LABEL_61;
      }

      v12 = v20;
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:

      v26 = v74;
      v27 = (v74[7] + 32 * v12);
      sub_1A85F1084(v27);
      sub_1A85E99B0(v75, v27);
LABEL_23:
      v2 = v19;
      v5 = v18;
      v1 = v70;
      goto LABEL_24;
    }

    if (v10)
    {
      if (v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1A87B14EC();
      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_21:
    v26 = v74;
    v74[(v12 >> 6) + 8] |= 1 << v12;
    v28 = (v74[6] + 16 * v12);
    *v28 = v7;
    v28[1] = v9;
    sub_1A85E99B0(v75, (v74[7] + 32 * v12));
    v29 = v74[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_58;
    }

    v74[2] = v31;
    goto LABEL_23;
  }

  __break(1u);
LABEL_56:
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
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A881994C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8819974(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A8819974(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v2;
    if (!v6)
    {
      break;
    }

    v9 = v2;
LABEL_13:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1A85F1028(*(v1 + 56) + 32 * v12, v40);
    *&v41 = v15;
    *(&v41 + 1) = v14;
    sub_1A85E99B0(v40, &v42);

    v2 = v9;
LABEL_14:
    v44 = v41;
    v45[0] = v42;
    v45[1] = v43;
    v16 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {

      return v39;
    }

    v17 = v44;
    sub_1A85E99B0(v45, &v41);
    sub_1A870CCE0(&unk_1EB3091D0);
    if (swift_dynamicCast())
    {
      v18 = *&v40[0];
      v19 = sub_1A88C82E8();
      if (!*(v18 + 16))
      {

LABEL_24:
        v38 = 0;
        goto LABEL_25;
      }

      v37 = sub_1A85F5F40(v19, v20);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1A85F1028(*(v18 + 56) + 32 * v37, &v41);
      sub_1A870CCE0(&qword_1EB303100);
      v23 = swift_dynamicCast();
      v24 = *&v40[0];
      if (!v23)
      {
        v24 = 0;
      }

      v38 = v24;
LABEL_25:
      v25 = sub_1A88C82E8();
      if (!*(v18 + 16))
      {

LABEL_31:

        v36 = 0;
        v31 = 1;
        goto LABEL_32;
      }

      v35 = sub_1A85F5F40(v25, v26);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_1A85F1028(*(v18 + 56) + 32 * v35, &v41);

      v29 = swift_dynamicCast();
      v30 = *&v40[0];
      if (!v29)
      {
        v30 = 0;
      }

      v36 = v30;
      v31 = v29 ^ 1;
LABEL_32:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A8734FB8(0, *(v39 + 16) + 1, 1, v39);
        v39 = result;
      }

      v33 = *(v39 + 16);
      v32 = *(v39 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1A8734FB8((v32 > 1), v33 + 1, 1, v39);
        v39 = result;
      }

      *(v39 + 16) = v33 + 1;
      v34 = v39 + 40 * v33;
      *(v34 + 32) = v17;
      *(v34 + 40) = v16;
      *(v34 + 48) = v38;
      *(v34 + 56) = v36;
      *(v34 + 64) = v31;
    }

    else
    {
    }
  }

  if (v7 <= v2 + 1)
  {
    v10 = v2 + 1;
  }

  else
  {
    v10 = v7;
  }

  v2 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1A8819D00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8819D14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1A8819D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1A8819DE8(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB307078);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A881A3BC();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB307088);
    sub_1A881A464(&qword_1EB307090, sub_1A881A410);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

uint64_t sub_1A8819F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891D5E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891D600 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A881A0C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB307060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A881A368();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v24 = 0;
  v9 = sub_1A88C9058();
  v11 = v10;
  v20 = v9;
  sub_1A870CCE0(&qword_1EB303100);
  v23 = 1;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C90B8();
  v19 = v21;
  v22 = 2;
  v12 = sub_1A88C9098();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = sub_1A85F1084(a1);
  v17 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15 & 1;
  return result;
}

unint64_t sub_1A881A368()
{
  result = qword_1EB307068;
  if (!qword_1EB307068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307068);
  }

  return result;
}

unint64_t sub_1A881A3BC()
{
  result = qword_1EB307080;
  if (!qword_1EB307080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307080);
  }

  return result;
}

unint64_t sub_1A881A410()
{
  result = qword_1EB307098;
  if (!qword_1EB307098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307098);
  }

  return result;
}

uint64_t sub_1A881A464(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB307088);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A881A4DC()
{
  result = qword_1EB3070B0;
  if (!qword_1EB3070B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070B0);
  }

  return result;
}

unint64_t sub_1A881A554()
{
  result = qword_1EB3070B8;
  if (!qword_1EB3070B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070B8);
  }

  return result;
}

unint64_t sub_1A881A5AC()
{
  result = qword_1EB3070C0;
  if (!qword_1EB3070C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070C0);
  }

  return result;
}

unint64_t sub_1A881A604()
{
  result = qword_1EB3070C8;
  if (!qword_1EB3070C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070C8);
  }

  return result;
}

unint64_t sub_1A881A65C()
{
  result = qword_1EB3070D0;
  if (!qword_1EB3070D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070D0);
  }

  return result;
}

unint64_t sub_1A881A6B4()
{
  result = qword_1EB3070D8;
  if (!qword_1EB3070D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070D8);
  }

  return result;
}

unint64_t sub_1A881A70C()
{
  result = qword_1EB3070E0;
  if (!qword_1EB3070E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070E0);
  }

  return result;
}

uint64_t sub_1A881A770(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307120);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A881BC1C();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB3070F8);
  sub_1A881BD80();
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A881A8CC(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB307168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  sub_1A870C278(a1, a1[3]);
  sub_1A881C5BC();
  sub_1A88C95C8();
  v15 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1A881C610(&v15, v11);
  sub_1A871CE08();
  sub_1A88C9228();
  sub_1A871CD4C(v13, *(&v13 + 1));
  if (!v2)
  {
    v13 = v3[1];
    v14 = v13;
    v12 = 1;
    sub_1A881C610(&v14, v11);
    sub_1A88C9228();
    sub_1A871CD4C(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_1A88C91E8();
    LOBYTE(v13) = 3;
    sub_1A88C91C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A881AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473694874726170 && a2 == 0xED0000736569726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A881AB9C(uint64_t a1)
{
  v2 = sub_1A881BC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A881ABD8(uint64_t a1)
{
  v2 = sub_1A881BC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A881AC14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A881BA98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1A881AC5C()
{
  v1 = 0x506567617373656DLL;
  v2 = 0x746E655365746164;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1A881ACF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A881C134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A881AD18(uint64_t a1)
{
  v2 = sub_1A881C5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A881AD54(uint64_t a1)
{
  v2 = sub_1A881C5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A881AD90@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A881C2AC(a1, v7);
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

uint64_t sub_1A881ADEC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v41 = v2;
  v42 = v7;
  v43 = v6;
  while (v5)
  {
    v47 = v9;
    v11 = v8;
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v1 + 56) + 8 * v12);
    v17 = *(v16 + 16);
    if (v17)
    {
      v45 = *v13;
      v46 = v5;
      *&v49 = MEMORY[0x1E69E7CC0];
      v44 = v14;

      sub_1A871D5EC(0, v17, 0);
      v18 = v49;
      v19 = 32;
      do
      {
        v20 = *(v16 + v19);
        v21 = *(v16 + v19 + 16);
        v22 = *(v16 + v19 + 48);
        v52[2] = *(v16 + v19 + 32);
        v52[3] = v22;
        v52[0] = v20;
        v52[1] = v21;
        sub_1A881B4DC(v52, v51);
        v23 = sub_1A881B150();
        sub_1A881B514(v52);
        *&v49 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1A871D5EC((v24 > 1), v25 + 1, 1);
          v18 = v49;
        }

        *(v18 + 16) = v25 + 1;
        *(v18 + 8 * v25 + 32) = v23;
        v19 += 64;
        --v17;
      }

      while (v17);

      v2 = v41;
      v1 = v42;
      v15 = v45;
      v5 = v46;
      v26 = v44;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    *&v49 = v15;
    *(&v49 + 1) = v26;
    sub_1A88C8D88();
    v50 = sub_1A870CCE0(&qword_1EB3051D0);
    *&v49 = v18;
    sub_1A85E99B0(&v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1A8602F10(v51);
    v30 = v47[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_30;
    }

    v34 = v29;
    if (v47[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v28;
        sub_1A87B1030();
        v28 = v39;
      }
    }

    else
    {
      sub_1A8878AB8(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1A8602F10(v51);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_32;
      }
    }

    v5 &= v5 - 1;
    v9 = v47;
    if (v34)
    {
      v10 = (v47[7] + 32 * v28);
      sub_1A85F1084(v10);
      sub_1A85E99B0(v48, v10);
      sub_1A8717360(v51);
    }

    else
    {
      v47[(v28 >> 6) + 8] |= 1 << v28;
      v36 = v28;
      sub_1A8717304(v51, v47[6] + 40 * v28);
      sub_1A85E99B0(v48, (v47[7] + 32 * v36));
      sub_1A8717360(v51);
      v37 = v47[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_31;
      }

      v47[2] = v38;
    }

    v8 = v11;
    v6 = v43;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v47 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A881B150()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  *&v25 = sub_1A88C82E8();
  *(&v25 + 1) = v3;
  sub_1A88C8D88();
  v4 = *(v1 + 8);
  v5 = MEMORY[0x1E6969088];
  if (v4 >> 60 == 15)
  {
    sub_1A88BEFF8(v27, &v25);
    sub_1A860169C(&v25);
    sub_1A8717360(v27);
  }

  else
  {
    v6 = *v1;
    v26 = MEMORY[0x1E6969088];
    *&v25 = v6;
    *(&v25 + 1) = v4;
    sub_1A85E99B0(&v25, v24);
    sub_1A871DFB8(v6, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v24, v27, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v27);
    v28 = v2;
  }

  *&v25 = sub_1A88C82E8();
  *(&v25 + 1) = v8;
  sub_1A88C8D88();
  v9 = *(v1 + 24);
  if (v9 >> 60 == 15)
  {
    sub_1A88BEFF8(v27, &v25);
    sub_1A860169C(&v25);
    sub_1A8717360(v27);
  }

  else
  {
    v10 = *(v1 + 16);
    v26 = v5;
    *&v25 = v10;
    *(&v25 + 1) = v9;
    sub_1A85E99B0(&v25, v24);
    sub_1A871DFB8(v10, v9);
    v11 = v28;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v24, v27, v12);
    sub_1A8717360(v27);
    v28 = v11;
  }

  *&v25 = sub_1A88C82E8();
  *(&v25 + 1) = v13;
  sub_1A88C8D88();
  if (*(v1 + 40))
  {
    sub_1A88BEFF8(v27, &v25);
    sub_1A860169C(&v25);
    sub_1A8717360(v27);
  }

  else
  {
    v14 = *(v1 + 32);
    v26 = MEMORY[0x1E69E63B0];
    *&v25 = v14;
    sub_1A85E99B0(&v25, v24);
    v15 = v28;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v24, v27, v16);
    sub_1A8717360(v27);
    v28 = v15;
  }

  *&v25 = sub_1A88C82E8();
  *(&v25 + 1) = v17;
  v18 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v19 = *(v1 + 56);
  if (v19)
  {
    v20 = *(v1 + 48);
    v26 = v18;
    *&v25 = v20;
    *(&v25 + 1) = v19;
    sub_1A85E99B0(&v25, v24);

    v21 = v28;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v24, v27, v22);
    sub_1A8717360(v27);
    return v21;
  }

  else
  {
    sub_1A88BEFF8(v27, &v25);
    sub_1A860169C(&v25);
    sub_1A8717360(v27);
    return v28;
  }
}

unint64_t sub_1A881B474@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1A881B848(a1);
  *a2 = result;
  return result;
}

double sub_1A881B49C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A881B544(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1A881B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1A88C82E8();
  v32 = v4;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v5 = sub_1A8602F10(v30), (v6 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v5, &v31);
    sub_1A8717360(v30);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v29;
    }

    else
    {
      v9 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1A8717360(v30);
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v31 = sub_1A88C82E8();
  v32 = v10;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v11 = sub_1A8602F10(v30), (v12 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, &v31);
    sub_1A8717360(v30);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v28;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v29;
    }

    else
    {
      v15 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1A8717360(v30);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  v31 = sub_1A88C82E8();
  v32 = v16;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v17 = sub_1A8602F10(v30), (v18 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v17, &v31);
    sub_1A8717360(v30);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v28;
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 ^ 1;
  }

  else
  {
    sub_1A8717360(v30);
    v20 = 0;
    v21 = 1;
  }

  v31 = sub_1A88C82E8();
  v32 = v22;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v23 = sub_1A8602F10(v30), (v24 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v23, &v31);
    sub_1A8717360(v30);

    result = swift_dynamicCast();
    v26 = v28;
    v27 = v29;
    if (!result)
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {

    result = sub_1A8717360(v30);
    v26 = 0;
    v27 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  return result;
}

unint64_t sub_1A881B848(uint64_t a1)
{
  v1 = sub_1A88762F0(a1);

  if (v1)
  {
    result = v1;
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = MEMORY[0x1E69E7CC8];
    v26 = v8;
    v27 = result;
    while (v7)
    {
      v30 = v9;
LABEL_13:
      v13 = __clz(__rbit64(v7)) | (v3 << 6);
      v14 = (*(result + 48) + 16 * v13);
      v28 = *v14;
      v29 = v14[1];
      v15 = *(*(result + 56) + 8 * v13);
      v16 = *(v15 + 16);

      if (v16)
      {
        v17 = 0;
        v10 = MEMORY[0x1E69E7CC0];
        while (v17 < *(v15 + 16))
        {

          sub_1A881B544(v18, v31);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A87350D4(0, *(v10 + 16) + 1, 1, v10);
            v10 = result;
          }

          v20 = *(v10 + 16);
          v19 = *(v10 + 24);
          if (v20 >= v19 >> 1)
          {
            result = sub_1A87350D4((v19 > 1), v20 + 1, 1, v10);
            v10 = result;
          }

          ++v17;
          *(v10 + 16) = v20 + 1;
          v21 = (v10 + (v20 << 6));
          v22 = v31[0];
          v23 = v31[1];
          v24 = v31[3];
          v21[4] = v31[2];
          v21[5] = v24;
          v21[2] = v22;
          v21[3] = v23;
          if (v16 == v17)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v7 &= v7 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC570(v10, v28, v29, isUniquelyReferenced_nonNull_native);

      v9 = v30;
      v8 = v26;
      result = v27;
    }

    while (1)
    {
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return v9;
      }

      v7 = *(v4 + 8 * v12);
      ++v3;
      if (v7)
      {
        v30 = v9;
        v3 = v12;
        goto LABEL_13;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];

    return sub_1A8738978(v25);
  }

  return result;
}

void *sub_1A881BA98(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB3070E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A881BC1C();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB3070F8);
    sub_1A881BC70();
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

unint64_t sub_1A881BC1C()
{
  result = qword_1EB3070F0;
  if (!qword_1EB3070F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3070F0);
  }

  return result;
}

unint64_t sub_1A881BC70()
{
  result = qword_1EB307100;
  if (!qword_1EB307100)
  {
    sub_1A870CD28(&qword_1EB3070F8);
    sub_1A881BE3C(&qword_1EB307108, sub_1A881BD2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307100);
  }

  return result;
}

unint64_t sub_1A881BD2C()
{
  result = qword_1EB307118;
  if (!qword_1EB307118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307118);
  }

  return result;
}

unint64_t sub_1A881BD80()
{
  result = qword_1EB307128;
  if (!qword_1EB307128)
  {
    sub_1A870CD28(&qword_1EB3070F8);
    sub_1A881BE3C(&qword_1EB307130, sub_1A881BEB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307128);
  }

  return result;
}

uint64_t sub_1A881BE3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB307110);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A881BEB4()
{
  result = qword_1EB307138;
  if (!qword_1EB307138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307138);
  }

  return result;
}

uint64_t sub_1A881BF18(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A881BF34(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A881BF5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1A881BFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1A881C030()
{
  result = qword_1EB307140;
  if (!qword_1EB307140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307140);
  }

  return result;
}

unint64_t sub_1A881C088()
{
  result = qword_1EB307148;
  if (!qword_1EB307148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307148);
  }

  return result;
}

unint64_t sub_1A881C0E0()
{
  result = qword_1EB307150;
  if (!qword_1EB307150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307150);
  }

  return result;
}

uint64_t sub_1A881C134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506567617373656DLL && a2 == 0xEF74786554747261;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891D640 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E655365746164 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A891D660 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A881C2AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB307158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A881C5BC();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = a2;
  LOBYTE(v28) = 0;
  sub_1A871C858();
  sub_1A88C90B8();
  v10 = v32;
  v27 = v33;
  LOBYTE(v28) = 1;
  sub_1A88C90B8();
  v25 = v33;
  v26 = v32;
  LOBYTE(v32) = 2;
  v24 = sub_1A88C9078();
  v40 = v11 & 1;
  v41 = 3;
  v12 = sub_1A88C9058();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  v16 = v10;
  *&v28 = v10;
  v17 = v27;
  *(&v28 + 1) = v27;
  *&v29 = v26;
  v18 = v25;
  *(&v29 + 1) = v25;
  *&v30 = v24;
  v19 = v40;
  BYTE8(v30) = v40;
  *&v31 = v12;
  *(&v31 + 1) = v15;
  sub_1A881B4DC(&v28, &v32);
  sub_1A85F1084(a1);
  v32 = v16;
  v33 = v17;
  v34 = v26;
  v35 = v18;
  v36 = v24;
  v37 = v19;
  v38 = v12;
  v39 = v15;
  result = sub_1A881B514(&v32);
  v21 = v29;
  *v9 = v28;
  v9[1] = v21;
  v22 = v31;
  v9[2] = v30;
  v9[3] = v22;
  return result;
}

unint64_t sub_1A881C5BC()
{
  result = qword_1EB307160;
  if (!qword_1EB307160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307160);
  }

  return result;
}

uint64_t sub_1A881C610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A881C694()
{
  result = qword_1EB307178;
  if (!qword_1EB307178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307178);
  }

  return result;
}

unint64_t sub_1A881C6EC()
{
  result = qword_1EB307180;
  if (!qword_1EB307180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307180);
  }

  return result;
}

unint64_t sub_1A881C744()
{
  result = qword_1EB307188;
  if (!qword_1EB307188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307188);
  }

  return result;
}

uint64_t sub_1A881C798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = sub_1A88C82E8();
  v124 = v4;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v5 = sub_1A8602F10(&v119), (v6 & 1) == 0))
  {
    sub_1A8717360(&v119);
LABEL_7:
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v5, &v123);
  sub_1A8717360(&v119);
  sub_1A870CCE0(&qword_1EB3051D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(v115 + 16);
  if (!v7)
  {
LABEL_5:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_8:
  v113 = a2;
  v123 = MEMORY[0x1E69E7CC0];
  sub_1A871D62C(0, v7, 0);
  v9 = 32;
  v8 = v123;
  do
  {

    RemoteIntentServiceInfo.init(dictionaryRepresentation:)(v10, &v119);
    v11 = v119;
    v12 = v120;
    v13 = v121;
    v14 = v122;
    v123 = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      v109 = v120;
      v111 = v119;
      v107 = v121;
      sub_1A871D62C((v15 > 1), v16 + 1, 1);
      v13 = v107;
      v12 = v109;
      v11 = v111;
      v8 = v123;
    }

    *(v8 + 16) = v16 + 1;
    v17 = v8 + 56 * v16;
    *(v17 + 32) = v11;
    *(v17 + 48) = v12;
    *(v17 + 64) = v13;
    *(v17 + 80) = v14;
    v9 += 8;
    --v7;
  }

  while (v7);

  a2 = v113;
LABEL_13:
  v116 = sub_1A88C82E8();
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v18 = sub_1A8602F10(&v119), (v19 & 1) == 0))
  {
    sub_1A8717360(&v119);
    goto LABEL_18;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v18, &v123);
  sub_1A8717360(&v119);
  sub_1A870CCE0(&qword_1EB307238);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v20 = MEMORY[0x1E69E7CC8];
    goto LABEL_19;
  }

  v20 = v116;
LABEL_19:
  v114 = sub_1A881D50C(v20);

  v117 = sub_1A88C82E8();
  v118 = v21;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v22 = sub_1A8602F10(&v119), (v23 & 1) == 0))
  {
    sub_1A8717360(&v119);
    goto LABEL_24;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v22, &v123);
  sub_1A8717360(&v119);
  sub_1A870CCE0(&qword_1EB303320);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v112 = 3;
    goto LABEL_25;
  }

  v112 = sub_1A87DDE0C(v117);
LABEL_25:
  v123 = sub_1A88C82E8();
  v124 = v24;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v25 = sub_1A8602F10(&v119), (v26 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v25, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB303100);
    v27 = swift_dynamicCast();
    v28 = v117;
    if (!v27)
    {
      v28 = 0;
    }

    v110 = v28;
  }

  else
  {
    sub_1A8717360(&v119);
    v110 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v29;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v30 = sub_1A8602F10(&v119), (v31 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v30, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB303320);
    v32 = swift_dynamicCast();
    v33 = v117;
    if (!v32)
    {
      v33 = 0;
    }

    v108 = v33;
  }

  else
  {
    sub_1A8717360(&v119);
    v108 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v34;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v35 = sub_1A8602F10(&v119), (v36 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v35, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB303320);
    v37 = swift_dynamicCast();
    v38 = v117;
    if (!v37)
    {
      v38 = 0;
    }

    v106 = v38;
  }

  else
  {
    sub_1A8717360(&v119);
    v106 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v39;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v40 = sub_1A8602F10(&v119), (v41 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v40, &v123);
    sub_1A8717360(&v119);
    v42 = swift_dynamicCast();
    if (v42)
    {
      v43 = v117;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v118;
    }

    else
    {
      v44 = 0;
    }

    v104 = v44;
    v105 = v43;
  }

  else
  {
    sub_1A8717360(&v119);
    v104 = 0;
    v105 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v45;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v46 = sub_1A8602F10(&v119), (v47 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v46, &v123);
    sub_1A8717360(&v119);
    v48 = swift_dynamicCast();
    v49 = v117;
    if (!v48)
    {
      v49 = 0;
    }

    v103 = v49;
    v50 = v48 ^ 1;
  }

  else
  {
    sub_1A8717360(&v119);
    v103 = 0;
    v50 = 1;
  }

  v102 = v50;
  v123 = sub_1A88C82E8();
  v124 = v51;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v52 = sub_1A8602F10(&v119), (v53 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v52, &v123);
    sub_1A8717360(&v119);
    v54 = swift_dynamicCast();
    v55 = v117;
    if (!v54)
    {
      v55 = 0;
    }

    v101 = v55;
    v56 = v54 ^ 1;
  }

  else
  {
    sub_1A8717360(&v119);
    v101 = 0;
    v56 = 1;
  }

  v100 = v56;
  v123 = sub_1A88C82E8();
  v124 = v57;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v58 = sub_1A8602F10(&v119), (v59 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v58, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB3051D0);
    v60 = swift_dynamicCast();
    v61 = v117;
    if (!v60)
    {
      v61 = 0;
    }

    v99 = v61;
  }

  else
  {
    sub_1A8717360(&v119);
    v99 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v62;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v63 = sub_1A8602F10(&v119), (v64 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v63, &v123);
    sub_1A8717360(&v119);
    v65 = swift_dynamicCast();
    v66 = v117;
    if (!v65)
    {
      v66 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v119);
    v66 = 2;
  }

  v98 = v66;
  v123 = sub_1A88C82E8();
  v124 = v67;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v68 = sub_1A8602F10(&v119), (v69 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v68, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB3051D0);
    v70 = swift_dynamicCast();
    v71 = v117;
    if (!v70)
    {
      v71 = 0;
    }

    v97 = v71;
  }

  else
  {
    sub_1A8717360(&v119);
    v97 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v72;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v73 = sub_1A8602F10(&v119), (v74 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v73, &v123);
    sub_1A8717360(&v119);
    sub_1A870CCE0(&qword_1EB303B88);
    if (swift_dynamicCast())
    {
      v75 = v117;
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    sub_1A8717360(&v119);
    v75 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v76;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v77 = sub_1A8602F10(&v119), (v78 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v77, &v123);
    sub_1A8717360(&v119);
    if (swift_dynamicCast())
    {
      v79 = v117;
    }

    else
    {
      v79 = 2;
    }
  }

  else
  {
    sub_1A8717360(&v119);
    v79 = 2;
  }

  v123 = sub_1A88C82E8();
  v124 = v80;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v81 = sub_1A8602F10(&v119), (v82 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v81, &v123);
    sub_1A8717360(&v119);
    v83 = swift_dynamicCast();
    if (v83)
    {
      v84 = v117;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = v118;
    }

    else
    {
      v85 = 0;
    }
  }

  else
  {
    sub_1A8717360(&v119);
    v84 = 0;
    v85 = 0;
  }

  v123 = sub_1A88C82E8();
  v124 = v86;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v87 = sub_1A8602F10(&v119), (v88 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v87, &v123);
    sub_1A8717360(&v119);
    v89 = swift_dynamicCast();
    if (v89)
    {
      v90 = v117;
    }

    else
    {
      v90 = 0;
    }

    v91 = v89 ^ 1;
  }

  else
  {
    sub_1A8717360(&v119);
    v90 = 0;
    v91 = 1;
  }

  v123 = sub_1A88C82E8();
  v124 = v92;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v93 = sub_1A8602F10(&v119), (v94 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v93, &v123);
    sub_1A8717360(&v119);

    result = swift_dynamicCast();
    v96 = v117;
    if (!result)
    {
      v96 = 2;
    }
  }

  else
  {

    result = sub_1A8717360(&v119);
    v96 = 2;
  }

  *a2 = v110;
  *(a2 + 8) = v8;
  *(a2 + 16) = v108;
  *(a2 + 24) = v106;
  *(a2 + 32) = v114;
  *(a2 + 40) = v105;
  *(a2 + 48) = v104;
  *(a2 + 56) = v103;
  *(a2 + 64) = v102;
  *(a2 + 72) = v101;
  *(a2 + 80) = v100;
  *(a2 + 88) = v99;
  *(a2 + 96) = v98;
  *(a2 + 104) = v97;
  *(a2 + 112) = v75;
  *(a2 + 120) = v79;
  *(a2 + 128) = v84;
  *(a2 + 136) = v85;
  *(a2 + 144) = v112;
  *(a2 + 152) = v90;
  *(a2 + 160) = v91;
  *(a2 + 161) = v96;
  return result;
}

uint64_t sub_1A881D50C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB307240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v44 = type metadata accessor for RemoteIntentFileTransfer();
  v5 = MEMORY[0x1EEE9AC00](v44);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - v8;
  v41 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v38 = v7;
  v42 = (v7 + 48);
  v43 = (v7 + 56);
  v45 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v45 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(*(v45 + 56) + 8 * v18);
    swift_bridgeObjectRetain_n();

    RemoteIntentFileTransfer.init(dictionaryRepresentation:)(v22, v4);
    v23 = v44;
    (*v43)(v4, 0, 1, v44);

    if ((*v42)(v4, 1, v23) == 1)
    {

      result = sub_1A85EF638(v4, &qword_1EB307240);
    }

    else
    {
      v24 = v39;
      sub_1A8820D68(v4, v39);
      sub_1A8820D68(v24, v40);
      v25 = v41[2];
      if (v41[3] <= v25)
      {
        sub_1A8878D70(v25 + 1, 1);
      }

      v26 = v46;
      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v27 = v26 + 64;
      v41 = v26;
      v28 = -1 << *(v26 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v28) >> 6;
        while (++v30 != v33 || (v32 & 1) == 0)
        {
          v34 = v30 == v33;
          if (v30 == v33)
          {
            v30 = 0;
          }

          v32 |= v34;
          v35 = *(v27 + 8 * v30);
          if (v35 != -1)
          {
            v31 = __clz(__rbit64(~v35)) + (v30 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v36 = v41;
      v37 = (v41[6] + 16 * v31);
      *v37 = v21;
      v37[1] = v20;
      result = sub_1A8820D68(v40, v36[7] + *(v38 + 72) * v31);
      ++v36[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v41;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A881D8F0(uint64_t a1)
{
  v47 = sub_1A870CCE0(&qword_1EB307248);
  v2 = MEMORY[0x1EEE9AC00](v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v41 - v7;
  v8 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v45 = a1;

  v15 = 0;
  v44 = v4;
  while (v12)
  {
LABEL_13:
    v26 = __clz(__rbit64(v12)) | (v15 << 6);
    v27 = *(v45 + 56);
    v28 = (*(v45 + 48) + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = v27 + *(*(type metadata accessor for RemoteIntentFileTransfer() - 8) + 72) * v26;
    v32 = v42;
    sub_1A8820DCC(v31, &v42[*(v47 + 48)]);
    *v32 = v30;
    v32[1] = v29;
    v33 = v32;
    v34 = v43;
    sub_1A8820E30(v33, v43);

    v46 = RemoteIntentFileTransfer.dictionaryRepresentation.getter();
    v35 = v44;
    sub_1A8820E30(v34, v44);
    v36 = *(v8 + 16);
    if (*(v8 + 24) <= v36)
    {
      sub_1A8879088(v36 + 1, 1);
      v8 = v48;
    }

    v16 = *v35;
    v17 = v35[1];
    sub_1A88C9528();
    sub_1A88C8268();
    result = sub_1A88C9578();
    v18 = v8 + 64;
    v19 = -1 << *(v8 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v8 + 64 + 8 * (v20 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v19) >> 6;
      while (++v21 != v38 || (v37 & 1) == 0)
      {
        v39 = v21 == v38;
        if (v21 == v38)
        {
          v21 = 0;
        }

        v37 |= v39;
        v40 = *(v18 + 8 * v21);
        if (v40 != -1)
        {
          v22 = __clz(__rbit64(~v40)) + (v21 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v8 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v12 &= v12 - 1;
    v23 = *(v47 + 48);
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v24 = (*(v8 + 48) + 16 * v22);
    *v24 = v16;
    v24[1] = v17;
    *(*(v8 + 56) + 8 * v22) = v46;
    ++*(v8 + 16);
    result = sub_1A8820EA0(v35 + v23);
  }

  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v25);
    ++v15;
    if (v12)
    {
      v15 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A881DC2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v86 = v0[3];
  v87 = v0[6];
  v80 = v0[7];
  v81 = v0[9];
  v82 = v0[5];
  v88 = *(v0 + 64);
  v89 = *(v0 + 80);
  v90 = *(v0 + 96);
  v84 = v0[11];
  v85 = v0[13];
  v91 = v0[14];
  v92 = *(v0 + 120);
  v5 = v0[17];
  v83 = v0[16];
  v6 = *(v0 + 144);
  v7 = v0[19];
  v8 = *(v0 + 160);
  v9 = *(v0 + 161);
  v10 = MEMORY[0x1E69E7CC8];
  v101 = MEMORY[0x1E69E7CC8];
  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v11;
  sub_1A88C8D88();
  if (v1)
  {
    v100 = sub_1A870CCE0(&qword_1EB303100);
    *&v99 = v1;
    sub_1A85E99B0(&v99, v98);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v10;
    sub_1A87AC424(v98, &v93, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(&v93);
    v101 = v97;
  }

  else
  {
    sub_1A88BEFF8(&v93, &v99);
    sub_1A85EF638(&v99, &qword_1EB3057B0);
    sub_1A8717360(&v93);
  }

  *&v93 = sub_1A88C82E8();
  *(&v93 + 1) = v13;
  result = sub_1A88C8D88();
  if (!v2)
  {
    sub_1A88BEFF8(&v99, &v93);
    sub_1A85EF638(&v93, &qword_1EB3057B0);
    sub_1A8717360(&v99);
LABEL_17:
    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v25;
    sub_1A88C8D88();
    if (v3)
    {
      v100 = sub_1A870CCE0(&qword_1EB303320);
      *&v99 = v3;
      sub_1A85E99B0(&v99, v98);

      v26 = v101;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v26;
      sub_1A87AC424(v98, &v93, v27);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v28;
    sub_1A88C8D88();
    if (v86)
    {
      v100 = sub_1A870CCE0(&qword_1EB303320);
      *&v99 = v86;
      sub_1A85E99B0(&v99, v98);

      v29 = v101;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v29;
      sub_1A87AC424(v98, &v93, v30);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v31;
    sub_1A88C8D88();
    if (v4)
    {
      v32 = sub_1A881D8F0(v4);
      v100 = sub_1A870CCE0(&qword_1EB307238);
      *&v99 = v32;
      sub_1A85E99B0(&v99, v98);
      v33 = v101;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v33;
      sub_1A87AC424(v98, &v93, v34);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v35;
    v36 = MEMORY[0x1E69E6158];
    sub_1A88C8D88();
    if (v87)
    {
      v100 = v36;
      *&v99 = v82;
      *(&v99 + 1) = v87;
      sub_1A85E99B0(&v99, v98);

      v37 = v101;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v37;
      sub_1A87AC424(v98, &v93, v38);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v39;
    sub_1A88C8D88();
    v40 = MEMORY[0x1E69E7360];
    if (v88)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v100 = MEMORY[0x1E69E7360];
      *&v99 = v80;
      sub_1A85E99B0(&v99, v98);
      v41 = v101;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v41;
      sub_1A87AC424(v98, &v93, v42);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v43;
    sub_1A88C8D88();
    if (v89)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v100 = v40;
      *&v99 = v81;
      sub_1A85E99B0(&v99, v98);
      v44 = v101;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v44;
      sub_1A87AC424(v98, &v93, v45);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v46;
    sub_1A88C8D88();
    if (v84)
    {
      v100 = sub_1A870CCE0(&qword_1EB3051D0);
      *&v99 = v84;
      sub_1A85E99B0(&v99, v98);

      v47 = v101;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v47;
      sub_1A87AC424(v98, &v93, v48);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v49;
    sub_1A88C8D88();
    v50 = MEMORY[0x1E69E6370];
    if (v90 == 2)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v100 = MEMORY[0x1E69E6370];
      LOBYTE(v99) = v90 & 1;
      sub_1A85E99B0(&v99, v98);
      v51 = v101;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v51;
      sub_1A87AC424(v98, &v93, v52);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v53;
    sub_1A88C8D88();
    if (v85)
    {
      v100 = sub_1A870CCE0(&qword_1EB3051D0);
      *&v99 = v85;
      sub_1A85E99B0(&v99, v98);

      v54 = v101;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v54;
      sub_1A87AC424(v98, &v93, v55);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v56;
    sub_1A88C8D88();
    if (v91)
    {
      v100 = sub_1A870CCE0(&qword_1EB303B88);
      *&v99 = v91;
      sub_1A85E99B0(&v99, v98);

      v57 = v101;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v57;
      sub_1A87AC424(v98, &v93, v58);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v59;
    sub_1A88C8D88();
    if (v92 == 2)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v100 = v50;
      LOBYTE(v99) = v92 & 1;
      sub_1A85E99B0(&v99, v98);
      v60 = v101;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v60;
      sub_1A87AC424(v98, &v93, v61);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v62;
    v63 = MEMORY[0x1E69E6158];
    sub_1A88C8D88();
    if (v5)
    {
      v100 = v63;
      *&v99 = v83;
      *(&v99 + 1) = v5;
      sub_1A85E99B0(&v99, v98);

      v64 = v101;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v64;
      sub_1A87AC424(v98, &v93, v65);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    else
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v66;
    sub_1A88C8D88();
    if (v6 == 3)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v67 = sub_1A87DDCA4(v6);
      v100 = sub_1A870CCE0(&qword_1EB303320);
      *&v99 = v67;
      sub_1A85E99B0(&v99, v98);
      v68 = v101;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v68;
      sub_1A87AC424(v98, &v93, v69);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v70;
    sub_1A88C8D88();
    if (v8)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
    }

    else
    {
      v100 = MEMORY[0x1E69E76D8];
      *&v99 = v7;
      sub_1A85E99B0(&v99, v98);
      v71 = v101;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v71;
      sub_1A87AC424(v98, &v93, v72);
      sub_1A8717360(&v93);
      v101 = v97;
    }

    *&v99 = sub_1A88C82E8();
    *(&v99 + 1) = v73;
    sub_1A88C8D88();
    if (v9 == 2)
    {
      sub_1A88BEFF8(&v93, &v99);
      sub_1A85EF638(&v99, &qword_1EB3057B0);
      sub_1A8717360(&v93);
      return v101;
    }

    else
    {
      v100 = v50;
      LOBYTE(v99) = v9 & 1;
      sub_1A85E99B0(&v99, v98);
      v74 = v101;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v74;
      sub_1A87AC424(v98, &v93, v75);
      sub_1A8717360(&v93);
      return v97;
    }
  }

  v76 = v4;
  v77 = v6;
  v78 = v8;
  v79 = v7;
  v15 = *(v2 + 16);
  if (!v15)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_16:
    *(&v94 + 1) = sub_1A870CCE0(&qword_1EB3051D0);
    *&v93 = v18;
    sub_1A85E99B0(&v93, v98);
    v23 = v101;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v23;
    sub_1A87AC424(v98, &v99, v24);
    sub_1A8717360(&v99);
    v101 = v97;
    v7 = v79;
    v6 = v77;
    v8 = v78;
    v4 = v76;
    goto LABEL_17;
  }

  v16 = 0;
  v17 = (v2 + 80);
  v18 = MEMORY[0x1E69E7CC0];
  while (v16 < *(v2 + 16))
  {
    v19 = *v17;
    v93 = *(v17 - 3);
    v94 = *(v17 - 2);
    v95 = *(v17 - 1);
    v96 = v19;
    v20 = RemoteIntentServiceInfo.dictionaryRepresentation.getter();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A87352FC(0, v18[2] + 1, 1, v18);
      v18 = result;
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_1A87352FC((v21 > 1), v22 + 1, 1, v18);
      v18 = result;
    }

    ++v16;
    v18[2] = v22 + 1;
    v18[v22 + 4] = v20;
    v17 += 7;
    if (v15 == v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A881EB04(char a1)
{
  result = 0x4E65636976726573;
  switch(a1)
  {
    case 1:
      result = 0x7365636976726573;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E617254656C6966;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7374616863;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x436F547361696C61;
      break;
    case 12:
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 16:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A881ECF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8820808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A881ED1C(uint64_t a1)
{
  v2 = sub_1A881F604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A881ED58(uint64_t a1)
{
  v2 = sub_1A881F604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentSetupInfo.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB307190);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v41 = v1[2];
  v42 = v7;
  v10 = v1[5];
  v39 = v1[4];
  v40 = v9;
  v11 = v1[7];
  v35 = v1[6];
  v36 = v10;
  v34 = v11;
  LODWORD(v7) = *(v1 + 64);
  v37 = v1[9];
  v32 = *(v1 + 80);
  v33 = v7;
  v12 = v1[11];
  v38 = *(v1 + 96);
  v13 = v1[14];
  v30 = v1[13];
  v31 = v12;
  v29 = v13;
  v28 = *(v1 + 120);
  v14 = v1[16];
  v26 = v1[17];
  v27 = v14;
  v25 = *(v1 + 144);
  v24 = v1[19];
  v23 = *(v1 + 160);
  v15 = *(v1 + 161);
  sub_1A870C278(a1, a1[3]);
  sub_1A881F604();

  sub_1A88C95C8();
  v45 = v8;
  v44 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  v16 = v43;
  sub_1A88C9228();
  if (v16)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v19 = v40;
    v18 = v41;
    LODWORD(v43) = v15;
    v22 = v4;

    v45 = v42;
    v44 = 1;
    sub_1A870CCE0(&qword_1EB3071A0);
    sub_1A882031C(&qword_1EB3071A8, sub_1A881F658);
    sub_1A88C9228();
    v44 = 2;
    if (v18)
    {
      v45 = v18;

      sub_1A870CCE0(&qword_1EB304660);
      sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
      sub_1A88C9228();
      v20 = v39;
    }

    else
    {
      v20 = v39;
    }

    v44 = 3;
    if (v19)
    {
      v45 = v19;

      sub_1A870CCE0(&qword_1EB304660);
      sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
      sub_1A88C9228();

      v20 = v39;
    }

    v45 = v20;
    v44 = 4;
    sub_1A870CCE0(&qword_1EB3071B8);
    sub_1A881F6AC();
    sub_1A88C9228();
    LOBYTE(v45) = 5;
    sub_1A88C91C8();
    LOBYTE(v45) = 6;
    sub_1A88C9248();
    LOBYTE(v45) = 7;
    sub_1A88C9248();
    v44 = 8;
    if (v31)
    {
      v45 = v31;

      sub_1A870CCE0(&qword_1EB3071D8);
      sub_1A85FB520(&qword_1EB3071E0, &qword_1EB3071D8);
      sub_1A88C9228();
    }

    LOBYTE(v45) = 9;
    sub_1A88C91D8();
    v44 = 10;
    if (v30)
    {
      v45 = v30;

      sub_1A870CCE0(&qword_1EB3071D8);
      sub_1A85FB520(&qword_1EB3071E0, &qword_1EB3071D8);
      sub_1A88C9228();
    }

    v45 = v29;
    v44 = 11;
    sub_1A870CCE0(&qword_1EB303B88);
    sub_1A88204D4(&qword_1EB3071C8);
    sub_1A88C9228();
    LOBYTE(v45) = 12;
    sub_1A88C91D8();
    LOBYTE(v45) = 13;
    sub_1A88C91C8();
    LOBYTE(v45) = v25;
    v44 = 14;
    sub_1A881F754();
    sub_1A88C9228();
    LOBYTE(v45) = 15;
    sub_1A88C9268();
    LOBYTE(v45) = 16;
    sub_1A88C91D8();
    return (*(v22 + 8))(v6, v3);
  }
}

unint64_t sub_1A881F604()
{
  result = qword_1EB307198;
  if (!qword_1EB307198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307198);
  }

  return result;
}

unint64_t sub_1A881F658()
{
  result = qword_1EB3071B0;
  if (!qword_1EB3071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3071B0);
  }

  return result;
}

unint64_t sub_1A881F6AC()
{
  result = qword_1EB3071C0;
  if (!qword_1EB3071C0)
  {
    sub_1A870CD28(&qword_1EB3071B8);
    sub_1A8820490(&qword_1EB304DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3071C0);
  }

  return result;
}

unint64_t sub_1A881F754()
{
  result = qword_1EB3071D0;
  if (!qword_1EB3071D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3071D0);
  }

  return result;
}

uint64_t RemoteIntentSetupInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = sub_1A870CCE0(&qword_1EB3071E8);
  v5 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v7 = &v33 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A881F604();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
    goto LABEL_4;
  }

  sub_1A870CCE0(&qword_1EB303100);
  LOBYTE(v52) = 0;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C90B8();
  v47 = v5;
  v9 = v63[0];
  sub_1A870CCE0(&qword_1EB3071A0);
  LOBYTE(v52) = 1;
  sub_1A882031C(&qword_1EB3071F0, sub_1A8820394);
  sub_1A88C90B8();
  v43 = v63[0];
  v44 = v9;
  sub_1A870CCE0(&qword_1EB304660);
  v50 = 0;
  LOBYTE(v52) = 2;
  sub_1A85FB520(&qword_1EB304668, &qword_1EB304660);
  v10 = v50;
  v11 = v50;
  sub_1A88C90B8();
  if (v11)
  {
    (*(v47 + 8))(v7, v92);
    v48 = 0;
    sub_1A85F1084(a1);

    if (!v10)
    {
      v45 = 0;

      goto LABEL_5;
    }

LABEL_4:

LABEL_5:
  }

  v12 = v63[0];
  if (v63[0] == 1)
  {
    v12 = 0;
  }

  v48 = v12;
  LOBYTE(v52) = 3;
  sub_1A88C90B8();
  v13 = v63[0];
  if (v63[0] == 1)
  {
    v13 = 0;
  }

  v45 = v13;
  sub_1A870CCE0(&qword_1EB3071B8);
  LOBYTE(v52) = 4;
  sub_1A88203E8();
  sub_1A88C90B8();
  v46 = v63[0];
  LOBYTE(v63[0]) = 5;
  v42 = sub_1A88C9058();
  v51 = v14;
  LOBYTE(v63[0]) = 6;
  v41 = sub_1A88C90D8();
  v91 = v15 & 1;
  LOBYTE(v63[0]) = 7;
  v39 = sub_1A88C90D8();
  v89 = v16 & 1;
  v17 = sub_1A870CCE0(&qword_1EB3071D8);
  LOBYTE(v52) = 8;
  v18 = sub_1A85FB520(&qword_1EB307208, &qword_1EB3071D8);
  v49 = v17;
  v40 = v18;
  sub_1A88C90B8();
  if (v63[0] == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v63[0];
  }

  LOBYTE(v63[0]) = 9;
  v38 = sub_1A88C9068();
  LOBYTE(v52) = 10;
  sub_1A88C90B8();
  if (v63[0] == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v63[0];
  }

  sub_1A870CCE0(&qword_1EB303B88);
  LOBYTE(v52) = 11;
  sub_1A88204D4(&qword_1EB307210);
  sub_1A88C90B8();
  v50 = v63[0];
  LOBYTE(v63[0]) = 12;
  LODWORD(v40) = sub_1A88C9068();
  LOBYTE(v63[0]) = 13;
  v37 = sub_1A88C9058();
  v49 = v21;
  LOBYTE(v52) = 14;
  sub_1A8820540();
  sub_1A88C90B8();
  v36 = LOBYTE(v63[0]);
  LOBYTE(v63[0]) = 15;
  v35 = sub_1A88C90F8();
  v84 = v22 & 1;
  v83 = 16;
  v23 = sub_1A88C9068();
  (*(v47 + 8))(v7, v92);
  *&v52 = v44;
  *(&v52 + 1) = v43;
  *&v53 = v48;
  *(&v53 + 1) = v45;
  *&v54 = v46;
  *(&v54 + 1) = v42;
  *&v55 = v51;
  *(&v55 + 1) = v41;
  LODWORD(v92) = v91;
  LOBYTE(v56) = v91;
  *(&v56 + 1) = *v90;
  DWORD1(v56) = *&v90[3];
  *(&v56 + 1) = v39;
  v34 = v89;
  LOBYTE(v57) = v89;
  DWORD1(v57) = *&v88[3];
  *(&v57 + 1) = *v88;
  *(&v57 + 1) = v19;
  LOBYTE(v58) = v38;
  *(&v58 + 1) = *v87;
  DWORD1(v58) = *&v87[3];
  v24 = v49;
  *(&v58 + 1) = v20;
  *&v59 = v50;
  BYTE8(v59) = v40;
  *(&v59 + 9) = *v86;
  HIDWORD(v59) = *&v86[3];
  *&v60 = v37;
  *(&v60 + 1) = v49;
  LOBYTE(v61) = v36;
  DWORD1(v61) = *&v85[3];
  *(&v61 + 1) = *v85;
  *(&v61 + 1) = v35;
  LODWORD(v47) = v84;
  LOBYTE(v62) = v84;
  HIBYTE(v62) = v23;
  v25 = v53;
  *a2 = v52;
  *(a2 + 16) = v25;
  v26 = v54;
  v27 = v55;
  v28 = v57;
  *(a2 + 64) = v56;
  *(a2 + 80) = v28;
  *(a2 + 32) = v26;
  *(a2 + 48) = v27;
  v29 = v58;
  v30 = v59;
  v31 = v60;
  v32 = v61;
  *(a2 + 160) = v62;
  *(a2 + 128) = v31;
  *(a2 + 144) = v32;
  *(a2 + 96) = v29;
  *(a2 + 112) = v30;
  sub_1A8782278(&v52, v63);
  sub_1A85F1084(a1);
  v63[0] = v44;
  v63[1] = v43;
  v63[2] = v48;
  v63[3] = v45;
  v63[4] = v46;
  v63[5] = v42;
  v63[6] = v51;
  v63[7] = v41;
  v64 = v92;
  *v65 = *v90;
  *&v65[3] = *&v90[3];
  v66 = v39;
  v67 = v34;
  *v68 = *v88;
  *&v68[3] = *&v88[3];
  v69 = v19;
  v70 = v38;
  *v71 = *v87;
  *&v71[3] = *&v87[3];
  v72 = v20;
  v73 = v50;
  v74 = v40;
  *v75 = *v86;
  *&v75[3] = *&v86[3];
  v76 = v37;
  v77 = v24;
  v78 = v36;
  *&v79[3] = *&v85[3];
  *v79 = *v85;
  v80 = v35;
  v81 = v47;
  v82 = v23;
  return sub_1A8782114(v63);
}

uint64_t sub_1A882031C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB3071A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8820394()
{
  result = qword_1EB3071F8;
  if (!qword_1EB3071F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3071F8);
  }

  return result;
}

unint64_t sub_1A88203E8()
{
  result = qword_1EB307200;
  if (!qword_1EB307200)
  {
    sub_1A870CD28(&qword_1EB3071B8);
    sub_1A8820490(&qword_1EB304DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307200);
  }

  return result;
}

uint64_t sub_1A8820490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteIntentFileTransfer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A88204D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB303B88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8820540()
{
  result = qword_1EB307218;
  if (!qword_1EB307218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307218);
  }

  return result;
}

__n128 sub_1A88205C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1A8820604(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 162))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A8820660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1A8820704()
{
  result = qword_1EB307220;
  if (!qword_1EB307220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307220);
  }

  return result;
}

unint64_t sub_1A882075C()
{
  result = qword_1EB307228;
  if (!qword_1EB307228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307228);
  }

  return result;
}

unint64_t sub_1A88207B4()
{
  result = qword_1EB307230;
  if (!qword_1EB307230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307230);
  }

  return result;
}

uint64_t sub_1A8820808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891D680 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xED00007372656673 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891D6A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891D6C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891D6E0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7374616863 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891D700 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891D720 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x436F547361696C61 && a2 == 0xEE0070614D44494ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D740 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891D760 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891D780 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891D7A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891D7C0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1A8820D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentFileTransfer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8820DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentFileTransfer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8820E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8820EA0(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentFileTransfer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8820EFC()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307250);
  sub_1A85EF0E4(v0, qword_1EB307250);
  return sub_1A88C7E48();
}

uint64_t sub_1A8820F7C()
{
  v1 = *(v0 + OBJC_IVAR___IMUnlockMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 20));
  sub_1A85F3EAC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 20));

  v2 = v4;

  return v2;
}

uint64_t sub_1A882105C()
{
  v1 = *(v0 + OBJC_IVAR___IMUnlockMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 20));
  sub_1A85F3E94((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 20));

  v2 = v4;

  return v2;
}

uint64_t sub_1A882113C(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR___IMUnlockMonitor_listeners);
    MEMORY[0x1EEE9AC00](result);
    swift_unknownObjectRetain();

    os_unfair_lock_lock((v2 + 24));
    sub_1A8821260((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s5StateVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1A88213C8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB300348);
  sub_1A85EF0E4(v0, qword_1EB300348);
  return sub_1A88C7E48();
}

id sub_1A8821490()
{
  v1 = [v0 telemetryMetrics];
  if (v1)
  {
    v2 = v1;
    sub_1A85E9718(0, &qword_1ED8C9450);
    sub_1A88C81A8();

    v3 = sub_1A88C8188();

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  v5 = [v0 telemetryMetrics];
  if (v5)
  {
    v6 = v5;
    sub_1A85E9718(0, &qword_1ED8C9450);
    sub_1A88C81A8();

    v7 = sub_1A88C8188();

    [v7 mutableCopy];
    sub_1A88C8CB8();

    swift_unknownObjectRelease();
    sub_1A85E9718(0, &qword_1EB300300);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695DF90]);

    return [v8 init];
  }
}

void IMMessageItem.addTelemetryMetric(for:)(uint64_t a1)
{
  v2 = v1;
  v116 = [v1 mutableTelemetryMetrics];
  v4 = [objc_opt_self() __im_dateWithCurrentServerTime];
  if (v4)
  {
    v5 = v4;
    strcpy(&v118, "imagentReceive");
    HIBYTE(v118) = -18;
    v6 = [v116 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v6)
    {
      sub_1A88C8CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      sub_1A85E9718(0, &qword_1ED8C9450);
      if (swift_dynamicCast())
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_1A85EF638(&v120, &qword_1EB3057B0);
    }

    *&v118 = 0x49746E6567616D69;
    *(&v118 + 1) = 0xEF676E696D6F636ELL;
    v20 = [v116 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v20)
    {
      sub_1A88C8CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
    }

    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      sub_1A85E9718(0, &qword_1ED8C9450);
      if (swift_dynamicCast())
      {
LABEL_31:
        [v117 doubleValue];
        v22 = v21;

        goto LABEL_34;
      }
    }

    else
    {
      sub_1A85EF638(&v120, &qword_1EB3057B0);
    }

    v22 = 0.0;
LABEL_34:
    [v5 timeIntervalSince1970];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v25 = v24;
    v26 = 0.0;
    if (v22 != 0.0)
    {
      [v24 doubleValue];
      v26 = v27 - v22;
    }

    if (a1 > 3)
    {
      if (a1 <= 5)
      {
        if (a1 == 4)
        {
          v29 = 0x80000001A891DB70;
          v28 = 0xD000000000000010;
        }

        else
        {
          v29 = 0x80000001A891DB50;
          v28 = 0xD000000000000015;
        }

        goto LABEL_73;
      }

      if (a1 == 6)
      {
        v29 = 0x80000001A891DB30;
        v28 = 0xD000000000000019;
        goto LABEL_73;
      }

      if (a1 == 7)
      {
        v28 = 0x4E746E6567616D69;
        v29 = 0xED0000796669746FLL;
        goto LABEL_73;
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v28 = 0x48746E6567616D69;
          v29 = 0xEE0066666F646E61;
        }

        else
        {
          v28 = 0x49746E6567616D69;
          v29 = 0xEF676E696D6F636ELL;
        }

        goto LABEL_73;
      }

      v28 = 0x52746E6567616D69;
      v29 = 0xEE00657669656365;
      if (!a1)
      {
LABEL_73:
        *&v118 = v28;
        *(&v118 + 1) = v29;
        v41 = [v116 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v41)
        {
          sub_1A88C8CB8();
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
        }

        v120 = v118;
        v121 = v119;
        if (*(&v119 + 1))
        {
          sub_1A85E9718(0, &qword_1ED8C9450);
          if (swift_dynamicCast())
          {
            if (a1 > 3)
            {
              if (a1 <= 5)
              {
                if (a1 == 4)
                {
                  v42 = 0x80000001A891DB70;
                  v43 = 0xD000000000000010;
                }

                else
                {
                  v42 = 0x80000001A891DB50;
                  v43 = 0xD000000000000015;
                }

                goto LABEL_151;
              }

              if (a1 == 6)
              {
                v42 = 0x80000001A891DB30;
                v43 = 0xD000000000000019;
                goto LABEL_151;
              }

              if (a1 == 7)
              {
                v43 = 0x4E746E6567616D69;
                v42 = 0xED0000796669746FLL;
                goto LABEL_151;
              }

LABEL_150:
              v43 = 0;
              v42 = 0xE000000000000000;
              goto LABEL_151;
            }

            if (a1 > 1)
            {
              if (a1 == 2)
              {
                v43 = 0x48746E6567616D69;
                v42 = 0xEE0066666F646E61;
                goto LABEL_151;
              }
            }

            else if (a1)
            {
              if (a1 == 1)
              {
                v42 = 0x80000001A891DB90;
                v43 = 0xD00000000000001ALL;
LABEL_151:
                v113 = v5;
                v115 = v25;
                *&v120 = v43;
                *(&v120 + 1) = v42;
                v76 = v25;
                [v116 __swift_setObject_forKeyedSubscript_];

                swift_unknownObjectRelease();
                if (qword_1EB300340 != -1)
                {
                  swift_once();
                }

                v77 = sub_1A88C7E58();
                sub_1A85EF0E4(v77, qword_1EB300348);
                v78 = v76;
                v79 = v117;
                v80 = v2;
                v81 = sub_1A88C7E38();
                v82 = sub_1A88C89A8();

                if (os_log_type_enabled(v81, v82))
                {
                  v111 = v2;
                  v83 = swift_slowAlloc();
                  v84 = swift_slowAlloc();
                  v85 = swift_slowAlloc();
                  *&v120 = v85;
                  *v83 = 136316162;
                  v86 = 0xE000000000000000;
                  v109 = v82;
                  v108 = v85;
                  if (a1 > 3)
                  {
                    v87 = 0x80000001A891D980;
                    v88 = 0xD000000000000048;
                    v92 = 0x80000001A891D950;
                    v93 = 0xD00000000000002FLL;
                    if (a1 != 7)
                    {
                      v93 = 0;
                      v92 = 0xE000000000000000;
                    }

                    if (a1 != 6)
                    {
                      v88 = v93;
                      v87 = v92;
                    }

                    v90 = 0xD00000000000003ELL;
                    v94 = 0xD000000000000038;
                    if (a1 == 5)
                    {
                      v86 = 0x80000001A891D9D0;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    if (a1 == 4)
                    {
                      v86 = 0x80000001A891DA10;
                    }

                    else
                    {
                      v90 = v94;
                    }

                    v91 = a1 <= 5;
                  }

                  else
                  {
                    v87 = 0x80000001A891DA90;
                    v88 = 0xD000000000000026;
                    if (a1 != 2)
                    {
                      v88 = 0;
                      v87 = 0xE000000000000000;
                    }

                    v89 = 0xD00000000000003CLL;
                    if (a1 == 1)
                    {
                      v86 = 0x80000001A891DAC0;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    v90 = v89;
                    v91 = a1 <= 1;
                  }

                  if (v91)
                  {
                    v95 = v90;
                  }

                  else
                  {
                    v95 = v88;
                  }

                  if (v91)
                  {
                    v96 = v86;
                  }

                  else
                  {
                    v96 = v87;
                  }

                  v97 = sub_1A85F0394(v95, v96, &v120);

                  *(v83 + 4) = v97;
                  *(v83 + 12) = 2112;
                  *(v83 + 14) = v78;
                  *(v83 + 22) = 2048;
                  *(v83 + 24) = v26;
                  *(v83 + 32) = 2112;
                  *(v83 + 34) = v79;
                  *v84 = v115;
                  v84[1] = v79;
                  *(v83 + 42) = 2080;
                  v98 = v78;
                  v99 = v79;
                  v100 = [v80 guid];
                  if (v100)
                  {
                    v101 = v100;
                    v102 = sub_1A88C82E8();
                    v104 = v103;
                  }

                  else
                  {
                    v102 = 7104878;
                    v104 = 0xE300000000000000;
                  }

                  v105 = sub_1A85F0394(v102, v104, &v120);

                  *(v83 + 44) = v105;
                  _os_log_impl(&dword_1A85E5000, v81, v109, "Added telemetry metric %s: %@, elapsed time: %f, overwriting existing value: %@ for message guid: %s", v83, 0x34u);
                  sub_1A870CCE0(&qword_1EB306540);
                  swift_arrayDestroy();
                  MEMORY[0x1AC571F20](v84, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x1AC571F20](v108, -1, -1);
                  MEMORY[0x1AC571F20](v83, -1, -1);

                  v2 = v111;
                }

                else
                {
                }

                v5 = v113;
                v25 = v115;
                goto LABEL_184;
              }

              goto LABEL_150;
            }

LABEL_184:
            *&v120 = 0;
            sub_1A85E9718(0, &qword_1ED8C9450);
            v106 = v116;
            sub_1A88C8198();

            if (v120)
            {
              v107 = sub_1A88C8188();
            }

            else
            {
              v107 = 0;
            }

            [v2 setTelemetryMetrics_];

            return;
          }
        }

        else
        {
          sub_1A85EF638(&v120, &qword_1EB3057B0);
        }

        if (qword_1EB300340 != -1)
        {
          swift_once();
        }

        v44 = sub_1A88C7E58();
        sub_1A85EF0E4(v44, qword_1EB300348);
        v45 = v25;
        v46 = v2;
        v47 = sub_1A88C7E38();
        v48 = sub_1A88C89A8();

        if (os_log_type_enabled(v47, v48))
        {
          v112 = v5;
          v114 = v25;
          v110 = v2;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v120 = v51;
          *v49 = 136315906;
          v52 = 0xE000000000000000;
          if (a1 > 3)
          {
            v53 = 0x80000001A891D980;
            v54 = 0xD000000000000048;
            v60 = 0x80000001A891D950;
            v61 = 0xD00000000000002FLL;
            if (a1 != 7)
            {
              v61 = 0;
              v60 = 0xE000000000000000;
            }

            if (a1 != 6)
            {
              v54 = v61;
              v53 = v60;
            }

            v57 = 0xD00000000000003ELL;
            v62 = 0xD000000000000038;
            if (a1 == 5)
            {
              v52 = 0x80000001A891D9D0;
            }

            else
            {
              v62 = 0;
            }

            if (a1 == 4)
            {
              v52 = 0x80000001A891DA10;
            }

            else
            {
              v57 = v62;
            }

            v59 = a1 <= 5;
          }

          else
          {
            v53 = 0x80000001A891DA90;
            v54 = 0xD000000000000026;
            v55 = 0x80000001A891DA50;
            v56 = 0xD000000000000032;
            if (a1 != 3)
            {
              v56 = 0;
              v55 = 0xE000000000000000;
            }

            if (a1 != 2)
            {
              v54 = v56;
              v53 = v55;
            }

            v57 = 0xD00000000000002DLL;
            v58 = 0xD00000000000003CLL;
            if (a1 == 1)
            {
              v52 = 0x80000001A891DAC0;
            }

            else
            {
              v58 = 0;
            }

            if (a1)
            {
              v57 = v58;
            }

            else
            {
              v52 = 0x80000001A891DB00;
            }

            v59 = a1 <= 1;
          }

          if (v59)
          {
            v63 = v57;
          }

          else
          {
            v63 = v54;
          }

          if (v59)
          {
            v64 = v52;
          }

          else
          {
            v64 = v53;
          }

          v65 = sub_1A85F0394(v63, v64, &v120);

          *(v49 + 4) = v65;
          *(v49 + 12) = 2112;
          *(v49 + 14) = v45;
          *v50 = v45;
          *(v49 + 22) = 2048;
          *(v49 + 24) = v26;
          *(v49 + 32) = 2080;
          v66 = v45;
          v67 = [v46 guid];
          if (v67)
          {
            v68 = v67;
            v69 = sub_1A88C82E8();
            v71 = v70;
          }

          else
          {
            v69 = 7104878;
            v71 = 0xE300000000000000;
          }

          v72 = sub_1A85F0394(v69, v71, &v120);

          *(v49 + 34) = v72;
          _os_log_impl(&dword_1A85E5000, v47, v48, "Added telemetry metric %s: %@, elapsed time: %f, for message guid: %s", v49, 0x2Au);
          sub_1A85EF638(v50, &qword_1EB306540);
          MEMORY[0x1AC571F20](v50, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v51, -1, -1);
          MEMORY[0x1AC571F20](v49, -1, -1);

          v2 = v110;
          v5 = v112;
          v25 = v114;
        }

        else
        {
        }

        v73 = 0xEE00657669656365;
        v74 = 0x52746E6567616D69;
        if (a1 > 3)
        {
          if (a1 <= 5)
          {
            if (a1 == 4)
            {
              v73 = 0x80000001A891DB70;
              v74 = 0xD000000000000010;
            }

            else
            {
              v73 = 0x80000001A891DB50;
              v74 = 0xD000000000000015;
            }

            goto LABEL_146;
          }

          if (a1 == 6)
          {
            v73 = 0x80000001A891DB30;
            v74 = 0xD000000000000019;
            goto LABEL_146;
          }

          if (a1 == 7)
          {
            v74 = 0x4E746E6567616D69;
            v73 = 0xED0000796669746FLL;
            goto LABEL_146;
          }
        }

        else
        {
          if (a1 > 1)
          {
            if (a1 == 2)
            {
              v74 = 0x48746E6567616D69;
              v73 = 0xEE0066666F646E61;
            }

            else
            {
              v74 = 0x49746E6567616D69;
              v73 = 0xEF676E696D6F636ELL;
            }

            goto LABEL_146;
          }

          if (!a1)
          {
LABEL_146:
            *&v120 = v74;
            *(&v120 + 1) = v73;
            v75 = v45;
            [v116 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
            goto LABEL_184;
          }

          if (a1 == 1)
          {
            v73 = 0x80000001A891DB90;
            v74 = 0xD00000000000001ALL;
            goto LABEL_146;
          }
        }

        v74 = 0;
        v73 = 0xE000000000000000;
        goto LABEL_146;
      }

      if (a1 == 1)
      {
        v29 = 0x80000001A891DB90;
        v28 = 0xD00000000000001ALL;
        goto LABEL_73;
      }
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_73;
  }

  if (qword_1EB300340 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1EB300348);
  v8 = v1;
  v9 = sub_1A88C7E38();
  v10 = sub_1A88C89C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v120 = v12;
    *v11 = 136315394;
    v13 = 0xE000000000000000;
    if (a1 > 3)
    {
      v14 = 0x80000001A891D980;
      v15 = 0xD000000000000048;
      v30 = 0x80000001A891D950;
      v31 = 0xD00000000000002FLL;
      if (a1 != 7)
      {
        v31 = 0;
        v30 = 0xE000000000000000;
      }

      if (a1 != 6)
      {
        v15 = v31;
        v14 = v30;
      }

      v18 = 0xD000000000000038;
      if (a1 == 5)
      {
        v13 = 0x80000001A891D9D0;
      }

      else
      {
        v18 = 0;
      }

      if (a1 == 4)
      {
        v18 = 0xD00000000000003ELL;
        v13 = 0x80000001A891DA10;
      }

      v19 = a1 <= 5;
    }

    else
    {
      v14 = 0x80000001A891DA90;
      v15 = 0xD000000000000026;
      v16 = 0x80000001A891DA50;
      v17 = 0xD000000000000032;
      if (a1 != 3)
      {
        v17 = 0;
        v16 = 0xE000000000000000;
      }

      if (a1 != 2)
      {
        v15 = v17;
        v14 = v16;
      }

      v18 = 0xD00000000000003CLL;
      if (a1 == 1)
      {
        v13 = 0x80000001A891DAC0;
      }

      else
      {
        v18 = 0;
      }

      if (!a1)
      {
        v18 = 0xD00000000000002DLL;
        v13 = 0x80000001A891DB00;
      }

      v19 = a1 <= 1;
    }

    if (v19)
    {
      v32 = v18;
    }

    else
    {
      v32 = v15;
    }

    if (v19)
    {
      v33 = v13;
    }

    else
    {
      v33 = v14;
    }

    v34 = sub_1A85F0394(v32, v33, &v120);

    *(v11 + 4) = v34;
    *(v11 + 12) = 2080;
    v35 = [v8 guid];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1A88C82E8();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
    }

    v40 = sub_1A85F0394(v37, v39, &v120);

    *(v11 + 14) = v40;
    _os_log_impl(&dword_1A85E5000, v9, v10, "Failed to add telemetry metric %s to message guid: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v12, -1, -1);
    MEMORY[0x1AC571F20](v11, -1, -1);
  }

  else
  {
  }
}

unint64_t IMMessageItemTelemetryMetricKey.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    v4 = 0xD000000000000048;
    v5 = 0xD00000000000002FLL;
    if (a1 != 7)
    {
      v5 = 0;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000038;
    if (a1 != 5)
    {
      v6 = 0;
    }

    if (a1 == 4)
    {
      v6 = 0xD00000000000003ELL;
    }

    if (a1 <= 5)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000032;
    if (a1 != 3)
    {
      v1 = 0;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000026;
    }

    v2 = 0xD00000000000003CLL;
    if (a1 != 1)
    {
      v2 = 0;
    }

    if (!a1)
    {
      v2 = 0xD00000000000002DLL;
    }

    if (a1 <= 1)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t IMMessageItemTelemetryMetricKey.idsKey.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        return 0xD000000000000010;
      }

      v1 = 5;
      return v1 | 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v1 = 9;
      return v1 | 0xD000000000000010;
    }

    if (a1 == 7)
    {
      return 0x4E746E6567616D69;
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x52746E6567616D69;
    }

    if (a1 == 1)
    {
      v1 = 10;
      return v1 | 0xD000000000000010;
    }

    return 0;
  }

  if (a1 == 2)
  {
    return 0x48746E6567616D69;
  }

  else
  {
    return 0x49746E6567616D69;
  }
}

Swift::Void __swiftcall IMMessageItem.addTelemetryMetrics(from:)(Swift::OpaquePointer from)
{
  v3 = [v1 mutableTelemetryMetrics];
  sub_1A878CD8C(from._rawValue);
  v4 = sub_1A88C8188();

  [v3 addEntriesFromDictionary_];

  v22 = 0;
  sub_1A85E9718(0, &qword_1ED8C9450);
  v20 = v3;
  sub_1A88C8198();

  [v1 setTelemetryMetrics_];
  if (qword_1EB300340 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB300348);

  v6 = v1;
  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_1A88C81B8();
    v13 = sub_1A85F0394(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [v6 guid];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1A88C82E8();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_1A85F0394(v16, v18, &v22);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_1A85E5000, v7, v8, "Added telemetry metrics dictionary: [%s] to message guid: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }
}

void IMMessageItem.setTelemetryMetricsReasonCode(_:subReasonCode:pathID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 formatWithReasonCode:a1 subReasonCode:a2 pathID:a3];
  [v3 setTelemetryMetricsReasonCode_];
}

uint64_t sub_1A88230B8()
{
  sub_1A88C8E08();

  v0 = sub_1A88C9348();
  MEMORY[0x1AC56ECB0](v0);

  MEMORY[0x1AC56ECB0](23354, 0xE200000000000000);
  v1 = sub_1A88C9348();
  MEMORY[0x1AC56ECB0](v1);

  MEMORY[0x1AC56ECB0](46, 0xE100000000000000);
  v2 = sub_1A88C9348();
  MEMORY[0x1AC56ECB0](v2);

  MEMORY[0x1AC56ECB0](7170350, 0xE300000000000000);
  v3 = sub_1A88C9348();
  MEMORY[0x1AC56ECB0](v3);

  MEMORY[0x1AC56ECB0](93, 0xE100000000000000);
  return 118;
}

uint64_t sub_1A8823258()
{
  v1 = [v0 messageSummaryInfo];
  if (!v1)
  {
    v25 = 0u;
    v24 = 0u;
    goto LABEL_31;
  }

  v2 = v1;
  v3 = sub_1A88C81A8();

  *&v21[0] = sub_1A88C82E8();
  *(&v21[0] + 1) = v4;
  sub_1A88C8D88();
  if (!*(v3 + 16) || (v5 = sub_1A8602F10(&v22), (v6 & 1) == 0))
  {

    sub_1A8717360(&v22);
    v24 = 0u;
    v25 = 0u;
    goto LABEL_31;
  }

  sub_1A85F1028(*(v3 + 56) + 32 * v5, &v24);
  sub_1A8717360(&v22);

  if (!*(&v25 + 1))
  {
LABEL_31:
    sub_1A860169C(&v24);
    return 0;
  }

  sub_1A870CCE0(&unk_1EB3091D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = v22;
  if (!*(v22 + 16))
  {
LABEL_35:

    return 0;
  }

  v8 = -1 << *(v22 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v22 + 64);
  v11 = (63 - v8) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_21:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1A85F1028(*(v7 + 56) + ((v14 << 11) | (32 * v17)), &v22);
LABEL_22:
    v25 = v23;
    v24 = v22;
    if (!*(&v23 + 1))
    {
      sub_1A85EF290();
      goto LABEL_35;
    }

    sub_1A85E99B0(&v24, v21);
    sub_1A85F1028(v21, v19);
    sub_1A870CCE0(&qword_1EB3051D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = 0;
    }

    sub_1A85F1084(v21);
    result = v20;
    if (v20)
    {
      v18 = *(v20 + 16);

      if (v18 >= 2)
      {
        sub_1A85EF290();

        return 1;
      }
    }
  }

  if (v11 <= v13 + 1)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v13 = v16;
      goto LABEL_22;
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88235C8()
{
  v1 = [v0 messageSummaryInfo];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_1A88C81A8();

  v63 = sub_1A88C82E8();
  v64 = v4;
  sub_1A88C8D88();
  if (!*(v3 + 16) || (v5 = sub_1A8602F10(&v65), (v6 & 1) == 0))
  {

    sub_1A8717360(&v65);
LABEL_11:
    v66 = 0u;
    v67 = 0u;
    goto LABEL_12;
  }

  sub_1A85F1028(*(v3 + 56) + 32 * v5, &v66);
  sub_1A8717360(&v65);

  if (!*(&v67 + 1))
  {
LABEL_12:
    sub_1A860169C(&v66);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A870CCE0(&unk_1EB3091D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v65;
  v8 = *(v65 + 2);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1A87365FC(*(v65 + 2), 0);
  v10 = sub_1A8739EC4(&v65, v9 + 32, v8, v7);
  swift_bridgeObjectRetain_n();
  sub_1A85EF290();
  if (v10 != v8)
  {
    goto LABEL_62;
  }

  v65 = v9;
  sub_1A8823C30(&v65);
  v52[1] = 0;

  v12 = v65;
  v13 = *(v65 + 2);
  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_55:

    return v16;
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v59 = v65 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v55 = v7;
  v54 = v65;
  v53 = v13;
  while (1)
  {
    v11 = *(v12 + 2);
    if (v14 >= v11)
    {
      break;
    }

    if (*(v7 + 2))
    {
      v18 = &v59[16 * v14];
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_1A85F5F40(v19, v20);
      if (v22)
      {
        sub_1A85F1028(*(v7 + 7) + 32 * v21, &v65);
        sub_1A870CCE0(&qword_1EB3051D0);
        if (swift_dynamicCast())
        {
          v56 = v20;
          v57 = v14;
          v58 = v16;
          v23 = 0;
          v62 = v66;
          v24 = *(v66 + 16);
          if (v24 >= 2)
          {
            v25 = (v24 - 1);
          }

          else
          {
            v25 = 0;
          }

          v60 = v15;
LABEL_25:
          if (v25 <= v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v25;
          }

          v61 = v26;
          v11 = v23;
          while (1)
          {
            if (v25 == v11)
            {

              swift_unknownObjectRelease();
              v7 = v55;
              v12 = v54;
              v14 = v57;
              v16 = v58;
              v13 = v53;
              v15 = MEMORY[0x1E69E7CC0];
              v11 = v60;
              goto LABEL_39;
            }

            if (v61 == v11)
            {
              break;
            }

            v23 = v11 + 1;
            v27 = objc_allocWithZone(IMMessagePartHistoricalContent);

            v28 = sub_1A88C8188();
            v29 = [v27 initWithMessageSummaryInfoDictionary_];

            v30 = [v29 messagePartText];
            v31 = [v30 string];

            sub_1A88C82E8();
            v32 = sub_1A88C8318();
            v33 = *(v32 - 8);
            MEMORY[0x1EEE9AC00](v32);
            v35 = v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1A88C8308();
            v36 = sub_1A88C82F8();
            v38 = v37;

            (*(v33 + 8))(v35, v32);
            v11 = v23;
            if (v38 >> 60 != 15)
            {
              v39 = v60;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = sub_1A8735DCC(0, *(v39 + 2) + 1, 1, v39);
              }

              v41 = *(v39 + 2);
              v40 = *(v39 + 3);
              v60 = v39;
              if (v41 >= v40 >> 1)
              {
                v60 = sub_1A8735DCC((v40 > 1), v41 + 1, 1, v60);
              }

              v42 = v60;
              *(v60 + 2) = v41 + 1;
              v43 = &v42[16 * v41];
              *(v43 + 4) = v36;
              *(v43 + 5) = v38;
              goto LABEL_25;
            }
          }

          __break(1u);
          break;
        }
      }
    }

    v11 = v15;
LABEL_39:
    v44 = *(v11 + 2);
    v45 = *(v16 + 2);
    v46 = v45 + v44;
    if (__OFADD__(v45, v44))
    {
      goto LABEL_58;
    }

    v47 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v46 <= *(v16 + 3) >> 1)
    {
      if (*(v47 + 2))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v45 <= v46)
      {
        v49 = v45 + v44;
      }

      else
      {
        v49 = v45;
      }

      v16 = sub_1A8735DCC(isUniquelyReferenced_nonNull_native, v49, 1, v16);
      if (*(v47 + 2))
      {
LABEL_48:
        v11 = *(v16 + 2);
        if ((*(v16 + 3) >> 1) - v11 < v44)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v44)
        {
          v50 = *(v16 + 2);
          v51 = __OFADD__(v50, v44);
          v11 = (v50 + v44);
          if (v51)
          {
            goto LABEL_61;
          }

          *(v16 + 2) = v11;
        }

        goto LABEL_16;
      }
    }

    if (v44)
    {
      goto LABEL_59;
    }

LABEL_16:
    if (++v14 == v13)
    {
      goto LABEL_55;
    }
  }

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

  __break(1u);
  return result;
}

uint64_t sub_1A8823C30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A8885A90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A8823C9C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A8823C9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A88C9338();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A88C8658();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A8823E64(v7, v8, a1, v4);
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
    return sub_1A8823D94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A8823D94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1A88C9398(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A8823E64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1A8885A28(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1A8824440((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1A88C9398();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A88C9398();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A873586C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1A873586C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1A8824440((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A8885A28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1A888599C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1A88C9398(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}