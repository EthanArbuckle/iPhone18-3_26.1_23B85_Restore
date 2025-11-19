uint64_t ProtoCarouselProps.Tile.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoCarouselProps.Tile(0);
  v3 = a1 + v2[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for ProtoImageProps(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a1 + v6, 1, 1, v7);
  v8 = a1 + v2[8];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_25151B844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoTextProps(0) + 32);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoTextProps.text.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTextProps.text.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoTextProps(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25151BCA0;
}

void sub_25151BCA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void ProtoTextProps.font.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ProtoTextProps.font.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void ProtoTextProps.format.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ProtoTextProps.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_25151BF78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25151C014(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25151C0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DD08();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t ProtoTextProps.Format.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25151C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DD5C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25151C274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoTextListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoTextListProps.Item.title.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t sub_25151C798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoTextListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoTextListProps.Item.description_p.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoTextListProps.Item.sfSymbolResource.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25151CCD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25151CD3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoTextListProps.Item.sfSymbolResource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*ProtoTextListProps.Item.sfSymbolResource.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ProtoTextListProps.Item(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25151CE88;
}

void sub_25151CE88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ProtoTextListProps.Item.clearSfSymbolResource()()
{
  v1 = (v0 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_25151D00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DDB0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoTextListProps.Item.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoTextListProps.Item(0);
  v3 = a1 + v2[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  result = (v6)(a1 + v2[7], 1, 1, v5);
  v8 = (a1 + v2[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_25151D1D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_251541F0C(v2 + *(v9 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_25150F55C(v8, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v12 = a2 + *(v10 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151D36C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_251541F0C(a1 + *(v10 + 24), v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v11 = type metadata accessor for ProtoLocalizedTextProps();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_25150F55C(v9, a3, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  v13 = a3 + *(v11 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoImageListProps.Item.title.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoImageListProps.Item.image.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(v1 + *(v7 + 28), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a1, type metadata accessor for ProtoImageProps);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v11 = a1 + *(v8 + 28);
  *v11 = 0;
  *(v11 + 8) = 256;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151DBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v8 + 28), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoImageProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = a2 + *(v9 + 28);
  *v12 = 0;
  *(v12 + 8) = 256;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151DD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoImageProps);
  v9 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoImageListProps.Item.image.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoImageProps(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v19 = v15 + *(v10 + 28);
    *v19 = 0;
    *(v19 + 8) = 256;
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoImageProps);
  }

  return sub_251542170;
}

uint64_t sub_25151E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoImageListProps.Item.description_p.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t sub_25151E81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DE04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoImageListProps.Item.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoImageListProps.Item(0);
  v3 = a1 + v2[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v5 - 8) + 56);
  (v10)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for ProtoImageProps(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = a1 + v2[8];

  return v10(v8, 1, 1, v5);
}

uint64_t ProtoVideoListProps.Item.title.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v1 + *(v7 + 20), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151EBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v8 + 20), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v11 = a2 + *(v9 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151ED44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoVideoListProps.Item.title.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

BOOL ProtoVideoListProps.Item.hasTitle.getter()
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v0 + *(v5 + 20), v4, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_251541E9C(v4, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  return v7;
}

Swift::Void __swiftcall ProtoVideoListProps.Item.clearTitle()()
{
  v1 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(v0 + v1, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v2 = type metadata accessor for ProtoLocalizedTextProps();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_25151F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoVideoListProps.Item.description_p.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoVideoListProps.Item.video.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v1 + *(v7 + 28), v6, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a1, type metadata accessor for ProtoVideoProps);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  return result;
}

uint64_t sub_25151F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v8 + 28), v7, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v9 = type metadata accessor for ProtoVideoProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoVideoProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  return result;
}

uint64_t sub_25151FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoVideoProps);
  v9 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoVideoProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.video.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoVideoProps);
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoVideoListProps.Item.video.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoVideoProps(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoVideoProps);
  }

  return sub_25151FFDC;
}

void sub_25151FFDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoVideoProps);
    sub_251541E9C(v9 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoVideoProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoVideoProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoVideoProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoVideoListProps.Item.init()@<X0>(uint64_t a1@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v2 = type metadata accessor for ProtoVideoListProps.Item(0);
  v3 = v2[5];
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  v6 = v2[7];
  v7 = type metadata accessor for ProtoVideoProps(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t ProtoTableProps.rows.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_251520408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoTableProps.ColumnHeader.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoTableProps.ColumnHeader.value.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v18 = v15 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoTableProps.ColumnHeader.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  v3 = &a1[*(v2 + 20)];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t ProtoTableProps.Column.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_251520B28()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3C0);
  __swift_project_value_buffer(v0, qword_27F43C3C0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25154F930;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "role";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "emptyProps";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "mainHeaderProps";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "fullMainHeaderProps";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "imageProps";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "videoProps";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "swooshProps";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "carouselProps";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "textProps";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "textListProps";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "imageListProps";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "videoListProps";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "tableProps";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t ProtoComponent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_25154D0B0();
          break;
        case 2:
          sub_25153DAC8();
          sub_25154D070();
          break;
        case 3:
          sub_251521230(v5, a1, a2, a3);
          break;
        case 4:
          sub_25152187C(v5, a1, a2, a3);
          break;
        case 5:
          sub_251521ED8(v5, a1, a2, a3);
          break;
        case 6:
          sub_251522534(v5, a1, a2, a3);
          break;
        case 7:
          sub_251522B90(v5, a1, a2, a3);
          break;
        case 8:
          sub_2515231EC(v5, a1, a2, a3);
          break;
        case 9:
          sub_251523848(v5, a1, a2, a3);
          break;
        case 10:
          sub_251523EA4(v5, a1, a2, a3);
          break;
        case 11:
          sub_251524500(v5, a1, a2, a3);
          break;
        case 12:
          sub_251524B5C(v5, a1, a2, a3);
          break;
        case 13:
          sub_2515251B8(v5, a1, a2, a3);
          break;
        case 14:
          sub_251525814(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251521230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoEmptyProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v45 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v30 = v4;
  v31 = v29;
  v29(&v40 - v27, 1, 1, v30);
  v40 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v40, v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v41 = v16;
  v42 = (*(v16 + 48))(v14, 1, v15);
  if (v42 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_5:
    v32 = v48;
    goto LABEL_6;
  }

  sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_5;
  }

  sub_251541E9C(v28, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  v36 = v43;
  sub_25150F55C(v20, v43, type metadata accessor for ProtoEmptyProps);
  sub_25150F55C(v36, v28, type metadata accessor for ProtoEmptyProps);
  v32 = v48;
  v31(v28, 0, 1, v48);
LABEL_6:
  v33 = v46;
  sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps);
  v34 = v47;
  sub_25154D0D0();
  if (v34)
  {
    return sub_251541E9C(v28, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  }

  sub_251541F0C(v28, v33, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  if ((*(v45 + 48))(v33, 1, v32) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
    return sub_251541E9C(v33, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  }

  else
  {
    v37 = v44;
    sub_25150F55C(v33, v44, type metadata accessor for ProtoEmptyProps);
    if (v42 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
    v38 = v52;
    v39 = v40;
    sub_251541E9C(v52 + v40, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoEmptyProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v38 + v39, 0, 1, v15);
  }
}

uint64_t sub_25152187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoMainHeaderProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251541E9C(v28, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoMainHeaderProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoMainHeaderProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
    return sub_251541E9C(v34, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoMainHeaderProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoMainHeaderProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251521ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251541E9C(v28, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoFullMainHeaderProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoFullMainHeaderProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
    return sub_251541E9C(v34, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoFullMainHeaderProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoFullMainHeaderProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251522534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251541E9C(v28, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoImageProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoImageProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    return sub_251541E9C(v34, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoImageProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoImageProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251522B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251541E9C(v28, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoVideoProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoVideoProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    return sub_251541E9C(v34, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoVideoProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoVideoProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_2515231EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoSwooshProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251541E9C(v28, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoSwooshProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoSwooshProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
    return sub_251541E9C(v34, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoSwooshProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoSwooshProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251523848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoCarouselProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251541E9C(v28, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoCarouselProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoCarouselProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
    return sub_251541E9C(v34, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoCarouselProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoCarouselProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251523EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251541E9C(v28, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoTextProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoTextProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    return sub_251541E9C(v34, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoTextProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoTextProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251524500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoTextListProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251541E9C(v28, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoTextListProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoTextListProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
    return sub_251541E9C(v34, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoTextListProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoTextListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251524B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoImageListProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251541E9C(v28, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoImageListProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoImageListProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
    return sub_251541E9C(v34, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoImageListProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoImageListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_2515251B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoVideoListProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_251541E9C(v28, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoVideoListProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoVideoListProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
    return sub_251541E9C(v34, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoVideoListProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoVideoListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251525814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for ProtoTableProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for ProtoComponent.OneOf_Props;
  v10 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_25153D964(0, &qword_27F43CDD8, type metadata accessor for ProtoTableProps, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v52 + v41, v14, &qword_27F43C1D0, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_25150F55C(v14, v22, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v22, v20, type metadata accessor for ProtoComponent.OneOf_Props);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_251541E9C(v28, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
      v33 = v43;
      sub_25150F55C(v20, v43, type metadata accessor for ProtoTableProps);
      sub_25150F55C(v33, v28, type metadata accessor for ProtoTableProps);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_25150EE6C(v20, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps);
  v35 = v47;
  sub_25154D0D0();
  if (v35)
  {
    return sub_251541E9C(v28, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  }

  sub_251541F0C(v28, v34, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251541E9C(v28, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
    return sub_251541E9C(v34, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  }

  else
  {
    v37 = v42;
    sub_25150F55C(v34, v42, type metadata accessor for ProtoTableProps);
    if (v30 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v28, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
    v38 = v52;
    v39 = v41;
    sub_251541E9C(v52 + v41, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v37, v38 + v39, type metadata accessor for ProtoTableProps);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t ProtoComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *v3;
  v15 = *(v3 + 8);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = sub_25154D160();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    v18 = *(v3 + 24);
    v24 = *(v3 + 16);
    v25 = v18;
    sub_25153DAC8();
    result = sub_25154D130();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v19 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v6 + *(v19 + 24), v13, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v20 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
  {
LABEL_10:
    v21 = v6 + *(v19 + 28);
    return sub_25154CFC0();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_251527888(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_251527AFC(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_251527D70(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = v5;
        sub_25152712C(v6, a1, a2, a3);
        goto LABEL_36;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v23 = v5;
        sub_2515273A0(v6, a1, a2, a3);
        goto LABEL_36;
      }

      sub_251527614(v6, a1, a2, a3);
      if (!v5)
      {
LABEL_39:
        sub_25150EE6C(v13, type metadata accessor for ProtoComponent.OneOf_Props);
        goto LABEL_10;
      }
    }

    return sub_25150EE6C(v13, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = v5;
      sub_2515269D0(v6, a1, a2, a3);
    }

    else
    {
      v23 = v5;
      if (EnumCaseMultiPayload == 4)
      {
        sub_251526C44(v6, a1, a2, a3);
      }

      else
      {
        sub_251526EB8(v6, a1, a2, a3);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v23 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2515264E8(v6, a1, a2, a3);
    }

    else
    {
      sub_25152675C(v6, a1, a2, a3);
    }
  }

  else
  {
    v23 = v5;
    sub_251526278(v6, a1, a2, a3);
  }

LABEL_36:
  result = sub_25150EE6C(v13, type metadata accessor for ProtoComponent.OneOf_Props);
  if (!v23)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_251526278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoEmptyProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoEmptyProps);
    sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoEmptyProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515264E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoMainHeaderProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoMainHeaderProps);
    sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoMainHeaderProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_25152675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoFullMainHeaderProps);
    sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoFullMainHeaderProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515269D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoImageProps);
    sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoImageProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251526C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoVideoProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoVideoProps);
    sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoVideoProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251526EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoSwooshProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoSwooshProps);
    sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoSwooshProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_25152712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoCarouselProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoCarouselProps);
    sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoCarouselProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515273A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTextProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoTextProps);
    sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoTextProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTextListProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoTextListProps);
    sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoTextListProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageListProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoImageListProps);
    sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoImageListProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoVideoListProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoVideoListProps);
    sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoVideoListProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTableProps(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v13 + 24), v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251541E9C(v8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_25150F55C(v8, v12, type metadata accessor for ProtoTableProps);
    sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps);
    sub_25154D180();
    return sub_25150EE6C(v12, type metadata accessor for ProtoTableProps);
  }

  result = sub_25150EE6C(v8, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251528030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25152810C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD80, type metadata accessor for ProtoComponent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2515281AC(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C000, type metadata accessor for ProtoComponent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251528218()
{
  sub_25153DB1C(&qword_27F43C000, type metadata accessor for ProtoComponent);

  return sub_25154D100();
}

uint64_t sub_251528298()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3D8);
  __swift_project_value_buffer(v0, qword_27F43C3D8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25154F940;
  v5 = v31 + v4;
  v6 = v31 + v4 + *(v2 + 56);
  *(v31 + v4) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "mainHeader";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "fullMainHeader";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "video";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "swoosh";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "carousel";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "text";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "textList";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "imageList";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "videoList";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "table";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_251528734()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3F0);
  __swift_project_value_buffer(v0, qword_27F43C3F0);
  return sub_25154D1B0();
}

uint64_t ProtoEmptyProps.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_25154D030();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_251528898(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD78, type metadata accessor for ProtoEmptyProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251528938(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515289A4()
{
  sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps);

  return sub_25154D100();
}

uint64_t sub_251528A20()
{
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_251528ACC()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C408);
  __swift_project_value_buffer(v0, qword_27F43C408);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25154F470;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 1;
  *v5 = "titleText";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25154D190();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 2;
  *v9 = "headerType";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "imagePosition";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "image";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "leadingText";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "trailingText";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  return sub_25154D1A0();
}

uint64_t ProtoMainHeaderProps.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_251528FE4();
            break;
          case 5:
            sub_251529098();
            break;
          case 6:
            sub_25152914C();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_251528F30();
            goto LABEL_5;
          case 2:
            v3 = v0;
            sub_25153DB64();
            break;
          case 3:
            v3 = v0;
            sub_25153DBB8();
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_25154D070();
      }

LABEL_5:
      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251528F30()
{
  v0 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  type metadata accessor for ProtoTextProps(0);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251528FE4()
{
  v0 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_251529098()
{
  v0 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152914C()
{
  v0 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoMainHeaderProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251529360(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      v12 = *(v3 + 8);
      sub_25153DB64();
      sub_25154D130();
    }

    if (*(v3 + 16))
    {
      v11 = *(v3 + 16);
      v13 = *(v3 + 24);
      sub_25153DBB8();
      sub_25154D130();
    }

    sub_2515295AC(v3, a1, a2, a3);
    sub_2515297F8(v3, a1, a2, a3);
    sub_251529A44(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ProtoMainHeaderProps(0) + 24);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251529360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTextProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoTextProps);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoTextProps);
}

uint64_t sub_2515295AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 32), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
}

uint64_t sub_2515297F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 36), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251529A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 40), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251529CD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + a1[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[7];
  v6 = type metadata accessor for ProtoTextProps(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for ProtoImageProps(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[9];
  v10 = type metadata accessor for ProtoLocalizedTextProps();
  v13 = *(*(v10 - 8) + 56);
  (v13)((v10 - 8), a2 + v9, 1, 1, v10);
  v11 = a2 + a1[10];

  return v13(v11, 1, 1, v10);
}

uint64_t sub_251529E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD70, type metadata accessor for ProtoMainHeaderProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251529F28(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251529F94()
{
  sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps);

  return sub_25154D100();
}

uint64_t sub_25152A014()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C420);
  __swift_project_value_buffer(v0, qword_27F43C420);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "standard";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "topicExplainer";
  *(v12 + 8) = 14;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152A284()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C438);
  __swift_project_value_buffer(v0, qword_27F43C438);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "top";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "bottom";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152A510()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C450);
  __swift_project_value_buffer(v0, qword_27F43C450);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "sizeClass";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "leadingText";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "trailingText";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "backgroundImage";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "textItems";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoFullMainHeaderProps.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_25153DC0C();
          sub_25154D070();
        }

        else if (result == 2)
        {
          sub_25152A96C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_25152AA20();
            break;
          case 4:
            sub_25152AAD4();
            break;
          case 5:
            type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
            sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
            sub_25154D0C0();
            break;
        }
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152A96C()
{
  v0 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152AA20()
{
  v0 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152AAD4()
{
  v0 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t ProtoFullMainHeaderProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_25153DC0C(), result = sub_25154D130(), !v4))
  {
    result = sub_25152AD04(v3, a1, a2, a3);
    if (!v4)
    {
      sub_25152AF50(v3, a1, a2, a3);
      sub_25152B19C(v3, a1, a2, a3);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
        sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
        sub_25154D170();
      }

      v9 = v3 + *(type metadata accessor for ProtoFullMainHeaderProps(0) + 24);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_25152AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v14 + 36), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152B430@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v4 = a2 + a1[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[7];
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + a1[8], 1, 1, v6);
  v8 = a1[9];
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_25152B58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD68, type metadata accessor for ProtoFullMainHeaderProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152B62C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152B698()
{
  sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps);

  return sub_25154D100();
}

uint64_t sub_25152B718()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C468);
  __swift_project_value_buffer(v0, qword_27F43C468);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "medium";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "large";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "extraLarge";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152B9D8()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C480);
  __swift_project_value_buffer(v0, qword_27F43C480);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "textProps";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "position";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoFullMainHeaderProps.TextItem.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25152BC9C();
      }

      else if (result == 2)
      {
        sub_25153DC60();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152BC9C()
{
  v0 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  type metadata accessor for ProtoTextProps(0);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoFullMainHeaderProps.TextItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152BE1C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v7 = *v3;
      v8 = *(v3 + 8);
      sub_25153DC60();
      sub_25154D130();
    }

    v6 = v3 + *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoTextProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoTextProps);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoTextProps);
}

uint64_t sub_25152C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ProtoTextProps(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_25152C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD60, type metadata accessor for ProtoFullMainHeaderProps.TextItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152C22C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152C298()
{
  sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem);

  return sub_25154D100();
}

uint64_t sub_25152C318()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C498);
  __swift_project_value_buffer(v0, qword_27F43C498);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "top";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "center";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "bottom";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152C5A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4B0);
  __swift_project_value_buffer(v0, qword_27F43C4B0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "imageId";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "imageFormat";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "imageBackgroundColor";
  *(v12 + 8) = 20;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageProps.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_25152C8D0();
          break;
        case 2:
          sub_25153DCB4();
          sub_25154D070();
          break;
        case 1:
          sub_25154D0B0();
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152C8D0()
{
  v0 = *(type metadata accessor for ProtoImageProps(0) + 28);
  sub_25150E514();
  return sub_25154D060();
}

uint64_t ProtoImageProps.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_25154D160(), !v1))
  {
    if (!*(v0 + 16) || (v7 = *(v0 + 16), v8 = *(v0 + 24), sub_25153DCB4(), result = sub_25154D130(), !v1))
    {
      result = sub_25152CA40(v0);
      if (!v1)
      {
        v6 = v0 + *(type metadata accessor for ProtoImageProps(0) + 24);
        return sub_25154CFC0();
      }
    }
  }

  return result;
}

uint64_t sub_25152CA40(uint64_t a1)
{
  result = type metadata accessor for ProtoImageProps(0);
  v3 = (a1 + *(result + 28));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_25150E514();
    return sub_25154D130();
  }

  return result;
}

uint64_t sub_25152CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 8) = 256;
  return result;
}

uint64_t sub_25152CBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD58, type metadata accessor for ProtoImageProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152CC70(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152CCDC()
{
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);

  return sub_25154D100();
}

uint64_t sub_25152CD5C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4C8);
  __swift_project_value_buffer(v0, qword_27F43C4C8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "crop";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "fullBleed";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "transparent";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152D01C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4E0);
  __swift_project_value_buffer(v0, qword_27F43C4E0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "videoId";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "isEmbeddedAutoPlay";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoProps.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25154D0B0();
    }

    else if (result == 2)
    {
      sub_25154D050();
    }
  }

  return result;
}

uint64_t ProtoVideoProps.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_25154D160(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = sub_25154D120(), !v1))
    {
      v6 = v0 + *(type metadata accessor for ProtoVideoProps(0) + 24);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_25152D3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25152D428(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD50, type metadata accessor for ProtoVideoProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152D4C8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152D534()
{
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);

  return sub_25154D100();
}

uint64_t sub_25152D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_25154D520() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t ProtoSwooshProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoSwooshProps.Tile(0), sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoSwooshProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152D8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD48, type metadata accessor for ProtoSwooshProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152D950(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152D9BC()
{
  sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps);

  return sub_25154D100();
}

uint64_t sub_25152DA6C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C510);
  __swift_project_value_buffer(v0, qword_27F43C510);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "image";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "backgroundColor";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "title";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoSwooshProps.Tile.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_25152DE54();
          break;
        case 2:
          sub_25150E514();
          sub_25154D070();
          break;
        case 1:
          sub_25152DDA0();
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152DDA0()
{
  v0 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_25152DE54()
{
  v0 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoSwooshProps.Tile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152DFF0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      v11 = *(v3 + 8);
      sub_25150E514();
      sub_25154D130();
    }

    sub_25152E23C(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ProtoSwooshProps.Tile(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoSwooshProps.Tile(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoSwooshProps.Tile(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152E4D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for ProtoImageProps(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_25152E5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD40, type metadata accessor for ProtoSwooshProps.Tile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152E698(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152E704()
{
  sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile);

  return sub_25154D100();
}

uint64_t ProtoCarouselProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoCarouselProps.Tile(0), sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoCarouselProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152E9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD38, type metadata accessor for ProtoCarouselProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152EA60(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152EACC()
{
  sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps);

  return sub_25154D100();
}

uint64_t sub_25152EB7C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C540);
  __swift_project_value_buffer(v0, qword_27F43C540);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "image";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "backgroundColor";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "title";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoCarouselProps.Tile.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_25152EFC4();
        }

        else if (result == 4)
        {
          sub_25152F078();
        }
      }

      else if (result == 1)
      {
        sub_25152EF10();
      }

      else if (result == 2)
      {
        sub_25150E514();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152EF10()
{
  v0 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_25152EFC4()
{
  v0 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152F078()
{
  v0 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoCarouselProps.Tile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152F22C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      v11 = *(v3 + 8);
      sub_25150E514();
      sub_25154D130();
    }

    sub_25152F478(v3, a1, a2, a3);
    sub_25152F6C4(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ProtoCarouselProps.Tile(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v14 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152F95C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for ProtoImageProps(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_25152FAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD30, type metadata accessor for ProtoCarouselProps.Tile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152FB58(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152FBC4()
{
  sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile);

  return sub_25154D100();
}

uint64_t sub_25152FC60()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C558);
  __swift_project_value_buffer(v0, qword_27F43C558);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "text";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "font";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "alignment";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "format";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextProps.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_25153DD08();
LABEL_5:
          v0 = v3;
          sub_25154D070();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          sub_25153DD5C();
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        sub_251530004();
      }

      else if (result == 2)
      {
        v3 = v0;
        sub_25150E568();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251530004()
{
  v0 = *(type metadata accessor for ProtoTextProps(0) + 32);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTextProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251530228(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v7 = *v3;
      v9 = *(v3 + 8);
      sub_25150E568();
      sub_25154D130();
    }

    if (*(v3 + 16))
    {
      v8 = *(v3 + 16);
      v10 = *(v3 + 24);
      sub_25153DD08();
      sub_25154D130();
      if (!*(v3 + 32))
      {
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 32))
    {
LABEL_9:
      v6 = v3 + *(type metadata accessor for ProtoTextProps(0) + 28);
      return sub_25154CFC0();
    }

    v11 = *(v3 + 40);
    sub_25153DD5C();
    sub_25154D130();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_251530228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoTextProps(0);
  sub_251541F0C(a1 + *(v14 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515304BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = a2 + *(a1 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_2515305A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD28, type metadata accessor for ProtoTextProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251530644(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515306B0()
{
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps);

  return sub_25154D100();
}

uint64_t sub_251530730()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C570);
  __swift_project_value_buffer(v0, qword_27F43C570);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "leading";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "center";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "trailing";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_2515309A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C588);
  __swift_project_value_buffer(v0, qword_27F43C588);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "markdown";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "blockQuote";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextListProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoTextListProps.Item(0), sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoTextListProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251530E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD20, type metadata accessor for ProtoTextListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251530EEC(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251530F58()
{
  sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps);

  return sub_25154D100();
}

uint64_t sub_251531008()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C5B8);
  __swift_project_value_buffer(v0, qword_27F43C5B8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "title";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "pointStyle";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "description";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "sfSymbolResource";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextListProps.Item.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_251531460();
        }

        else if (result == 4)
        {
          v3 = *(type metadata accessor for ProtoTextListProps.Item(0) + 32);
          sub_25154D0A0();
        }
      }

      else if (result == 1)
      {
        sub_2515313AC();
      }

      else if (result == 2)
      {
        sub_25153DDB0();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_2515313AC()
{
  v0 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251531460()
{
  v0 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTextListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251531614(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      v11 = *(v3 + 8);
      sub_25153DDB0();
      sub_25154D130();
    }

    sub_251531860(v3, a1, a2, a3);
    sub_251531AAC(v3);
    v9 = v3 + *(type metadata accessor for ProtoTextListProps.Item(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251531614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoTextListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251531860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoTextListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251531AAC(uint64_t a1)
{
  result = type metadata accessor for ProtoTextListProps.Item(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_25154D160();
  }

  return result;
}

uint64_t sub_251531B70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  result = (v7)(a2 + a1[7], 1, 1, v6);
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_251531C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD18, type metadata accessor for ProtoTextListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251531D1C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251531D88()
{
  sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item);

  return sub_25154D100();
}

uint64_t sub_251531E08()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C5D0);
  __swift_project_value_buffer(v0, qword_27F43C5D0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "sfSymbol";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "bullet";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "numeric";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageListProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoImageListProps.Item(0), sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoImageListProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_2515322E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD10, type metadata accessor for ProtoImageListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251532388(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515323F4()
{
  sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps);

  return sub_25154D100();
}

uint64_t sub_2515324A4()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C600);
  __swift_project_value_buffer(v0, qword_27F43C600);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "title";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "image";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "imageAlignment";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageListProps.Item.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_25153DE04();
          sub_25154D070();
        }

        else if (result == 4)
        {
          sub_2515329A0();
        }
      }

      else if (result == 1)
      {
        sub_251532838();
      }

      else if (result == 2)
      {
        sub_2515328EC();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251532838()
{
  v0 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_2515328EC()
{
  v0 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_2515329A0()
{
  v0 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoImageListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251532B54(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251532DA0(v3, a1, a2, a3);
    if (*v3)
    {
      v10 = *v3;
      v11 = *(v3 + 8);
      sub_25153DE04();
      sub_25154D130();
    }

    sub_251532FEC(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ProtoImageListProps.Item(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251532B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251532DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
}

uint64_t sub_251532FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251533284@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v11 = *(*(v6 - 8) + 56);
  (v11)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ProtoImageProps(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v6);
}

uint64_t sub_2515333E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD08, type metadata accessor for ProtoImageListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251533480(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515334EC()
{
  sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item);

  return sub_25154D100();
}

uint64_t sub_25153356C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C618);
  __swift_project_value_buffer(v0, qword_27F43C618);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "leading";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "trailing";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoListProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoVideoListProps.Item(0), sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoVideoListProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251533A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD00, type metadata accessor for ProtoVideoListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251533AB8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251533B24()
{
  sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps);

  return sub_25154D100();
}

uint64_t sub_251533BD4()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C648);
  __swift_project_value_buffer(v0, qword_27F43C648);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "title";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "video";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoListProps.Item.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251534044();
        break;
      case 2:
        sub_251533F90();
        break;
      case 1:
        sub_251533EDC();
        break;
    }
  }

  return result;
}

uint64_t sub_251533EDC()
{
  v0 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251533F90()
{
  v0 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251534044()
{
  v0 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  type metadata accessor for ProtoVideoProps(0);
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);
  return sub_25154D0D0();
}

uint64_t ProtoVideoListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251534180(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2515343CC(v3, a1, a2, a3);
    sub_251534618(v3, a1, a2, a3);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251534180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 20), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515343CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251534618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoVideoProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v14 + 28), v8, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoVideoProps);
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoVideoProps);
}

uint64_t sub_2515348B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[7];
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_2515349EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCF8, type metadata accessor for ProtoVideoListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251534A8C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251534AF8()
{
  sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item);

  return sub_25154D100();
}

uint64_t sub_251534B94()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C660);
  __swift_project_value_buffer(v0, qword_27F43C660);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "headers";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "rows";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTableProps.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for ProtoTableProps.Column(0);
        sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_25154D030();
    }

    v3 = v0;
    type metadata accessor for ProtoTableProps.ColumnHeader(0);
    sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader);
LABEL_5:
    v0 = v3;
    sub_25154D0C0();
    goto LABEL_6;
  }

  return result;
}

uint64_t ProtoTableProps.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoTableProps.ColumnHeader(0), sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader), result = sub_25154D170(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for ProtoTableProps.Column(0), sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column), result = sub_25154D170(), !v1))
    {
      v3 = v0 + *(type metadata accessor for ProtoTableProps(0) + 24);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_251535074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515350EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCF0, type metadata accessor for ProtoTableProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25153518C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515351F8()
{
  sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps);

  return sub_25154D100();
}

uint64_t sub_251535274(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2515053BC(*a1, *a2) & 1) == 0 || (sub_251505A74(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_251535348()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C678);
  __swift_project_value_buffer(v0, qword_27F43C678);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "widthPercent";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTableProps.ColumnHeader.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2515355DC();
    }

    else if (result == 2)
    {
      sub_25154D080();
    }
  }

  return result;
}

uint64_t sub_2515355DC()
{
  v0 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTableProps.ColumnHeader.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25153572C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25154D140();
    }

    v6 = v3 + *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25153572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  sub_251541F0C(a1 + *(v14 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515359C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_251535A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCE8, type metadata accessor for ProtoTableProps.ColumnHeader);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251535B34(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251535BA0()
{
  sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader);

  return sub_25154D100();
}

uint64_t sub_251535C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25154D1C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 72);
  v11 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25154E670;
  v13 = v12 + v11 + *(v9 + 56);
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_25154D190();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_25154D1A0();
}

uint64_t sub_251535E58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_25154D030();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_25153DB1C(a5, a6);
      sub_25154D0C0();
    }
  }

  return result;
}

uint64_t ProtoTableProps.Column.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoLocalizedTextProps(), sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoTableProps.Column(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251536044(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_251536144(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25154D590();
  a1(0);
  sub_25153DB1C(a2, a3);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_251536218(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCE0, type metadata accessor for ProtoTableProps.Column);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2515362B8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251536324()
{
  sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column);

  return sub_25154D100();
}

uint64_t sub_2515363B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v76 - v11;
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v85 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - v14;
  v89 = type metadata accessor for ProtoLocalizedTextProps();
  v16 = *(v89 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v89);
  v84 = (&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v76 - v20);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v76 - v27);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v30 = v29;
  v31 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v32);
  v35 = &v76 - v34;
  v36 = *a1;
  v37 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        if (v36 != 2)
        {
          goto LABEL_48;
        }
      }

      else if (v36 != 3)
      {
        goto LABEL_48;
      }
    }

    else if (v37)
    {
      if (v36 != 1)
      {
        goto LABEL_48;
      }
    }

    else if (v36)
    {
      goto LABEL_48;
    }
  }

  else if (v36 != v37)
  {
    goto LABEL_48;
  }

  v77 = v15;
  v78 = v26;
  v83 = v33;
  v80 = v7;
  v79 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v38 = *(v79 + 28);
  v39 = *(v30 + 48);
  v81 = a1;
  sub_251541F0C(a1 + v38, v35, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v82 = a2;
  sub_251541F0C(a2 + v38, &v35[v39], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v40 = *(v16 + 48);
  v41 = v89;
  if (v40(v35, 1, v89) == 1)
  {
    if (v40(&v35[v39], 1, v41) == 1)
    {
      sub_251541E9C(v35, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_27;
    }

LABEL_15:
    v42 = &qword_27F43C180;
    v43 = &qword_27F43BFE8;
    v44 = type metadata accessor for ProtoLocalizedTextProps;
    v45 = v35;
LABEL_47:
    sub_251541DC8(v45, v42, v43, v44);
    goto LABEL_48;
  }

  sub_251541F0C(v35, v28, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v40(&v35[v39], 1, v41) == 1)
  {
    sub_25150EE6C(v28, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_15;
  }

  sub_25150F55C(&v35[v39], v21, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v28 != *v21 || v28[1] != v21[1]) && (sub_25154D520() & 1) == 0 || (v28[2] != v21[2] || v28[3] != v21[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v21, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v28, type metadata accessor for ProtoLocalizedTextProps);
    v61 = v35;
LABEL_51:
    sub_251541E9C(v61, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_48;
  }

  v46 = *(v41 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v47 = sub_25154D240();
  sub_25150EE6C(v21, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v28, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v35, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v47 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_27:
  v48 = v79;
  v49 = *(v79 + 32);
  v50 = *(v30 + 48);
  v51 = v81;
  v52 = v83;
  sub_251541F0C(v81 + v49, v83, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v53 = v82;
  v54 = v52;
  sub_251541F0C(v82 + v49, v52 + v50, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v55 = v89;
  if (v40(v52, 1, v89) == 1)
  {
    v56 = v40((v52 + v50), 1, v55);
    v57 = v80;
    v58 = v88;
    if (v56 == 1)
    {
      sub_251541E9C(v54, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v59 = v78;
  sub_251541F0C(v52, v78, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v60 = v40((v52 + v50), 1, v55);
  v57 = v80;
  v58 = v88;
  if (v60 == 1)
  {
    sub_25150EE6C(v59, type metadata accessor for ProtoLocalizedTextProps);
LABEL_32:
    v42 = &qword_27F43C180;
    v43 = &qword_27F43BFE8;
    v44 = type metadata accessor for ProtoLocalizedTextProps;
    v45 = v54;
    goto LABEL_47;
  }

  v62 = v54 + v50;
  v63 = v84;
  sub_25150F55C(v62, v84, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v59 != *v63 || v59[1] != v63[1]) && (sub_25154D520() & 1) == 0 || (v78[2] != v63[2] || v78[3] != v63[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v63, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v78, type metadata accessor for ProtoLocalizedTextProps);
    v61 = v54;
    goto LABEL_51;
  }

  v64 = *(v89 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v65 = v78;
  v66 = sub_25154D240();
  sub_25150EE6C(v63, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v83, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v66 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_41:
  v67 = *(v48 + 36);
  v68 = *(v85 + 48);
  v69 = v77;
  sub_251541F0C(v51 + v67, v77, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v53 + v67, v69 + v68, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v70 = v87;
  v71 = *(v86 + 48);
  if (v71(v69, 1, v87) != 1)
  {
    sub_251541F0C(v69, v58, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    if (v71(v69 + v68, 1, v70) != 1)
    {
      sub_25150F55C(v69 + v68, v57, type metadata accessor for ProtoImageProps);
      v74 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v58, v57);
      sub_25150EE6C(v57, type metadata accessor for ProtoImageProps);
      sub_25150EE6C(v58, type metadata accessor for ProtoImageProps);
      sub_251541E9C(v69, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      if ((v74 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    sub_25150EE6C(v58, type metadata accessor for ProtoImageProps);
    goto LABEL_46;
  }

  if (v71(v69 + v68, 1, v70) != 1)
  {
LABEL_46:
    v42 = &qword_27F43CD90;
    v43 = &qword_27F43C6A8;
    v44 = type metadata accessor for ProtoImageProps;
    v45 = v69;
    goto LABEL_47;
  }

  sub_251541E9C(v69, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
LABEL_53:
  if (sub_251504A98(v51[2], *(v53 + 16)))
  {
    v75 = *(v48 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v72 = sub_25154D240();
    return v72 & 1;
  }

LABEL_48:
  v72 = 0;
  return v72 & 1;
}

uint64_t _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV8TextItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v27 - v10);
  sub_251541E24(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v28 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  v17 = *(v28 + 24);
  v18 = *(v13 + 56);
  v30 = a1;
  sub_251541F0C(a1 + v17, v16, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_251541F0C(a2 + v17, &v16[v18], &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_251541E9C(v16, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      goto LABEL_8;
    }
  }

  else
  {
    sub_251541F0C(v16, v11, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v29;
      sub_25150F55C(&v16[v18], v29, type metadata accessor for ProtoTextProps);
      v22 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_25150EE6C(v21, type metadata accessor for ProtoTextProps);
      sub_25150EE6C(v11, type metadata accessor for ProtoTextProps);
      sub_251541E9C(v16, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_8:
      v23 = *v30;
      v24 = *a2;
      if (*(a2 + 8) == 1)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            if (v23 == 1)
            {
              goto LABEL_14;
            }
          }

          else if (v23 == 2)
          {
            goto LABEL_14;
          }

LABEL_16:
          v20 = 0;
          return v20 & 1;
        }

        if (v23)
        {
          goto LABEL_16;
        }
      }

      else if (v23 != v24)
      {
        goto LABEL_16;
      }

LABEL_14:
      v25 = *(v28 + 20);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v20 = sub_25154D240();
      return v20 & 1;
    }

    sub_25150EE6C(v11, type metadata accessor for ProtoTextProps);
  }

  sub_251541DC8(v16, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s25HealthContentDaemonPlugin20ProtoMainHeaderPropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v105 = a2;
  v97 = type metadata accessor for ProtoLocalizedTextProps();
  v95 = *(v97 - 8);
  v3 = *(v95 + 64);
  v4 = MEMORY[0x28223BE20](v97);
  v88 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v90 = (&v88 - v6);
  v7 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v89 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v92 = (&v88 - v12);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v96 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v88 - v17;
  v18 = type metadata accessor for ProtoImageProps(0);
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v7);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v103 = &v88 - v23;
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v98 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v101 = &v88 - v26;
  v27 = type metadata accessor for ProtoTextProps(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, v7);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = (&v88 - v34);
  sub_251541E24(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v88 - v39;
  v102 = type metadata accessor for ProtoMainHeaderProps(0);
  v41 = v102[7];
  v42 = *(v37 + 56);
  v104 = a1;
  sub_251541F0C(a1 + v41, v40, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v43 = v105;
  sub_251541F0C(v105 + v41, &v40[v42], &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v44 = *(v28 + 48);
  if (v44(v40, 1, v27) == 1)
  {
    if (v44(&v40[v42], 1, v27) == 1)
    {
      sub_251541E9C(v40, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      goto LABEL_12;
    }

LABEL_6:
    v45 = &qword_27F43C190;
    v46 = &qword_27F43C188;
    v47 = type metadata accessor for ProtoTextProps;
LABEL_7:
    v48 = v47;
    v49 = v40;
LABEL_8:
    sub_251541DC8(v49, v45, v46, v48);
    goto LABEL_9;
  }

  sub_251541F0C(v40, v35, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if (v44(&v40[v42], 1, v27) == 1)
  {
    sub_25150EE6C(v35, type metadata accessor for ProtoTextProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v40[v42], v31, type metadata accessor for ProtoTextProps);
  v52 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v35, v31);
  sub_25150EE6C(v31, type metadata accessor for ProtoTextProps);
  sub_25150EE6C(v35, type metadata accessor for ProtoTextProps);
  sub_251541E9C(v40, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((v52 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v53 = v104;
  v54 = *v104;
  v55 = *v43;
  if (*(v43 + 8) == 1)
  {
    v56 = v103;
    if (v55)
    {
      if (v55 == 1)
      {
        if (v54 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v54 != 2)
      {
        goto LABEL_9;
      }
    }

    else if (v54)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v56 = v103;
    if (v54 != v55)
    {
      goto LABEL_9;
    }
  }

  v57 = v104[2];
  v58 = v43[2];
  if (*(v43 + 24) == 1)
  {
    if (v58)
    {
      if (v58 == 1)
      {
        if (v57 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v57 != 2)
      {
        goto LABEL_9;
      }
    }

    else if (v57)
    {
      goto LABEL_9;
    }
  }

  else if (v57 != v58)
  {
    goto LABEL_9;
  }

  v40 = v101;
  v59 = v102;
  v60 = v102[8];
  v61 = *(v98 + 48);
  sub_251541F0C(v104 + v60, v101, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v43 + v60, &v40[v61], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v62 = v100;
  v63 = *(v99 + 48);
  if (v63(v40, 1, v100) == 1)
  {
    if (v63(&v40[v61], 1, v62) == 1)
    {
      sub_251541E9C(v40, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_251541F0C(v40, v56, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v63(&v40[v61], 1, v62) == 1)
  {
    sub_25150EE6C(v56, type metadata accessor for ProtoImageProps);
LABEL_37:
    v45 = &qword_27F43CD90;
    v46 = &qword_27F43C6A8;
    v47 = type metadata accessor for ProtoImageProps;
    goto LABEL_7;
  }

  v64 = &v40[v61];
  v65 = v93;
  sub_25150F55C(v64, v93, type metadata accessor for ProtoImageProps);
  v66 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v56, v65);
  sub_25150EE6C(v65, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v56, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v40, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v66 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_39:
  v67 = v59[9];
  v68 = *(v96 + 48);
  v69 = v94;
  sub_251541F0C(v53 + v67, v94, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v70 = v69;
  sub_251541F0C(v43 + v67, v69 + v68, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v71 = *(v95 + 48);
  v72 = v97;
  if (v71(v69, 1, v97) == 1)
  {
    if (v71(v69 + v68, 1, v72) != 1)
    {
LABEL_55:
      v45 = &qword_27F43C180;
      v46 = &qword_27F43BFE8;
      v48 = type metadata accessor for ProtoLocalizedTextProps;
      v49 = v70;
      goto LABEL_8;
    }

    sub_251541E9C(v69, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    v73 = v69;
    v74 = v92;
    sub_251541F0C(v73, v92, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v71(v70 + v68, 1, v72) == 1)
    {
LABEL_54:
      sub_25150EE6C(v74, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_55;
    }

    v75 = v70 + v68;
    v76 = v90;
    sub_25150F55C(v75, v90, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v74 != *v76 || v74[1] != v76[1]) && (sub_25154D520() & 1) == 0 || (v74[2] != v76[2] || v74[3] != v76[3]) && (sub_25154D520() & 1) == 0)
    {
      v84 = v76;
LABEL_66:
      sub_25150EE6C(v84, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v74, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v70, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_9;
    }

    v77 = *(v72 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    LOBYTE(v77) = sub_25154D240();
    sub_25150EE6C(v76, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v74, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v70, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v77 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v78 = v102[10];
  v79 = *(v96 + 48);
  v80 = v91;
  sub_251541F0C(v53 + v78, v91, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v81 = v43 + v78;
  v70 = v80;
  sub_251541F0C(v81, v80 + v79, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v82 = v97;
  if (v71(v80, 1, v97) == 1)
  {
    if (v71(v80 + v79, 1, v82) == 1)
    {
      sub_251541E9C(v80, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_64:
      v87 = v102[6];
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v50 = sub_25154D240();
      return v50 & 1;
    }

    goto LABEL_55;
  }

  v83 = v80;
  v74 = v89;
  sub_251541F0C(v83, v89, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v71(v70 + v79, 1, v82) == 1)
  {
    goto LABEL_54;
  }

  v85 = v88;
  sub_25150F55C(v70 + v79, v88, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v74 != *v85 || v74[1] != v85[1]) && (sub_25154D520() & 1) == 0 || (v74[2] != v85[2] || v74[3] != v85[3]) && (sub_25154D520() & 1) == 0)
  {
    v84 = v85;
    goto LABEL_66;
  }

  v86 = *(v82 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  LOBYTE(v86) = sub_25154D240();
  sub_25150EE6C(v85, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v74, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v70, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v86)
  {
    goto LABEL_64;
  }

LABEL_9:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s25HealthContentDaemonPlugin19ProtoVideoListPropsV4ItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoVideoProps(0);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v67 - v10;
  sub_251541E24(0, &qword_27F43CD88, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v71 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - v13;
  v14 = type metadata accessor for ProtoLocalizedTextProps();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v70 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v76 = (&v67 - v19);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v7);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v75 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = (&v67 - v24);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v27 = v26;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v78 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v67 - v31;
  v33 = type metadata accessor for ProtoVideoListProps.Item(0);
  v79 = a1;
  v80 = v33;
  v34 = *(v33 + 20);
  v77 = v27;
  v35 = *(v27 + 48);
  sub_251541F0C(a1 + v34, v32, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v36 = a2 + v34;
  v37 = a2;
  sub_251541F0C(v36, &v32[v35], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v38 = *(v15 + 48);
  if (v38(v32, 1, v14) == 1)
  {
    if (v38(&v32[v35], 1, v14) == 1)
    {
      sub_251541E9C(v32, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_14;
    }

LABEL_6:
    v39 = &qword_27F43C180;
    v40 = &qword_27F43BFE8;
    v41 = type metadata accessor for ProtoLocalizedTextProps;
    v42 = v32;
LABEL_35:
    sub_251541DC8(v42, v39, v40, v41);
    goto LABEL_36;
  }

  sub_251541F0C(v32, v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v38(&v32[v35], 1, v14) == 1)
  {
    sub_25150EE6C(v25, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v43 = v76;
  sub_25150F55C(&v32[v35], v76, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v25 != *v43 || v25[1] != v43[1]) && (sub_25154D520() & 1) == 0 || (v25[2] != v43[2] || v25[3] != v43[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v25, type metadata accessor for ProtoLocalizedTextProps);
    v51 = &qword_27F43BFE8;
    v52 = type metadata accessor for ProtoLocalizedTextProps;
    v53 = v32;
LABEL_44:
    sub_251541E9C(v53, v51, v52);
    goto LABEL_36;
  }

  v44 = *(v14 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v45 = sub_25154D240();
  sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v25, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v32, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v45 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  v46 = v79;
  v47 = *(v80 + 24);
  v48 = v78;
  v49 = *(v77 + 48);
  sub_251541F0C(v79 + v47, v78, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v37 + v47, v48 + v49, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v38(v48, 1, v14) == 1)
  {
    if (v38((v48 + v49), 1, v14) == 1)
    {
      sub_251541E9C(v48, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v50 = v75;
  sub_251541F0C(v48, v75, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v38((v48 + v49), 1, v14) == 1)
  {
    sub_25150EE6C(v50, type metadata accessor for ProtoLocalizedTextProps);
LABEL_19:
    v39 = &qword_27F43C180;
    v40 = &qword_27F43BFE8;
    v41 = type metadata accessor for ProtoLocalizedTextProps;
    v42 = v48;
    goto LABEL_35;
  }

  v54 = v70;
  sub_25150F55C(v48 + v49, v70, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v50 != *v54 || v50[1] != v54[1]) && (sub_25154D520() & 1) == 0 || (v50[2] != v54[2] || v50[3] != v54[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v54, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v50, type metadata accessor for ProtoLocalizedTextProps);
    v51 = &qword_27F43BFE8;
    v52 = type metadata accessor for ProtoLocalizedTextProps;
    v53 = v48;
    goto LABEL_44;
  }

  v55 = *(v14 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  LOBYTE(v55) = sub_25154D240();
  sub_25150EE6C(v54, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v50, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v48, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v55 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v56 = *(v80 + 28);
  v57 = *(v71 + 48);
  v58 = v74;
  sub_251541F0C(v46 + v56, v74, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_251541F0C(v37 + v56, v58 + v57, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v59 = v73;
  v60 = *(v72 + 48);
  if (v60(v58, 1, v73) != 1)
  {
    v62 = v69;
    sub_251541F0C(v58, v69, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    if (v60(v58 + v57, 1, v59) == 1)
    {
      sub_25150EE6C(v62, type metadata accessor for ProtoVideoProps);
      goto LABEL_34;
    }

    v64 = v58 + v57;
    v65 = v68;
    sub_25150F55C(v64, v68, type metadata accessor for ProtoVideoProps);
    if ((*v62 != *v65 || *(v62 + 8) != *(v65 + 8)) && (sub_25154D520() & 1) == 0 || *(v62 + 16) != *(v65 + 16))
    {
      sub_25150EE6C(v65, type metadata accessor for ProtoVideoProps);
      sub_25150EE6C(v62, type metadata accessor for ProtoVideoProps);
      v51 = &qword_27F43C6B0;
      v52 = type metadata accessor for ProtoVideoProps;
      v53 = v58;
      goto LABEL_44;
    }

    v66 = *(v59 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    LOBYTE(v66) = sub_25154D240();
    sub_25150EE6C(v65, type metadata accessor for ProtoVideoProps);
    sub_25150EE6C(v62, type metadata accessor for ProtoVideoProps);
    sub_251541E9C(v58, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    if (v66)
    {
      goto LABEL_31;
    }

LABEL_36:
    v61 = 0;
    return v61 & 1;
  }

  if (v60(v58 + v57, 1, v59) != 1)
  {
LABEL_34:
    v39 = &qword_27F43CD88;
    v40 = &qword_27F43C6B0;
    v41 = type metadata accessor for ProtoVideoProps;
    v42 = v58;
    goto LABEL_35;
  }

  sub_251541E9C(v58, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
LABEL_31:
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v61 = sub_25154D240();
  return v61 & 1;
}

uint64_t _s25HealthContentDaemonPlugin19ProtoImageListPropsV4ItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v81 = a2;
  v3 = type metadata accessor for ProtoImageProps(0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = (&v68 - v9);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v75 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v68 - v12;
  v13 = type metadata accessor for ProtoLocalizedTextProps();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v69 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v74 = (&v68 - v18);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v6);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v70 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v24 = (&v68 - v23);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v71 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v68 - v30;
  v79 = type metadata accessor for ProtoImageListProps.Item(0);
  v80 = a1;
  v32 = v79[6];
  v33 = *(v26 + 48);
  sub_251541F0C(a1 + v32, v31, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v81 + v32, &v31[v33], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v34 = *(v14 + 48);
  if (v34(v31, 1, v13) == 1)
  {
    if (v34(&v31[v33], 1, v13) != 1)
    {
LABEL_7:
      v36 = &qword_27F43C180;
      v37 = &qword_27F43BFE8;
      v38 = type metadata accessor for ProtoLocalizedTextProps;
      v39 = v31;
LABEL_21:
      sub_251541DC8(v39, v36, v37, v38);
      goto LABEL_22;
    }

    sub_251541E9C(v31, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541F0C(v31, v24, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v34(&v31[v33], 1, v13) == 1)
    {
      v35 = v24;
LABEL_6:
      sub_25150EE6C(v35, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_7;
    }

    v40 = v74;
    sub_25150F55C(&v31[v33], v74, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v24 != *v40 || v24[1] != v40[1]) && (sub_25154D520() & 1) == 0 || (v24[2] != v40[2] || v24[3] != v40[3]) && (sub_25154D520() & 1) == 0)
    {
      sub_25150EE6C(v40, type metadata accessor for ProtoLocalizedTextProps);
      v52 = v24;
LABEL_25:
      sub_25150EE6C(v52, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v31, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_22;
    }

    v41 = *(v13 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v42 = sub_25154D240();
    sub_25150EE6C(v40, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v24, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v31, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v42 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v43 = v80;
  v44 = v79[7];
  v45 = *(v75 + 48);
  v46 = v78;
  sub_251541F0C(v80 + v44, v78, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v81 + v44, v46 + v45, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v47 = v77;
  v48 = *(v76 + 48);
  if (v48(v46, 1, v77) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      sub_251541E9C(v46, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_27;
    }

LABEL_20:
    v36 = &qword_27F43CD90;
    v37 = &qword_27F43C6A8;
    v38 = type metadata accessor for ProtoImageProps;
    v39 = v46;
    goto LABEL_21;
  }

  v49 = v73;
  sub_251541F0C(v46, v73, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    sub_25150EE6C(v49, type metadata accessor for ProtoImageProps);
    goto LABEL_20;
  }

  v53 = v72;
  sub_25150F55C(v46 + v45, v72, type metadata accessor for ProtoImageProps);
  v54 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v49, v53);
  sub_25150EE6C(v53, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v49, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v46, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v43 = v80;
  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_27:
  v55 = *v43;
  v56 = v81;
  v57 = *v81;
  if (*(v81 + 8) == 1)
  {
    if (v57)
    {
      if (v57 == 1)
      {
        if (v55 != 1)
        {
          goto LABEL_22;
        }
      }

      else if (v55 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (v55)
    {
      goto LABEL_22;
    }
  }

  else if (v55 != v57)
  {
    goto LABEL_22;
  }

  v58 = v79[8];
  v59 = *(v26 + 48);
  v60 = v71;
  sub_251541F0C(v43 + v58, v71, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v61 = v56 + v58;
  v31 = v60;
  sub_251541F0C(v61, v60 + v59, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v34(v60, 1, v13) == 1)
  {
    if (v34((v60 + v59), 1, v13) == 1)
    {
      sub_251541E9C(v60, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
      v67 = v79[5];
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v50 = sub_25154D240();
      return v50 & 1;
    }

    goto LABEL_7;
  }

  v62 = v60;
  v63 = v70;
  sub_251541F0C(v62, v70, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v34(&v31[v59], 1, v13) == 1)
  {
    v35 = v63;
    goto LABEL_6;
  }

  v64 = &v31[v59];
  v65 = v69;
  sub_25150F55C(v64, v69, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v63 != *v65 || v63[1] != v65[1]) && (sub_25154D520() & 1) == 0 || (v63[2] != v65[2] || v63[3] != v65[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
    v52 = v63;
    goto LABEL_25;
  }

  v66 = *(v13 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  LOBYTE(v66) = sub_25154D240();
  sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v63, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v31, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v66)
  {
    goto LABEL_49;
  }

LABEL_22:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s25HealthContentDaemonPlugin18ProtoTextListPropsV4ItemV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v54 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v59 = (&v54 - v9);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v55 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (&v54 - v14);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v58 = type metadata accessor for ProtoTextListProps.Item(0);
  v23 = v58[6];
  v56 = v17;
  v24 = *(v17 + 48);
  v60 = a1;
  sub_251541F0C(a1 + v23, v22, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v61 = a2;
  sub_251541F0C(a2 + v23, &v22[v24], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      sub_251541E9C(v22, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_21;
    }

LABEL_6:
    v26 = v22;
LABEL_7:
    sub_251541DC8(v26, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_8;
  }

  sub_251541F0C(v22, v15, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    sub_25150EE6C(v15, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v29 = v59;
  sub_25150F55C(&v22[v24], v59, type metadata accessor for ProtoLocalizedTextProps);
  v30 = *v15 == *v29 && v15[1] == v29[1];
  if (!v30 && (sub_25154D520() & 1) == 0 || (v15[2] == v29[2] ? (v31 = v15[3] == v29[3]) : (v31 = 0), !v31 && (sub_25154D520() & 1) == 0))
  {
    sub_25150EE6C(v29, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v15, type metadata accessor for ProtoLocalizedTextProps);
    v42 = v22;
    goto LABEL_31;
  }

  v32 = *(v4 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v33 = sub_25154D240();
  sub_25150EE6C(v29, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v15, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v22, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v35 = v60;
  v34 = v61;
  v36 = *v60;
  v37 = *v61;
  if (*(v61 + 8) == 1)
  {
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        if (v36 != 2)
        {
          goto LABEL_8;
        }
      }

      else if (v36 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v37)
    {
      if (v36 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (v36)
    {
      goto LABEL_8;
    }
  }

  else if (v36 != v37)
  {
    goto LABEL_8;
  }

  v38 = v58[7];
  v39 = *(v56 + 48);
  v40 = v4;
  v41 = v57;
  sub_251541F0C(v60 + v38, v57, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v34 + v38, v41 + v39, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v25(v41, 1, v40) != 1)
  {
    v43 = v55;
    sub_251541F0C(v41, v55, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v25((v41 + v39), 1, v40) == 1)
    {
      sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_37;
    }

    v44 = v41 + v39;
    v45 = v54;
    sub_25150F55C(v44, v54, type metadata accessor for ProtoLocalizedTextProps);
    if (*v43 == *v45 && v43[1] == v45[1] || (sub_25154D520()) && (v43[2] == v45[2] && v43[3] == v45[3] || (sub_25154D520()))
    {
      v46 = *(v40 + 24);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v47 = sub_25154D240();
      sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v47 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

    sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
    v42 = v41;
LABEL_31:
    sub_251541E9C(v42, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_8;
  }

  if (v25((v41 + v39), 1, v40) != 1)
  {
LABEL_37:
    v26 = v41;
    goto LABEL_7;
  }

  sub_251541E9C(v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
  v48 = v58[8];
  v49 = (v35 + v48);
  v50 = *(v35 + v48 + 8);
  v51 = (v34 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (v52 && (*v49 == *v51 && v50 == v52 || (sub_25154D520() & 1) != 0))
    {
      goto LABEL_56;
    }
  }

  else if (!v52)
  {
LABEL_56:
    v53 = v58[5];
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v27 = sub_25154D240();
    return v27 & 1;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s25HealthContentDaemonPlugin18ProtoCarouselPropsV4TileV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v76 = a2;
  v71 = type metadata accessor for ProtoLocalizedTextProps();
  v69 = *(v71 - 8);
  v3 = *(v69 + 64);
  v4 = MEMORY[0x28223BE20](v71);
  v65 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v67 = (&v65 - v6);
  v7 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v66 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v73 = &v65 - v12;
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v70 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v65 - v17;
  v18 = type metadata accessor for ProtoImageProps(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v7);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = (&v65 - v25);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v72 = type metadata accessor for ProtoCarouselProps.Tile(0);
  v32 = v72[6];
  v33 = *(v28 + 56);
  v75 = a1;
  sub_251541F0C(a1 + v32, v31, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v34 = v76;
  sub_251541F0C(v76 + v32, &v31[v33], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v35 = *(v19 + 48);
  if (v35(v31, 1, v18) == 1)
  {
    if (v35(&v31[v33], 1, v18) == 1)
    {
      sub_251541E9C(v31, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_11;
    }

LABEL_6:
    v36 = &qword_27F43CD90;
    v37 = &qword_27F43C6A8;
    v38 = type metadata accessor for ProtoImageProps;
    v39 = v31;
LABEL_7:
    sub_251541DC8(v39, v36, v37, v38);
    goto LABEL_8;
  }

  sub_251541F0C(v31, v26, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v35(&v31[v33], 1, v18) == 1)
  {
    sub_25150EE6C(v26, type metadata accessor for ProtoImageProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v31[v33], v22, type metadata accessor for ProtoImageProps);
  v42 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v26, v22);
  sub_25150EE6C(v22, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v26, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v31, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v42 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v43 = v75;
  v44 = *v75;
  v45 = *v34;
  if (*(v34 + 8) == 1)
  {
    v47 = v73;
    v46 = v74;
    if (v45 > 2)
    {
      if (v45 == 3)
      {
        if (v44 != 3)
        {
          goto LABEL_8;
        }
      }

      else if (v45 == 4)
      {
        if (v44 != 4)
        {
          goto LABEL_8;
        }
      }

      else if (v44 != 5)
      {
        goto LABEL_8;
      }
    }

    else if (v45)
    {
      if (v45 == 1)
      {
        if (v44 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v44 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v44)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = v73;
    v46 = v74;
    if (v44 != v45)
    {
      goto LABEL_8;
    }
  }

  v48 = v72[7];
  v49 = *(v70 + 48);
  sub_251541F0C(v75 + v48, v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v34 + v48, v46 + v49, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v50 = *(v69 + 48);
  v51 = v71;
  if (v50(v46, 1, v71) == 1)
  {
    if (v50(v46 + v49, 1, v51) != 1)
    {
LABEL_46:
      v36 = &qword_27F43C180;
      v37 = &qword_27F43BFE8;
      v38 = type metadata accessor for ProtoLocalizedTextProps;
      v39 = v46;
      goto LABEL_7;
    }

    sub_251541E9C(v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541F0C(v46, v47, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v50(v46 + v49, 1, v51) == 1)
    {
LABEL_45:
      sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_46;
    }

    v52 = v46 + v49;
    v53 = v67;
    sub_25150F55C(v52, v67, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v47 != *v53 || v47[1] != v53[1]) && (sub_25154D520() & 1) == 0 || (v47[2] != v53[2] || v47[3] != v53[3]) && (sub_25154D520() & 1) == 0)
    {
      v61 = v53;
LABEL_57:
      sub_25150EE6C(v61, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_8;
    }

    v54 = *(v51 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    LOBYTE(v54) = sub_25154D240();
    sub_25150EE6C(v53, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v54 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v55 = v72[8];
  v56 = *(v70 + 48);
  v57 = v68;
  sub_251541F0C(v43 + v55, v68, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v58 = v34 + v55;
  v46 = v57;
  sub_251541F0C(v58, v57 + v56, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v59 = v71;
  if (v50(v57, 1, v71) == 1)
  {
    if (v50(v57 + v56, 1, v59) == 1)
    {
      sub_251541E9C(v57, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_55:
      v64 = v72[5];
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v40 = sub_25154D240();
      return v40 & 1;
    }

    goto LABEL_46;
  }

  v60 = v57;
  v47 = v66;
  sub_251541F0C(v60, v66, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v50(v46 + v56, 1, v59) == 1)
  {
    goto LABEL_45;
  }

  v62 = v65;
  sub_25150F55C(v46 + v56, v65, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v47 != *v62 || v47[1] != v62[1]) && (sub_25154D520() & 1) == 0 || (v47[2] != v62[2] || v47[3] != v62[3]) && (sub_25154D520() & 1) == 0)
  {
    v61 = v62;
    goto LABEL_57;
  }

  v63 = *(v59 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  LOBYTE(v63) = sub_25154D240();
  sub_25150EE6C(v62, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v63)
  {
    goto LABEL_55;
  }

LABEL_8:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s25HealthContentDaemonPlugin16ProtoSwooshPropsV4TileV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for ProtoLocalizedTextProps();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = (&v50 - v9);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v53 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v50 - v12;
  v13 = type metadata accessor for ProtoImageProps(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v50 - v20);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v57 = type metadata accessor for ProtoSwooshProps.Tile(0);
  v58 = a1;
  v27 = v57[6];
  v28 = *(v23 + 56);
  sub_251541F0C(a1 + v27, v26, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v29 = v59;
  sub_251541F0C(v59 + v27, &v26[v28], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v30 = *(v14 + 48);
  if (v30(v26, 1, v13) == 1)
  {
    if (v30(&v26[v28], 1, v13) == 1)
    {
      sub_251541E9C(v26, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_11;
    }

LABEL_6:
    v31 = &qword_27F43CD90;
    v32 = &qword_27F43C6A8;
    v33 = type metadata accessor for ProtoImageProps;
    v34 = v26;
LABEL_7:
    sub_251541DC8(v34, v31, v32, v33);
    goto LABEL_8;
  }

  sub_251541F0C(v26, v21, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v30(&v26[v28], 1, v13) == 1)
  {
    sub_25150EE6C(v21, type metadata accessor for ProtoImageProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v26[v28], v17, type metadata accessor for ProtoImageProps);
  v37 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v21, v17);
  sub_25150EE6C(v17, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v21, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v26, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v37 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v38 = *v58;
  v39 = *v29;
  if (*(v29 + 8) == 1)
  {
    if (v39 > 2)
    {
      if (v39 == 3)
      {
        if (v38 != 3)
        {
          goto LABEL_8;
        }
      }

      else if (v39 == 4)
      {
        if (v38 != 4)
        {
          goto LABEL_8;
        }
      }

      else if (v38 != 5)
      {
        goto LABEL_8;
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        if (v38 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v38 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v38)
    {
      goto LABEL_8;
    }
  }

  else if (v38 != v39)
  {
    goto LABEL_8;
  }

  v40 = v56;
  v41 = v57[7];
  v42 = *(v53 + 48);
  sub_251541F0C(v58 + v41, v56, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v29 + v41, v40 + v42, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v43 = v55;
  v44 = *(v54 + 48);
  if (v44(v40, 1, v55) == 1)
  {
    if (v44(v40 + v42, 1, v43) == 1)
    {
      sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_35:
      v49 = v57[5];
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v35 = sub_25154D240();
      return v35 & 1;
    }

    goto LABEL_27;
  }

  v45 = v52;
  sub_251541F0C(v40, v52, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v44(v40 + v42, 1, v43) == 1)
  {
    sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
LABEL_27:
    v31 = &qword_27F43C180;
    v32 = &qword_27F43BFE8;
    v33 = type metadata accessor for ProtoLocalizedTextProps;
    v34 = v40;
    goto LABEL_7;
  }

  v46 = v40 + v42;
  v47 = v51;
  sub_25150F55C(v46, v51, type metadata accessor for ProtoLocalizedTextProps);
  if (*v45 == *v47 && v45[1] == v47[1] || (sub_25154D520()) && (v45[2] == v47[2] && v45[3] == v47[3] || (sub_25154D520()))
  {
    v48 = *(v43 + 24);
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
    LOBYTE(v48) = sub_25154D240();
    sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v48)
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

LABEL_8:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s25HealthContentDaemonPlugin15ProtoTablePropsV12ColumnHeaderV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v28 - v10);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  v17 = *(v29 + 24);
  v18 = *(v13 + 56);
  v31 = a1;
  sub_251541F0C(a1 + v17, v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(a2 + v17, &v16[v18], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_251541F0C(v16, v11, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
LABEL_6:
    sub_251541DC8(v16, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_21;
  }

  v20 = v30;
  sub_25150F55C(&v16[v18], v30, type metadata accessor for ProtoLocalizedTextProps);
  v21 = *v11 == *v20 && v11[1] == v20[1];
  if (!v21 && (sub_25154D520() & 1) == 0 || (v11[2] == v20[2] ? (v22 = v11[3] == v20[3]) : (v22 = 0), !v22 && (sub_25154D520() & 1) == 0))
  {
    sub_25150EE6C(v20, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_21;
  }

  v23 = *(v4 + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v24 = sub_25154D240();
  sub_25150EE6C(v20, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v24 & 1) == 0)
  {
LABEL_21:
    v26 = 0;
    return v26 & 1;
  }

LABEL_18:
  if (*v31 != *a2)
  {
    goto LABEL_21;
  }

  v25 = *(v29 + 20);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v26 = sub_25154D240();
  return v26 & 1;
}

uint64_t _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = type metadata accessor for ProtoImageProps(0);
  v8 = *(v7 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 9);
  v11 = a2 + v8;
  v12 = *(a2 + v8 + 9);
  if (v10)
  {
    if (v12)
    {
LABEL_14:
      v13 = *(v7 + 24);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      return sub_25154D240() & 1;
    }
  }

  else if ((v12 & 1) == 0)
  {
    v15 = *v9;
    v16 = *v11;
    if (*(v11 + 8))
    {
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (v15 == 3)
          {
            goto LABEL_14;
          }
        }

        else if (v16 == 4)
        {
          if (v15 == 4)
          {
            goto LABEL_14;
          }
        }

        else if (v15 == 5)
        {
          goto LABEL_14;
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          if (v15 == 1)
          {
            goto LABEL_14;
          }
        }

        else if (v15 == 2)
        {
          goto LABEL_14;
        }
      }

      else if (!v15)
      {
        goto LABEL_14;
      }
    }

    else if (v15 == v16)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v34 - v10);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v35 = type metadata accessor for ProtoTextProps(0);
  v17 = *(v35 + 32);
  v18 = *(v13 + 56);
  v37 = a1;
  sub_251541F0C(a1 + v17, v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(a2 + v17, &v16[v18], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_251541F0C(v16, v11, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v36;
      sub_25150F55C(&v16[v18], v36, type metadata accessor for ProtoLocalizedTextProps);
      v23 = *v11 == *v22 && v11[1] == v22[1];
      if (!v23 && (sub_25154D520() & 1) == 0 || (v11[2] == v22[2] ? (v24 = v11[3] == v22[3]) : (v24 = 0), !v24 && (sub_25154D520() & 1) == 0))
      {
        sub_25150EE6C(v22, type metadata accessor for ProtoLocalizedTextProps);
        sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
        sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        goto LABEL_7;
      }

      v25 = *(v4 + 24);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v26 = sub_25154D240();
      sub_25150EE6C(v22, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
LABEL_6:
    sub_251541DC8(v16, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251541E9C(v16, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_20:
  v27 = *v37;
  v28 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v28)
    {
      case 1:
        if (v27 == 1)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 2:
        if (v27 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 3:
        if (v27 == 3)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 4:
        if (v27 == 4)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 5:
        if (v27 == 5)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 6:
        if (v27 == 6)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 7:
        if (v27 == 7)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 8:
        if (v27 == 8)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 9:
        if (v27 == 9)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 10:
        if (v27 == 10)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 11:
        if (v27 == 11)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 12:
        if (v27 == 12)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      default:
        if (!v27)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
    }
  }

  if (v27 != v28)
  {
    goto LABEL_7;
  }

LABEL_25:
  v29 = v37[2];
  v30 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        if (v29 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v29 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v29)
    {
      goto LABEL_7;
    }
  }

  else if (v29 != v30)
  {
    goto LABEL_7;
  }

  v31 = v37[4];
  v32 = a2[4];
  if (*(a2 + 40) == 1)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v31 == 1)
        {
          goto LABEL_46;
        }
      }

      else if (v31 == 2)
      {
LABEL_46:
        v33 = *(v35 + 28);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        v20 = sub_25154D240();
        return v20 & 1;
      }
    }

    else if (!v31)
    {
      goto LABEL_46;
    }
  }

  else if (v31 == v32)
  {
    goto LABEL_46;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoComponentV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  sub_251541E24(0, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_25154D520() & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = a1[2];
  v19 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v19 > 5)
    {
      if (v19 > 8)
      {
        if (v19 == 9)
        {
          if (v18 != 9)
          {
            goto LABEL_23;
          }
        }

        else if (v19 == 10)
        {
          if (v18 != 10)
          {
            goto LABEL_23;
          }
        }

        else if (v18 != 11)
        {
          goto LABEL_23;
        }
      }

      else if (v19 == 6)
      {
        if (v18 != 6)
        {
          goto LABEL_23;
        }
      }

      else if (v19 == 7)
      {
        if (v18 != 7)
        {
          goto LABEL_23;
        }
      }

      else if (v18 != 8)
      {
        goto LABEL_23;
      }
    }

    else if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_23;
        }
      }

      else if (v19 == 4)
      {
        if (v18 != 4)
        {
          goto LABEL_23;
        }
      }

      else if (v18 != 5)
      {
        goto LABEL_23;
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_23;
        }
      }

      else if (v18 != 2)
      {
        goto LABEL_23;
      }
    }

    else if (v18)
    {
      goto LABEL_23;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_23;
  }

  v28 = v8;
  v29 = type metadata accessor for ProtoComponent(0);
  v20 = *(v29 + 24);
  v21 = *(v14 + 48);
  sub_251541F0C(a1 + v20, v17, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541F0C(a2 + v20, &v17[v21], &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v21], 1, v4) == 1)
    {
      sub_251541E9C(v17, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_34:
      v27 = *(v29 + 28);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v23 = sub_25154D240();
      return v23 & 1;
    }

    goto LABEL_22;
  }

  sub_251541F0C(v17, v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  if (v22(&v17[v21], 1, v4) == 1)
  {
    sub_25150EE6C(v12, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_22:
    sub_251541DC8(v17, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_23;
  }

  v25 = v28;
  sub_25150F55C(&v17[v21], v28, type metadata accessor for ProtoComponent.OneOf_Props);
  v26 = _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(v12, v25);
  sub_25150EE6C(v25, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150EE6C(v12, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541E9C(v17, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  if (v26)
  {
    goto LABEL_34;
  }

LABEL_23:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v99 = type metadata accessor for ProtoTableProps(0);
  v3 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v117 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ProtoVideoListProps(0);
  v5 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v116 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ProtoImageListProps(0);
  v7 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v115 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ProtoTextListProps(0);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v114 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoTextProps(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for ProtoCarouselProps(0);
  v14 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v113 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ProtoSwooshProps(0);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v111 = (&v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for ProtoVideoProps(0);
  v18 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProtoImageProps(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v109 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ProtoMainHeaderProps(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v107 = (&v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for ProtoEmptyProps(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v106 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v124 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v123 = &v99 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v122 = &v99 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v121 = &v99 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = (&v99 - v43);
  v45 = MEMORY[0x28223BE20](v42);
  v119 = &v99 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v118 = &v99 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v120 = &v99 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = (&v99 - v52);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = (&v99 - v55);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (&v99 - v58);
  MEMORY[0x28223BE20](v57);
  v61 = &v99 - v60;
  sub_251541F8C();
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v66 = &v99 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v64 + 56);
  sub_251541FF0(a1, v66, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541FF0(v125, &v66[v67], type metadata accessor for ProtoComponent.OneOf_Props);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_251541FF0(v66, v59, type metadata accessor for ProtoComponent.OneOf_Props);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = v107;
            sub_25150F55C(&v66[v67], v107, type metadata accessor for ProtoMainHeaderProps);
            v70 = _s25HealthContentDaemonPlugin20ProtoMainHeaderPropsV2eeoiySbAC_ACtFZ_0(v59, v69);
            v71 = type metadata accessor for ProtoMainHeaderProps;
            sub_25150EE6C(v69, type metadata accessor for ProtoMainHeaderProps);
            v72 = v59;
LABEL_72:
            sub_25150EE6C(v72, v71);
            goto LABEL_79;
          }

          v90 = type metadata accessor for ProtoMainHeaderProps;
          v91 = v59;
        }

        else
        {
          sub_251541FF0(v66, v56, type metadata accessor for ProtoComponent.OneOf_Props);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v82 = v108;
            sub_25150F55C(&v66[v67], v108, type metadata accessor for ProtoFullMainHeaderProps);
            v70 = _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV2eeoiySbAC_ACtFZ_0(v56, v82);
            v71 = type metadata accessor for ProtoFullMainHeaderProps;
            sub_25150EE6C(v82, type metadata accessor for ProtoFullMainHeaderProps);
            v72 = v56;
            goto LABEL_72;
          }

          v90 = type metadata accessor for ProtoFullMainHeaderProps;
          v91 = v56;
        }

        goto LABEL_68;
      }

      sub_251541FF0(v66, v61, type metadata accessor for ProtoComponent.OneOf_Props);
      if (!swift_getEnumCaseMultiPayload())
      {
        v94 = v106;
        sub_25150F55C(&v66[v67], v106, type metadata accessor for ProtoEmptyProps);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        v70 = sub_25154D240();
        v71 = type metadata accessor for ProtoEmptyProps;
        sub_25150EE6C(v94, type metadata accessor for ProtoEmptyProps);
        v72 = v61;
        goto LABEL_72;
      }

      v78 = type metadata accessor for ProtoEmptyProps;
LABEL_67:
      v90 = v78;
      v91 = v61;
      goto LABEL_68;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251541FF0(v66, v53, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v80 = v109;
        sub_25150F55C(&v66[v67], v109, type metadata accessor for ProtoImageProps);
        v70 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v53, v80);
        v71 = type metadata accessor for ProtoImageProps;
        sub_25150EE6C(v80, type metadata accessor for ProtoImageProps);
        v72 = v53;
        goto LABEL_72;
      }

      v90 = type metadata accessor for ProtoImageProps;
      v91 = v53;
      goto LABEL_68;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v61 = v118;
      sub_251541FF0(v66, v118, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v78 = type metadata accessor for ProtoSwooshProps;
        goto LABEL_67;
      }

      v84 = v111;
      sub_25150F55C(&v66[v67], v111, type metadata accessor for ProtoSwooshProps);
      if (sub_2515051C8(*v61, *v84))
      {
        v85 = *(v101 + 20);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        if (sub_25154D240())
        {
          sub_25150EE6C(v84, type metadata accessor for ProtoSwooshProps);
          v86 = v61;
          v87 = type metadata accessor for ProtoSwooshProps;
LABEL_55:
          sub_25150EE6C(v86, v87);
          v70 = 1;
LABEL_79:
          v92 = type metadata accessor for ProtoComponent.OneOf_Props;
          goto LABEL_80;
        }
      }

      sub_25150EE6C(v84, type metadata accessor for ProtoSwooshProps);
      v96 = v61;
      v97 = type metadata accessor for ProtoSwooshProps;
LABEL_78:
      sub_25150EE6C(v96, v97);
      v70 = 0;
      goto LABEL_79;
    }

    v61 = v120;
    sub_251541FF0(v66, v120, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v78 = type metadata accessor for ProtoVideoProps;
      goto LABEL_67;
    }

    v74 = v112;
    sub_25150F55C(&v66[v67], v112, type metadata accessor for ProtoVideoProps);
    if (*v61 == *v74 && *(v61 + 1) == *(v74 + 8) || (sub_25154D520()) && v61[16] == *(v74 + 16))
    {
      v75 = *(v100 + 24);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      if (sub_25154D240())
      {
        v76 = type metadata accessor for ProtoVideoProps;
LABEL_54:
        v89 = v76;
        sub_25150EE6C(v74, v76);
        v86 = v61;
        v87 = v89;
        goto LABEL_55;
      }
    }

    v93 = type metadata accessor for ProtoVideoProps;
LABEL_77:
    v95 = v93;
    sub_25150EE6C(v74, v93);
    v96 = v61;
    v97 = v95;
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v61 = v122;
      sub_251541FF0(v66, v122, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v78 = type metadata accessor for ProtoImageListProps;
        goto LABEL_67;
      }

      v74 = v115;
      sub_25150F55C(&v66[v67], v115, type metadata accessor for ProtoImageListProps);
      if (sub_2515050CC(*v61, *v74))
      {
        v81 = *(v104 + 20);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        if (sub_25154D240())
        {
          v76 = type metadata accessor for ProtoImageListProps;
          goto LABEL_54;
        }
      }

      v93 = type metadata accessor for ProtoImageListProps;
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v61 = v123;
      sub_251541FF0(v66, v123, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v78 = type metadata accessor for ProtoVideoListProps;
        goto LABEL_67;
      }

      v74 = v116;
      sub_25150F55C(&v66[v67], v116, type metadata accessor for ProtoVideoListProps);
      if (sub_251505078(*v61, *v74))
      {
        v77 = *(v105 + 20);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        if (sub_25154D240())
        {
          v76 = type metadata accessor for ProtoVideoListProps;
          goto LABEL_54;
        }
      }

      v93 = type metadata accessor for ProtoVideoListProps;
    }

    else
    {
      v61 = v124;
      sub_251541FF0(v66, v124, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v78 = type metadata accessor for ProtoTableProps;
        goto LABEL_67;
      }

      v74 = v117;
      sub_25150F55C(&v66[v67], v117, type metadata accessor for ProtoTableProps);
      if (sub_2515053BC(*v61, *v74) & 1) != 0 && (sub_251505A74(*(v61 + 1), *(v74 + 8)))
      {
        v88 = *(v99 + 24);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
        if (sub_25154D240())
        {
          v76 = type metadata accessor for ProtoTableProps;
          goto LABEL_54;
        }
      }

      v93 = type metadata accessor for ProtoTableProps;
    }

    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v61 = v119;
    sub_251541FF0(v66, v119, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v78 = type metadata accessor for ProtoCarouselProps;
      goto LABEL_67;
    }

    v74 = v113;
    sub_25150F55C(&v66[v67], v113, type metadata accessor for ProtoCarouselProps);
    if (sub_251505174(*v61, *v74))
    {
      v79 = *(v102 + 20);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      if (sub_25154D240())
      {
        v76 = type metadata accessor for ProtoCarouselProps;
        goto LABEL_54;
      }
    }

    v93 = type metadata accessor for ProtoCarouselProps;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v61 = v121;
    sub_251541FF0(v66, v121, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v78 = type metadata accessor for ProtoTextListProps;
      goto LABEL_67;
    }

    v74 = v114;
    sub_25150F55C(&v66[v67], v114, type metadata accessor for ProtoTextListProps);
    if (sub_251505120(*v61, *v74))
    {
      v83 = *(v103 + 20);
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
      if (sub_25154D240())
      {
        v76 = type metadata accessor for ProtoTextListProps;
        goto LABEL_54;
      }
    }

    v93 = type metadata accessor for ProtoTextListProps;
    goto LABEL_77;
  }

  sub_251541FF0(v66, v44, type metadata accessor for ProtoComponent.OneOf_Props);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v73 = v110;
    sub_25150F55C(&v66[v67], v110, type metadata accessor for ProtoTextProps);
    v70 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v44, v73);
    v71 = type metadata accessor for ProtoTextProps;
    sub_25150EE6C(v73, type metadata accessor for ProtoTextProps);
    v72 = v44;
    goto LABEL_72;
  }

  v90 = type metadata accessor for ProtoTextProps;
  v91 = v44;
LABEL_68:
  sub_25150EE6C(v91, v90);
  v70 = 0;
  v92 = sub_251541F8C;
LABEL_80:
  sub_25150EE6C(v66, v92);
  return v70 & 1;
}