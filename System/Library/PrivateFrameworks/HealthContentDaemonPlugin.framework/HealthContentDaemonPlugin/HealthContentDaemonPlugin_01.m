uint64_t sub_2514FC1EC(uint64_t *a1)
{
  v3 = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_251500FAC(v11);
    *(v3 + v8) = v11;
  }

  v15 = type metadata accessor for ProtoColorValue();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = *a1;
  swift_beginAccess();
  sub_2515093D0(v7, v11 + v16);
  return swift_endAccess();
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25154CFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_25154CFE0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2514FC474@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2514FC510(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ProtoArticle.TileProps.title.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v7 + 24), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a1, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FC76C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v8 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150A7A0(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  sub_25150A730(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoArticle.TileProps.title.modify(void *a1))()
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
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25150A98C;
}

BOOL sub_2514FCDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_25150A6B0(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_25150A730(v12, a1, a2);
  return v15;
}

uint64_t sub_2514FCF0C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.TileProps.summary.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v7 + 28), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a1, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FD14C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v8 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150A7A0(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FD2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  sub_25150A730(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.summary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoArticle.TileProps.summary.modify(void *a1))()
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
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25150A98C;
}

BOOL sub_2514FD788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_25150A6B0(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_25150A730(v12, a1, a2);
  return v15;
}

uint64_t sub_2514FD8EC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.TileProps.subheadline.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v7 + 32), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a1, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FDB2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v8 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150A7A0(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
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
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FDCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  sub_25150A730(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.subheadline.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoArticle.TileProps.subheadline.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_2514FE120;
}

void sub_2514FE120(uint64_t **a1, char a2)
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
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A730(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_2514FE2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_25150A6B0(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_25150A730(v12, a1, a2);
  return v15;
}

uint64_t sub_2514FE44C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.init()@<X0>(uint64_t a1@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v2 = type metadata accessor for ProtoArticle(0);
  v3 = v2[5];
  v4 = type metadata accessor for ProtoArticle.Metadata(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for ProtoArticle.Theme(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for ProtoArticle.Content(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[9];
  v12 = type metadata accessor for ProtoArticle.TileProps(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a1 + v11, 1, 1, v12);
}

uint64_t sub_2514FE740()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BEF8);
  __swift_project_value_buffer(v0, qword_27F43BEF8);
  sub_25150A4CC();
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "metadata";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleTheme";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "content";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "mediaLibrary";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "tileProps";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoArticle.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_2514FEB0C();
      }

      else if (result == 2)
      {
        sub_2514FEBC0();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_2514FEC74();
          break;
        case 4:
          sub_2514FED28();
          break;
        case 5:
          sub_2514FEDDC();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2514FEB0C()
{
  v0 = *(type metadata accessor for ProtoArticle(0) + 20);
  type metadata accessor for ProtoArticle.Metadata(0);
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata);
  return sub_25154D0D0();
}

uint64_t sub_2514FEBC0()
{
  v0 = *(type metadata accessor for ProtoArticle(0) + 24);
  type metadata accessor for ProtoArticle.Theme(0);
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme);
  return sub_25154D0D0();
}

uint64_t sub_2514FEC74()
{
  v0 = *(type metadata accessor for ProtoArticle(0) + 28);
  type metadata accessor for ProtoArticle.Content(0);
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content);
  return sub_25154D0D0();
}

uint64_t sub_2514FED28()
{
  v0 = *(type metadata accessor for ProtoArticle(0) + 32);
  type metadata accessor for ProtoArticle.MediaLibrary(0);
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary);
  return sub_25154D0D0();
}

uint64_t sub_2514FEDDC()
{
  v0 = *(type metadata accessor for ProtoArticle(0) + 36);
  type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps);
  return sub_25154D0D0();
}

uint64_t ProtoArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2514FEF48(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2514FF194(v3, a1, a2, a3);
    sub_2514FF3E0(v3, a1, a2, a3);
    sub_2514FF62C(v3, a1, a2, a3);
    sub_2514FF878(v3, a1, a2, a3);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_2514FEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArticle.Metadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v14 + 20), v8, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoArticle.Metadata);
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoArticle.Metadata);
}

uint64_t sub_2514FF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArticle.Theme(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v14 + 24), v8, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoArticle.Theme);
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoArticle.Theme);
}

uint64_t sub_2514FF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArticle.Content(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v14 + 28), v8, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoArticle.Content);
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoArticle.Content);
}

uint64_t sub_2514FF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v14 + 32), v8, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoArticle.MediaLibrary);
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoArticle.MediaLibrary);
}

uint64_t sub_2514FF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArticle.TileProps(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v14 + 36), v8, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoArticle.TileProps);
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoArticle.TileProps);
}

uint64_t sub_2514FFB10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for ProtoArticle.Metadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ProtoArticle.Theme(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for ProtoArticle.Content(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = a1[9];
  v13 = type metadata accessor for ProtoArticle.TileProps(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_2514FFD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C178, type metadata accessor for ProtoArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2514FFDA8(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C048, type metadata accessor for ProtoArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2514FFE14()
{
  sub_25150949C(&qword_27F43C048, type metadata accessor for ProtoArticle);

  return sub_25154D100();
}

uint64_t sub_2514FFEB0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF10);
  __swift_project_value_buffer(v0, qword_27F43BF10);
  sub_25150A4CC();
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleId";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "revision";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "datePublished";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoArticle.Metadata.decodeMessage<A>(decoder:)()
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
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_25154D0B0();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoArticle.Metadata.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_25154D160(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_25154D160(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_25154D160(), !v1))
        {
          v12 = v0 + *(type metadata accessor for ProtoArticle.Metadata(0) + 32);
          return sub_25154CFC0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251500340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251500390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251500404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251500478(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_2515004CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C170, type metadata accessor for ProtoArticle.Metadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150056C(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515005D8()
{
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata);

  return sub_25154D100();
}

uint64_t ProtoArticle.Content.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ProtoComponent(0);
        sub_25150949C(&qword_27F43C000, type metadata accessor for ProtoComponent);
        sub_25154D0C0();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoArticle.Content.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtoComponent(0), sub_25150949C(&qword_27F43C000, type metadata accessor for ProtoComponent), result = sub_25154D170(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ProtoArticle.Content(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t (*sub_251500914(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_251500968(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C168, type metadata accessor for ProtoArticle.Content);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251500A08(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251500A74()
{
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content);

  return sub_25154D100();
}

uint64_t sub_251500B2C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF40);
  __swift_project_value_buffer(v0, qword_27F43BF40);
  sub_25150A4CC();
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25154E650;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "selectedState";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v17 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "card";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v17 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "background";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v17 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "text";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v17 + v4 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "secondaryTint";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_251500DE4()
{
  v0 = type metadata accessor for ProtoArticle.Theme._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  v5 = type metadata accessor for ProtoColorValue();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 1, 1, v5);
  qword_27F43BF58 = v3;
  return result;
}

uint64_t sub_251500F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251500FAC(uint64_t a1)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  v8 = type metadata accessor for ProtoColorValue();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  v9(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 1, 1, v8);
  v11 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  v9(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 1, 1, v8);
  v21 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  v9(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 1, 1, v8);
  v22 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  v9(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 1, 1, v8);
  v12 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  sub_25150A6B0(a1 + v12, v6, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v6, v1 + v7);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  sub_25150A6B0(a1 + v13, v6, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v6, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  sub_25150A6B0(a1 + v14, v6, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v6, v1 + v11);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  sub_25150A6B0(a1 + v15, v6, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v16 = v21;
  swift_beginAccess();
  sub_2515093D0(v6, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  sub_25150A6B0(a1 + v17, v6, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);

  v18 = v22;
  swift_beginAccess();
  sub_2515093D0(v6, v1 + v18);
  swift_endAccess();
  return v1;
}

uint64_t sub_251501320()
{
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ProtoArticle.Theme.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_251500FAC(v12);
    *(v4 + v8) = v11;
  }

  return sub_2515014C0(v11, a1, a2, a3);
}

uint64_t sub_2515014C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25154D030();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
LABEL_5:
            sub_251501608(v11, v12, v13, v14, v15);
            break;
          case 4:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
            goto LABEL_5;
          case 5:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
            goto LABEL_5;
        }
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251501608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for ProtoColorValue();
  sub_25150949C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue);
  sub_25154D0D0();
  return swift_endAccess();
}

uint64_t ProtoArticle.Theme.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ProtoArticle.Theme(0);
  result = sub_25150174C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25150174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState, 1);
  if (!v4)
  {
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 2);
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 3);
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 4);
    return sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 5);
  }

  return result;
}

uint64_t sub_251501820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for ProtoColorValue();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_25150A6B0(a1 + v17, v11, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_25150A730(v11, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  }

  sub_25150A7A0(v11, v16, type metadata accessor for ProtoColorValue);
  sub_25150949C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue);
  sub_25154D180();
  return sub_251500F0C(v16, type metadata accessor for ProtoColorValue);
}

BOOL sub_251501A80(uint64_t a1, uint64_t a2)
{
  v111 = type metadata accessor for ProtoColorValue();
  v112 = *(v111 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25150A808(0, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v97 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v100 = &v94[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &v94[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v94[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v94[-v17];
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v96 = &v94[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v94[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v98 = &v94[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v102 = &v94[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v101 = &v94[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v105 = &v94[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v104 = &v94[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v94[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v94[-v38];
  MEMORY[0x28223BE20](v37);
  v41 = &v94[-v40];
  v42 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  sub_25150A6B0(a1 + v42, v41, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v43 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  v108 = v7;
  v44 = *(v7 + 48);
  sub_25150A6B0(v41, v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v45 = v112;
  v46 = v111;
  sub_25150A6B0(a2 + v43, &v18[v44], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v49 = *(v45 + 48);
  v47 = v45 + 48;
  v48 = v49;
  if (v49(v18, 1, v46) == 1)
  {

    sub_25150A730(v41, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v50 = a1;
    if (v48(&v18[v44], 1, v46) != 1)
    {
      goto LABEL_14;
    }

    v106 = v48;
    sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  }

  else
  {
    sub_25150A6B0(v18, v39, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v48(&v18[v44], 1, v46) == 1)
    {

      sub_25150A730(v41, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      v51 = v39;
LABEL_13:
      sub_251500F0C(v51, type metadata accessor for ProtoColorValue);
      goto LABEL_14;
    }

    v106 = v48;
    v52 = &v18[v44];
    v53 = v109;
    sub_25150A7A0(v52, v109, type metadata accessor for ProtoColorValue);

    v54 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v39, v53);
    sub_251500F0C(v53, type metadata accessor for ProtoColorValue);
    sub_25150A730(v41, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v55 = v39;
    v50 = a1;
    sub_251500F0C(v55, type metadata accessor for ProtoColorValue);
    sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if ((v54 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v56 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  v57 = v110;
  sub_25150A6B0(v50 + v56, v110, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v58 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  v59 = v108;
  v60 = *(v108 + 48);
  v18 = v107;
  sub_25150A6B0(v57, v107, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v58, &v18[v60], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v61 = v111;
  v62 = v106;
  if (v106(v18, 1, v111) == 1)
  {
    sub_25150A730(v57, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v62(&v18[v60], 1, v61) == 1)
    {
      v106 = v62;
      v112 = v47;
      sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      goto LABEL_20;
    }

LABEL_14:
    v65 = v18;
LABEL_15:
    sub_25150A40C(v65, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    goto LABEL_16;
  }

  v63 = v104;
  sub_25150A6B0(v18, v104, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v106 = v62;
  if (v62(&v18[v60], 1, v61) == 1)
  {
    v64 = &v114;
LABEL_12:
    sub_25150A730(*(v64 - 32), &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v51 = v63;
    goto LABEL_13;
  }

  v112 = v47;
  v67 = v109;
  sub_25150A7A0(&v18[v60], v109, type metadata accessor for ProtoColorValue);
  v95 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v63, v67);
  sub_251500F0C(v67, type metadata accessor for ProtoColorValue);
  sub_25150A730(v110, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v63, type metadata accessor for ProtoColorValue);
  sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((v95 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v68 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  v69 = v105;
  sub_25150A6B0(v50 + v68, v105, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v70 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  v71 = *(v59 + 48);
  v72 = v103;
  sub_25150A6B0(v69, v103, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v70, &v72[v71], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v73 = v106;
  if (v106(v72, 1, v61) == 1)
  {
    sub_25150A730(v69, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v73(&v72[v71], 1, v61) == 1)
    {
      v74 = v59;
      sub_25150A730(v72, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      goto LABEL_27;
    }

LABEL_25:
    v65 = v72;
    goto LABEL_15;
  }

  v75 = v101;
  sub_25150A6B0(v72, v101, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v73(&v72[v71], 1, v61) == 1)
  {
    sub_25150A730(v105, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v75, type metadata accessor for ProtoColorValue);
    goto LABEL_25;
  }

  v74 = v59;
  v76 = &v72[v71];
  v77 = v109;
  sub_25150A7A0(v76, v109, type metadata accessor for ProtoColorValue);
  v78 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v75, v77);
  sub_251500F0C(v77, type metadata accessor for ProtoColorValue);
  sub_25150A730(v105, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v75, type metadata accessor for ProtoColorValue);
  sub_25150A730(v72, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((v78 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v79 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  v80 = v102;
  sub_25150A6B0(v50 + v79, v102, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v81 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  v82 = *(v74 + 48);
  v18 = v100;
  sub_25150A6B0(v80, v100, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v81, &v18[v82], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v83 = v106;
  if (v106(v18, 1, v61) != 1)
  {
    v63 = v98;
    sub_25150A6B0(v18, v98, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v83(&v18[v82], 1, v61) == 1)
    {
      v64 = &v113;
      goto LABEL_12;
    }

    v84 = v109;
    sub_25150A7A0(&v18[v82], v109, type metadata accessor for ProtoColorValue);
    v85 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v63, v84);
    sub_251500F0C(v84, type metadata accessor for ProtoColorValue);
    sub_25150A730(v102, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v63, type metadata accessor for ProtoColorValue);
    sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v85)
    {
      goto LABEL_33;
    }

LABEL_16:

    return 0;
  }

  sub_25150A730(v80, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v83(&v18[v82], 1, v61) != 1)
  {
    goto LABEL_14;
  }

  sub_25150A730(v18, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
LABEL_33:
  v86 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  v87 = v99;
  sub_25150A6B0(v50 + v86, v99, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v88 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  v89 = *(v108 + 48);
  v90 = v97;
  sub_25150A6B0(v87, v97, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v88, &v90[v89], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v83(v90, 1, v61) == 1)
  {

    sub_25150A730(v87, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v83(&v90[v89], 1, v61) == 1)
    {
      sub_25150A730(v90, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      return 1;
    }

    goto LABEL_38;
  }

  v91 = v96;
  sub_25150A6B0(v90, v96, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v83(&v90[v89], 1, v61) == 1)
  {

    sub_25150A730(v99, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v91, type metadata accessor for ProtoColorValue);
LABEL_38:
    sub_25150A40C(v90, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    return 0;
  }

  v92 = v109;
  sub_25150A7A0(&v90[v89], v109, type metadata accessor for ProtoColorValue);
  v93 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v91, v92);

  sub_251500F0C(v92, type metadata accessor for ProtoColorValue);
  sub_25150A730(v99, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v91, type metadata accessor for ProtoColorValue);
  sub_25150A730(v90, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  return (v93 & 1) != 0;
}

uint64_t sub_251502C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27F43B9E0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F43BF58;
}

uint64_t sub_251502CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C160, type metadata accessor for ProtoArticle.Theme);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251502D80(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251502DEC()
{
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme);

  return sub_25154D100();
}

uint64_t sub_251502EA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25154D1C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_25150A4CC();
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890]);
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

uint64_t ProtoArticle.MediaLibrary.decodeMessage<A>(decoder:)()
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
      sub_2515030B0();
    }
  }

  return result;
}

uint64_t sub_2515030B0()
{
  sub_25154CFB0();
  type metadata accessor for ProtoRichMedia();
  sub_25150949C(&qword_27F43C020, type metadata accessor for ProtoRichMedia);
  sub_25150949C(&qword_27F43C028, type metadata accessor for ProtoRichMedia);
  return sub_25154D020();
}

uint64_t ProtoArticle.MediaLibrary.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_25154CFB0(), type metadata accessor for ProtoRichMedia(), sub_25150949C(&qword_27F43C020, type metadata accessor for ProtoRichMedia), sub_25150949C(&qword_27F43C028, type metadata accessor for ProtoRichMedia), result = sub_25154D110(), !v3))
  {
    v2 = v0 + *(type metadata accessor for ProtoArticle.MediaLibrary(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251503310(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_251503410@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_251509128(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150349C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C158, type metadata accessor for ProtoArticle.MediaLibrary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150353C(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515035A8()
{
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary);

  return sub_25154D100();
}

uint64_t sub_25150363C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_251503704()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF78);
  __swift_project_value_buffer(v0, qword_27F43BF78);
  sub_25150A4CC();
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890]);
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
  *v11 = "summary";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "subheadline";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "previewImageId";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25150397C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25154D1C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ProtoArticle.TileProps.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_251503C5C();
      }

      else if (result == 4)
      {
        sub_25154D0B0();
      }
    }

    else if (result == 1)
    {
      sub_251503AF4();
    }

    else if (result == 2)
    {
      sub_251503BA8();
    }
  }

  return result;
}

uint64_t sub_251503AF4()
{
  v0 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251503BA8()
{
  v0 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251503C5C()
{
  v0 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoArticle.TileProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251503DEC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251504038(v3, a1, a2, a3);
    sub_251504284(v3, a1, a2, a3);
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_25154D160();
    }

    v12 = v3 + *(type metadata accessor for ProtoArticle.TileProps(0) + 20);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251503DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v14 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251504038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v14 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251504284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v14 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_25150A730(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v8, v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v13, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25150451C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25154D590();
  a1(0);
  sub_25150949C(a2, a3);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_2515045A4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v9(&a2[a1[7]], 1, 1, v6);
  v7 = &a2[a1[8]];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_2515046AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251504720(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2515047C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C150, type metadata accessor for ProtoArticle.TileProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251504864@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25154D1C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_251504900(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150496C()
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_2515049C4()
{
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps);

  return sub_25154D100();
}

uint64_t sub_251504A40()
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_251504A98(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for ProtoTextProps(0);
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  sub_25150A808(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v49 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = (&v43 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v23 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = v4;
  v26 = a1 + v24;
  v27 = a2 + v24;
  v47 = &v43 - v21;
  v48 = (v25 + 48);
  v28 = *(v20 + 72);
  v43 = v10;
  v44 = v28;
  v29 = &qword_27F43C188;
  v46 = v15;
  while (1)
  {
    sub_25150A648(v26, v22, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    sub_25150A648(v27, v19, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    v30 = *(v15 + 24);
    v31 = *(v49 + 48);
    sub_25150A6B0(v22 + v30, v14, v29, type metadata accessor for ProtoTextProps);
    v32 = v29;
    v33 = v50;
    sub_25150A6B0(&v19[v30], &v14[v31], v32, type metadata accessor for ProtoTextProps);
    v34 = *v48;
    if ((*v48)(v14, 1, v33) != 1)
    {
      break;
    }

    if (v34(&v14[v31], 1, v50) != 1)
    {
      goto LABEL_25;
    }

    v29 = v32;
    sub_25150A730(v14, v32, type metadata accessor for ProtoTextProps);
    v15 = v46;
    v22 = v47;
LABEL_10:
    v38 = *v22;
    v39 = *v19;
    if (v19[8] == 1)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          if (v38 != 1)
          {
            goto LABEL_26;
          }
        }

        else if (v38 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (v38)
      {
        goto LABEL_26;
      }
    }

    else if (v38 != v39)
    {
      goto LABEL_26;
    }

    v40 = *(v15 + 20);
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v41 = sub_25154D240();
    sub_251500F0C(v19, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    sub_251500F0C(v22, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    if (v41)
    {
      v27 += v44;
      v26 += v44;
      if (--v23)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  v35 = v43;
  sub_25150A6B0(v14, v43, v32, type metadata accessor for ProtoTextProps);
  if (v34(&v14[v31], 1, v50) != 1)
  {
    v36 = v45;
    sub_25150A7A0(&v14[v31], v45, type metadata accessor for ProtoTextProps);
    v37 = static ProtoTextProps.== infix(_:_:)(v35, v36);
    sub_251500F0C(v36, type metadata accessor for ProtoTextProps);
    sub_251500F0C(v35, type metadata accessor for ProtoTextProps);
    sub_25150A730(v14, v32, type metadata accessor for ProtoTextProps);
    v29 = v32;
    v15 = v46;
    v22 = v47;
    if ((v37 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  sub_251500F0C(v35, type metadata accessor for ProtoTextProps);
LABEL_25:
  sub_25150A40C(v14, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v22 = v47;
LABEL_26:
  sub_251500F0C(v19, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
  sub_251500F0C(v22, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
LABEL_27:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_25150521C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_25150A648(v21, v18, a4);
        sub_25150A648(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_251500F0C(v15, a6);
        sub_251500F0C(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_2515053BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = (&v49 - v11);
  sub_25150A808(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v54 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v57 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  v16 = *(*(v57 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v57);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = (&v49 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_29:
    v48 = 0;
    return v48 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v48 = 1;
    return v48 & 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v58 = a2 + v24;
  v26 = (v5 + 48);
  v27 = *(v20 + 72);
  v50 = v19;
  v51 = v27;
  v28 = &qword_27F43BFE8;
  v53 = &v49 - v21;
  while (1)
  {
    result = sub_25150A648(v25, v22, type metadata accessor for ProtoTableProps.ColumnHeader);
    if (!v23)
    {
      break;
    }

    v55 = v23;
    v56 = v25;
    v30 = v28;
    v31 = v26;
    v32 = v15;
    v33 = v22;
    v34 = v8;
    sub_25150A648(v58, v19, type metadata accessor for ProtoTableProps.ColumnHeader);
    v35 = v4;
    v36 = *(v57 + 24);
    v37 = *(v54 + 48);
    v38 = v33 + v36;
    v15 = v32;
    v26 = v31;
    v28 = v30;
    sub_25150A6B0(v38, v15, v30, type metadata accessor for ProtoLocalizedTextProps);
    v39 = v19 + v36;
    v4 = v35;
    sub_25150A6B0(v39, &v15[v37], v30, type metadata accessor for ProtoLocalizedTextProps);
    v40 = *v26;
    if ((*v26)(v15, 1, v35) == 1)
    {
      v41 = v40(&v15[v37], 1, v35);
      v8 = v34;
      v22 = v53;
      if (v41 != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v42 = v52;
      sub_25150A6B0(v15, v52, v30, type metadata accessor for ProtoLocalizedTextProps);
      if (v40(&v15[v37], 1, v35) == 1)
      {
        sub_251500F0C(v42, type metadata accessor for ProtoLocalizedTextProps);
        v19 = v50;
        v22 = v53;
LABEL_25:
        sub_25150A40C(v15, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        goto LABEL_28;
      }

      v8 = v34;
      sub_25150A7A0(&v15[v37], v34, type metadata accessor for ProtoLocalizedTextProps);
      v43 = *(v34 + 1);
      v44 = *v42 == *v34;
      v22 = v53;
      if ((!v44 || v42[1] != v43) && (sub_25154D520() & 1) == 0 || (v42[2] != *(v8 + 2) || v42[3] != *(v8 + 3)) && (sub_25154D520() & 1) == 0)
      {
        sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_27:
        sub_251500F0C(v42, type metadata accessor for ProtoLocalizedTextProps);
        sub_25150A730(v15, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        v19 = v50;
LABEL_28:
        sub_251500F0C(v19, type metadata accessor for ProtoTableProps.ColumnHeader);
        sub_251500F0C(v22, type metadata accessor for ProtoTableProps.ColumnHeader);
        goto LABEL_29;
      }

      v45 = *(v4 + 24);
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v46 = sub_25154D240();
      sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v46 & 1) == 0)
      {
        goto LABEL_27;
      }

      sub_251500F0C(v42, type metadata accessor for ProtoLocalizedTextProps);
      v19 = v50;
    }

    sub_25150A730(v15, v30, type metadata accessor for ProtoLocalizedTextProps);
    if (*v22 != *v19)
    {
      goto LABEL_28;
    }

    v47 = *(v57 + 20);
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v48 = sub_25154D240();
    sub_251500F0C(v19, type metadata accessor for ProtoTableProps.ColumnHeader);
    sub_251500F0C(v22, type metadata accessor for ProtoTableProps.ColumnHeader);
    if (v48)
    {
      v23 = v55 - 1;
      v58 += v51;
      v25 = v56 + v51;
      if (v55 != 1)
      {
        continue;
      }
    }

    return v48 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251505A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v38 - v10);
  v12 = type metadata accessor for ProtoTableProps.Column(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_26:
    v37 = 0;
    return v37 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = 0;
  v41 = v16;
  v42 = a2 + v21;
  v43 = *(v17 + 72);
  v44 = v22;
  v39 = v12;
  v40 = &v38 - v18;
  v38 = v20;
  while (1)
  {
    v24 = v43 * v23;
    result = sub_25150A648(v44 + v43 * v23, v19, type metadata accessor for ProtoTableProps.Column);
    if (v23 == v20)
    {
      break;
    }

    v45 = v23;
    result = sub_25150A648(v42 + v24, v16, type metadata accessor for ProtoTableProps.Column);
    v26 = *v19;
    v27 = *v16;
    v28 = *(*v19 + 16);
    if (v28 != *(*v16 + 16))
    {
LABEL_25:
      sub_251500F0C(v41, type metadata accessor for ProtoTableProps.Column);
      sub_251500F0C(v40, type metadata accessor for ProtoTableProps.Column);
      goto LABEL_26;
    }

    if (v28 && v26 != v27)
    {
      v29 = 0;
      v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v31 = v26 + v30;
      v32 = v27 + v30;
      while (v29 < *(v26 + 16))
      {
        v33 = *(v47 + 72) * v29;
        result = sub_25150A648(v31 + v33, v11, type metadata accessor for ProtoLocalizedTextProps);
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_29;
        }

        sub_25150A648(v32 + v33, v9, type metadata accessor for ProtoLocalizedTextProps);
        if ((*v11 != *v9 || v11[1] != v9[1]) && (sub_25154D520() & 1) == 0 || (v11[2] != v9[2] || v11[3] != v9[3]) && (sub_25154D520() & 1) == 0)
        {
          sub_251500F0C(v9, type metadata accessor for ProtoLocalizedTextProps);
          sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
          goto LABEL_25;
        }

        v34 = *(v46 + 24);
        sub_25154CFE0();
        sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
        v35 = sub_25154D240();
        sub_251500F0C(v9, type metadata accessor for ProtoLocalizedTextProps);
        result = sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }

        if (v28 == ++v29)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

LABEL_20:
    v36 = *(v39 + 20);
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v19 = v40;
    v16 = v41;
    v37 = sub_25154D240();
    sub_251500F0C(v16, type metadata accessor for ProtoTableProps.Column);
    sub_251500F0C(v19, type metadata accessor for ProtoTableProps.Column);
    if (v37)
    {
      v23 = v45 + 1;
      v20 = v38;
      if (v45 + 1 != v38)
      {
        continue;
      }
    }

    return v37 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251505F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_25150A648(v14, v11, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150A648(v15, v8, type metadata accessor for ProtoLocalizedTextProps);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v20 = sub_25154D240();
      sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
      sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_2515061B8(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v54);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  sub_25150A808(0, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v52 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = type metadata accessor for ProtoComponent(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = (&v45 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_59:
    v43 = 0;
    return v43 & 1;
  }

  if (v24 && a1 != a2)
  {
    v49 = v16;
    v50 = v15;
    v46 = v7;
    v47 = v11;
    v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v26 = a1 + v25;
    v27 = a2 + v25;
    v51 = (v4 + 48);
    v48 = *(v21 + 72);
    v28 = &qword_27F43C1D0;
    v29 = v50;
    while (1)
    {
      sub_25150A648(v26, v23, type metadata accessor for ProtoComponent);
      sub_25150A648(v27, v20, type metadata accessor for ProtoComponent);
      v30 = *v23 == *v20 && v23[1] == *(v20 + 1);
      if (!v30 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      v31 = v23[2];
      v32 = *(v20 + 2);
      if (v20[24] == 1)
      {
        if (v32 > 5)
        {
          if (v32 > 8)
          {
            if (v32 == 9)
            {
              if (v31 != 9)
              {
                break;
              }
            }

            else if (v32 == 10)
            {
              if (v31 != 10)
              {
                break;
              }
            }

            else if (v31 != 11)
            {
              break;
            }
          }

          else if (v32 == 6)
          {
            if (v31 != 6)
            {
              break;
            }
          }

          else if (v32 == 7)
          {
            if (v31 != 7)
            {
              break;
            }
          }

          else if (v31 != 8)
          {
            break;
          }
        }

        else if (v32 > 2)
        {
          if (v32 == 3)
          {
            if (v31 != 3)
            {
              break;
            }
          }

          else if (v32 == 4)
          {
            if (v31 != 4)
            {
              break;
            }
          }

          else if (v31 != 5)
          {
            break;
          }
        }

        else if (v32)
        {
          if (v32 == 1)
          {
            if (v31 != 1)
            {
              break;
            }
          }

          else if (v31 != 2)
          {
            break;
          }
        }

        else if (v31)
        {
          break;
        }
      }

      else if (v31 != v32)
      {
        break;
      }

      v53 = v26;
      v33 = *(v16 + 24);
      v34 = *(v52 + 48);
      sub_25150A6B0(v23 + v33, v29, v28, type metadata accessor for ProtoComponent.OneOf_Props);
      v35 = v28;
      v36 = v54;
      sub_25150A6B0(&v20[v33], v29 + v34, v35, type metadata accessor for ProtoComponent.OneOf_Props);
      v37 = *v51;
      if ((*v51)(v29, 1, v36) == 1)
      {
        if (v37(v29 + v34, 1, v54) != 1)
        {
          goto LABEL_57;
        }

        v28 = v35;
        sub_25150A730(v29, v35, type metadata accessor for ProtoComponent.OneOf_Props);
        v16 = v49;
        v38 = v53;
      }

      else
      {
        v39 = v47;
        sub_25150A6B0(v29, v47, v35, type metadata accessor for ProtoComponent.OneOf_Props);
        if (v37(v29 + v34, 1, v54) == 1)
        {
          sub_251500F0C(v39, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_57:
          sub_25150A40C(v29, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
          break;
        }

        v40 = v46;
        sub_25150A7A0(v29 + v34, v46, type metadata accessor for ProtoComponent.OneOf_Props);
        v41 = _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(v39, v40);
        sub_251500F0C(v40, type metadata accessor for ProtoComponent.OneOf_Props);
        sub_251500F0C(v39, type metadata accessor for ProtoComponent.OneOf_Props);
        sub_25150A730(v29, v35, type metadata accessor for ProtoComponent.OneOf_Props);
        v16 = v49;
        v28 = v35;
        v38 = v53;
        if ((v41 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v16 + 28);
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v43 = sub_25154D240();
      sub_251500F0C(v20, type metadata accessor for ProtoComponent);
      sub_251500F0C(v23, type metadata accessor for ProtoComponent);
      if (v43)
      {
        v27 += v48;
        v26 = v38 + v48;
        if (--v24)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_251500F0C(v20, type metadata accessor for ProtoComponent);
    sub_251500F0C(v23, type metadata accessor for ProtoComponent);
    goto LABEL_59;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_251506874(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for ProtoRichMedia();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - v12;
  sub_2514F808C(0, &qword_27F43C1B0, sub_25150A548, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = a1;
  v58 = (&v55 - v17);
  v60 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v56 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v62 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
    v33 = (*(v57 + 48) + 16 * v27);
    v35 = *v33;
    v34 = v33[1];
    v36 = v59;
    sub_25150A648(*(v57 + 56) + *(v4 + 72) * v27, v59, type metadata accessor for ProtoRichMedia);
    sub_25150A548();
    v38 = v37;
    v39 = *(v37 + 48);
    v40 = v60;
    *v60 = v35;
    v40[1] = v34;
    v41 = v36;
    v30 = v40;
    sub_25150A7A0(v41, v40 + v39, type metadata accessor for ProtoRichMedia);
    (*(*(v38 - 8) + 56))(v30, 0, 1, v38);

LABEL_19:
    v42 = v30;
    v43 = v58;
    sub_25150A5B4(v42, v58);
    sub_25150A548();
    v44 = (*(*(v38 - 8) + 48))(v43, 1, v38);
    v45 = v44 == 1;
    if (v44 == 1)
    {
      return v45;
    }

    v46 = *(v38 + 48);
    v47 = *v43;
    v48 = v43[1];
    sub_25150A7A0(v43 + v46, v11, type metadata accessor for ProtoRichMedia);
    v49 = sub_25154ADBC(v47, v48);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_43;
    }

    sub_25150A648(*(a2 + 56) + *(v4 + 72) * v49, v8, type metadata accessor for ProtoRichMedia);
    if ((*v8 != *v11 || v8[1] != *(v11 + 1)) && (sub_25154D520() & 1) == 0 || (v8[2] != *(v11 + 2) || v8[3] != *(v11 + 3)) && (sub_25154D520() & 1) == 0)
    {
LABEL_42:
      sub_251500F0C(v8, type metadata accessor for ProtoRichMedia);
LABEL_43:
      sub_251500F0C(v11, type metadata accessor for ProtoRichMedia);
      return 0;
    }

    v52 = v8[4];
    v53 = *(v11 + 4);
    if (v11[40] == 1)
    {
      if (v53 <= 1)
      {
        if (v53)
        {
          if (v52 != 1)
          {
            goto LABEL_42;
          }
        }

        else if (v52)
        {
          goto LABEL_42;
        }
      }

      else if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_42;
        }
      }

      else if (v53 == 3)
      {
        if (v52 != 3)
        {
          goto LABEL_42;
        }
      }

      else if (v52 != 4)
      {
        goto LABEL_42;
      }
    }

    else if (v52 != v53)
    {
      goto LABEL_42;
    }

    v25 = *(v61 + 28);
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v26 = sub_25154D240();
    sub_251500F0C(v8, type metadata accessor for ProtoRichMedia);
    result = sub_251500F0C(v11, type metadata accessor for ProtoRichMedia);
    v23 = v62;
    if ((v26 & 1) == 0)
    {
      return v45;
    }
  }

  if (v24 <= v19 + 1)
  {
    v28 = v19 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  v30 = v60;
  while (1)
  {
    v31 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v31 >= v24)
    {
      sub_25150A548();
      v38 = v54;
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v62 = 0;
      v19 = v29;
      goto LABEL_19;
    }

    v32 = *(v56 + 8 * v31);
    ++v19;
    if (v32)
    {
      v62 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v19 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251506E38(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25154ADBC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25154D520();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
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

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v144 = a1;
  v123 = type metadata accessor for ProtoArticle.TileProps(0);
  v122 = *(v123 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v119 = (&v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x277D83D88];
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v118 - v7;
  sub_25150A808(0, &qword_27F43C1E0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v121 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v124 = &v118 - v10;
  v11 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v128 = *(v11 - 8);
  v129 = v11;
  v12 = *(v128 + 64);
  MEMORY[0x28223BE20](v11);
  v120 = (&v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = (&v118 - v16);
  sub_25150A808(0, &qword_27F43C1E8, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v127 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v130 = &v118 - v19;
  v20 = type metadata accessor for ProtoArticle.Content(0);
  v134 = *(v20 - 8);
  v135 = v20;
  v21 = *(v134 + 64);
  MEMORY[0x28223BE20](v20);
  v126 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, v4);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = (&v118 - v25);
  sub_25150A808(0, &qword_27F43C1F0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v133 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v136 = &v118 - v28;
  v29 = type metadata accessor for ProtoArticle.Theme(0);
  v138 = *(v29 - 8);
  v139 = v29;
  v30 = *(v138 + 64);
  MEMORY[0x28223BE20](v29);
  v132 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, v4);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v137 = &v118 - v34;
  sub_25150A808(0, &qword_27F43C1F8, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v36 = v35;
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v140 = &v118 - v38;
  v39 = type metadata accessor for ProtoArticle.Metadata(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = (&v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, v4);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = (&v118 - v46);
  sub_25150A808(0, &qword_27F43C200, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v118 - v51;
  v141 = type metadata accessor for ProtoArticle(0);
  v53 = *(v141 + 20);
  v54 = *(v49 + 56);
  sub_25150A6B0(v144 + v53, v52, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v55 = v143 + v53;
  v56 = v143;
  sub_25150A6B0(v55, &v52[v54], &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v57 = *(v40 + 48);
  if (v57(v52, 1, v39) == 1)
  {
    if (v57(&v52[v54], 1, v39) == 1)
    {
      sub_25150A730(v52, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
      goto LABEL_8;
    }

LABEL_6:
    v58 = &qword_27F43C200;
    v59 = &qword_27F43BF90;
    v60 = type metadata accessor for ProtoArticle.Metadata;
    v61 = v52;
LABEL_44:
    sub_25150A40C(v61, v58, v59, v60);
    goto LABEL_45;
  }

  sub_25150A6B0(v52, v47, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if (v57(&v52[v54], 1, v39) == 1)
  {
    sub_251500F0C(v47, type metadata accessor for ProtoArticle.Metadata);
    goto LABEL_6;
  }

  sub_25150A7A0(&v52[v54], v43, type metadata accessor for ProtoArticle.Metadata);
  v62 = _s25HealthContentDaemonPlugin12ProtoArticleV8MetadataV2eeoiySbAE_AEtFZ_0(v47, v43);
  sub_251500F0C(v43, type metadata accessor for ProtoArticle.Metadata);
  sub_251500F0C(v47, type metadata accessor for ProtoArticle.Metadata);
  sub_25150A730(v52, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if ((v62 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_8:
  v63 = v140;
  v64 = v141;
  v65 = *(v141 + 24);
  v66 = *(v36 + 48);
  v67 = v144;
  sub_25150A6B0(v144 + v65, v140, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  sub_25150A6B0(v56 + v65, v63 + v66, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v68 = v139;
  v69 = *(v138 + 48);
  if (v69(v63, 1, v139) == 1)
  {
    v70 = v69(v63 + v66, 1, v68);
    v71 = v142;
    if (v70 == 1)
    {
      sub_25150A730(v63, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v72 = v137;
  sub_25150A6B0(v63, v137, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v73 = v69(v63 + v66, 1, v68);
  v71 = v142;
  if (v73 == 1)
  {
    sub_251500F0C(v72, type metadata accessor for ProtoArticle.Theme);
LABEL_13:
    v58 = &qword_27F43C1F8;
    v59 = &qword_27F43BF98;
    v60 = type metadata accessor for ProtoArticle.Theme;
    v61 = v63;
    goto LABEL_44;
  }

  v74 = v132;
  sub_25150A7A0(v63 + v66, v132, type metadata accessor for ProtoArticle.Theme);
  v75 = *(v68 + 20);
  v76 = *(v72 + v75);
  v77 = *(v74 + v75);
  if (v76 != v77)
  {
    v78 = *(v72 + v75);

    v79 = sub_251501A80(v76, v77);

    if (!v79)
    {
      sub_251500F0C(v74, type metadata accessor for ProtoArticle.Theme);
      sub_251500F0C(v72, type metadata accessor for ProtoArticle.Theme);
      v105 = &qword_27F43BF98;
      v106 = type metadata accessor for ProtoArticle.Theme;
      v107 = v63;
LABEL_49:
      sub_25150A730(v107, v105, v106);
      goto LABEL_45;
    }
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v80 = sub_25154D240();
  sub_251500F0C(v74, type metadata accessor for ProtoArticle.Theme);
  sub_251500F0C(v72, type metadata accessor for ProtoArticle.Theme);
  sub_25150A730(v63, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  if ((v80 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_17:
  v81 = v64[7];
  v82 = *(v133 + 48);
  v83 = v136;
  sub_25150A6B0(v67 + v81, v136, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v84 = v56 + v81;
  v85 = v83;
  sub_25150A6B0(v84, v83 + v82, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v86 = v135;
  v87 = *(v134 + 48);
  if (v87(v83, 1, v135) == 1)
  {
    if (v87(v83 + v82, 1, v86) == 1)
    {
      sub_25150A730(v83, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
      goto LABEL_20;
    }

LABEL_28:
    v58 = &qword_27F43C1F0;
    v59 = &qword_27F43BFA0;
    v101 = type metadata accessor for ProtoArticle.Content;
LABEL_43:
    v60 = v101;
    v61 = v85;
    goto LABEL_44;
  }

  v100 = v131;
  sub_25150A6B0(v85, v131, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if (v87(v85 + v82, 1, v86) == 1)
  {
    sub_251500F0C(v100, type metadata accessor for ProtoArticle.Content);
    goto LABEL_28;
  }

  v102 = v85 + v82;
  v103 = v126;
  sub_25150A7A0(v102, v126, type metadata accessor for ProtoArticle.Content);
  if ((sub_2515061B8(*v100, *v103) & 1) == 0)
  {
    sub_251500F0C(v103, type metadata accessor for ProtoArticle.Content);
    sub_251500F0C(v100, type metadata accessor for ProtoArticle.Content);
    v105 = &qword_27F43BFA0;
    v109 = type metadata accessor for ProtoArticle.Content;
LABEL_48:
    v106 = v109;
    v107 = v85;
    goto LABEL_49;
  }

  v104 = *(v86 + 20);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  LOBYTE(v104) = sub_25154D240();
  sub_251500F0C(v103, type metadata accessor for ProtoArticle.Content);
  sub_251500F0C(v100, type metadata accessor for ProtoArticle.Content);
  sub_25150A730(v85, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if ((v104 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  v88 = v64[8];
  v89 = *(v127 + 48);
  v90 = v130;
  sub_25150A6B0(v67 + v88, v130, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v91 = v56 + v88;
  v85 = v90;
  sub_25150A6B0(v91, v90 + v89, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v92 = v129;
  v93 = *(v128 + 48);
  if (v93(v90, 1, v129) != 1)
  {
    v108 = v125;
    sub_25150A6B0(v85, v125, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
    if (v93(v85 + v89, 1, v92) == 1)
    {
      sub_251500F0C(v108, type metadata accessor for ProtoArticle.MediaLibrary);
      goto LABEL_35;
    }

    v110 = v85 + v89;
    v111 = v120;
    sub_25150A7A0(v110, v120, type metadata accessor for ProtoArticle.MediaLibrary);
    if (sub_251506874(*v108, *v111))
    {
      v112 = *(v92 + 20);
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      LOBYTE(v112) = sub_25154D240();
      sub_251500F0C(v111, type metadata accessor for ProtoArticle.MediaLibrary);
      sub_251500F0C(v108, type metadata accessor for ProtoArticle.MediaLibrary);
      sub_25150A730(v85, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
      if ((v112 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_23;
    }

    sub_251500F0C(v111, type metadata accessor for ProtoArticle.MediaLibrary);
    sub_251500F0C(v108, type metadata accessor for ProtoArticle.MediaLibrary);
    v105 = &qword_27F43BFA8;
    v109 = type metadata accessor for ProtoArticle.MediaLibrary;
    goto LABEL_48;
  }

  if (v93(v90 + v89, 1, v92) != 1)
  {
LABEL_35:
    v58 = &qword_27F43C1E8;
    v59 = &qword_27F43BFA8;
    v101 = type metadata accessor for ProtoArticle.MediaLibrary;
    goto LABEL_43;
  }

  sub_25150A730(v90, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
LABEL_23:
  v94 = v64[9];
  v95 = *(v121 + 48);
  v96 = v124;
  sub_25150A6B0(v67 + v94, v124, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v97 = v56 + v94;
  v85 = v96;
  sub_25150A6B0(v97, v96 + v95, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v98 = *(v122 + 48);
  v99 = v123;
  if (v98(v96, 1, v123) == 1)
  {
    if (v98(v96 + v95, 1, v99) == 1)
    {
      sub_25150A730(v96, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
LABEL_51:
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      v113 = sub_25154D240();
      return v113 & 1;
    }

    goto LABEL_42;
  }

  sub_25150A6B0(v96, v71, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if (v98(v96 + v95, 1, v99) == 1)
  {
    sub_251500F0C(v71, type metadata accessor for ProtoArticle.TileProps);
LABEL_42:
    v58 = &qword_27F43C1E0;
    v59 = &qword_27F43BFB0;
    v101 = type metadata accessor for ProtoArticle.TileProps;
    goto LABEL_43;
  }

  v115 = v96 + v95;
  v116 = v119;
  sub_25150A7A0(v115, v119, type metadata accessor for ProtoArticle.TileProps);
  v117 = _s25HealthContentDaemonPlugin12ProtoArticleV9TilePropsV2eeoiySbAE_AEtFZ_0(v71, v116);
  sub_251500F0C(v116, type metadata accessor for ProtoArticle.TileProps);
  sub_251500F0C(v71, type metadata accessor for ProtoArticle.TileProps);
  sub_25150A730(v96, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if (v117)
  {
    goto LABEL_51;
  }

LABEL_45:
  v113 = 0;
  return v113 & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV9TilePropsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v63 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v65 = (&v62 - v10);
  MEMORY[0x28223BE20](v9);
  v68 = (&v62 - v11);
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v67 = (&v62 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = (&v62 - v18);
  sub_25150A808(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v66 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v62 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - v27;
  v29 = type metadata accessor for ProtoArticle.TileProps(0);
  v72 = v21;
  v73 = v29;
  v30 = *(v29 + 24);
  v31 = *(v21 + 48);
  v70 = a1;
  sub_25150A6B0(a1 + v30, v28, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v71 = a2;
  sub_25150A6B0(a2 + v30, &v28[v31], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v32 = *(v5 + 48);
  if (v32(v28, 1, v4) == 1)
  {
    if (v32(&v28[v31], 1, v4) == 1)
    {
      sub_25150A730(v28, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_18;
    }

LABEL_6:
    v33 = v28;
LABEL_38:
    sub_25150A40C(v33, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_39;
  }

  sub_25150A6B0(v28, v19, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32(&v28[v31], 1, v4) == 1)
  {
    sub_251500F0C(v19, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v34 = v68;
  sub_25150A7A0(&v28[v31], v68, type metadata accessor for ProtoLocalizedTextProps);
  v35 = *v19 == *v34 && v19[1] == v34[1];
  if (!v35 && (sub_25154D520() & 1) == 0 || (v19[2] == v34[2] ? (v36 = v19[3] == v34[3]) : (v36 = 0), !v36 && (sub_25154D520() & 1) == 0))
  {
    sub_251500F0C(v34, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v19, type metadata accessor for ProtoLocalizedTextProps);
    v45 = v28;
    goto LABEL_54;
  }

  v37 = *(v4 + 24);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v38 = sub_25154D240();
  sub_251500F0C(v34, type metadata accessor for ProtoLocalizedTextProps);
  sub_251500F0C(v19, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A730(v28, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v38 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v39 = v73[7];
  v40 = *(v72 + 48);
  v42 = v69;
  v41 = v70;
  sub_25150A6B0(v70 + v39, v69, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v43 = v71;
  sub_25150A6B0(v71 + v39, v42 + v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32(v42, 1, v4) == 1)
  {
    if (v32((v42 + v40), 1, v4) == 1)
    {
      sub_25150A730(v42, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v44 = v67;
  sub_25150A6B0(v42, v67, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32((v42 + v40), 1, v4) == 1)
  {
    sub_251500F0C(v44, type metadata accessor for ProtoLocalizedTextProps);
LABEL_23:
    v33 = v42;
    goto LABEL_38;
  }

  v46 = v65;
  sub_25150A7A0(v42 + v40, v65, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v44 != *v46 || v44[1] != v46[1]) && (sub_25154D520() & 1) == 0 || (v44[2] != v46[2] || v44[3] != v46[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_251500F0C(v46, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v44, type metadata accessor for ProtoLocalizedTextProps);
    v45 = v42;
    goto LABEL_54;
  }

  v47 = v44;
  v48 = *(v4 + 24);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  v49 = sub_25154D240();
  sub_251500F0C(v46, type metadata accessor for ProtoLocalizedTextProps);
  sub_251500F0C(v47, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A730(v42, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v49 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v50 = v73[8];
  v51 = *(v72 + 48);
  v52 = v66;
  sub_25150A6B0(v41 + v50, v66, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v53 = v43 + v50;
  v54 = v52;
  sub_25150A6B0(v53, v52 + v51, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32(v52, 1, v4) != 1)
  {
    v55 = v52;
    v56 = v64;
    sub_25150A6B0(v55, v64, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v32((v54 + v51), 1, v4) == 1)
    {
      sub_251500F0C(v56, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_37;
    }

    v59 = v63;
    sub_25150A7A0(v54 + v51, v63, type metadata accessor for ProtoLocalizedTextProps);
    if (*v56 == *v59 && v56[1] == v59[1] || (sub_25154D520()) && (v56[2] == v59[2] && v56[3] == v59[3] || (sub_25154D520()))
    {
      v60 = *(v4 + 24);
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
      LOBYTE(v60) = sub_25154D240();
      sub_251500F0C(v59, type metadata accessor for ProtoLocalizedTextProps);
      sub_251500F0C(v56, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150A730(v54, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v60 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_49;
    }

    sub_251500F0C(v59, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v56, type metadata accessor for ProtoLocalizedTextProps);
    v45 = v54;
LABEL_54:
    sub_25150A730(v45, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_39;
  }

  if (v32((v52 + v51), 1, v4) != 1)
  {
LABEL_37:
    v33 = v54;
    goto LABEL_38;
  }

  sub_25150A730(v52, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
  if (*v41 == *v43 && v41[1] == v43[1] || (sub_25154D520() & 1) != 0)
  {
    v61 = v73[5];
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
    v57 = sub_25154D240();
    return v57 & 1;
  }

LABEL_39:
  v57 = 0;
  return v57 & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV8MetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25154D520() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ProtoArticle.Metadata(0) + 32);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV5ThemeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_251501A80(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

unint64_t sub_251508FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25150A8EC(0, &unk_2813D8360, sub_2514F6B28, MEMORY[0x277D84460]);
    v3 = sub_25154D4E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25150A37C(v4, &v13, &qword_2813D83B0, sub_2514F6B28);
      v5 = v13;
      v6 = v14;
      result = sub_25154ADBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25150A3F4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251509128(uint64_t a1)
{
  sub_25150A880(0, &qword_27F43C208, type metadata accessor for ProtoRichMedia);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_25150A8EC(0, &qword_27F43C210, type metadata accessor for ProtoRichMedia, MEMORY[0x277D84460]);
    v9 = sub_25154D4E0();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_25150A37C(v11, v7, &qword_27F43C208, type metadata accessor for ProtoRichMedia);
      v13 = *v7;
      v14 = v7[1];
      result = sub_25154ADBC(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for ProtoRichMedia();
      result = sub_25150A7A0(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for ProtoRichMedia);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_251509398(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2515093D0(uint64_t a1, uint64_t a2)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25150949C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251509BCC()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_2514F808C(319, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2514F808C(319, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2514F808C(319, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2514F808C(319, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2514F808C(319, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_251509DC8()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251509EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_25154CFE0();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251509F74()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ProtoArticle.Theme._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_50Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_51Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25150A1E0()
{
  sub_25154CFE0();
  if (v0 <= 0x3F)
  {
    sub_2514F808C(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25150A2B4()
{
  sub_2514F808C(319, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25150A37C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25150A880(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25150A3F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25150A40C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25150A808(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
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

void sub_25150A4CC()
{
  if (!qword_27F43C1A0)
  {
    sub_25150A880(255, &qword_27F43C1A8, MEMORY[0x277D21890]);
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43C1A0);
    }
  }
}

void sub_25150A548()
{
  if (!qword_27F43C1B8)
  {
    type metadata accessor for ProtoRichMedia();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43C1B8);
    }
  }
}

uint64_t sub_25150A5B4(uint64_t a1, uint64_t a2)
{
  sub_2514F808C(0, &qword_27F43C1B0, sub_25150A548, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25150A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25150A6B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2514F808C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25150A730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2514F808C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25150A7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25150A808(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2514F808C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25150A880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25150A8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProtoRichMedia.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProtoRichMedia.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoRichMedia.url.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProtoRichMedia.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void ProtoRichMedia.mediaType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ProtoRichMedia.mediaType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t ProtoRichMedia.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoRichMedia() + 28);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoRichMedia()
{
  result = qword_27F43C288;
  if (!qword_27F43C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoRichMedia.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoRichMedia() + 28);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ProtoRichMedia.MediaType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150ACDC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150B25C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25150AD94()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t ProtoRichMedia.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = a1 + *(type metadata accessor for ProtoRichMedia() + 28);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150AE64()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C218);
  __swift_project_value_buffer(v0, qword_27F43C218);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "url";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "mediaType";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoRichMedia.decodeMessage<A>(decoder:)()
{
  result = sub_25154D030();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_25150B25C();
        sub_25154D070();
      }

      else if (result == 2 || result == 1)
      {
        sub_25154D0B0();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoRichMedia.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_25154D160(), !v1))
    {
      if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), sub_25150B25C(), result = sub_25154D130(), !v1))
      {
        v8 = v0 + *(type metadata accessor for ProtoRichMedia() + 28);
        return sub_25154CFC0();
      }
    }
  }

  return result;
}

unint64_t sub_25150B25C()
{
  result = qword_27F43C248;
  if (!qword_27F43C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C248);
  }

  return result;
}

uint64_t ProtoRichMedia.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoRichMedia();
  sub_25150BE60(&qword_27F43C028, type metadata accessor for ProtoRichMedia);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150B33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150B390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25150B404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_25150B478(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_25150B4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150BE60(&qword_27F43C298, type metadata accessor for ProtoRichMedia);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150B56C(uint64_t a1)
{
  v2 = sub_25150BE60(&qword_27F43C020, type metadata accessor for ProtoRichMedia);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150B5D8()
{
  sub_25150BE60(&qword_27F43C020, type metadata accessor for ProtoRichMedia);

  return sub_25154D100();
}

uint64_t sub_25150B658()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C230);
  __swift_project_value_buffer(v0, qword_27F43C230);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
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
  *v11 = "animation";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "motion";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "image";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "video";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t _s25HealthContentDaemonPlugin14ProtoRichMediaV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_18:
      v8 = *(type metadata accessor for ProtoRichMedia() + 28);
      sub_25154CFE0();
      sub_25150BE60(&qword_27F43C008, MEMORY[0x277D216C8]);
      return sub_25154D240() & 1;
    }

    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_25150BA64()
{
  result = qword_27F43C250;
  if (!qword_27F43C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C250);
  }

  return result;
}

unint64_t sub_25150BABC()
{
  result = qword_27F43C258;
  if (!qword_27F43C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C258);
  }

  return result;
}

void sub_25150BB58()
{
  if (!qword_27F43C268)
  {
    v0 = sub_25154D350();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43C268);
    }
  }
}

unint64_t sub_25150BBAC()
{
  result = qword_27F43C270;
  if (!qword_27F43C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C270);
  }

  return result;
}

uint64_t sub_25150BD48()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_25150BDF8()
{
  if (!qword_27F43C1A8)
  {
    sub_25154D190();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43C1A8);
    }
  }
}

uint64_t sub_25150BE60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProtoLocalizedTextProps.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for ProtoLocalizedTextProps() + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t type metadata accessor for ProtoLocalizedTextProps()
{
  result = qword_27F43C2D0;
  if (!qword_27F43C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoLocalizedTextProps.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProtoLocalizedTextProps.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoLocalizedTextProps.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProtoLocalizedTextProps.source.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoLocalizedTextProps.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoLocalizedTextProps() + 24);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoLocalizedTextProps.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoLocalizedTextProps() + 24);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25150C1A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C2A0);
  __swift_project_value_buffer(v0, qword_27F43C2A0);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "source";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t static ProtoLocalizedTextProps._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F43BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_25154D1C0();
  v3 = __swift_project_value_buffer(v2, qword_27F43C2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoLocalizedTextProps.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25154D030();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_25154D0B0();
    }
  }

  return result;
}

uint64_t ProtoLocalizedTextProps.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_25154D160(), !v1))
    {
      v8 = v0 + *(type metadata accessor for ProtoLocalizedTextProps() + 24);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t static ProtoLocalizedTextProps.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ProtoLocalizedTextProps() + 24);
  sub_25154CFE0();
  sub_25150CCD0(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t ProtoLocalizedTextProps.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoLocalizedTextProps();
  sub_25150CCD0(&qword_27F43C2B8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150C6A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25150C75C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_25150C7D0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_25150C824(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150CCD0(&qword_27F43C2E0, type metadata accessor for ProtoLocalizedTextProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150C8A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F43BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_25154D1C0();
  v3 = __swift_project_value_buffer(v2, qword_27F43C2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25150C948(uint64_t a1)
{
  v2 = sub_25150CCD0(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150C9B4()
{
  sub_25150CCD0(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps);

  return sub_25154D100();
}

uint64_t sub_25150CA30(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_25154CFE0();
  sub_25150CCD0(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t sub_25150CC54()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25150CCD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProtoColorValue.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for ProtoColorValue();
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 32);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t type metadata accessor for ProtoColorValue()
{
  result = qword_27F43C398;
  if (!qword_27F43C398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ProtoFont.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150CDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E568();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t ProtoColorRole.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150CEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E514();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoColorValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoColorValue() + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoColorValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoColorValue() + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25150D0EC()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C2E8);
  __swift_project_value_buffer(v0, qword_27F43C2E8);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25154F460;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "fontUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "extraLargeTitle";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "largeTitle";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "title1";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "title2";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "title3";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "headline";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "body";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "callout";
  *(v23 + 8) = 7;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "subhead";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "footnote";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "caption1";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "caption2";
  *(v31 + 1) = 8;
  v31[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_25150D574()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C300);
  __swift_project_value_buffer(v0, qword_27F43C300);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25154F470;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 0;
  *v5 = "colorRoleUnspecified";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25154D190();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 1;
  *v9 = "selectedState";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "card";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "background";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "text";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "secondaryTint";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_25154D1A0();
}

uint64_t sub_25150D87C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C318);
  __swift_project_value_buffer(v0, qword_27F43C318);
  sub_25150A4CC();
  sub_25150BDF8();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "red";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "green";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "blue";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "alpha";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoColorValue.decodeMessage<A>(decoder:)()
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
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_25154D090();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoColorValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_25154D150(), !v1))
  {
    if (!v0[1] || (result = sub_25154D150(), !v1))
    {
      if (!v0[2] || (result = sub_25154D150(), !v1))
      {
        if (!v0[3] || (result = sub_25154D150(), !v1))
        {
          v3 = v0 + *(type metadata accessor for ProtoColorValue() + 32);
          return sub_25154CFC0();
        }
      }
    }
  }

  return result;
}

uint64_t ProtoColorValue.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoColorValue();
  sub_25150E32C(&qword_27F43C330, type metadata accessor for ProtoColorValue);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150DD00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 32);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150DD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E32C(&qword_27F43C3A8, type metadata accessor for ProtoColorValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150DE14(uint64_t a1)
{
  v2 = sub_25150E32C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150DE80()
{
  sub_25150E32C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue);

  return sub_25154D100();
}

uint64_t _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ProtoColorValue() + 32);
  sub_25154CFE0();
  sub_25150E32C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

unint64_t sub_25150DFDC()
{
  result = qword_27F43C338;
  if (!qword_27F43C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C338);
  }

  return result;
}

unint64_t sub_25150E034()
{
  result = qword_27F43C340;
  if (!qword_27F43C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C340);
  }

  return result;
}

uint64_t sub_25150E0B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_25150E240(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25150E10C()
{
  result = qword_27F43C358;
  if (!qword_27F43C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C358);
  }

  return result;
}

unint64_t sub_25150E164()
{
  result = qword_27F43C360;
  if (!qword_27F43C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C360);
  }

  return result;
}

unint64_t sub_25150E1BC()
{
  result = qword_27F43C368;
  if (!qword_27F43C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C368);
  }

  return result;
}

void sub_25150E240(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25154D350();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_25150E290()
{
  result = qword_27F43C380;
  if (!qword_27F43C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C380);
  }

  return result;
}

uint64_t sub_25150E32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25150E494()
{
  result = sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25150E514()
{
  result = qword_27F43C3B0;
  if (!qword_27F43C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C3B0);
  }

  return result;
}

unint64_t sub_25150E568()
{
  result = qword_27F43C3B8;
  if (!qword_27F43C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C3B8);
  }

  return result;
}

uint64_t ProtoComponent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProtoComponent.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void ProtoComponent.role.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ProtoComponent.role.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t ProtoComponent.props.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProtoComponent(0) + 24);

  return sub_25150E790(a1, v3);
}

uint64_t sub_25150E790(uint64_t a1, uint64_t a2)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProtoComponent.emptyProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoEmptyProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150EA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoEmptyProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.emptyProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoEmptyProps(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_25150F55C(v9, v12, type metadata accessor for ProtoEmptyProps);
      return sub_25150EE28;
    }

    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  return sub_25150EE28;
}

uint64_t sub_25150EE6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ProtoComponent.mainHeaderProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoMainHeaderProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = type metadata accessor for ProtoMainHeaderProps(0);
  v11 = a1 + v10[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = v10[7];
  v13 = type metadata accessor for ProtoTextProps(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[8];
  v15 = type metadata accessor for ProtoImageProps(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = v10[9];
  v17 = type metadata accessor for ProtoLocalizedTextProps();
  v18 = *(*(v17 - 8) + 56);
  v18(a1 + v16, 1, 1, v17);
  return (v18)(a1 + v10[10], 1, 1, v17);
}

uint64_t sub_25150F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v17 - v12;
  sub_251541FF0(a1, &v17 - v12, a6);
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541E9C(a2 + v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(v13, a2 + v14, a7);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2 + v14, 0, 1, v15);
}

uint64_t sub_25150F2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541E9C(v2 + v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(a1, v2 + v5, a2);
  v6 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

uint64_t ProtoMainHeaderProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for ProtoMainHeaderProps(0);
  v3 = a1 + v2[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[7];
  v5 = type metadata accessor for ProtoTextProps(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for ProtoImageProps(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[9];
  v9 = type metadata accessor for ProtoLocalizedTextProps();
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a1 + v8, 1, 1, v9);
  v10 = a1 + v2[10];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_25150F55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*ProtoComponent.mainHeaderProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoMainHeaderProps(0);
  v11 = *(*(v10 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    v17 = v13 + v10[6];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v10[7];
    v19 = type metadata accessor for ProtoTextProps(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v10[8];
    v21 = type metadata accessor for ProtoImageProps(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    v22 = v10[9];
    v23 = type metadata accessor for ProtoLocalizedTextProps();
    v24 = *(*(v23 - 8) + 56);
    v24(v13 + v22, 1, 1, v23);
    v24(v13 + v10[10], 1, 1, v23);
    return sub_25150F930;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoMainHeaderProps);
  return sub_25150F930;
}

uint64_t ProtoComponent.fullMainHeaderProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v17 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoFullMainHeaderProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v10 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v11 = a1 + v10[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = v10[7];
  v13 = type metadata accessor for ProtoLocalizedTextProps();
  v14 = *(*(v13 - 8) + 56);
  v14(a1 + v12, 1, 1, v13);
  v14(a1 + v10[8], 1, 1, v13);
  v15 = v10[9];
  v16 = type metadata accessor for ProtoImageProps(0);
  return (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
}

uint64_t ProtoFullMainHeaderProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v3 = a1 + v2[6];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[7];
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v2[8], 1, 1, v5);
  v7 = v2[9];
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

void (*ProtoComponent.fullMainHeaderProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v11 = *(*(v10 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = MEMORY[0x277D84F90];
    v17 = v13 + v10[6];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v10[7];
    v19 = type metadata accessor for ProtoLocalizedTextProps();
    v20 = *(*(v19 - 8) + 56);
    v20(v13 + v18, 1, 1, v19);
    v20(v13 + v10[8], 1, 1, v19);
    v21 = v10[9];
    v22 = type metadata accessor for ProtoImageProps(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    return sub_251510060;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoFullMainHeaderProps);
  return sub_251510060;
}

uint64_t ProtoComponent.imageProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoImageProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = type metadata accessor for ProtoImageProps(0);
  v11 = a1 + *(v10 + 24);
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = a1 + *(v10 + 28);
  *v12 = 0;
  *(v12 + 8) = 256;
  return result;
}

uint64_t ProtoImageProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for ProtoImageProps(0);
  v3 = a1 + *(v2 + 24);
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a1 + *(v2 + 28);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

void (*ProtoComponent.imageProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    v17 = v13 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v13 + *(v10 + 28);
    *v18 = 0;
    *(v18 + 8) = 256;
    return sub_251510580;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoImageProps);
  return sub_251510580;
}

uint64_t ProtoComponent.videoProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoVideoProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for ProtoVideoProps(0) + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoVideoProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for ProtoVideoProps(0) + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.videoProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    v17 = v13 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251510A64;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoVideoProps);
  return sub_251510A64;
}

uint64_t ProtoComponent.swooshProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoSwooshProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoSwooshProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251510C58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoSwooshProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for ProtoSwooshProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.swooshProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoSwooshProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v17 = v13 + *(v10 + 20);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515110D4;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoSwooshProps);
  return sub_2515110D4;
}

uint64_t ProtoComponent.carouselProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoCarouselProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoCarouselProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515112C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoCarouselProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for ProtoCarouselProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515114B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.carouselProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoCarouselProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v17 = v13 + *(v10 + 20);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_25151178C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoCarouselProps);
  return sub_25151178C;
}

uint64_t ProtoComponent.textProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoTextProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = type metadata accessor for ProtoTextProps(0);
  v11 = a1 + *(v10 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = *(v10 + 32);
  v13 = type metadata accessor for ProtoLocalizedTextProps();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t ProtoTextProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for ProtoTextProps(0);
  v3 = a1 + *(v2 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(v2 + 32);
  v5 = type metadata accessor for ProtoLocalizedTextProps();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

void (*ProtoComponent.textProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    v17 = v13 + *(v10 + 28);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = *(v10 + 32);
    v19 = type metadata accessor for ProtoLocalizedTextProps();
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_251511D60;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoTextProps);
  return sub_251511D60;
}

uint64_t ProtoComponent.textListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoTextListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoTextListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251511F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoTextListProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for ProtoTextListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.textListProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextListProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v17 = v13 + *(v10 + 20);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515123D0;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoTextListProps);
  return sub_2515123D0;
}

uint64_t ProtoComponent.imageListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoImageListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoImageListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515125C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoImageListProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for ProtoImageListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.imageListProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageListProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v17 = v13 + *(v10 + 20);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251512A40;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoImageListProps);
  return sub_251512A40;
}

uint64_t ProtoComponent.videoListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoVideoListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for ProtoVideoListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251512C34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoVideoListProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(type metadata accessor for ProtoVideoListProps(0) + 20);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.videoListProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoVideoListProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = MEMORY[0x277D84F90];
    v17 = v13 + *(v10 + 20);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515130B0;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoVideoListProps);
  return sub_2515130B0;
}

uint64_t ProtoComponent.tableProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_25150F55C(v6, a1, type metadata accessor for ProtoTableProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  v11 = a1 + *(type metadata accessor for ProtoTableProps(0) + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515132A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v9 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_25150F55C(v7, a2, type metadata accessor for ProtoTableProps);
    }

    sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v11;
  v12 = a2 + *(type metadata accessor for ProtoTableProps(0) + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoTableProps.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for ProtoTableProps(0) + 24);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.tableProps.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTableProps(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    v17 = MEMORY[0x277D84F90];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = v17;
    v18 = v13 + *(v10 + 24);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251513748;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoTableProps);
  return sub_251513748;
}

void sub_25151378C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_251541FF0(v12, v11, a5);
    sub_251541E9C(v13 + v10, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_25150EE6C(v12, a6);
  }

  else
  {
    sub_251541E9C(v13 + v10, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t static ProtoEmptyProps.== infix(_:_:)()
{
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t static ProtoVideoProps.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for ProtoVideoProps(0) + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

uint64_t static ProtoTableProps.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2515053BC(*a1, *a2) & 1) == 0 || (sub_251505A74(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ProtoTableProps(0) + 24);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8]);
  return sub_25154D240() & 1;
}

unint64_t ProtoComponent.Role.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xC;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251513CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DAC8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for ProtoComponent(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoMainHeaderProps.titleText.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v7 + 28), v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a1, type metadata accessor for ProtoTextProps);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = a1 + *(v8 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v11 = *(v8 + 32);
  v12 = type metadata accessor for ProtoLocalizedTextProps();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_251513FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v8 + 28), v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v9 = type metadata accessor for ProtoTextProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoTextProps);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v11 = a2 + *(v9 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = *(v9 + 32);
  v13 = type metadata accessor for ProtoLocalizedTextProps();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_2515141E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoTextProps);
  v9 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.titleText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoTextProps);
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoMainHeaderProps.titleText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    v18 = v15 + *(v10 + 28);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v19 = *(v10 + 32);
    v20 = type metadata accessor for ProtoLocalizedTextProps();
    (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoTextProps);
  }

  return sub_251514690;
}

void sub_251514690(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoTextProps);
    sub_251541E9C(v9 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoTextProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoMainHeaderProps.image.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v7 + 32), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_251514A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v8 + 32), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_251514C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoImageProps);
  v9 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  sub_251541E9C(a2 + v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoMainHeaderProps.image.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
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

uint64_t ProtoMainHeaderProps.leadingText.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v7 + 36), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_2515152E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v8 + 36), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_251515478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.leadingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoMainHeaderProps.leadingText.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
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

uint64_t ProtoMainHeaderProps.trailingText.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v7 + 40), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_251515AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v8 + 40), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_251515C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.trailingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoMainHeaderProps.trailingText.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
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

BOOL ProtoMainHeaderProps.hasTrailingText.getter()
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v0 + *(v5 + 40), v4, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v6 = type metadata accessor for ProtoLocalizedTextProps();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_251541E9C(v4, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  return v7;
}

Swift::Void __swiftcall ProtoMainHeaderProps.clearTrailingText()()
{
  v1 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(v0 + v1, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v2 = type metadata accessor for ProtoLocalizedTextProps();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_251516330(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB64();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251516398(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DBB8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25151641C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.leadingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoFullMainHeaderProps.leadingText.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
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

BOOL sub_2515168C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_251541F0C(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_251541E9C(v12, a1, a2);
  return v15;
}

uint64_t sub_251516A24(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_251516AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.trailingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoFullMainHeaderProps.trailingText.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
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

BOOL sub_251516F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_251541F0C(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_251541E9C(v12, a1, a2);
  return v15;
}

uint64_t sub_2515170F0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoFullMainHeaderProps.backgroundImage.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(v1 + *(v7 + 36), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_25151734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v8 + 36), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_251517500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoImageProps);
  v9 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  sub_251541E9C(a2 + v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.backgroundImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoFullMainHeaderProps.backgroundImage.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
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

BOOL sub_2515179C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_251541F0C(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_251541E9C(v12, a1, a2);
  return v15;
}

uint64_t sub_251517B24(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoFullMainHeaderProps.textItems.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_251517C3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251517CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251517DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DC0C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.textProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(v1 + *(v7 + 24), v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a1, type metadata accessor for ProtoTextProps);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = a1 + *(v8 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v11 = *(v8 + 32);
  v12 = type metadata accessor for ProtoLocalizedTextProps();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_251517FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(a1 + *(v8 + 24), v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v9 = type metadata accessor for ProtoTextProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoTextProps);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v11 = a2 + *(v9 + 28);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = *(v9 + 32);
  v13 = type metadata accessor for ProtoLocalizedTextProps();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_2515181DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoTextProps);
  v9 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.textProps.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoTextProps);
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoFullMainHeaderProps.TextItem.textProps.modify(void *a1))(uint64_t **, char)
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
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    v18 = v15 + *(v10 + 28);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v19 = *(v10 + 32);
    v20 = type metadata accessor for ProtoLocalizedTextProps();
    (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoTextProps);
  }

  return sub_251542174;
}

uint64_t sub_2515187D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DC60();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  v3 = a1 + *(v2 + 20);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for ProtoTextProps(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t ProtoImageProps.imageBackgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ProtoImageProps(0);
  v4 = (v1 + *(result + 28));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t ProtoImageProps.imageBackgroundColor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for ProtoImageProps(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*ProtoImageProps.imageBackgroundColor.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ProtoImageProps(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return sub_251518A0C;
}

uint64_t sub_251518A0C(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall ProtoImageProps.clearImageBackgroundColor()()
{
  v1 = v0 + *(type metadata accessor for ProtoImageProps(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 256;
}

unint64_t ProtoImageProps.Format.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251518B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DCB4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251518C88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251518D24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251518E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoImageProps);
  v9 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoSwooshProps.Tile.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoSwooshProps.Tile.image.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
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

  return sub_25151927C;
}

void sub_25151927C(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoImageProps);
    sub_251541E9C(v9 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoImageProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoImageProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoImageProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_251519444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_251541F0C(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_251541E9C(v12, a1, a2);
  return v15;
}

uint64_t sub_2515195A8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_25151968C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_251541F0C(v2 + *(v9 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_251519828@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_251541F0C(a1 + *(v10 + 28), v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_2515199C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoSwooshProps.Tile.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoSwooshProps.Tile.title.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
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

uint64_t ProtoSwooshProps.Tile.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoSwooshProps.Tile(0);
  v3 = a1 + v2[5];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for ProtoImageProps(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for ProtoLocalizedTextProps();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_25151A0BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = a1(0);
  sub_251541F0C(v2 + *(v9 + 24), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v10 = type metadata accessor for ProtoImageProps(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_25150F55C(v8, a2, type metadata accessor for ProtoImageProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v12 = a2 + *(v10 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v13 = a2 + *(v10 + 28);
  *v13 = 0;
  *(v13 + 8) = 256;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151A274@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = a2(0);
  sub_251541F0C(a1 + *(v10 + 24), v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v11 = type metadata accessor for ProtoImageProps(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_25150F55C(v9, a3, type metadata accessor for ProtoImageProps);
  }

  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v13 = a3 + *(v11 + 24);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v14 = a3 + *(v11 + 28);
  *v14 = 0;
  *(v14 + 8) = 256;
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151A430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoImageProps);
  v9 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  sub_251541E9C(a2 + v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoCarouselProps.Tile.image.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
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

uint64_t sub_25151A970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoCarouselProps.Tile.title.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
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

uint64_t sub_25151AE74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_251541F0C(v2 + *(v9 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151B010@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_251541F0C(a1 + *(v10 + 32), v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151B1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  sub_251541E9C(a2 + v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v8, a2 + v9, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoCarouselProps.Tile.description_p.modify(void *a1))()
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
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