uint64_t sub_1D5D8C8E8()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D8C958()
{

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  }

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D8C9C8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D8CA08()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  }

  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  }

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D8CA98()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D8CAE8()
{

  if (*(v0 + 152) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 256) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D8CC90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D8CD3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D8CFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8D008()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8D040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D8D090@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5D8D0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D5D8D128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

unint64_t sub_1D5D8D16C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5D8D1BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_1D5D8D204(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_1D5D8D248()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8D280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D63245CC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D63245CC(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5D8D404(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D63245CC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D63245CC(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5D8D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_1D5D8D694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2;
  }
}

uint64_t sub_1D5D8D820()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8D868()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D5D8D8A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8DD44()
{
  sub_1D72621EC();
}

void sub_1D5D8DDB4(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C64616568;
  if (*v1)
  {
    v2 = 0x6575737369;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5D8DEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AA31C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8DF10()
{
  v1 = 0x6574656D61726170;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D5D8DF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6675608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667AA28(a1, a2);
  *a3 = result;
  return result;
}

void sub_1D5D8DFC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7974706D457369;
  if (v2 != 1)
  {
    v5 = 0x7974706D45746F6ELL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657261706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D5D8E02C()
{
  sub_1D72621EC();
}

void sub_1D5D8E0A0(uint64_t *a1@<X8>)
{
  v2 = 0x7974706D457369;
  if (*v1)
  {
    v2 = 0x7974706D45746F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5D8E0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C877C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E148()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D5D8E19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66831B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E210()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x69747265706F7270;
  }
}

uint64_t sub_1D5D8E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66885F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BB4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CB6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CBC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8E770()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x656D7473756A6461;
  }
}

uint64_t sub_1D5D8E890()
{
  sub_1D72621EC();
}

void sub_1D5D8E904(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6962;
  if (*v1)
  {
    v2 = 0x726F7463656C6573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1D5D8ED30(uint64_t *a1@<X8>)
{
  v2 = 0x676E696361705368;
  v3 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0x6465786966;
    v3 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x676E696361705376;
    v4 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1D5D8ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65D1FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8EE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CB220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8EF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8F054()
{
  sub_1D72621EC();
}

void sub_1D5D8F0CC(uint64_t *a1@<X8>)
{
  v2 = 0x726F7463656C6573;
  if (*v1)
  {
    v2 = 0x746174536E656573;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5D8F110()
{
  v1 = 0x69646E6F43736872;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69646E6F4373686CLL;
  }
}

uint64_t sub_1D5D8F15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B8E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8F220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65BA02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8F2EC()
{
  sub_1D72621EC();
}

void sub_1D5D8F368(uint64_t *a1@<X8>)
{
  v2 = 0x776F6C6C6F66;
  if (*v1)
  {
    v2 = 0x73756C507377656ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEF736569726F7453;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5D8F458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6477F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8F534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66D1DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D8F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66D2188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5D905B8()
{

  if ((~v0[5] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[6] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[7] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[8] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[9] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[10] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[11] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[12] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[13] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[14] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[15] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[16] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[17] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[18] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[19] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[20] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[21] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[22] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[23] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[24] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[25] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[26] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[27] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[28] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[29] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[30] & 0xF000000000000007) != 0)
  {
  }

  if ((~v0[31] & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D908A0()
{
  sub_1D5F33D8C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D90ABC()
{
  sub_1D5F33D8C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D90CAC()
{

  sub_1D5F33D8C(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5D91BD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D929D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D92CDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D93358()
{
  sub_1D66B92B4(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D93390()
{
  sub_1D5FBAC60(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D933F8()
{
  sub_1D5F5870C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5D93584()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  if (*(v0 + 24) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D93C94()
{
  sub_1D62B628C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5D93CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D93E08()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D93FD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9403C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9408C()
{
  v1 = v0[3];
  if ((~v1 & 0xF000000000000007) != 0 || (v0[5] & 7) != 7)
  {
    sub_1D62B7130(v0[2], v1, v0[4], v0[5]);
  }

  v3 = v0[6];
  v4 = v0[8];
  if ((~(v3 & v4) & 0x3000000000000007) != 0)
  {
    sub_1D62B703C(v3, v0[7], v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D94114()
{
  sub_1D62B7130(v0[2], v0[3], v0[4], v0[5]);
  sub_1D62B703C(v0[6], v0[7], v0[8]);

  return swift_deallocObject();
}

uint64_t sub_1D5D97C24(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D5CEE544(0, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1D5CEE544(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[15]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_1D5CEE544(0, &qword_1EDF18910, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[20];

    return v17(v18, a2, v16);
  }
}

void sub_1D5D97E30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1D5CEE544(0, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1D5CEE544(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[15]) = a2;
  }

  else
  {
    sub_1D5CEE544(0, &qword_1EDF18910, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + a4[20];

    v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1D5D98030(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5CEE544(0, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5D98110(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5CEE544(0, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D98218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatCustomItem.Resolved();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D982C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatCustomItem.Resolved();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D98368()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D983A8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D983E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9842C()
{
  sub_1D671F378();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1D726101C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1D5D98550()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98588()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D985D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98614()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9864C()
{
  v1 = type metadata accessor for FeedHeadline(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = v2 + v3 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v5 = type metadata accessor for SharedItem();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = *(v5 + 28);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  v9 = v1[11];
  v10 = sub_1D726045C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  if (*(v2 + v1[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v2 + v1[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D988D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D98920()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D989E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D98AB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D98B08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98B50()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D98B9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98BE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EDF14DA0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5D98C44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EDF14DA0;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1D5D98CB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D5D98CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98D0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98D4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D98D84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D98DDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98E24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725891C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D98ED0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725891C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D98F74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1D5D98FC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D98FFC()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

__n128 sub_1D5D99124(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5D991B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D991F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D9922C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatAbsoluteURL() + 20));
}

uint64_t sub_1D5D99278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D99334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D72585BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D993EC(uint64_t a1, uint64_t a2)
{
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D99488(uint64_t a1, uint64_t a2)
{
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D99528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B4D3E0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5D995D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B4D3E0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D99678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_1D5D996C8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5D99718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5D99768@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1D5D997B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

unint64_t sub_1D5D997F4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5D99844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 168);
}

uint64_t sub_1D5D99894()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D99AC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D99B74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D99C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent.Resolved();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FeedContext();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5D99DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatContent.Resolved();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FeedContext();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5D99EAC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for DebugFormatWorkspaceGroup();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1D7259F5C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1D7259CFC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1D5D9A018(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for DebugFormatWorkspaceGroup();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1D7259F5C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1D7259CFC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D5D9A190()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9A1CC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9A204()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9A244()
{
  v1 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v49 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v47 = v0 + ((v49 + 40) & ~v49);
  v48 = v1;
  v2 = v47 + *(v1 + 28);

  v3 = v2 + *(type metadata accessor for FormatWorkspaceGroup() + 24);

  v4 = type metadata accessor for FormatContentSubgroup();
  v5 = v3 + *(v4 + 20);
  sub_1D5C2ADA0(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v5 + 168) >= 3uLL)
    {
    }

    v44 = type metadata accessor for FormatPackage();
    v16 = v5 + v44[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v45 = *(v20 - 8);
    v46 = *(v45 + 48);
    if (!v46(v18 + v19, 1, v20))
    {
      (*(v45 + 8))(v18 + v19, v20);
    }

    v43 = v4;
    v21 = *(v17 + 28);
    if (!v46(v16 + v21, 1, v20))
    {
      (*(v45 + 8))(v16 + v21, v20);
    }

    v22 = v44[24];
    v23 = sub_1D725BD1C();
    v24 = *(v23 - 8);
    v25 = *(v24 + 8);
    v25(v5 + v22, v23);
    v26 = v44[25];
    if (!v46(v5 + v26, 1, v20))
    {
      (*(v45 + 8))(v5 + v26, v20);
    }

    sub_1D61F531C(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v28 = v5 + *(v27 + 48);

    v29 = type metadata accessor for FormatMetadata();
    v25(v28 + v29[5], v23);
    v25(v28 + v29[6], v23);
    v30 = v29[7];
    if (!(*(v24 + 48))(v28 + v30, 1, v23))
    {
      v25(v28 + v30, v23);
    }

    v4 = v43;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v7 = sub_1D72585BC();
    (*(*(v7 - 8) + 8))(v5, v7);
    sub_1D61F531C(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v9 = v5 + *(v8 + 48);

    v10 = type metadata accessor for FormatMetadata();
    v11 = v10[5];
    v12 = sub_1D725BD1C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 8);
    v14(v9 + v11, v12);
    v14(v9 + v10[6], v12);
    v15 = v10[7];
    if (!(*(v13 + 48))(v9 + v15, 1, v12))
    {
      v14(v9 + v15, v12);
    }
  }

LABEL_20:
  sub_1D5C2ADA0(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);

  v31 = v3 + *(v4 + 40);

  v32 = type metadata accessor for FormatMetadata();
  v33 = v32[5];
  v34 = sub_1D725BD1C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v36(v31 + v33, v34);
  v36(v31 + v32[6], v34);
  v37 = v32[7];
  if (!(*(v35 + 48))(v31 + v37, 1, v34))
  {
    v36(v31 + v37, v34);
  }

  type metadata accessor for DebugFormatWorkspaceGroup();

  v38 = *(v48 + 32);
  v39 = sub_1D7259F5C();
  (*(*(v39 - 8) + 8))(v47 + v38, v39);
  v40 = *(v48 + 36);
  v41 = sub_1D7259CFC();
  (*(*(v41 - 8) + 8))(v47 + v40, v41);

  return swift_deallocObject();
}

uint64_t sub_1D5D9AA70()
{
  v1 = *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(*(v4 - 8) + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v97 = v0;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v13 - 8) + 48))(v0 + v2, 1, v13))
    {
      goto LABEL_41;
    }

    v92 = v5;
    v93 = v3;

    v14 = v6 + *(v13 + 28);
    v10 = sub_1D725BD1C();
    v11 = *(*(v10 - 8) + 8);
    v11(v14, v10);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v12 = v6 + *(v13 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v15 = type metadata accessor for FormatContent(0);
        v16 = *(v15 + 20);
        v17 = sub_1D725891C();
        (*(*(v17 - 8) + 8))(v12 + v16, v17);

        v18 = *(v15 + 44);
        v19 = sub_1D72608BC();
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(v12 + v18, 1, v19))
        {
          (*(v20 + 8))(v12 + v18, v19);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v12 + 106) != 255)
        {
          v28 = *(v12 + 104) | (*(v12 + 106) << 16);
          sub_1D60CF684(*(v12 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v12 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v12 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v12 + 168) >= 3uLL)
        {
        }

        v81 = type metadata accessor for FormatPackage();
        v29 = v12 + v81[23];

        v83 = type metadata accessor for FormatCompilerOptions(0);
        v85 = v29;
        v30 = v29 + *(v83 + 24);
        if (*(v30 + 8) != 1)
        {
        }

        v31 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v91 = sub_1D725B76C();
        v87 = *(v91 - 8);
        v89 = *(v87 + 48);
        if (!v89(v30 + v31, 1))
        {
          (*(v87 + 8))(v30 + v31, v91);
        }

        v79 = *(v83 + 28);
        if (!(v89)(v85 + v79, 1, v91))
        {
          (*(v87 + 8))(v85 + v79, v91);
        }

        v11(v12 + v81[24], v10);
        v32 = v81[25];
        if (!(v89)(v12 + v32, 1, v91))
        {
          (*(v87 + 8))(v12 + v32, v91);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 72), *(v12 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v21 = v12 + *(type metadata accessor for FormatBindingContent() + 28);

        v22 = type metadata accessor for FormatContent(0);
        v23 = *(v22 + 20);
        v24 = sub_1D725891C();
        (*(*(v24 - 8) + 8))(v21 + v23, v24);

        v25 = *(v22 + 44);
        v26 = sub_1D72608BC();
        v27 = *(v26 - 8);
        if (!(*(v27 + 48))(v21 + v25, 1, v26))
        {
          (*(v27 + 8))(v21 + v25, v26);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
    {
      v92 = v5;
      v93 = v3;

      v9 = v6 + *(v8 + 28);
      v10 = sub_1D725BD1C();
      v11 = *(*(v10 - 8) + 8);
      v11(v9, v10);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v12 = v6 + *(v8 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      v5 = v92;
      v3 = v93;
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v12 + *(v33 + 44)), *(v12 + *(v33 + 44) + 8));
    }
  }

LABEL_41:
  v34 = v5;
  v35 = v3 + v5;

  v36 = (v6 + *(v4 + 24));

  v37 = type metadata accessor for FeedContext();
  v38 = v36 + v37[5];
  v39 = type metadata accessor for BundleSession();
  v94 = *(*(v39 - 8) + 48);
  if (!v94(v38, 1, v39))
  {
    v40 = *(v39 + 20);
    v41 = sub_1D725891C();
    (*(*(v41 - 8) + 8))(&v38[v40], v41);
  }

  v42 = v2 + v35;

  if (*(v36 + v37[12] + 8) - 1 >= 3)
  {
  }

  v43 = v42 & ~v34;

  v44 = (v6 + *(v4 + 28));
  if (v44[1])
  {

    if (v44[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v44[30] >= 0x12uLL)
    {
    }
  }

  v45 = v97 + v43;
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 1)
  {
    v51 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v51 - 8) + 48))(v97 + v43, 1, v51))
    {
      goto LABEL_90;
    }

    v52 = v45 + *(v51 + 28);
    v49 = sub_1D725BD1C();
    v95 = *(*(v49 - 8) + 8);
    v95(v52, v49);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v50 = v45 + *(v51 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_56:

        v53 = type metadata accessor for FormatContent(0);
        v54 = *(v53 + 20);
        v55 = sub_1D725891C();
        (*(*(v55 - 8) + 8))(v50 + v54, v55);

        v56 = *(v53 + 44);
        v57 = sub_1D72608BC();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v50 + v56, 1, v57))
        {
          (*(v58 + 8))(v50 + v56, v57);
        }

        goto LABEL_61;
      case 1u:
LABEL_72:

        if (*(v50 + 106) != 255)
        {
          v66 = *(v50 + 104) | (*(v50 + 106) << 16);
          sub_1D60CF684(*(v50 + 96), v66, SBYTE2(v66));
        }

        goto LABEL_89;
      case 2u:
LABEL_65:

        if (*(v50 + 72) >= 3uLL)
        {
        }

        goto LABEL_88;
      case 3u:
LABEL_68:

        if (*(v50 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_88;
      case 4u:
LABEL_62:

        goto LABEL_88;
      case 5u:
LABEL_74:

        if (*(v50 + 168) >= 3uLL)
        {
        }

        v84 = type metadata accessor for FormatPackage();
        v67 = v50 + v84[23];

        v80 = type metadata accessor for FormatCompilerOptions(0);
        v82 = v67;
        v68 = v67 + *(v80 + 24);
        if (*(v68 + 8) != 1)
        {
        }

        v69 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v90 = sub_1D725B76C();
        v86 = *(v90 - 8);
        v88 = *(v86 + 48);
        if (!v88(v68 + v69, 1))
        {
          (*(v86 + 8))(v68 + v69, v90);
        }

        v78 = *(v80 + 28);
        if (!(v88)(v82 + v78, 1, v90))
        {
          (*(v86 + 8))(v82 + v78, v90);
        }

        v95(v50 + v84[24], v49);
        v70 = v84[25];
        if (!(v88)(v50 + v70, 1, v90))
        {
          (*(v86 + 8))(v50 + v70, v90);
        }

        goto LABEL_88;
      case 6u:
LABEL_85:

        goto LABEL_88;
      case 7u:
LABEL_71:

        goto LABEL_89;
      case 8u:
LABEL_87:

        goto LABEL_88;
      case 9u:
LABEL_64:

        goto LABEL_88;
      case 0xAu:
LABEL_86:

        sub_1D60CF6F4(*(v50 + 32), *(v50 + 40), *(v50 + 48), *(v50 + 56), *(v50 + 64), *(v50 + 72), *(v50 + 80));
        goto LABEL_89;
      case 0xBu:
LABEL_59:

        v59 = v50 + *(type metadata accessor for FormatBindingContent() + 28);

        v60 = type metadata accessor for FormatContent(0);
        v61 = *(v60 + 20);
        v62 = sub_1D725891C();
        (*(*(v62 - 8) + 8))(v59 + v61, v62);

        v63 = *(v60 + 44);
        v64 = sub_1D72608BC();
        v65 = *(v64 - 8);
        v96 = v64;
        if (!(*(v65 + 48))(v59 + v63, 1))
        {
          (*(v65 + 8))(v59 + v63, v96);
        }

LABEL_61:

        goto LABEL_88;
      case 0xCu:
LABEL_63:

LABEL_88:

        break;
      default:
        goto LABEL_89;
    }

    goto LABEL_89;
  }

  if (!v46)
  {
    v47 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v47 - 8) + 48))(v97 + v43, 1, v47))
    {

      v48 = v45 + *(v47 + 28);
      v49 = sub_1D725BD1C();
      v95 = *(*(v49 - 8) + 8);
      v95(v48, v49);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v50 = v45 + *(v47 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_56;
        case 1u:
          goto LABEL_72;
        case 2u:
          goto LABEL_65;
        case 3u:
          goto LABEL_68;
        case 4u:
          goto LABEL_62;
        case 5u:
          goto LABEL_74;
        case 6u:
          goto LABEL_85;
        case 7u:
          goto LABEL_71;
        case 8u:
          goto LABEL_87;
        case 9u:
          goto LABEL_64;
        case 0xAu:
          goto LABEL_86;
        case 0xBu:
          goto LABEL_59;
        case 0xCu:
          goto LABEL_63;
        default:
          break;
      }

LABEL_89:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v50 + *(v71 + 44)), *(v50 + *(v71 + 44) + 8));
    }
  }

LABEL_90:

  v72 = (v45 + *(v4 + 24));

  v73 = v72 + v37[5];
  if (!v94(v73, 1, v39))
  {
    v74 = *(v39 + 20);
    v75 = sub_1D725891C();
    (*(*(v75 - 8) + 8))(&v73[v74], v75);
  }

  if (*(v72 + v37[12] + 8) - 1 >= 3)
  {
  }

  v76 = (v45 + *(v4 + 28));
  if (v76[1])
  {

    if (v76[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v76[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D9C4AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9C4F4()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D9D2A4()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D9E054()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D9E0F0()
{
  v1 = (type metadata accessor for DebugFormatWorkspaceSnapshotManifest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1D725891C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 8);
  v6(v2 + v4, v5);
  v6(v2 + v1[8], v5);
  v6(v2 + v1[9], v5);

  return swift_deallocObject();
}

uint64_t sub_1D5D9E274()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9E438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D5D9E480(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_1D5D9E4C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D9E514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D9E564()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9E5AC()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D9E5F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9E628()
{
  if ((~*(v0 + 16) & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D9E670()
{
  if (*(v0 + 96) != 254)
  {
  }

  return swift_deallocObject();
}

__n128 sub_1D5D9E6FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5D9E748(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D9E7F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D9E8A8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9E8E0()
{

  return swift_deallocObject();
}

__n128 sub_1D5D9E938(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5D9E944()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9E9A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D9E9F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D9EA48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9EA90()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D9EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PuzzleResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1D67B30C0(0, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 48);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D5D9EC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PuzzleResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  else
  {
    sub_1D67B30C0(0, &unk_1EC882110, type metadata accessor for PuzzleHistoryInfo, MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5D9EDBC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9EDF4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9EE5C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9EEA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D9EF50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D9F004()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D9F0F4()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D9F320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D9F370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5D9F3C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5D9F410()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725C2AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D5B7B41C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D5D9F594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725C2AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    sub_1D5B7B41C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5D9F6E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9F754()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9F78C()
{

  sub_1D5B952F8(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5D9F7E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9F81C()
{

  sub_1D5B952F8(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5D9F878()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9F8B4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D9F948()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D9FF68@<X0>(uint64_t *a1@<X8>)
{
  result = SportsSyncingConfigResource.umcIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5D9FF94(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1D5D9FFD8@<X0>(uint64_t *a1@<X8>)
{
  result = SportsSyncingConfigResource.tagIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA0004(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_1D5DA0048@<X0>(uint64_t *a1@<X8>)
{
  result = SportsSyncingConfigResource.teamUMCIDToTagIDMap.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA0074(void *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

uint64_t sub_1D5DA00B8@<X0>(uint64_t *a1@<X8>)
{
  result = SportsSyncingConfigResource.leagueUMCIDToTagIDMap.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA00E4(void *a1, uint64_t a2)
{
  *(*a2 + 48) = *a1;
}

uint64_t sub_1D5DA0128(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D72585BC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_1D5B4D3E0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  sub_1D67F16E8(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_1D5B4D72C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_1D5DA02DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D72585BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_1D5B4D3E0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_1D67F16E8(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_1D5B4D72C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D5DA0490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatTransformData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D5DA0550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatTransformData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA0664(void *a1, void *a2)
{

  *a2 = *a1;
}

uint64_t sub_1D5DA06C0()
{
  v1 = (type metadata accessor for LiveActivityCommandContext() - 8);
  v2 = (*(*v1 + 80) + 72) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v3 = sub_1D725C2AC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  v5 = sub_1D725C1EC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D5DA0804()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA084C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA0884(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA0930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA09E4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA0A1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA0A80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA0AB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA0B10()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA18B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsDataServiceBatchRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DA1970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsDataServiceBatchRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA1A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D726094C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DA1B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D726094C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA1C14()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2030()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA20A0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA20F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SharedItem();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5DA2170()
{
  v1 = sub_1D726094C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D726062C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for FeedHeadline(0);
  v10 = *(*(v9 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v11 = v0 + ((v7 + v8 + v10) & ~v10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v12 = v9[10];
  v13 = v11 + v12 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v14 = type metadata accessor for SharedItem();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = sub_1D725891C();
    (*(*(v15 - 8) + 8))(v13, v15);

    v16 = *(v14 + 28);
    v17 = sub_1D72585BC();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
  }

  v18 = v9[11];
  v19 = sub_1D726045C();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v11 + v18, 1, v19))
  {
    (*(v20 + 8))(v11 + v18, v19);
  }

  if (*(v11 + v9[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v11 + v9[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA24F4()
{
  v1 = sub_1D726094C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D726062C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for FeedHeadline(0);
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v23 = *(*(v9 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v12 = v0 + v11;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = v9[10];
  v14 = v0 + v11 + v13 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v15 = type metadata accessor for SharedItem();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = sub_1D725891C();
    (*(*(v16 - 8) + 8))(v14, v16);

    v17 = *(v15 + 28);
    v18 = sub_1D72585BC();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
  }

  v19 = v9[11];
  v20 = sub_1D726045C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v12 + v19, 1, v20))
  {
    (*(v21 + 8))(v12 + v19, v20);
  }

  if (*(v12 + v9[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v12 + v9[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v23 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D5DA2890()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA28C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2938()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2970()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + v4);
  if ((v5 - 1) >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA2A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = v12 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v10 = v5 + *(v4 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = (v10 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v12, v1);
  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1D5DA2D60()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2DDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2E24()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2E74()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2EBC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2F04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA2F54()
{
  sub_1D5F77808();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DA2FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatReloadRequest(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DA3088(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatReloadRequest(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA312C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatPluginData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DA31E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatPluginData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA32A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA32EC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aPuzzlestyle_0[8];
  *a1 = *aPuzzlestyle_0;
  a1[1] = v2;
}

uint64_t sub_1D5DA33B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA3408()
{
  v1 = type metadata accessor for FormatPluginData();
  v2 = *(*(v1 - 1) + 80);
  swift_unownedRelease();
  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = type metadata accessor for FormatContent.Resolved();
  v5 = v4[5];
  v6 = sub_1D725891C();
  v32 = *(*(v6 - 8) + 8);
  v33 = v6;
  v32(v3 + v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v7 = v3 + v4[16];
  v8 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v7 + v8[5];

    v10 = type metadata accessor for FormatWebEmbed();
    v11 = *(v10 + 20);
    v12 = sub_1D72585BC();
    v13 = *(v12 - 8);
    v31 = *(v13 + 8);
    v31(v9 + v11, v12);
    v14 = *(v10 + 24);
    if (!(*(v13 + 48))(v9 + v14, 1, v12))
    {
      v31(v9 + v14, v12);
    }

    v15 = v7 + v8[8];
    v16 = type metadata accessor for WebEmbedDataVisualization();
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = type metadata accessor for GenericDataVisualization();
        v31(v15 + *(v17 + 20), v12);
      }

      else
      {
      }
    }

    v18 = v8[9];
    sub_1D5B5D194();
    v20 = v19;
    v21 = *(v19 - 8);
    if (!(*(v21 + 48))(v7 + v18, 1, v19))
    {
      (*(v21 + 8))(v7 + v18, v20);
    }
  }

  v22 = v4[21];
  v23 = sub_1D72608BC();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v3 + v22, 1, v23))
  {
    (*(v24 + 8))(v3 + v22, v23);
  }

  v25 = (v3 + v1[5]);

  v26 = type metadata accessor for FeedContext();
  v27 = v25 + v26[5];
  v28 = type metadata accessor for BundleSession();
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    (v32)(&v27[*(v28 + 20)], v33);
  }

  if (*(v25 + v26[12] + 8) - 1 >= 3)
  {
  }

  v29 = v3 + v1[6];
  if (*(v29 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA3A30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DA3A80(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DA3AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DA3B48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA3C30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA3C68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA3D14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA3DBC()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA3E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA3ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA3F00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA3F30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA3F60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72573DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA3F8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA4038(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA40DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA4120()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return swift_deallocObject();
}

uint64_t sub_1D5DA4244()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA42DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA4314@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = static FormatCodingEmptySetStrategy.encode(wrappedValue:)(*a1, a2[2], a2[3], a3, a4, a2[6]);
  *a5 = result;
  return result;
}

uint64_t sub_1D5DA4440@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1D5DA4484@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 16);
  a2[1] = v2;
}

uint64_t sub_1D5DA44C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
  sub_1D5DEA234(v2);
}

uint64_t sub_1D5DA461C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DA4628(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DA4678(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DA46E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DA472C(uint64_t a1)
{
  sub_1D686E758();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DA4790()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA47D8()
{
  sub_1D686E914(255, &qword_1EC88D200, sub_1D686E758, sub_1D686E9A0);
  sub_1D686E758();
  sub_1D686E9A0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

double sub_1D5DA489C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1D5DA48A8(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1D5DA48B4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float sub_1D5DA48C0(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_1D5DA48CC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  return result;
}

__n128 sub_1D5DA48D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1] = *a1;
  return result;
}

uint64_t sub_1D5DA48F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DA4938()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA4984(uint64_t a1)
{
  sub_1D6871194();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DA49E4()
{

  if (*(v0 + 120) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA4A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D72610EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DA4B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatSlotDefinition();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DA4BEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatSlotDefinition();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA4C90()
{
  v1 = (type metadata accessor for DebugFormatPackageTreeSlotView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];

  v4 = *(type metadata accessor for FormatSlotDefinition() + 40);
  v5 = sub_1D725B76C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA4DF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA4E30(uint64_t a1, uint64_t a2)
{
  sub_1D6874D08();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DA4E94(uint64_t a1)
{
  sub_1D6874D08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DA4EF4(uint64_t a1, uint64_t a2)
{
  sub_1D60747E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DA4F60(uint64_t a1, uint64_t a2)
{
  sub_1D60747E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DA503C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA5074()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA50AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DA50B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DA5120(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DA5170(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1D5DA51C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 72) = v3;
  return result;
}

uint64_t sub_1D5DA5210(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D5DA5260(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_1D5DA52B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_1D5DA5300(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_1D5DA5350(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_1D5DA53A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 136) = v3;
  return result;
}

uint64_t sub_1D5DA53F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_1D5DA5440(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 152) = v3;
  return result;
}

uint64_t sub_1D5DA5484@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatPackage() + 104));
}

uint64_t sub_1D5DA54D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for FormatCompilerOptions(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[23];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1D725BD1C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_9;
  }

  sub_1D5B4BE38(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[25];

  return v16(v17, a2, v15);
}

uint64_t sub_1D5DA566C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FormatCompilerOptions(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[23];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1D725BD1C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_7;
  }

  sub_1D5B4BE38(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[25];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5DA58D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DA5924@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DA5974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5DA59C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DA5A14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DA5A64()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA5AAC()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DA5AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72608BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DA5B9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72608BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA5C60()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA5C98()
{
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);

  v3 = sub_1D725D4AC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA5DEC()
{
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);

  v3 = sub_1D725D4AC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA6198()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA61E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA656C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA65A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D68B28C0();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DA665C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D68B28C0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DA6700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DA67AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA6850()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA6898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_1D5DA68E8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5DA6938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DA6988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1D5DA69D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1D5DA6A14@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[10];
  v9[0] = v3[9];
  v9[1] = v4;
  v10[0] = v3[11];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 185);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1D66AD764(v9, v8);
}

unint64_t sub_1D5DA6A88@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 208);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DA6AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 216);
}

uint64_t sub_1D5DA6B28()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA6B60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA6B98()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA6BE8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA6C20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DA6D28()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA6D68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA6DAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA6E58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA6EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B548BC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DA6FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B548BC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DA7088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5DA70D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DA7128()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA7170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatRegex();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DA722C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatRegex();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA72F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA7348(uint64_t a1, uint64_t a2)
{
  sub_1D68C3B60(0, &qword_1EC88DA90, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DA73C8(uint64_t a1)
{
  sub_1D68C3B60(0, &qword_1EC88DA90, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DA744C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA7488(uint64_t a1, uint64_t a2)
{
  sub_1D68C3360(0, &qword_1EC88D9E8, sub_1D68C33C4, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DA751C(uint64_t a1)
{
  sub_1D68C3360(0, &qword_1EC88D9E8, sub_1D68C33C4, MEMORY[0x1E6981F40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DA75A8()
{
  v43 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v44 = *(*(v43 - 8) + 80);

  v42 = v0 + ((v44 + 48) & ~v44);
  v1 = v42 + *(type metadata accessor for FormatWorkspaceGroup() + 24);

  v2 = type metadata accessor for FormatContentSubgroup();
  v3 = v1 + *(v2 + 20);
  sub_1D5C2AB28(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v3 + 168) >= 3uLL)
    {
    }

    v39 = type metadata accessor for FormatPackage();
    v14 = v3 + v39[23];

    v15 = type metadata accessor for FormatCompilerOptions(0);
    v16 = v14 + *(v15 + 24);
    if (*(v16 + 8) != 1)
    {
    }

    v17 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v18 = sub_1D725B76C();
    v40 = *(v18 - 8);
    v41 = *(v40 + 48);
    if (!v41(v16 + v17, 1, v18))
    {
      (*(v40 + 8))(v16 + v17, v18);
    }

    v38 = v2;
    v19 = *(v15 + 28);
    if (!v41(v14 + v19, 1, v18))
    {
      (*(v40 + 8))(v14 + v19, v18);
    }

    v20 = v39[24];
    v21 = sub_1D725BD1C();
    v22 = *(v21 - 8);
    v23 = *(v22 + 8);
    v23(v3 + v20, v21);
    v24 = v39[25];
    if (!v41(v3 + v24, 1, v18))
    {
      (*(v40 + 8))(v3 + v24, v18);
    }

    sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v26 = v3 + *(v25 + 48);

    v27 = type metadata accessor for FormatMetadata();
    v23(v26 + v27[5], v21);
    v23(v26 + v27[6], v21);
    v28 = v27[7];
    if (!(*(v22 + 48))(v26 + v28, 1, v21))
    {
      v23(v26 + v28, v21);
    }

    v2 = v38;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v5 = sub_1D72585BC();
    (*(*(v5 - 8) + 8))(v3, v5);
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v7 = v3 + *(v6 + 48);

    v8 = type metadata accessor for FormatMetadata();
    v9 = v8[5];
    v10 = sub_1D725BD1C();
    v11 = *(v10 - 8);
    v12 = *(v11 + 8);
    v12(v7 + v9, v10);
    v12(v7 + v8[6], v10);
    v13 = v8[7];
    if (!(*(v11 + 48))(v7 + v13, 1, v10))
    {
      v12(v7 + v13, v10);
    }
  }

LABEL_20:
  sub_1D5B5971C();

  v29 = v1 + *(v2 + 40);

  v30 = type metadata accessor for FormatMetadata();
  v31 = v30[5];
  v32 = sub_1D725BD1C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 8);
  v34(v29 + v31, v32);
  v34(v29 + v30[6], v32);
  v35 = v30[7];
  if (!(*(v33 + 48))(v29 + v35, 1, v32))
  {
    v34(v29 + v35, v32);
  }

  v36 = v42 + *(v43 + 28);

  if (*(v36 + 72) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA7D38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA7D8C()
{
  sub_1D68C5E48();
  sub_1D68C606C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DA7E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DA7E18(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DA7E68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DA7EAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA7F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA800C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA8044()
{
  sub_1D5E2C2C8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DA8108()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA8140()
{
  v1 = (type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 16);
  v4 = v0 + v2 + v1[8];
  __swift_destroy_boxed_opaque_existential_1(v4 + 8);

  v5 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
  v6 = sub_1D725A0AC();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  v7 = v0 + v2 + v1[9];
  v8 = sub_1D7259F5C();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for GroupLayoutContext();
  v10 = *(v9 + 20);
  v11 = sub_1D7259CFC();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v7 + *(v9 + 24);
  if (*(v12 + 24) >= 2uLL)
  {
  }

  v13 = type metadata accessor for FeedLayoutSolverOptions(0);
  v14 = *(v13 + 36);
  v15 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v15 - 8) + 48))(v12 + v14, 1, v15))
  {
    v16 = sub_1D725E23C();
    (*(*(v16 - 8) + 8))(v12 + v14, v16);
  }

  if (*(v12 + *(v13 + 40) + 8) != 1)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA8440()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA84D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA8510()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8548()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8588()
{
  sub_1D5B952F8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5DA8608()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8640()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA86D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8710()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA8768()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA87A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA8924()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA895C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA8994()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA89CC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA8A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatWorkspaceGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DA8ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatWorkspaceGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DA8C08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8CA0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugFormatCacheFileMetadata();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D60CF7A4();
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5DA8DFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DebugFormatCacheFileMetadata();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D60CF7A4();
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5DA8F20()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8F68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA8FA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DA8FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DA9048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5DA90A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA90E0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA911C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA916C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA91A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9264()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9334()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9380(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA942C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA94E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DA9594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D60747E4();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DA964C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    sub_1D60747E4();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DA96F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9728()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9770(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FeedItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DA981C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DA98C0()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DA9930()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DA9970(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D72585BC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  sub_1D5B4D3E0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  sub_1D5B69BE0(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  sub_1D5B4D72C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_1D5DA9B24(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = sub_1D72585BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  sub_1D5B4D3E0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  sub_1D5B69BE0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  sub_1D5B4D72C(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[13];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D5DA9CD8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9D10()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9D68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DA9DF4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DA9E2C@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for FormatPrimitivePropertyDefinition();
  result = FormatPrimitivePropertyDefinition.deprecated.getter(v2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5DA9E6C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for FormatPrimitivePropertyDefinition();
  return FormatPrimitivePropertyDefinition.deprecated.setter(v1, v2);
}

__n128 sub_1D5DA9EB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DA9EFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_1D5DA9F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DAA020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DAA6E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAA7CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAA814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedHeadline(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DAA880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedHeadline(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DAA8F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedHeadline(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D5DAAA14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedHeadline(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DAAB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725891C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DAABF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725891C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1D5DAAC9C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5DAACEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DAAD3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DAAD74()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DAADB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportsDataVisualizationResponseMetadata();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DAAEA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportsDataVisualizationResponseMetadata();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DAAF58()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAAF90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.ignoreMetadata.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5DAB0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.bindingContent.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5DAB11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.allowSourceMaps.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5DAB160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.errorOnUnknownKeys.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5DAB1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D6081298();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DAB250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D6081298();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DAB2F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB33C()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DAB3AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB3F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DAB42C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DAB464()
{
  v1 = (type metadata accessor for InternalErrorViewLayout.Context() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[14];
  type metadata accessor for InternalErrorViewModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D5BC6C20(*(v3 + 16));

    sub_1D5BAAE44(0, v4);
    v6 = v3 + *(v5 + 80);
    __swift_destroy_boxed_opaque_existential_1(v6 + 8);

    v7 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
    v8 = sub_1D725A0AC();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DAB680()
{
  v1 = (type metadata accessor for InternalErrorViewLayout.Context() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[14];
  type metadata accessor for InternalErrorViewModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D5BC6C20(*(v3 + 16));

    sub_1D5BAAE44(0, v4);
    v6 = v3 + *(v5 + 80);
    __swift_destroy_boxed_opaque_existential_1(v6 + 8);

    v7 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
    v8 = sub_1D725A0AC();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DAB888()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB8C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB900()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB938()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB974()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAB9D0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DABA08()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DABC34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DABC84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D5DABCCC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1D5DABD10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DABD60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5DABDB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DABDE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DABE3C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DABE74()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DABED0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DABF08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DABF60()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DACD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DACDD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

__n128 sub_1D5DACEA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DACF00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DACF40()
{

  if (*(v0 + 96) >= 0x12uLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1D5DACFB4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DACFEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAD03C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAD090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D60077D8();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DAD13C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D60077D8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

__n128 sub_1D5DAD250(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DAD37C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
}

unint64_t sub_1D5DAD390@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return sub_1D5C82CD8(v2);
}

unint64_t sub_1D5DAD39C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t sub_1D5DAD3DC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DAD42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WebEmbedDataVisualization();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DAD4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DAD5A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DAD5F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D5DAD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5CC51A0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DAD6FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5CC51A0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DAD7A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAD7E8()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DAD82C@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.canReuse.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D5DAD8A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DAD8B8(void *a1, void *a2)
{

  *a2 = *a1;
}

uint64_t sub_1D5DAD8FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DAD93C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAD99C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAD9D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADA20()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DADA58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DADA90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADAD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADB10()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADB8C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DADBDC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DADC50()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADCA8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DADCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DADD3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DADE04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADE3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADE9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DADEE0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DADF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7258DBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DADF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7258DBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DAE014()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DAE064()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAE0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DebugFormatWorkspace();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DAE1A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DebugFormatWorkspace();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DAE25C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAE29C()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DAE2EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v16[8] = v3[10];
  v7 = v3[8];
  v16[7] = v3[9];
  v8 = v3[3];
  v10 = v3[5];
  v9 = v3[6];
  v16[2] = v3[4];
  v16[3] = v10;
  v16[5] = v4;
  v16[6] = v5;
  v16[4] = v9;
  v16[0] = v3[2];
  v16[1] = v8;
  a2[6] = v7;
  a2[7] = v6;
  a2[8] = v3[10];
  v11 = v3[5];
  a2[2] = v3[4];
  a2[3] = v11;
  v12 = v3[7];
  a2[4] = v3[6];
  a2[5] = v12;
  v13 = v3[3];
  *a2 = v3[2];
  a2[1] = v13;
  return sub_1D5E9E6F8(v16, v15);
}

uint64_t sub_1D5DAE39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1D5DAE3EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5DAE43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  swift_beginAccess();
  return sub_1D6A405D0(v3 + v4, a2);
}

uint64_t sub_1D5DAE49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1D72585BC();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_1D72577EC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D5DAE614(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D725891C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_1D72577EC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5DAE78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D5B5B2A0();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DAE87C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D5B5B2A0();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DAE978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DAE9C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DAEA18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DAEA68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEAB0()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DAEAF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DAEB04(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

unint64_t sub_1D5DAEB48@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return sub_1D5C82CD8(v2);
}

unint64_t sub_1D5DAEB54(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  sub_1D5C82CD8(*a1);
  result = sub_1D5C92A8C(v4);
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DAEBA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

unint64_t sub_1D5DAEC00@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = v2;
  return sub_1D5EB1500(v2);
}

unint64_t sub_1D5DAEC0C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  sub_1D5EB1500(*a1);
  result = sub_1D5EB15C4(v4);
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5DAEC74(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D5DAECB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAECF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DAED40(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DAED98()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FeedContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DAEE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DAEF30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEF78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DAEF84(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DAEFD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DAF018()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF060()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DAF0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A34C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5DAF174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725A34C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D5DAF234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DAF2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DAF314()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D6A5DD4C();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DAF408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    sub_1D6A5DD4C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DAF4F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF548(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DAF58C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF5D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatButtonNodeDataAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D6A649A0(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DAF70C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatButtonNodeDataAction();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D6A649A0(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DAF808()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B7B5E0(0, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1D5DAF940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5B7B5E0(0, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

__n128 sub_1D5DAFA40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DAFB50()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DAFB88()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAFBC8()
{

  sub_1D607F09C();

  return swift_deallocObject();
}

uint64_t sub_1D5DAFC0C()
{
  v1 = *(*(type metadata accessor for FormatInspectionFeedGroupItem() - 8) + 80);

  v2 = v0 + ((v1 + 24) & ~v1);
  type metadata accessor for FeedGroupItem();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      swift_unknownObjectRelease();

      break;
    case 1u:

      if (*(v2 + 80) != 1)
      {
      }

      if (*(v2 + 128) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      break;
    case 2u:
      goto LABEL_94;
    case 3u:

      v20 = type metadata accessor for FeedWeather(0);
      v21 = *(v20 + 28);
      v22 = sub_1D7261CAC();
      (*(*(v22 - 8) + 8))(v2 + v21, v22);
      v23 = v2 + *(v20 + 36);
      sub_1D6A7DA3C(0, &qword_1EDF43B60, &qword_1EDF3C740, 0x1E696B080, MEMORY[0x1E6968070]);
      v25 = v24;
      v26 = *(*(v24 - 8) + 8);
      v26(v23, v24);
      v27 = type metadata accessor for FeedWeather.Temperature(0);
      v26(v23 + v27[5], v25);
      v26(v23 + v27[6], v25);
      v26(v23 + v27[7], v25);
      goto LABEL_96;
    case 4u:

      if (*(v2 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v2 + 240) < 0x12uLL)
      {
        break;
      }

      goto LABEL_96;
    case 5u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28 = type metadata accessor for FeedHeadline(0);
      v29 = v28[10];
      v30 = v2 + v29 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v31 = type metadata accessor for SharedItem();
      if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
      {
        v32 = sub_1D725891C();
        (*(*(v32 - 8) + 8))(v30, v32);

        v33 = *(v31 + 28);
        v34 = sub_1D72585BC();
        (*(*(v34 - 8) + 8))(v30 + v33, v34);
      }

      v35 = v28[11];
      v36 = sub_1D726045C();
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(v2 + v35, 1, v36))
      {
        (*(v37 + 8))(v2 + v35, v36);
      }

      if (*(v2 + v28[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v2 + v28[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      v47 = type metadata accessor for FeedWebEmbed();
      v48 = v47[8];
      v49 = sub_1D72585BC();
      v50 = *(v49 - 8);
      v79 = *(v50 + 8);
      v79(v2 + v48, v49);
      v51 = v47[9];
      if (!(*(v50 + 48))(v2 + v51, 1, v49))
      {
        v79(v2 + v51, v49);
      }

      v52 = v2 + v47[12];
      v53 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v53 - 1) + 48))(v52, 1, v53))
      {
        v78 = v49;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v54 = v53[10];
        v55 = v52 + v54 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v56 = type metadata accessor for SharedItem();
        if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
        {
          v57 = sub_1D725891C();
          (*(*(v57 - 8) + 8))(v55, v57);

          v79(v55 + *(v56 + 28), v78);
        }

        v58 = v53[11];
        v59 = sub_1D726045C();
        v60 = *(v59 - 8);
        if (!(*(v60 + 48))(v52 + v58, 1, v59))
        {
          (*(v60 + 8))(v52 + v58, v59);
        }

        if (*(v52 + v53[12] + 8) >= 0x12uLL)
        {
        }

        v49 = v78;
        if (*(v52 + v53[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v61 = v2 + v47[13];
      v62 = type metadata accessor for WebEmbedDataVisualization();
      if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v63 = type metadata accessor for GenericDataVisualization();
          v79(v61 + *(v63 + 20), v49);
        }

        else
        {
        }
      }

      goto LABEL_96;
    case 7u:

      break;
    case 8u:
      goto LABEL_80;
    case 9u:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v2 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1(v2 + 88);
      }

      if (*(v2 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1(v2 + 128);
      }

      if (!*(v2 + 192))
      {
        break;
      }

      v19 = v2 + 168;
      goto LABEL_60;
    case 0xAu:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

LABEL_80:

      swift_unknownObjectRelease();
      break;
    case 0xBu:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      v3 = v2 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      swift_unknownObjectRelease();
      v2 = v3 + *(type metadata accessor for PuzzleStatistic() + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v72 - 8) + 48))(v2, 1, v72))
          {
            v73 = sub_1D725891C();
            (*(*(v73 - 8) + 8))(v2, v73);
            v74 = type metadata accessor for PuzzleLeaderboardEntry();

            v75 = v2 + *(v74 + 24);

            v76 = *(v75 + 40);
            if (v76 >> 60 != 15)
            {
              sub_1D5B952F8(*(v75 + 32), v76);
            }

LABEL_94:

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v64 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v65 = *(v64 + 28);
          v66 = type metadata accessor for PuzzleStreak();
          v67 = *(*(v66 - 8) + 48);
          if (!v67(v2 + v65, 1, v66))
          {
            v68 = sub_1D7257ADC();
            (*(*(v68 - 8) + 8))(v2 + v65, v68);
          }

          v17 = *(v64 + 32);
          if (!v67(v2 + v17, 1, v66))
          {
            v18 = sub_1D7257ADC();
LABEL_25:
            (*(*(v18 - 8) + 8))(v2 + v17, v18);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v5 = swift_getEnumCaseMultiPayload();
          if (v5 == 6 || v5 == 5)
          {
            v6 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v6 - 8) + 48))(v2, 1, v6))
            {
              v7 = sub_1D7257ADC();
              (*(*(v7 - 8) + 8))(v2, v7);
            }
          }

          v8 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
          v9 = *(v8 + 20);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 == 6 || v10 == 5)
          {
            v11 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v11 - 8) + 48))(v2 + v9, 1, v11))
            {
              v12 = sub_1D7257ADC();
              (*(*(v12 - 8) + 8))(v2 + v9, v12);
            }
          }

          v13 = *(v8 + 24);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 == 6 || v14 == 5)
          {
            v15 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v15 - 8) + 48))(v2 + v13, 1, v15))
            {
              v16 = sub_1D7257ADC();
              (*(*(v16 - 8) + 8))(v2 + v13, v16);
            }
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v69 = swift_getEnumCaseMultiPayload();
        if (v69 == 6 || v69 == 5)
        {
          v70 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v70 - 8) + 48))(v2, 1, v70))
          {
            v71 = sub_1D7257ADC();
            (*(*(v71 - 8) + 8))(v2, v71);
          }
        }
      }

      break;
    case 0xCu:

      v17 = *(type metadata accessor for FeedSponsorshipBannerAd() + 20);
      v18 = sub_1D72608BC();
      goto LABEL_25;
    case 0xDu:

      if (*(v2 + 40) >= 0x12uLL)
      {
      }

      if (*(v2 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v38 = type metadata accessor for FeedRecipe();
      v39 = v38[9];
      v40 = v2 + v39 + *(type metadata accessor for FeedRecipe.State() + 20);
      v41 = type metadata accessor for SharedItem();
      if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
      {
        v42 = sub_1D725891C();
        (*(*(v42 - 8) + 8))(v40, v42);

        v43 = *(v41 + 28);
        v44 = sub_1D72585BC();
        (*(*(v44 - 8) + 8))(v40 + v43, v44);
      }

      v45 = v2 + v38[10];
      if (*(v45 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = v2 + v38[12];
      if (*(v46 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      v19 = v2 + v38[13];
      if (*(v19 + 24))
      {
LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0B90()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C00()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C38()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C7C()
{
  v1 = *(type metadata accessor for DebugFormatPackagesDelta() - 8);
  v2 = (*(v1 + 80) + 361) & ~*(v1 + 80);

  sub_1D6A86438(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));
  sub_1D6A86060(0);
  v4 = v0 + v2 + *(v3 + 28);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v6(v4 + *(v7 + 20), v5);

  return swift_deallocObject();
}

uint64_t sub_1D5DB0F24()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0FE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB110C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1148()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1180()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB11C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D68FF2F0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB133C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D68FF2F0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB13E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DB144C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB14BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB14FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DB154C()
{
  v1 = (type metadata accessor for FormatDerivedDataCompilerSettings() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for FormatVersioningModeSelection(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v3 += *(type metadata accessor for FormatVersioningModeRelease(0) + 20);
  }

  v5 = sub_1D725BD1C();
  (*(*(v5 - 8) + 8))(v3, v5);
LABEL_5:

  return swift_deallocObject();
}

uint64_t sub_1D5DB169C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB16E4()
{

  sub_1D6AA8948(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DB1738()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1770()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB17B0()
{
  v1 = (type metadata accessor for FormatDerivedDataCompilerSettings() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for FormatVersioningModeSelection(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v3 += *(type metadata accessor for FormatVersioningModeRelease(0) + 20);
  }

  v5 = sub_1D725BD1C();
  (*(*(v5 - 8) + 8))(v3, v5);
LABEL_5:

  return swift_deallocObject();
}

uint64_t sub_1D5DB1928()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1970()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB19B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1A00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1A80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1AD0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB1B14()
{
  sub_1D6ABBB80();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DB1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *(a1 + 40);
    if (v4 > 5)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D6ABBC8C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB1C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *(result + 40) = -a2;
  }

  else
  {
    sub_1D6ABBC8C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB1F04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1F4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C8F9E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D5DB2050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5C8F9E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D5DB2118()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB2150()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB21E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2220()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB2280()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2320()
{

  return swift_deallocObject();
}