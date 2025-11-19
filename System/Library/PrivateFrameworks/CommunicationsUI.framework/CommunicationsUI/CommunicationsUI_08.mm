uint64_t sub_1C2D460EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v6, v5, &qword_1EC0603A8);
  v7 = sub_1C2D47A98(v5, a1);
  sub_1C2C73644(v5, &qword_1EC0603A8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1C2D47DEC(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v1 + v6, &qword_1EC0603A8);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC0603A8);
}

uint64_t sub_1C2D46358(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v6, v5, &qword_1EC0603A8);
  v7 = sub_1C2D47A98(v5, a1);
  sub_1C2C73644(v5, &qword_1EC0603A8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1C2D47DEC(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v1 + v6, &qword_1EC0603A8);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC0603A8);
}

uint64_t sub_1C2D465C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1C2C736A4(a1, &v11 - v8, &qword_1EC0604A0);
  return sub_1C2D466B8(v9, a5);
}

uint64_t sub_1C2D466B8(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v2 + v8, v7, &qword_1EC0604A0);
  LOBYTE(a2) = sub_1C2D47424(v7, a1);
  sub_1C2C73644(v7, &qword_1EC0604A0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1C2D47DEC(&qword_1EC0604E0, type metadata accessor for ParticipantLabelViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v2 + v8, &qword_1EC0604A0);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC0604A0);
}

uint64_t ParticipantLabelViewModel.init(title:titleSymbol:subtitle:titleStyle:subtitleStyle:subtitleSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v34 = &v32 - v12;
  v13 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol;
  v14 = sub_1C2E72144();
  v15 = *(*(v14 - 8) + 56);
  v15(v6 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle;
  v17 = sub_1C2E71664();
  v18 = *(v17 - 8);
  v35 = v18;
  v19 = *(v18 + 56);
  v33 = v17;
  v19(v6 + v16, 1, 1, v17);
  v20 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  v21 = sub_1C2E72244();
  v22 = *(*(v21 - 8) + 56);
  v22(v6 + v20, 1, 1, v21);
  v22(v6 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, 1, 1, v21);
  v15(v6 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, 1, 1, v14);
  sub_1C2E71A94();
  (*(v18 + 16))(v6 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title, v43, v17);
  v23 = v37;
  v24 = v34;
  sub_1C2C736A4(v37, v34, &qword_1EC0604A0);
  sub_1C2D466B8(v24, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol);
  v25 = v39;
  v26 = v36;
  sub_1C2C736A4(v39, v36, &qword_1EC05E088);
  sub_1C2D45E80(v26);
  v27 = v40;
  v28 = v38;
  sub_1C2C736A4(v40, v38, &qword_1EC0603A8);
  sub_1C2D460EC(v28);
  v29 = v41;
  sub_1C2C736A4(v41, v28, &qword_1EC0603A8);
  sub_1C2D46358(v28);
  v30 = v42;
  sub_1C2C736A4(v42, v24, &qword_1EC0604A0);
  sub_1C2D466B8(v24, &OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol);
  sub_1C2C73644(v30, &qword_1EC0604A0);
  sub_1C2C73644(v29, &qword_1EC0603A8);
  sub_1C2C73644(v27, &qword_1EC0603A8);
  sub_1C2C73644(v25, &qword_1EC05E088);
  sub_1C2C73644(v23, &qword_1EC0604A0);
  (*(v35 + 8))(v43, v33);
  return v6;
}

uint64_t type metadata accessor for ParticipantLabelViewModel()
{
  result = qword_1EC0604E8;
  if (!qword_1EC0604E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ParticipantLabelViewModel.updateTitle(_:)(uint64_t a1)
{
  v2 = sub_1C2E71664();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1C2D457EC(v4);
}

uint64_t ParticipantLabelViewModel.updateSubtitle(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C736A4(a1, &v6 - v3, &qword_1EC05E088);
  return sub_1C2D45E80(v4);
}

uint64_t ParticipantLabelViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title;
  v2 = sub_1C2E71664();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol, &qword_1EC0604A0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle, &qword_1EC05E088);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle, &qword_1EC0603A8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, &qword_1EC0603A8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, &qword_1EC0604A0);
  v3 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel___observationRegistrar;
  v4 = sub_1C2E71AA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ParticipantLabelViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title;
  v2 = sub_1C2E71664();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol, &qword_1EC0604A0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle, &qword_1EC05E088);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle, &qword_1EC0603A8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, &qword_1EC0603A8);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, &qword_1EC0604A0);
  v3 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel___observationRegistrar;
  v4 = sub_1C2E71AA4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void sub_1C2D471B4()
{
  sub_1C2E71664();
  if (v0 <= 0x3F)
  {
    sub_1C2D473B4(319, &qword_1EC0604F8, MEMORY[0x1E6995E20]);
    if (v1 <= 0x3F)
    {
      sub_1C2D473B4(319, &qword_1EC060438, MEMORY[0x1E6968848]);
      if (v2 <= 0x3F)
      {
        sub_1C2D473B4(319, &qword_1EC060440, MEMORY[0x1E6995E88]);
        if (v3 <= 0x3F)
        {
          sub_1C2E71AA4();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C2D473B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2E76424();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C2D47424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E72144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060500);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1C2C736A4(a1, &v21 - v13, &qword_1EC0604A0);
  sub_1C2C736A4(a2, &v14[v15], &qword_1EC0604A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C736A4(v14, v10, &qword_1EC0604A0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C2D47DEC(&qword_1EC060508, MEMORY[0x1E6995E20]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v14, &qword_1EC0604A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC060500);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC0604A0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2D47778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060480);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1C2C736A4(a1, &v21 - v13, &qword_1EC05E088);
  sub_1C2C736A4(a2, &v14[v15], &qword_1EC05E088);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C736A4(v14, v10, &qword_1EC05E088);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C2D47DEC(&qword_1EC060488, MEMORY[0x1E6968848]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v14, &qword_1EC05E088);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC060480);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC05E088);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2D47A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E72244();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060490);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1C2C736A4(a1, &v21 - v13, &qword_1EC0603A8);
  sub_1C2C736A4(a2, &v14[v15], &qword_1EC0603A8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C736A4(v14, v10, &qword_1EC0603A8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C2D47DEC(&qword_1EC060498, MEMORY[0x1E6995E88]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v14, &qword_1EC0603A8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC060490);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC0603A8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2D47DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D47ED0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1C2D47F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C2D47F84@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E73C24();
  v24 = 1;
  sub_1C2D480F0(a1, a2, &v14);
  v31 = v20;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v34[6] = v20;
  v34[7] = v21;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v33 = v22;
  v35 = v22;
  v34[0] = v14;
  v34[1] = v15;
  sub_1C2C736A4(&v25, &v13, &qword_1EC060510);
  sub_1C2C73644(v34, &qword_1EC060510);
  *&v23[103] = v31;
  *&v23[87] = v30;
  *&v23[39] = v27;
  *&v23[23] = v26;
  *&v23[119] = v32;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[7] = v25;
  v7 = *&v23[64];
  *(a3 + 97) = *&v23[80];
  v8 = *&v23[112];
  *(a3 + 113) = *&v23[96];
  *(a3 + 129) = v8;
  v9 = *v23;
  *(a3 + 33) = *&v23[16];
  result = *&v23[32];
  v11 = *&v23[48];
  *(a3 + 49) = *&v23[32];
  *(a3 + 65) = v11;
  *(a3 + 81) = v7;
  v23[135] = v33;
  v12 = v24;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 145) = *&v23[128];
  *(a3 + 17) = v9;
  *(a3 + 153) = 0;
  return result;
}

uint64_t sub_1C2D480F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = sub_1C2E71934();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - v11;
  v39 = a1;
  MEMORY[0x1C6923240](v10);
  sub_1C2E718F4();
  v13 = MEMORY[0x1C6922CA0](v12, v9);
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v9, v5);
  v16(v12, v5);
  if (v15)
  {
    *&v52[0] = v13;
    *(&v52[0] + 1) = v15;
    sub_1C2C74960();
    v17 = sub_1C2E748A4();
    v19 = v18;
    v21 = v20;
    v37 = v22;
    v23 = [objc_opt_self() labelColor];
    sub_1C2E74E94();
    v24 = sub_1C2E74784();
    v15 = v25;
    v27 = v26;
    v29 = v28;

    sub_1C2C72340(v17, v19, v21 & 1);

    v30 = v27 & 1;
    sub_1C2C72330(v24, v15, v27 & 1);

    sub_1C2C72340(v24, v15, v27 & 1);

    sub_1C2C72330(v24, v15, v27 & 1);

    v31 = 1;
  }

  else
  {
    v24 = 0;
    v30 = 0;
    v29 = 0;
    v31 = 0;
  }

  sub_1C2D484A4(v38 & 1, &v41);
  v32 = [objc_opt_self() systemGray2Color];
  v33 = sub_1C2E74E94();
  v48 = v43;
  v49 = v44;
  v46 = v41;
  v47 = v42;
  *&v50 = v45;
  *(&v50 + 1) = v33;
  v51 = 0;
  sub_1C2C7DD04(v24, v15, v30, v29);
  sub_1C2C736A4(&v46, v52, &qword_1EC060518);
  sub_1C2C7F6D4(v24, v15, v30, v29);
  v40[87] = v51;
  *&v40[71] = v50;
  *&v40[55] = v49;
  *&v40[39] = v48;
  *&v40[23] = v47;
  *&v40[7] = v46;
  *a3 = v24;
  *(a3 + 8) = v15;
  *(a3 + 16) = v30;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = v31;
  v34 = *&v40[48];
  *(a3 + 73) = *&v40[32];
  *(a3 + 89) = v34;
  *(a3 + 105) = *&v40[64];
  *(a3 + 121) = *&v40[80];
  v35 = *&v40[16];
  *(a3 + 41) = *v40;
  *(a3 + 57) = v35;
  v52[2] = v43;
  v52[3] = v44;
  v52[0] = v41;
  v52[1] = v42;
  v53 = v45;
  v54 = v33;
  v55 = 0;
  sub_1C2C73644(v52, &qword_1EC060518);
  return sub_1C2C7F6D4(v24, v15, v30, v29);
}

__n128 sub_1C2D484A4@<Q0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E75054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E72804();
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        sub_1C2E72824();
        v10 = v9;
        v11 = [objc_opt_self() systemGray2Color];
        v12 = sub_1C2E74E94();
        LOBYTE(v60) = 0;
        v54 = 1;
        *&v66 = v10;
        BYTE8(v66) = 0;
        v67.n128_u64[0] = v12;
        LOBYTE(v69) = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060528);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060570);
        sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
        sub_1C2D49048(&qword_1EC060568, &qword_1EC060570, &unk_1C2E84050, sub_1C2D490F8);
        sub_1C2E73F44();
        *v68 = v57;
        *&v68[16] = v58;
        v69 = v59;
        v66 = v55;
        v67 = v56;
        LOBYTE(v44) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060550);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060558);
        sub_1C2D48F64();
        sub_1C2D4914C();
        sub_1C2E73F44();
LABEL_10:

        goto LABEL_11;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
LABEL_8:
      sub_1C2E75044();
      (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
      v42 = sub_1C2E750C4();

      (*(v5 + 8))(v7, v4);
      sub_1C2E75744();
      sub_1C2E73274();
      v22 = v44;
      v23 = BYTE8(v44);
      v24 = v45.n128_u64[0];
      v25 = v45.n128_u8[8];
      v26 = v46;
      v27 = [objc_opt_self() systemGray2Color];
      v28 = sub_1C2E74E94();
      v53 = v23;
      v52 = v25;
      v43 = a2;
      v54 = 1;
      *&v66 = v42;
      *(&v66 + 1) = v22;
      v67.n128_u8[0] = v23;
      v67.n128_u64[1] = v24;
      v68[0] = v25;
      *&v68[8] = v26;
      *&v68[24] = v28;
      LOBYTE(v69) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060528);
      sub_1C2D48E30();
      sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
      sub_1C2E73F44();
      *v68 = v57;
      *&v68[16] = v58;
      LOBYTE(v69) = v59;
      v66 = v55;
      v67 = v56;
      LOBYTE(v60) = 1;
      HIBYTE(v69) = 1;
      a2 = v43;
      goto LABEL_9;
    }

LABEL_7:
    sub_1C2E75044();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v13 = sub_1C2E750C4();

    (*(v5 + 8))(v7, v4);
    sub_1C2E75744();
    sub_1C2E73274();
    v14 = v44;
    v15 = BYTE8(v44);
    v16 = v45.n128_u64[0];
    v17 = v45.n128_u8[8];
    v43 = a2;
    v19 = *(&v46 + 1);
    v18 = v46;
    v20 = [objc_opt_self() systemGray2Color];
    v21 = sub_1C2E74E94();
    v53 = v15;
    v52 = v17;
    v54 = 0;
    *&v66 = v13;
    *(&v66 + 1) = v14;
    v67.n128_u8[0] = v15;
    v67.n128_u64[1] = v16;
    v68[0] = v17;
    *&v68[8] = __PAIR128__(v19, v18);
    *&v68[24] = v21;
    LOBYTE(v69) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060570);
    sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
    sub_1C2D49048(&qword_1EC060568, &qword_1EC060570, &unk_1C2E84050, sub_1C2D490F8);
    a2 = v43;
    sub_1C2E73F44();
    *v68 = v57;
    *&v68[16] = v58;
    v69 = v59;
    v66 = v55;
    v67 = v56;
    LOBYTE(v60) = 0;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060558);
    sub_1C2D48F64();
    sub_1C2D4914C();
    sub_1C2E73F44();

    goto LABEL_10;
  }

  if (a1)
  {
    v32 = sub_1C2E75044();
    sub_1C2E75744();
    sub_1C2E73274();
    v33 = v60;
    v34 = v61;
    v35 = v62;
    v43 = a2;
    v36 = v63;
    v37 = v64;
    v38 = v65;
    v39 = [objc_opt_self() systemBlueColor];
    v40 = sub_1C2E74E94();
    LOBYTE(v66) = v34;
    LOBYTE(v48[0]) = v36;
    v45.n128_u8[0] = v34;
    LOBYTE(v46) = v36;
    a2 = v43;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v45.n128_u64[0] = 0;
    *&v46 = 0;
  }

  *&v44 = v32;
  *(&v44 + 1) = v33;
  v45.n128_u64[1] = v35;
  *(&v46 + 1) = v37;
  *&v47 = v38;
  *(&v47 + 1) = v40;
  v66 = v44;
  v67 = v45;
  *v68 = v46;
  *&v68[16] = v47;
  v53 = 0;
  LOBYTE(v69) = 0;
  sub_1C2C736A4(&v44, v48, &qword_1EC060520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060528);
  sub_1C2D48E30();
  sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
  sub_1C2E73F44();
  *v68 = v57;
  *&v68[16] = v58;
  LOBYTE(v69) = v59;
  v66 = v55;
  v67 = v56;
  v54 = 1;
  HIBYTE(v69) = 1;
  sub_1C2C736A4(&v55, v48, &qword_1EC060588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060558);
  sub_1C2D48F64();
  sub_1C2D4914C();
  sub_1C2E73F44();
  sub_1C2C73644(&v44, &qword_1EC060520);
  sub_1C2C73644(&v55, &qword_1EC060558);
  sub_1C2C73644(&v44, &qword_1EC060520);
LABEL_11:
  *v68 = v49;
  *&v68[16] = v50;
  v29 = v51;
  v69 = v51;
  v66 = v48[0];
  v67 = v48[1];
  v30 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v30;
  *(a2 + 64) = v29;
  result = v67;
  *a2 = v66;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1C2D48E30()
{
  result = qword_1EC060530;
  if (!qword_1EC060530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060520);
    sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060530);
  }

  return result;
}

unint64_t sub_1C2D48EE0()
{
  result = qword_1EC060540;
  if (!qword_1EC060540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060540);
  }

  return result;
}

unint64_t sub_1C2D48F64()
{
  result = qword_1EC060560;
  if (!qword_1EC060560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060550);
    sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
    sub_1C2D49048(&qword_1EC060568, &qword_1EC060570, &unk_1C2E84050, sub_1C2D490F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060560);
  }

  return result;
}

uint64_t sub_1C2D49048(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D490F8()
{
  result = qword_1EC060578;
  if (!qword_1EC060578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060578);
  }

  return result;
}

unint64_t sub_1C2D4914C()
{
  result = qword_1EC060580;
  if (!qword_1EC060580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060558);
    sub_1C2D48E30();
    sub_1C2D49048(&qword_1EC060538, &qword_1EC060528, &unk_1C2E84028, sub_1C2D48EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060580);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DownloadProgressView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1C2D49240()
{
  result = qword_1EC060590;
  if (!qword_1EC060590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060598);
    sub_1C2C94F38(&qword_1EC0605A0, &qword_1EC0605A8);
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060590);
  }

  return result;
}

uint64_t sub_1C2D49340@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E73134();
  v6 = v85;
  v43 = v87;
  v44 = v86;
  v7 = v88;
  v8 = v89;
  v41 = v89;
  v9 = v90;
  v10 = [objc_opt_self() secondarySystemFillColor];
  v45 = sub_1C2E74E94();
  KeyPath = swift_getKeyPath();
  v42 = KeyPath;
  v12 = COERCE_DOUBLE(sub_1C2E74374());
  if (v13)
  {
    v12 = 0.0;
  }

  v14 = fmax(v12, 0.1);
  sub_1C2E73134();
  v15 = sub_1C2E757A4();
  v38 = v15;
  v39 = sub_1C2E74374();
  v17 = v16 & 1;
  v84 = v16 & 1;
  sub_1C2E758F4();
  v19 = v18;
  v21 = v20;
  sub_1C2E75044();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v40 = sub_1C2E750C4();

  (*(v3 + 8))(v5, v2);
  sub_1C2E75744();
  sub_1C2E73274();
  v22 = v91;
  v23 = v92;
  v24 = v93;
  v25 = v94;
  *&v56 = v6;
  v26 = v43;
  v27 = v44;
  *(&v56 + 1) = __PAIR64__(v43, v44);
  *&v57 = v7;
  *(&v57 + 1) = v8;
  *&v58 = v9;
  *(&v58 + 1) = KeyPath;
  v59 = v45;
  *&v51[0] = v45;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  *&v60[0] = 0;
  *(v60 + 1) = v14;
  v60[1] = v53;
  v60[2] = v54;
  *&v61 = v55;
  *(&v61 + 1) = v15;
  v28 = v39;
  *&v62 = v39;
  BYTE8(v62) = v17;
  HIDWORD(v62) = *&v52[3];
  *(&v62 + 9) = *v52;
  *&v63 = 0xBFF921FB54442D18;
  *(&v63 + 1) = v19;
  v64 = v21;
  *(&v51[2] + 8) = v54;
  *(&v51[1] + 8) = v53;
  *(v51 + 8) = v60[0];
  *(&v51[6] + 1) = v21;
  *(&v51[5] + 8) = v63;
  *(&v51[4] + 8) = v62;
  *(&v51[3] + 8) = v61;
  v47 = v92;
  v46 = v94;
  v29 = v57;
  *a1 = v56;
  *(a1 + 16) = v29;
  v30 = v50;
  v31 = v51[0];
  v32 = v51[2];
  *(a1 + 64) = v51[1];
  *(a1 + 80) = v32;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  v33 = v51[3];
  v34 = v51[4];
  v35 = v51[6];
  *(a1 + 128) = v51[5];
  *(a1 + 144) = v35;
  *(a1 + 96) = v33;
  *(a1 + 112) = v34;
  *(a1 + 160) = v40;
  *(a1 + 168) = v22;
  *(a1 + 176) = v23;
  *(a1 + 184) = v24;
  *(a1 + 192) = v25;
  *(a1 + 200) = v95;
  sub_1C2C736A4(&v56, v65, &qword_1EC0605F8);
  sub_1C2C736A4(v60, v65, &qword_1EC060600);
  v65[0] = 0;
  *&v65[1] = v14;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v69 = v38;
  v70 = v28;
  v71 = v17;
  *v72 = *v52;
  *&v72[3] = *&v52[3];
  v73 = 0xBFF921FB54442D18;
  v74 = v19;
  v75 = v21;
  sub_1C2C73644(v65, &qword_1EC060600);
  v76 = v6;
  v77 = v27;
  v78 = v26;
  v79 = v7;
  v80 = v41;
  v81 = v9;
  v82 = v42;
  v83 = v45;
  return sub_1C2C73644(&v76, &qword_1EC0605F8);
}

double sub_1C2D497BC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75744();
  v4 = v3;
  sub_1C2D49340(&v13);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v27 = v13;
  v28 = v14;
  v41[10] = v23;
  v41[11] = v24;
  v41[12] = v25;
  v41[6] = v19;
  v41[7] = v20;
  v41[8] = v21;
  v41[9] = v22;
  v41[2] = v15;
  v41[3] = v16;
  v41[4] = v17;
  v41[5] = v18;
  v40 = v26;
  v42 = v26;
  v41[0] = v13;
  v41[1] = v14;
  sub_1C2C736A4(&v27, &v12, &qword_1EC0605F0);
  sub_1C2C73644(v41, &qword_1EC0605F0);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v38;
  *(a1 + 176) = v37;
  *(a1 + 192) = v5;
  *(a1 + 208) = v39;
  *(a1 + 224) = v40;
  v6 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v6;
  v7 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v7;
  v8 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v8;
  v9 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v9;
  result = *&v27;
  v11 = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_1C2D4990C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v26 = a3;
  v4 = sub_1C2E75054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605B0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605B8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  if (a2)
  {
    sub_1C2E75044();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v17 = sub_1C2E750C4();

    (*(v5 + 8))(v7, v4);
    sub_1C2E74514();
    sub_1C2E74584();
    v18 = sub_1C2E74604();

    KeyPath = swift_getKeyPath();
    sub_1C2E75744();
    sub_1C2E73274();
    *v9 = v17;
    *(v9 + 1) = KeyPath;
    *(v9 + 2) = v18;
    v20 = v29;
    *(v9 + 24) = v28;
    *(v9 + 40) = v20;
    *(v9 + 56) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605C0);
    sub_1C2D49D94();
    sub_1C2D49EF8();
    return sub_1C2E73F44();
  }

  else
  {
    BYTE8(v28) = 0;
    v27 = 0x3FF0000000000000;
    *&v28 = v24;
    sub_1C2C7E058();
    sub_1C2E731A4();
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0);
    sub_1C2D49EA4();
    sub_1C2E74904();
    (*(v11 + 8))(v13, v10);
    sub_1C2E75744();
    sub_1C2E73274();
    v22 = &v16[*(v14 + 36)];
    v23 = v29;
    *v22 = v28;
    *(v22 + 1) = v23;
    *(v22 + 2) = v30;
    sub_1C2C88A5C(v16, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605C0);
    sub_1C2D49D94();
    sub_1C2D49EF8();
    sub_1C2E73F44();
    return sub_1C2C88ACC(v16);
  }
}

unint64_t sub_1C2D49D94()
{
  result = qword_1EC0605C8;
  if (!qword_1EC0605C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0605B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1E0);
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0);
    sub_1C2D49EA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0605C8);
  }

  return result;
}

unint64_t sub_1C2D49EA4()
{
  result = qword_1EC0605D0;
  if (!qword_1EC0605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0605D0);
  }

  return result;
}

unint64_t sub_1C2D49EF8()
{
  result = qword_1EC0605D8;
  if (!qword_1EC0605D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0605C0);
    sub_1C2C76120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0605D8);
  }

  return result;
}

unint64_t sub_1C2D49F94()
{
  result = qword_1EC0605E0;
  if (!qword_1EC0605E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0605E8);
    sub_1C2D49D94();
    sub_1C2D49EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0605E0);
  }

  return result;
}

uint64_t sub_1C2D4A03C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1C2E764E4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6927010](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t CallTranslationLanguagePicker.init(current:possibleLocale:viewModel:useTranslationPicker:shouldShowCancelButton:languageSelected:wantsToDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v54 = a6;
  v53 = a5;
  v51 = a4;
  v49 = a1;
  v50 = a3;
  v48 = a2;
  v52 = a10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v46 - v14;
  v15 = sub_1C2E759E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v57) = 0;
  sub_1C2E75174();
  v19 = *(&v58 + 1);
  *a9 = v58;
  *(a9 + 8) = v19;
  LOBYTE(v57) = 0;
  sub_1C2E75174();
  v20 = *(&v58 + 1);
  *(a9 + 16) = v58;
  *(a9 + 24) = v20;
  v57 = 0;
  sub_1C2E75174();
  *(a9 + 32) = v58;
  v21 = type metadata accessor for CallTranslationLanguagePicker();
  v22 = v21[9];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  swift_storeEnumTagMultiPayload();
  v23 = v21[10];
  v57 = 0;
  sub_1C2E75174();
  *(a9 + v23) = v58;
  v24 = v21[11];
  v57 = 0;
  sub_1C2E75174();
  *(a9 + v24) = v58;
  v25 = a9 + v21[17];
  LOBYTE(v57) = 0;
  sub_1C2E75174();
  v26 = *(&v58 + 1);
  *v25 = v58;
  *(v25 + 8) = v26;
  v27 = (a9 + v21[18]);
  v57 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060618);
  sub_1C2E75174();
  v28 = *(&v58 + 1);
  *v27 = v58;
  v27[1] = v28;
  v29 = (a9 + v21[19]);
  sub_1C2E72F64();
  swift_allocObject();
  v30 = sub_1C2E72F54();
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E7F90], v15);
  v31 = sub_1C2E760A4();
  (*(v16 + 8))(v18, v15);
  sub_1C2E72F44();

  v57 = v30;
  v33 = v48;
  v32 = v49;
  sub_1C2E75174();
  v34 = *(&v58 + 1);
  *v29 = v58;
  v29[1] = v34;
  v35 = v21[12];
  v36 = sub_1C2E71934();
  v37 = *(v36 - 8);
  v38 = a9 + v35;
  v39 = v50;
  (*(v37 + 16))(v38, v32, v36);
  sub_1C2C736A4(v33, a9 + v21[13], &qword_1EC05DBF8);
  if (!v39)
  {
    v50 = sub_1C2E72704();
    v40 = v46;
    sub_1C2E718F4();
    v41 = *(v37 + 56);
    v41(v40, 0, 1, v36);
    v42 = v47;
    sub_1C2E718F4();
    v41(v42, 0, 1, v36);
    v39 = sub_1C2E726F4();
  }

  sub_1C2C73644(v33, &qword_1EC05DBF8);
  result = (*(v37 + 8))(v32, v36);
  *(a9 + v21[14]) = v39;
  *(a9 + v21[15]) = v51 & 1;
  *(a9 + v21[16]) = v53 & 1;
  v44 = v55;
  *(a9 + 48) = v54;
  *(a9 + 56) = v44;
  v45 = v52;
  *(a9 + 64) = v56;
  *(a9 + 72) = v45;
  return result;
}

uint64_t type metadata accessor for CallTranslationLanguagePicker()
{
  result = qword_1EC0606A0;
  if (!qword_1EC0606A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallTranslationLanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060620);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060628);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v66 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060630);
  MEMORY[0x1EEE9AC00](v87);
  v76 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060638);
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D190);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  sub_1C2D4B164(&v66 - v11);
  v85 = type metadata accessor for CallTranslationLanguagePicker();
  v13 = *(v85 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v89 = v1;
  sub_1C2D4D0EC(v1, &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2E75E34();
  v15 = sub_1C2E75E24();
  v16 = *(v13 + 80);
  v83 = ~v16;
  v17 = (v16 + 32) & ~v16;
  v73 = v14;
  v86 = v16;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_1C2D5C804(&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CallTranslationLanguagePicker);
  v20 = sub_1C2E75E74();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v66 - v23;
  sub_1C2E75E44();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v71 = sub_1C2E734B4();
    v72 = &v66;
    v70 = *(v71 - 8);
    MEMORY[0x1EEE9AC00](v71);
    v69 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_1C2E765C4();

    *&v90 = 0xD000000000000041;
    *(&v90 + 1) = 0x80000001C2E97060;
    v93 = 40;
    v26 = sub_1C2E76774();
    v68 = v9;
    MEMORY[0x1C6926710](v26);

    v67 = v12;
    v28 = MEMORY[0x1EEE9AC00](v27);
    (*(v21 + 16))(&v66 - v23, &v66 - v23, v20, v28);
    v29 = v20;
    v30 = v69;
    sub_1C2E734A4();
    (*(v21 + 8))(v24, v29);
    v31 = v84;
    (*(v10 + 32))(v84, v67, v68);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D198);
    v33 = (*(v70 + 32))(&v31[*(v32 + 36)], v30, v71);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D1A0);
    v31 = v84;
    v35 = &v84[*(v34 + 36)];
    v36 = sub_1C2E733B4();
    (*(v21 + 32))(&v35[*(v36 + 20)], v24, v20);
    *v35 = &unk_1C2E84278;
    *(v35 + 1) = v18;
    v33 = (*(v10 + 32))(v31, v12, v9);
  }

  v37 = v73;
  MEMORY[0x1EEE9AC00](v33);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = v38;
  v39 = v89;
  sub_1C2D4D0EC(v89, &v66 - v38);
  v40 = (v86 + 16) & v83;
  v41 = swift_allocObject();
  v83 = type metadata accessor for CallTranslationLanguagePicker;
  sub_1C2D5C804(&v66 - v38, v41 + v40, type metadata accessor for CallTranslationLanguagePicker);
  v42 = v76;
  (*(v74 + 32))(v76, v31, v75);
  v43 = (v42 + *(v87 + 36));
  *v43 = sub_1C2D4D22C;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  v44 = v39;
  v90 = *(v39 + *(v85 + 44));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  v45 = sub_1C2E75184();
  v46 = v93;
  *&v90 = v93;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C2D4D0EC(v44, &v66 - v38);
  v47 = swift_allocObject() + v40;
  v48 = &v66 - v38;
  v49 = v83;
  sub_1C2D5C804(v48, v47, v83);
  v74 = sub_1C2D4D440();
  v50 = sub_1C2D4D6FC();
  v51 = v87;
  sub_1C2E74DD4();

  sub_1C2D4D750(v46);
  sub_1C2C73644(v42, &qword_1EC060630);
  v52 = v89;
  v90 = *(v89 + *(v85 + 40));
  v53 = sub_1C2E75184();
  v54 = v93;
  MEMORY[0x1EEE9AC00](v53);
  v55 = (&v66 - v84);
  sub_1C2D4D0EC(v52, &v66 - v84);
  v56 = swift_allocObject();
  sub_1C2D5C804(v55, v56 + v40, v49);
  *&v90 = v51;
  *(&v90 + 1) = &type metadata for CallTranslationLanguagePicker.Selection;
  v91 = v74;
  v92 = v50;
  swift_getOpaqueTypeConformance2();
  v58 = v78;
  v57 = v79;
  v59 = v88;
  sub_1C2E74DD4();

  sub_1C2D4D750(v54);
  v60 = (*(v77 + 8))(v59, v58);
  MEMORY[0x1EEE9AC00](v60);
  v61 = (&v66 - v84);
  sub_1C2D4D0EC(v89, &v66 - v84);
  v62 = swift_allocObject();
  sub_1C2D5C804(v61, v62 + v40, v83);
  v63 = v82;
  (*(v80 + 32))(v82, v57, v81);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060698);
  v65 = (v63 + *(result + 36));
  *v65 = 0;
  v65[1] = 0;
  v65[2] = sub_1C2D4E148;
  v65[3] = v62;
  return result;
}

uint64_t sub_1C2D4B164@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060670);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060650);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  *v6 = sub_1C2E73DC4();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060700);
  sub_1C2D4F0C0(v2, &v6[*(v10 + 44)]);
  KeyPath = swift_getKeyPath();
  v12 = &v6[*(v4 + 44)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFC8) + 28);
  sub_1C2E75634();
  v14 = sub_1C2E756D4();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *v12 = KeyPath;
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v6, v9, &qword_1EC060670);
  v15 = &v9[*(v7 + 36)];
  v16 = v40;
  *(v15 + 4) = v39;
  *(v15 + 5) = v16;
  *(v15 + 6) = v41;
  v17 = v36;
  *v15 = v35;
  *(v15 + 1) = v17;
  v18 = v38;
  *(v15 + 2) = v37;
  *(v15 + 3) = v18;
  v33 = sub_1C2D53F24();
  v34 = v19;
  v20 = v2 + *(type metadata accessor for CallTranslationLanguagePicker() + 68);
  v21 = *v20;
  v22 = *(v20 + 8);
  v31 = v21;
  v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  sub_1C2E751A4();
  v25 = v24;
  v24[1] = v30;
  v29 = v2;
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060310);
  sub_1C2D5B854(&qword_1EC060660, &qword_1EC060650, &unk_1C2E84290, sub_1C2D4D618);
  sub_1C2C74960();
  sub_1C2C94F38(&qword_1EC060688, &qword_1EC060658);
  sub_1C2D40798();
  sub_1C2E74CF4();

  return sub_1C2C73644(v9, &qword_1EC060650);
}

uint64_t sub_1C2D4B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1C2E75E34();
  v3[3] = sub_1C2E75E24();
  v5 = sub_1C2E75DD4();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C2D4B620, v5, v4);
}

uint64_t sub_1C2D4B620()
{
  type metadata accessor for CallTranslationLanguagePicker();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C2D4B6C4;

  return MEMORY[0x1EEDF75E0]();
}

uint64_t sub_1C2D4B6C4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2D4B7E4, v3, v2);
}

uint64_t sub_1C2D4B7E4()
{

  sub_1C2D4B848();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2D4B848()
{
  v170 = sub_1C2E71934();
  v1 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v3 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v140 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v140 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v140 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v140 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v149 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v150 = &v140 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v157 = &v140 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v159 = &v140 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v172 = &v140 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v140 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v152 = &v140 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v158 = &v140 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v140 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v151 = &v140 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v140 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v140 - v46;
  v48 = type metadata accessor for CallTranslationLanguagePicker();
  v49 = *(v48 + 56);
  v171 = v0;
  v50 = *(v0 + v49);
  v165 = v48;
  v166 = v50;
  v51 = sub_1C2E72684();
  if (v51 >> 62)
  {
    goto LABEL_42;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v52 < 1)
  {
    return result;
  }

  v144 = v9;
  v145 = v6;
  v143 = v3;
  v54 = (v171 + v165[11]);
  v55 = *v54;
  v162 = v54[1];
  v163 = v55;
  v176 = v55;
  v177 = v162;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  sub_1C2E751A4();
  v57 = v173;
  v56 = v174;
  v58 = v175;
  sub_1C2E72694();
  sub_1C2C736A4(v47, v44, &qword_1EC05DBF8);
  v59 = v170;
  v168 = *(v1 + 48);
  v169 = v1 + 48;
  v60 = v168(v44, 1, v170);
  v164 = v1;
  if (v60 == 1)
  {

    sub_1C2D4D750(v58);
    sub_1C2C73644(v47, &qword_1EC05DBF8);
    v59 = v170;
    sub_1C2C73644(v44, &qword_1EC05DBF8);
    v44 = 0;
  }

  else
  {
    (*(v1 + 32))(v18, v44, v59);
    v173 = v57;
    v174 = v56;
    v175 = v58;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);
      sub_1C2C73644(v47, &qword_1EC05DBF8);

      sub_1C2D4D750(v58);
      (*(v1 + 8))(v18, v59);
      v44 = 0;
    }

    else
    {
      v161 = v61;
      v62 = sub_1C2E72684();
      MEMORY[0x1EEE9AC00](v62);
      *(&v140 - 32) = 1;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v18;
      *(&v140 - 8) = 0;
      v44 = 0;
      v63 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v62);

      if (v63)
      {
        v173 = v57;
        v174 = v56;
        v175 = v58;
        v176 = v63;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v58);
      sub_1C2C73644(v47, &qword_1EC05DBF8);
      v1 = v164;
      v59 = v170;
      v164[1](v18, v170);
    }
  }

  v176 = v163;
  v177 = v162;
  sub_1C2E751A4();
  v64 = v173;
  v65 = v174;
  v66 = v175;
  v67 = *(v1 + 16);
  v146 = v165[12];
  v68 = v151;
  v147 = v67;
  v67(v151, v171 + v146, v59);
  v160 = *(v1 + 56);
  v161 = v1 + 56;
  v160(v68, 0, 1, v59);
  sub_1C2C736A4(v68, v39, &qword_1EC05DBF8);
  if (v168(v39, 1, v59) == 1)
  {

    sub_1C2D4D750(v66);
    sub_1C2C73644(v68, &qword_1EC05DBF8);
    v59 = v170;
    sub_1C2C73644(v39, &qword_1EC05DBF8);
    v18 = v172;
    v69 = v154;
LABEL_19:
    v6 = v158;
    goto LABEL_20;
  }

  v142 = 0;
  v70 = v148;
  (*(v1 + 32))(v148, v39, v59);
  v173 = v64;
  v174 = v65;
  v175 = v66;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](&v176);
  if (!v176)
  {
    v140 = v71;
    v141 = v66;
    v72 = sub_1C2E72684();
    MEMORY[0x1EEE9AC00](v72);
    *(&v140 - 32) = 1;
    *(&v140 - 3) = v171;
    *(&v140 - 2) = v70;
    *(&v140 - 8) = 0;
    v44 = v142;
    v73 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v72);

    if (v73)
    {
      v173 = v64;
      v174 = v65;
      v74 = v141;
      v175 = v141;
      v176 = v73;
      sub_1C2E75394();

      v75 = v74;
    }

    else
    {

      v75 = v141;
    }

    sub_1C2D4D750(v75);
    sub_1C2C73644(v68, &qword_1EC05DBF8);
    v69 = v154;
    v59 = v170;
    v164[1](v148, v170);
    v18 = v172;
    goto LABEL_19;
  }

  sub_1C2D4D750(v176);
  sub_1C2C73644(v68, &qword_1EC05DBF8);

  sub_1C2D4D750(v66);
  (*(v1 + 8))(v70, v59);
  v18 = v172;
  v69 = v154;
  v6 = v158;
  v44 = v142;
LABEL_20:
  v176 = v163;
  v177 = v162;
  sub_1C2E751A4();
  v76 = v173;
  v77 = v174;
  v78 = v175;
  v147(v6, v171 + v146, v59);
  v160(v6, 0, 1, v59);
  v79 = v152;
  sub_1C2C736A4(v6, v152, &qword_1EC05DBF8);
  if (v168(v79, 1, v59) == 1)
  {

    sub_1C2D4D750(v78);
    sub_1C2C73644(v6, &qword_1EC05DBF8);
    sub_1C2C73644(v79, &qword_1EC05DBF8);
    v9 = v159;
  }

  else
  {
    v6 = v164;
    (v164[4])(v69, v79, v59);
    v173 = v76;
    v174 = v77;
    v175 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    v80 = v69;
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);
      sub_1C2C73644(v158, &qword_1EC05DBF8);

      sub_1C2D4D750(v78);
      (v6[1])(v69, v59);
      v9 = v159;
    }

    else
    {
      v81 = sub_1C2E72684();
      v6 = &v140;
      MEMORY[0x1EEE9AC00](v81);
      *(&v140 - 32) = 1;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v80;
      *(&v140 - 8) = 1;
      v82 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v81);

      if (v82)
      {
        v173 = v76;
        v174 = v77;
        v175 = v78;
        v176 = v82;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v78);
      sub_1C2C73644(v158, &qword_1EC05DBF8);
      v9 = v159;
      v164[1](v154, v170);
    }
  }

  v83 = sub_1C2E72684();
  v47 = v83;
  if (v83 >> 62)
  {
    v1 = sub_1C2E764E4();
    if (!v1)
    {
LABEL_44:

      v6 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v1 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_44;
    }
  }

  v84 = 0;
  v39 = (v47 & 0xC000000000000001);
  v3 = (v47 & 0xFFFFFFFFFFFFFF8);
  while (!v39)
  {
    if (v84 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_42:
      v52 = sub_1C2E764E4();
      goto LABEL_3;
    }

    v6 = *(v47 + 8 * v84 + 32);

    v85 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_39;
    }

LABEL_33:
    if (sub_1C2E72804() == 2)
    {
      goto LABEL_40;
    }

    ++v84;
    v86 = v85 == v1;
    v18 = v172;
    if (v86)
    {
      goto LABEL_44;
    }
  }

  v6 = MEMORY[0x1C6927010](v84, v47);
  v85 = v84 + 1;
  if (!__OFADD__(v84, 1))
  {
    goto LABEL_33;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  v18 = v172;
LABEL_45:
  v176 = v163;
  v177 = v162;
  sub_1C2E751A4();
  v87 = v174;
  v172 = v173;
  v88 = v175;
  v89 = v170;
  v90 = v157;
  if (v6)
  {

    v92 = v156;
    MEMORY[0x1C6923240](v91);

    v93 = 0;
    v94 = v153;
  }

  else
  {
    v93 = 1;
    v94 = v153;
    v92 = v156;
  }

  v160(v92, v93, 1, v89);
  sub_1C2C736A4(v92, v18, &qword_1EC05DBF8);
  if (v168(v18, 1, v89) == 1)
  {

    sub_1C2D4D750(v88);
    sub_1C2C73644(v92, &qword_1EC05DBF8);
    v89 = v170;
    sub_1C2C73644(v18, &qword_1EC05DBF8);
  }

  else
  {
    v95 = v18;
    v96 = v164;
    (v164[4])(v94, v95, v89);
    v173 = v172;
    v174 = v87;
    v175 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);
      sub_1C2C73644(v156, &qword_1EC05DBF8);

      sub_1C2D4D750(v88);
      v96[1](v94, v89);
      v90 = v157;
      v9 = v159;
    }

    else
    {
      v97 = sub_1C2E72684();
      MEMORY[0x1EEE9AC00](v97);
      *(&v140 - 32) = 0;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v94;
      *(&v140 - 8) = 0;
      v98 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v97);

      if (v98)
      {
        v173 = v172;
        v174 = v87;
        v175 = v88;
        v176 = v98;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v88);
      sub_1C2C73644(v156, &qword_1EC05DBF8);
      v90 = v157;
      v9 = v159;
      v89 = v170;
      v164[1](v153, v170);
    }
  }

  v99 = (v171 + v165[10]);
  v101 = *v99;
  v100 = v99[1];
  v172 = v101;
  v176 = v101;
  v177 = v100;
  v163 = v100;
  sub_1C2E751A4();
  v102 = v173;
  v103 = v174;
  v104 = v175;
  sub_1C2E72664();
  sub_1C2C736A4(v9, v90, &qword_1EC05DBF8);
  if (v168(v90, 1, v89) == 1)
  {

    sub_1C2D4D750(v104);
    sub_1C2C73644(v9, &qword_1EC05DBF8);
    v105 = v90;
    v106 = v170;
    sub_1C2C73644(v105, &qword_1EC05DBF8);
  }

  else
  {
    v107 = v164;
    v108 = v144;
    (v164[4])(v144, v90, v89);
    v173 = v102;
    v174 = v103;
    v175 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    v106 = v89;
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);
      sub_1C2C73644(v159, &qword_1EC05DBF8);

      sub_1C2D4D750(v104);
      v107[1](v108, v89);
    }

    else
    {
      v109 = sub_1C2E72684();
      MEMORY[0x1EEE9AC00](v109);
      *(&v140 - 32) = 0;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v108;
      *(&v140 - 8) = 0;
      v110 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v109);

      if (v110)
      {
        v173 = v102;
        v174 = v103;
        v175 = v104;
        v176 = v110;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v104);
      sub_1C2C73644(v159, &qword_1EC05DBF8);
      v106 = v170;
      v164[1](v144, v170);
    }
  }

  v176 = v172;
  v177 = v163;
  sub_1C2E751A4();
  v111 = v173;
  v112 = v174;
  v113 = v175;
  v114 = v150;
  sub_1C2C736A4(v171 + v165[13], v150, &qword_1EC05DBF8);
  if (v168(v114, 1, v106) == 1)
  {

    sub_1C2D4D750(v113);
    sub_1C2C73644(v114, &qword_1EC05DBF8);
  }

  else
  {
    v115 = v164;
    v116 = v145;
    (v164[4])(v145, v114, v106);
    v173 = v111;
    v174 = v112;
    v175 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);

      sub_1C2D4D750(v113);
      v115[1](v116, v106);
    }

    else
    {
      v117 = sub_1C2E72684();
      MEMORY[0x1EEE9AC00](v117);
      *(&v140 - 32) = 0;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v116;
      *(&v140 - 8) = 0;
      v118 = sub_1C2D4A03C(sub_1C2D5D064, (&v140 - 6), v117);

      if (v118)
      {
        v173 = v111;
        v174 = v112;
        v175 = v113;
        v176 = v118;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v113);
      v164[1](v145, v170);
    }
  }

  v119 = sub_1C2E72684();
  MEMORY[0x1EEE9AC00](v119);
  *(&v140 - 2) = v171;
  v121 = sub_1C2D5D0B0(sub_1C2D5B7B4, &v140 - 4, v120);
  v122 = v121;
  if (v121 >> 62)
  {
LABEL_83:
    v123 = sub_1C2E764E4();
    if (v123)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v123 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v123)
    {
LABEL_71:
      v124 = 0;
      do
      {
        if ((v122 & 0xC000000000000001) != 0)
        {
          v125 = MEMORY[0x1C6927010](v124, v122);
          v126 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
LABEL_80:
            __break(1u);
LABEL_81:

            goto LABEL_85;
          }
        }

        else
        {
          if (v124 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_83;
          }

          v125 = *(v122 + 8 * v124 + 32);

          v126 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
            goto LABEL_80;
          }
        }

        if (sub_1C2E72804() == 2)
        {
          goto LABEL_81;
        }

        ++v124;
      }

      while (v126 != v123);
    }
  }

  v125 = 0;
LABEL_85:
  v176 = v172;
  v177 = v163;
  sub_1C2E751A4();
  v127 = v173;
  v128 = v174;
  v129 = v175;
  v130 = v170;
  v131 = v155;
  v132 = v149;
  if (v125)
  {

    MEMORY[0x1C6923240](v133);

    v134 = 0;
  }

  else
  {
    v134 = 1;
  }

  v160(v131, v134, 1, v130);
  sub_1C2C736A4(v131, v132, &qword_1EC05DBF8);
  if (v168(v132, 1, v130) == 1)
  {

    sub_1C2D4D750(v129);
    sub_1C2C73644(v131, &qword_1EC05DBF8);
    return sub_1C2C73644(v132, &qword_1EC05DBF8);
  }

  else
  {
    v172 = v44;
    v135 = v129;
    v136 = v164;
    v137 = v143;
    (v164[4])(v143, v132, v130);
    v173 = v127;
    v174 = v128;
    v175 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    MEMORY[0x1C6925DB0](&v176);
    if (v176)
    {
      sub_1C2D4D750(v176);

      sub_1C2C73644(v155, &qword_1EC05DBF8);

      sub_1C2D4D750(v135);
      return (v136[1])(v137, v130);
    }

    else
    {
      v138 = sub_1C2E72684();
      MEMORY[0x1EEE9AC00](v138);
      *(&v140 - 32) = 0;
      *(&v140 - 3) = v171;
      *(&v140 - 2) = v137;
      *(&v140 - 8) = 0;
      v139 = sub_1C2D4A03C(sub_1C2D5B7D4, (&v140 - 6), v138);

      if (v139)
      {
        v173 = v127;
        v174 = v128;
        v175 = v135;
        v176 = v139;
        sub_1C2E75394();
      }

      sub_1C2D4D750(v135);
      sub_1C2C73644(v155, &qword_1EC05DBF8);
      return (v164[1])(v143, v170);
    }
  }
}

uint64_t sub_1C2D4D0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranslationLanguagePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D4D150()
{
  v2 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C2CC8E70;

  return sub_1C2D4B588(v4, v5, v0 + v3);
}

id sub_1C2D4D288(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = *a2;
  if (*a2 == 1)
  {
    return sub_1C2D4D760();
  }

  v11 = *a1;
  v19 = *(a3 + *(type metadata accessor for CallTranslationLanguagePicker() + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  sub_1C2E751A4();
  v12 = v18;
  v13 = sub_1C2D4DAC4(v11, v9, v17[1], v17[2], v18);

  v14 = sub_1C2D4D750(v12);
  if (v13)
  {
    MEMORY[0x1C6923240](v14);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1C2E71934();
  (*(*(v16 - 8) + 56))(v8, v15, 1, v16);
  return sub_1C2E726A4();
}

unint64_t sub_1C2D4D440()
{
  result = qword_1EC060648;
  if (!qword_1EC060648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310);
    sub_1C2D5B854(&qword_1EC060660, &qword_1EC060650, &unk_1C2E84290, sub_1C2D4D618);
    sub_1C2C74960();
    sub_1C2C94F38(&qword_1EC060688, &qword_1EC060658);
    sub_1C2D40798();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060648);
  }

  return result;
}

unint64_t sub_1C2D4D618()
{
  result = qword_1EC060668;
  if (!qword_1EC060668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060670);
    sub_1C2C94F38(&qword_1EC060678, &qword_1EC060680);
    sub_1C2C94F38(&qword_1EC05FFD8, &qword_1EC05FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060668);
  }

  return result;
}

unint64_t sub_1C2D4D6FC()
{
  result = qword_1EC060690;
  if (!qword_1EC060690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060690);
  }

  return result;
}

unint64_t sub_1C2D4D750(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id sub_1C2D4D760()
{
  v1 = v0;
  v2 = sub_1C2E732B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1C2E71784();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallTranslationLanguagePicker();
  sub_1C2E726C4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C2C73644(v8, &unk_1EC061C20);
    v13 = *(v0 + 64);
    if (v13)
    {
LABEL_3:

      v13(v14);
      return sub_1C2C71668(v13);
    }
  }

  else
  {
    v21 = v3;
    (*(v10 + 32))(v12, v8, v9);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = sub_1C2E71734();
    v18 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
    aBlock[4] = CGPointMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2D59B08;
    aBlock[3] = &block_descriptor_9;
    v19 = _Block_copy(aBlock);
    [v16 openURL:v17 configuration:v18 completionHandler:v19];
    _Block_release(v19);

    (*(v10 + 8))(v12, v9);
    v3 = v21;
    v13 = *(v1 + 64);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  sub_1C2D59900(v5);
  sub_1C2E732A4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C2D4DAC4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  result = 0;
  if (a2 >= 3)
  {
    v27 = a1;
    v28 = a5;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    sub_1C2D5B6E4(a2);
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    v18 = MEMORY[0x1C6925DB0](&v29);
    v19 = v29;
    if (v29 >= 2 && (v20 = MEMORY[0x1C6923240](v18), MEMORY[0x1C6923240](v20), v21 = sub_1C2D4E8D0(v16, v13), v22 = *(v11 + 8), v22(v13, v10), v22(v16, v10), (v21 & 1) != 0))
    {
      v23 = v27;
      v30 = a3;
      v31 = a4;
      v24 = v28;
      v32 = v28;
      if (v27 >= 3)
      {
        v29 = v27;
        sub_1C2D5B6F4(v27);
        sub_1C2D5B6F4(v23);

        sub_1C2D5B6E4(v24);
        sub_1C2E75394();
        sub_1C2D4D750(v19);
        sub_1C2D5B704(v23);
      }

      else
      {
        v29 = 0;

        sub_1C2D5B6E4(v24);
        sub_1C2E75394();
        sub_1C2D4D750(v19);
      }

      v25 = v24;
    }

    else
    {
      v25 = v19;
    }

    sub_1C2D4D750(v25);
    return a2;
  }

  return result;
}

id sub_1C2D4DD30(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = *a2;
  if (*a2 == 1)
  {
    return sub_1C2D4D760();
  }

  v11 = *a1;
  v19 = *(a3 + *(type metadata accessor for CallTranslationLanguagePicker() + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  sub_1C2E751A4();
  v12 = v18;
  v13 = sub_1C2D4DAC4(v11, v9, v17[1], v17[2], v18);

  v14 = sub_1C2D4D750(v12);
  if (v13)
  {
    MEMORY[0x1C6923240](v14);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1C2E71934();
  (*(*(v16 - 8) + 56))(v8, v15, 1, v16);
  return sub_1C2E72674();
}

uint64_t sub_1C2D4DEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1C2D4DF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for CallTranslationLanguagePicker();
  v15 = *(a1 + *(v5 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  v6 = sub_1C2E75184();
  v7 = v14;
  if (v14 >= 2)
  {
    MEMORY[0x1C6923240](v6);
    v8 = sub_1C2E71934();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    sub_1C2E726A4();
  }

  sub_1C2D4D750(v7);
  v15 = *(a1 + *(v5 + 40));
  v9 = sub_1C2E75184();
  v10 = v14;
  if (v14 >= 2)
  {
    MEMORY[0x1C6923240](v9);
    v11 = sub_1C2E71934();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    sub_1C2E72674();
  }

  return sub_1C2D4D750(v10);
}

uint64_t sub_1C2D4E17C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || sub_1C2E72804() == 2)
  {
    MEMORY[0x1C6923240](v10);
    v13 = sub_1C2D4E2A8(v12, a4, a5 & 1);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C2D4E2A8(uint64_t a1, uint64_t a2, char a3)
{
  v48 = a2;
  v4 = sub_1C2E718C4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = sub_1C2E71914();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  if (a3)
  {
    sub_1C2E71924();
    sub_1C2E71904();
    v24 = *(v18 + 8);
    v24(v23, v17);
    sub_1C2E71924();
    sub_1C2E71904();
    v24(v20, v17);
    v25 = *(v6 + 48);
    sub_1C2C736A4(v16, v8, &qword_1EC0606F0);
    sub_1C2C736A4(v13, &v8[v25], &qword_1EC0606F0);
    v27 = v46;
    v26 = v47;
    v28 = *(v46 + 48);
    if (v28(v8, 1, v47) == 1)
    {
      sub_1C2C73644(v13, &qword_1EC0606F0);
      sub_1C2C73644(v16, &qword_1EC0606F0);
      if (v28(&v8[v25], 1, v26) == 1)
      {
        sub_1C2C73644(v8, &qword_1EC0606F0);
        v29 = 1;
        return v29 & 1;
      }
    }

    else
    {
      v38 = v45;
      sub_1C2C736A4(v8, v45, &qword_1EC0606F0);
      if (v28(&v8[v25], 1, v26) != 1)
      {
        v39 = v44;
        (*(v27 + 32))(v44, &v8[v25], v26);
        sub_1C2D5C0F8(&qword_1EC0606F8, MEMORY[0x1E6969610]);
        v40 = v38;
        v29 = sub_1C2E75BA4();
        v41 = *(v27 + 8);
        v41(v39, v26);
        sub_1C2C73644(v13, &qword_1EC0606F0);
        sub_1C2C73644(v16, &qword_1EC0606F0);
        v41(v40, v26);
        sub_1C2C73644(v8, &qword_1EC0606F0);
        return v29 & 1;
      }

      sub_1C2C73644(v13, &qword_1EC0606F0);
      sub_1C2C73644(v16, &qword_1EC0606F0);
      (*(v27 + 8))(v38, v26);
    }

    sub_1C2C73644(v8, &qword_1EC0606E8);
    v29 = 0;
    return v29 & 1;
  }

  v53 = sub_1C2E718B4();
  v54 = v30;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  sub_1C2C74960();
  v31 = sub_1C2E76434();
  v33 = v32;

  v53 = sub_1C2E718B4();
  v54 = v34;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v35 = sub_1C2E76434();
  v37 = v36;

  if (v31 == v35 && v33 == v37)
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_1C2E767A4();
  }

  return v29 & 1;
}

uint64_t sub_1C2D4E8D0(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = sub_1C2E718C4();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v56 - v15;
  v16 = sub_1C2E71914();
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v69 = a1;
  v77 = sub_1C2E718B4();
  v78 = v25;
  v75 = 45;
  v76 = 0xE100000000000000;
  v73 = 95;
  v74 = 0xE100000000000000;
  sub_1C2C74960();
  v26 = sub_1C2E76434();
  v28 = v27;

  v77 = sub_1C2E718B4();
  v78 = v29;
  v75 = 45;
  v76 = 0xE100000000000000;
  v73 = 95;
  v74 = 0xE100000000000000;
  v30 = sub_1C2E76434();
  v32 = v31;

  if (v26 == v30 && v28 == v32)
  {

LABEL_5:
    v34 = 1;
    return v34 & 1;
  }

  v33 = sub_1C2E767A4();

  if (v33)
  {
    goto LABEL_5;
  }

  sub_1C2E71924();
  v36 = v66;
  sub_1C2E71904();
  v37 = v68;
  v38 = *(v67 + 8);
  v38(v24, v68);
  v40 = v70;
  v39 = v71;
  v34 = 1;
  v67 = *(v70 + 48);
  v41 = (v67)(v36, 1, v71);
  sub_1C2C73644(v36, &qword_1EC0606F0);
  if (v41 != 1)
  {
    v42 = v64;
    sub_1C2E71924();
    v43 = v40;
    v44 = v65;
    sub_1C2E71904();
    v38(v42, v37);
    v34 = 1;
    LODWORD(v42) = (v67)(v44, 1, v39);
    v45 = v44;
    v46 = v43;
    sub_1C2C73644(v45, &qword_1EC0606F0);
    if (v42 != 1)
    {
      v47 = v58;
      sub_1C2E71924();
      v48 = v61;
      sub_1C2E71904();
      v38(v47, v37);
      v49 = v59;
      sub_1C2E71924();
      v50 = v63;
      sub_1C2E71904();
      v38(v49, v37);
      v51 = *(v60 + 48);
      v52 = v62;
      sub_1C2C736A4(v48, v62, &qword_1EC0606F0);
      sub_1C2C736A4(v50, v52 + v51, &qword_1EC0606F0);
      if ((v67)(v52, 1, v39) == 1)
      {
        sub_1C2C73644(v50, &qword_1EC0606F0);
        sub_1C2C73644(v48, &qword_1EC0606F0);
        if ((v67)(v52 + v51, 1, v39) == 1)
        {
          sub_1C2C73644(v52, &qword_1EC0606F0);
          goto LABEL_5;
        }
      }

      else
      {
        v53 = v57;
        sub_1C2C736A4(v52, v57, &qword_1EC0606F0);
        if ((v67)(v52 + v51, 1, v39) != 1)
        {
          v54 = v56;
          (*(v46 + 32))(v56, v52 + v51, v39);
          sub_1C2D5C0F8(&qword_1EC0606F8, MEMORY[0x1E6969610]);
          v34 = sub_1C2E75BA4();
          v55 = *(v46 + 8);
          v55(v54, v39);
          sub_1C2C73644(v63, &qword_1EC0606F0);
          sub_1C2C73644(v48, &qword_1EC0606F0);
          v55(v53, v39);
          sub_1C2C73644(v52, &qword_1EC0606F0);
          return v34 & 1;
        }

        sub_1C2C73644(v63, &qword_1EC0606F0);
        sub_1C2C73644(v48, &qword_1EC0606F0);
        (*(v46 + 8))(v53, v39);
      }

      sub_1C2C73644(v52, &qword_1EC0606E8);
      v34 = 0;
    }
  }

  return v34 & 1;
}

uint64_t sub_1C2D4F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v46 = a1;
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060728);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  *v15 = sub_1C2E73DC4();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060730);
  sub_1C2D4F494(v2, &v15[*(v16 + 44)]);
  LOBYTE(v2) = sub_1C2E74444();
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060738) + 36)];
  *v17 = v2;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  LOBYTE(v2) = sub_1C2E744B4();
  sub_1C2E73034();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060740) + 36)];
  *v26 = v2;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  sub_1C2E74F84();
  v27 = sub_1C2E74F74();

  sub_1C2E73F74();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v15[*(v10 + 44)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060748);
  v38 = v36 + *(v37 + 52);
  v39 = *(sub_1C2E74124() + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1C2E73D44();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *v36 = v27;
  *(v36 + *(v37 + 56)) = 256;
  *v8 = sub_1C2E73C24();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060750);
  sub_1C2D52738(v46, &v8[*(v42 + 44)]);
  sub_1C2C736A4(v15, v12, &qword_1EC060728);
  sub_1C2C736A4(v8, v5, &qword_1EC060720);
  v43 = v47;
  sub_1C2C736A4(v12, v47, &qword_1EC060728);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060758);
  sub_1C2C736A4(v5, v43 + *(v44 + 48), &qword_1EC060720);
  sub_1C2C73644(v8, &qword_1EC060720);
  sub_1C2C73644(v15, &qword_1EC060728);
  sub_1C2C73644(v5, &qword_1EC060720);
  return sub_1C2C73644(v12, &qword_1EC060728);
}

uint64_t sub_1C2D4F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v369 = a2;
  v372 = sub_1C2E75424();
  v371 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372);
  v370 = &v315[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v402 = &v315[-v5];
  v361 = sub_1C2E734E4();
  v379 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v360 = &v315[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v359 = sub_1C2E75824();
  v378 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v355 = &v315[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607E8);
  v375 = *(v356 - 1);
  MEMORY[0x1EEE9AC00](v356);
  v352 = &v315[-v8];
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607F0);
  v376 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v353 = &v315[-v9];
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607F8);
  v377 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v354 = &v315[-v10];
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060800);
  MEMORY[0x1EEE9AC00](v388);
  v346 = &v315[-v11];
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060808);
  MEMORY[0x1EEE9AC00](v394);
  v393 = &v315[-v12];
  v13 = type metadata accessor for CallTranslationLanguagePicker();
  v344 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v345 = v14;
  v363 = &v315[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1C2E73774();
  v399 = *(v15 - 8);
  v400 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v389 = &v315[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060810);
  MEMORY[0x1EEE9AC00](v385);
  v362 = &v315[-v17];
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060818);
  v381 = *(v366 - 8);
  MEMORY[0x1EEE9AC00](v366);
  v386 = &v315[-v18];
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060820);
  v380 = *(v364 - 1);
  MEMORY[0x1EEE9AC00](v364);
  v367 = &v315[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v365 = &v315[-v21];
  v348 = sub_1C2E71934();
  v347 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v23 = &v315[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1C2E75C14();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v315[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v315[-v29];
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060828);
  MEMORY[0x1EEE9AC00](v390);
  v387 = &v315[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060830);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v368 = &v315[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v392 = &v315[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v391 = &v315[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v401 = &v315[-v39];
  v384 = v13;
  v40 = *(v13 + 60);
  v397 = a1;
  LODWORD(a1) = *(a1 + v40);
  sub_1C2E75BB4();
  v41 = *(v25 + 16);
  v42 = v27;
  v43 = v30;
  v382 = v24;
  v396 = v41;
  (v41)(v27, v30, v24);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v373 = objc_opt_self();
  v383 = ObjCClassFromMetadata;
  v45 = [v373 bundleForClass_];
  sub_1C2E718F4();
  v398 = (v25 + 16);
  v46 = (v25 + 8);
  v351 = &unk_1C2E84310;
  v395 = (v25 + 8);
  v350 = v23;
  v349 = v42;
  v374 = v30;
  if (a1 == 1)
  {
    v378 = sub_1C2E75C84();
    v358 = v47;
    v48 = *v46;
    v49 = v43;
    v50 = v43;
    v51 = v382;
    (*v46)(v50, v382);
    v376 = v48;
    sub_1C2E75BB4();
    (v396)(v42, v49, v51);
    v52 = v373;
    v53 = v383;
    v54 = [v373 bundleForClass_];
    sub_1C2E718F4();
    v327 = sub_1C2E75C84();
    v357 = v55;
    (v48)(v49, v51);
    v340 = "TRANSLATE_TO_SHORT";
    sub_1C2E75BB4();
    v56 = v396;
    (v396)(v42, v49, v51);
    v57 = [v52 bundleForClass_];
    sub_1C2E718F4();
    v326 = sub_1C2E75C84();
    v355 = v58;
    v59 = v49;
    v60 = v49;
    v61 = v376;
    (v376)(v60, v51);
    sub_1C2E75BB4();
    (v56)(v42, v59, v51);
    v62 = [v373 bundleForClass_];
    sub_1C2E718F4();
    v325 = sub_1C2E75C84();
    v354 = v63;
    v64 = v374;
    v61(v374, v51);
    sub_1C2E75BB4();
    (v56)(v42, v64, v51);
    v65 = [v373 bundleForClass_];
    sub_1C2E718F4();
    v324 = sub_1C2E75C84();
    v353 = v66;
    v61(v64, v51);
    v67 = v384;
    v68 = v397;
    v407 = *(v397 + *(v384 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
    sub_1C2E751A4();
    v375 = v403;
    v373 = v404;
    v379 = v405;
    v69 = *(v68 + 8);
    LOBYTE(v407) = *v68;
    *(&v407 + 1) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    sub_1C2E751A4();
    v361 = v403;
    v360 = v404;
    LOBYTE(v51) = v405;
    LODWORD(v352) = v405;
    v70 = (v68 + *(v67 + 44));
    v72 = *v70;
    v71 = v70[1];
    v339 = v72;
    v338 = v71;
    *&v407 = v72;
    *(&v407 + 1) = v71;
    sub_1C2E751A4();
    v346 = v403;
    v342 = v404;
    v343 = v405;
    v73 = sub_1C2E73C24();
    v74 = v387;
    *v387 = v73;
    *(v74 + 1) = 0;
    v74[16] = 1;
    v356 = &v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060888) + 44)];
    v403 = v378;
    v404 = v358;
    v341 = sub_1C2C74960();

    v75 = sub_1C2E748A4();
    v77 = v76;
    v79 = v78;
    sub_1C2E74584();
    v80 = sub_1C2E74764();
    v82 = v81;
    LOBYTE(v52) = v83;
    sub_1C2C72340(v75, v77, v79 & 1);

    LODWORD(v403) = sub_1C2E740D4();
    v319 = sub_1C2E74794();
    v318 = v84;
    v316 = v85;
    v317 = v86;
    sub_1C2C72340(v80, v82, v52 & 1);

    v87 = swift_allocObject();
    v88 = v361;
    v89 = v360;
    *(v87 + 16) = v361;
    *(v87 + 24) = v89;
    *(v87 + 32) = v51;
    MEMORY[0x1EEE9AC00](v88);
    v311 = v68;
    v312 = v375;
    v313 = v373;
    v314 = v379;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060890);
    v320 = MEMORY[0x1E69817F8];
    v337 = sub_1C2C94F38(&qword_1EC060898, &qword_1EC060890);
    v90 = v362;
    sub_1C2E751C4();
    *(v90 + *(v385 + 36)) = sub_1C2E740F4();
    v91 = v389;
    sub_1C2E73764();
    v378 = sub_1C2D5BF54();
    v377 = sub_1C2D5C0F8(&qword_1EC060860, MEMORY[0x1E697C248]);
    v92 = v400;
    sub_1C2E74974();
    v93 = *(v399 + 8);
    v399 += 8;
    v336 = v93;
    v93(v91, v92);
    sub_1C2C73644(v90, &qword_1EC060810);
    v94 = v68;
    v95 = v363;
    sub_1C2D4D0EC(v94, v363);
    v96 = (v344[80] + 16) & ~v344[80];
    v344 = v344[80];
    v335 = v96;
    v97 = (v345 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v330 = v97;
    v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
    v331 = v98;
    v99 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
    v332 = v99;
    v100 = (v99 + 23) & 0xFFFFFFFFFFFFFFF8;
    v334 = v100;
    v101 = (v100 + 23) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 31) & 0xFFFFFFFFFFFFFFF8;
    v328 = v102;
    v103 = v101;
    v333 = v101;
    v104 = (v101 + 55) & 0xFFFFFFFFFFFFFFF8;
    v345 = v104;
    v359 = (v104 + 31) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    v329 = type metadata accessor for CallTranslationLanguagePicker;
    sub_1C2D5C804(v95, v105 + v96, type metadata accessor for CallTranslationLanguagePicker);
    v106 = v105;
    v322 = v105;
    v107 = (v105 + v97);
    v108 = v357;
    *v107 = v327;
    v107[1] = v108;
    v109 = (v105 + v98);
    v110 = v355;
    *v109 = v326;
    v109[1] = v110;
    v111 = (v105 + v99);
    v112 = v354;
    *v111 = v325;
    v111[1] = v112;
    v113 = (v105 + v100);
    v114 = v353;
    *v113 = v324;
    v113[1] = v114;
    v115 = (v105 + v103);
    v116 = v342;
    *v115 = v346;
    v115[1] = v116;
    v117 = v343;
    v115[2] = v343;
    v118 = v105 + v102;
    v119 = v360;
    *v118 = v361;
    *(v118 + 8) = v119;
    *(v118 + 16) = v352;
    v120 = (v106 + v104);
    v121 = v373;
    *v120 = v375;
    v120[1] = v121;
    v120[2] = v379;
    *(v106 + v359) = MEMORY[0x1E69E7CC0];

    sub_1C2D5B6E4(v117);

    sub_1C2D5B6E4(v379);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608B8);
    v403 = v385;
    v404 = v400;
    v405 = v378;
    v406 = v377;
    v327 = MEMORY[0x1E697CDB0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608C0);
    v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608C8);
    v126 = sub_1C2E740C4();
    v326 = v126;
    v325 = sub_1C2D5C03C();
    v403 = v125;
    v404 = v126;
    v405 = v325;
    v406 = MEMORY[0x1E697C7E0];
    v324 = MEMORY[0x1E697D160];
    v127 = swift_getOpaqueTypeConformance2();
    v403 = v124;
    v404 = v127;
    v323 = MEMORY[0x1E697D1C0];
    v312 = OpaqueTypeConformance2;
    v313 = swift_getOpaqueTypeConformance2();
    v311 = v122;
    v128 = v365;
    v129 = v366;
    v130 = v386;
    sub_1C2E74D34();

    v131 = *(v381 + 8);
    v381 += 8;
    v352 = v131;
    (v131)(v130, v129);
    v132 = v380;
    v133 = v380 + 16;
    v134 = *(v380 + 16);
    v135 = v367;
    v136 = v364;
    v134(v367, v128, v364);
    v321 = v134;
    v322 = v133;
    v137 = v356;
    v138 = v319;
    v139 = v318;
    *v356 = v319;
    *(v137 + 1) = v139;
    LOBYTE(v99) = v316 & 1;
    v137[16] = v316 & 1;
    *(v137 + 3) = v317;
    *(v137 + 4) = 0;
    v137[40] = 1;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E0);
    v134(&v356[*(v140 + 64)], v135, v136);
    sub_1C2C72330(v138, v139, v99);
    v141 = *(v132 + 8);
    v380 = v132 + 8;
    v356 = v141;

    (v141)(v128, v136);
    (v141)(v135, v136);
    sub_1C2C72340(v138, v139, v99);

    sub_1C2D4D750(v343);

    sub_1C2D4D750(v379);

    v142 = v387;
    sub_1C2C736A4(v387, v393, &qword_1EC060828);
    swift_storeEnumTagMultiPayload();
    v358 = sub_1C2C94F38(&qword_1EC060868, &qword_1EC060828);
    v357 = sub_1C2D5BCD8();
    sub_1C2E73F44();
    sub_1C2C73644(v142, &qword_1EC060828);
    sub_1C2E75414();
    v143 = v374;
    sub_1C2E75BB4();
    v144 = v349;
    v145 = v382;
    v146 = v396;
    (v396)(v349, v143, v382);
    v379 = objc_opt_self();
    v147 = v383;
    v148 = [v379 bundleForClass_];
    sub_1C2E718F4();
    v346 = sub_1C2E75C84();
    v373 = v149;
    v150 = v143;
    v151 = v376;
    (v376)(v143, v145);
    sub_1C2E75BB4();
    (v146)(v144, v143, v145);
    v152 = [v379 bundleForClass_];
    sub_1C2E718F4();
    v355 = sub_1C2E75C84();
    v375 = v153;
    v151(v143, v145);
    sub_1C2E75BB4();
    v154 = v145;
    v155 = v396;
    (v396)(v144, v150, v145);
    v156 = v379;
    v157 = [v379 bundleForClass_];
    sub_1C2E718F4();
    v354 = sub_1C2E75C84();
    v361 = v158;
    v159 = v154;
    v160 = v154;
    v161 = v376;
    (v376)(v150, v160);
    sub_1C2E75BB4();
    (v155)(v144, v150, v159);
    v162 = v156;
    v163 = v383;
    v164 = [v162 bundleForClass_];
    sub_1C2E718F4();
    v353 = sub_1C2E75C84();
    v360 = v165;
    v161(v150, v159);
    sub_1C2E75BB4();
    (v155)(v144, v150, v159);
    v166 = [v379 bundleForClass_];
    sub_1C2E718F4();
    v351 = sub_1C2E75C84();
    v383 = v167;
    v161(v150, v159);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060880);
    v168 = v347;
    v169 = (*(v347 + 80) + 32) & ~*(v347 + 80);
    v170 = swift_allocObject();
    v382 = v170;
    *(v170 + 16) = xmmword_1C2E7A930;
    v171 = v397;
    v168[2](v170 + v169, v397 + *(v384 + 48), v348);
    *&v407 = v339;
    *(&v407 + 1) = v338;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
    sub_1C2E751A4();
    v172 = v404;
    v379 = v403;
    v376 = v404;
    v398 = v405;
    v173 = *(v171 + 24);
    LOBYTE(v407) = *(v171 + 16);
    *(&v407 + 1) = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    sub_1C2E751A4();
    v395 = v404;
    v396 = v403;
    LOBYTE(v142) = v405;
    LODWORD(v384) = v405;
    v174 = sub_1C2E73C24();
    v175 = v387;
    *v387 = v174;
    *(v175 + 1) = 0;
    v175[16] = 1;
    v374 = &v175[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060888) + 44)];
    v403 = v346;
    v404 = v373;

    v176 = sub_1C2E748A4();
    v178 = v177;
    LOBYTE(v155) = v179;
    sub_1C2E74584();
    v180 = sub_1C2E74764();
    v182 = v181;
    LOBYTE(v139) = v183;
    sub_1C2C72340(v176, v178, v155 & 1);

    LODWORD(v403) = sub_1C2E740D4();
    v348 = sub_1C2E74794();
    v347 = v184;
    LODWORD(v349) = v185;
    v350 = v186;
    sub_1C2C72340(v180, v182, v139 & 1);

    v187 = swift_allocObject();
    v189 = v395;
    v188 = v396;
    *(v187 + 16) = v396;
    *(v187 + 24) = v189;
    *(v187 + 32) = v142;
    MEMORY[0x1EEE9AC00](v188);
    v190 = v397;
    v191 = v398;
    v192 = v379;
    v311 = v397;
    v312 = v379;
    v313 = v172;
    v314 = v398;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060890);
    v193 = v362;
    sub_1C2E751C4();
    *(v193 + *(v385 + 36)) = sub_1C2E740F4();
    v194 = v389;
    sub_1C2E73764();
    v195 = v400;
    sub_1C2E74974();
    v336(v194, v195);
    sub_1C2C73644(v193, &qword_1EC060810);
    v196 = v363;
    sub_1C2D4D0EC(v190, v363);
    v197 = v359;
    v198 = swift_allocObject();
    sub_1C2D5C804(v196, v198 + v335, v329);
    v199 = (v198 + v330);
    v200 = v375;
    *v199 = v355;
    v199[1] = v200;
    v201 = (v198 + v331);
    v202 = v361;
    *v201 = v354;
    v201[1] = v202;
    v203 = (v198 + v332);
    v204 = v360;
    *v203 = v353;
    v203[1] = v204;
    v205 = (v198 + v334);
    v206 = v383;
    *v205 = v351;
    v205[1] = v206;
    v207 = (v198 + v333);
    v208 = v198 + v328;
    *v207 = 0;
    v207[1] = 0;
    v207[2] = 0;
    v209 = v395;
    *v208 = v396;
    *(v208 + 8) = v209;
    *(v208 + 16) = v384;
    v210 = (v198 + v345);
    *v210 = v192;
    v210[1] = v376;
    v210[2] = v191;
    *(v198 + v197) = v382;

    sub_1C2D5B6E4(v398);

    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608B8);
    v403 = v385;
    v404 = v400;
    v405 = v378;
    v406 = v377;
    v212 = swift_getOpaqueTypeConformance2();
    v213 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608C0);
    v403 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608C8);
    v404 = v326;
    v405 = v325;
    v406 = MEMORY[0x1E697C7E0];
    v214 = swift_getOpaqueTypeConformance2();
    v403 = v213;
    v404 = v214;
    v312 = v212;
    v313 = swift_getOpaqueTypeConformance2();
    v311 = v211;
    v215 = v365;
    v216 = v366;
    v217 = v386;
    sub_1C2E74D34();

    (v352)(v217, v216);
    v218 = v367;
    v219 = v364;
    v220 = v321;
    v321(v367, v215, v364);
    v221 = v374;
    v222 = v348;
    v223 = v347;
    *v374 = v348;
    v221[1] = v223;
    LOBYTE(v217) = v349 & 1;
    *(v221 + 16) = v349 & 1;
    v221[3] = v350;
    v221[4] = 0;
    *(v221 + 40) = 1;
    v224 = v221 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E0) + 64);
    v220(v224, v218, v219);
    sub_1C2C72330(v222, v223, v217);

    v225 = v215;
    v226 = v356;
    (v356)(v225, v219);
    v226(v218, v219);
    sub_1C2C72340(v222, v223, v217);

    sub_1C2D4D750(v398);

    v227 = v387;
    sub_1C2C736A4(v387, v393, &qword_1EC060828);
    swift_storeEnumTagMultiPayload();
    sub_1C2E73F44();
    v228 = v227;
    v229 = &qword_1EC060828;
  }

  else
  {
    v230 = sub_1C2E75C84();
    v232 = v231;
    v387 = *v46;
    (v387)(v30, v382);
    v233 = v384;
    v234 = v397;
    v235 = sub_1C2E72684();
    MEMORY[0x1EEE9AC00](v235);
    v313 = v234;
    v237 = sub_1C2D5D0B0(sub_1C2D5D080, &v311, v236);
    v407 = *&v234[*(v233 + 40)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
    sub_1C2E751A4();
    v238 = v403;
    v239 = v404;
    v240 = v405;
    v241 = &v234[*(v233 + 44)];
    v243 = *v241;
    v242 = *(v241 + 1);
    v386 = v243;
    v385 = v242;
    *&v407 = v243;
    *(&v407 + 1) = v242;
    sub_1C2E751A4();
    v373 = v315;
    v341 = v403;
    v338 = v404;
    v343 = v405;
    MEMORY[0x1EEE9AC00](v403);
    v339 = v238;
    *&v315[-64] = v238;
    *&v315[-56] = v239;
    v337 = v239;
    v340 = v240;
    *&v315[-48] = v240;
    *&v315[-40] = v237;
    MEMORY[0x1EEE9AC00](v244);
    *&v315[-48] = v230;
    *&v315[-40] = v232;
    v311 = v234;
    v312 = v238;
    v313 = v245;
    v314 = v240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060838);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060840);
    v342 = MEMORY[0x1E69817F8];
    v381 = sub_1C2C94F38(&qword_1EC060848, &qword_1EC060838);
    v380 = sub_1C2C94F38(&qword_1EC060850, &qword_1EC060840);
    v246 = v352;
    sub_1C2E746F4();

    v247 = v355;
    sub_1C2E75814();
    v248 = sub_1C2C94F38(&qword_1EC060858, &qword_1EC0607E8);
    v249 = v353;
    v250 = v356;
    v251 = v248;
    v365 = v248;
    sub_1C2E74E74();
    v252 = *(v378 + 8);
    v378 += 8;
    v373 = v252;
    (v252)(v247, v359);
    v253 = *(v375 + 1);
    v375 += 8;
    v367 = v253;
    (v253)(v246, v250);
    v254 = v360;
    sub_1C2E734D4();
    v403 = v250;
    v404 = v251;
    v366 = MEMORY[0x1E697D608];
    v255 = swift_getOpaqueTypeConformance2();
    v256 = sub_1C2D5C0F8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
    v257 = v354;
    v258 = v357;
    v259 = v361;
    v260 = v256;
    v345 = v256;
    sub_1C2E74E84();
    v261 = *(v379 + 1);
    v379 += 8;
    v364 = v261;
    (v261)(v254, v259);
    v262 = *(v376 + 1);
    v376 += 8;
    v363 = v262;
    (v262)(v249, v258);
    v263 = v389;
    sub_1C2E73764();
    v403 = v258;
    v404 = v259;
    v405 = v255;
    v406 = v260;
    v362 = MEMORY[0x1E697D610];
    swift_getOpaqueTypeConformance2();
    v348 = sub_1C2D5C0F8(&qword_1EC060860, MEMORY[0x1E697C248]);
    v264 = v346;
    v265 = v358;
    v266 = v400;
    sub_1C2E74974();
    v267 = *(v399 + 8);
    v399 += 8;
    v347 = v267;
    (v267)(v263, v266);
    v268 = *(v377 + 8);
    v377 += 8;
    v344 = v268;
    (v268)(v257, v265);
    v269 = sub_1C2E740D4();

    sub_1C2D4D750(v343);

    sub_1C2D4D750(v340);
    *(v264 + *(v388 + 36)) = v269;
    sub_1C2C736A4(v264, v393, &qword_1EC060800);
    swift_storeEnumTagMultiPayload();
    v343 = sub_1C2C94F38(&qword_1EC060868, &qword_1EC060828);
    v342 = sub_1C2D5BCD8();
    sub_1C2E73F44();
    sub_1C2C73644(v264, &qword_1EC060800);
    sub_1C2E75414();
    v270 = v374;
    sub_1C2E75BB4();
    v271 = v382;
    (v396)(v349, v270, v382);
    v272 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v273 = sub_1C2E75C84();
    v275 = v274;
    (v387)(v270, v271);
    v276 = sub_1C2E72684();
    *&v407 = v386;
    *(&v407 + 1) = v385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
    v277 = sub_1C2E751A4();
    v278 = v404;
    MEMORY[0x1EEE9AC00](v277);
    *&v315[-64] = v279;
    *&v315[-56] = v278;
    v396 = v279;
    *&v315[-48] = v280;
    *&v315[-40] = v276;
    v398 = v280;
    MEMORY[0x1EEE9AC00](v281);
    *(v282 - 24) = 0;
    *(v282 - 16) = 0;
    *(v282 - 8) = 0;
    *&v315[-48] = v273;
    *&v315[-40] = v275;
    v311 = v283;
    v312 = v284;
    v313 = v278;
    v314 = v285;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060838);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060840);
    v286 = v352;
    sub_1C2E746F4();

    v287 = v355;
    sub_1C2E75814();
    v288 = v353;
    v289 = v356;
    v290 = v365;
    sub_1C2E74E74();
    (v373)(v287, v359);
    (v367)(v286, v289);
    v291 = v360;
    sub_1C2E734D4();
    v403 = v289;
    v404 = v290;
    v292 = swift_getOpaqueTypeConformance2();
    v293 = v354;
    v294 = v357;
    v295 = v361;
    v296 = v345;
    sub_1C2E74E84();
    (v364)(v291, v295);
    (v363)(v288, v294);
    v297 = v389;
    sub_1C2E73764();
    v403 = v294;
    v404 = v295;
    v405 = v292;
    v406 = v296;
    swift_getOpaqueTypeConformance2();
    v298 = v358;
    v299 = v400;
    sub_1C2E74974();
    (v347)(v297, v299);
    (v344)(v293, v298);
    LODWORD(v291) = sub_1C2E740D4();

    sub_1C2D4D750(v398);
    *(v264 + *(v388 + 36)) = v291;
    sub_1C2C736A4(v264, v393, &qword_1EC060800);
    swift_storeEnumTagMultiPayload();
    sub_1C2E73F44();
    v228 = v264;
    v229 = &qword_1EC060800;
  }

  sub_1C2C73644(v228, v229);
  v300 = v392;
  sub_1C2C736A4(v401, v392, &qword_1EC060830);
  v301 = v371;
  v302 = *(v371 + 16);
  v303 = v370;
  v304 = v372;
  v302(v370, v402, v372);
  v305 = v391;
  v306 = v368;
  sub_1C2C736A4(v391, v368, &qword_1EC060830);
  v307 = v369;
  sub_1C2C736A4(v300, v369, &qword_1EC060830);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060878);
  v302(v307 + *(v308 + 48), v303, v304);
  sub_1C2C736A4(v306, v307 + *(v308 + 64), &qword_1EC060830);
  sub_1C2C73644(v305, &qword_1EC060830);
  v309 = *(v301 + 8);
  v309(v402, v304);
  sub_1C2C73644(v401, &qword_1EC060830);
  sub_1C2C73644(v306, &qword_1EC060830);
  v309(v303, v304);
  return sub_1C2C73644(v392, &qword_1EC060830);
}

uint64_t sub_1C2D52738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060760);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v64 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060768);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v64 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060770);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060778);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v64 - v11;
  v12 = sub_1C2E742D4();
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CallTranslationLanguagePicker();
  v16 = v15 - 8;
  v81 = *(v15 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060780);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060788);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060790);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v68 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v67 = &v64 - v28;
  if (*(a1 + *(v16 + 72)) == 1)
  {
    sub_1C2D4D0EC(a1, &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = *(v81 + 80);
    v65 = a1;
    v30 = (v29 + 16) & ~v29;
    v31 = swift_allocObject();
    sub_1C2D5C804(&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for CallTranslationLanguagePicker);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607C0);
    sub_1C2D5BBEC();
    sub_1C2E751C4();
    sub_1C2E742C4();
    sub_1C2C94F38(&qword_1EC0607D0, &qword_1EC060780);
    sub_1C2D5C0F8(&qword_1EC060160, MEMORY[0x1E697CB70]);
    v32 = v83;
    sub_1C2E74974();
    (*(v82 + 8))(v14, v32);
    (*(v66 + 8))(v20, v18);
    v33 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607D8) + 36)] = v33;
    sub_1C2E74F84();
    v34 = sub_1C2E74F74();

    KeyPath = swift_getKeyPath();
    v84 = v34;
    v36 = sub_1C2E73284();
    v37 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607E0) + 36)];
    *v37 = KeyPath;
    v37[1] = v36;
    a1 = v65;
    v38 = &v24[*(v21 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DFA8);
    sub_1C2E73824();
    *v38 = swift_getKeyPath();
    v39 = v24;
    v40 = v67;
    sub_1C2C71D5C(v39, v67, &qword_1EC060788);
    (*(v22 + 56))(v40, 0, 1, v21);
  }

  else
  {
    v40 = v67;
    (*(v22 + 56))(v67, 1, 1, v21);
  }

  sub_1C2D4D0EC(a1, &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v42 = swift_allocObject();
  sub_1C2D5C804(&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for CallTranslationLanguagePicker);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060798);
  sub_1C2D5B854(&qword_1EC0607A0, &qword_1EC060798, &unk_1C2E84520, sub_1C2CD8E5C);
  v43 = v69;
  sub_1C2E751C4();
  sub_1C2E742C4();
  sub_1C2C94F38(&qword_1EC0607A8, &qword_1EC060760);
  sub_1C2D5C0F8(&qword_1EC060160, MEMORY[0x1E697CB70]);
  v44 = v77;
  v45 = v71;
  v46 = v83;
  sub_1C2E74974();
  (*(v82 + 8))(v14, v46);
  (*(v70 + 8))(v43, v45);
  sub_1C2E74F84();
  v47 = sub_1C2E74F74();

  v48 = swift_getKeyPath();
  v84 = v47;
  v49 = sub_1C2E73284();
  v50 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607B0) + 36)];
  *v50 = v48;
  v50[1] = v49;
  v51 = &v44[*(v73 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DFA8);
  sub_1C2E73824();
  *v51 = swift_getKeyPath();
  if (sub_1C2D53E20())
  {
    v52 = 0.5;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v44;
  v54 = v75;
  sub_1C2C71D5C(v53, v75, &qword_1EC060768);
  *(v54 + *(v76 + 36)) = v52;
  v55 = sub_1C2D53E20();
  v56 = v54;
  v57 = v72;
  sub_1C2C71D5C(v56, v72, &qword_1EC060770);
  *(v57 + *(v74 + 36)) = !v55;
  v58 = v78;
  sub_1C2C71D5C(v57, v78, &qword_1EC060778);
  v59 = v68;
  sub_1C2C736A4(v40, v68, &qword_1EC060790);
  v60 = v79;
  sub_1C2C736A4(v58, v79, &qword_1EC060778);
  v61 = v80;
  sub_1C2C736A4(v59, v80, &qword_1EC060790);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0607B8);
  sub_1C2C736A4(v60, v61 + *(v62 + 48), &qword_1EC060778);
  sub_1C2C73644(v58, &qword_1EC060778);
  sub_1C2C73644(v40, &qword_1EC060790);
  sub_1C2C73644(v60, &qword_1EC060778);
  return sub_1C2C73644(v59, &qword_1EC060790);
}

uint64_t sub_1C2D53244(uint64_t a1)
{
  v2 = sub_1C2E732B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v10 - v5;
  v7 = *(a1 + 64);
  if (v7)
  {

    v7(v8);

    return sub_1C2C71668(v7);
  }

  else
  {
    sub_1C2D59900(&v10 - v5);
    sub_1C2E732A4();
    return (*(v3 + 8))(v6, v2);
  }
}

double sub_1C2D53364@<D0>(uint64_t a1@<X8>)
{
  v45 = sub_1C2E74624();
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2E75C14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  sub_1C2E75BB4();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v14 = sub_1C2E75C84();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  *&v49 = v14;
  *(&v49 + 1) = v16;
  sub_1C2C74960();
  v17 = sub_1C2E748A4();
  v19 = v18;
  LOBYTE(ObjCClassFromMetadata) = v20;
  v43 = v21;
  sub_1C2E74694();
  v23 = v44;
  v22 = v45;
  (*(v2 + 104))(v44, *MEMORY[0x1E6980EA8], v45);
  sub_1C2E74664();

  (*(v2 + 8))(v23, v22);
  v45 = sub_1C2E747F4();
  v25 = v24;
  LOBYTE(v22) = v26;
  v28 = v27;

  sub_1C2C72340(v17, v19, ObjCClassFromMetadata & 1);

  LOBYTE(v23) = sub_1C2E74454();
  sub_1C2E73034();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v22) = v22 & 1;
  v47 = v22;
  v46 = 0;
  sub_1C2E75744();
  sub_1C2E737F4();
  *&v48[55] = v52;
  *&v48[71] = v53;
  *&v48[87] = v54;
  *&v48[103] = v55;
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v37 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  *a1 = v45;
  *(a1 + 8) = v25;
  *(a1 + 16) = v22;
  *(a1 + 24) = v28;
  *(a1 + 32) = v23;
  *(a1 + 40) = v30;
  *(a1 + 48) = v32;
  *(a1 + 56) = v34;
  *(a1 + 64) = v36;
  *(a1 + 72) = 0;
  v38 = *&v48[80];
  *(a1 + 137) = *&v48[64];
  *(a1 + 153) = v38;
  *(a1 + 169) = *&v48[96];
  v39 = *&v48[111];
  v40 = *&v48[16];
  *(a1 + 73) = *v48;
  *(a1 + 89) = v40;
  result = *&v48[32];
  v42 = *&v48[48];
  *(a1 + 105) = *&v48[32];
  *(a1 + 121) = v42;
  *(a1 + 184) = v39;
  *(a1 + 192) = v37;
  return result;
}

uint64_t sub_1C2D537CC(uint64_t a1)
{
  v2 = sub_1C2E71934();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CallTranslationLanguagePicker();
  v20 = *(a1 + *(v9 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  sub_1C2E75184();
  v10 = v19;
  if (v19 < 2)
  {
    goto LABEL_4;
  }

  v20 = *(a1 + *(v9 + 44));
  v11 = sub_1C2E75184();
  v12 = v19;
  if (v19 < 2)
  {
    sub_1C2D4D750(v19);
LABEL_4:
    v13 = v10;
    return sub_1C2D4D750(v13);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = MEMORY[0x1C6923240](v11);
    MEMORY[0x1C6923240](v16);
    v15(v8, v5);
    sub_1C2D4D750(v10);
    sub_1C2D4D750(v12);
    v17 = *(v3 + 8);
    v17(v5, v2);
    return (v17)(v8, v2);
  }

  sub_1C2D4D750(v10);
  v13 = v12;
  return sub_1C2D4D750(v13);
}

double sub_1C2D539B0@<D0>(uint64_t a1@<X8>)
{
  v43 = sub_1C2E74624();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2E75C14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  sub_1C2E75BB4();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v14 = sub_1C2E75C84();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  *&v47 = v14;
  *(&v47 + 1) = v16;
  sub_1C2C74960();
  v17 = sub_1C2E748A4();
  v19 = v18;
  LOBYTE(ObjCClassFromMetadata) = v20;
  v41 = v21;
  sub_1C2E74694();
  v23 = v42;
  v22 = v43;
  (*(v2 + 104))(v42, *MEMORY[0x1E6980EA8], v43);
  sub_1C2E74664();

  (*(v2 + 8))(v23, v22);
  v43 = sub_1C2E747F4();
  v25 = v24;
  LOBYTE(v22) = v26;
  v28 = v27;

  sub_1C2C72340(v17, v19, ObjCClassFromMetadata & 1);

  LOBYTE(v23) = sub_1C2E74454();
  sub_1C2E73034();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v22) = v22 & 1;
  v45 = v22;
  v44 = 0;
  sub_1C2E75744();
  sub_1C2E737F4();
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[103] = v53;
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  *a1 = v43;
  *(a1 + 8) = v25;
  *(a1 + 16) = v22;
  *(a1 + 24) = v28;
  *(a1 + 32) = v23;
  *(a1 + 40) = v30;
  *(a1 + 48) = v32;
  *(a1 + 56) = v34;
  *(a1 + 64) = v36;
  *(a1 + 72) = 0;
  v37 = *&v46[80];
  *(a1 + 137) = *&v46[64];
  *(a1 + 153) = v37;
  *(a1 + 169) = *&v46[96];
  *(a1 + 184) = *&v46[111];
  v38 = *&v46[16];
  *(a1 + 73) = *v46;
  *(a1 + 89) = v38;
  result = *&v46[32];
  v40 = *&v46[48];
  *(a1 + 105) = *&v46[32];
  *(a1 + 121) = v40;
  return result;
}

BOOL sub_1C2D53E20()
{
  type metadata accessor for CallTranslationLanguagePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  sub_1C2E75184();
  if (v3 < 2)
  {
    v0 = v3;
LABEL_4:
    sub_1C2D4D750(v0);
    return 1;
  }

  sub_1C2E75184();
  if (sub_1C2E72804() != 2)
  {
    sub_1C2D4D750(v3);
    v0 = v3;
    goto LABEL_4;
  }

  v2 = sub_1C2E72804();
  sub_1C2D4D750(v3);
  sub_1C2D4D750(v3);
  return v2 != 2;
}

uint64_t sub_1C2D53F24()
{
  v1 = v0;
  v51 = sub_1C2E75C14();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - v5;
  v6 = sub_1C2E75BF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C2E71934();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for CallTranslationLanguagePicker();
  v15 = (v0 + *(v14 + 72));
  v16 = *v15;
  v17 = v15[1];
  *&v57 = *v15;
  *(&v57 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
  sub_1C2E75184();
  if (v56 >> 62)
  {
    v48 = v3;
    v18 = sub_1C2E764E4();
    v3 = v48;
  }

  else
  {
    v18 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 != 2)
  {
    *&v57 = v16;
    *(&v57 + 1) = v17;
    sub_1C2E75184();
    v26 = v56;
    if (v56 >> 62)
    {
      if (sub_1C2E764E4())
      {
        goto LABEL_19;
      }
    }

    else if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      if ((v26 & 0xC000000000000001) != 0)
      {
LABEL_39:
        v31 = v3;
        MEMORY[0x1C6927010](0, v26);
        goto LABEL_22;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = v3;

LABEL_22:

        MEMORY[0x1C6923240](v32);
        sub_1C2E718F4();
        sub_1C2E72284();
        v34 = v33;
        v35 = v54;
        v36 = *(v55 + 8);
        v36(v10, v54);
        v37 = (v36)(v13, v35);
        if (!v34)
        {
          MEMORY[0x1C6923240](v37);
          sub_1C2E718B4();
          v36(v13, v35);
        }

        v10 = v52;
        v17 = v53;
        sub_1C2E75BE4();
        sub_1C2E75BD4();
        sub_1C2E75BC4();

        sub_1C2E75BD4();
        sub_1C2E75C04();
        v38 = v51;
        (*(v17 + 16))(v31, v10, v51);
        type metadata accessor for StringDummy();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v40 = [objc_opt_self() bundleForClass_];
        sub_1C2E718F4();
        v41 = sub_1C2E75C84();

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_41;
    }

    sub_1C2E75BE4();
    sub_1C2E75BD4();
    v57 = *(v1 + *(v14 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
    sub_1C2E75184();
    sub_1C2E75C94();
    sub_1C2E75BC4();

    sub_1C2E75BD4();
    v10 = v52;
    sub_1C2E75C04();
    v17 = v53;
    v38 = v51;
    (*(v53 + 16))(v3, v10, v51);
    type metadata accessor for StringDummy();
    v46 = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    goto LABEL_34;
  }

  *&v57 = v16;
  *(&v57 + 1) = v17;
  sub_1C2E75184();
  v19 = v56;
  v48 = v3;
  if ((v56 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6927010](0, v56);
  }

  else
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  MEMORY[0x1C6923240](v20);

  sub_1C2E718F4();
  v49 = sub_1C2E72284();
  v3 = v21;
  v22 = v54;
  v23 = v55 + 8;
  v14 = *(v55 + 8);
  (v14)(v10, v54);
  v55 = v23;
  (v14)(v13, v22);
  v50 = v3;
  if (!v3)
  {
    *&v57 = v16;
    *(&v57 + 1) = v17;
    sub_1C2E75184();
    v1 = v56;
    if ((v56 & 0xC000000000000001) == 0)
    {
      if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        MEMORY[0x1C6927010](1, v1);
        goto LABEL_28;
      }

      goto LABEL_11;
    }

LABEL_41:
    MEMORY[0x1C6927010](0, v1);
LABEL_11:

    MEMORY[0x1C6923240](v24);

    v49 = sub_1C2E718B4();
    v50 = v25;
    (v14)(v13, v54);
  }

  *&v57 = v16;
  *(&v57 + 1) = v17;
  v26 = &v57;
  sub_1C2E75184();
  v19 = v56;
  if ((v56 & 0xC000000000000001) == 0)
  {
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_37:
  MEMORY[0x1C6927010](1, v19);
LABEL_15:

  MEMORY[0x1C6923240](v27);

  sub_1C2E718F4();
  sub_1C2E72284();
  v29 = v28;
  v30 = v54;
  (v14)(v10, v54);
  (v14)(v13, v30);
  if (v29)
  {
    v10 = v52;
    v17 = v53;
LABEL_29:
    sub_1C2E75BE4();
    sub_1C2E75BD4();
    sub_1C2E75BC4();

    sub_1C2E75BD4();
    sub_1C2E75BC4();

    sub_1C2E75BD4();
    sub_1C2E75C04();
    v38 = v51;
    (*(v17 + 16))(v48, v10, v51);
    type metadata accessor for StringDummy();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
LABEL_34:
    v41 = sub_1C2E75C84();
LABEL_35:
    (*(v17 + 8))(v10, v38);
    return v41;
  }

  *&v57 = v16;
  *(&v57 + 1) = v17;
  result = sub_1C2E75184();
  v1 = v56;
  v10 = v52;
  v17 = v53;
  if ((v56 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {

LABEL_28:

    MEMORY[0x1C6923240](v43);

    sub_1C2E718B4();
    (v14)(v13, v54);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

id sub_1C2D548A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for CallTranslationLanguagePicker();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E75C14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBC8);
  v64 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v63 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  sub_1C2E75BB4();
  v53 = *(v8 + 16);
  v53(v10, v13, v7);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v52 = ObjCClassFromMetadata;
  v23 = [v51 bundleForClass_];
  sub_1C2E718F4();
  v55 = &unk_1C2E84310;
  v56 = v10;
  v57 = v6;
  v24 = sub_1C2E75C84();
  v26 = v25;
  v27 = *(v8 + 8);
  v58 = v8 + 8;
  v59 = v7;
  v27(v13, v7);
  v69 = v24;
  v70 = v26;
  v28 = v67;
  sub_1C2D4D0EC(v68, v67);
  v29 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v66 = v3;
  v30 = swift_allocObject();
  sub_1C2D5C804(v28, v30 + v29, type metadata accessor for CallTranslationLanguagePicker);
  sub_1C2C74960();
  v60 = v21;
  sub_1C2E751E4();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v32 = result;
    v50 = v27;
    MobileGestalt_get_wapiCapability();

    sub_1C2E75BB4();
    v33 = v59;
    v53(v56, v13, v59);
    v34 = [v51 bundleForClass_];
    sub_1C2E718F4();
    v35 = sub_1C2E75C84();
    v37 = v36;
    v50(v13, v33);
    v69 = v35;
    v70 = v37;
    v38 = v67;
    sub_1C2D4D0EC(v68, v67);
    v39 = swift_allocObject();
    sub_1C2D5C804(v38, v39 + v29, type metadata accessor for CallTranslationLanguagePicker);
    v40 = v61;
    sub_1C2E751E4();
    v41 = v64;
    v42 = *(v64 + 16);
    v43 = v62;
    v44 = v60;
    v45 = v54;
    v42(v62, v60, v54);
    v46 = v63;
    v42(v63, v40, v45);
    v47 = v65;
    v42(v65, v43, v45);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060710);
    v42(&v47[*(v48 + 48)], v46, v45);
    v49 = *(v41 + 8);
    v49(v40, v45);
    v49(v44, v45);
    v49(v46, v45);
    return (v49)(v43, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D54F90()
{
  type metadata accessor for CallTranslationLanguagePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
  sub_1C2E75184();
  sub_1C2E72654();

  return sub_1C2E75194();
}

id sub_1C2D55048()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      type metadata accessor for CallTranslationLanguagePicker();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
      sub_1C2E75184();
      sub_1C2E72654();
    }

    type metadata accessor for CallTranslationLanguagePicker();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
    return sub_1C2E75194();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D55144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060708);
  sub_1C2E75184();
  v3 = v12 / 1000000000.0;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  if (v3 >= 1.0)
  {
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E63B0];
    *(v9 + 16) = xmmword_1C2E7A930;
    v11 = MEMORY[0x1E69E6438];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v3;
    sub_1C2E75C34();

    goto LABEL_7;
  }

  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C2E7A930;
  v7 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 < 9.22337204e18)
  {
    v8 = MEMORY[0x1E69E65A8];
    *(result + 56) = MEMORY[0x1E69E6530];
    *(result + 64) = v8;
    *(result + 32) = v7;
    sub_1C2E75C34();

LABEL_7:
    result = sub_1C2E73F44();
    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = v15;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C2D55448()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E270);
  MEMORY[0x1C6925DB0](&v1);
  return sub_1C2E75394();
}

__n128 sub_1C2D554DC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C2E73C24();
  sub_1C2D55590(a1, a2, a3, v11);
  *&v10[55] = v11[3];
  *&v10[39] = v11[2];
  *&v10[23] = v11[1];
  *&v10[7] = v11[0];
  *(a4 + 33) = *&v10[16];
  result = *&v10[32];
  *(a4 + 49) = *&v10[32];
  *(a4 + 65) = *&v10[48];
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 80) = *&v10[63];
  *(a4 + 17) = *v10;
  return result;
}

uint64_t sub_1C2D55590@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](v19, v5);
  v6 = v19[0];
  sub_1C2D556CC(v19[0], v20);
  sub_1C2D4D750(v6);
  v7 = v20[0];
  v8 = v20[1];
  v9 = v20[2];
  v10 = v20[3];
  v11 = v22;
  v12 = v21;
  v18 = v21 | (v22 << 16);
  v13 = v23;
  v14 = sub_1C2E75064();
  v15 = sub_1C2E74684();
  KeyPath = swift_getKeyPath();
  LOBYTE(v20[0]) = v13;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 34) = v11;
  *(a4 + 32) = v12;
  *(a4 + 35) = v13;
  *(a4 + 40) = v14;
  *(a4 + 48) = KeyPath;
  *(a4 + 56) = v15;
  sub_1C2D5C9E8(v7, v8, v9, v10, v18, v13);
  return sub_1C2D5CAE4(v7, v8, v9, v10, v18, v13);
}

uint64_t sub_1C2D556CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C2E75C14();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100[-v8];
  v10 = sub_1C2E75BF4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C2E71934();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v100[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100[-v16];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v100[-v20];
  if (!a1)
  {
    sub_1C2E75BB4();
    v33 = v107;
    v34 = v108;
    (*(v107 + 16))(v106, v9, v108);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v37 = sub_1C2E75C84();
    v39 = v38;
    (*(v33 + 8))(v9, v34);
    *&v112 = v37;
    *(&v112 + 1) = v39;
    sub_1C2C74960();
    v40 = sub_1C2E748A4();
    v42 = v41;
    *&v109 = v40;
    *(&v109 + 1) = v41;
    v44 = v43 & 1;
    *&v110 = v43 & 1;
    *(&v110 + 1) = v45;
    LOWORD(v111) = 0;
    BYTE2(v111) = 1;
    sub_1C2C72330(v40, v41, v43 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060928);
    sub_1C2D5CC64();
    sub_1C2E73F44();
    v109 = v112;
    v110 = v113;
    HIWORD(v111) = v115 != 0;
    LOWORD(v111) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060910);
    sub_1C2D5CBE0(&qword_1EC060918, &qword_1EC060910, &unk_1C2E846D8, sub_1C2D5CC64);
    sub_1C2E73F44();
    sub_1C2C72340(v40, v42, v44);

    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_1C2E75BB4();
    v22 = v107;
    v23 = v108;
    (*(v107 + 16))(v106, v9, v108);
    type metadata accessor for StringDummy();
    v24 = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v26 = sub_1C2E75C84();
    v28 = v27;
    (*(v22 + 8))(v9, v23);
    *&v112 = v26;
    *(&v112 + 1) = v28;
    sub_1C2C74960();
    *&v109 = sub_1C2E748A4();
    *(&v109 + 1) = v30;
    *&v110 = v29 & 1;
    *(&v110 + 1) = v31;
    v111 = 0x1000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060910);
    sub_1C2D5CBE0(&qword_1EC060918, &qword_1EC060910, &unk_1C2E846D8, sub_1C2D5CC64);
    result = sub_1C2E73F44();
LABEL_5:
    v46 = v112;
    v47 = v113;
    v48 = v114 | (v115 << 16);
    v49 = v116;
    goto LABEL_21;
  }

  v104 = a2;
  v102 = v2;
  MEMORY[0x1C6923240](v19);
  sub_1C2E718F4();
  v105 = sub_1C2E72284();
  v51 = v50;
  v52 = *(v12 + 8);
  v52(v17, v11);
  v53 = (v52)(v21, v11);
  if (v51)
  {
    v103 = v51;
  }

  else
  {
    MEMORY[0x1C6923240](v53);
    v105 = sub_1C2E718B4();
    v103 = v54;
    v52(v21, v11);
  }

  if (sub_1C2E72804() == 1)
  {
    sub_1C2E75BE4();
    sub_1C2E75BD4();
    sub_1C2E75BC4();

    sub_1C2E75BD4();
    sub_1C2E75C04();
    v55 = v107;
    v56 = v108;
    (*(v107 + 16))(v106, v9, v108);
    type metadata accessor for StringDummy();
    v57 = swift_getObjCClassFromMetadata();
    v58 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v59 = sub_1C2E75C84();
    v61 = v60;
    (*(v55 + 8))(v9, v56);
    *&v112 = v59;
    *(&v112 + 1) = v61;
    sub_1C2C74960();
    v62 = sub_1C2E748A4();
    v64 = v62;
    v65 = v63;
    *&v109 = v62;
    *(&v109 + 1) = v63;
    v67 = v66 & 1;
    *&v110 = v66 & 1;
    *(&v110 + 1) = v68;
    LOBYTE(v111) = 0;
  }

  else
  {
    MEMORY[0x1C6923240]();
    v69 = sub_1C2E718B4();
    v71 = v70;
    v52(v14, v11);
    type metadata accessor for CallTranslationLanguagePicker();
    if (v69 == sub_1C2E718B4() && v71 == v72)
    {
    }

    else
    {
      v73 = sub_1C2E767A4();

      if ((v73 & 1) == 0)
      {
        *&v112 = v105;
        *(&v112 + 1) = v103;
        sub_1C2C74960();
        *&v109 = sub_1C2E748A4();
        *(&v109 + 1) = v98;
        *&v110 = v97 & 1;
        *(&v110 + 1) = v99;
        LOWORD(v111) = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060310);
        sub_1C2D40798();
        sub_1C2E73F44();
        goto LABEL_17;
      }
    }

    sub_1C2E75BE4();
    sub_1C2E75BD4();
    sub_1C2E75BC4();

    sub_1C2E75BD4();
    sub_1C2E75C04();
    v74 = v107;
    v75 = v108;
    (*(v107 + 16))(v106, v9, v108);
    type metadata accessor for StringDummy();
    v76 = swift_getObjCClassFromMetadata();
    v77 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v78 = sub_1C2E75C84();
    v80 = v79;
    (*(v74 + 8))(v9, v75);
    *&v112 = v78;
    *(&v112 + 1) = v80;
    sub_1C2C74960();
    v62 = sub_1C2E748A4();
    v64 = v62;
    v65 = v63;
    *&v109 = v62;
    *(&v109 + 1) = v63;
    v67 = v81 & 1;
    *&v110 = v81 & 1;
    *(&v110 + 1) = v82;
    LOBYTE(v111) = 1;
  }

  sub_1C2C72330(v62, v63, v67);

  sub_1C2E73F44();
  v109 = v112;
  v110 = v113;
  LOWORD(v111) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060310);
  sub_1C2D40798();
  sub_1C2E73F44();
  sub_1C2C72340(v64, v65, v67);

LABEL_17:
  v83 = v114;
  v84 = HIBYTE(v114);
  if (HIBYTE(v114))
  {
    v85 = 256;
  }

  else
  {
    v85 = 0;
  }

  LODWORD(v103) = v114;
  v109 = v112;
  v110 = v113;
  LOWORD(v111) = v85 | v114;
  BYTE2(v111) = 0;
  v86 = v112;
  v87 = v113;
  v107 = v113;
  v108 = v112;
  v88 = *(&v113 + 1);
  v106 = *(&v113 + 1);
  LODWORD(v105) = HIBYTE(v114);
  sub_1C2D5CA90(v112, *(&v112 + 1), v113, *(&v113 + 1), v114, SHIBYTE(v114));
  sub_1C2D5CA90(v86, *(&v86 + 1), v87, v88, v83, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060928);
  sub_1C2D5CC64();
  sub_1C2E73F44();
  v89 = v112;
  v90 = v113;
  v102 = *(&v113 + 1);
  v91 = v114;
  v101 = v115;
  v109 = v112;
  v110 = v113;
  HIWORD(v111) = v115 != 0;
  LOWORD(v111) = v114;
  sub_1C2D5CA3C(v112, *(&v112 + 1), v113, *(&v113 + 1), v114, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060910);
  sub_1C2D5CBE0(&qword_1EC060918, &qword_1EC060910, &unk_1C2E846D8, sub_1C2D5CC64);
  sub_1C2E73F44();
  v93 = v107;
  v92 = v108;
  v94 = v106;
  v95 = v103;
  v96 = v105;
  sub_1C2D5CB8C(v108, *(&v86 + 1), v107, v106, v103, v105);
  sub_1C2D5CB38(v89, *(&v89 + 1), v90, v102, v91, v101);
  result = sub_1C2D5CB8C(v92, *(&v86 + 1), v93, v94, v95, v96);
  v46 = v112;
  v47 = v113;
  v48 = v114 | (v115 << 16);
  v49 = v116;
  a2 = v104;
LABEL_21:
  *a2 = v46;
  *(a2 + 16) = v47;
  *(a2 + 32) = v48;
  *(a2 + 34) = BYTE2(v48);
  *(a2 + 35) = v49;
  return result;
}

uint64_t sub_1C2D563AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, unint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19)
{
  v90 = a8;
  v99 = a7;
  v89 = a6;
  v97 = a5;
  v88 = a4;
  v106 = a3;
  v87 = a2;
  v102 = a9;
  v98 = a19;
  v108 = a17;
  v109 = a18;
  v107 = a16;
  LODWORD(v85) = a15;
  v105 = a14;
  v110 = a10;
  v20 = sub_1C2E740C4();
  v100 = *(v20 - 8);
  v101 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CallTranslationLanguagePicker();
  v23 = v22 - 8;
  v82 = *(v22 - 8);
  v24 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LanguageSelectionView();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608C8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v75 - v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608C0);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v75 - v29;
  v30 = *(a1 + *(v23 + 64));
  v83 = *(&a11 + 1);
  v86 = a11;
  v103 = a12;
  v78 = v30;
  if (*(&a11 + 1))
  {
    v111 = a11;
    v112 = a12;

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    MEMORY[0x1C6925DB0](&v114, v31);
    v32 = v114;
    if (v114 < 2)
    {
      sub_1C2D4D750(v114);
      v32 = 0;
    }

    v84 = v32;
  }

  else
  {

    v84 = 0;
  }

  v33 = swift_allocObject();
  v80 = v33;
  v75 = a13;
  v34 = v105;
  *(v33 + 16) = a13;
  *(v33 + 24) = v34;
  v35 = v85 & 1;
  *(v33 + 32) = v85 & 1;
  v81 = a1;
  v36 = v104;
  sub_1C2D4D0EC(a1, v104);
  v37 = (*(v82 + 80) + 40) & ~*(v82 + 80);
  v85 = *(v82 + 80);
  v82 = v37;
  v38 = (v24 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = v38;
  v39 = swift_allocObject();
  v40 = v108;
  *(v39 + 2) = v107;
  *(v39 + 3) = v40;
  *(v39 + 4) = v109;
  v79 = type metadata accessor for CallTranslationLanguagePicker;
  sub_1C2D5C804(v36, v39 + v37, type metadata accessor for CallTranslationLanguagePicker);
  v41 = (v39 + v38);
  v42 = v86;
  v43 = v83;
  *v41 = v86;
  v41[1] = v43;
  v41[2] = v103;
  v44 = v39 + ((v38 + 31) & 0xFFFFFFFFFFFFFFF8);
  v45 = v105;
  *v44 = v75;
  *(v44 + 1) = v45;
  v44[16] = v35;
  *v27 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  swift_storeEnumTagMultiPayload();
  v76 = v25[16];
  v114 = 0;

  swift_retain_n();
  swift_retain_n();
  v46 = v109;
  sub_1C2D5B6E4(v109);
  sub_1C2D5C724(v42, v43, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  sub_1C2E75174();
  *(v27 + v76) = v111;
  v47 = v25[17];
  v114 = 0;
  sub_1C2E75174();
  *(v27 + v47) = v111;
  *(v27 + v25[13]) = v78;
  v48 = (v27 + v25[5]);
  v49 = v106;
  *v48 = v87;
  v48[1] = v49;
  v50 = (v27 + v25[6]);
  v51 = v97;
  *v50 = v88;
  v50[1] = v51;
  v52 = (v27 + v25[7]);
  v53 = v99;
  *v52 = v89;
  v52[1] = v53;
  v54 = (v27 + v25[8]);
  v55 = v110;
  *v54 = v90;
  v54[1] = v55;
  *(v27 + v25[9]) = 1;
  *(v27 + v25[10]) = 0;
  *(v27 + v25[11]) = v84;
  v56 = (v27 + v25[12]);
  v57 = v80;
  *v56 = sub_1C2D5C640;
  v56[1] = v57;
  v58 = (v27 + v25[14]);
  *v58 = 0;
  v58[1] = 0;
  v59 = (v27 + v25[15]);
  *v59 = sub_1C2D5C64C;
  v59[1] = v39;
  v60 = v104;
  sub_1C2D4D0EC(v81, v104);
  v61 = v77;
  v62 = swift_allocObject();
  v63 = v108;
  *(v62 + 2) = v107;
  *(v62 + 3) = v63;
  v64 = v46;
  *(v62 + 4) = v46;
  sub_1C2D5C804(v60, v62 + v82, v79);
  *(v62 + v61) = v98;
  v65 = v91;
  sub_1C2D5C804(v27, v91, type metadata accessor for LanguageSelectionView);
  v66 = v94;
  v67 = (v65 + *(v94 + 36));
  *v67 = sub_1C2D5C770;
  v67[1] = v62;
  v67[2] = 0;
  v67[3] = 0;

  sub_1C2D5B6E4(v64);

  v68 = v96;
  sub_1C2E73D34();
  v69 = sub_1C2D5C03C();
  v70 = MEMORY[0x1E697C7E0];
  v71 = v92;
  v72 = v101;
  sub_1C2E74B94();
  (*(v100 + 8))(v68, v72);
  sub_1C2C73644(v65, &qword_1EC0608C8);
  *&v111 = v66;
  *(&v111 + 1) = v72;
  v112 = v69;
  v113 = v70;
  swift_getOpaqueTypeConformance2();
  v73 = v95;
  sub_1C2E74BC4();
  return (*(v93 + 8))(v71, v73);
}

uint64_t sub_1C2D56C14(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, char a12)
{
  if (a2)
  {
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v34 = a2;
    swift_retain_n();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
    sub_1C2E75394();
    v32[4] = a2;
    if (a8)
    {
      v35 = a7;
      v36 = a8;
      v37 = a9;

      MEMORY[0x1C6925DB0](&v34, v16);
      v17 = v34;
      if (v34 < 2)
      {
        sub_1C2D4D750(v34);
        v17 = 0;
      }

      v33 = v17;
    }

    else
    {
      v33 = 0;
    }

    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    while (v18 != 2)
    {
      if (v32[v18++ + 4])
      {

        MEMORY[0x1C6926780](v22);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        v20 = v35;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
    swift_arrayDestroy();
    v35 = v19;
    if (v20 >> 62)
    {
LABEL_29:
      v23 = sub_1C2E764E4();
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_15:
        v31 = a6;
        v24 = 0;
        a6 = v20 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C6927010](v24, v20);
            v25 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              v26 = v35;
              a6 = v31;
              goto LABEL_31;
            }
          }

          else
          {
            if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v25 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_26;
            }
          }

          if (sub_1C2E72804() == 1 || sub_1C2E72804() == 2)
          {
          }

          else
          {
            sub_1C2E76614();
            sub_1C2E76644();
            sub_1C2E76654();
            sub_1C2E76624();
          }

          ++v24;
          if (v25 == v23)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v27 = (a6 + *(type metadata accessor for CallTranslationLanguagePicker() + 72));
    v29 = *v27;
    v28 = v27[1];
    v35 = v29;
    v36 = v28;
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
    sub_1C2E75194();
    sub_1C2D56F58();
  }

  v35 = a10;
  v36 = a11;
  LOBYTE(v37) = a12 & 1;
  LOBYTE(v34) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E270);
  return sub_1C2E75394();
}

uint64_t sub_1C2D56F58()
{
  v1 = v0;
  v2 = type metadata accessor for CallTranslationLanguagePicker();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v1 + *(v3 + 80));
  v12 = *v10;
  v11 = v10[1];
  v22 = v12;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
  sub_1C2E75184();
  if (v21 >> 62)
  {
    v13 = sub_1C2E764E4();
  }

  else
  {
    v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= 1)
  {
    v15 = sub_1C2E75E74();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_1C2D4D0EC(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1C2E75E34();
    v16 = sub_1C2E75E24();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_1C2D5C804(v6, v18 + v17, type metadata accessor for CallTranslationLanguagePicker);
    sub_1C2D22B9C(0, 0, v9, &unk_1C2E84688, v18);
  }

  return result;
}

uint64_t sub_1C2D571A8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](v14, v9);
  v10 = v14[0];
  if (v14[0] >= 2)
  {
    type metadata accessor for CallTranslationLanguagePicker();
    MEMORY[0x1C6923240]();
    v12 = sub_1C2E71934();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    sub_1C2E72674();
    sub_1C2D4D750(v10);
  }

  else
  {
    sub_1C2D4D750(v14[0]);
    type metadata accessor for CallTranslationLanguagePicker();
    v11 = sub_1C2E71934();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_1C2E72674();
  }

  return sub_1C2E726D4();
}

uint64_t sub_1C2D57354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, void (*a8)(char *, char *, uint64_t)@<X7>, char *a9@<X8>)
{
  v72 = a8;
  v71 = a7;
  v70 = a6;
  v69 = a5;
  v68 = a4;
  v73 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060948);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v64 - v16;
  v17 = type metadata accessor for CallTranslationLanguagePicker();
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060950);
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v64 - v21;
  v79 = sub_1C2E75424();
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v89 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v76 = &v64 - v28;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060958);
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v78 = &v64 - v31;
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = a3;
  v92 = a1;
  v93 = a2;
  v94 = a3;
  v33 = a3;

  sub_1C2D5B6E4(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060960);
  sub_1C2C94F38(&qword_1EC060968, &qword_1EC060960);
  sub_1C2E751C4();
  sub_1C2E75414();
  v95 = v68;
  swift_getKeyPath();
  v34 = v66;
  sub_1C2D4D0EC(v69, v66);
  v35 = (*(v67 + 80) + 40) & ~*(v67 + 80);
  v36 = (v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v65 = a1;
  v37[2] = a1;
  v37[3] = a2;
  v37[4] = v33;
  sub_1C2D5C804(v34, v37 + v35, type metadata accessor for CallTranslationLanguagePicker);
  v38 = (v37 + v36);
  v39 = v70;
  v40 = v71;
  *v38 = v70;
  v38[1] = v40;
  v41 = v72;
  v38[2] = v72;

  sub_1C2D5B6E4(v33);

  sub_1C2D5C724(v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060970);
  sub_1C2C94F38(&qword_1EC060978, &qword_1EC060618);
  sub_1C2C94F38(&qword_1EC060980, &qword_1EC060970);
  sub_1C2E75434();
  v42 = v74;
  sub_1C2E75414();
  v43 = swift_allocObject();
  v43[2] = v65;
  v43[3] = a2;
  v43[4] = v33;

  sub_1C2D5B6E4(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060988);
  sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
  v44 = v81;
  sub_1C2E751C4();
  v71 = *(v80 + 16);
  v45 = v75;
  v46 = v77;
  v71(v75, v78, v77);
  v47 = *(v82 + 16);
  v48 = v79;
  v47(v86, v76, v79);
  v72 = *(v84 + 16);
  v72(v87, v85, v88);
  v47(v89, v42, v48);
  v49 = *(v91 + 16);
  v50 = v83;
  v49(v83, v44, v90);
  v51 = v73;
  v71(v73, v45, v46);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060998);
  v53 = v79;
  v54 = v47;
  v47(&v51[v52[12]], v86, v79);
  v72(&v51[v52[16]], v87, v88);
  v55 = v53;
  v54(&v51[v52[20]], v89, v53);
  v56 = v90;
  v49(&v51[v52[24]], v50, v90);
  v57 = *(v91 + 8);
  v91 += 8;
  v57(v81, v56);
  v58 = *(v82 + 8);
  v58(v74, v53);
  v59 = *(v84 + 8);
  v60 = v88;
  v59(v85, v88);
  v58(v76, v53);
  v61 = *(v80 + 8);
  v62 = v77;
  v61(v78, v77);
  v57(v83, v90);
  v58(v89, v55);
  v59(v87, v60);
  v58(v86, v55);
  return (v61)(v75, v62);
}

uint64_t sub_1C2D57D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v43 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609E0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v37 - v6;
  v7 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C2E75C14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060988);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609E8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v39 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v47 = a1;
  v48 = a2;
  v49 = v38;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](&v45, v23);
  if (v45)
  {
    if (v45 != 1)
    {
      sub_1C2D4D750(v45);
    }

    sub_1C2E75BB4();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v26 = sub_1C2E75C84();
    v28 = v27;
    (*(v9 + 8))(v14, v8);
    v45 = v26;
    v46 = v28;
    v44 = 0;
    sub_1C2E753B4();
    sub_1C2C74960();
    sub_1C2E752C4();
  }

  else
  {
    sub_1C2E75BB4();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for StringDummy();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v31 = sub_1C2E75C84();
    v33 = v32;
    (*(v9 + 8))(v14, v8);
    v45 = v31;
    v46 = v33;
    v44 = 1;
    sub_1C2E753B4();
    sub_1C2C74960();
    sub_1C2E752C4();
  }

  v34 = v40;
  (*(v40 + 16))(v42, v17, v15);
  swift_storeEnumTagMultiPayload();
  sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
  sub_1C2E73F44();
  (*(v34 + 8))(v17, v15);
  v35 = v39;
  sub_1C2C736A4(v22, v39, &qword_1EC0609E8);
  sub_1C2C736A4(v35, v43, &qword_1EC0609E8);
  sub_1C2C73644(v22, &qword_1EC0609E8);
  return sub_1C2C73644(v35, &qword_1EC0609E8);
}

uint64_t sub_1C2D5834C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v15 = type metadata accessor for CallTranslationLanguagePicker();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = *a1;
  sub_1C2D4D0EC(a5, &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v18;
  sub_1C2D5C804(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CallTranslationLanguagePicker);
  v21 = (v20 + ((v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v26;
  v22 = v27;
  *v21 = a6;
  v21[1] = v23;
  v21[2] = v22;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v18;
  v33 = a5;

  sub_1C2D5B6E4(a4);

  sub_1C2D5C724(a6, v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609A0);
  sub_1C2D5CEC4();
  return sub_1C2E751C4();
}

uint64_t sub_1C2D58530(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v30 = a4;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  sub_1C2E75394();
  v28[4] = a4;
  if (a7)
  {
    v31 = a6;
    v32 = a7;
    v33 = a8;

    MEMORY[0x1C6925DB0](&v30, v13);
    v14 = v30;
    if (v30 < 2)
    {
      sub_1C2D4D750(v30);
      v14 = 0;
    }

    v29 = v14;
  }

  else
  {
    v29 = 0;
  }

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  while (v15 != 2)
  {
    if (v28[v15++ + 4])
    {

      MEMORY[0x1C6926780](v19);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      v17 = v31;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  swift_arrayDestroy();
  v31 = v16;
  if (v17 >> 62)
  {
LABEL_28:
    v20 = sub_1C2E764E4();
    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_14:
      v21 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6927010](v21, v17);
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            v23 = v31;
            goto LABEL_30;
          }
        }

        else
        {
          if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_25;
          }
        }

        if (sub_1C2E72804() == 1 || sub_1C2E72804() == 2)
        {
        }

        else
        {
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
        }

        ++v21;
        if (v22 == v20)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v24 = (a5 + *(type metadata accessor for CallTranslationLanguagePicker() + 72));
  v26 = *v24;
  v25 = v24[1];
  v31 = v26;
  v32 = v25;
  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
  sub_1C2E75194();
  return sub_1C2D56F58();
}

uint64_t sub_1C2D58820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v70 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609C8);
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v56 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609D0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v56 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609D8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v56 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0609B8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v56 - v9;
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060988);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v56 - v26;
  v74 = a1;
  v75 = a2;
  v76 = v65;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](&v72, v27);
  v28 = v72;
  if (v72 >= 2 && (sub_1C2E72834(), (sub_1C2E727F4() & 1) != 0))
  {
    MEMORY[0x1C6923240]();
    sub_1C2E718F4();
    v29 = MEMORY[0x1C6922CA0](v22, v19);
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v19, v10);
    if (!v31)
    {
      v29 = sub_1C2E718B4();
      v31 = v33;
    }

    v32(v22, v10);
    v72 = v29;
    v73 = v31;
    v71 = 1;
    sub_1C2E753B4();
    sub_1C2C74960();
    v34 = v59;
    sub_1C2E752C4();
    v35 = v64;
    v36 = v66;
    (*(v64 + 16))(v61, v34, v66);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
    sub_1C2C94F38(&qword_1EC0609C0, &qword_1EC0609C8);
    v37 = v62;
    sub_1C2E73F44();
    sub_1C2C736A4(v37, v69, &qword_1EC0609B8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D5CF7C();
    sub_1C2E73F44();
    sub_1C2D4D750(v28);
    sub_1C2C73644(v37, &qword_1EC0609B8);
    return (*(v35 + 8))(v34, v36);
  }

  else
  {
    sub_1C2D4D750(v28);
    if (sub_1C2E72804() == 2 || sub_1C2E72804() == 1)
    {
      MEMORY[0x1C6923240]();
      sub_1C2E718F4();
      v39 = MEMORY[0x1C6922CA0](v13, v19);
      v41 = v40;
      v42 = *(v11 + 8);
      v42(v19, v10);
      if (!v41)
      {
        v39 = sub_1C2E718B4();
        v41 = v43;
      }

      v42(v13, v10);
      v72 = v39;
      v73 = v41;
      v71 = 0;
      sub_1C2E753B4();
      sub_1C2C74960();
      sub_1C2E752C4();
      v44 = v64;
      v45 = v66;
      (*(v64 + 16))(v69, v24, v66);
      swift_storeEnumTagMultiPayload();
      sub_1C2D5CF7C();
      sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
      sub_1C2E73F44();
      return (*(v44 + 8))(v24, v45);
    }

    else
    {
      MEMORY[0x1C6923240]();
      sub_1C2E718F4();
      v46 = MEMORY[0x1C6922CA0](v16, v19);
      v48 = v47;
      v49 = *(v11 + 8);
      v49(v19, v10);
      if (!v48)
      {
        v46 = sub_1C2E718B4();
        v48 = v50;
      }

      v49(v16, v10);
      LOBYTE(v72) = 0;
      v51 = sub_1C2E753B4();
      v72 = v46;
      v73 = v48;
      MEMORY[0x1EEE9AC00](v51);
      *(&v56 - 4) = &v72;
      *(&v56 - 3) = 0xD000000000000011;
      *(&v56 - 2) = 0x80000001C2E97040;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
      sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
      v52 = v57;
      sub_1C2E752B4();

      v53 = v58;
      v54 = v63;
      (*(v58 + 16))(v61, v52, v63);
      swift_storeEnumTagMultiPayload();
      sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
      sub_1C2C94F38(&qword_1EC0609C0, &qword_1EC0609C8);
      v55 = v62;
      sub_1C2E73F44();
      sub_1C2C736A4(v55, v69, &qword_1EC0609B8);
      swift_storeEnumTagMultiPayload();
      sub_1C2D5CF7C();
      sub_1C2E73F44();
      sub_1C2C73644(v55, &qword_1EC0609B8);
      return (*(v53 + 8))(v52, v54);
    }
  }
}

uint64_t sub_1C2D591F0()
{
  v0 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C2E75C14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  sub_1C2E75BB4();
  (*(v2 + 16))(v4, v7, v1);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v10 = sub_1C2E75C84();
  v12 = v11;
  (*(v2 + 8))(v7, v1);
  v15 = v10;
  v16 = v12;
  v14[15] = 0;
  sub_1C2E753B4();
  sub_1C2C74960();
  return sub_1C2E752C4();
}

uint64_t sub_1C2D59430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_1C2E73C24();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060930);
  return sub_1C2D594C8(a1, a2, a3, a4, a5, a6, a7 + *(v14 + 44));
}

uint64_t sub_1C2D594C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v59 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060938);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v50 - v14;
  v64 = a1;
  v65 = a2;
  sub_1C2C74960();

  v15 = sub_1C2E748A4();
  v17 = v16;
  v19 = v18;
  sub_1C2E74584();
  v20 = sub_1C2E74764();
  v22 = v21;
  v24 = v23;
  sub_1C2C72340(v15, v17, v19 & 1);

  LODWORD(v64) = sub_1C2E740D4();
  v25 = sub_1C2E74794();
  v60 = v26;
  v54 = v27;
  v55 = v28;
  sub_1C2C72340(v20, v22, v24 & 1);

  v63[1] = v56;
  v63[2] = v57;
  v63[3] = v58;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0606E0);
  MEMORY[0x1C6925DB0](v63, v29);
  v30 = v63[0];
  sub_1C2D556CC(v63[0], &v64);
  sub_1C2D4D750(v30);
  v31 = v64;
  v50 = v64;
  v32 = v66;
  v57 = v67;
  v58 = v65;
  v52 = v69;
  v53 = v68;
  LODWORD(v59) = v68 | (v69 << 16);
  LODWORD(v56) = v70;
  v33 = sub_1C2E75064();
  v34 = sub_1C2E740F4();
  v35 = v61;
  v36 = (v61 + *(v11 + 44));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0) + 28);
  v38 = *MEMORY[0x1E69816C8];
  v39 = sub_1C2E750B4();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  *v35 = v33;
  *(v35 + 8) = v34;
  v40 = v62;
  sub_1C2C736A4(v35, v62, &qword_1EC060938);
  v41 = v25;
  v51 = v25;
  *a7 = v25;
  v42 = v60;
  *(a7 + 8) = v60;
  v54 &= 1u;
  *(a7 + 16) = v54;
  *(a7 + 24) = v55;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  v44 = v57;
  v43 = v58;
  *(a7 + 48) = v31;
  *(a7 + 56) = v43;
  *(a7 + 64) = v32;
  *(a7 + 72) = v44;
  v45 = v53;
  *(a7 + 82) = v52;
  *(a7 + 80) = v45;
  LOBYTE(v37) = v56;
  *(a7 + 83) = v56;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060940);
  sub_1C2C736A4(v40, a7 + *(v46 + 80), &qword_1EC060938);
  LOBYTE(v31) = v54;
  sub_1C2C72330(v41, v42, v54);

  v47 = v50;
  v48 = v59;
  sub_1C2D5C9E8(v50, v43, v32, v44, v59, v37);
  sub_1C2C73644(v61, &qword_1EC060938);
  sub_1C2C73644(v62, &qword_1EC060938);
  sub_1C2D5CAE4(v47, v43, v32, v44, v48, v37);
  sub_1C2C72340(v51, v60, v31);
}

uint64_t sub_1C2D59900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CallTranslationLanguagePicker();
  sub_1C2C736A4(v1 + *(v10 + 36), v9, &qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E732B4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2D59B08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C2E75B44();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1C2D59BB4()
{
  v1 = *v0;
  sub_1C2E76854();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1C6927290](0);
      sub_1C2E72834();
      sub_1C2D5C0F8(&qword_1EC0606D8, MEMORY[0x1E6995FB0]);
      sub_1C2E75B64();
      return sub_1C2E76894();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2D59C74()
{
  if (!*v0)
  {
    v1 = 1;
    return MEMORY[0x1C6927290](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x1C6927290](v1);
  }

  MEMORY[0x1C6927290](0);
  sub_1C2E72834();
  sub_1C2D5C0F8(&qword_1EC0606D8, MEMORY[0x1E6995FB0]);
  return sub_1C2E75B64();
}

uint64_t sub_1C2D59D30()
{
  v1 = *v0;
  sub_1C2E76854();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1C6927290](0);
      sub_1C2E72834();
      sub_1C2D5C0F8(&qword_1EC0606D8, MEMORY[0x1E6995FB0]);
      sub_1C2E75B64();
      return sub_1C2E76894();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1C6927290](v2);
  return sub_1C2E76894();
}

uint64_t sub_1C2D59DEC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_1C2E72834();
  return sub_1C2E727F4() & 1;
}

uint64_t sub_1C2D59E60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C2E71934();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v17 = *(a2 + *(type metadata accessor for CallTranslationLanguagePicker() + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060640);
  v10 = sub_1C2E75184();
  v11 = v18;
  if (v18 >= 2)
  {
    v13 = MEMORY[0x1C6923240](v10);
    MEMORY[0x1C6923240](v13);
    v14 = sub_1C2D4E8D0(v9, v6);
    sub_1C2D4D750(v11);
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    v12 = v14 ^ 1;
  }

  else
  {
    sub_1C2D4D750(v18);
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_1C2D5A008()
{
  v1 = sub_1C2E72F24();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E72F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1C2E72FB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v0 + *(type metadata accessor for CallTranslationLanguagePicker() + 76));
  v17 = *v15;
  v16 = v15[1];
  v30 = v17;
  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608F8);
  sub_1C2E75184();
  sub_1C2E72F34();

  sub_1C2E72FA4();
  (*(v5 + 104))(v7, *MEMORY[0x1E6977D40], v4);
  v18 = sub_1C2E72F84();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  if ((v18 & 1) != 0 && (v21 = v28, v20 = v29, v22 = *(v28 + 104), v22(v3, *MEMORY[0x1E6977B40], v29), v23 = sub_1C2E72F74(), v24 = *(v21 + 8), v24(v3, v20), (v23 & 1) == 0))
  {
    v22(v3, *MEMORY[0x1E6977B50], v20);
    v25 = sub_1C2E72F74();
    v24(v3, v20);
  }

  else
  {
    v25 = 0;
  }

  (*(v12 + 8))(v14, v11);
  return v25 & 1;
}

uint64_t sub_1C2D5A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_1C2E71934();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = sub_1C2E75E34();
  v4[23] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();
  v4[24] = v7;
  v4[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2D5A448, v7, v6);
}

uint64_t sub_1C2D5A448()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for CallTranslationLanguagePicker();
  *(v0 + 208) = v2;
  v3 = (v1 + *(v2 + 72));
  v4 = *v3;
  *(v0 + 216) = *v3;
  v5 = v3[1];
  *(v0 + 16) = v4;
  *(v0 + 224) = v5;
  *(v0 + 24) = v5;
  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060718);
  sub_1C2E75184();
  v8 = *(v0 + 112);
  *(v0 + 240) = v8;
  if (v8 >> 62)
  {
    v9 = sub_1C2E764E4();
    *(v0 + 248) = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 248) = v9;
    if (v9)
    {
LABEL_3:
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        *(v0 + 272) = 0;
        if ((*(v0 + 240) & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C6927010](0);
        }

        else
        {
        }

        *(v0 + 280) = v10;
        v11 = *(v0 + 168);
        v12 = *(v0 + 152);
        v13 = *(v0 + 160);
        MEMORY[0x1C6923240]();
        *(v0 + 288) = sub_1C2E718B4();
        *(v0 + 296) = v14;
        (*(v13 + 8))(v11, v12);
        *(v0 + 304) = sub_1C2E75E24();
        v15 = sub_1C2E75DD4();
        v7 = v16;
        *(v0 + 312) = v15;
        *(v0 + 320) = v16;
        v9 = sub_1C2D5A730;
        v6 = v15;
      }

      return MEMORY[0x1EEE6DFA0](v9, v6, v7);
    }
  }

  v17 = *(v0 + 144);

  *(v0 + 32) = *(v17 + 32);
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060708);
  sub_1C2E75194();
  if (sub_1C2D5A008())
  {
    v18 = (*(v0 + 144) + *(*(v0 + 208) + 68));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 80) = v19;
    *(v0 + 88) = v20;
    *(v0 + 105) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    *(v0 + 48) = v22;
    *(v0 + 56) = v21;
    sub_1C2E75184();
    sub_1C2E72654();

    *(v0 + 64) = v22;
    *(v0 + 72) = v21;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
  }

  sub_1C2E75194();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1C2D5A730()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = sub_1C2E75E24();
  v0[41] = v3;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[43] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608F0);
  *v5 = v0;
  v5[1] = sub_1C2D5A84C;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 12, v3, v7, 0xD000000000000026, 0x80000001C2E972C0, sub_1C2D5C95C, v4, v6);
}

uint64_t sub_1C2D5A84C()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1C2D5A9D0, v3, v2);
}

uint64_t sub_1C2D5A9D0()
{

  *(v0 + 352) = *(v0 + 96);
  *(v0 + 106) = *(v0 + 104);
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1C2D5AA44, v1, v2);
}

uint64_t sub_1C2D5AA44()
{
  v1 = *(v0 + 106);

  v5 = *(v0 + 256);
  if (v1)
  {
    v6 = *(v0 + 264);
  }

  else
  {
    v7 = *(v0 + 352);
    v8 = __OFADD__(v5, v7);
    v5 += v7;
    if (v8)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v6 = v5;
  }

  v9 = *(v0 + 272) + 1;
  if (v9 != *(v0 + 248))
  {
    *(v0 + 264) = v6;
    *(v0 + 272) = v9;
    *(v0 + 256) = v5;
    if ((*(v0 + 240) & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1C6927010]();
    }

    else
    {
    }

    *(v0 + 280) = v14;
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    MEMORY[0x1C6923240]();
    *(v0 + 288) = sub_1C2E718B4();
    *(v0 + 296) = v22;
    (*(v21 + 8))(v19, v20);
    *(v0 + 304) = sub_1C2E75E24();
    v23 = sub_1C2E75DD4();
    v4 = v24;
    *(v0 + 312) = v23;
    *(v0 + 320) = v24;
    v2 = sub_1C2D5A730;
    v3 = v23;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v10 = *(v0 + 144);

  *(v0 + 32) = *(v10 + 32);
  *(v0 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060708);
  sub_1C2E75194();
  if (sub_1C2D5A008())
  {
    v11 = (*(v0 + 144) + *(*(v0 + 208) + 68));
    v12 = *v11;
    v13 = *(v11 + 1);
    *(v0 + 80) = v12;
    *(v0 + 88) = v13;
    *(v0 + 105) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  }

  else
  {
    v15 = *(v0 + 224);
    v16 = *(v0 + 216);
    *(v0 + 48) = v16;
    *(v0 + 56) = v15;
    sub_1C2E75184();
    sub_1C2E72654();

    *(v0 + 64) = v16;
    *(v0 + 72) = v15;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
  }

  sub_1C2E75194();

  v17 = *(v0 + 8);

  return v17();
}

void sub_1C2D5ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060900);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  (*(v7 + 32))(&v12[v11], v9, v6);
  v13 = objc_allocWithZone(MEMORY[0x1E6982C00]);
  aBlock[4] = sub_1C2D5C964;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2D5B72C;
  aBlock[3] = &block_descriptor_99;
  v14 = _Block_copy(aBlock);

  v15 = [v13 initWithTaskHint:9 useDedicatedMachPort:0 observations:v14];
  _Block_release(v14);

  swift_beginAccess();
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;
}

void sub_1C2D5AF00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a2;
  v30 = a4;
  v28 = sub_1C2E71934();
  v7 = *(v28 - 8);
  v8 = MEMORY[0x1EEE9AC00](v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  if (a1)
  {
    v11 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v29 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
    {
      v13 = 0;
      v27 = v29 & 0xC000000000000001;
      v14 = v7 + 1;
      while (1)
      {
        if (v27)
        {
          v15 = MEMORY[0x1C6927010](v13, v29, v8);
        }

        else
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_18;
          }

          v15 = *(v29 + 8 * v13 + 32);
        }

        v7 = v15;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = [v15 locale];
        sub_1C2E718E4();

        v18 = sub_1C2E718B4();
        v20 = v19;
        (*v14)(v10, v28);
        if (v18 == a3 && v20 == v30)
        {

LABEL_16:
          v31 = [v7 downloadSize];
          v32 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060900);
          sub_1C2E75DE4();

          goto LABEL_21;
        }

        v21 = sub_1C2E767A4();

        if (v21)
        {
          goto LABEL_16;
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }

LABEL_20:
  v31 = 0;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060900);
  sub_1C2E75DE4();
LABEL_21:
  v22 = v26;
  swift_beginAccess();
  v23 = *(v22 + 16);
  if (v23)
  {
    [v23 cancel];
  }

  swift_beginAccess();
  v24 = *(v22 + 16);
  *(v22 + 16) = 0;
}

void sub_1C2D5B1F0()
{
  sub_1C2CD77BC(319, &qword_1EC05E710);
  if (v0 <= 0x3F)
  {
    sub_1C2CD77BC(319, &qword_1EC0606B0);
    if (v1 <= 0x3F)
    {
      sub_1C2CD7758(319, &qword_1EC05CA50, &qword_1EC05E0F8, &unk_1C2E7C0D0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C2D5B460(319, &qword_1EC05BAA8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C2CD77BC(319, &qword_1EC0606B8);
          if (v4 <= 0x3F)
          {
            sub_1C2E71934();
            if (v5 <= 0x3F)
            {
              sub_1C2D5B460(319, &qword_1EC05CA28, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1C2E72704();
                if (v7 <= 0x3F)
                {
                  sub_1C2CD7758(319, &qword_1EC0606C0, &qword_1EC060618, &unk_1C2E84240, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1C2D5B460(319, &qword_1EC0606C8, MEMORY[0x1E6977C88], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
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
}

void sub_1C2D5B460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C2D5B4C4()
{
  result = qword_1EC0606D0;
  if (!qword_1EC0606D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060630);
    sub_1C2D4D440();
    sub_1C2D4D6FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0606D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI29CallTranslationLanguagePickerV9Selection33_8C766B182EDD3CE398EE2835E3DBAAB9LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2D5B600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2D5B654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1C2D5B6B0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1C2D5B6E4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1C2D5B6F4(unint64_t result)
{
  if (result != 2)
  {
    return sub_1C2D5B6E4(result);
  }

  return result;
}

unint64_t sub_1C2D5B704(unint64_t result)
{
  if (result != 2)
  {
    return sub_1C2D4D750(result);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D5B72C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1C2C6E1B4(0, &qword_1EC060908);
    v2 = sub_1C2E75D74();
  }

  v3(v2);
}

uint64_t sub_1C2D5B854(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  if (*(v4 + v1[10]) >= 2uLL)
  {
  }

  if (*(v4 + v1[11]) >= 2uLL)
  {
  }

  v7 = v1[12];
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = v1[13];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1C2D5BB78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C2D5BBEC()
{
  result = qword_1EC0607C8;
  if (!qword_1EC0607C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0607C0);
    sub_1C2D5B854(&qword_1EC0607A0, &qword_1EC060798, &unk_1C2E84520, sub_1C2CD8E5C);
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0607C8);
  }

  return result;
}

unint64_t sub_1C2D5BCD8()
{
  result = qword_1EC060870;
  if (!qword_1EC060870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0607F8);
    sub_1C2E73774();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0607F0);
    sub_1C2E734E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0607E8);
    sub_1C2C94F38(&qword_1EC060858, &qword_1EC0607E8);
    swift_getOpaqueTypeConformance2();
    sub_1C2D5C0F8(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1C2D5C0F8(&qword_1EC060860, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060870);
  }

  return result;
}

unint64_t sub_1C2D5BF54()
{
  result = qword_1EC0608A0;
  if (!qword_1EC0608A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060810);
    sub_1C2C94F38(&qword_1EC0608A8, &qword_1EC0608B0);
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0608A0);
  }

  return result;
}

unint64_t sub_1C2D5C03C()
{
  result = qword_1EC0608D0;
  if (!qword_1EC0608D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608C8);
    sub_1C2D5C0F8(&qword_1EC0608D8, type metadata accessor for LanguageSelectionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0608D0);
  }

  return result;
}

uint64_t sub_1C2D5C0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v17 = *(*(v1 - 1) + 80);
  v2 = (v17 + 16) & ~v17;
  v3 = (((((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  if (*(v4 + 48))
  {
  }

  v5 = v3 + 23;
  if (*(v4 + 64))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C2E732B4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  if (*(v4 + v1[10]) >= 2uLL)
  {
  }

  if (*(v4 + v1[11]) >= 2uLL)
  {
  }

  v16 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = v1[12];
  v10 = sub_1C2E71934();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v13 = v1[13];
  if (!(*(v11 + 48))(v4 + v13, 1, v10))
  {
    v12(v4 + v13, v10);
  }

  v14 = (((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v16 + 8))
  {

    if (*(v0 + v16 + 16) >= 2uLL)
    {
    }
  }

  if (*(v0 + v14 + 16) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | 7);
}

uint64_t sub_1C2D5C4D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v9 + 55) & 0xFFFFFFFFFFFFFFF8;
  return sub_1C2D563AC(v1 + v4, v11, v12, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8), a1, *(v1 + v8 + 8), *(v1 + v9), *(v1 + v9 + 16), *(v1 + ((v9 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + v13), *(v1 + v13 + 8), *(v1 + v13 + 16), *(v1 + ((v13 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2D5C64C(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1C2D56C14(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v7 + 16), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1C2D5C724(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    sub_1C2D5B6E4(a3);
  }
}

uint64_t sub_1C2D5C770()
{
  type metadata accessor for CallTranslationLanguagePicker();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_1C2D571A8(v1, v2, v3);
}

uint64_t sub_1C2D5C804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D5C86C(uint64_t a1)
{
  v4 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2C7DC10;

  return sub_1C2D5A350(a1, v6, v7, v1 + v5);
}

void sub_1C2D5C964(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060900) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1C2D5AF00(a1, v4, v5, v6, v7);
}

uint64_t sub_1C2D5C9E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72330(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D5CA3C(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }
}

uint64_t sub_1C2D5CA3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72330(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D5CA90(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1C2D5CA90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72330(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D1EF64(a1, a2, a3);
  }
}

uint64_t sub_1C2D5CAE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72340(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D5CB38(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }
}

uint64_t sub_1C2D5CB38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72340(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D5CB8C(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1C2D5CB8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1C2C72340(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1C2D1EFA0(a1, a2, a3);
  }
}

uint64_t sub_1C2D5CBE0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2D5CCA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  return sub_1C2D5834C(a1, v7, v8, v9, v2 + v6, v11, v12, v13, a2);
}

uint64_t objectdestroy_109Tm()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2D5CE18()
{
  v1 = *(type metadata accessor for CallTranslationLanguagePicker() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_1C2D58530(v3, v4, v5, v6, v0 + v2, v8, v9, v10);
}

unint64_t sub_1C2D5CEC4()
{
  result = qword_1EC0609A8;
  if (!qword_1EC0609A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0609A0);
    sub_1C2D5CF7C();
    sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0609A8);
  }

  return result;
}

unint64_t sub_1C2D5CF7C()
{
  result = qword_1EC0609B0;
  if (!qword_1EC0609B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0609B8);
    sub_1C2C94F38(&qword_1EC060990, &qword_1EC060988);
    sub_1C2C94F38(&qword_1EC0609C0, &qword_1EC0609C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0609B0);
  }

  return result;
}

void *sub_1C2D5D0B0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1C2E764E4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1C6927010](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1C2E76614();
          sub_1C2E76644();
          v5 = v14;
          sub_1C2E76654();
          v3 = &v18;
          sub_1C2E76624();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

double LanguageSelectionView.init(viewModel:title:suggestedLanguagesTitle:moreLanguagesTitle:translateToContext:needCellularDownloadAlert:shouldAddDismissButton:shouldShowTranslateTo:excludedLanguage:didTapDismiss:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for LanguageSelectionView();
  v26 = v25[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  sub_1C2E75174();
  *(a9 + v26) = v40;
  v27 = v25[17];
  sub_1C2E75174();
  result = *&v40;
  *(a9 + v27) = v40;
  *(a9 + v25[13]) = a1;
  v29 = (a9 + v25[5]);
  *v29 = a2;
  v29[1] = a3;
  v30 = (a9 + v25[6]);
  *v30 = a4;
  v30[1] = a5;
  v31 = (a9 + v25[7]);
  *v31 = a6;
  v31[1] = a7;
  v32 = (a9 + v25[8]);
  *v32 = a8;
  v32[1] = a10;
  *(a9 + v25[9]) = a12;
  *(a9 + v25[10]) = a13;
  *(a9 + v25[11]) = a14;
  v33 = (a9 + v25[12]);
  *v33 = a15;
  v33[1] = a16;
  v34 = (a9 + v25[14]);
  *v34 = a17;
  v34[1] = a18;
  v35 = (a9 + v25[15]);
  *v35 = a19;
  v35[1] = a20;
  return result;
}

uint64_t type metadata accessor for LanguageSelectionView()
{
  result = qword_1EC060A98;
  if (!qword_1EC060A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v66 = a6;
  v67 = a7;
  v64 = a4;
  v65 = a5;
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v9 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1C2E75C14();
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  sub_1C2E75BB4();
  v17 = *(v11 + 16);
  v55 = &unk_1C2E84810;
  v56 = v17;
  v17(v13, v16, v10);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v52 = v19;
  v53 = ObjCClassFromMetadata;
  v20 = [v19 bundleForClass_];
  sub_1C2E718F4();
  v21 = sub_1C2E75C84();
  v59 = v22;
  v60 = v21;
  v23 = v68;
  v54 = *(v69 + 8);
  v69 += 8;
  v54(v16, v68);
  sub_1C2E75BB4();
  v24 = v23;
  v25 = v56;
  v56(v13, v16, v24);
  v26 = [v19 bundleForClass_];
  sub_1C2E718F4();
  v57 = sub_1C2E75C84();
  v58 = v27;
  v28 = v68;
  v29 = v54;
  v54(v16, v68);
  sub_1C2E75BB4();
  v25(v13, v16, v28);
  v30 = [v52 bundleForClass_];
  sub_1C2E718F4();
  v31 = sub_1C2E75C84();
  v33 = v32;
  v29(v16, v28);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for LanguageSelectionView();
  v35 = v34[16];
  v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  sub_1C2E75174();
  *(a8 + v35) = v71;
  v36 = v34[17];
  v70 = 0;
  sub_1C2E75174();
  result = *&v71;
  *(a8 + v36) = v71;
  v38 = v60;
  *(a8 + v34[13]) = v61;
  v39 = (a8 + v34[5]);
  v40 = v59;
  *v39 = v38;
  v39[1] = v40;
  v41 = (a8 + v34[6]);
  v42 = v58;
  *v41 = v57;
  v41[1] = v42;
  v43 = (a8 + v34[7]);
  *v43 = v31;
  v43[1] = v33;
  v44 = (a8 + v34[8]);
  v45 = v63;
  *v44 = v62;
  v44[1] = v45;
  *(a8 + v34[9]) = 1;
  *(a8 + v34[10]) = 1;
  *(a8 + v34[11]) = 0;
  v46 = (a8 + v34[12]);
  *v46 = 0;
  v46[1] = 0;
  v47 = (a8 + v34[14]);
  v48 = v65;
  *v47 = v64;
  v47[1] = v48;
  v49 = (a8 + v34[15]);
  v50 = v67;
  *v49 = v66;
  v49[1] = v50;
  return result;
}

double LanguageSelectionView.init(viewModel:translateToContext:needCellularDownloadAlert:shouldAddDismissButton:didTapDismiss:translateToLocaleDidChange:languageDidSelected:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a4;
  v64 = a2;
  v65 = a3;
  v63 = a1;
  v71 = a11;
  v72 = a7;
  v69 = a10;
  v70 = a6;
  v67 = a9;
  v68 = a5;
  v12 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1C2E75C14();
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1C2E75BB4();
  v57 = &unk_1C2E84810;
  v58 = *(v14 + 16);
  v58(v16, v19, v13);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v54 = v21;
  v55 = ObjCClassFromMetadata;
  v22 = [v21 bundleForClass_];
  sub_1C2E718F4();
  v23 = sub_1C2E75C84();
  v61 = v24;
  v62 = v23;
  v56 = *(v74 + 8);
  v74 += 8;
  v25 = v73;
  v56(v19, v73);
  sub_1C2E75BB4();
  v26 = v25;
  v27 = v58;
  v58(v16, v19, v26);
  v28 = [v21 bundleForClass_];
  sub_1C2E718F4();
  v59 = sub_1C2E75C84();
  v60 = v29;
  v30 = v73;
  v31 = v56;
  v56(v19, v73);
  sub_1C2E75BB4();
  v27(v16, v19, v30);
  v32 = [v54 bundleForClass_];
  sub_1C2E718F4();
  v33 = sub_1C2E75C84();
  v35 = v34;
  v31(v19, v30);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for LanguageSelectionView();
  v37 = v36[16];
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  sub_1C2E75174();
  *(a8 + v37) = v76;
  v38 = v36[17];
  v75 = 0;
  sub_1C2E75174();
  result = *&v76;
  *(a8 + v38) = v76;
  v40 = v62;
  *(a8 + v36[13]) = v63;
  v41 = (a8 + v36[5]);
  v42 = v61;
  *v41 = v40;
  v41[1] = v42;
  v43 = (a8 + v36[6]);
  v44 = v60;
  *v43 = v59;
  v43[1] = v44;
  v45 = (a8 + v36[7]);
  *v45 = v33;
  v45[1] = v35;
  v46 = (a8 + v36[8]);
  v47 = v65;
  *v46 = v64;
  v46[1] = v47;
  *(a8 + v36[9]) = v66;
  *(a8 + v36[10]) = 1;
  *(a8 + v36[11]) = 0;
  v48 = (a8 + v36[12]);
  v49 = v70;
  *v48 = v68;
  v48[1] = v49;
  v50 = (a8 + v36[14]);
  v51 = v67;
  *v50 = v72;
  v50[1] = v51;
  v52 = (a8 + v36[15]);
  v53 = v71;
  *v52 = v69;
  v52[1] = v53;
  return result;
}

uint64_t LanguageSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A08);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A10);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A18);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for LanguageSelectionView();
  if (*(v1 + *(v13 + 36)) == 1)
  {
    v32 = &v25;
    MEMORY[0x1EEE9AC00](v13);
    v31 = &v25 - 4;
    *(&v25 - 2) = v1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A70);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A78);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A80);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A88);
    v15 = sub_1C2D5EE00();
    v28 = v6;
    v16 = v15;
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EDC8);
    v29 = a1;
    v18 = v17;
    v19 = sub_1C2C94F38(&qword_1EC060A90, &qword_1EC05EDC8);
    v33 = v18;
    v34 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v3;
    v34 = v14;
    v35 = v16;
    v36 = OpaqueTypeConformance2;
    v21 = swift_getOpaqueTypeConformance2();
    v22 = sub_1C2C74960();
    v33 = v26;
    v34 = MEMORY[0x1E69E6158];
    v35 = v21;
    v36 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    v33 = v27;
    v34 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73664();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC060A20, &qword_1EC060A18);
    sub_1C2E73F44();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_1C2D5E738(v5);
    sub_1C2C736A4(v5, v8, &qword_1EC060A08);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC060A20, &qword_1EC060A18);
    sub_1C2D5EE00();
    sub_1C2E73F44();
    return sub_1C2C73644(v5, &qword_1EC060A08);
  }
}

uint64_t sub_1C2D5E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1C2E73BD4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A08);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A80);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A78);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v31 = a1;
  sub_1C2D5E738(v7);
  v39 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A88);
  v16 = sub_1C2D5EE00();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EDC8);
  v18 = sub_1C2C94F38(&qword_1EC060A90, &qword_1EC05EDC8);
  v40 = v17;
  v41 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2E74D94();
  sub_1C2C73644(v7, &qword_1EC060A08);
  v20 = (v31 + *(type metadata accessor for LanguageSelectionView() + 20));
  v22 = *v20;
  v21 = v20[1];
  v44 = v22;
  v45 = v21;
  v40 = v5;
  v41 = v15;
  v42 = v16;
  v43 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1C2C74960();
  v25 = MEMORY[0x1E69E6158];
  sub_1C2E74AC4();
  (*(v32 + 8))(v10, v8);
  v26 = v35;
  v27 = v36;
  v28 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x1E697C438], v37);
  v40 = v8;
  v41 = v25;
  v42 = v23;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_1C2E74CA4();
  (*(v27 + 8))(v26, v28);
  return (*(v34 + 8))(v14, v29);
}

uint64_t sub_1C2D5E738@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1C2E74044();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LanguageSelectionView();
  v7 = *(v6 - 8);
  v54 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v8;
  v10 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A40);
  MEMORY[0x1EEE9AC00](v52);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A38);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v43 = v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A30);
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v53 = v42 - v18;
  v51 = v1;
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AC8);
  sub_1C2C94F38(&qword_1EC060AD0, &qword_1EC060AC8);
  sub_1C2E746E4();
  v42[0] = v10;
  sub_1C2D62AD0(v1, v10);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v42[1] = v9;
  v20 = swift_allocObject();
  sub_1C2D62B34(v10, v20 + v19);
  v21 = &v12[*(v52 + 36)];
  sub_1C2E733B4();
  sub_1C2E75E44();
  *v21 = &unk_1C2E84950;
  *(v21 + 1) = v20;
  sub_1C2E74034();
  v22 = sub_1C2D5EFEC();
  v23 = v44;
  sub_1C2E74E64();
  (*(v45 + 8))(v5, v23);
  sub_1C2C73644(v12, &qword_1EC060A40);
  v24 = v51;
  v56 = *(v51 + *(v54 + 72));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
  sub_1C2E75184();
  v25 = v42[0];
  sub_1C2D62AD0(v24, v42[0]);
  v26 = swift_allocObject();
  v27 = v25;
  sub_1C2D62B34(v25, v26 + v19);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  *&v56 = v52;
  *(&v56 + 1) = v23;
  v57 = v22;
  v58 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C2D632F0(&qword_1EC060A60, &qword_1EC060A68);
  v31 = v46;
  v32 = v43;
  sub_1C2E74DD4();

  (*(v47 + 8))(v32, v31);
  v33 = v51;
  v56 = *(v51 + *(v54 + 76));
  sub_1C2E75184();
  sub_1C2D62AD0(v33, v27);
  v34 = swift_allocObject();
  sub_1C2D62B34(v27, v34 + v19);
  *&v56 = v31;
  *(&v56 + 1) = v28;
  v57 = OpaqueTypeConformance2;
  v58 = v30;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  v36 = v48;
  v37 = v53;
  sub_1C2E74DD4();

  (*(v49 + 8))(v37, v36);
  v38 = [objc_opt_self() systemGroupedBackgroundColor];
  v39 = sub_1C2E74E94();
  LOBYTE(v37) = sub_1C2E74454();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060A08);
  v41 = v35 + *(result + 36);
  *v41 = v39;
  *(v41 + 8) = v37;
  return result;
}

unint64_t sub_1C2D5EE00()
{
  result = qword_1EC060A28;
  if (!qword_1EC060A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A40);
    sub_1C2E74044();
    sub_1C2D5EFEC();
    swift_getOpaqueTypeConformance2();
    sub_1C2D632F0(&qword_1EC060A60, &qword_1EC060A68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060A28);
  }

  return result;
}

unint64_t sub_1C2D5EFEC()
{
  result = qword_1EC060A48;
  if (!qword_1EC060A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060A40);
    sub_1C2C94F38(&qword_1EC060A50, &qword_1EC060A58);
    sub_1C2D63634(&qword_1EC05CBD8, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060A48);
  }

  return result;
}

uint64_t sub_1C2D5F0F8(uint64_t a1)
{
  v2 = sub_1C2E73FC4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1C2E73F84();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D728);
  sub_1C2C94F38(&qword_1EC05D720, &qword_1EC05D728);
  sub_1C2E73144();
  v7 = sub_1C2C94F38(&qword_1EC060A90, &qword_1EC05EDC8);
  MEMORY[0x1C6924A90](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C2D5F2E4(uint64_t a1)
{
  v2 = type metadata accessor for LanguageSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2D62AD0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C2D62B34(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1C2E751C4();
}

uint64_t sub_1C2D5F410(uint64_t a1)
{
  v2 = sub_1C2E732B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 48));
  if (v6)
  {

    v6(v7);

    return sub_1C2C71668(v6);
  }

  else
  {
    sub_1C2D5F540(v5);
    sub_1C2E732A4();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C2D5F540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C2E73BA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C2C736A4(v2, &v14 - v9, &qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E732B4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C2D5F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v76 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v81 = v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v76 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v89 = v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AF0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AF8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v79 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v76 - v26;
  v28 = type metadata accessor for LanguageSelectionView();
  v87 = *(a1 + v28[10]);
  v88 = v27;
  v77 = v16;
  if (v87 == 1)
  {
    sub_1C2D60118(v22);
    sub_1C2C71D5C(v22, v27, &qword_1EC060AF0);
    (*(v20 + 56))(v27, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v27, 1, 1, v19);
  }

  v29 = (a1 + v28[6]);
  v31 = *v29;
  v30 = v29[1];
  v76[2] = *(a1 + v28[13]);
  v32 = sub_1C2E726B4();
  MEMORY[0x1EEE9AC00](v32);
  v76[-2] = a1;
  v34 = sub_1C2D5D0B0(sub_1C2D62E10, &v76[-4], v33);
  if (v34 >> 62)
  {
    v65 = v34;
    v35 = sub_1C2E764E4();
    v34 = v65;
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v3;
  if (v35 < 1)
  {

    v44 = 1;
    v43 = v77;
  }

  else
  {
    v76[1] = v76;
    MEMORY[0x1EEE9AC00](v34);
    v80 = 0;
    v76[-2] = v36;
    v76[-1] = a1;
    sub_1C2D61464(v37 ^ 1, v31, v30, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B10);
    sub_1C2D62E58();
    sub_1C2D62F10();
    v38 = v85;
    v3 = v86;
    sub_1C2E75474();

    v39 = &v38[*(v3 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B48) + 28);
    v41 = sub_1C2E747D4();
    (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
    *v39 = swift_getKeyPath();
    v42 = v38;
    v43 = v77;
    sub_1C2C71D5C(v42, v77, &qword_1EC060AE0);
    v44 = 0;
  }

  v45 = *(v4 + 56);
  v80 = v4 + 56;
  v45(v43, v44, 1, v3);
  sub_1C2C71D5C(v43, v89, &qword_1EC060AE8);
  v46 = (a1 + v28[7]);
  v47 = *v46;
  v48 = v46[1];
  v49 = sub_1C2E72684();
  MEMORY[0x1EEE9AC00](v49);
  v76[-2] = a1;
  v51 = sub_1C2D5D0B0(sub_1C2D62E30, &v76[-4], v50);
  if (v87)
  {
    v52 = 0;
  }

  else
  {
    v53 = sub_1C2E726B4();
    MEMORY[0x1EEE9AC00](v53);
    v76[-2] = a1;
    v55 = sub_1C2D5D0B0(sub_1C2D63814, &v76[-4], v54);
    if (v55 >> 62)
    {
      v56 = sub_1C2E764E4();
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v56 == 0;
  }

  if (v51 >> 62)
  {
    v66 = v52;
    v67 = sub_1C2E764E4();
    v52 = v66;
    if (v67 >= 1)
    {
      goto LABEL_16;
    }

LABEL_19:

    v64 = 1;
    v59 = v86;
    v63 = v78;
    goto LABEL_20;
  }

  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_19;
  }

LABEL_16:
  MEMORY[0x1EEE9AC00](v52);
  v76[-2] = v51;
  v76[-1] = a1;
  sub_1C2D61464(v57, v47, v48, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B10);
  sub_1C2D62E58();
  sub_1C2D62F10();
  v58 = v85;
  sub_1C2E75474();

  v59 = v86;
  v60 = (v58 + *(v86 + 36));
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B48) + 28);
  v62 = sub_1C2E747D4();
  (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
  *v60 = swift_getKeyPath();
  v63 = v78;
  sub_1C2C71D5C(v58, v78, &qword_1EC060AE0);
  v64 = 0;
LABEL_20:
  v45(v63, v64, 1, v59);
  v68 = v81;
  sub_1C2C71D5C(v63, v81, &qword_1EC060AE8);
  v69 = v79;
  sub_1C2C736A4(v88, v79, &qword_1EC060AF8);
  v70 = v89;
  v71 = v82;
  sub_1C2C736A4(v89, v82, &qword_1EC060AE8);
  v72 = v83;
  sub_1C2C736A4(v68, v83, &qword_1EC060AE8);
  v73 = v84;
  sub_1C2C736A4(v69, v84, &qword_1EC060AF8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B00);
  sub_1C2C736A4(v71, v73 + *(v74 + 48), &qword_1EC060AE8);
  sub_1C2C736A4(v72, v73 + *(v74 + 64), &qword_1EC060AE8);
  sub_1C2C73644(v68, &qword_1EC060AE8);
  sub_1C2C73644(v70, &qword_1EC060AE8);
  sub_1C2C73644(v88, &qword_1EC060AF8);
  sub_1C2C73644(v72, &qword_1EC060AE8);
  sub_1C2C73644(v71, &qword_1EC060AE8);
  return sub_1C2C73644(v69, &qword_1EC060AF8);
}

uint64_t sub_1C2D60118@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v16[0] = *(v1 + *(type metadata accessor for LanguageSelectionView() + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
  v7 = sub_1C2E75184();
  v8 = v17;
  if (v17)
  {
    v14 = &v14;
    MEMORY[0x1EEE9AC00](v7);
    v15 = a1;
    *(&v14 - 2) = v1;
    *(&v14 - 1) = v8;
    sub_1C2D61928(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B60);
    sub_1C2D63070();
    sub_1C2C94F38(&qword_1EC060B98, &qword_1EC060B60);
    a1 = v15;
    sub_1C2E75474();

    v9 = &v6[*(v3 + 36)];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B48) + 28);
    v11 = sub_1C2E747D4();
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    *v9 = swift_getKeyPath();
    sub_1C2C71D5C(v6, a1, &qword_1EC060B50);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v4 + 56))(a1, v12, 1, v3);
}

uint64_t sub_1C2D603D4(uint64_t a1)
{
  v1[5] = a1;
  sub_1C2E75E34();
  v1[6] = sub_1C2E75E24();
  v3 = sub_1C2E75DD4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2D6046C, v3, v2);
}

uint64_t sub_1C2D6046C()
{
  v1 = v0[5];
  v2 = type metadata accessor for LanguageSelectionView();
  v0[9] = v2;
  v0[10] = *(v1 + *(v2 + 52));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C2D60518;

  return MEMORY[0x1EEDF75E0]();
}

uint64_t sub_1C2D60518()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1C2D60638, v3, v2);
}

uint64_t sub_1C2D60638()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  if (*(v2 + *(v1 + 40)) == 1)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 40);
    v5 = sub_1C2E72644();
    *(v0 + 16) = *(v4 + *(v3 + 64));
    *(v0 + 32) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
    sub_1C2E75194();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1C2D606F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C2E71934();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  if (*a1)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v26 = v8;
    v27 = v12;
    v28 = v11;
    sub_1C2E72834();
    sub_1C2D63634(&qword_1EC060A68, MEMORY[0x1E6995FB0]);

    if ((sub_1C2E75BA4() & 1) == 0)
    {
      if (qword_1EC05CF78 != -1)
      {
        swift_once();
      }

      v14 = sub_1C2E72B44();
      __swift_project_value_buffer(v14, qword_1EC0609F0);

      v15 = sub_1C2E72B24();
      v16 = sub_1C2E75FE4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136315138;
        MEMORY[0x1C6923240]();
        v19 = sub_1C2E718B4();
        v25 = a3;
        v21 = v20;
        (*(v7 + 8))(v10, v26);
        v22 = sub_1C2E43AC0(v19, v21, &v28);
        a3 = v25;

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1C2C6B000, v15, v16, "translate to %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1C6927DF0](v18, -1, -1);
        MEMORY[0x1C6927DF0](v17, -1, -1);
      }

      v23 = *(a3 + *(type metadata accessor for LanguageSelectionView() + 56));
      if (v23)
      {

        v23(v24);
      }
    }
  }
}

void sub_1C2D609F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  if (*a2)
  {
    v40 = v12;
    v16 = qword_1EC05CF78;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1C2E72B44();
    __swift_project_value_buffer(v17, qword_1EC0609F0);

    v18 = sub_1C2E72B24();
    v19 = sub_1C2E75FE4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v7;
      v21 = v20;
      v22 = swift_slowAlloc();
      v39 = a3;
      v23 = v22;
      *&v42 = v22;
      *v21 = 136315138;
      MEMORY[0x1C6923240]();
      v24 = sub_1C2E718B4();
      v26 = v25;
      (*(v40 + 8))(v14, v11);
      v27 = sub_1C2E43AC0(v24, v26, &v42);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1C2C6B000, v18, v19, "did select %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v28 = v23;
      a3 = v39;
      MEMORY[0x1C6927DF0](v28, -1, -1);
      v29 = v21;
      v7 = v38;
      MEMORY[0x1C6927DF0](v29, -1, -1);
    }

    v30 = type metadata accessor for LanguageSelectionView();
    v31 = v30;
    if (*(a3 + *(v30 + 40)) == 1)
    {
      v42 = *(a3 + *(v30 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
      v32 = sub_1C2E75184();
      if (v41)
      {
        MEMORY[0x1C6923240](v32);

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = *(v40 + 56);
      v34(v10, v33, 1, v11);
      v35 = sub_1C2E726A4();
      MEMORY[0x1C6923240](v35);
      v34(v7, 0, 1, v11);
      sub_1C2E72674();
    }

    v36 = *(a3 + *(v31 + 60));
    if (v36)
    {
      v42 = *(a3 + *(v31 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
      sub_1C2E75184();
      v37 = v41;

      v36(v37, v15);
    }
  }
}

uint64_t sub_1C2D60DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_1C2D62AD0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1C2D62B34(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B40);
  sub_1C2C94F38(&qword_1EC060978, &qword_1EC060618);
  sub_1C2D63634(&qword_1EC060C00, MEMORY[0x1E6969770]);
  sub_1C2C94F38(&qword_1EC060B38, &qword_1EC060B40);
  return sub_1C2E75434();
}

uint64_t sub_1C2D61014(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  sub_1C2D62AD0(a2, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1C2D62B34(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v12 = v7;
  v13 = a2;
  sub_1C2D63710();

  return sub_1C2E751C4();
}

uint64_t sub_1C2D61174()
{
  type metadata accessor for LanguageSelectionView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
  return sub_1C2E75194();
}

uint64_t sub_1C2D611E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_1C2E71934();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v27 = a1;
  MEMORY[0x1C6923240](v11);
  v25 = sub_1C2E718B4();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v13, v6);
  type metadata accessor for LanguageSelectionView();
  sub_1C2E72664();
  if ((*(v7 + 48))(v5, 1, v6))
  {
    sub_1C2C73644(v5, &qword_1EC05DBF8);
    v17 = 0;
  }

  else
  {
    (*(v7 + 16))(v9, v5, v6);
    sub_1C2C73644(v5, &qword_1EC05DBF8);
    v18 = sub_1C2E718B4();
    v20 = v19;
    v16(v9, v6);
    if (v25 == v18 && v15 == v20)
    {

      v17 = 1;
    }

    else
    {
      v17 = sub_1C2E767A4();
    }
  }

  v22 = v26;
  *v26 = v27;
  *(v22 + 8) = v17 & 1;
}

void *sub_1C2D61464@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1)
  {
    v7 = sub_1C2E73DD4();
    __dst[0] = 1;
    sub_1C2D61738(a2, a3, v32);
    v25 = v32[12];
    v26 = v32[13];
    v27 = v32[14];
    v28 = v32[15];
    v21 = v32[8];
    v22 = v32[9];
    v23 = v32[10];
    v24 = v32[11];
    v17 = v32[4];
    v18 = v32[5];
    v19 = v32[6];
    v20 = v32[7];
    v13 = v32[0];
    v14 = v32[1];
    v15 = v32[2];
    v16 = v32[3];
    v29[12] = v32[12];
    v29[13] = v32[13];
    v29[14] = v32[14];
    v29[15] = v32[15];
    v29[8] = v32[8];
    v29[9] = v32[9];
    v29[10] = v32[10];
    v29[11] = v32[11];
    v29[4] = v32[4];
    v29[5] = v32[5];
    v29[6] = v32[6];
    v29[7] = v32[7];
    v29[0] = v32[0];
    v29[1] = v32[1];
    v29[2] = v32[2];
    v29[3] = v32[3];
    sub_1C2C736A4(&v13, v31, &qword_1EC060BF0);
    sub_1C2C73644(v29, &qword_1EC060BF0);
    *&__src[199] = v25;
    *&__src[215] = v26;
    *&__src[231] = v27;
    *&__src[247] = v28;
    *&__src[135] = v21;
    *&__src[151] = v22;
    *&__src[167] = v23;
    *&__src[183] = v24;
    *&__src[71] = v17;
    *&__src[87] = v18;
    *&__src[103] = v19;
    *&__src[119] = v20;
    *&__src[7] = v13;
    *&__src[23] = v14;
    *&__src[39] = v15;
    *&__src[55] = v16;
    v31[0] = v7;
    v31[1] = 0;
    LOBYTE(v31[2]) = __dst[0];
    memcpy(&v31[2] + 1, __src, 0x107uLL);
    sub_1C2D635AC(v31);
  }

  else
  {
    *&v32[0] = a2;
    *(&v32[0] + 1) = a3;
    sub_1C2C74960();

    v31[0] = sub_1C2E748A4();
    v31[1] = v8;
    LOBYTE(v31[2]) = v9 & 1;
    v31[3] = v10;
    sub_1C2D635A0(v31);
  }

  memcpy(__dst, v31, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060B28);
  sub_1C2C94F38(&qword_1EC060B20, &qword_1EC060B28);
  sub_1C2E73F44();
  return memcpy(a4, v32, 0x119uLL);
}

uint64_t sub_1C2D61738@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1C2D61928(&v26);
  sub_1C2E74514();
  sub_1C2E74594();
  v6 = sub_1C2E74604();

  KeyPath = swift_getKeyPath();
  *&v53[0] = a1;
  *(&v53[0] + 1) = a2;
  sub_1C2C74960();

  v8 = sub_1C2E748A4();
  v10 = v9;
  v49 = v36;
  v50 = v37;
  v39 = v26;
  v40 = v27;
  v11 = v26;
  v51 = v38;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v12 = v37;
  v13 = v38;
  v14 = v35;
  *(a3 + 160) = v36;
  *(a3 + 176) = v12;
  v15 = v46;
  v16 = v47;
  v17 = v44;
  *(a3 + 96) = v45;
  *(a3 + 112) = v15;
  *(a3 + 128) = v16;
  *(a3 + 144) = v14;
  v18 = v42;
  v19 = v43;
  v20 = v40;
  *(a3 + 32) = v41;
  *(a3 + 48) = v18;
  *(a3 + 64) = v19;
  *(a3 + 80) = v17;
  *&v52 = KeyPath;
  *(&v52 + 1) = v6;
  v22 = v21 & 1;
  *a3 = v11;
  *(a3 + 16) = v20;
  v23 = v52;
  *(a3 + 192) = v13;
  *(a3 + 208) = v23;
  *(a3 + 224) = v8;
  *(a3 + 232) = v9;
  *(a3 + 240) = v21 & 1;
  *(a3 + 248) = v24;
  sub_1C2C736A4(&v39, v53, &qword_1EC060BF8);
  sub_1C2C72330(v8, v10, v22);

  sub_1C2C72340(v8, v10, v22);

  v53[10] = v36;
  v53[11] = v37;
  v53[12] = v38;
  v53[6] = v32;
  v53[7] = v33;
  v53[8] = v34;
  v53[9] = v35;
  v53[2] = v28;
  v53[3] = v29;
  v53[4] = v30;
  v53[5] = v31;
  v53[0] = v26;
  v53[1] = v27;
  v54 = KeyPath;
  v55 = v6;
  return sub_1C2C73644(v53, &qword_1EC060BF8);
}

__n128 sub_1C2D61928@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LanguageSelectionView() + 32));
  v4 = v3[1];
  if (v4)
  {
    *&v38 = *v3;
    *(&v38 + 1) = v4;
    sub_1C2C74960();

    v5 = sub_1C2E748A4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_1C2E75744();
    sub_1C2E737F4();
    v36 = v9 & 1;
    v37 = 1;
    *&v25 = v5;
    *(&v25 + 1) = v7;
    v26.n128_u8[0] = v9 & 1;
    v26.n128_u64[1] = v11;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    *&v34 = swift_getKeyPath();
    BYTE8(v34) = 1;
    v35[0] = sub_1C2E74474();
    memset(&v35[8], 0, 32);
    v35[40] = 1;
    CGPointMake(&v25);
    v48 = *v35;
    v49[0] = *&v35[16];
    *(v49 + 9) = *&v35[25];
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v38 = v25;
    v39 = v26;
  }

  else
  {
    sub_1C2D632BC(&v38);
  }

  v12 = v49[0];
  *(a1 + 160) = v48;
  *(a1 + 176) = v12;
  *(a1 + 185) = *(v49 + 9);
  v13 = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v13;
  v14 = v47;
  *(a1 + 128) = v46;
  *(a1 + 144) = v14;
  v15 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v15;
  v16 = v43;
  *(a1 + 64) = v42;
  *(a1 + 80) = v16;
  result = v39;
  *a1 = v38;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2D61AFC(uint64_t a1)
{
  v2 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C2E75C14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  sub_1C2E75BB4();
  (*(v4 + 16))(v6, v9, v3);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v12 = sub_1C2E75C84();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v19 = v12;
  v20 = v14;
  v18 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
  sub_1C2E751A4();
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0608E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060BA8);
  sub_1C2D632F0(&qword_1EC060BB0, &qword_1EC0606D8);
  sub_1C2D6338C();
  sub_1C2C74960();
  sub_1C2D6351C();
  return sub_1C2E75294();
}

uint64_t sub_1C2D61E4C()
{
  type metadata accessor for LanguageSelectionView();
  sub_1C2E72684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060618);
  sub_1C2E71934();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060BC8);
  sub_1C2C94F38(&qword_1EC060978, &qword_1EC060618);
  sub_1C2D63410();
  sub_1C2D63634(&qword_1EC060BD8, MEMORY[0x1E6995FB0]);
  return sub_1C2E75444();
}

uint64_t sub_1C2D61F88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060BE0);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - v4;
  v6 = sub_1C2E71934();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a1;
  MEMORY[0x1C6923240](v11);
  sub_1C2E718F4();
  v15 = MEMORY[0x1C6922CA0](v13, v9);
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v13, v6);
  if (!v17)
  {
    return (*(v3 + 56))(v26, 1, 1, v25);
  }

  v27 = v15;
  v28 = v17;
  sub_1C2C74960();
  *v5 = sub_1C2E748A4();
  *(v5 + 1) = v19;
  v5[16] = v20 & 1;
  *(v5 + 3) = v21;
  *(v5 + 4) = v14;
  v5[40] = 1;
  v23 = v25;
  v22 = v26;
  (*(v3 + 32))(v26, v5, v25);
  (*(v3 + 56))(v22, 0, 1, v23);
}

uint64_t sub_1C2D621E4@<X0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1C2E75C14();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = sub_1C2E75BF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C2E71934();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  MEMORY[0x1C6923240](v12);
  sub_1C2E718F4();
  v15 = MEMORY[0x1C6922CA0](v14, v10);
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v10, v7);
  result = (v18)(v14, v7);
  if (v17)
  {
    if (sub_1C2E727D4())
    {
      sub_1C2E75BE4();
      sub_1C2E75BD4();
      sub_1C2E75BC4();

      sub_1C2E75BD4();
      sub_1C2E75C04();
      v20 = v38;
      v21 = v39;
      (*(v38 + 16))(v37, v5, v39);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      v24 = sub_1C2E75C84();
      v26 = v25;
      (*(v20 + 8))(v5, v21);
      *&v46 = v24;
      *(&v46 + 1) = v26;
      sub_1C2C74960();
      v41 = sub_1C2E748A4();
      v42 = v27;
      v43 = v28 & 1;
      v44 = v29;
      v45 = 0;
    }

    else
    {
      *&v46 = v15;
      *(&v46 + 1) = v17;
      sub_1C2C74960();
      v41 = sub_1C2E748A4();
      v42 = v34;
      v43 = v33 & 1;
      v44 = v35;
      v45 = 1;
    }

    result = sub_1C2E73F44();
    v30 = v46;
    v32 = v47;
    v31 = v48;
  }

  else
  {
    v30 = 0uLL;
    v31 = -1;
    v32 = 0uLL;
  }

  v36 = v40;
  *v40 = v30;
  v36[1] = v32;
  *(v36 + 32) = v31;
  return result;
}

uint64_t sub_1C2D625C4()
{
  type metadata accessor for LanguageSelectionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8);
  sub_1C2E75184();
  v0 = sub_1C2E727E4();

  if (v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1C2E727E4() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C2D62680(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = sub_1C2E726B4();
  v12[2] = a2;
  v6 = sub_1C2D5D0B0(sub_1C2D63814, v12, v5);
  *&v13 = v3;
  v11[2] = &v13;
  v7 = sub_1C2DEAC08(sub_1C2D637F4, v11, v6);

  if (v7 & 1) != 0 || (v13 = *(a2 + *(v4 + 64)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060AD8), sub_1C2E75184(), v8 = sub_1C2E727E4(), , (v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C2E727E4() ^ 1;
  }

  return v9 & 1;
}

void sub_1C2D627E0()
{
  sub_1C2D629A4(319, &qword_1EC05BAA8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C2D2EFC8();
    if (v1 <= 0x3F)
    {
      sub_1C2D629A4(319, &qword_1EC060AA8, MEMORY[0x1E6995FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C2CD7758(319, &qword_1EC05CA50, &qword_1EC05E0F8, &unk_1C2E7C0D0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C2E72704();
          if (v4 <= 0x3F)
          {
            sub_1C2CD7758(319, &qword_1EC060AB0, &qword_1EC0608E8, &unk_1C2E84678, MEMORY[0x1E6981790]);
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

void sub_1C2D629A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C2D62A08()
{
  result = qword_1EC060AB8;
  if (!qword_1EC060AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060AC0);
    sub_1C2C94F38(&qword_1EC060A20, &qword_1EC060A18);
    sub_1C2D5EE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060AB8);
  }

  return result;
}

uint64_t sub_1C2D62AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D62B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D62B98()
{
  v1 = *(type metadata accessor for LanguageSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C2D5F410(v2);
}

uint64_t sub_1C2D62C00()
{
  v2 = *(type metadata accessor for LanguageSelectionView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C2C7DC10;

  return sub_1C2D603D4(v0 + v3);
}

uint64_t sub_1C2D62CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LanguageSelectionView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1C2D62D90()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC0609F0);
  __swift_project_value_buffer(v0, qword_1EC0609F0);
  return sub_1C2E72B34();
}

unint64_t sub_1C2D62E58()
{
  result = qword_1EC060B18;
  if (!qword_1EC060B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B08);
    sub_1C2C94F38(&qword_1EC060B20, &qword_1EC060B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060B18);
  }

  return result;
}

unint64_t sub_1C2D62F10()
{
  result = qword_1EC060B30;
  if (!qword_1EC060B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B10);
    sub_1C2C94F38(&qword_1EC060B38, &qword_1EC060B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060B30);
  }

  return result;
}

uint64_t sub_1C2D62FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060BE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2C736A4(a1, &v5 - v3, &qword_1EC060BE8);
  return sub_1C2E73B24();
}

unint64_t sub_1C2D63070()
{
  result = qword_1EC060B68;
  if (!qword_1EC060B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B58);
    sub_1C2D630F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060B68);
  }

  return result;
}

unint64_t sub_1C2D630F4()
{
  result = qword_1EC060B70;
  if (!qword_1EC060B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B78);
    sub_1C2D63180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060B70);
  }

  return result;
}

unint64_t sub_1C2D63180()
{
  result = qword_1EC060B80;
  if (!qword_1EC060B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B88);
    sub_1C2D63238();
    sub_1C2C94F38(&qword_1EC05B458, &qword_1EC05DD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060B80);
  }

  return result;
}

unint64_t sub_1C2D63238()
{
  result = qword_1EC05B8E8;
  if (!qword_1EC05B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8E8);
  }

  return result;
}

double sub_1C2D632BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C2D632F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608E8);
    sub_1C2D63634(a2, MEMORY[0x1E6995FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D6338C()
{
  result = qword_1EC060BB8;
  if (!qword_1EC060BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BA0);
    sub_1C2D63410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BB8);
  }

  return result;
}

unint64_t sub_1C2D63410()
{
  result = qword_1EC060BC0;
  if (!qword_1EC060BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0608E8);
    sub_1C2D632F0(&qword_1EC060BB0, &qword_1EC0606D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BC0);
  }

  return result;
}

unint64_t sub_1C2D6351C()
{
  result = qword_1EC060BD0;
  if (!qword_1EC060BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060BA8);
    sub_1C2D40798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060BD0);
  }

  return result;
}

uint64_t sub_1C2D635B4(uint64_t *a1)
{
  v3 = *(type metadata accessor for LanguageSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C2D61014(a1, v4);
}

uint64_t sub_1C2D63634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D6367C()
{
  type metadata accessor for LanguageSelectionView();

  return sub_1C2D61174();
}

unint64_t sub_1C2D63710()
{
  result = qword_1EC060C08;
  if (!qword_1EC060C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C08);
  }

  return result;
}

uint64_t sub_1C2D63764()
{
  sub_1C2E72834();
  sub_1C2D63634(&qword_1EC060A68, MEMORY[0x1E6995FB0]);
  return sub_1C2E75BA4() & 1;
}

uint64_t LeadingAccessoryView.sizeThatFits(_:uiView:context:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C2D63864()
{
  result = qword_1EC060C10;
  if (!qword_1EC060C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C10);
  }

  return result;
}

uint64_t sub_1C2D638B8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C2D638D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D639D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D63934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D639D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D63998()
{
  sub_1C2D639D0();
  sub_1C2E73EE4();
  __break(1u);
}

unint64_t sub_1C2D639D0()
{
  result = qword_1EC060C18;
  if (!qword_1EC060C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060C18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI28BackgroundStyleConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}