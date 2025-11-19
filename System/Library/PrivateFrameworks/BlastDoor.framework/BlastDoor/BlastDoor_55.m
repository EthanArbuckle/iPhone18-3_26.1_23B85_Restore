void (*sub_2144B4CD8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_21404F7E0(v9, v10);
  return sub_2144B4D84;
}

uint64_t sub_2144B4DB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144B4E4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144B4F14(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144B5064(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2144B5150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144B51C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144B5258(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2144B5304;
}

uint64_t sub_2144B54E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144B557C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144B5644(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144B5794(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2144B5880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144B58F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144B5988(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2144B95C8;
}

uint64_t sub_2144B5A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 68);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B5B10(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B5BC4;
  }

  return result;
}

uint64_t sub_2144B5BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B5C34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B5CB8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B5D6C;
}

uint64_t sub_2144B5D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 72);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B5E4C(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_2144B5F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B5F6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B5FF0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2144B60A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  v4 = *(v3 + 24);
  if (v4 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 16);
    *a2 = v5;
    a2[1] = v4;

    return sub_213FDCA18(v5, v4);
  }

  return result;
}

uint64_t sub_2144B6144(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144B620C(uint64_t a1, unint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144B62EC(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 24);
  if (v5 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 16);
    *a1 = v6;
    *(a1 + 8) = v5;
    sub_213FDCA18(v6, v5);
    return sub_2144B95D4;
  }

  return result;
}

uint64_t sub_2144B63A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2144B64E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_21404F7E0(v6, v7);
}

uint64_t sub_2144B6554(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_21404F7E0(v4, v5);

  result = sub_214032564(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144B65EC(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_21404F7E0(v9, v10);
  return sub_2144B95D8;
}

void sub_2144B6698(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5] + *(*a1 + 9);
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 8);
  v11 = *(v6 + 16);
  v13 = *(v6 + 24);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 8);

    a3(v11, v13);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v20;
  }

  free(v5);
}

uint64_t sub_2144B67CC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2144B6820(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*sub_2144B687C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6910;
  }

  return result;
}

void (*sub_2144B6940(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2140305F8;
}

uint64_t sub_2144B69E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 56);
    *a2 = *(result + 48);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144B6A74(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 56);
    *a1 = *(v1 + 48);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6B08;
  }

  return result;
}

uint64_t sub_2144B6B3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 40);

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 57) = v7;
  *(a2 + 58) = v8;
  return result;
}

void (*sub_2144B6BB0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  v9 = *(v1 + 58);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6C50;
}

void sub_2144B6C50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 40);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
    *(v3 + 58) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 40);

    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    *(v3 + 57) = v8;
    *(v3 + 58) = v9;
  }

  free(v2);
}

uint64_t sub_2144B6D10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 89))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 88);
    *a2 = *(result + 80);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144B6DA4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 89))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 88);
    *a1 = *(v1 + 80);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6E38;
  }

  return result;
}

uint64_t sub_2144B6E6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 72);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 89) = v7;
  *(a2 + 90) = v8;
  return result;
}

void (*sub_2144B6EE0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 89);
  v9 = *(v1 + 90);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6F80;
}

void sub_2144B6F80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 72);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    *(v3 + 89) = v8;
    *(v3 + 90) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 72);

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    *(v3 + 89) = v8;
    *(v3 + 90) = v9;
  }

  free(v2);
}

uint64_t sub_2144B71E0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 24);
    if (!v2 || (v3 = *(a2 + 24)) == 0)
    {
LABEL_19:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *(v2 + 16);
    if (v4 == *(v3 + 16))
    {
      if (!v4 || v2 == v3)
      {
        return 1;
      }

      v6 = (v2 + 32);
      v7 = (v3 + 32);
      while (v4)
      {
        v9 = *v6++;
        v8 = v9;
        v10 = *v7++;
        result = v8 == v10;
        if (v8 != v10 || v4-- == 1)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_2144B72B0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 25) & 1) == 0 && (*(a2 + 25) & 1) == 0)
  {
    v2 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
      if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
      {
        return v3 & 1;
      }
    }

    if ((*(a1 + 57) & 1) == 0 && (*(a2 + 57) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        if ((*(a2 + 56) & 1) == 0)
        {
LABEL_12:
          v3 = 0;
          return v3 & 1;
        }
      }

      else
      {
        v3 = 0;
        if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
        {
          return v3 & 1;
        }
      }

      if ((*(a1 + 89) & 1) == 0 && (*(a2 + 89) & 1) == 0)
      {
        if (*(a1 + 88))
        {
          v3 = *(a2 + 88);
        }

        else
        {
          v3 = (*(a1 + 80) == *(a2 + 80)) & ~*(a2 + 88);
        }

        return v3 & 1;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B73BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v42 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = *(v18 + 48);
  v43 = a1;
  sub_213FB2E54(a1, &v39 - v19, &qword_27C913090, &unk_2146E9DB0);
  v44 = a2;
  sub_213FB2E54(a2, &v20[v21], &qword_27C913090, &unk_2146E9DB0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      v39 = v5;
      sub_213FB2DF4(v20, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_8;
    }

LABEL_6:
    v23 = v20;
LABEL_14:
    sub_213FB2DF4(v23, &qword_27C913180, &qword_214739C58);
    goto LABEL_15;
  }

  sub_213FB2E54(v20, v13, &qword_27C913090, &unk_2146E9DB0);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_6;
  }

  v24 = *(v5 + 32);
  v25 = &v20[v21];
  v26 = v5;
  v27 = v41;
  v24(v41, v25, v4);
  sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578]);
  v28 = sub_2146D9578();
  v39 = v26;
  v29 = *(v26 + 8);
  v29(v27, v4);
  v29(v13, v4);
  sub_213FB2DF4(v20, &qword_27C913090, &unk_2146E9DB0);
  if ((v28 & 1) == 0)
  {
LABEL_15:
    v33 = 0;
    return v33 & 1;
  }

LABEL_8:
  v30 = *(type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0) + 20);
  v31 = *(v14 + 48);
  v32 = v42;
  sub_213FB2E54(v43 + v30, v42, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v44 + v30, v32 + v31, &qword_27C913090, &unk_2146E9DB0);
  if (v22(v32, 1, v4) != 1)
  {
    v34 = v40;
    sub_213FB2E54(v32, v40, &qword_27C913090, &unk_2146E9DB0);
    if (v22((v32 + v31), 1, v4) != 1)
    {
      v36 = v39;
      v37 = v41;
      (*(v39 + 32))(v41, v32 + v31, v4);
      sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578]);
      v33 = sub_2146D9578();
      v38 = *(v36 + 8);
      v38(v37, v4);
      v38(v34, v4);
      sub_213FB2DF4(v32, &qword_27C913090, &unk_2146E9DB0);
      return v33 & 1;
    }

    (*(v39 + 8))(v34, v4);
    goto LABEL_13;
  }

  if (v22((v32 + v31), 1, v4) != 1)
  {
LABEL_13:
    v23 = v32;
    goto LABEL_14;
  }

  sub_213FB2DF4(v32, &qword_27C913090, &unk_2146E9DB0);
  v33 = 1;
  return v33 & 1;
}

BOOL sub_2144B792C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v6 || (sub_2143D5B78(v4, v6) & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  result = (v5 | v7) == 0;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    v10 = sub_2143D5CDC(v5, v7);

    return v10 & 1;
  }

  return result;
}

uint64_t sub_2144B79B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken();
  v163 = *(v4 - 8);
  v5 = *(v163 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = (&v155 - v10);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917540, &unk_214751950);
  v11 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v165 = &v155 - v12;
  v172 = sub_2146D8B88();
  v170 = *(v172 - 8);
  v13 = *(v170 + 64);
  MEMORY[0x28223BE20](v172);
  v167 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v164 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v168 = &v155 - v19;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  v20 = *(*(v171 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v171);
  v166 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v169 = &v155 - v23;
  v24 = sub_2146D8B08();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v155 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v155 - v35;
  v37 = *(a1 + 24);
  if (v37 == 1)
  {
    goto LABEL_147;
  }

  v160 = v7;
  v38 = *(a2 + 24);
  if (v38 == 1)
  {
    goto LABEL_147;
  }

  v39 = *(a1 + 16);
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_94;
    }

    if (v39 != *(a2 + 16) || v37 != v38)
    {
      v40 = *(a1 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    if (v38)
    {
      goto LABEL_94;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v39, 0);
  }

  v157 = v4;
  v41 = type metadata accessor for IDSHomeKitInvitation(0);
  v42 = *(v41 + 20);
  v43 = a1;
  v44 = *(v33 + 48);
  v158 = v43;
  v159 = v41;
  sub_213FB2E54(v43 + v42, v36, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v42, &v36[v44], &qword_27C913090, &unk_2146E9DB0);
  v45 = *(v25 + 48);
  if (v45(v36, 1, v24) == 1)
  {
    if (v45(&v36[v44], 1, v24) == 1)
    {
      sub_213FB2DF4(v36, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_18;
    }

LABEL_16:
    sub_213FB2DF4(v36, &qword_27C913180, &qword_214739C58);
    goto LABEL_94;
  }

  sub_213FB2E54(v36, v32, &qword_27C913090, &unk_2146E9DB0);
  if (v45(&v36[v44], 1, v24) == 1)
  {
    (*(v25 + 8))(v32, v24);
    goto LABEL_16;
  }

  (*(v25 + 32))(v28, &v36[v44], v24);
  sub_2144B8F78(&unk_27C913190, MEMORY[0x277CC9578]);
  v46 = sub_2146D9578();
  v47 = *(v25 + 8);
  v47(v28, v24);
  v47(v32, v24);
  sub_213FB2DF4(v36, &qword_27C913090, &unk_2146E9DB0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_18:
  v48 = v159[6];
  v50 = *(v158 + v48);
  v49 = *(v158 + v48 + 8);
  v52 = *(v158 + v48 + 16);
  v51 = *(v158 + v48 + 24);
  v53 = *(v158 + v48 + 32);
  v156 = a2;
  v54 = a2 + v48;
  v56 = *v54;
  v55 = *(v54 + 8);
  v57 = *(v54 + 16);
  v58 = *(v54 + 32);
  if (!v49)
  {
    if (!v55)
    {
      sub_2142F56E4(v50, 0);
      sub_2142F56E4(v56, 0);
      sub_2142F5584(v50, 0);
      goto LABEL_29;
    }

LABEL_26:
    sub_2142F56E4(v50, v49);
    sub_2142F56E4(v56, v55);
    sub_2142F5584(v50, v49);
    sub_2142F5584(v56, v55);
    goto LABEL_94;
  }

  if (!v55)
  {
    goto LABEL_26;
  }

  v59 = *v54;
  if (*&v50 != *&v56)
  {
    sub_2142F56E4(v50, v49);
    sub_2142F56E4(v56, v55);
    sub_2142F5584(v56, v55);
    sub_2142F5584(v50, v49);
    goto LABEL_94;
  }

  if (!v51 || !*(v54 + 24))
  {
    goto LABEL_147;
  }

  LODWORD(v155) = sub_2143D7490(v51, *(v54 + 24));
  sub_2142F56E4(v50, v49);
  sub_2142F56E4(v56, v55);
  sub_2142F5584(v56, v55);
  sub_2142F5584(v50, v49);
  if ((v155 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_29:
  v60 = v158;
  v61 = v159[7];
  v62 = *(v158 + v61);
  v63 = v156;
  v64 = *(v156 + v61);
  if (v62 == 2)
  {
    if (v64 != 2)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v65 = 0;
    if (v64 == 2 || ((v64 ^ v62) & 1) != 0)
    {
      return v65 & 1;
    }
  }

  v66 = v159[8];
  v67 = v158 + v66;
  if (*(v158 + v66 + 25))
  {
    goto LABEL_147;
  }

  v68 = v156 + v66;
  if (*(v68 + 25))
  {
    goto LABEL_147;
  }

  v69 = *(v68 + 24);
  if (*(v67 + 24))
  {
    if ((*(v68 + 24) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v65 = 0;
    if ((*(v68 + 24) & 1) != 0 || *(v67 + 16) != *(v68 + 16))
    {
      return v65 & 1;
    }
  }

  v70 = v159[9];
  v71 = *(v158 + v70);
  v72 = *(v156 + v70);
  if (v71 == 2)
  {
    if (v72 != 2)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v65 = 0;
    if (v72 == 2 || ((v72 ^ v71) & 1) != 0)
    {
      return v65 & 1;
    }
  }

  v73 = v159[10];
  v74 = *(v158 + v73);
  v75 = *(v158 + v73 + 8);
  v76 = (v156 + v73);
  v77 = *v76;
  v78 = v76[1];
  if (v74 == 1)
  {
    sub_2142F5800(1);
    if (v77 == 1)
    {
      sub_2142F5800(1);
      v79 = 1;
LABEL_49:
      sub_2142F56A0(v79);
      goto LABEL_50;
    }

    sub_2142F5800(v77);
    goto LABEL_56;
  }

  if (v77 == 1)
  {
    sub_2142F5800(v74);
    sub_2142F5800(1);
    sub_2142F5800(v74);

LABEL_56:
    sub_2142F56A0(v74);
    v86 = v77;
LABEL_93:
    sub_2142F56A0(v86);
    goto LABEL_94;
  }

  if (v74)
  {
    if (!v77)
    {
      sub_2142F5800(v74);
      sub_2142F5800(0);
      sub_2142F5800(v74);
      v89 = 0;
      goto LABEL_92;
    }

    if ((sub_2143D5B78(v74, *v76) & 1) == 0)
    {
      sub_2142F5800(v74);
      sub_2142F5800(v77);
      v87 = v74;
LABEL_66:
      sub_2142F5800(v87);
      v89 = v77;
LABEL_92:
      sub_2142F56A0(v89);

      v86 = v74;
      goto LABEL_93;
    }
  }

  else if (v77)
  {
    sub_2142F5800(0);
    sub_2142F5800(v77);
    v87 = 0;
    goto LABEL_66;
  }

  if (!v75)
  {
    sub_2142F5800(v74);
    if (!v78)
    {
      sub_2142F5800(v77);
      sub_2142F5800(v74);
      sub_2142F56A0(v77);

      v79 = v74;
      goto LABEL_49;
    }

    sub_2142F5800(v77);
    v87 = v74;
    goto LABEL_66;
  }

  if (!v78)
  {
    sub_2142F5800(v74);
    sub_2142F5800(v77);
    sub_2142F5800(v74);
    v89 = v77;
    goto LABEL_92;
  }

  sub_2142F5800(v74);
  sub_2142F5800(v77);
  sub_2142F5800(v74);

  v90 = sub_2143D5CDC(v75, v78);

  sub_2142F56A0(v77);

  sub_2142F56A0(v74);
  if ((v90 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_50:
  v80 = v159[11];
  v81 = *(v171 + 48);
  v82 = v169;
  sub_213FB2E54(v60 + v80, v169, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v63 + v80, v82 + v81, &unk_27C904F30, &unk_2146EFA20);
  v83 = v170;
  v84 = *(v170 + 48);
  v85 = v172;
  if (v84(v82, 1, v172) == 1)
  {
    if (v84(v82 + v81, 1, v85) == 1)
    {
      v155 = v84;
      sub_213FB2DF4(v82, &unk_27C904F30, &unk_2146EFA20);
      goto LABEL_72;
    }

LABEL_63:
    sub_213FB2DF4(v82, &qword_27C904F40, &qword_21477E730);
    goto LABEL_94;
  }

  v88 = v168;
  sub_213FB2E54(v82, v168, &unk_27C904F30, &unk_2146EFA20);
  if (v84(v82 + v81, 1, v85) == 1)
  {
    (*(v83 + 8))(v88, v85);
    goto LABEL_63;
  }

  v155 = v84;
  v91 = v167;
  (*(v83 + 32))(v167, v82 + v81, v85);
  sub_2144B8F78(&qword_27C904F48, MEMORY[0x277CC95F0]);
  v92 = sub_2146D9578();
  v93 = *(v83 + 8);
  v93(v91, v85);
  v93(v88, v85);
  sub_213FB2DF4(v82, &unk_27C904F30, &unk_2146EFA20);
  if ((v92 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_72:
  v94 = v159[12];
  v95 = v158 + v94;
  v96 = *(v158 + v94 + 24);
  if (v96 >> 60 == 11)
  {
    goto LABEL_147;
  }

  v97 = *(v63 + v94 + 24);
  if (v97 >> 60 == 11)
  {
    goto LABEL_147;
  }

  v98 = *(v95 + 16);
  v99 = *(v63 + v94 + 16);
  if (v96 >> 60 == 15)
  {
    if (v97 >> 60 == 15)
    {
      sub_21404F7E0(*(v95 + 16), *(v95 + 24));
      sub_21404F7E0(v99, v97);
      sub_213FDC6BC(v98, v96);
      goto LABEL_83;
    }

LABEL_79:
    sub_21404F7E0(*(v95 + 16), *(v95 + 24));
    sub_21404F7E0(v99, v97);
    sub_213FDC6BC(v98, v96);
    sub_213FDC6BC(v99, v97);
    goto LABEL_94;
  }

  if (v97 >> 60 == 15)
  {
    goto LABEL_79;
  }

  sub_21404F7E0(*(v95 + 16), *(v95 + 24));
  sub_21404F7E0(v99, v97);
  sub_21404F7E0(v98, v96);
  sub_21404F7E0(v99, v97);
  v100 = sub_214466780(v98, v96, v99, v97);
  sub_213FDC6BC(v99, v97);
  sub_214032564(v99, v97);
  sub_214032564(v98, v96);
  sub_213FDC6BC(v98, v96);
  if ((v100 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_83:
  v101 = v159[13];
  v102 = v158 + v101;
  v103 = *(v158 + v101 + 24);
  if (v103 == 1)
  {
    goto LABEL_147;
  }

  v104 = v63 + v101;
  v105 = *(v104 + 24);
  if (v105 == 1)
  {
    goto LABEL_147;
  }

  v106 = *(v102 + 16);
  if (v103)
  {
    if (!v105)
    {
      goto LABEL_94;
    }

    if (v106 != *(v104 + 16) || v103 != v105)
    {
      v107 = *(v102 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    if (v105)
    {
      goto LABEL_94;
    }

    sub_213FDC9D0(*(v104 + 16), 0);
    sub_213FDC9D0(v106, 0);
    v63 = v156;
  }

  v109 = v159[14];
  v110 = *(v171 + 48);
  v111 = v166;
  sub_213FB2E54(v158 + v109, v166, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v63 + v109, v111 + v110, &unk_27C904F30, &unk_2146EFA20);
  v112 = v172;
  v113 = v155;
  if (v155(v111, 1, v172) == 1)
  {
    if (v113(v111 + v110, 1, v112) == 1)
    {
      sub_213FB2DF4(v166, &unk_27C904F30, &unk_2146EFA20);
      goto LABEL_106;
    }

LABEL_104:
    sub_213FB2DF4(v166, &qword_27C904F40, &qword_21477E730);
    goto LABEL_94;
  }

  sub_213FB2E54(v111, v164, &unk_27C904F30, &unk_2146EFA20);
  if (v113(v111 + v110, 1, v112) == 1)
  {
    (*(v170 + 8))(v164, v172);
    goto LABEL_104;
  }

  v114 = v170;
  v116 = v166;
  v115 = v167;
  v117 = v166 + v110;
  v118 = v172;
  (*(v170 + 32))(v167, v117, v172);
  sub_2144B8F78(&qword_27C904F48, MEMORY[0x277CC95F0]);
  v119 = v164;
  v120 = sub_2146D9578();
  v121 = *(v114 + 8);
  v121(v115, v118);
  v121(v119, v118);
  sub_213FB2DF4(v116, &unk_27C904F30, &unk_2146EFA20);
  if ((v120 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_106:
  v122 = v159[15];
  v123 = *(v162 + 48);
  v124 = v165;
  sub_213FB2E54(v158 + v122, v165, &qword_27C9041D8, &qword_2146ED5C0);
  sub_213FB2E54(v156 + v122, v124 + v123, &qword_27C9041D8, &qword_2146ED5C0);
  v125 = *(v163 + 48);
  if (v125(v124, 1, v157) == 1)
  {
    if (v125(v165 + v123, 1, v157) == 1)
    {
      sub_213FB2DF4(v165, &qword_27C9041D8, &qword_2146ED5C0);
      goto LABEL_113;
    }

LABEL_111:
    sub_213FB2DF4(v165, &qword_27C917540, &unk_214751950);
    goto LABEL_94;
  }

  v126 = v165;
  sub_213FB2E54(v165, v161, &qword_27C9041D8, &qword_2146ED5C0);
  if (v125(v126 + v123, 1, v157) == 1)
  {
    sub_214068310(v161);
    goto LABEL_111;
  }

  v127 = v165;
  v128 = v160;
  sub_21404A900(v165 + v123, v160);
  v129 = v161;
  v130 = sub_2145AF7C4(v161, v128);
  sub_214068310(v128);
  sub_214068310(v129);
  sub_213FB2DF4(v127, &qword_27C9041D8, &qword_2146ED5C0);
  if ((v130 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_113:
  v131 = v159[16];
  v132 = v158 + v131;
  v133 = *(v158 + v131 + 24);
  if (v133 != 1)
  {
    v134 = v156 + v131;
    v135 = *(v134 + 24);
    if (v135 != 1)
    {
      v136 = *(v132 + 16);
      if (v133)
      {
        if (!v135)
        {
          goto LABEL_94;
        }

        if (v136 != *(v134 + 16) || v133 != v135)
        {
          v137 = *(v132 + 16);
          if ((sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        if (v135)
        {
          goto LABEL_94;
        }

        sub_213FDC9D0(*(v134 + 16), 0);
        sub_213FDC9D0(v136, 0);
      }

      v138 = v159[17];
      v139 = v158 + v138;
      if ((*(v158 + v138 + 25) & 1) == 0)
      {
        v140 = v156 + v138;
        if ((*(v140 + 25) & 1) == 0)
        {
          v141 = *(v140 + 24);
          if (*(v139 + 24))
          {
            v142 = v158;
            if ((*(v140 + 24) & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v65 = 0;
            if (*(v140 + 24))
            {
              return v65 & 1;
            }

            v143 = *(v139 + 16) == *(v140 + 16);
            v142 = v158;
            if (!v143)
            {
              return v65 & 1;
            }
          }

          v144 = v159[18];
          v145 = v142 + v144;
          if ((*(v145 + 25) & 1) == 0)
          {
            v146 = v156 + v144;
            if ((*(v146 + 25) & 1) == 0)
            {
              v147 = *(v146 + 24);
              if (*(v145 + 24))
              {
                v148 = v158;
                if ((*(v146 + 24) & 1) == 0)
                {
                  goto LABEL_94;
                }
              }

              else
              {
                v65 = 0;
                if (*(v146 + 24))
                {
                  return v65 & 1;
                }

                v143 = *(v145 + 16) == *(v146 + 16);
                v148 = v158;
                if (!v143)
                {
                  return v65 & 1;
                }
              }

              v149 = v159[19];
              v150 = v148 + v149;
              v151 = *(v148 + v149 + 24);
              if (v151 >> 60 != 11)
              {
                v152 = *(v156 + v149 + 24);
                if (v152 >> 60 != 11)
                {
                  v153 = *(v150 + 16);
                  v154 = *(v156 + v149 + 16);
                  if (v151 >> 60 == 15)
                  {
                    if (v152 >> 60 == 15)
                    {
                      sub_21404F7E0(*(v150 + 16), v151);
                      sub_21404F7E0(v154, v152);
                      sub_213FDC6BC(v153, v151);
                      v65 = 1;
                      return v65 & 1;
                    }
                  }

                  else if (v152 >> 60 != 15)
                  {
                    sub_21404F7E0(*(v150 + 16), v151);
                    sub_21404F7E0(v154, v152);
                    sub_21404F7E0(v153, v151);
                    sub_21404F7E0(v154, v152);
                    v65 = sub_214466780(v153, v151, v154, v152);
                    sub_213FDC6BC(v154, v152);
                    sub_214032564(v154, v152);
                    sub_214032564(v153, v151);
                    sub_213FDC6BC(v153, v151);
                    return v65 & 1;
                  }

                  sub_21404F7E0(*(v150 + 16), v151);
                  sub_21404F7E0(v154, v152);
                  sub_213FDC6BC(v153, v151);
                  sub_213FDC6BC(v154, v152);
LABEL_94:
                  v65 = 0;
                  return v65 & 1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_147:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144B8EF4(uint64_t a1)
{
  *(a1 + 8) = sub_2144B8F78(&qword_27C90CB20, type metadata accessor for IDSHomeKitInvitation);
  result = sub_2144B8F78(&qword_27C90CAE8, type metadata accessor for IDSHomeKitInvitation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144B8F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144B9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144B9054(uint64_t a1)
{
  *(a1 + 8) = sub_2144B8F78(&qword_27C907780, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
  result = sub_2144B8F78(&qword_27C9077B8, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
  *(a1 + 16) = result;
  return result;
}

void sub_2144B9100()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_2144B9330(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C914840);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD8);
        if (v3 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_27C914848);
            if (v5 <= 0x3F)
            {
              sub_2144B9330(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
              if (v6 <= 0x3F)
              {
                sub_21409A2B4(319, &qword_27C912210, &qword_27C905680, &unk_2146F3CE0);
                if (v7 <= 0x3F)
                {
                  sub_2144B9330(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2144B9330(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2144B9384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2144B93CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2144B9454(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_2144B949C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2144B9530()
{
  sub_2144B9330(319, &qword_280B35230, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2144B95DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214059900;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144B96FC@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144B9754(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B97BC()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

unint64_t sub_2144B983C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144B99E4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C88, &unk_214731A20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21438F51C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0598(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C5518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044574(inited, a1);
}

unint64_t sub_2144B9B54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2143C945C;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[2] = sub_214059908;
  v7[3] = 0;
  v7[4] = 128;
  v7[5] = sub_21403C354;
  v7[6] = 0;
  *(v6 + 16) = sub_2143A572C;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_2143A5724;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2144B9D68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144B9DB4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2144B9E10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144B9E5C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[3].n128_u64[1];
  v6 = v1[4].n128_u64[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144B9EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144B9F00(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B9F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 145);
  v6 = *(v1 + 146);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B9F88(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 128);

  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 145) = v5;
  *(v1 + 146) = v6;
  return result;
}

uint64_t sub_2144B9FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BA034(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);

  sub_213FB7170(v6);
  result = *a1;
  *(v1 + 264) = *a1;
  *(v1 + 280) = v3;
  *(v1 + 288) = v4;
  return result;
}

uint64_t sub_2144BA090@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 3256);
  v3 = *(v1 + 3264);
  v4 = *(v1 + 3272);
  v5 = *(v1 + 3280);
  *a1 = *(v1 + 3248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2144BA0F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[203].n128_u64[1];
  v7 = v1[204].n128_i64[0];
  v8 = v1[204].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[203] = *a1;
  v1[204].n128_u64[0] = v3;
  v1[204].n128_u64[1] = v4;
  v1[205].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BA160@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 3296);
  v3 = *(v1 + 3304);
  v4 = *(v1 + 3312);
  v5 = *(v1 + 3313);
  v6 = *(v1 + 3314);
  *a1 = *(v1 + 3288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BA190(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 3296);

  result = *a1;
  *(v1 + 3288) = *a1;
  *(v1 + 3304) = v3;
  *(v1 + 3312) = v4;
  *(v1 + 3313) = v5;
  *(v1 + 3314) = v6;
  return result;
}

uint64_t sub_2144BA1FC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BA278()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BA2E8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BA364()
{
  if (*(v0 + 145))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 136);
    v2 = *(v0 + 144) & 1;
  }

  return result;
}

uint64_t sub_2144BA3D0()
{
  if (*(v0 + 280) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2144BA444()
{
  v1 = *(v0 + 3272);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 3264);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144BA4CC()
{
  if (*(v0 + 3313))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 3304);
    v2 = *(v0 + 3312) & 1;
  }

  return result;
}

unint64_t sub_2144BA538@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144BA6E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_214751960;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E04E4(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404441C(inited, a3);
}

uint64_t sub_2144BA81C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BA868(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BA8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BA910(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2144BA96C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BA9B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[6].n128_u64[1];
  v6 = v1[7].n128_u64[0];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BAA10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 169);
  v6 = *(v1 + 170);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BAA3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[9].n128_u64[1];

  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u8[8] = v4;
  v1[10].n128_u8[9] = v5;
  v1[10].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144BAA9C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BAB18()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BAB94()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BAC04()
{
  if (*(v0 + 169))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 160);
    v2 = *(v0 + 168) & 1;
  }

  return result;
}

unint64_t sub_2144BACAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_214751970;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142DFFF8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_2140428D0(inited, a3);
}

uint64_t KeyMaterial.$index.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 KeyMaterial.$index.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t KeyMaterial.$wrapMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 113);
  v6 = *(v1 + 114);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 KeyMaterial.$wrapMode.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 96);

  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 113) = v5;
  *(v1 + 114) = v6;
  return result;
}

uint64_t KeyMaterial.index.getter()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t KeyMaterial.wrapMode.getter()
{
  if (*(v0 + 113))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 104);
    v2 = *(v0 + 112) & 1;
  }

  return result;
}

unint64_t sub_2144BB028@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C90, &unk_214731A30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21438F51C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E04A8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904120, &unk_2146EAA80);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C54A8;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044178(inited, a1);
}

unint64_t sub_2144BB198@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F530;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438F534;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF64;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2144BB304@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BB350(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BB3AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BB3F8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144BB454@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BB4A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[5].n128_u64[1];
  v6 = v1[6].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BB4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BB544(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[7].n128_u64[1];
  v6 = v1[8].n128_u64[0];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BB59C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BB618()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BB694()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2144BB708()
{
  if (*(v0 + 128))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2144BB778@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21405980C;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_2143C945C;
  v6[3] = 0;
  v6[4] = 16;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_2143A571C;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_214059908;
  v8[3] = 0;
  v8[4] = 128;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_2143A572C;
  *(v7 + 24) = v8;
  *(v4 + 40) = v7;
  sub_214042CD0(v4, a1 + 40);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214751970;
  *(v11 + 16) = sub_214032554;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142DFFF8(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21403255C;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_2140428D0(v9, a1 + 80);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_214059900;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  return sub_214042B80(v16, a1 + 112);
}

uint64_t sub_2144BBA88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BBAD4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BBB30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2144BBB88(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144BBBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 105);
  v6 = *(v1 + 106);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144BBC1C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[5].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  v1[6].n128_u8[9] = v5;
  v1[6].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144BBC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BBCC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[7].n128_u64[1];
  v7 = v1[8].n128_u64[1];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u64[1] = v4;
  v1[9].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BBD24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BBDA0()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144BBE28()
{
  if (*(v0 + 105))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 96);
    v2 = *(v0 + 104) & 1;
  }

  return result;
}

uint64_t sub_2144BBE94()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 128);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2144BBF10@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_214059908;
  v4[3] = 0;
  v4[4] = 32;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2144C54A4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2146EAEB0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21439DF28;
  *(v9 + 24) = v5;
  *(v8 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21439DF60;
  *(v10 + 24) = v7;
  *(v8 + 40) = v10;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v11 + 16) = sub_21439DF54;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21408E9E0;
  *(v13 + 24) = v11;
  *(inited + 40) = v13;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_2144BC164@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C88, &unk_214731A20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214309284;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0598(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2144C545C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044574(inited, a1);
}

uint64_t sub_2144BC2D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BC320(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2144BC37C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2144BC3C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[3].n128_u64[1];
  v6 = v1[4].n128_u64[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2144BC420@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144BC46C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144BC4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *a1 = *(v1 + 232);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2144BC514(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);

  sub_213FB7170(v6);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  return result;
}

uint64_t sub_2144BC56C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BC5E8()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BC658()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BC6D4()
{
  if (*(v0 + 248) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_2144BC748@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2144BC81C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144BC960(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2144BCA38(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_2144BCAD8()
{
  v1 = *(v0 + 40);
  sub_213FDCA18(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_2144BCB0C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2144BCB64()
{
  v1 = *(v0 + 56);
  sub_213FDCA18(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_2144BCB98(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_2144BCBF0()
{
  v1 = *(v0 + 72);
  sub_213FDCA18(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_2144BCC24(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_2144BCC7C()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_2144BCCB0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_2144BCD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BCE88(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_2144BCF24;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BCF28(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144BCFC0;
}

uint64_t sub_2144BCFC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BD02C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144BD0D4(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v10 = *(v2 + 72);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 64);

    *(v2 + 64) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BD210(void *a1))()
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144BD2A8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144BD2AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

uint64_t (*sub_2144BD320(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144BD3B8;
}

uint64_t sub_2144BD3BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BD504(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_214476798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BD5A0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214476834;
}

uint64_t sub_2144BD698@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 145))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 144);
    *a2 = *(result + 136);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BD72C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 145))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 144);
    *a1 = *(v1 + 136);
    *(a1 + 8) = v2 & 1;
    return sub_2144BD7C0;
  }

  return result;
}

uint64_t sub_2144BD7F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 128);

  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 145) = v7;
  *(a2 + 146) = v8;
  return result;
}

void (*sub_2144BD868(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 145);
  v9 = *(v1 + 146);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BD908;
}

void sub_2144BD908(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 128);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v6;
    *(v3 + 144) = v7;
    *(v3 + 145) = v8;
    *(v3 + 146) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 128);

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v6;
    *(v3 + 144) = v7;
    *(v3 + 145) = v8;
    *(v3 + 146) = v9;
  }

  free(v2);
}

uint64_t sub_2144BD9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 240);
  v13 = *(v1 + 224);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 256);
  v4 = v15;
  v5 = *(v1 + 176);
  v10[0] = *(v1 + 160);
  v10[1] = v5;
  v6 = *(v1 + 208);
  v11 = *(v1 + 192);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_2142F2518(v10, v9);
}

__n128 sub_2144BDA54(uint64_t a1)
{
  v3 = *(v1 + 240);
  v9[4] = *(v1 + 224);
  v9[5] = v3;
  v10 = *(v1 + 256);
  v4 = *(v1 + 176);
  v9[0] = *(v1 + 160);
  v9[1] = v4;
  v5 = *(v1 + 208);
  v9[2] = *(v1 + 192);
  v9[3] = v5;
  sub_2142F2470(v9);
  v6 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v6;
  *(v1 + 256) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v7;
  result = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = result;
  return result;
}

uint64_t sub_2144BDAE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 280);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2144BDB50(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144BDBF8(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  v9 = *(v2 + 288);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 280));

    *(v2 + 280) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BDD30(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 280);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144BDDCC;
  }

  return result;
}

uint64_t sub_2144BDDCC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 264);
    v9 = *(v4 + 272);
    v12 = *(v4 + 288);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 280) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 264);
  v5 = *(v4 + 272);
  v12 = *(v4 + 288);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 280) = v3;
}

uint64_t sub_2144BDFA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 272);
  v8 = *(a2 + 280);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 264) = v4;
  *(a2 + 272) = v3;
  *(a2 + 280) = v5;
  *(a2 + 288) = v6;
  return result;
}

void (*sub_2144BE018(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  *v4 = *(v1 + 264);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144BE0AC;
}

void sub_2144BE0AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 272);
  v8 = *(v3 + 280);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v6;
    *(v3 + 288) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 272);

    sub_213FB7170(v8);
    *(v3 + 264) = v5;
    *(v3 + 272) = v4;
    *(v3 + 280) = v6;
    *(v3 + 288) = v7;
  }

  free(v2);
}

uint64_t sub_2144BE16C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, (v1 + 296), 0xB81uLL);
  memcpy(v3, (v1 + 296), 0xB81uLL);
  return sub_213FB2E54(__dst, v5, &qword_27C907278, &qword_2146F49A0);
}

void *sub_2144BE1EC(const void *a1)
{
  memcpy(v4, (v1 + 296), 0xB81uLL);
  sub_213FB2DF4(v4, &qword_27C907278, &qword_2146F49A0);
  return memcpy((v1 + 296), a1, 0xB81uLL);
}

uint64_t sub_2144BE26C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 3272);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 3264);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2144BE2E0(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144BE390(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144BE45C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 3272);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 3264);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2144BE4FC;
  }

  return result;
}

uint64_t sub_2144BE4FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2144BE63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 3256);
  v3 = *(a1 + 3264);
  v4 = *(a1 + 3272);
  v5 = *(a1 + 3280);
  *a2 = *(a1 + 3248);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2144BE698(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 3256);
  v9 = *(a2 + 3264);
  v10 = *(a2 + 3272);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 3248) = v4;
  *(a2 + 3256) = v3;
  *(a2 + 3264) = v5;
  *(a2 + 3272) = v6;
  *(a2 + 3280) = v7;
  return result;
}

void (*sub_2144BE72C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 3256);
  v6 = *(v1 + 3264);
  v7 = *(v1 + 3272);
  v8 = *(v1 + 3280);
  *v4 = *(v1 + 3248);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2144BE7D4;
}

void sub_2144BE7D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 3256);
  v10 = *(v3 + 3264);
  v11 = *(v3 + 3272);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v10, v11);
    *(v3 + 3248) = v5;
    *(v3 + 3256) = v4;
    *(v3 + 3264) = v7;
    *(v3 + 3272) = v6;
    *(v3 + 3280) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 3256);

    sub_214032564(v10, v11);
    *(v3 + 3248) = v5;
    *(v3 + 3256) = v4;
    *(v3 + 3264) = v7;
    *(v3 + 3272) = v6;
    *(v3 + 3280) = v8;
  }

  free(v2);
}

uint64_t sub_2144BE8C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 3313))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 3312);
    *a2 = *(result + 3304);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BE95C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 3313))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 3312);
    *a1 = *(v1 + 3304);
    *(a1 + 8) = v2 & 1;
    return sub_2144BE9F0;
  }

  return result;
}

uint64_t sub_2144BEA24(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 3296);

  *(a2 + 3288) = v4;
  *(a2 + 3296) = v3;
  *(a2 + 3304) = v5;
  *(a2 + 3312) = v6;
  *(a2 + 3313) = v7;
  *(a2 + 3314) = v8;
  return result;
}

void (*sub_2144BEA9C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 3296);
  v6 = *(v1 + 3304);
  v7 = *(v1 + 3312);
  v8 = *(v1 + 3313);
  v9 = *(v1 + 3314);
  *v4 = *(v1 + 3288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BEB40;
}

void sub_2144BEB40(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 3296);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 3288) = v5;
    *(v3 + 3296) = v4;
    *(v3 + 3304) = v6;
    *(v3 + 3312) = v7;
    *(v3 + 3313) = v8;
    *(v3 + 3314) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 3296);

    *(v3 + 3288) = v5;
    *(v3 + 3296) = v4;
    *(v3 + 3304) = v6;
    *(v3 + 3312) = v7;
    *(v3 + 3313) = v8;
    *(v3 + 3314) = v9;
  }

  free(v2);
}

void sub_2144BEC40(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *(a1 + 4) = *(v1 + 8);
  *a1 = v2;
}

int *sub_2144BEC54(int *result)
{
  v2 = *result;
  *(v1 + 8) = *(result + 2);
  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_2144BEC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v12 = *(v3 + 48);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 40);

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BEDD0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;

    return sub_21447D6B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BEE6C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447D9E0;
}

uint64_t sub_2144BEF04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v12 = *(v3 + 88);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 80);

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BF04C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BF0E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

uint64_t sub_2144BF180(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v10 = *(v2 + 120);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 112);

    *(v2 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144BF2BC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144BF354(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

uint64_t sub_2144BF47C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 169))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 168);
    *a2 = *(result + 160);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144BF510(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 169))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 168);
    *a1 = *(v1 + 160);
    *(a1 + 8) = v2 & 1;
    return sub_2144BF5A4;
  }

  return result;
}

uint64_t sub_2144BF5D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 152);

  *(a2 + 144) = v4;
  *(a2 + 152) = v3;
  *(a2 + 160) = v5;
  *(a2 + 168) = v6;
  *(a2 + 169) = v7;
  *(a2 + 170) = v8;
  return result;
}

void (*sub_2144BF64C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 169);
  v9 = *(v1 + 170);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144BF6EC;
}

void sub_2144BF6EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 152);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v6;
    *(v3 + 168) = v7;
    *(v3 + 169) = v8;
    *(v3 + 170) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 152);

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v6;
    *(v3 + 168) = v7;
    *(v3 + 169) = v8;
    *(v3 + 170) = v9;
  }

  free(v2);
}

uint64_t sub_2144BF7C4()
{
  if (*v0)
  {
    return 5065555;
  }

  else
  {
    return 5065549;
  }
}

uint64_t sub_2144BF7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 5065549 && a2 == 0xE300000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 5065555 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2144BF8B4(uint64_t a1)
{
  v2 = sub_2144BFCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF8F0(uint64_t a1)
{
  v2 = sub_2144BFCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144BF92C(uint64_t a1)
{
  v2 = sub_2144BFD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF968(uint64_t a1)
{
  v2 = sub_2144BFD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144BF9A4(uint64_t a1)
{
  v2 = sub_2144BFD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144BF9E0(uint64_t a1)
{
  v2 = sub_2144BFD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyMaterial.MaterialType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914860, &qword_214751988);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914868, &qword_214751990);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914870, &qword_214751998);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144BFCCC();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2144BFD20();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2144BFD74();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2144BFCCC()
{
  result = qword_27C914878;
  if (!qword_27C914878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914878);
  }

  return result;
}

unint64_t sub_2144BFD20()
{
  result = qword_27C914880;
  if (!qword_27C914880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914880);
  }

  return result;
}

unint64_t sub_2144BFD74()
{
  result = qword_27C914888;
  if (!qword_27C914888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914888);
  }

  return result;
}

uint64_t KeyMaterial.MaterialType.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t KeyMaterial.MaterialType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914890, &qword_2147519A0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914898, &qword_2147519A8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9148A0, &unk_2147519B0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144BFCCC();
  v16 = v36;
  sub_2146DAA08();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2146DA238();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_21439DF70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = &type metadata for KeyMaterial.MaterialType;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2144BFD20();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2144BFD74();
        sub_2146DA0B8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t KeyMaterial.index.setter(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*KeyMaterial.index.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 32);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A05C8;
  }

  return result;
}

void (*KeyMaterial.$index.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A0884;
}

uint64_t KeyMaterial.wrappedData.getter()
{
  v1 = *(v0 + 48);
  sub_21402D9F8(v1, *(v0 + 56));
  return v1;
}

uint64_t KeyMaterial.wrappedData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t KeyMaterial.salt.getter()
{
  v1 = *(v0 + 64);
  sub_21402D9F8(v1, *(v0 + 72));
  return v1;
}

uint64_t KeyMaterial.salt.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t KeyMaterial.generation.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2144C06D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 113))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 112);
    *a2 = *(result + 104);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*KeyMaterial.wrapMode.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 113))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 112);
    *a1 = *(v1 + 104);
    *(a1 + 8) = v2 & 1;
    return sub_2144C07FC;
  }

  return result;
}

uint64_t sub_2144C0830(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 96);

  *(a2 + 88) = v4;
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 113) = v7;
  *(a2 + 114) = v8;
  return result;
}

void (*KeyMaterial.$wrapMode.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 113);
  v9 = *(v1 + 114);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144C0944;
}

void sub_2144C0944(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 96);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v6;
    *(v3 + 112) = v7;
    *(v3 + 113) = v8;
    *(v3 + 114) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 96);

    *(v3 + 88) = v5;
    *(v3 + 96) = v4;
    *(v3 + 104) = v6;
    *(v3 + 112) = v7;
    *(v3 + 113) = v8;
    *(v3 + 114) = v9;
  }

  free(v2);
}

uint64_t KeyMaterial.participantId.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t KeyMaterial.participantId.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t KeyMaterial.shortKILength.setter(uint64_t result)
{
  *(v1 + 129) = result;
  *(v1 + 130) = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2144C0A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C0BD0(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C0C6C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t sub_2144C0D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C0E4C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144C0EE8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_2144C0F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2144C0FEC(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144C1094(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v9 = *(v2 + 104);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 96));

    *(v2 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C11CC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144C1268;
  }

  return result;
}

uint64_t sub_2144C1268(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 80);
    v9 = *(v4 + 88);
    v12 = *(v4 + 104);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 96) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 80);
  v5 = *(v4 + 88);
  v12 = *(v4 + 104);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 96) = v3;
}

uint64_t sub_2144C1440(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  return result;
}

void (*sub_2144C14B4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144C1548;
}

void sub_2144C1548(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 88);
  v8 = *(v3 + 96);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 88);

    sub_213FB7170(v8);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
  }

  free(v2);
}

uint64_t sub_2144C1608@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144C1670(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144C1718(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v10 = *(v2 + 136);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 128);

    *(v2 + 128) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C1854(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 128);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144C18EC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144C18EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 112);
    v10 = *(v4 + 120);
    v14 = *(v4 + 136);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 128) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 112);
  v5 = *(v4 + 120);
  v14 = *(v4 + 136);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 128) = v3;
}

uint64_t sub_2144C1ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  return result;
}

void (*sub_2144C1B40(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144C1BD8;
}

void sub_2144C1BD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 120);
  v8 = *(v3 + 128);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 120);

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
  }

  free(v2);
}

uint64_t sub_2144C1C98@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 256);
  v20 = *(v1 + 240);
  v21[0] = v3;
  v4 = *(v1 + 160);
  v5 = *(v1 + 192);
  v16 = *(v1 + 176);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 192);
  v8 = *(v1 + 224);
  v18 = *(v1 + 208);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 160);
  v15[0] = *(v1 + 144);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 256);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(v21 + 15) = *(v1 + 271);
  *(a1 + 127) = *(v1 + 271);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v15, v14, &qword_27C907388, &qword_2147519C0);
}

__n128 sub_2144C1D34(uint64_t a1)
{
  v3 = *(v1 + 256);
  v11[6] = *(v1 + 240);
  v12[0] = v3;
  v4 = *(v1 + 192);
  v11[2] = *(v1 + 176);
  v11[3] = v4;
  v5 = *(v1 + 224);
  v11[4] = *(v1 + 208);
  v11[5] = v5;
  v6 = *(v1 + 160);
  v11[0] = *(v1 + 144);
  v11[1] = v6;
  *(v12 + 15) = *(v1 + 271);
  sub_213FB2DF4(v11, &qword_27C907388, &qword_2147519C0);
  v7 = *(a1 + 112);
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = v7;
  *(v1 + 271) = *(a1 + 127);
  v8 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v8;
  v9 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v9;
  result = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = result;
  return result;
}

uint64_t sub_2144C1DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  v3 = *(v1 + 392);
  v20 = *(v1 + 376);
  v21[0] = v3;
  v4 = *(v1 + 296);
  v5 = *(v1 + 328);
  v16 = *(v1 + 312);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 328);
  v8 = *(v1 + 360);
  v18 = *(v1 + 344);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 296);
  v15[0] = *(v1 + 280);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 392);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(v21 + 15) = *(v1 + 407);
  *(a1 + 127) = *(v1 + 407);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v15, v14, &qword_27C907388, &qword_2147519C0);
}

__n128 sub_2144C1E8C(uint64_t a1)
{
  v3 = v1 + 280;
  v4 = *(v3 + 112);
  v12[6] = *(v3 + 96);
  v13[0] = v4;
  *(v13 + 15) = *(v3 + 127);
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v6 = *(v3 + 80);
  v12[4] = *(v3 + 64);
  v12[5] = v6;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  sub_213FB2DF4(v12, &qword_27C907388, &qword_2147519C0);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 127) = *(a1 + 127);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_2144C1F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C2088(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C2124(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2144C21BC(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2144C2288(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

void (*sub_2144C2328(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

uint64_t sub_2144C23C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 105))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 104);
    *a2 = *(result + 96);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2144C245C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 105))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 104);
    *a1 = *(v1 + 96);
    *(a1 + 8) = v2 & 1;
    return sub_2144C24F0;
  }

  return result;
}

uint64_t sub_2144C2524(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 88);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 105) = v7;
  *(a2 + 106) = v8;
  return result;
}

void (*sub_2144C2598(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 105);
  v9 = *(v1 + 106);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144C2638;
}

void sub_2144C2638(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 88);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
    *(v3 + 106) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 88);

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
    *(v3 + 106) = v9;
  }

  free(v2);
}

uint64_t sub_2144C26F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    *a2 = *(a1 + 128);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144C2768(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144C2818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 112);
  v7 = *(v2 + 120);
  v12 = *(v3 + 144);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 136);

    *(v3 + 128) = a1;
    *(v3 + 136) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C2960(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 136);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 128);
    a1[1] = v3;

    return sub_2144C29FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144C29FC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 112);
    v11 = *(v4 + 120);
    v16 = *(v4 + 144);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 128) = v5;
      *(v4 + 136) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 112);
  v6 = *(v4 + 120);
  v16 = *(v4 + 144);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 128) = v5;
  *(v4 + 136) = v3;
}

uint64_t sub_2144C2C1C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v6;
  *(a2 + 136) = v5;
  *(a2 + 144) = v7;
  return result;
}

void (*sub_2144C2C94(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 120);
  v7 = *(v1 + 128);
  v6 = *(v1 + 136);
  v8 = *(v1 + 144);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144C2D2C;
}

void sub_2144C2D2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 120);
  v10 = *(v3 + 136);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 120);

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
  }

  free(v2);
}

uint64_t sub_2144C2E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C2F7C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_2144C5534;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144C3018(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144C5538;
}

uint64_t sub_2144C30B0(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v10 = *(v2 + 72);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 64);

    *(v2 + 64) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C31EC(void *a1))()
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2144C553C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144C3284(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 48);
    v10 = *(v4 + 56);
    v14 = *(v4 + 72);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 64) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v14 = *(v4 + 72);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 64) = v3;
}

uint64_t (*sub_2144C3464(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2144C5540;
}

void sub_2144C34FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 56);

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
  }

  free(v2);
}

uint64_t sub_2144C35BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C3704(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_21447B160;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144C37A0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447B164;
}

uint64_t sub_2144C3898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v13 = *(v1 + 192);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 224);
  v4 = v15;
  v5 = *(v1 + 144);
  v10[0] = *(v1 + 128);
  v10[1] = v5;
  v6 = *(v1 + 176);
  v11 = *(v1 + 160);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_2142F2518(v10, v9);
}

__n128 sub_2144C38F4(uint64_t a1)
{
  v3 = *(v1 + 208);
  v9[4] = *(v1 + 192);
  v9[5] = v3;
  v10 = *(v1 + 224);
  v4 = *(v1 + 144);
  v9[0] = *(v1 + 128);
  v9[1] = v4;
  v5 = *(v1 + 176);
  v9[2] = *(v1 + 160);
  v9[3] = v5;
  sub_2142F2470(v9);
  v6 = *(a1 + 80);
  *(v1 + 192) = *(a1 + 64);
  *(v1 + 208) = v6;
  *(v1 + 224) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v7;
  result = *(a1 + 48);
  *(v1 + 160) = *(a1 + 32);
  *(v1 + 176) = result;
  return result;
}

uint64_t sub_2144C3984@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2144C39F0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144C3A98(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v9 = *(v2 + 256);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 248));

    *(v2 + 248) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144C3BD0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 248);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2144C3C6C;
  }

  return result;
}

uint64_t sub_2144C3C6C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 232);
    v9 = *(v4 + 240);
    v12 = *(v4 + 256);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 248) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 232);
  v5 = *(v4 + 240);
  v12 = *(v4 + 256);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 248) = v3;
}

uint64_t sub_2144C3E44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 240);
  v8 = *(a2 + 248);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 232) = v4;
  *(a2 + 240) = v3;
  *(a2 + 248) = v5;
  *(a2 + 256) = v6;
  return result;
}

void (*sub_2144C3EB8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  *v4 = *(v1 + 232);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2144C3F4C;
}

void sub_2144C3F4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 240);
  v8 = *(v3 + 248);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v6;
    *(v3 + 256) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 240);

    sub_213FB7170(v8);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v6;
    *(v3 + 256) = v7;
  }

  free(v2);
}

uint64_t sub_2144C400C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, (v1 + 264), 0xB81uLL);
  memcpy(v3, (v1 + 264), 0xB81uLL);
  return sub_213FB2E54(__dst, v5, &qword_27C907278, &qword_2146F49A0);
}

void *sub_2144C408C(const void *a1)
{
  memcpy(v4, (v1 + 264), 0xB81uLL);
  sub_213FB2DF4(v4, &qword_27C907278, &qword_2146F49A0);
  return memcpy((v1 + 264), a1, 0xB81uLL);
}

unint64_t sub_2144C4110()
{
  result = qword_27C9148A8;
  if (!qword_27C9148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148A8);
  }

  return result;
}

unint64_t sub_2144C4218()
{
  result = qword_27C9148B0;
  if (!qword_27C9148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148B0);
  }

  return result;
}

uint64_t sub_2144C4348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144C4394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2144C43DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_SDySSSays6UInt64VGGSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor32CSDMConversationActivityMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144C4488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3315))
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

uint64_t sub_2144C44D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 3304) = 0;
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
    *(result + 3314) = 0;
    *(result + 3312) = 0;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
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
      *(result + 3315) = 1;
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

    *(result + 3315) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy171_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2144C48D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 171))
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

uint64_t sub_2144C4918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 170) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 171) = 1;
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

    *(result + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy131_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2144C49CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 131))
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

uint64_t sub_2144C4A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 130) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 131) = 1;
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

    *(result + 131) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144C4AA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 411))
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

uint64_t sub_2144C4AEC(uint64_t result, int a2, int a3)
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
    *(result + 410) = 0;
    *(result + 408) = 0;
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
      *(result + 411) = 1;
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

    *(result + 411) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2144C4BE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_2144C4C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144C4CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3209))
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

uint64_t sub_2144C4CF0(uint64_t result, int a2, int a3)
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
    *(result + 3208) = 0;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
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
      *(result + 3209) = 1;
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

    *(result + 3209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2144C50C8()
{
  result = qword_27C9148B8;
  if (!qword_27C9148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148B8);
  }

  return result;
}

unint64_t sub_2144C5120()
{
  result = qword_27C9148C0;
  if (!qword_27C9148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148C0);
  }

  return result;
}

unint64_t sub_2144C5178()
{
  result = qword_27C9148C8;
  if (!qword_27C9148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148C8);
  }

  return result;
}

unint64_t sub_2144C51D0()
{
  result = qword_27C9148D0;
  if (!qword_27C9148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148D0);
  }

  return result;
}

unint64_t sub_2144C5228()
{
  result = qword_27C9148D8;
  if (!qword_27C9148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148D8);
  }

  return result;
}

unint64_t sub_2144C5280()
{
  result = qword_27C9148E0;
  if (!qword_27C9148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148E0);
  }

  return result;
}

unint64_t sub_2144C52D8()
{
  result = qword_27C9148E8;
  if (!qword_27C9148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148E8);
  }

  return result;
}

unint64_t sub_2144C532C()
{
  result = qword_27C9148F0;
  if (!qword_27C9148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9148F0);
  }

  return result;
}

uint64_t sub_2144C53A0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t))
{
  if (*a1)
  {
    v7 = *a3;
    v12 = *a1;
    MEMORY[0x28223BE20](a1);
    v10[2] = &v12;
    v11 = 2;

    v8 = a5(a4, v10, v7);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2144C5558()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v13 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v18 = *(v0 + 7);
  v19 = *(v0 + 8);
  v20 = *(v0 + 9);
  v21 = v0[160];
  v14 = *(v0 + 3);
  v15 = *(v0 + 4);
  v16 = *(v0 + 5);
  v17 = *(v0 + 6);
  v7 = v0[161];

  sub_2146D9EF8();
  MEMORY[0x2160545D0](0x3A6E6F6973726576, 0xE900000000000020);
  v8 = sub_2146DA428();
  MEMORY[0x2160545D0](v8);

  MEMORY[0x2160545D0](0x6E6F69746361202CLL, 0xEE00203A65707954);
  v9 = sub_2146DA428();
  MEMORY[0x2160545D0](v9);

  MEMORY[0x2160545D0](0x79546D657469202CLL, 0xEC000000203A6570);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021479BAF0);
  v10 = sub_2146DA428();
  MEMORY[0x2160545D0](v10);

  MEMORY[0x2160545D0](0xD000000000000014, 0x800000021479BB10);
  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 1280070990;
  }

  if (!v6)
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x2160545D0](v11, v6);

  MEMORY[0x2160545D0](0xD000000000000015, 0x800000021479BB30);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](3943982, 0xE300000000000000);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0, 0xE000000000000000);

  MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BB50);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2144C58A4()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v3 = 1103;
    v4 = 1106;
    if (v1 != 2)
    {
      v4 = 1108;
    }

    if (*v0)
    {
      v3 = 1104;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      return 1109;
    }

    else
    {
      return 1150;
    }
  }

  else if (v1 == 6)
  {
    return 1151;
  }

  else if (v1 == 7)
  {
    return 1152;
  }

  else
  {
    sub_21404A6EC();
    swift_allocError();
    *v5 = 0xD000000000000036;
    v5[1] = 0x800000021478B020;
    v5[2] = 0x4964696C61766E69;
    v5[3] = 0xEB000000006D6574;
    v5[4] = 0xD00000000000001CLL;
    v5[5] = 0x800000021478B060;
    return swift_willThrow();
  }
}

uint64_t sub_2144C59BC()
{
  v82 = type metadata accessor for SecureCloudPingRequestProtobuf(0);
  v1 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v75 - v5;
  v6 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v75 - v11;
  v13 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v20 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v0;
  if (v25 <= 4)
  {
    if (*v0 > 2u)
    {
      v51 = type metadata accessor for IDSActivitySharingInvitation(0);
      v52 = v80;
      sub_213FB2E54(&v0[*(v51 + 28)], v80, &qword_27C907428, &unk_214755800);
      if ((*(v78 + 48))(v52, 1, v79) == 1)
      {
        sub_213FB2DF4(v52, &qword_27C907428, &unk_214755800);
        sub_21404A6EC();
        swift_allocError();
        *v53 = 0xD000000000000036;
        v53[1] = 0x800000021478B020;
        v53[2] = 0x2065646172677055;
        v53[3] = 0xEF6567617373656DLL;
        v53[4] = 0xD00000000000001CLL;
        v53[5] = 0x800000021478B060;
        return swift_willThrow();
      }

      v63 = v52;
      v64 = v77;
      sub_2144D66AC(v63, v77, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
      v65 = v100;
      v66 = sub_2144CEF64(v64);
      if (v65)
      {
        v67 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage;
        return sub_2144D6848(v64, v67);
      }

      v71 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage;
    }

    else
    {
      if (!*v0)
      {
        v57 = type metadata accessor for IDSActivitySharingInvitation(0);
        sub_213FB2E54(&v0[*(v57 + 20)], v19, &qword_27C907418, &unk_214755810);
        if ((*(v21 + 48))(v19, 1, v20) == 1)
        {
          sub_213FB2DF4(v19, &qword_27C907418, &unk_214755810);
          v54 = 0x800000021479BC20;
          sub_21404A6EC();
          swift_allocError();
          *v55 = 0xD000000000000036;
          v55[1] = 0x800000021478B020;
          v56 = 0xD000000000000016;
          goto LABEL_38;
        }

        sub_2144D66AC(v19, v24, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        v68 = v100;
        v69 = sub_2144CE2B4(v24);
        if (v68)
        {
          return sub_2144D6848(v24, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
        }

        v71 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest;
        v72 = v69;
        v73 = v24;
        goto LABEL_47;
      }

      if (v25 != 1)
      {
        v58 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 40)];
        v59 = *(v58 + 2);
        if (v59)
        {
          v60 = v58[48];
          v61 = *(v58 + 3);
          v62 = *(v58 + 2);
          *&v91 = *v58;
          BYTE8(v91) = v62 & 1;
          *&v92 = v59;
          *(&v92 + 1) = v61;
          v93 = *(v58 + 2);
          LOBYTE(v94[0]) = v60;
          return sub_2144CEDBC(&v91);
        }

        v54 = 0x800000021479BC00;
        sub_21404A6EC();
        swift_allocError();
        *v55 = 0xD000000000000036;
        v55[1] = 0x800000021478B020;
        v56 = 0xD000000000000018;
        goto LABEL_38;
      }

      v26 = type metadata accessor for IDSActivitySharingInvitation(0);
      sub_213FB2E54(&v0[*(v26 + 24)], v12, &qword_27C907420, &unk_2146F4A40);
      v27 = (*(v76 + 48))(v12, 1, v13);
      v28 = v100;
      if (v27 == 1)
      {
        sub_213FB2DF4(v12, &qword_27C907420, &unk_2146F4A40);
LABEL_22:
        v54 = 0x800000021479BB90;
        sub_21404A6EC();
        swift_allocError();
        *v55 = 0xD000000000000036;
        v55[1] = 0x800000021478B020;
        v56 = 0xD000000000000017;
LABEL_38:
        v55[2] = v56;
        v55[3] = v54;
        v55[4] = 0xD00000000000001CLL;
        v55[5] = 0x800000021478B060;
        return swift_willThrow();
      }

      v70 = v12;
      v64 = v75;
      sub_2144D66AC(v70, v75, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
      v66 = sub_2144CE7F8(v64);
      if (v28)
      {
        v67 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse;
        return sub_2144D6848(v64, v67);
      }

      v71 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse;
    }

    v72 = v66;
    v73 = v64;
LABEL_47:
    sub_2144D6848(v73, v71);
    return v72;
  }

  v29 = v81;
  v30 = v82;
  if (v25 - 6 < 2)
  {
    v31 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 36)];
    v32 = *(v31 + 3);
    v93 = *(v31 + 2);
    v94[0] = v32;
    *(v94 + 9) = *(v31 + 57);
    v33 = *(v31 + 1);
    v91 = *v31;
    v92 = v33;
    v34 = v91;
    v35 = *(v31 + 56);
    v97 = *(v31 + 40);
    v98 = v35;
    v99 = v31[72];
    v36 = *(v31 + 24);
    v95 = *(v31 + 8);
    v96 = v36;
    v37 = v100;
    if (!v91)
    {
      goto LABEL_22;
    }

    v38 = *(v31 + 3);
    v89[2] = *(v31 + 2);
    v90[0] = v38;
    *(v90 + 9) = *(v31 + 57);
    v39 = *(v31 + 1);
    v89[0] = *v31;
    v89[1] = v39;
    sub_21430AC78(v89, &v83);
    if (!os_variant_has_internal_ui())
    {
      sub_213FB2DF4(&v91, &qword_27C9074A0, &qword_2146F4A68);
      return 0;
    }

    v83 = v34;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    v84 = v95;
    v40 = sub_2144CF41C(&v83);
    if (v37)
    {
      return sub_213FB2DF4(&v91, &qword_27C9074A0, &qword_2146F4A68);
    }

    v72 = v40;
    sub_213FB2DF4(&v91, &qword_27C9074A0, &qword_2146F4A68);
    return v72;
  }

  if (v25 != 5)
  {
    v54 = 0x800000021479BB70;
    sub_21404A6EC();
    swift_allocError();
    *v55 = 0xD000000000000036;
    v55[1] = 0x800000021478B020;
    v56 = 0xD000000000000012;
    goto LABEL_38;
  }

  v42 = &v0[*(type metadata accessor for IDSActivitySharingInvitation(0) + 32)];
  v43 = *v42;
  if (!*v42)
  {
    v54 = 0x800000021479BBE0;
    sub_21404A6EC();
    swift_allocError();
    *v55 = 0xD000000000000036;
    v55[1] = 0x800000021478B020;
    v56 = 0xD000000000000014;
    goto LABEL_38;
  }

  v45 = *(v42 + 1);
  v44 = *(v42 + 2);
  v46 = *(v42 + 3);
  v47 = v42[32];

  sub_213FDC9D0(v44, v46);
  if (!os_variant_has_internal_ui())
  {
    sub_214313220(v43, v45, v44, v46);
    return 0;
  }

  sub_2146D8DE8();
  v48 = (v29 + *(v30 + 20));
  *v48 = 0;
  v48[1] = 0;
  if (v46)
  {
    if (v46 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    *v48 = v44;
    v48[1] = v46;
  }

  sub_2144D6800(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf);

  v49 = v100;
  v50 = sub_2146D8FC8();
  if (v49)
  {
    sub_2144D6848(v29, type metadata accessor for SecureCloudPingRequestProtobuf);
    return sub_214313220(v43, v45, v44, v46);
  }

  else
  {
    v74 = v50;
    sub_2144D6848(v29, type metadata accessor for SecureCloudPingRequestProtobuf);
    sub_214313220(v43, v45, v44, v46);
    return v74;
  }
}

uint64_t sub_2144C6558@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_2144C65BC()
{
  if (*v0)
  {
    result = 0x5064696C61766E69;
  }

  else
  {
    result = 0x4964696C61766E69;
  }

  *v0;
  return result;
}

uint64_t sub_2144C660C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5064696C61766E69;
  }

  else
  {
    v4 = 0x4964696C61766E69;
  }

  if (v3)
  {
    v5 = 0xEB000000006D6574;
  }

  else
  {
    v5 = 0xEF6675626F746F72;
  }

  if (*a2)
  {
    v6 = 0x5064696C61766E69;
  }

  else
  {
    v6 = 0x4964696C61766E69;
  }

  if (*a2)
  {
    v7 = 0xEF6675626F746F72;
  }

  else
  {
    v7 = 0xEB000000006D6574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2144C66C8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144C6760()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144C67E4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144C6878@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

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

void sub_2144C68D8(uint64_t *a1@<X8>)
{
  v2 = 0x4964696C61766E69;
  if (*v1)
  {
    v2 = 0x5064696C61766E69;
  }

  v3 = 0xEB000000006D6574;
  if (*v1)
  {
    v3 = 0xEF6675626F746F72;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2144C692C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 1108)
  {
    if (result > 1150)
    {
      if (result == 1151)
      {
        *a2 = 6;
        return result;
      }

      if (result == 1152)
      {
        *a2 = 7;
        return result;
      }
    }

    else
    {
      if (result == 1109)
      {
        *a2 = 4;
        return result;
      }

      if (result == 1150)
      {
        *a2 = 5;
        return result;
      }
    }
  }

  else if (result > 1105)
  {
    if (result == 1106)
    {
      *a2 = 2;
      return result;
    }

    if (result == 1108)
    {
      *a2 = 3;
      return result;
    }
  }

  else
  {
    if (result == 1103)
    {
      *a2 = 0;
      return result;
    }

    if (result == 1104)
    {
      *a2 = 1;
      return result;
    }
  }

  *a2 = 8;
  return result;
}

uint64_t sub_2144C6A24()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214755DD0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2144C6AAC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214755DD0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2144C6B18@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144C6B74()
{
  v1 = 0x657A65657262;
  v2 = 0x6562656C6B637568;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_2144C6C00()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144C6CC8()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144C6D7C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144C6E40@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144C6B18(a1);
}

void sub_2144C6E4C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x657A65657262;
  v4 = 0xEB00000000797272;
  v5 = 0x6562656C6B637568;
  if (*v1 != 2)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6157646564697567;
    v2 = 0xEA00000000006B6CLL;
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

__n128 sub_2144C6ED0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v106 = a3;
  v107 = a2;
  v115 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v95 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v94 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v84 - v19;
  *a4 = 8;
  v20 = type metadata accessor for IDSActivitySharingInvitation(0);
  v21 = &a4[v20[5]];
  v22 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v99 = v21;
  v102 = v23 + 56;
  v103 = v24;
  v24(v21, 1, 1, v22);
  v25 = &a4[v20[6]];
  v26 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v98 = v25;
  v100 = v28;
  v28(v25, 1, 1, v26);
  v30 = &a4[v20[7]];
  v31 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = (v32 + 56);
  v97 = v30;
  v33(v30, 1, 1, v31);
  v35 = &a4[v20[8]];
  v35[32] = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &a4[v20[9]];
  *(v36 + 57) = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
  v96 = v36;
  v37 = &a4[v20[10]];
  v37[48] = 0;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  *v37 = 0u;
  sub_2144C692C(v115, &v109);
  if (v109 == 8)
  {
    sub_21404A6EC();
    swift_allocError();
    *v38 = 0xD000000000000036;
    v38[1] = 0x800000021478B020;
    v38[2] = 0x4964696C61766E69;
    v38[3] = 0xEB000000006D6574;
    v38[4] = 0xD00000000000001CLL;
    v38[5] = 0x800000021478B060;
    swift_willThrow();
    sub_213FB54FC(v107, v106);
LABEL_27:
    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    return result;
  }

  v91 = v35;
  v92 = v37;
  v39 = v105;
  v90 = v22;
  LODWORD(v115) = v109;
  v103(v105, 1, 1, v22);
  v40 = v100;
  v100(v108, 1, 1, v26);
  v41 = v104;
  v33(v104, 1, 1, v31);
  if (v115 <= 2)
  {
    if (!v115)
    {
      v57 = v94;
      v58 = v106;
      v59 = v107;
      v60 = v101;
      sub_2144C7CE8(v107, v106, v94);
      sub_213FB54FC(v59, v58);
      if (v60)
      {
        v61 = v104;
LABEL_17:
        sub_213FB2DF4(v61, &qword_27C907428, &unk_214755800);
        sub_213FB2DF4(v108, &qword_27C907420, &unk_2146F4A40);
        v64 = v105;
LABEL_26:
        sub_213FB2DF4(v64, &qword_27C907418, &unk_214755810);
        goto LABEL_27;
      }

      v70 = v105;
      sub_213FB2DF4(v105, &qword_27C907418, &unk_214755810);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      v103(v57, 0, 1, v90);
      sub_21408AC04(v57, v70, &qword_27C907418, &unk_214755810);
      v71 = v70;
      v106 = 0;
      v107 = 0;
      LODWORD(v103) = 0;
      v102 = 0;
      v100 = 0;
      v95 = 0;
      v93 = 0;
      v89 = 0;
      v46 = 0;
      v94 = 0;
      v90 = 0;
      v88 = 0;
      v55 = 0;
      v56 = 0;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      goto LABEL_31;
    }

    v42 = v101;
    if (v115 == 1)
    {
      v102 = v29;
      v103 = v26;
      v43 = v95;
      v44 = v106;
      v45 = v107;
      sub_2144C8CB8(v107, v106, v95);
      sub_213FB54FC(v45, v44);
      v46 = v42;
      if (v42)
      {
        sub_213FB2DF4(v41, &qword_27C907428, &unk_214755800);
        sub_213FB2DF4(v108, &qword_27C907420, &unk_2146F4A40);
        sub_213FB2DF4(v105, &qword_27C907418, &unk_214755810);
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        return result;
      }

      v72 = v108;
      sub_213FB2DF4(v108, &qword_27C907420, &unk_2146F4A40);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      v40(v43, 0, 1, v103);
      sub_21408AC04(v43, v72, &qword_27C907420, &unk_2146F4A40);
      v106 = 0;
      v107 = 0;
      LODWORD(v103) = 0;
      v102 = 0;
      v100 = 0;
      v95 = 0;
      v93 = 0;
      v89 = 0;
      v94 = 0;
      v90 = 0;
      v88 = 0;
      v55 = 0;
      v56 = 0;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      v71 = v105;
      v74 = v98;
      v73 = v99;
      v53 = v92;
      goto LABEL_32;
    }

    v62 = v106;
    v63 = v107;
    sub_2144C9D58(v107, v106, &v109);
    if (v42)
    {
      sub_213FB54FC(v63, v62);
      v61 = v41;
      goto LABEL_17;
    }

    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    sub_213FB54FC(v63, v62);
    v107 = 0;
    LODWORD(v103) = 0;
    v94 = 0;
    v90 = 0;
    v88 = 0;
    v55 = 0;
    v56 = 0;
    v106 = v109;
    v102 = BYTE8(v109);
    v95 = *(&v110 + 1);
    v100 = v110;
    v87 = 0u;
    v86 = 0u;
    v89 = *(&v111 + 1);
    v93 = v111;
    v85 = 0u;
    v84 = 0u;
    v46 = v112.n128_u8[0];
LABEL_30:
    v71 = v105;
LABEL_31:
    v72 = v108;
    v74 = v98;
    v73 = v99;
    v53 = v92;
    goto LABEL_32;
  }

  v103 = v34;
  if ((v115 - 3) < 2)
  {
    v65 = v33;
    v66 = v93;
    v67 = v106;
    v68 = v107;
    v69 = v101;
    sub_2144CA0D4(v107, v106, v93);
    if (v69)
    {
      sub_213FB54FC(v68, v67);
      sub_213FB2DF4(v41, &qword_27C907428, &unk_214755800);
      sub_213FB2DF4(v108, &qword_27C907420, &unk_2146F4A40);
      sub_213FB2DF4(v105, &qword_27C907418, &unk_214755810);
      sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
      return result;
    }

    sub_213FB54FC(v68, v67);
    sub_213FB2DF4(v41, &qword_27C907428, &unk_214755800);
    sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
    v65(v66, 0, 1, v31);
    sub_21408AC04(v66, v41, &qword_27C907428, &unk_214755800);
    v106 = 0;
    v107 = 0;
    LODWORD(v103) = 0;
    v102 = 0;
    v100 = 0;
    v95 = 0;
    v93 = 0;
    v89 = 0;
    v46 = 0;
    v94 = 0;
    v90 = 0;
    v88 = 0;
    v55 = 0;
    v56 = 0;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    goto LABEL_30;
  }

  v48 = v39;
  v49 = v106;
  v50 = v107;
  if ((v115 - 6) >= 2)
  {
    has_internal_ui = os_variant_has_internal_ui();
    v76 = v101;
    v53 = v92;
    if (has_internal_ui)
    {
      v54 = v48;
      sub_2144C9F20(v50, v49, &v109);
      if (!v76)
      {
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        sub_213FB54FC(v50, v49);
        v106 = 0;
        v107 = 0;
        LODWORD(v103) = 0;
        v102 = 0;
        v100 = 0;
        v95 = 0;
        v93 = 0;
        v89 = 0;
        v46 = 0;
        v90 = *(&v109 + 1);
        v94 = v109;
        v55 = *(&v110 + 1);
        v88 = v110;
        v56 = v111;
        v87 = 0u;
        v86 = 0u;
        v85 = 0u;
        v84 = 0u;
        goto LABEL_35;
      }

LABEL_25:
      sub_213FB54FC(v50, v49);
      sub_213FB2DF4(v41, &qword_27C907428, &unk_214755800);
      sub_213FB2DF4(v108, &qword_27C907420, &unk_2146F4A40);
      v64 = v54;
      goto LABEL_26;
    }
  }

  else
  {
    v51 = os_variant_has_internal_ui();
    v52 = v101;
    v53 = v92;
    if (v51)
    {
      v54 = v48;
      sub_2144CAF50(v50, v49, &v109);
      if (!v52)
      {
        sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
        sub_213FB54FC(v50, v49);
        v106 = 0;
        v102 = 0;
        v100 = 0;
        v95 = 0;
        v93 = 0;
        v89 = 0;
        v46 = 0;
        v94 = 0;
        v90 = 0;
        v88 = 0;
        v55 = 0;
        v56 = 0;
        v86 = v110;
        v87 = v109;
        v84 = v112;
        v85 = v111;
        v107 = v113;
        LODWORD(v103) = v114;
LABEL_35:
        v71 = v54;
        v72 = v108;
        v74 = v98;
        v73 = v99;
        goto LABEL_32;
      }

      goto LABEL_25;
    }
  }

  sub_2144D6848(a4, type metadata accessor for IDSActivitySharingInvitation);
  sub_213FB54FC(v50, v49);
  v106 = 0;
  v107 = 0;
  LODWORD(v103) = 0;
  v102 = 0;
  v100 = 0;
  v95 = 0;
  v93 = 0;
  v89 = 0;
  v46 = 0;
  v94 = 0;
  v90 = 0;
  v88 = 0;
  v55 = 0;
  v56 = 0;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v72 = v108;
  v74 = v98;
  v73 = v99;
  v71 = v48;
LABEL_32:
  sub_21408AC04(v71, v73, &qword_27C907418, &unk_214755810);
  sub_21408AC04(v72, v74, &qword_27C907420, &unk_2146F4A40);
  sub_21408AC04(v104, v97, &qword_27C907428, &unk_214755800);
  *a4 = v115;
  v77 = v91;
  v78 = v90;
  *v91 = v94;
  v77[1] = v78;
  v77[2] = v88;
  v77[3] = v55;
  *(v77 + 32) = v56;
  v79 = v96;
  v80 = v86;
  *v96 = v87;
  v79[1] = v80;
  result = v84;
  v79[2] = v85;
  v79[3] = result;
  *(v79 + 8) = v107;
  *(v79 + 72) = v103;
  v81 = v102;
  *v53 = v106;
  *(v53 + 1) = v81;
  v82 = v95;
  *(v53 + 2) = v100;
  *(v53 + 3) = v82;
  v83 = v89;
  *(v53 + 4) = v93;
  *(v53 + 5) = v83;
  v53[48] = v46;
  return result;
}