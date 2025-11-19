unint64_t sub_213ECDD7C()
{
  result = qword_27C8FB5E8;
  if (!qword_27C8FB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB5E8);
  }

  return result;
}

unint64_t sub_213ECDDD0()
{
  result = qword_281182D08;
  if (!qword_281182D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB600, &qword_213F60638);
    sub_213ECDE88();
    sub_213DE3AE4(&qword_281182BD0, &qword_27C8FB5F8, &qword_213F60630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D08);
  }

  return result;
}

unint64_t sub_213ECDE88()
{
  result = qword_281182D70;
  if (!qword_281182D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB608, &qword_213F60640);
    sub_213ECDF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D70);
  }

  return result;
}

unint64_t sub_213ECDF14()
{
  result = qword_281182E38;
  if (!qword_281182E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB610, &unk_213F60648);
    sub_213E5096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E38);
  }

  return result;
}

unint64_t sub_213ECDFA0()
{
  result = qword_281182D68;
  if (!qword_281182D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5D0, &qword_213F60608);
    sub_213ECE02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D68);
  }

  return result;
}

unint64_t sub_213ECE02C()
{
  result = qword_281182E30;
  if (!qword_281182E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5C8, &qword_213F60598);
    sub_213E5096C();
    sub_213DE3AE4(&qword_281182850, &qword_27C8F76B0, &qword_213F518C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E30);
  }

  return result;
}

unint64_t sub_213ECE0E4()
{
  result = qword_281182CB0;
  if (!qword_281182CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5E0, &qword_213F60618);
    sub_213ECE19C();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CB0);
  }

  return result;
}

unint64_t sub_213ECE19C()
{
  result = qword_281182D00;
  if (!qword_281182D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5D8, &qword_213F60610);
    sub_213ECDFA0();
    sub_213DE3AE4(&qword_281182BE8, &qword_27C8FB618, &qword_213F61D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D00);
  }

  return result;
}

unint64_t sub_213ECE254()
{
  result = qword_281183468;
  if (!qword_281183468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB5F0, &unk_213F60620);
    sub_213ECCD3C(qword_281188008, type metadata accessor for PhotoFanView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183468);
  }

  return result;
}

uint64_t sub_213ECE310(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213ECCD3C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ListCellViewModel.__allocating_init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v23 = *(v19 + 48);
  v24 = *(v19 + 52);
  v25 = swift_allocObject();
  v26 = v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageProvider;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageOverlayProvider;
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v37 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  v28 = (v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__title);
  v29 = (v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__query);
  v30 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  v31 = type metadata accessor for BottomAccessoryViewModel(0);
  (*(*(v31 - 8) + 56))(v25 + v30, 1, 1, v31);
  sub_213F4CBB0();
  v32 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  v33 = sub_213F4CB40();
  (*(*(v33 - 8) + 32))(v25 + v32, a1, v33);
  sub_213DE36FC(v26, &qword_27C8F7AB8, &qword_213F522C0);
  v34 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v34;
  *(v26 + 32) = *(a2 + 32);
  sub_213DE36FC(v27, &qword_27C8F7AB8, &qword_213F522C0);
  v35 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v35;
  *(v27 + 32) = *(a3 + 32);
  *(v25 + v37) = a4;
  *v28 = a5;
  v28[1] = a6;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__richTextViews) = a9;
  *v29 = a7;
  v29[1] = a8;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingAccessory) = a10;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingAccessory) = a11;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__contextLineAccessory) = a12;
  sub_213DE36FC(v25 + v30, &qword_27C8FB630, &qword_213F63CC0);
  sub_213DE2B44(a13, v25 + v30, &qword_27C8FB630, &qword_213F63CC0);
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__active) = a14;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__isSelected) = a15;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingSwipeActions) = a16;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingSwipeActions) = a17;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__menuActions) = a18;
  *(v25 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__allowsFullSwipe) = a19;
  return v25;
}

uint64_t sub_213ECE6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213ECE7A4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213ECE9C8(v7);
}

uint64_t sub_213ECE8D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213ECE9C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213ED26C4(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213ECEC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213ECED84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECE870();
  return sub_213ECEEBC;
}

void (*sub_213ECEF90(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECEEC8();
  return sub_213ECF0C8;
}

uint64_t sub_213ECF148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v6 = *a2;
  swift_beginAccess();
  return sub_213DE3164(v5 + v6, a3, &qword_27C8F7AB8, &qword_213F522C0);
}

uint64_t sub_213ECF244(uint64_t a1, uint64_t *a2)
{
  sub_213DE3164(a1, v5, &qword_27C8F7AB8, &qword_213F522C0);
  v3 = *a2;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();

  return sub_213DE36FC(v5, &qword_27C8F7AB8, &qword_213F522C0);
}

uint64_t sub_213ECF35C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v5 = *a1;
  swift_beginAccess();
  return sub_213DE3164(v2 + v5, a2, &qword_27C8F7AB8, &qword_213F522C0);
}

uint64_t sub_213ECF454(uint64_t a1)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();

  return sub_213DE36FC(a1, &qword_27C8F7AB8, &qword_213F522C0);
}

uint64_t sub_213ECF52C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_213DE3164(a2, v7, &qword_27C8F7AB8, &qword_213F522C0);
  v5 = *a3;
  swift_beginAccess();
  sub_213E5201C(v7, a1 + v5, &qword_27C8F7AB8, &qword_213F522C0);
  return swift_endAccess();
}

void (*sub_213ECF5CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECF0D4();
  return sub_213ECF704;
}

uint64_t sub_213ECF770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213ECF858()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_213ECF918()
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213ECF9E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_213ECFA58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECF710();
  return sub_213ECFB90;
}

void (*sub_213ECFC64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECFB9C();
  return sub_213ECFD9C;
}

void (*sub_213ECFE70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECFDA8();
  return sub_213ECFFA8;
}

uint64_t sub_213ED0028@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_16Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213ED016C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_213ED025C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();
}

void (*sub_213ED03C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ECFFB4();
  return sub_213ED04FC;
}

void (*sub_213ED05D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED0508();
  return sub_213ED0708;
}

void (*sub_213ED07DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED0714();
  return sub_213ED0914;
}

void (*sub_213ED09E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED0920();
  return sub_213ED0B20;
}

uint64_t sub_213ED0B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  swift_beginAccess();
  return sub_213DE3164(v3 + v4, a2, &qword_27C8FB630, &qword_213F63CC0);
}

uint64_t sub_213ED0C64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_213DE3164(a1, &v10[-v6], &qword_27C8FB630, &qword_213F63CC0);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();

  return sub_213DE36FC(v7, &qword_27C8FB630, &qword_213F63CC0);
}

uint64_t sub_213ED0DB4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  swift_beginAccess();
  return sub_213DE3164(v5 + v3, a1, &qword_27C8FB630, &qword_213F63CC0);
}

uint64_t sub_213ED0E8C(uint64_t a1)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();

  return sub_213DE36FC(a1, &qword_27C8FB630, &qword_213F63CC0);
}

uint64_t sub_213ED0F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_213DE3164(a2, &v10 - v6, &qword_27C8FB630, &qword_213F63CC0);
  v8 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  swift_beginAccess();
  sub_213E5201C(v7, a1 + v8, &qword_27C8FB630, &qword_213F63CC0);
  return swift_endAccess();
}

void (*sub_213ED1050(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED0B2C();
  return sub_213ED1188;
}

void (*sub_213ED126C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED1194();
  return sub_213ED13A4;
}

void (*sub_213ED1488(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED13B0();
  return sub_213ED15C0;
}

void (*sub_213ED1694(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED15CC();
  return sub_213ED17CC;
}

void (*sub_213ED18A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED17D8();
  return sub_213ED19D8;
}

uint64_t sub_213ED1A58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_213ED1B44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213ED1C14(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_213ED1CEC()
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB70();
}

void (*sub_213ED1DB4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED19E4();
  return sub_213ED1EEC;
}

uint64_t sub_213ED1F6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_213ED2070(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_213ED214C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213ED2268(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213ED1EF8();
  return sub_213ED23A0;
}

uint64_t ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v23 = v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageProvider;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageOverlayProvider;
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder) = 0;
  v26 = (v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__title);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__query);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  v38 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  v29 = type metadata accessor for BottomAccessoryViewModel(0);
  (*(*(v29 - 8) + 56))(v19 + v28, 1, 1, v29);
  sub_213F4CBB0();
  v30 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  v31 = sub_213F4CB40();
  (*(*(v31 - 8) + 32))(v19 + v30, a1, v31);
  sub_213DE36FC(v23, &qword_27C8F7AB8, &qword_213F522C0);
  v32 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v32;
  *(v23 + 32) = *(a2 + 32);
  sub_213DE36FC(v24, &qword_27C8F7AB8, &qword_213F522C0);
  v33 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 16) = v33;
  *(v24 + 32) = *(a3 + 32);
  v34 = *(v19 + v25);

  *(v19 + v25) = a4;
  v35 = v26[1];

  *v26 = a5;
  v26[1] = a6;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__richTextViews) = a9;
  v36 = v27[1];

  *v27 = a7;
  v27[1] = a8;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingAccessory) = a10;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingAccessory) = a11;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__contextLineAccessory) = a12;
  sub_213DE36FC(v19 + v38, &qword_27C8FB630, &qword_213F63CC0);
  sub_213DE2B44(a13, v19 + v38, &qword_27C8FB630, &qword_213F63CC0);
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__active) = a14;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__isSelected) = a15;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingSwipeActions) = a16;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingSwipeActions) = a17;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__menuActions) = a18;
  *(v19 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__allowsFullSwipe) = a19;
  return v19;
}

uint64_t sub_213ED26C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ListCellViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_213DE36FC(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageProvider, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213DE36FC(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageOverlayProvider, &qword_27C8F7AB8, &qword_213F522C0);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__title + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__richTextViews);

  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__query + 8);

  v7 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingAccessory);

  v8 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingAccessory);

  v9 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__contextLineAccessory);

  sub_213DE36FC(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory, &qword_27C8FB630, &qword_213F63CC0);
  v10 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingSwipeActions);

  v11 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingSwipeActions);

  v12 = *(v0 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__menuActions);

  v13 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel___observationRegistrar;
  v14 = sub_213F4CBC0();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t ListCellViewModel.__deallocating_deinit()
{
  ListCellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213ED2B84@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v6 = *a1;
  swift_beginAccess();
  return sub_213DE3164(v5 + v6, a2, &qword_27C8F7AB8, &qword_213F522C0);
}

uint64_t sub_213ED2C60()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v2 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_213ED2D5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v7 = (v6 + *a4);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];

  return v9;
}

uint64_t sub_213ED2E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  swift_beginAccess();
  return sub_213DE3164(v3 + v4, a1, &qword_27C8FB630, &qword_213F63CC0);
}

uint64_t sub_213ED2FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v7 = *a4;
  swift_beginAccess();
  v8 = *(v6 + v7);
}

uint64_t sub_213ED3070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v7 = *a4;
  swift_beginAccess();
  return *(v6 + v7);
}

uint64_t sub_213ED3128(uint64_t a1)
{
  result = sub_213ED26C4(&qword_281186298, type metadata accessor for ListCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213ED31C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213ED26C4(&qword_2811862A0, type metadata accessor for ListCellViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_213ED32C8()
{
  v0 = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_213EE6570(319, qword_2811847A8, type metadata accessor for BottomAccessoryViewModel, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_213F4CBC0();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_213ED3DC4()
{
  sub_213EE6570(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213ECD90C();
      if (v2 <= 0x3F)
      {
        sub_213E753F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ListCellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListCellType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_213ED4034()
{
  result = qword_27C8FB638;
  if (!qword_27C8FB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB638);
  }

  return result;
}

double sub_213ED40A4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellMedium(0);
  v5 = v4 - 8;
  v37 = *(v4 - 8);
  v6 = *(v37 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - v9;
  v10 = sub_213F4D290();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = v2 + *(v5 + 28);
  sub_213DBBD08(&v36 - v16);
  sub_213F4D280();
  LOBYTE(v18) = sub_213F4D270();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    v20 = 8.0;
  }

  else
  {
    v20 = 12.0;
  }

  v21 = v2;
  v22 = v2;
  v23 = v36;
  sub_213EE6480(v22, v36, type metadata accessor for ListCellMedium);
  v24 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v25 = swift_allocObject();
  sub_213EE79C4(v23, v25 + v24, type metadata accessor for ListCellMedium);
  sub_213EE6480(v21, v8, type metadata accessor for ListCellMedium);
  v26 = swift_allocObject();
  sub_213EE79C4(v8, v26 + v24, type metadata accessor for ListCellMedium);
  sub_213EE6480(v21, v8, type metadata accessor for ListCellMedium);
  v27 = swift_allocObject();
  sub_213EE79C4(v8, v27 + v24, type metadata accessor for ListCellMedium);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB998, &qword_213F612D8);
  v29 = a1 + v28[29];
  type metadata accessor for CGSize(0);
  v38 = 0;
  v39 = 0;
  sub_213F4EA90();
  v30 = v41;
  result = *&v40;
  *v29 = v40;
  *(v29 + 2) = v30;
  *(a1 + v28[21]) = 0;
  *(a1 + v28[22]) = 0;
  *(a1 + v28[23]) = v20;
  *(a1 + v28[24]) = 0;
  v32 = (a1 + v28[25]);
  *v32 = sub_213EE8AB0;
  v32[1] = v25;
  v33 = (a1 + v28[26]);
  *v33 = nullsub_1;
  v33[1] = 0;
  v34 = (a1 + v28[27]);
  *v34 = sub_213EE8CD8;
  v34[1] = v26;
  v35 = (a1 + v28[28]);
  *v35 = sub_213EE8D04;
  v35[1] = v27;
  return result;
}

uint64_t sub_213ED4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = sub_213F4D290();
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v56 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = v55 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v55 - v9;
  v11 = type metadata accessor for MultiTextView(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v58 = v55 - v19;
  v20 = type metadata accessor for ListCellMedium(0);
  v21 = (a1 + v20[6]);
  sub_213DEBAA8(v21, v15 + v12[8]);
  v22 = *(a1 + v20[7]);
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v23 = v12[7];
  *(v15 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v24 = v60;
  swift_storeEnumTagMultiPayload();
  *(v15 + v12[9]) = v22;
  *(v15 + v12[10]) = 0;
  v25 = sub_213F4E080();
  v26 = v20[5];
  v57 = a1;
  v55[1] = v26;
  v27 = v59;
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v28 = *(v3 + 8);
  v28(v27, v24);
  v29 = v10;
  v30 = v58;
  v28(v29, v24);
  sub_213F4CDA0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_213EE79C4(v15, v30, type metadata accessor for MultiTextView);
  v39 = v30 + *(v17 + 44);
  *v39 = v25;
  *(v39 + 8) = v32;
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  *(v39 + 32) = v38;
  *(v39 + 40) = 0;
  v40 = sub_213F4E0A0();
  v41 = v21[3];
  v42 = v21[4];
  __swift_project_boxed_opaque_existential_0(v21, v41);
  if (!ListCellProviding.hasTrailingAccessory.getter(v41, v42))
  {
    v43 = v56;
    sub_213DBBD08(v56);
    sub_213F4D280();
    sub_213F4D270();
    v28(v27, v24);
    v28(v43, v24);
  }

  sub_213F4CDA0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v61;
  sub_213DE2B44(v30, v61, &qword_27C8FB730, &qword_213F63CB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB990, &qword_213F612D0);
  v54 = v52 + *(result + 36);
  *v54 = v40;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_213ED48A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListCellMedium(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB938, &qword_213F61280);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = (a1 + *(v5 + 32));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v13);
  if (ListCellProviding.hasTrailingAccessory.getter(v13, v14))
  {
    *v11 = sub_213F4D8A0();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB948, &qword_213F61290) + 44);
    v23 = a2;
    v16 = v12[3];
    v15 = v12[4];
    __swift_project_boxed_opaque_existential_0(v12, v16);
    v25 = (*(v15 + 72))(v16, v15);
    sub_213EE6480(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellMedium);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    sub_213EE79C4(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ListCellMedium);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB950, &qword_213F61298);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50);
    sub_213EE89D0();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    v19 = v23;
    sub_213DE2B44(v11, v23, &qword_27C8FB938, &qword_213F61280);
    return (*(v24 + 56))(v19, 0, 1, v8);
  }

  else
  {
    v21 = *(v24 + 56);

    return v21(a2, 1, 1, v8);
  }
}

uint64_t sub_213ED4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v131 = type metadata accessor for BottomAccessory(0);
  v3 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D0, &qword_213F611E8);
  v154 = *(v5 - 8);
  v6 = *(v154 + 64);
  MEMORY[0x28223BE20](v5);
  v130 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v124 - v10;
  v144 = type metadata accessor for BottomAccessoryViewModel(0);
  v142 = *(v144 - 8);
  v11 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D8, &qword_213F611F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v153 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v124 - v17;
  v146 = sub_213F4D290();
  v18 = *(v146 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v146);
  v141 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v124 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v124 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v124 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v124 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F0, &qword_213F61210);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v124 - v33;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F8, &qword_213F61218);
  v35 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v124 - v36;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB900, &qword_213F61220);
  v37 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v139 = &v124 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB908, &qword_213F61228);
  v148 = *(v39 - 8);
  v149 = v39;
  v40 = *(v148 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v138 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v137 = &v124 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A0, &qword_213F612E0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v151 = &v124 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v147 = &v124 - v48;
  v49 = type metadata accessor for ListCellMedium(0);
  v50 = (a1 + *(v49 + 24));
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v51);
  if (ListCellProviding.hasContextLineAccessory.getter(v51, v52))
  {
    v128 = *(v49 + 20);
    sub_213DBBD08(v30);
    sub_213F4D280();
    v53 = sub_213F4D270();
    v129 = v5;
    v54 = *(v18 + 8);
    v127 = v54;
    v55 = v146;
    v54(v28, v146);
    v54(v30, v55);
    if (v53)
    {
      v56 = 0x3FF0000000000000;
    }

    else
    {
      v56 = 0x4008000000000000;
    }

    v57 = v34;
    *v34 = sub_213F4DA40();
    *(v34 + 1) = v56;
    v34[16] = 0;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB918, &qword_213F61238) + 44);
    v59 = v50[3];
    v60 = v50[4];
    __swift_project_boxed_opaque_existential_0(v50, v59);
    v61 = (*(v60 + 80))(v59, v60);
    v62 = sub_213EAA104(v61);

    v155 = v62;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB920, &qword_213F61260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB928, &qword_213F61268);
    sub_213DE3AE4(&qword_281182468, &qword_27C8FB920, &qword_213F61260);
    sub_213EE8838();
    sub_213F4ECC0();
    LODWORD(KeyPath) = sub_213F4E040();
    v126 = a1;
    v63 = v134;
    sub_213DBBD08(v134);
    sub_213F4D280();
    sub_213F4D270();
    v64 = v146;
    v65 = v127;
    v127(v28, v146);
    v66 = v63;
    v67 = v64;
    v65(v66, v64);
    sub_213F4CDA0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v136;
    sub_213DE2B44(v57, v136, &qword_27C8FB8F0, &qword_213F61210);
    v77 = v76 + *(v133 + 36);
    *v77 = KeyPath;
    *(v77 + 8) = v69;
    *(v77 + 16) = v71;
    *(v77 + 24) = v73;
    *(v77 + 32) = v75;
    *(v77 + 40) = 0;
    LOBYTE(v57) = sub_213F4E060();
    v78 = v140;
    sub_213DBBD08(v140);
    sub_213F4D280();
    sub_213F4D270();
    v65(v28, v67);
    v65(v78, v67);
    sub_213F4CDA0();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v76;
    v88 = v139;
    sub_213DE2B44(v87, v139, &qword_27C8FB8F8, &qword_213F61218);
    v89 = v88 + *(v135 + 36);
    *v89 = v57;
    *(v89 + 8) = v80;
    *(v89 + 16) = v82;
    *(v89 + 24) = v84;
    *(v89 + 32) = v86;
    *(v89 + 40) = 0;
    LOBYTE(v57) = sub_213F4E070();
    v90 = v141;
    sub_213DBBD08(v141);
    sub_213F4D280();
    sub_213F4D270();
    v65(v28, v67);
    v65(v90, v67);
    v5 = v129;
    sub_213F4CDA0();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v88;
    v100 = v138;
    sub_213DE2B44(v99, v138, &qword_27C8FB900, &qword_213F61220);
    v101 = v149;
    v102 = v100 + *(v149 + 36);
    *v102 = v57;
    *(v102 + 8) = v92;
    *(v102 + 16) = v94;
    *(v102 + 24) = v96;
    *(v102 + 32) = v98;
    *(v102 + 40) = 0;
    v103 = v137;
    sub_213DE2B44(v100, v137, &qword_27C8FB908, &qword_213F61228);
    v104 = v147;
    sub_213DE2B44(v103, v147, &qword_27C8FB908, &qword_213F61228);
    (*(v148 + 56))(v104, 0, 1, v101);
  }

  else
  {
    v104 = v147;
    (*(v148 + 56))(v147, 1, 1, v149);
  }

  v105 = v50[3];
  v106 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v105);
  if (!ListCellProviding.hasBottomAccessory.getter(v105, v106))
  {
    goto LABEL_10;
  }

  v107 = v50[3];
  v108 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v107);
  v109 = v143;
  (*(v108 + 88))(v107, v108);
  v110 = v144;
  if ((*(v142 + 48))(v109, 1, v144) == 1)
  {
    sub_213DE36FC(v109, &qword_27C8FB630, &qword_213F63CC0);
LABEL_10:
    v111 = 1;
    v112 = v152;
    goto LABEL_19;
  }

  v113 = v145;
  sub_213EE79C4(v109, v145, type metadata accessor for BottomAccessoryViewModel);
  v114 = v132;
  sub_213EE6480(v113, v132, type metadata accessor for BottomAccessoryViewModel);
  v115 = *(v113 + *(v110 + 20) + 24) >> 6;
  v112 = v152;
  if (v115 > 1)
  {
    if (v115 == 2)
    {
      v116 = 0xE400000000000000;
      v117 = 1702129486;
    }

    else
    {
      v116 = 0xE600000000000000;
      v117 = 0x736F746F6850;
    }
  }

  else if (v115)
  {
    v116 = 0xE700000000000000;
    v117 = 0x736E6F69746341;
  }

  else
  {
    v116 = 0xEA0000000000746ELL;
    v117 = 0x656D656E69666552;
  }

  v155 = v117;
  v156 = v116;

  MEMORY[0x216052710](0x726F737365636341, 0xE900000000000079);

  sub_213ED26C4(&qword_281186BE8, type metadata accessor for BottomAccessory);
  v118 = v130;
  sub_213F4E6D0();

  sub_213EE64E8(v114, type metadata accessor for BottomAccessory);
  sub_213EE64E8(v145, type metadata accessor for BottomAccessoryViewModel);
  sub_213DE2B44(v118, v112, &qword_27C8FB8D0, &qword_213F611E8);
  v111 = 0;
LABEL_19:
  (*(v154 + 56))(v112, v111, 1, v5);
  v119 = v151;
  sub_213DE3164(v104, v151, &qword_27C8FB9A0, &qword_213F612E0);
  v120 = v153;
  sub_213DE3164(v112, v153, &qword_27C8FB8D8, &qword_213F611F0);
  v121 = v150;
  sub_213DE3164(v119, v150, &qword_27C8FB9A0, &qword_213F612E0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A8, &qword_213F612E8);
  sub_213DE3164(v120, v121 + *(v122 + 48), &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v112, &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v104, &qword_27C8FB9A0, &qword_213F612E0);
  sub_213DE36FC(v120, &qword_27C8FB8D8, &qword_213F611F0);
  return sub_213DE36FC(v119, &qword_27C8FB9A0, &qword_213F612E0);
}

uint64_t sub_213ED5A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF10, &qword_213F5E220);
  return sub_213EDC2B8(v4, a1 + *(v5 + 48), a2);
}

double sub_213ED5AE4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellMediumImageLeft(0);
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - v9;
  v10 = sub_213F4D290();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = v2 + *(v5 + 28);
  sub_213DBBD08(&v37 - v16);
  sub_213F4D280();
  LOBYTE(v18) = sub_213F4D270();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  if (v18)
  {
    v20 = 8.0;
  }

  else
  {
    v20 = 12.0;
  }

  v21 = v2;
  v22 = v2;
  v23 = v37;
  sub_213EE6480(v22, v37, type metadata accessor for ListCellMediumImageLeft);
  v24 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v38 = swift_allocObject();
  sub_213EE79C4(v23, v38 + v24, type metadata accessor for ListCellMediumImageLeft);
  sub_213EE6480(v21, v8, type metadata accessor for ListCellMediumImageLeft);
  v25 = swift_allocObject();
  sub_213EE79C4(v8, v25 + v24, type metadata accessor for ListCellMediumImageLeft);
  sub_213EE6480(v21, v8, type metadata accessor for ListCellMediumImageLeft);
  v26 = swift_allocObject();
  sub_213EE79C4(v8, v26 + v24, type metadata accessor for ListCellMediumImageLeft);
  sub_213EE6480(v21, v8, type metadata accessor for ListCellMediumImageLeft);
  v27 = swift_allocObject();
  sub_213EE79C4(v8, v27 + v24, type metadata accessor for ListCellMediumImageLeft);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9B0, &qword_213F612F0);
  v29 = a1 + v28[29];
  type metadata accessor for CGSize(0);
  v39 = 0;
  v40 = 0;
  sub_213F4EA90();
  v30 = v42;
  result = *&v41;
  *v29 = v41;
  *(v29 + 2) = v30;
  *(a1 + v28[21]) = 0;
  *(a1 + v28[22]) = 0;
  *(a1 + v28[23]) = v20;
  *(a1 + v28[24]) = 1;
  v32 = (a1 + v28[25]);
  v33 = v38;
  *v32 = sub_213EE8D60;
  v32[1] = v33;
  v34 = (a1 + v28[26]);
  *v34 = sub_213EE8D7C;
  v34[1] = v25;
  v35 = (a1 + v28[27]);
  *v35 = sub_213EE8DA8;
  v35[1] = v26;
  v36 = (a1 + v28[28]);
  *v36 = sub_213EE8DD4;
  v36[1] = v27;
  return result;
}

uint64_t sub_213ED5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v97 = sub_213F4D290();
  v102 = *(v97 - 8);
  v3 = *(v102 + 64);
  v4 = MEMORY[0x28223BE20](v97);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v85 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v96 = &v85 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v85 - v10;
  v11 = sub_213F4D390();
  v12 = *(v11 - 8);
  v103 = v11;
  v104 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9B8, &qword_213F612F8);
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9C0, &qword_213F61300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v85 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB700, &unk_213F60F70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - v24;
  v26 = type metadata accessor for ListCellMediumImageLeft(0);
  v27 = v26[7];
  v101 = a1;
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 24);
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_0(v28, v29);
  v31 = ListCellProviding.hasLeadingAccessory.getter(v29, v30);
  v98 = v18;
  if (v31)
  {
    *v25 = sub_213F4D8A0();
    *(v25 + 1) = 0;
    v25[16] = 0;
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB718, &qword_213F60F90) + 44);
    v32 = v28[3];
    v33 = v28[4];
    __swift_project_boxed_opaque_existential_0(v28, v32);
    *&v115[0] = (*(v33 + 64))(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB720, &qword_213F60F98);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213DE3AE4(&qword_2811824B8, &qword_27C8FB720, &qword_213F60F98);
    sub_213EE78D8();
    sub_213ED26C4(qword_281184438, type metadata accessor for LeadingAccessoryViewModel);
    sub_213F4ECD0();
    v34 = &qword_27C8FB700;
    v35 = &unk_213F60F70;
    sub_213DE3164(v25, v21, &qword_27C8FB700, &unk_213F60F70);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70);
    sub_213EE8F4C();
    sub_213F4DBA0();
    v36 = v25;
  }

  else
  {
    v89 = v21;
    v90 = v22;
    v37 = byte_213F6132A[*(v101 + v26[8])];
    v38 = v28[3];
    v39 = v28[4];
    __swift_project_boxed_opaque_existential_0(v28, v38);
    (*(v39 + 16))(v106, v38, v39);
    v40 = v28[3];
    v41 = v28[4];
    __swift_project_boxed_opaque_existential_0(v28, v40);
    (*(v41 + 24))(v105, v40, v41);
    v42 = v28[3];
    v43 = v28[4];
    __swift_project_boxed_opaque_existential_0(v28, v42);
    v44 = (*(v43 + 32))(v42, v43);
    *(v115 + 8) = 0u;
    *(&v115[1] + 8) = 0u;
    *(&v115[2] + 8) = 0u;
    *(&v115[3] + 8) = 0u;
    *(&v115[4] + 8) = 0u;
    sub_213E5201C(v106, v115 + 8, &qword_27C8F7AB8, &qword_213F522C0);
    sub_213E5201C(v105, &v115[3], &qword_27C8F7AB8, &qword_213F522C0);
    BYTE8(v115[5]) = 1;
    v116 = v44;
    LOBYTE(v115[0]) = v37;
    v88 = sub_213F4E080();
    v87 = v26[6];
    sub_213EA886C(v15);
    sub_213F4D370();
    v86 = *(v104 + 8);
    v104 += 8;
    v86(v15, v103);
    v91 = v26[5];
    v45 = v93;
    sub_213DBBD08(v93);
    v46 = v96;
    sub_213F4D280();
    sub_213F4D270();
    v47 = v102 + 8;
    v48 = *(v102 + 8);
    v49 = v97;
    v48(v46, v97);
    v48(v45, v49);
    sub_213F4CDA0();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v111 = v115[4];
    v112 = v115[5];
    v113 = v116;
    v107 = v115[0];
    v108 = v115[1];
    v109 = v115[2];
    v110 = v115[3];
    LOBYTE(v106[0]) = 0;
    LODWORD(v93) = sub_213F4E060();
    sub_213EA886C(v15);
    sub_213F4D370();
    v58 = v15;
    v59 = v15;
    v60 = v86;
    v86(v58, v103);
    v61 = v94;
    sub_213DBBD08(v94);
    sub_213F4D280();
    sub_213F4D270();
    v48(v46, v49);
    v62 = v61;
    v63 = v60;
    v64 = v59;
    v102 = v47;
    v48(v62, v49);
    sub_213F4CDA0();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = v106[0];
    v114 = 0;
    v74 = sub_213F4E070();
    sub_213EA886C(v64);
    LOBYTE(v44) = sub_213F4D370();
    v63(v64, v103);
    if ((v44 & 1) == 0)
    {
      sub_213EA886C(v64);
      sub_213F4D370();
      v63(v64, v103);
      v104 = v72;
      v75 = v92;
      sub_213DBBD08(v92);
      v76 = v96;
      sub_213F4D280();
      sub_213F4D270();
      v77 = v76;
      v78 = v97;
      v48(v77, v97);
      v48(v75, v78);
      v72 = v104;
    }

    sub_213F4CDA0();
    v115[4] = v111;
    v115[5] = v112;
    v116 = v113;
    v115[0] = v107;
    v115[1] = v108;
    v115[2] = v109;
    v115[3] = v110;
    v117 = v88;
    v118 = v51;
    v119 = v53;
    v120 = v55;
    v121 = v57;
    v122 = v73;
    *&v123[3] = *(v106 + 3);
    *v123 = v106[0];
    v124 = v93;
    *&v125[3] = *(v105 + 3);
    *v125 = v105[0];
    v126 = v66;
    v127 = v68;
    v128 = v70;
    v129 = v72;
    v130 = v114;
    v131 = v74;
    v132 = v79;
    v133 = v80;
    v134 = v81;
    v135 = v82;
    v136 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9C8, &qword_213F61308);
    sub_213EE8EC0();
    v83 = v95;
    sub_213F4E6D0();
    sub_213DE36FC(v115, &qword_27C8FB9C8, &qword_213F61308);
    v34 = &qword_27C8FB9B8;
    v35 = &qword_213F612F8;
    sub_213DE3164(v83, v89, &qword_27C8FB9B8, &qword_213F612F8);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70);
    sub_213EE8F4C();
    sub_213F4DBA0();
    v36 = v83;
  }

  return sub_213DE36FC(v36, v34, v35);
}

uint64_t sub_213ED6994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListCellMediumImageLeft(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB938, &qword_213F61280);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = (a1 + *(v5 + 36));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v13);
  if (ListCellProviding.hasTrailingAccessory.getter(v13, v14))
  {
    *v11 = sub_213F4D8A0();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB948, &qword_213F61290) + 44);
    v23 = a2;
    v16 = v12[3];
    v15 = v12[4];
    __swift_project_boxed_opaque_existential_0(v12, v16);
    v25 = (*(v15 + 72))(v16, v15);
    sub_213EE6480(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellMediumImageLeft);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    sub_213EE79C4(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ListCellMediumImageLeft);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB950, &qword_213F61298);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50);
    sub_213EE89D0();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    v19 = v23;
    sub_213DE2B44(v11, v23, &qword_27C8FB938, &qword_213F61280);
    return (*(v24 + 56))(v19, 0, 1, v8);
  }

  else
  {
    v21 = *(v24 + 56);

    return v21(a2, 1, 1, v8);
  }
}

uint64_t sub_213ED6D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TrailingAccessory(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E8, &qword_213F60F58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  sub_213EE6480(a1, v11 + *(v8 + 24), type metadata accessor for TrailingAccessoryViewModel);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v16 = *(v8 + 20);
  *(v11 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v20[0] = TrailingAccessoryViewModel.axIDString.getter();
  v20[1] = v17;

  MEMORY[0x216052710](a2, a3);

  sub_213ED26C4(&qword_281185C30, type metadata accessor for TrailingAccessory);
  sub_213F4E6D0();

  sub_213EE64E8(v11, type metadata accessor for TrailingAccessory);
  if (sub_213ED9514())
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0;
  }

  sub_213DE2B44(v15, a4, &qword_27C8FB6E8, &qword_213F60F58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB950, &qword_213F61298);
  *(a4 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_213ED6FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v131 = type metadata accessor for BottomAccessory(0);
  v3 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D0, &qword_213F611E8);
  v154 = *(v5 - 8);
  v6 = *(v154 + 64);
  MEMORY[0x28223BE20](v5);
  v130 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v124 - v10;
  v144 = type metadata accessor for BottomAccessoryViewModel(0);
  v142 = *(v144 - 8);
  v11 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D8, &qword_213F611F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v153 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v124 - v17;
  v146 = sub_213F4D290();
  v18 = *(v146 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v146);
  v141 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v124 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v124 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v124 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v124 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F0, &qword_213F61210);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v124 - v33;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F8, &qword_213F61218);
  v35 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v124 - v36;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB900, &qword_213F61220);
  v37 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v139 = &v124 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB908, &qword_213F61228);
  v148 = *(v39 - 8);
  v149 = v39;
  v40 = *(v148 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v138 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v137 = &v124 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A0, &qword_213F612E0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v151 = &v124 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v147 = &v124 - v48;
  v49 = type metadata accessor for ListCellMediumImageLeft(0);
  v50 = (a1 + *(v49 + 28));
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v51);
  if (ListCellProviding.hasContextLineAccessory.getter(v51, v52))
  {
    v128 = *(v49 + 20);
    sub_213DBBD08(v30);
    sub_213F4D280();
    v53 = sub_213F4D270();
    v129 = v5;
    v54 = *(v18 + 8);
    v127 = v54;
    v55 = v146;
    v54(v28, v146);
    v54(v30, v55);
    if (v53)
    {
      v56 = 0x3FF0000000000000;
    }

    else
    {
      v56 = 0x4008000000000000;
    }

    v57 = v34;
    *v34 = sub_213F4DA40();
    *(v34 + 1) = v56;
    v34[16] = 0;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB918, &qword_213F61238) + 44);
    v59 = v50[3];
    v60 = v50[4];
    __swift_project_boxed_opaque_existential_0(v50, v59);
    v61 = (*(v60 + 80))(v59, v60);
    v62 = sub_213EAA104(v61);

    v155 = v62;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB920, &qword_213F61260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB928, &qword_213F61268);
    sub_213DE3AE4(&qword_281182468, &qword_27C8FB920, &qword_213F61260);
    sub_213EE8838();
    sub_213F4ECC0();
    LODWORD(KeyPath) = sub_213F4E040();
    v126 = a1;
    v63 = v134;
    sub_213DBBD08(v134);
    sub_213F4D280();
    sub_213F4D270();
    v64 = v146;
    v65 = v127;
    v127(v28, v146);
    v66 = v63;
    v67 = v64;
    v65(v66, v64);
    sub_213F4CDA0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v136;
    sub_213DE2B44(v57, v136, &qword_27C8FB8F0, &qword_213F61210);
    v77 = v76 + *(v133 + 36);
    *v77 = KeyPath;
    *(v77 + 8) = v69;
    *(v77 + 16) = v71;
    *(v77 + 24) = v73;
    *(v77 + 32) = v75;
    *(v77 + 40) = 0;
    LOBYTE(v57) = sub_213F4E060();
    v78 = v140;
    sub_213DBBD08(v140);
    sub_213F4D280();
    sub_213F4D270();
    v65(v28, v67);
    v65(v78, v67);
    sub_213F4CDA0();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v76;
    v88 = v139;
    sub_213DE2B44(v87, v139, &qword_27C8FB8F8, &qword_213F61218);
    v89 = v88 + *(v135 + 36);
    *v89 = v57;
    *(v89 + 8) = v80;
    *(v89 + 16) = v82;
    *(v89 + 24) = v84;
    *(v89 + 32) = v86;
    *(v89 + 40) = 0;
    LOBYTE(v57) = sub_213F4E070();
    v90 = v141;
    sub_213DBBD08(v141);
    sub_213F4D280();
    sub_213F4D270();
    v65(v28, v67);
    v65(v90, v67);
    v5 = v129;
    sub_213F4CDA0();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v88;
    v100 = v138;
    sub_213DE2B44(v99, v138, &qword_27C8FB900, &qword_213F61220);
    v101 = v149;
    v102 = v100 + *(v149 + 36);
    *v102 = v57;
    *(v102 + 8) = v92;
    *(v102 + 16) = v94;
    *(v102 + 24) = v96;
    *(v102 + 32) = v98;
    *(v102 + 40) = 0;
    v103 = v137;
    sub_213DE2B44(v100, v137, &qword_27C8FB908, &qword_213F61228);
    v104 = v147;
    sub_213DE2B44(v103, v147, &qword_27C8FB908, &qword_213F61228);
    (*(v148 + 56))(v104, 0, 1, v101);
  }

  else
  {
    v104 = v147;
    (*(v148 + 56))(v147, 1, 1, v149);
  }

  v105 = v50[3];
  v106 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v105);
  if (!ListCellProviding.hasBottomAccessory.getter(v105, v106))
  {
    goto LABEL_10;
  }

  v107 = v50[3];
  v108 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v107);
  v109 = v143;
  (*(v108 + 88))(v107, v108);
  v110 = v144;
  if ((*(v142 + 48))(v109, 1, v144) == 1)
  {
    sub_213DE36FC(v109, &qword_27C8FB630, &qword_213F63CC0);
LABEL_10:
    v111 = 1;
    v112 = v152;
    goto LABEL_19;
  }

  v113 = v145;
  sub_213EE79C4(v109, v145, type metadata accessor for BottomAccessoryViewModel);
  v114 = v132;
  sub_213EE6480(v113, v132, type metadata accessor for BottomAccessoryViewModel);
  v115 = *(v113 + *(v110 + 20) + 24) >> 6;
  v112 = v152;
  if (v115 > 1)
  {
    if (v115 == 2)
    {
      v116 = 0xE400000000000000;
      v117 = 1702129486;
    }

    else
    {
      v116 = 0xE600000000000000;
      v117 = 0x736F746F6850;
    }
  }

  else if (v115)
  {
    v116 = 0xE700000000000000;
    v117 = 0x736E6F69746341;
  }

  else
  {
    v116 = 0xEA0000000000746ELL;
    v117 = 0x656D656E69666552;
  }

  v155 = v117;
  v156 = v116;

  MEMORY[0x216052710](0x726F737365636341, 0xE900000000000079);

  sub_213ED26C4(&qword_281186BE8, type metadata accessor for BottomAccessory);
  v118 = v130;
  sub_213F4E6D0();

  sub_213EE64E8(v114, type metadata accessor for BottomAccessory);
  sub_213EE64E8(v145, type metadata accessor for BottomAccessoryViewModel);
  sub_213DE2B44(v118, v112, &qword_27C8FB8D0, &qword_213F611E8);
  v111 = 0;
LABEL_19:
  (*(v154 + 56))(v112, v111, 1, v5);
  v119 = v151;
  sub_213DE3164(v104, v151, &qword_27C8FB9A0, &qword_213F612E0);
  v120 = v153;
  sub_213DE3164(v112, v153, &qword_27C8FB8D8, &qword_213F611F0);
  v121 = v150;
  sub_213DE3164(v119, v150, &qword_27C8FB9A0, &qword_213F612E0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A8, &qword_213F612E8);
  sub_213DE3164(v120, v121 + *(v122 + 48), &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v112, &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v104, &qword_27C8FB9A0, &qword_213F612E0);
  sub_213DE36FC(v120, &qword_27C8FB8D8, &qword_213F611F0);
  return sub_213DE36FC(v119, &qword_27C8FB9A0, &qword_213F612E0);
}

double sub_213ED7DF4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellMediumImageRight(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  sub_213EE6480(v1, v23 - v9, type metadata accessor for ListCellMediumImageRight);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213EE79C4(v10, v12 + v11, type metadata accessor for ListCellMediumImageRight);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellMediumImageRight);
  v13 = swift_allocObject();
  sub_213EE79C4(v8, v13 + v11, type metadata accessor for ListCellMediumImageRight);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellMediumImageRight);
  v14 = swift_allocObject();
  sub_213EE79C4(v8, v14 + v11, type metadata accessor for ListCellMediumImageRight);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9E0, &qword_213F61310);
  v16 = a1 + v15[29];
  type metadata accessor for CGSize(0);
  v23[0] = 0;
  v23[1] = 0;
  sub_213F4EA90();
  v17 = v25;
  result = *&v24;
  *v16 = v24;
  *(v16 + 2) = v17;
  *(a1 + v15[21]) = 0;
  *(a1 + v15[22]) = 0;
  *(a1 + v15[23]) = 0;
  *(a1 + v15[24]) = 1;
  v19 = (a1 + v15[25]);
  *v19 = sub_213EE9008;
  v19[1] = v12;
  v20 = (a1 + v15[26]);
  *v20 = nullsub_1;
  v20[1] = 0;
  v21 = (a1 + v15[27]);
  *v21 = sub_213EE9034;
  v21[1] = v13;
  v22 = (a1 + v15[28]);
  *v22 = sub_213EE9060;
  v22[1] = v14;
  return result;
}

uint64_t sub_213ED80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for MultiTextView(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ListCellMediumImageRight(0);
  sub_213DEBAA8(a1 + *(v17 + 20), v16 + v13[8]);
  LOBYTE(v17) = *(a1 + *(v17 + 24));
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v18 = v13[7];
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v16 + v13[9]) = v17;
  *(v16 + v13[10]) = 0;
  LOBYTE(v13) = sub_213F4E040();
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v5 + 8);
  v19(v9, v4);
  v19(v11, v4);
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_213EE79C4(v16, a2, type metadata accessor for MultiTextView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0);
  v29 = a2 + *(result + 36);
  *v29 = v13;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_213ED8360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a1;
  v33[1] = a2;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  v14 = (a1 + *(type metadata accessor for ListCellMediumImageRight(0) + 20));
  v16 = v14[3];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v16);
  (*(v15 + 16))(&v36, v16, v15);
  v17 = v14[3];
  v18 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v17);
  (*(v18 + 24))(v34, v17, v18);
  *(&v43[4] + 8) = 0u;
  *(&v43[3] + 8) = 0u;
  *(&v43[2] + 8) = 0u;
  *(&v43[1] + 8) = 0u;
  *(v43 + 8) = 0u;
  sub_213E5201C(&v36, v43 + 8, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213E5201C(v34, &v43[3], &qword_27C8F7AB8, &qword_213F522C0);
  BYTE8(v43[5]) = 0;
  v44 = 0;
  LOBYTE(v43[0]) = 3;
  LOBYTE(v14) = sub_213F4E0A0();
  sub_213DBBD08(v13);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v4 + 8);
  v19(v11, v3);
  v19(v13, v3);
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v40 = v43[4];
  v41 = v43[5];
  v42 = v44;
  v36 = v43[0];
  v37 = v43[1];
  v38 = v43[2];
  v39 = v43[3];
  v35 = 0;
  LOBYTE(v13) = sub_213F4E0B0();
  sub_213DBBD08(v8);
  sub_213F4D280();
  sub_213F4D270();
  v19(v11, v3);
  v19(v8, v3);
  sub_213F4CDA0();
  v43[4] = v40;
  v43[5] = v41;
  v44 = v42;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  v43[3] = v39;
  v45 = v14;
  *&v46[3] = *(v34 + 3);
  *v46 = v34[0];
  v47 = v21;
  v48 = v23;
  v49 = v25;
  v50 = v27;
  v51 = v35;
  v52 = v13;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB708, &qword_213F60F80);
  sub_213EE76B0();
  sub_213F4E6D0();
  return sub_213DE36FC(v43, &qword_27C8FB708, &qword_213F60F80);
}

uint64_t sub_213ED871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v122 = type metadata accessor for BottomAccessory(0);
  v3 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v123 = v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D0, &qword_213F611E8);
  v137 = *(v5 - 8);
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v5);
  v121 = v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v134 = v118 - v10;
  v135 = type metadata accessor for BottomAccessoryViewModel(0);
  v133 = *(v135 - 8);
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v135);
  v136 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D8, &qword_213F611F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v144 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v143 = v118 - v17;
  v18 = sub_213F4D290();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v132 = v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v131 = v118 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v125 = v118 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v118 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v118 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F0, &qword_213F61210);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = v118 - v34;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F8, &qword_213F61218);
  v36 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v127 = v118 - v37;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB900, &qword_213F61220);
  v38 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v130 = v118 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB908, &qword_213F61228);
  v139 = *(v40 - 8);
  v140 = v40;
  v41 = *(v139 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v129 = v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v128 = v118 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A0, &qword_213F612E0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v142 = v118 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v138 = v118 - v49;
  v50 = (a1 + *(type metadata accessor for ListCellMediumImageRight(0) + 20));
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v51);
  if (ListCellProviding.hasContextLineAccessory.getter(v51, v52))
  {
    sub_213DBBD08(v31);
    sub_213F4D280();
    v53 = sub_213F4D270();
    v120 = v5;
    v54 = *(v19 + 8);
    v119 = v54;
    v54(v29, v18);
    v54(v31, v18);
    if (v53)
    {
      v55 = 0x3FF0000000000000;
    }

    else
    {
      v55 = 0x4008000000000000;
    }

    *v35 = sub_213F4DA40();
    *(v35 + 1) = v55;
    v35[16] = 0;
    v118[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB918, &qword_213F61238) + 44);
    v56 = v50[3];
    v57 = v50[4];
    __swift_project_boxed_opaque_existential_0(v50, v56);
    v58 = (*(v57 + 80))(v56, v57);
    v59 = sub_213EAA104(v58);

    v145 = v59;
    v118[0] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB920, &qword_213F61260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB928, &qword_213F61268);
    v118[1] = a1;
    sub_213DE3AE4(&qword_281182468, &qword_27C8FB920, &qword_213F61260);
    sub_213EE8838();
    sub_213F4ECC0();
    LOBYTE(v59) = sub_213F4E040();
    v60 = v125;
    sub_213DBBD08(v125);
    sub_213F4D280();
    sub_213F4D270();
    v61 = v119;
    v119(v29, v18);
    v61(v60, v18);
    sub_213F4CDA0();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v127;
    sub_213DE2B44(v35, v127, &qword_27C8FB8F0, &qword_213F61210);
    v71 = v70 + *(v124 + 36);
    *v71 = v59;
    *(v71 + 8) = v63;
    *(v71 + 16) = v65;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 0;
    LOBYTE(v60) = sub_213F4E060();
    v72 = v131;
    sub_213DBBD08(v131);
    sub_213F4D280();
    sub_213F4D270();
    v61(v29, v18);
    v61(v72, v18);
    sub_213F4CDA0();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v70;
    v82 = v130;
    sub_213DE2B44(v81, v130, &qword_27C8FB8F8, &qword_213F61218);
    v83 = v82 + *(v126 + 36);
    *v83 = v60;
    *(v83 + 8) = v74;
    *(v83 + 16) = v76;
    *(v83 + 24) = v78;
    *(v83 + 32) = v80;
    *(v83 + 40) = 0;
    LOBYTE(v60) = sub_213F4E070();
    v84 = v132;
    sub_213DBBD08(v132);
    sub_213F4D280();
    sub_213F4D270();
    v61(v29, v18);
    v61(v84, v18);
    v5 = v120;
    sub_213F4CDA0();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v129;
    sub_213DE2B44(v82, v129, &qword_27C8FB900, &qword_213F61220);
    v94 = v140;
    v95 = v93 + *(v140 + 36);
    *v95 = v60;
    *(v95 + 8) = v86;
    *(v95 + 16) = v88;
    *(v95 + 24) = v90;
    *(v95 + 32) = v92;
    *(v95 + 40) = 0;
    v96 = v93;
    v97 = v128;
    sub_213DE2B44(v96, v128, &qword_27C8FB908, &qword_213F61228);
    v98 = v138;
    sub_213DE2B44(v97, v138, &qword_27C8FB908, &qword_213F61228);
    (*(v139 + 56))(v98, 0, 1, v94);
  }

  else
  {
    v98 = v138;
    (*(v139 + 56))(v138, 1, 1, v140);
  }

  v99 = v50[3];
  v100 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v99);
  if (!ListCellProviding.hasBottomAccessory.getter(v99, v100))
  {
    goto LABEL_10;
  }

  v101 = v50[3];
  v102 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v101);
  v103 = v134;
  (*(v102 + 88))(v101, v102);
  v104 = v135;
  if ((*(v133 + 48))(v103, 1, v135) == 1)
  {
    sub_213DE36FC(v103, &qword_27C8FB630, &qword_213F63CC0);
LABEL_10:
    v105 = 1;
    v106 = v143;
    goto LABEL_19;
  }

  v107 = v136;
  sub_213EE79C4(v103, v136, type metadata accessor for BottomAccessoryViewModel);
  v108 = v123;
  sub_213EE6480(v107, v123, type metadata accessor for BottomAccessoryViewModel);
  v109 = *(v107 + *(v104 + 20) + 24) >> 6;
  v106 = v143;
  if (v109 > 1)
  {
    if (v109 == 2)
    {
      v110 = 0xE400000000000000;
      v111 = 1702129486;
    }

    else
    {
      v110 = 0xE600000000000000;
      v111 = 0x736F746F6850;
    }
  }

  else if (v109)
  {
    v110 = 0xE700000000000000;
    v111 = 0x736E6F69746341;
  }

  else
  {
    v110 = 0xEA0000000000746ELL;
    v111 = 0x656D656E69666552;
  }

  v145 = v111;
  v146 = v110;

  MEMORY[0x216052710](0x726F737365636341, 0xE900000000000079);

  sub_213ED26C4(&qword_281186BE8, type metadata accessor for BottomAccessory);
  v112 = v121;
  sub_213F4E6D0();

  sub_213EE64E8(v108, type metadata accessor for BottomAccessory);
  sub_213EE64E8(v136, type metadata accessor for BottomAccessoryViewModel);
  sub_213DE2B44(v112, v106, &qword_27C8FB8D0, &qword_213F611E8);
  v105 = 0;
LABEL_19:
  (*(v137 + 56))(v106, v105, 1, v5);
  v113 = v142;
  sub_213DE3164(v98, v142, &qword_27C8FB9A0, &qword_213F612E0);
  v114 = v144;
  sub_213DE3164(v106, v144, &qword_27C8FB8D8, &qword_213F611F0);
  v115 = v141;
  sub_213DE3164(v113, v141, &qword_27C8FB9A0, &qword_213F612E0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB9A8, &qword_213F612E8);
  sub_213DE3164(v114, v115 + *(v116 + 48), &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v106, &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v98, &qword_27C8FB9A0, &qword_213F612E0);
  sub_213DE36FC(v114, &qword_27C8FB8D8, &qword_213F611F0);
  return sub_213DE36FC(v113, &qword_27C8FB9A0, &qword_213F612E0);
}

uint64_t sub_213ED9514()
{
  v0 = sub_213F4EDA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB958, &qword_213F612A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB960, &qword_213F612A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_213EA868C(v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
  {
    sub_213DE36FC(v11, &qword_27C8F8D50, &unk_213F5E0A0);
    v23 = 1;
  }

  else
  {
    MEMORY[0x216052020](v22);
    sub_213DE36FC(v11, &qword_27C8F8FC8, &qword_213F61200);
    v23 = 0;
  }

  v24 = *(v1 + 56);
  v24(v21, v23, 1, v0);
  (*(v1 + 104))(v19, *MEMORY[0x277CDF0D0], v0);
  v24(v19, 0, 1, v0);
  v25 = *(v4 + 48);
  sub_213DE3164(v21, v7, &qword_27C8FB960, &qword_213F612A8);
  sub_213DE3164(v19, &v7[v25], &qword_27C8FB960, &qword_213F612A8);
  v26 = *(v1 + 48);
  if (v26(v7, 1, v0) != 1)
  {
    sub_213DE3164(v7, v16, &qword_27C8FB960, &qword_213F612A8);
    if (v26(&v7[v25], 1, v0) != 1)
    {
      v28 = v32;
      (*(v1 + 32))(v32, &v7[v25], v0);
      sub_213ED26C4(&qword_27C8FB968, MEMORY[0x277CDF0E0]);
      v27 = sub_213F4F1F0();
      v29 = *(v1 + 8);
      v29(v28, v0);
      sub_213DE36FC(v19, &qword_27C8FB960, &qword_213F612A8);
      sub_213DE36FC(v21, &qword_27C8FB960, &qword_213F612A8);
      v29(v16, v0);
      sub_213DE36FC(v7, &qword_27C8FB960, &qword_213F612A8);
      return v27 & 1;
    }

    sub_213DE36FC(v19, &qword_27C8FB960, &qword_213F612A8);
    sub_213DE36FC(v21, &qword_27C8FB960, &qword_213F612A8);
    (*(v1 + 8))(v16, v0);
    goto LABEL_9;
  }

  sub_213DE36FC(v19, &qword_27C8FB960, &qword_213F612A8);
  sub_213DE36FC(v21, &qword_27C8FB960, &qword_213F612A8);
  if (v26(&v7[v25], 1, v0) != 1)
  {
LABEL_9:
    sub_213DE36FC(v7, &qword_27C8FB958, &qword_213F612A0);
    v27 = 0;
    return v27 & 1;
  }

  sub_213DE36FC(v7, &qword_27C8FB960, &qword_213F612A8);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_213ED9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v88 = type metadata accessor for BottomAccessory(0);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D0, &qword_213F611E8);
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v85 - v10;
  v92 = type metadata accessor for BottomAccessoryViewModel(0);
  v90 = *(v92 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8D8, &qword_213F611F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v101 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v85 - v17;
  v18 = type metadata accessor for ListCellSmall(0);
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  v20 = v18 - 8;
  v98 = v18 - 8;
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v96 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v95 = &v85 - v23;
  MEMORY[0x28223BE20](v22);
  v93 = &v85 - v24;
  v25 = sub_213F4D290();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8E0, &qword_213F611F8);
  v34 = (v33 - 8);
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v100 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v85 - v39);
  MEMORY[0x28223BE20](v38);
  v97 = &v85 - v41;
  v42 = a1 + *(v20 + 28);
  sub_213DBBD08(v32);
  sub_213F4D280();
  LOBYTE(v42) = sub_213F4D270();
  v43 = *(v26 + 8);
  v43(v30, v25);
  v43(v32, v25);
  if (v42)
  {
    v44 = 8.0;
  }

  else
  {
    v44 = 12.0;
  }

  v45 = a1;
  v46 = a1;
  v47 = v93;
  sub_213EE6480(v46, v93, type metadata accessor for ListCellSmall);
  v48 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v94 = swift_allocObject();
  sub_213EE79C4(v47, v94 + v48, type metadata accessor for ListCellSmall);
  v49 = v45;
  v50 = v45;
  v51 = v95;
  sub_213EE6480(v49, v95, type metadata accessor for ListCellSmall);
  v93 = swift_allocObject();
  sub_213EE79C4(v51, v93 + v48, type metadata accessor for ListCellSmall);
  v52 = v96;
  sub_213EE6480(v50, v96, type metadata accessor for ListCellSmall);
  v53 = swift_allocObject();
  sub_213EE79C4(v52, v53 + v48, type metadata accessor for ListCellSmall);
  sub_213EE6480(v50, v52, type metadata accessor for ListCellSmall);
  v54 = swift_allocObject();
  sub_213EE79C4(v52, v54 + v48, type metadata accessor for ListCellSmall);
  *v40 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v55 = v40 + v34[31];
  type metadata accessor for CGSize(0);
  v105 = 0;
  v106 = 0;
  sub_213F4EA90();
  v56 = v108;
  *v55 = v107;
  *(v55 + 2) = v56;
  v57 = 1;
  *(v40 + v34[23]) = 1;
  *(v40 + v34[24]) = 0;
  *(v40 + v34[25]) = v44;
  *(v40 + v34[26]) = 1;
  v58 = (v40 + v34[27]);
  v59 = v93;
  v60 = v94;
  *v58 = sub_213EE84A8;
  v58[1] = v60;
  v61 = (v40 + v34[28]);
  *v61 = sub_213EE87B4;
  v61[1] = v59;
  v62 = (v40 + v34[29]);
  *v62 = sub_213EE87E0;
  v62[1] = v53;
  v63 = v99;
  v64 = v34[30];
  v65 = v97;
  v66 = (v40 + v64);
  *v66 = sub_213EE880C;
  v66[1] = v54;
  sub_213DE2B44(v40, v65, &qword_27C8FB8E0, &qword_213F611F8);
  v67 = (v50 + *(v98 + 36));
  v68 = v67[3];
  v69 = v67[4];
  __swift_project_boxed_opaque_existential_0(v67, v68);
  if (ListCellProviding.hasBottomAccessory.getter(v68, v69))
  {
    v70 = v67[3];
    v71 = v67[4];
    __swift_project_boxed_opaque_existential_0(v67, v70);
    v72 = v91;
    (*(v71 + 88))(v70, v71);
    v73 = v92;
    if ((*(v90 + 48))(v72, 1, v92) == 1)
    {
      sub_213DE36FC(v72, &qword_27C8FB630, &qword_213F63CC0);
      v57 = 1;
    }

    else
    {
      v74 = v86;
      sub_213EE79C4(v72, v86, type metadata accessor for BottomAccessoryViewModel);
      v75 = v89;
      sub_213EE6480(v74, v89, type metadata accessor for BottomAccessoryViewModel);
      v76 = *(v74 + *(v73 + 20) + 24) >> 6;
      if (v76 > 1)
      {
        if (v76 == 2)
        {
          v77 = 0xE400000000000000;
          v78 = 1702129486;
        }

        else
        {
          v77 = 0xE600000000000000;
          v78 = 0x736F746F6850;
        }
      }

      else if (v76)
      {
        v77 = 0xE700000000000000;
        v78 = 0x736E6F69746341;
      }

      else
      {
        v77 = 0xEA0000000000746ELL;
        v78 = 0x656D656E69666552;
      }

      *&v107 = v78;
      *(&v107 + 1) = v77;

      MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);

      sub_213ED26C4(&qword_281186BE8, type metadata accessor for BottomAccessory);
      v79 = v87;
      sub_213F4E6D0();

      sub_213EE64E8(v75, type metadata accessor for BottomAccessory);
      sub_213EE64E8(v74, type metadata accessor for BottomAccessoryViewModel);
      sub_213DE2B44(v79, v63, &qword_27C8FB8D0, &qword_213F611E8);
      v57 = 0;
    }
  }

  (*(v102 + 56))(v63, v57, 1, v103);
  v80 = v100;
  sub_213DE3164(v65, v100, &qword_27C8FB8E0, &qword_213F611F8);
  v81 = v101;
  sub_213DE3164(v63, v101, &qword_27C8FB8D8, &qword_213F611F0);
  v82 = v104;
  sub_213DE3164(v80, v104, &qword_27C8FB8E0, &qword_213F611F8);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8E8, &qword_213F61208);
  sub_213DE3164(v81, v82 + *(v83 + 48), &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v63, &qword_27C8FB8D8, &qword_213F611F0);
  sub_213DE36FC(v65, &qword_27C8FB8E0, &qword_213F611F8);
  sub_213DE36FC(v81, &qword_27C8FB8D8, &qword_213F611F0);
  return sub_213DE36FC(v80, &qword_27C8FB8E0, &qword_213F611F8);
}

uint64_t sub_213EDA4E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v72 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v78 = v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v68 - v13;
  MEMORY[0x28223BE20](v12);
  v71 = v68 - v15;
  v16 = sub_213F4D390();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MultiTextView(0);
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0);
  v26 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v81 = v68 - v27;
  v28 = a2(0);
  v29 = v25 + v22[8];
  v70 = (a1 + v28[7]);
  sub_213DEBAA8(v70, v29);
  LOBYTE(a2) = *(a1 + v28[8]);
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v30 = v22[7];
  *(v25 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v25 + v22[9]) = a2;
  *(v25 + v22[10]) = 0;
  v73 = sub_213F4E080();
  v31 = v28[6];
  sub_213EA886C(v20);
  LOBYTE(v22) = sub_213F4D370();
  v32 = *(v17 + 8);
  v77 = v16;
  v75 = v17 + 8;
  v32(v20, v16);
  if (v22)
  {
    v33 = a1 + v28[5];
    v69 = v32;
    v34 = v71;
    sub_213DBBD08(v71);
    sub_213F4D280();
    v68[1] = sub_213F4D270();
    v35 = a1;
    v36 = v79;
    v37 = *(v80 + 8);
    v37(v14, v79);
    v38 = v34;
    v32 = v69;
    v37(v38, v36);
    a1 = v35;
  }

  sub_213F4CDA0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v81;
  sub_213EE79C4(v25, v81, type metadata accessor for MultiTextView);
  v48 = v47 + *(v74 + 36);
  *v48 = v73;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  v49 = sub_213F4E0A0();
  sub_213EA886C(v20);
  LOBYTE(v47) = sub_213F4D370();
  v32(v20, v77);
  v50 = v78;
  if ((v47 & 1) != 0 || (v51 = v70[3], v52 = v70[4], __swift_project_boxed_opaque_existential_0(v70, v51), v53 = ListCellProviding.hasTrailingAccessory.getter(v51, v52), v50 = v72, !v53))
  {
    v54 = a1 + v28[5];
    sub_213DBBD08(v50);
    sub_213F4D280();
    sub_213F4D270();
    v55 = v79;
    v56 = *(v80 + 8);
    v56(v14, v79);
    v56(v50, v55);
  }

  sub_213F4CDA0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v76;
  sub_213DE2B44(v81, v76, &qword_27C8FB730, &qword_213F63CB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB990, &qword_213F612D0);
  v67 = v65 + *(result + 36);
  *v67 = v49;
  *(v67 + 8) = v58;
  *(v67 + 16) = v60;
  *(v67 + 24) = v62;
  *(v67 + 32) = v64;
  *(v67 + 40) = 0;
  return result;
}

uint64_t sub_213EDAA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v94 = sub_213F4D390();
  v96 = *(v94 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_213F4D290();
  v95 = *(v92 - 8);
  v5 = *(v95 + 64);
  v6 = MEMORY[0x28223BE20](v92);
  v83 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v83 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v83 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB970, &qword_213F612B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB978, &qword_213F612B8);
  v22 = *(v21 - 8);
  v85 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = &v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB980, &qword_213F612C0);
  v26 = *(v25 - 8);
  v87 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v86 = &v83 - v28;
  v29 = type metadata accessor for ListCellSmall(0);
  v30 = byte_213F6132A[*(a1 + v29[8])];
  v31 = (a1 + v29[7]);
  v33 = v31[3];
  v32 = v31[4];
  __swift_project_boxed_opaque_existential_0(v31, v33);
  (*(v32 + 16))(v98, v33, v32);
  v34 = v31[3];
  v35 = v31[4];
  __swift_project_boxed_opaque_existential_0(v31, v34);
  (*(v35 + 24))(v97, v34, v35);
  memset(v100, 0, sizeof(v100));
  sub_213E5201C(v98, v100, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213E5201C(v97, &v100[2] + 8, &qword_27C8F7AB8, &qword_213F522C0);
  v101 = 1;
  v102 = 0;
  v99[0] = v30;
  sub_213EE77C8();
  sub_213F4E6D0();
  sub_213EE8A5C(v99);
  v84 = sub_213F4E080();
  v36 = v29;
  v37 = v29[5];
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v38 = v95 + 8;
  v39 = *(v95 + 8);
  v40 = v92;
  v39(v14, v92);
  v39(v16, v40);
  v41 = v38;
  sub_213F4CDA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v93;
  sub_213DE2B44(v20, v93, &qword_27C8FB970, &qword_213F612B0);
  v51 = v40;
  v52 = v50 + *(v85 + 44);
  *v52 = v84;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  v84 = sub_213F4E060();
  v85 = v36[6];
  v53 = v88;
  sub_213EA886C(v88);
  LOBYTE(v50) = sub_213F4D370();
  v54 = *(v96 + 8);
  v96 += 8;
  v54(v53, v94);
  if (v50)
  {
    v55 = v89;
  }

  else
  {
    v55 = v90;
  }

  v89 = v37;
  sub_213DBBD08(v55);
  sub_213F4D280();
  sub_213F4D270();
  v90 = v14;
  v39(v14, v51);
  v56 = v51;
  v57 = v86;
  v95 = v41;
  v39(v55, v56);
  sub_213F4CDA0();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_213DE2B44(v93, v57, &qword_27C8FB978, &qword_213F612B8);
  v66 = v57 + *(v87 + 44);
  *v66 = v84;
  *(v66 + 8) = v59;
  *(v66 + 16) = v61;
  *(v66 + 24) = v63;
  *(v66 + 32) = v65;
  *(v66 + 40) = 0;
  v67 = sub_213F4E070();
  sub_213EA886C(v53);
  v68 = sub_213F4D370();
  v54(v53, v94);
  if ((v68 & 1) == 0)
  {
    v69 = v83;
    sub_213DBBD08(v83);
    v70 = v90;
    sub_213F4D280();
    sub_213F4D270();
    v71 = v92;
    v39(v70, v92);
    v39(v69, v71);
  }

  sub_213F4CDA0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v91;
  sub_213DE2B44(v57, v91, &qword_27C8FB980, &qword_213F612C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB988, &qword_213F612C8);
  v82 = v80 + *(result + 36);
  *v82 = v67;
  *(v82 + 8) = v73;
  *(v82 + 16) = v75;
  *(v82 + 24) = v77;
  *(v82 + 32) = v79;
  *(v82 + 40) = 0;
  return result;
}

uint64_t sub_213EDB208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_213F4D290();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - v7;
  v8 = sub_213F4D390();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ListCellSmall(0);
  v63 = *(v12 - 1);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB938, &qword_213F61280);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB940, &qword_213F61288);
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v57 - v23;
  v24 = v12[7];
  v69 = a1;
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 24);
  v27 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v26);
  if (ListCellProviding.hasTrailingAccessory.getter(v26, v27))
  {
    v58 = v18;
    *v17 = sub_213F4D8A0();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB948, &qword_213F61290) + 44);
    v28 = v25[3];
    v29 = v25[4];
    __swift_project_boxed_opaque_existential_0(v25, v28);
    v70 = (*(v29 + 72))(v28, v29);
    sub_213EE6480(v69, &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellSmall);
    v30 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v31 = swift_allocObject();
    sub_213EE79C4(&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for ListCellSmall);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB950, &qword_213F61298);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50);
    sub_213EE89D0();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    v32 = sub_213F4E060();
    v33 = v69 + v12[6];
    sub_213EA886C(v11);
    LOBYTE(v33) = sub_213F4D370();
    (*(v65 + 8))(v11, v66);
    if (v33)
    {
      v34 = v69 + v12[5];
      v35 = v59;
      sub_213DBBD08(v59);
      v36 = v60;
      sub_213F4D280();
      sub_213F4D270();
      v37 = *(v61 + 8);
      v38 = v36;
      v39 = v62;
      v37(v38, v62);
      v37(v35, v39);
    }

    sub_213F4CDA0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_213DE2B44(v17, v22, &qword_27C8FB938, &qword_213F61280);
    v48 = v58;
    v49 = &v22[*(v58 + 36)];
    *v49 = v32;
    *(v49 + 1) = v41;
    *(v49 + 2) = v43;
    *(v49 + 3) = v45;
    *(v49 + 4) = v47;
    v49[40] = 0;
    v50 = v22;
    v51 = v64;
    sub_213DE2B44(v50, v64, &qword_27C8FB940, &qword_213F61288);
    v52 = v51;
    v53 = v68;
    sub_213DE2B44(v52, v68, &qword_27C8FB940, &qword_213F61288);
    return (*(v67 + 56))(v53, 0, 1, v48);
  }

  else
  {
    v55 = v68;
    v56 = *(v67 + 56);

    return v56(v55, 1, 1, v18);
  }
}

uint64_t sub_213EDB890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v124 = sub_213F4D390();
  v121 = *(v124 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x28223BE20](v124);
  v120 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_213F4D290();
  v126 = *(v128 - 8);
  v5 = *(v126 + 64);
  v6 = MEMORY[0x28223BE20](v128);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v127 = &v108 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v108 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v108 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F0, &qword_213F61210);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v108 - v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8F8, &qword_213F61218);
  v24 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v108 - v25;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB900, &qword_213F61220);
  v26 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v119 = &v108 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB908, &qword_213F61228);
  v28 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v125 = &v108 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB910, &qword_213F61230);
  v130 = *(v30 - 8);
  v31 = *(v130 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v123 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v122 = &v108 - v34;
  v35 = type metadata accessor for ListCellSmall(0);
  v36 = a1;
  v37 = (a1 + *(v35 + 28));
  v38 = v37[3];
  v39 = v37[4];
  __swift_project_boxed_opaque_existential_0(v37, v38);
  if (ListCellProviding.hasContextLineAccessory.getter(v38, v39))
  {
    v111 = v30;
    v112 = v8;
    v110 = v35;
    v129 = *(v35 + 20);
    v109 = v36;
    sub_213DBBD08(v19);
    sub_213F4D280();
    v40 = sub_213F4D270();
    v41 = *(v126 + 8);
    v42 = v128;
    v41(v17, v128);
    v41(v19, v42);
    if (v40)
    {
      v43 = 0x3FF0000000000000;
    }

    else
    {
      v43 = 0x4008000000000000;
    }

    *v23 = sub_213F4DA40();
    *(v23 + 1) = v43;
    v23[16] = 0;
    v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB918, &qword_213F61238) + 44);
    v44 = v37[3];
    v45 = v37[4];
    __swift_project_boxed_opaque_existential_0(v37, v44);
    v46 = (*(v45 + 80))(v44, v45);
    v47 = sub_213EAA104(v46);

    v132 = v47;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB920, &qword_213F61260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB928, &qword_213F61268);
    v48 = v109;
    sub_213DE3AE4(&qword_281182468, &qword_27C8FB920, &qword_213F61260);
    sub_213EE8838();
    sub_213F4ECC0();
    LOBYTE(v47) = sub_213F4E0A0();
    v49 = v115;
    sub_213DBBD08(v115);
    sub_213F4D280();
    sub_213F4D270();
    v41(v17, v42);
    v41(v49, v42);
    sub_213F4CDA0();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v116;
    sub_213DE2B44(v23, v116, &qword_27C8FB8F0, &qword_213F61210);
    v59 = v58 + *(v114 + 36);
    *v59 = v47;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    v60 = sub_213F4E080();
    v61 = v48 + *(v110 + 24);
    v62 = v120;
    sub_213EA886C(v120);
    v63 = sub_213F4D370();
    (*(v121 + 8))(v62, v124);
    if (v63)
    {
      v64 = v113;
      sub_213DBBD08(v113);
      sub_213F4D280();
      sub_213F4D270();
      v41(v17, v42);
      v41(v64, v42);
    }

    sub_213F4CDA0();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = v119;
    sub_213DE2B44(v58, v119, &qword_27C8FB8F8, &qword_213F61218);
    v74 = v73 + *(v117 + 36);
    *v74 = v60;
    *(v74 + 8) = v66;
    *(v74 + 16) = v68;
    *(v74 + 24) = v70;
    *(v74 + 32) = v72;
    *(v74 + 40) = 0;
    v75 = sub_213F4E060();
    v76 = v127;
    sub_213DBBD08(v127);
    sub_213F4D280();
    sub_213F4D270();
    v41(v17, v42);
    v41(v76, v42);
    sub_213F4CDA0();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v73;
    v86 = v125;
    sub_213DE2B44(v85, v125, &qword_27C8FB900, &qword_213F61220);
    v87 = v86 + *(v118 + 36);
    *v87 = v75;
    *(v87 + 8) = v78;
    *(v87 + 16) = v80;
    *(v87 + 24) = v82;
    *(v87 + 32) = v84;
    *(v87 + 40) = 0;
    v88 = sub_213F4E070();
    v89 = v112;
    sub_213DBBD08(v112);
    sub_213F4D280();
    sub_213F4D270();
    v41(v17, v42);
    v41(v89, v42);
    sub_213F4CDA0();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = v123;
    sub_213DE2B44(v86, v123, &qword_27C8FB908, &qword_213F61228);
    v99 = v111;
    v100 = v98 + *(v111 + 36);
    *v100 = v88;
    *(v100 + 8) = v91;
    *(v100 + 16) = v93;
    *(v100 + 24) = v95;
    *(v100 + 32) = v97;
    *(v100 + 40) = 0;
    v101 = v98;
    v102 = v122;
    sub_213DE2B44(v101, v122, &qword_27C8FB910, &qword_213F61230);
    v103 = v102;
    v104 = v131;
    sub_213DE2B44(v103, v131, &qword_27C8FB910, &qword_213F61230);
    return (*(v130 + 56))(v104, 0, 1, v99);
  }

  else
  {
    v106 = v131;
    v107 = *(v130 + 56);

    return v107(v106, 1, 1, v30);
  }
}

uint64_t sub_213EDC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextLineAccessory(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB930, &unk_213F61270);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a1 == 1 && (v19 = type metadata accessor for ContextLineAccessoryViewModel(0), sub_213EE6480(a2 + *(v19 + 20), v18, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_213EE64E8(v18, type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType), EnumCaseMultiPayload == 5))
  {
    sub_213EE6480(a2, v9, type metadata accessor for ContextLineAccessoryViewModel);
    v21 = ContextLineAccessoryViewModel.axIDString.getter();
    v23 = v22;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_213F4F710();

    v26 = v21;
    v27 = v23;
    MEMORY[0x216052710](0x4C747865746E6F43, 0xEF6D657449656E69);

    sub_213ED26C4(&qword_2811855A8, type metadata accessor for ContextLineAccessory);
    sub_213F4E6D0();

    sub_213EE64E8(v9, type metadata accessor for ContextLineAccessory);
    sub_213DE2B44(v14, a3, &qword_27C8FB930, &unk_213F61270);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v11 + 56))(a3, v24, 1, v10);
}

double sub_213EDC5D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4DA40();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8C0, &qword_213F611D8);
  sub_213ED9A5C(v1, a1 + *(v3 + 44));
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8C8, &qword_213F611E0) + 36);
  *(v4 + 32) = 0;
  result = 0.0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  return result;
}

uint64_t sub_213EDC648(uint64_t a1)
{
  v2 = sub_213F4CA10();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v6 = sub_213F4E300();
  v8 = v7;
  v10 = v9;
  sub_213F4E0D0();
  sub_213F4E160();
  sub_213F4E1D0();

  v11 = sub_213F4E2E0();
  v13 = v12;
  v15 = v14;

  sub_213DBCA40(v6, v8, v10 & 1);

  v16 = [objc_opt_self() labelColor];
  v25[0] = sub_213F4E870();
  v17 = sub_213F4E2B0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_213DBCA40(v11, v13, v15 & 1);

  v25[0] = v17;
  v25[1] = v19;
  v26 = v21 & 1;
  v27 = v23;
  sub_213F4E6D0();
  sub_213DBCA40(v17, v19, v21 & 1);
}

uint64_t sub_213EDC884@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = sub_213F4CA10();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_213F4E300();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() secondaryLabelColor];
  v29 = sub_213F4E870();
  v15 = sub_213F4E2B0();
  v17 = v16;
  v19 = v18;
  sub_213DBCA40(v9, v11, v13 & 1);

  if (a2)
  {
    sub_213F4E0D0();
  }

  else
  {
    sub_213F4E0C0();
  }

  sub_213F4E170();
  sub_213F4E1D0();

  v20 = sub_213F4E2E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_213DBCA40(v15, v17, v19 & 1);

  v29 = v20;
  v30 = v22;
  v31 = v24 & 1;
  v32 = v26;
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24 & 1);
}

uint64_t sub_213EDCAD8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v114 = a2;
  v3 = type metadata accessor for ListCellProfileLibrary(0);
  v4 = v3 - 8;
  v94 = *(v3 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = v6;
  v96 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB780, &qword_213F61000);
  v101 = *(v113 - 8);
  v7 = *(v101 + 8);
  MEMORY[0x28223BE20](v113);
  v97 = &v86 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB788, &qword_213F61008);
  v9 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v86 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB790, &unk_213F61010);
  v11 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v107 = &v86 - v12;
  v90 = type metadata accessor for RichTextViewModel(0);
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7768, &qword_213F52CC0);
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v15);
  v100 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB798, qword_213F61020);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v105 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v106 = &v86 - v22;
  v93 = sub_213F4D390();
  v92 = *(v93 - 8);
  v23 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_213F4CA70();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_213F4CA10();
  v102 = *(v27 - 8);
  v28 = *(v102 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v86 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v86 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v86 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  v98 = *(v35 - 8);
  v99 = v35;
  v36 = *(v98 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v86 - v40;
  v42 = (v2 + *(v4 + 32));
  v44 = v42[3];
  v43 = v42[4];
  __swift_project_boxed_opaque_existential_0(v42, v44);
  (*(v43 + 40))(v44, v43);
  if (v45)
  {
    v101 = v39;
    sub_213F4CA60();
    sub_213F4CA20();
    v108 = v41;
    sub_213EDC648(v34);
    v46 = v102;
    v47 = *(v102 + 8);
    v47(v34, v27);
    v48 = v109;
    v49 = v27;
    if ((v109 & 1) != 0 && (v50 = v91, sub_213EA886C(v91), v51 = sub_213F4D370(), (*(v92 + 8))(v50, v93), (v51 & 1) == 0))
    {
      v52 = v48;
      LODWORD(v97) = 0;
      LODWORD(v96) = 1;
    }

    else
    {
      v52 = v48;
      LODWORD(v96) = 0;
      LODWORD(v97) = 1;
    }

    v64 = v42[3];
    v65 = v42[4];
    __swift_project_boxed_opaque_existential_0(v42, v64);
    v66 = *((*(v65 + 48))(v64, v65) + 16);

    v67 = v101;
    if (v66)
    {
      v68 = v42[3];
      v69 = v42[4];
      __swift_project_boxed_opaque_existential_0(v42, v68);
      v70 = (*(v69 + 48))(v68, v69);
      if (*(v70 + 16) && (v71 = *(v70 + 32), , , *(v71 + 16)))
      {
        v72 = v89;
        sub_213EE6480(v71 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v89, type metadata accessor for RichTextViewModel);

        v73 = v86;
        (*(v46 + 16))(v86, v72 + *(v90 + 20), v49);
        v74 = v72;
        v67 = v101;
        sub_213EE64E8(v74, type metadata accessor for RichTextViewModel);
        v75 = v87;
        (*(v46 + 32))(v87, v73, v49);
        sub_213EDC884(v75, v52 & 1, v67);
        v47(v75, v49);
        v76 = v100;
        sub_213DE2B44(v67, v100, &qword_27C8F7760, &unk_213F51950);
        v77 = 0;
        v78 = v112;
        v79 = v106;
        v80 = v108;
      }

      else
      {
        v80 = v108;

        v77 = 1;
        v78 = v112;
        v79 = v106;
        v76 = v100;
      }

      (*(v98 + 56))(v76, v77, 1, v99);
      sub_213DE2B44(v76, v79, &qword_27C8F7768, &qword_213F52CC0);
      v81 = 0;
    }

    else
    {
      v81 = 1;
      v78 = v112;
      v79 = v106;
      v80 = v108;
    }

    (*(v103 + 56))(v79, v81, 1, v104);
    sub_213DE3164(v80, v67, &qword_27C8F7760, &unk_213F51950);
    v82 = v105;
    sub_213DE3164(v79, v105, &qword_27C8FB798, qword_213F61020);
    v83 = v107;
    sub_213DE3164(v67, v107, &qword_27C8F7760, &unk_213F51950);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7C0, &qword_213F61060);
    v85 = v83 + *(v84 + 48);
    *v85 = 0;
    *(v85 + 8) = v96;
    *(v85 + 9) = v97;
    sub_213DE3164(v82, v83 + *(v84 + 64), &qword_27C8FB798, qword_213F61020);
    sub_213DE36FC(v82, &qword_27C8FB798, qword_213F61020);
    sub_213DE36FC(v67, &qword_27C8F7760, &unk_213F51950);
    sub_213DE3164(v83, v78, &qword_27C8FB790, &unk_213F61010);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8FB7B0, &qword_27C8FB790, &unk_213F61010);
    sub_213EE7D14();
    sub_213F4DBA0();
    sub_213DE36FC(v83, &qword_27C8FB790, &unk_213F61010);
    sub_213DE36FC(v79, &qword_27C8FB798, qword_213F61020);
    return sub_213DE36FC(v108, &qword_27C8F7760, &unk_213F51950);
  }

  else
  {
    v53 = v42[3];
    v54 = v42[4];
    __swift_project_boxed_opaque_existential_0(v42, v53);
    v55 = *((*(v54 + 48))(v53, v54) + 16);

    v115 = 0;
    v116 = v55;
    swift_getKeyPath();
    v56 = v96;
    sub_213EE6480(v2, v96, type metadata accessor for ListCellProfileLibrary);
    v57 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v58 = v57 + v95;
    v59 = swift_allocObject();
    sub_213EE79C4(v56, v59 + v57, type metadata accessor for ListCellProfileLibrary);
    *(v59 + v58) = v109 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7A0, &qword_213F61058);
    sub_213E800BC();
    sub_213DE3AE4(&qword_27C8FB7A8, &qword_27C8FB7A0, &qword_213F61058);
    v60 = v97;
    sub_213F4ECC0();
    v61 = v101;
    v62 = v113;
    (*(v101 + 2))(v112, v60, v113);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8FB7B0, &qword_27C8FB790, &unk_213F61010);
    sub_213EE7D14();
    sub_213F4DBA0();
    return v61[1](v60, v62);
  }
}

uint64_t sub_213EDD770@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v105 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7768, &qword_213F52CC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v106 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7C8, &qword_213F61068);
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = *(v109 + 64);
  MEMORY[0x28223BE20](v11);
  v98 = &v90 - v13;
  v92 = sub_213F4D390();
  v91 = *(v92 - 8);
  v14 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  v103 = *(v16 - 8);
  v104 = v16;
  v17 = *(v103 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v101 = &v90 - v20;
  v21 = type metadata accessor for RichTextViewModel(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v95 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v90 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v90 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v96 = &v90 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v100 = &v90 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7D0, &qword_213F61070);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v102 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v90 - v42;
  v44 = *a1;
  v45 = *(type metadata accessor for ListCellProfileLibrary(0) + 24);
  v93 = a2;
  v46 = (a2 + v45);
  v48 = *(a2 + v45 + 24);
  v47 = *(a2 + v45 + 32);
  v111 = v46;
  __swift_project_boxed_opaque_existential_0(v46, v48);
  result = (*(v47 + 48))(v48, v47);
  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (v44 >= *(result + 16))
  {
    goto LABEL_28;
  }

  v94 = v28;
  v108 = v43;
  v112 = v44;
  v50 = *(result + 8 * v44 + 32);

  v51 = 0;
  v52 = *(v50 + 16);
  v53 = v111;
  do
  {
    if (v52 == v51)
    {
      goto LABEL_12;
    }

    if (v51 >= *(v50 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v54 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_213EE6480(v50 + v54 + *(v22 + 72) * v51++, v37, type metadata accessor for RichTextViewModel);
    v55 = v37[*(v21 + 24)];
    result = sub_213EE64E8(v37, type metadata accessor for RichTextViewModel);
  }

  while (v55 != 1);

  v56 = v53[3];
  v57 = v53[4];
  __swift_project_boxed_opaque_existential_0(v53, v56);
  result = (*(v57 + 48))(v56, v57);
  if (v112 >= *(result + 16))
  {
    goto LABEL_30;
  }

  v58 = *(result + 8 * v112 + 32);

  if (!*(v58 + 16))
  {
LABEL_12:
    v62 = v108;
    v65 = v109;
    v66 = v110;

    v67 = 1;
    goto LABEL_15;
  }

  v59 = v96;
  sub_213EE6480(v58 + v54, v96, type metadata accessor for RichTextViewModel);

  v60 = v59;
  v61 = v100;
  sub_213EE79C4(v60, v100, type metadata accessor for RichTextViewModel);
  sub_213EDC648(v61 + *(v21 + 20));
  v62 = v108;
  if ((v99 & 1) != 0 && (v63 = v90, sub_213EA886C(v90), v64 = sub_213F4D370(), (*(v91 + 8))(v63, v92), (v64 & 1) == 0))
  {
    LODWORD(v96) = 0;
    LODWORD(v93) = 1;
  }

  else
  {
    LODWORD(v93) = 0;
    LODWORD(v96) = 1;
  }

  v68 = v101;
  v69 = v97;
  sub_213DE3164(v101, v97, &qword_27C8F7760, &unk_213F51950);
  v70 = v98;
  sub_213DE3164(v69, v98, &qword_27C8F7760, &unk_213F51950);
  v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7D8, &qword_213F61078) + 48);
  *v71 = 0;
  *(v71 + 8) = v93;
  *(v71 + 9) = v96;
  sub_213DE36FC(v68, &qword_27C8F7760, &unk_213F51950);
  sub_213EE64E8(v100, type metadata accessor for RichTextViewModel);
  sub_213DE36FC(v69, &qword_27C8F7760, &unk_213F51950);
  sub_213DE2B44(v70, v62, &qword_27C8FB7C8, &qword_213F61068);
  v67 = 0;
  v65 = v109;
  v66 = v110;
LABEL_15:
  (*(v65 + 56))(v62, v67, 1, v66);
  v72 = v53[3];
  v73 = v53[4];
  __swift_project_boxed_opaque_existential_0(v53, v72);
  result = (*(v73 + 48))(v72, v73);
  if (v112 >= *(result + 16))
  {
    goto LABEL_29;
  }

  v74 = *(result + 8 * v112 + 32);

  v75 = 0;
  v76 = *(v74 + 16);
  while (v76 != v75)
  {
    if (v75 >= *(v74 + 16))
    {
      goto LABEL_26;
    }

    v77 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_213EE6480(v74 + v77 + *(v22 + 72) * v75++, v31, type metadata accessor for RichTextViewModel);
    v78 = v31[*(v21 + 24)];
    result = sub_213EE64E8(v31, type metadata accessor for RichTextViewModel);
    if ((v78 & 1) == 0)
    {

      v79 = v53[3];
      v80 = v53[4];
      __swift_project_boxed_opaque_existential_0(v53, v79);
      result = (*(v80 + 48))(v79, v80);
      if (v112 >= *(result + 16))
      {
        goto LABEL_31;
      }

      v81 = *(result + 8 * v112 + 32);

      if (*(v81 + 16))
      {
        v82 = v95;
        sub_213EE6480(v81 + v77, v95, type metadata accessor for RichTextViewModel);

        v83 = v94;
        sub_213EE79C4(v82, v94, type metadata accessor for RichTextViewModel);
        v84 = v107;
        sub_213EDC884(v83 + *(v21 + 20), v99 & 1, v107);
        sub_213EE64E8(v83, type metadata accessor for RichTextViewModel);
        v85 = 0;
        goto LABEL_24;
      }

      break;
    }
  }

  v84 = v107;

  v85 = 1;
LABEL_24:
  (*(v103 + 56))(v84, v85, 1, v104);
  v86 = v102;
  sub_213DE3164(v62, v102, &qword_27C8FB7D0, &qword_213F61070);
  v87 = v106;
  sub_213DE3164(v84, v106, &qword_27C8F7768, &qword_213F52CC0);
  v88 = v105;
  sub_213DE3164(v86, v105, &qword_27C8FB7D0, &qword_213F61070);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7E0, &qword_213F61080);
  sub_213DE3164(v87, v88 + *(v89 + 48), &qword_27C8F7768, &qword_213F52CC0);
  sub_213DE36FC(v84, &qword_27C8F7768, &qword_213F52CC0);
  sub_213DE36FC(v62, &qword_27C8FB7D0, &qword_213F61070);
  sub_213DE36FC(v87, &qword_27C8F7768, &qword_213F52CC0);
  return sub_213DE36FC(v86, &qword_27C8FB7D0, &qword_213F61070);
}

double sub_213EDE1B4@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellProfileLibrary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_213EE6480(v1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ListCellProfileLibrary);
  sub_213EE6480(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v9 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v7, type metadata accessor for ListCellProfileLibrary);
  sub_213EE6480(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellProfileLibrary);
  v10 = swift_allocObject();
  sub_213EE79C4(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for ListCellProfileLibrary);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB738, &unk_213F60FB0);
  v12 = a1 + v11[29];
  type metadata accessor for CGSize(0);
  v19[0] = 0;
  v19[1] = 0;
  sub_213F4EA90();
  v13 = v21;
  result = *&v20;
  *v12 = v20;
  *(v12 + 2) = v13;
  *(a1 + v11[21]) = 1;
  *(a1 + v11[22]) = 0;
  *(a1 + v11[23]) = 0;
  *(a1 + v11[24]) = 1;
  v15 = (a1 + v11[25]);
  *v15 = sub_213EE7A2C;
  v15[1] = v8;
  v16 = (a1 + v11[26]);
  *v16 = sub_213EE7BF8;
  v16[1] = v9;
  v17 = (a1 + v11[27]);
  *v17 = sub_213EE7C24;
  v17[1] = v10;
  v18 = (a1 + v11[28]);
  *v18 = nullsub_1;
  v18[1] = 0;
  return result;
}

uint64_t sub_213EDE460@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v5 = sub_213F4E010();
  *(inited + 32) = v5;
  v6 = sub_213F4E030();
  *(inited + 33) = v6;
  v7 = sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v5)
  {
    v7 = sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v6)
  {
    v7 = sub_213F4E020();
  }

  *a2 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB740, &qword_213F60FC0);
  return sub_213EDE568(a1, &a2[*(v8 + 44)]);
}

uint64_t sub_213EDE568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB748, &qword_213F60FC8);
  v3 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v99 = &v83[-v4];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB750, &qword_213F60FD0);
  v5 = *(*(v94 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v94);
  v96 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v93 = &v83[-v9];
  MEMORY[0x28223BE20](v8);
  v95 = &v83[-v10];
  v98 = sub_213F4D290();
  v11 = *(v98 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v98);
  v85 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v83[-v18];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB758, &qword_213F60FD8);
  v90 = *(v86 - 8);
  v20 = *(v90 + 8);
  MEMORY[0x28223BE20](v86);
  v22 = &v83[-v21];
  v23 = sub_213F4D390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v83[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB760, &qword_213F60FE0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v91 = &v83[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v33 = &v83[-v32];
  sub_213EA886C(v27);
  v34 = sub_213F4D370();
  v35 = *(v24 + 8);
  v88 = v24 + 8;
  v89 = v23;
  v87 = v35;
  v35(v27, v23);
  if (v34)
  {
    v36 = 1;
    v37 = v11;
    v38 = v86;
  }

  else
  {
    *v22 = sub_213F4D8A0();
    *(v22 + 1) = 0x4030000000000000;
    v22[16] = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB768, &qword_213F60FE8);
    sub_213EDCAD8(1, &v22[*(v39 + 44)]);
    v84 = sub_213F4E0B0();
    v40 = a1 + *(type metadata accessor for ListCellProfileLibrary(0) + 20);
    sub_213DBBD08(v19);
    sub_213F4D280();
    sub_213F4D270();
    v37 = v11;
    v41 = *(v11 + 8);
    v42 = v98;
    v41(v17, v98);
    v41(v19, v42);
    sub_213F4CDA0();
    v43 = v86;
    v44 = &v22[*(v86 + 36)];
    *v44 = v84;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_213DE2B44(v22, v33, &qword_27C8FB758, &qword_213F60FD8);
    v36 = 0;
    v38 = v43;
  }

  v49 = *(v90 + 7);
  v90 = v33;
  v49(v33, v36, 1, v38);
  v50 = sub_213F4DA50();
  v51 = v99;
  *v99 = v50;
  v51[1] = 0;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB770, &qword_213F60FF0);
  sub_213EDCAD8(0, v51 + *(v52 + 44));
  v53 = sub_213F4E0B0();
  v54 = *(type metadata accessor for ListCellProfileLibrary(0) + 20);
  sub_213DBBD08(v19);
  sub_213F4D280();
  sub_213F4D270();
  v55 = *(v37 + 8);
  v56 = v17;
  v57 = v98;
  v55(v56, v98);
  v55(v19, v57);
  sub_213F4CDA0();
  v58 = v51 + *(v92 + 36);
  *v58 = v53;
  *(v58 + 1) = v59;
  *(v58 + 2) = v60;
  *(v58 + 3) = v61;
  *(v58 + 4) = v62;
  v58[40] = 0;
  v63 = sub_213F4E080();
  sub_213EA886C(v27);
  v64 = sub_213F4D370();
  v87(v27, v89);
  if (v64)
  {
    v65 = v85;
    sub_213DBBD08(v85);
    sub_213F4D280();
    sub_213F4D270();
    v55(v19, v57);
    v55(v65, v57);
  }

  sub_213F4CDA0();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v93;
  sub_213DE2B44(v99, v93, &qword_27C8FB748, &qword_213F60FC8);
  v75 = v95;
  v76 = &v74[*(v94 + 36)];
  *v76 = v63;
  *(v76 + 1) = v67;
  *(v76 + 2) = v69;
  *(v76 + 3) = v71;
  *(v76 + 4) = v73;
  v76[40] = 0;
  sub_213DE2B44(v74, v75, &qword_27C8FB750, &qword_213F60FD0);
  v78 = v90;
  v77 = v91;
  sub_213DE3164(v90, v91, &qword_27C8FB760, &qword_213F60FE0);
  v79 = v96;
  sub_213DE3164(v75, v96, &qword_27C8FB750, &qword_213F60FD0);
  v80 = v97;
  sub_213DE3164(v77, v97, &qword_27C8FB760, &qword_213F60FE0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB778, &qword_213F60FF8);
  sub_213DE3164(v79, v80 + *(v81 + 48), &qword_27C8FB750, &qword_213F60FD0);
  sub_213DE36FC(v75, &qword_27C8FB750, &qword_213F60FD0);
  sub_213DE36FC(v78, &qword_27C8FB760, &qword_213F60FE0);
  sub_213DE36FC(v79, &qword_27C8FB750, &qword_213F60FD0);
  return sub_213DE36FC(v77, &qword_27C8FB760, &qword_213F60FE0);
}

uint64_t sub_213EDECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB700, &unk_213F60F70);
  v16[0] = *(v4 - 8);
  v5 = *(v16[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = (a1 + *(type metadata accessor for ListCellProfileLibrary(0) + 24));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  if (ListCellProviding.hasLeadingAccessory.getter(v9, v10))
  {
    *v7 = sub_213F4D8A0();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB718, &qword_213F60F90) + 44);
    v12 = v8[3];
    v13 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v12);
    v16[1] = (*(v13 + 64))(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB720, &qword_213F60F98);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213DE3AE4(&qword_2811824B8, &qword_27C8FB720, &qword_213F60F98);
    sub_213EE78D8();
    sub_213ED26C4(qword_281184438, type metadata accessor for LeadingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v7, a2, &qword_27C8FB700, &unk_213F60F70);
    return (*(v16[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = *(v16[0] + 56);

    return v15(a2, 1, 1, v4);
  }
}

uint64_t sub_213EDEFC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_213F4CA10();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_213F4E300();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() labelColor];
  v30 = sub_213F4E870();
  v15 = sub_213F4E2B0();
  v17 = v16;
  v19 = v18;
  sub_213DBCA40(v9, v11, v13 & 1);

  sub_213F4E0D0();
  if (a2)
  {
    sub_213F4E170();
  }

  else
  {
    sub_213F4E180();
  }

  sub_213F4E1D0();

  v20 = sub_213F4E2E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_213DBCA40(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v20;
  v31 = v22;
  v32 = v24 & 1;
  v33 = v26;
  v34 = KeyPath;
  v35 = 1;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24 & 1);
}

uint64_t sub_213EDF244@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_213F4CA10();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_213F4E300();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() secondaryLabelColor];
  v30 = sub_213F4E870();
  v15 = sub_213F4E2B0();
  v17 = v16;
  v19 = v18;
  sub_213DBCA40(v9, v11, v13 & 1);

  if (a2)
  {
    sub_213F4E0D0();
  }

  else
  {
    sub_213F4E0C0();
  }

  sub_213F4E170();
  sub_213F4E1D0();

  v20 = sub_213F4E2E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_213DBCA40(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v20;
  v31 = v22;
  v32 = v24 & 1;
  v33 = v26;
  v34 = KeyPath;
  v35 = 1;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24 & 1);
}

uint64_t sub_213EDF4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4D910();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  sub_213DBC9EC();
  v4 = sub_213F4E310();
  v6 = v5;
  v8 = v7;
  sub_213F4D8C0();
  sub_213DBCA40(v4, v6, v8 & 1);

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D930();
  v9 = sub_213F4E2F0();
  v11 = v10;
  v13 = v12;
  v14 = [objc_opt_self() secondaryLabelColor];
  sub_213F4E870();
  v15 = sub_213F4E2B0();
  v17 = v16;
  v19 = v18;
  sub_213DBCA40(v9, v11, v13 & 1);

  sub_213F4E0D0();
  sub_213F4E170();
  sub_213F4E1D0();

  v20 = sub_213F4E2E0();
  v22 = v21;
  v24 = v23;

  sub_213DBCA40(v15, v17, v19 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24 & 1);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_213EDF7E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v149 = a1;
  v153 = a2;
  v3 = type metadata accessor for ListCellRecentSearch(0);
  v131 = *(v3 - 8);
  v4 = *(v131 + 64);
  MEMORY[0x28223BE20](v3);
  v132 = v5;
  v133 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB850, &qword_213F61130);
  v135 = *(v152 - 8);
  v6 = *(v135 + 64);
  MEMORY[0x28223BE20](v152);
  v134 = &v111 - v7;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB858, &qword_213F61138);
  v8 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v148 = &v111 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB860, &qword_213F61140);
  v10 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v146 = &v111 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB868, &qword_213F61148);
  v137 = *(v138 - 8);
  v12 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v129 = &v111 - v13;
  v124 = sub_213F4D290();
  v121 = *(v124 - 8);
  v14 = *(v121 + 64);
  v15 = MEMORY[0x28223BE20](v124);
  v117 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v120 = &v111 - v20;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB870, &qword_213F61158);
  v21 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v123 = &v111 - v22;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB878, &qword_213F61160);
  v23 = *(*(v122 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v122);
  v127 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v118 = &v111 - v27;
  MEMORY[0x28223BE20](v26);
  v125 = &v111 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB880, &qword_213F61168);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v126 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v130 = &v111 - v33;
  v115 = type metadata accessor for RichTextViewModel(0);
  v113 = *(v115 - 8);
  v34 = *(v113 + 64);
  v35 = MEMORY[0x28223BE20](v115);
  v114 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v140 = &v111 - v37;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB888, &qword_213F61170);
  v142 = *(v143 - 8);
  v38 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v136 = &v111 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB890, &qword_213F61178);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v144 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v145 = &v111 - v44;
  v45 = sub_213F4CA70();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v141 = sub_213F4CA10();
  v47 = *(v141 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v141);
  v50 = &v111 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  v112 = *(v51 - 8);
  v52 = *(v112 + 64);
  v53 = MEMORY[0x28223BE20](v51);
  v147 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = &v111 - v55;
  v128 = v3;
  v57 = (v2 + *(v3 + 24));
  v59 = v57[3];
  v58 = v57[4];
  __swift_project_boxed_opaque_existential_0(v57, v59);
  (*(v58 + 40))(v59, v58);
  if (v60)
  {
    v135 = v2;
    sub_213F4CA60();
    sub_213F4CA20();
    v61 = v149;
    sub_213EDEFC0(v50, v149 & 1, v56);
    (*(v47 + 8))(v50, v141);
    *&v56[*(v51 + 36)] = 0x3FF0000000000000;
    v62 = v57[3];
    v63 = v57[4];
    __swift_project_boxed_opaque_existential_0(v57, v62);
    v64 = *((*(v63 + 48))(v62, v63) + 16);

    v139 = v56;
    if (v64)
    {
      v65 = v57[3];
      v66 = v57[4];
      __swift_project_boxed_opaque_existential_0(v57, v65);
      v67 = (*(v66 + 48))(v65, v66);
      v68 = v148;
      if (*(v67 + 16) && (v69 = *(v67 + 32), , , *(v69 + 16)))
      {
        v70 = v114;
        sub_213EE6480(v69 + ((*(v113 + 80) + 32) & ~*(v113 + 80)), v114, type metadata accessor for RichTextViewModel);

        sub_213EE79C4(v70, v140, type metadata accessor for RichTextViewModel);
        v71 = 1;
        if (v61)
        {
          v72 = v147;
          sub_213EDF4D0(v147);
          sub_213DE2B44(v72, v130, &qword_27C8FB898, &qword_213F61180);
          v71 = 0;
        }

        v73 = v130;
        (*(v112 + 56))(v130, v71, 1, v51);
        v74 = v120;
        sub_213EDF244(v140 + *(v115 + 20), v61 & 1, v120);
        v75 = v135 + *(v128 + 20);
        v76 = v116;
        sub_213DBBD08(v116);
        v77 = v117;
        sub_213F4D280();
        sub_213F4D270();
        v78 = *(v121 + 8);
        v79 = v77;
        v80 = v124;
        v78(v79, v124);
        v78(v76, v80);
        sub_213F4EEF0();
        sub_213F4D4E0();
        v81 = v123;
        sub_213DE2B44(v74, v123, &qword_27C8F9EC8, &qword_213F61150);
        v82 = (v81 + *(v119 + 36));
        v83 = v159;
        v82[4] = v158;
        v82[5] = v83;
        v82[6] = v160;
        v84 = v155;
        *v82 = v154;
        v82[1] = v84;
        v85 = v157;
        v82[2] = v156;
        v82[3] = v85;
        v86 = v118;
        sub_213DE2B44(v81, v118, &qword_27C8FB870, &qword_213F61158);
        *(v86 + *(v122 + 36)) = 0;
        v87 = v125;
        sub_213DE2B44(v86, v125, &qword_27C8FB878, &qword_213F61160);
        v88 = v126;
        sub_213DE3164(v73, v126, &qword_27C8FB880, &qword_213F61168);
        v89 = v127;
        sub_213DE3164(v87, v127, &qword_27C8FB878, &qword_213F61160);
        v90 = v129;
        sub_213DE3164(v88, v129, &qword_27C8FB880, &qword_213F61168);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B0, &qword_213F61198);
        sub_213DE3164(v89, v90 + *(v91 + 48), &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v87, &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v73, &qword_27C8FB880, &qword_213F61168);
        sub_213EE64E8(v140, type metadata accessor for RichTextViewModel);
        sub_213DE36FC(v89, &qword_27C8FB878, &qword_213F61160);
        sub_213DE36FC(v88, &qword_27C8FB880, &qword_213F61168);
        v92 = v136;
        sub_213DE2B44(v90, v136, &qword_27C8FB868, &qword_213F61148);
        v93 = 0;
        v94 = v145;
        v56 = v139;
      }

      else
      {

        v93 = 1;
        v94 = v145;
        v92 = v136;
      }

      (*(v137 + 56))(v92, v93, 1, v138);
      sub_213DE2B44(v92, v94, &qword_27C8FB888, &qword_213F61170);
      v106 = 0;
    }

    else
    {
      v106 = 1;
      v68 = v148;
      v94 = v145;
    }

    (*(v142 + 56))(v94, v106, 1, v143);
    v107 = v147;
    sub_213DE3164(v56, v147, &qword_27C8FB898, &qword_213F61180);
    v108 = v144;
    sub_213DE3164(v94, v144, &qword_27C8FB890, &qword_213F61178);
    v109 = v146;
    sub_213DE3164(v107, v146, &qword_27C8FB898, &qword_213F61180);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8A8, &qword_213F61190);
    sub_213DE3164(v108, v109 + *(v110 + 48), &qword_27C8FB890, &qword_213F61178);
    sub_213DE36FC(v108, &qword_27C8FB890, &qword_213F61178);
    sub_213DE36FC(v107, &qword_27C8FB898, &qword_213F61180);
    sub_213DE3164(v109, v68, &qword_27C8FB860, &qword_213F61140);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_281182558, &qword_27C8FB860, &qword_213F61140);
    sub_213EE83F8();
    sub_213F4DBA0();
    sub_213DE36FC(v109, &qword_27C8FB860, &qword_213F61140);
    sub_213DE36FC(v94, &qword_27C8FB890, &qword_213F61178);
    return sub_213DE36FC(v139, &qword_27C8FB898, &qword_213F61180);
  }

  else
  {
    v95 = v57[3];
    v96 = v57[4];
    __swift_project_boxed_opaque_existential_0(v57, v95);
    v97 = *((*(v96 + 48))(v95, v96) + 16);

    *&v154 = 0;
    *(&v154 + 1) = v97;
    swift_getKeyPath();
    v98 = v133;
    sub_213EE6480(v2, v133, type metadata accessor for ListCellRecentSearch);
    v99 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v100 = v99 + v132;
    v101 = swift_allocObject();
    sub_213EE79C4(v98, v101 + v99, type metadata accessor for ListCellRecentSearch);
    *(v101 + v100) = v149 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8A0, &qword_213F61188);
    sub_213E800BC();
    sub_213DE3AE4(&qword_281182560, &qword_27C8FB8A0, &qword_213F61188);
    v102 = v134;
    sub_213F4ECC0();
    v103 = v135;
    v104 = v152;
    (*(v135 + 16))(v148, v102, v152);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_281182558, &qword_27C8FB860, &qword_213F61140);
    sub_213EE83F8();
    sub_213F4DBA0();
    return (*(v103 + 8))(v102, v104);
  }
}

uint64_t sub_213EE099C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB868, &qword_213F61148);
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = *(v126 + 64);
  MEMORY[0x28223BE20](v7);
  v116 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v111 = &v107 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB870, &qword_213F61158);
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v113 = &v107 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB878, &qword_213F61160);
  v15 = *(*(v112 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v112);
  v115 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v109 = &v107 - v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v107 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB888, &qword_213F61170);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v125 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v107 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB898, &qword_213F61180);
  v131 = *(v128 - 8);
  v26 = *(v131 + 64);
  MEMORY[0x28223BE20](v128);
  v119 = &v107 - v27;
  v28 = type metadata accessor for RichTextViewModel(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v107 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v108 = &v107 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v107 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v117 = &v107 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v118 = &v107 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v107 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB880, &qword_213F61168);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v123 = &v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v120 = &v107 - v49;
  MEMORY[0x28223BE20](v48);
  v130 = &v107 - v50;
  v51 = *a1;
  v52 = (a2 + *(type metadata accessor for ListCellRecentSearch(0) + 24));
  v54 = v52[3];
  v53 = v52[4];
  __swift_project_boxed_opaque_existential_0(v52, v54);
  result = (*(v53 + 48))(v54, v53);
  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v51 >= *(result + 16))
  {
    goto LABEL_26;
  }

  v122 = a4;
  v129 = v51;
  v56 = *(result + 8 * v51 + 32);

  v57 = 0;
  v58 = *(v56 + 16);
  while (v58 != v57)
  {
    if (v57 >= *(v56 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v59 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    sub_213EE6480(v56 + v59 + *(v29 + 72) * v57++, v43, type metadata accessor for RichTextViewModel);
    v60 = v43[*(v28 + 24)];
    result = sub_213EE64E8(v43, type metadata accessor for RichTextViewModel);
    if (v60 == 1)
    {

      v61 = v52[3];
      v62 = v52[4];
      __swift_project_boxed_opaque_existential_0(v52, v61);
      result = (*(v62 + 48))(v61, v62);
      if (v129 >= *(result + 16))
      {
        goto LABEL_28;
      }

      v63 = *(result + 8 * v129 + 32);

      if (*(v63 + 16))
      {
        v64 = v117;
        sub_213EE6480(v63 + v59, v117, type metadata accessor for RichTextViewModel);

        v65 = v118;
        sub_213EE79C4(v64, v118, type metadata accessor for RichTextViewModel);
        v66 = v119;
        sub_213EDEFC0(v65 + *(v28 + 20), v121 & 1, v119);
        sub_213EE64E8(v65, type metadata accessor for RichTextViewModel);
        *(v66 + *(v128 + 36)) = 0x3FF0000000000000;
        sub_213DE2B44(v66, v130, &qword_27C8FB898, &qword_213F61180);
        v67 = 0;
        v68 = v131;
        goto LABEL_11;
      }

      break;
    }
  }

  v68 = v131;

  v67 = 1;
LABEL_11:
  v71 = *(v68 + 56);
  v70 = v68 + 56;
  v69 = v71;
  v71(v130, v67, 1, v128);
  v72 = v52[3];
  v73 = v52[4];
  __swift_project_boxed_opaque_existential_0(v52, v72);
  result = (*(v73 + 48))(v72, v73);
  if (v129 >= *(result + 16))
  {
    goto LABEL_27;
  }

  v131 = v70;
  v74 = *(result + 8 * v129 + 32);

  v75 = 0;
  v76 = *(v74 + 16);
  do
  {
    if (v76 == v75)
    {
      goto LABEL_21;
    }

    if (v75 >= *(v74 + 16))
    {
      goto LABEL_24;
    }

    v77 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    sub_213EE6480(v74 + v77 + *(v29 + 72) * v75++, v37, type metadata accessor for RichTextViewModel);
    v78 = v37[*(v28 + 24)];
    result = sub_213EE64E8(v37, type metadata accessor for RichTextViewModel);
  }

  while ((v78 & 1) != 0);

  v79 = v52[3];
  v80 = v52[4];
  __swift_project_boxed_opaque_existential_0(v52, v79);
  result = (*(v80 + 48))(v79, v80);
  if (v129 >= *(result + 16))
  {
    goto LABEL_29;
  }

  v81 = *(result + 8 * v129 + 32);

  if (!*(v81 + 16))
  {
LABEL_21:

    v102 = 1;
    v103 = v122;
    v101 = v124;
    v97 = v123;
    goto LABEL_22;
  }

  v82 = v107;
  sub_213EE6480(v81 + v77, v107, type metadata accessor for RichTextViewModel);

  v83 = v82;
  v84 = v108;
  sub_213EE79C4(v83, v108, type metadata accessor for RichTextViewModel);
  v85 = 1;
  if (v121)
  {
    sub_213EDF4D0(v120);
    v85 = 0;
  }

  v86 = v120;
  v69(v120, v85, 1, v128);
  v87 = v84 + *(v28 + 20);
  v88 = v84;
  v89 = v111;
  sub_213EDF244(v87, v121 & 1, v111);
  sub_213F4EEF0();
  sub_213F4D4E0();
  v90 = v113;
  sub_213DE2B44(v89, v113, &qword_27C8F9EC8, &qword_213F61150);
  v91 = (v90 + *(v110 + 36));
  v92 = v137;
  v91[4] = v136;
  v91[5] = v92;
  v91[6] = v138;
  v93 = v133;
  *v91 = v132;
  v91[1] = v93;
  v94 = v135;
  v91[2] = v134;
  v91[3] = v94;
  v95 = v109;
  sub_213DE2B44(v90, v109, &qword_27C8FB870, &qword_213F61158);
  *(v95 + *(v112 + 36)) = 0;
  v96 = v114;
  sub_213DE2B44(v95, v114, &qword_27C8FB878, &qword_213F61160);
  v97 = v123;
  sub_213DE3164(v86, v123, &qword_27C8FB880, &qword_213F61168);
  v98 = v115;
  sub_213DE3164(v96, v115, &qword_27C8FB878, &qword_213F61160);
  v99 = v116;
  sub_213DE3164(v97, v116, &qword_27C8FB880, &qword_213F61168);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B0, &qword_213F61198);
  sub_213DE3164(v98, v99 + *(v100 + 48), &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v96, &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v86, &qword_27C8FB880, &qword_213F61168);
  sub_213EE64E8(v88, type metadata accessor for RichTextViewModel);
  sub_213DE36FC(v98, &qword_27C8FB878, &qword_213F61160);
  sub_213DE36FC(v97, &qword_27C8FB880, &qword_213F61168);
  v101 = v124;
  sub_213DE2B44(v99, v124, &qword_27C8FB868, &qword_213F61148);
  v102 = 0;
  v103 = v122;
LABEL_22:
  (*(v126 + 56))(v101, v102, 1, v127);
  v104 = v130;
  sub_213DE3164(v130, v97, &qword_27C8FB880, &qword_213F61168);
  v105 = v125;
  sub_213DE3164(v101, v125, &qword_27C8FB888, &qword_213F61170);
  sub_213DE3164(v97, v103, &qword_27C8FB880, &qword_213F61168);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB8B8, &qword_213F611D0);
  sub_213DE3164(v105, v103 + *(v106 + 48), &qword_27C8FB888, &qword_213F61170);
  sub_213DE36FC(v101, &qword_27C8FB888, &qword_213F61170);
  sub_213DE36FC(v104, &qword_27C8FB880, &qword_213F61168);
  sub_213DE36FC(v105, &qword_27C8FB888, &qword_213F61170);
  return sub_213DE36FC(v97, &qword_27C8FB880, &qword_213F61168);
}

double sub_213EE1690@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellRecentSearch(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = sub_213F4D290();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = v2 + *(v5 + 28);
  sub_213DBBD08(v30 - v14);
  sub_213F4D280();
  sub_213F4D270();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  sub_213EE6480(v2, v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_213EE79C4(v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ListCellRecentSearch);
  sub_213EE6480(v2, v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v20 = swift_allocObject();
  sub_213EE79C4(v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for ListCellRecentSearch);
  sub_213EE6480(v2, v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListCellRecentSearch);
  v21 = swift_allocObject();
  sub_213EE79C4(v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v18, type metadata accessor for ListCellRecentSearch);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7E8, &unk_213F61088);
  v23 = a1 + v22[29];
  type metadata accessor for CGSize(0);
  v30[0] = 0;
  v30[1] = 0;
  sub_213F4EA90();
  v24 = v32;
  result = *&v31;
  *v23 = v31;
  *(v23 + 2) = v24;
  *(a1 + v22[21]) = 1;
  *(a1 + v22[22]) = 0;
  *(a1 + v22[23]) = 0x402C000000000000;
  *(a1 + v22[24]) = 1;
  v26 = (a1 + v22[25]);
  *v26 = sub_213EE7DC4;
  v26[1] = v19;
  v27 = (a1 + v22[26]);
  *v27 = sub_213EE7DF0;
  v27[1] = v20;
  v28 = (a1 + v22[27]);
  *v28 = sub_213EE7E1C;
  v28[1] = v21;
  v29 = (a1 + v22[28]);
  *v29 = nullsub_1;
  v29[1] = 0;
  return result;
}

uint64_t sub_213EE1A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB808, &qword_213F610E8);
  v3 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v5 = &v67[-v4];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB810, &qword_213F610F0);
  v6 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v67[-v7];
  v71 = sub_213F4D290();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v71);
  v70 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v67[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB818, &qword_213F610F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v67[-v19];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB820, &qword_213F61100);
  v20 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v22 = &v67[-v21];
  v23 = sub_213F4D390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v67[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = a1;
  sub_213EA886C(v27);
  LOBYTE(a1) = sub_213F4D370();
  (*(v24 + 8))(v27, v23);
  if (a1)
  {
    *v22 = sub_213F4DA50();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v29 = v69;
    sub_213EDF7E0(0, v69);
    v68 = sub_213F4E040();
    v30 = *(type metadata accessor for ListCellRecentSearch(0) + 20);
    sub_213DBBD08(v16);
    sub_213F4D280();
    sub_213F4D270();
    v31 = *(v8 + 8);
    v32 = v71;
    v31(v14, v71);
    v31(v16, v32);
    v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB840, &qword_213F61120) + 44)];
    sub_213F4CDA0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_213DE2B44(v29, v33, &qword_27C8FB818, &qword_213F610F8);
    v42 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB848, &qword_213F61128) + 36);
    *v42 = v68;
    *(v42 + 8) = v35;
    *(v42 + 16) = v37;
    *(v42 + 24) = v39;
    *(v42 + 32) = v41;
    *(v42 + 40) = 0;
    LOBYTE(v29) = sub_213F4E0B0();
    sub_213DBBD08(v14);
    v43 = v70;
    sub_213F4D280();
    sub_213F4D270();
    v31(v43, v32);
    v31(v14, v32);
    sub_213F4CDA0();
    v44 = &v22[*(v72 + 36)];
    *v44 = v29;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_213DE3164(v22, v74, &qword_27C8FB820, &qword_213F61100);
    swift_storeEnumTagMultiPayload();
    sub_213EE8000();
    sub_213EE80B8();
    sub_213F4DBA0();
    v49 = v22;
    v50 = &qword_27C8FB820;
    v51 = &qword_213F61100;
  }

  else
  {
    *v5 = sub_213F4D8A0();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB828, &qword_213F61108);
    v53 = v28;
    sub_213EDF7E0(1, &v5[*(v52 + 44)]);
    v54 = sub_213F4E0B0();
    v55 = v53 + *(type metadata accessor for ListCellRecentSearch(0) + 20);
    sub_213DBBD08(v14);
    v56 = v70;
    sub_213F4D280();
    sub_213F4D270();
    v57 = *(v8 + 8);
    v58 = v56;
    v59 = v71;
    v57(v58, v71);
    v57(v14, v59);
    sub_213F4CDA0();
    v60 = v74;
    v61 = &v5[*(v75 + 36)];
    *v61 = v54;
    *(v61 + 1) = v62;
    *(v61 + 2) = v63;
    *(v61 + 3) = v64;
    *(v61 + 4) = v65;
    v61[40] = 0;
    sub_213DE3164(v5, v60, &qword_27C8FB808, &qword_213F610E8);
    swift_storeEnumTagMultiPayload();
    sub_213EE8000();
    sub_213EE80B8();
    sub_213F4DBA0();
    v49 = v5;
    v50 = &qword_27C8FB808;
    v51 = &qword_213F610E8;
  }

  return sub_213DE36FC(v49, v50, v51);
}

uint64_t sub_213EE206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a1;
  v54 = a2;
  v2 = sub_213F4D390();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v44 - v7;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v51 = sub_213F4E9F0();
  v17 = [objc_opt_self() secondaryLabelColor];
  v50 = sub_213F4E870();
  v18 = *(type metadata accessor for ListCellRecentSearch(0) + 20);
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v16, v9);
  sub_213F4E160();
  v20 = sub_213F4E0F0();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  *(&v48 + 1) = sub_213F4E190();
  sub_213DE36FC(v8, &qword_27C8F7668, &qword_213F52190);
  *&v48 = swift_getKeyPath();
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19(v14, v9);
  v19(v16, v9);
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19(v14, v9);
  v19(v16, v9);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v47 = sub_213F4E080();
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19(v14, v9);
  v19(v16, v9);
  sub_213F4CDA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v68[0]) = 0;
  v46 = sub_213F4E060();
  v44[0] = v18;
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19(v14, v9);
  v19(v16, v9);
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v77 = 0;
  v45 = sub_213F4E070();
  v37 = v49;
  sub_213EA886C(v49);
  v38 = sub_213F4D370();
  (*(v52 + 8))(v37, v53);
  if ((v38 & 1) == 0)
  {
    sub_213DBBD08(v16);
    sub_213F4D280();
    sub_213F4D270();
    v19(v14, v9);
    v19(v16, v9);
  }

  sub_213F4CDA0();
  v78 = 0;
  *&v68[0] = v51;
  *(&v68[0] + 1) = v50;
  v68[1] = v48;
  v68[2] = v81;
  v68[3] = v82;
  v68[4] = v83;
  LOBYTE(v69) = v47;
  *(&v69 + 1) = v22;
  *&v70 = v24;
  *(&v70 + 1) = v26;
  *&v71 = v28;
  BYTE8(v71) = 0;
  LOBYTE(v72) = v46;
  *(&v72 + 1) = v30;
  *&v73 = v32;
  *(&v73 + 1) = v34;
  *&v74 = v36;
  BYTE8(v74) = 0;
  *(&v74 + 9) = *v80;
  HIDWORD(v74) = *&v80[3];
  LOBYTE(v75) = v45;
  DWORD1(v75) = *&v79[3];
  *(&v75 + 1) = *v79;
  *(&v75 + 1) = v39;
  *&v76[0] = v40;
  *(&v76[0] + 1) = v41;
  *&v76[1] = v42;
  BYTE8(v76[1]) = 0;
  v65 = v74;
  v66 = v75;
  v67[0] = v76[0];
  *(v67 + 9) = *(v76 + 9);
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v69;
  v55 = v68[0];
  v56 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB7F0, &qword_213F610C8);
  sub_213EE7E5C();
  sub_213F4E6D0();
  return sub_213DE36FC(v68, &qword_27C8FB7F0, &qword_213F610C8);
}

uint64_t sub_213EE26C8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D0, &qword_213F60F40);
  v18[0] = *(v6 - 8);
  v7 = *(v18[0] + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = (a1 + *(a2(0) + 24));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0(v10, v11);
  if (ListCellProviding.hasTrailingAccessory.getter(v11, v12))
  {
    *v9 = sub_213F4D8A0();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D8, &qword_213F60F48) + 44);
    v14 = v10[3];
    v15 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v14);
    v18[1] = (*(v15 + 72))(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50);
    sub_213EE75C4();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v9, a3, &qword_27C8FB6D0, &qword_213F60F40);
    return (*(v18[0] + 56))(a3, 0, 1, v6);
  }

  else
  {
    v17 = *(v18[0] + 56);

    return v17(a3, 1, 1, v6);
  }
}

double sub_213EE29A0@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCellNavigation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  sub_213EE6480(v1, v23 - v9, type metadata accessor for ListCellNavigation);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_213EE79C4(v10, v12 + v11, type metadata accessor for ListCellNavigation);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellNavigation);
  v13 = swift_allocObject();
  sub_213EE79C4(v8, v13 + v11, type metadata accessor for ListCellNavigation);
  sub_213EE6480(v2, v8, type metadata accessor for ListCellNavigation);
  v14 = swift_allocObject();
  sub_213EE79C4(v8, v14 + v11, type metadata accessor for ListCellNavigation);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6C8, &qword_213F60F38);
  v16 = a1 + v15[29];
  type metadata accessor for CGSize(0);
  v23[0] = 0;
  v23[1] = 0;
  sub_213F4EA90();
  v17 = v25;
  result = *&v24;
  *v16 = v24;
  *(v16 + 2) = v17;
  *(a1 + v15[21]) = 1;
  *(a1 + v15[22]) = 0;
  *(a1 + v15[23]) = 0;
  *(a1 + v15[24]) = 0;
  v19 = (a1 + v15[25]);
  *v19 = sub_213EE74B4;
  v19[1] = v12;
  v20 = (a1 + v15[26]);
  *v20 = sub_213EE74E0;
  v20[1] = v13;
  v21 = (a1 + v15[27]);
  *v21 = sub_213EE7598;
  v21[1] = v14;
  v22 = (a1 + v15[28]);
  *v22 = nullsub_1;
  v22[1] = 0;
  return result;
}

uint64_t sub_213EE2C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for MultiTextView(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ListCellNavigation(0);
  sub_213DEBAA8(a1 + *(v17 + 20), v16 + v13[8]);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v18 = v13[7];
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v16 + v13[9]) = 3;
  *(v16 + v13[10]) = 1;
  LOBYTE(v13) = sub_213F4E0A0();
  sub_213DBBD08(v11);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v5 + 8);
  v19(v9, v4);
  v19(v11, v4);
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_213EE79C4(v16, a2, type metadata accessor for MultiTextView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0);
  v29 = a2 + *(result + 36);
  *v29 = v13;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_213EE2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_213F4D290();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v64 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v58[-v8];
  MEMORY[0x28223BE20](v7);
  v10 = &v58[-v9];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6F0, &qword_213F60F60);
  v11 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v58[-v12];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6F8, &qword_213F60F68);
  v13 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v15 = &v58[-v14];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB700, &unk_213F60F70);
  v16 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v18 = &v58[-v17];
  v19 = type metadata accessor for ListCellNavigation(0);
  v20 = (a1 + *(v19 + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_0(v20, v21);
  if (ListCellProviding.hasLeadingAccessory.getter(v21, v22))
  {
    *v18 = sub_213F4D8A0();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB718, &qword_213F60F90) + 44);
    v24 = v20[3];
    v25 = v20[4];
    __swift_project_boxed_opaque_existential_0(v20, v24);
    *&v80[0] = (*(v25 + 64))(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB720, &qword_213F60F98);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213DE3AE4(&qword_2811824B8, &qword_27C8FB720, &qword_213F60F98);
    sub_213EE78D8();
    sub_213ED26C4(qword_281184438, type metadata accessor for LeadingAccessoryViewModel);
    sub_213F4ECD0();
    v26 = &qword_27C8FB700;
    v27 = &unk_213F60F70;
    sub_213DE3164(v18, v15, &qword_27C8FB700, &unk_213F60F70);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70);
    sub_213EE781C();
    sub_213F4DBA0();
    v28 = v18;
  }

  else
  {
    v61 = v15;
    v29 = byte_213F6132A[*(a1 + *(v19 + 24))];
    v30 = v20[3];
    v31 = v20[4];
    __swift_project_boxed_opaque_existential_0(v20, v30);
    (*(v31 + 16))(&v73, v30, v31);
    v71 = 0;
    memset(v70, 0, sizeof(v70));
    *(v80 + 8) = 0u;
    *(&v80[1] + 8) = 0u;
    *(&v80[2] + 8) = 0u;
    *(&v80[3] + 8) = 0u;
    *(&v80[4] + 8) = 0u;
    sub_213E5201C(&v73, v80 + 8, &qword_27C8F7AB8, &qword_213F522C0);
    sub_213E5201C(v70, &v80[3], &qword_27C8F7AB8, &qword_213F522C0);
    BYTE8(v80[5]) = 1;
    v81 = 0;
    LOBYTE(v80[0]) = v29;
    v59 = sub_213F4E0A0();
    v60 = a1;
    sub_213DBBD08(v10);
    v32 = v62;
    sub_213F4D280();
    sub_213F4D270();
    v33 = *(v63 + 8);
    v33(v32, v3);
    v63 = v3;
    v33(v10, v3);
    sub_213F4CDA0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v76 = v80[3];
    v77 = v80[4];
    v78 = v80[5];
    v73 = v80[0];
    v74 = v80[1];
    v79 = v81;
    v75 = v80[2];
    v72 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_213F51DE0;
    v43 = sub_213F4E080();
    *(inited + 32) = v43;
    v44 = sub_213F4E0B0();
    *(inited + 33) = v44;
    v45 = sub_213F4E090();
    sub_213F4E090();
    v46 = v32;
    if (sub_213F4E090() != v43)
    {
      v45 = sub_213F4E090();
    }

    sub_213F4E090();
    v47 = sub_213F4E090();
    v48 = v61;
    if (v47 != v44)
    {
      v45 = sub_213F4E090();
    }

    v49 = v64;
    sub_213DBBD08(v64);
    sub_213F4D280();
    sub_213F4D270();
    v50 = v46;
    v51 = v63;
    v33(v50, v63);
    v33(v49, v51);
    sub_213F4CDA0();
    v80[4] = v77;
    v80[5] = v78;
    v81 = v79;
    v80[0] = v73;
    v80[1] = v74;
    v80[2] = v75;
    v80[3] = v76;
    v82 = v59;
    *&v83[3] = *(v70 + 3);
    *v83 = v70[0];
    v84 = v35;
    v85 = v37;
    v86 = v39;
    v87 = v41;
    v88 = v72;
    v89 = v45;
    v90 = v52;
    v91 = v53;
    v92 = v54;
    v93 = v55;
    v94 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB708, &qword_213F60F80);
    sub_213EE76B0();
    v56 = v65;
    sub_213F4E6D0();
    sub_213DE36FC(v80, &qword_27C8FB708, &qword_213F60F80);
    v26 = &qword_27C8FB6F0;
    v27 = &qword_213F60F60;
    sub_213DE3164(v56, v48, &qword_27C8FB6F0, &qword_213F60F60);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_2811826F0, &qword_27C8FB700, &unk_213F60F70);
    sub_213EE781C();
    sub_213F4DBA0();
    v28 = v56;
  }

  return sub_213DE36FC(v28, v26, v27);
}

uint64_t sub_213EE370C(uint64_t a1)
{
  v2 = type metadata accessor for LeadingAccessory(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213EE6480(a1, v6 + *(v4 + 24), type metadata accessor for LeadingAccessoryViewModel);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v7 = *(v2 + 20);
  *(v6 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LeadingAccessoryViewModel(0);
  sub_213EC9484(a1 + *(v8 + 20), v12);
  if (v13 <= 1u)
  {
    if (v13)
    {
      sub_213EC9658(v12);
      v9 = 0xE600000000000000;
      v10 = 0x656D756C6F56;
    }

    else
    {
      sub_213EC9658(v12);
      v9 = 0xE600000000000000;
      v10 = 0x6C6F626D7953;
    }
  }

  else if (v13 == 2)
  {
    sub_213E5BD34(v12);
    v9 = 0xE800000000000000;
    v10 = 0x6E61466F746F6850;
  }

  else if (v13 == 3)
  {
    sub_213EC9658(v12);
    v9 = 0xE700000000000000;
    v10 = 0x7972617262694CLL;
  }

  else
  {
    sub_213EC9658(v12);
    v9 = 0xE700000000000000;
    v10 = 0x656C69666F7250;
  }

  v12[0] = v10;
  v12[1] = v9;

  MEMORY[0x216052710](0x726F737365636341, 0xE900000000000079);

  sub_213ED26C4(qword_281186640, type metadata accessor for LeadingAccessory);
  sub_213F4E6D0();

  return sub_213EE64E8(v6, type metadata accessor for LeadingAccessory);
}

uint64_t sub_213EE398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D0, &qword_213F60F40);
  v16[0] = *(v4 - 8);
  v5 = *(v16[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = (a1 + *(type metadata accessor for ListCellNavigation(0) + 20));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  if (ListCellProviding.hasTrailingAccessory.getter(v9, v10))
  {
    *v7 = sub_213F4D8A0();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6D8, &qword_213F60F48) + 44);
    v12 = v8[3];
    v13 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v12);
    v16[1] = (*(v13 + 72))(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E0, &qword_213F60F50);
    sub_213F4CB40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213DE3AE4(&qword_2811824B0, &qword_27C8FB6E0, &qword_213F60F50);
    sub_213EE75C4();
    sub_213ED26C4(qword_281184010, type metadata accessor for TrailingAccessoryViewModel);
    sub_213F4ECD0();
    sub_213DE2B44(v7, a2, &qword_27C8FB6D0, &qword_213F60F40);
    return (*(v16[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = *(v16[0] + 56);

    return v15(a2, 1, 1, v4);
  }
}

uint64_t sub_213EE3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrailingAccessory(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213EE6480(a1, v10 + *(v8 + 24), type metadata accessor for TrailingAccessoryViewModel);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v11 = *(v6 + 20);
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v14[0] = TrailingAccessoryViewModel.axIDString.getter();
  v14[1] = v12;

  MEMORY[0x216052710](a2, a3);

  sub_213ED26C4(&qword_281185C30, type metadata accessor for TrailingAccessory);
  sub_213F4E6D0();

  return sub_213EE64E8(v10, type metadata accessor for TrailingAccessory);
}

uint64_t sub_213EE3E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CEA0();
  v32 = *(v3 - 8);
  v4 = v32[8];
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = sub_213F4D7F0();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ListCell(0);
  v14 = (v1 + *(v13 + 32));
  v16 = v14[3];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v16);
  if ((*(v15 + 104))(v16, v15))
  {
    v17 = *MEMORY[0x277CDF3C0];
    v18 = v32[13];

    return v18(a1, v17, v3);
  }

  v20 = v1 + *(v13 + 24);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      return sub_213EA8894(a1);
    }
  }

  else
  {

    sub_213F4F520();
    v22 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v21, 0);
    (*(v30 + 8))(v12, v9);
    if (v33 != 1)
    {
      return sub_213EA8894(a1);
    }
  }

  sub_213EA8894(v8);
  v23 = *MEMORY[0x277CDF3C0];
  v24 = v31;
  v25 = v32[13];
  v25(v31, v23, v3);
  v26 = sub_213F4CE90();
  v27 = v32[1];
  ++v32;
  v27(v24, v3);
  v27(v8, v3);
  if (v26)
  {
    v28 = *MEMORY[0x277CDF3D0];
    v29 = a1;
  }

  else
  {
    v29 = a1;
    v28 = v23;
  }

  return (v25)(v29, v28, v3);
}

uint64_t sub_213EE41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v128 = type metadata accessor for ListCellRecentSearch(0);
  v3 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v108 = (&v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for ListCellProfileLibrary(0);
  v5 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v112 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB658, &qword_213F60B38);
  v7 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v127 = &v103 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB660, &qword_213F60B40);
  v9 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v115 = &v103 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB668, &qword_213F60B48);
  v11 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v117 = &v103 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB670, &qword_213F60B50);
  v13 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v129 = &v103 - v14;
  v114 = type metadata accessor for ListCellNavigation(0);
  v15 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v121 = (&v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB678, &qword_213F60B58);
  v17 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v103 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB680, &qword_213F60B60);
  v19 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v110 = &v103 - v20;
  v106 = type metadata accessor for ListCellMediumImageRight(0);
  v21 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v104 = (&v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB688, &qword_213F60B68);
  v23 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v103 - v24;
  v119 = type metadata accessor for ListCellMediumImageLeft(0);
  v25 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_213F4D390();
  v118 = *(v28 - 8);
  v29 = *(v118 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB690, &qword_213F60B70);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v103 - v34;
  v124 = type metadata accessor for ListCellMedium(0);
  v36 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v38 = (&v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB698, &qword_213F60B78);
  v39 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v137 = &v103 - v40;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6A0, &qword_213F60B80);
  v41 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v132 = &v103 - v42;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6A8, &qword_213F60B88);
  v43 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v122 = &v103 - v44;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6B0, &qword_213F60B90);
  v45 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v123 = &v103 - v46;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB6B8, &qword_213F60B98);
  v47 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v103 - v48;
  v49 = type metadata accessor for ListCellSmall(0);
  v50 = *(*(v49 - 1) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v103 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for ListCell(0);
  v54 = v53;
  v55 = a1;
  v56 = *(a1 + v53[7]);
  if (v56 <= 5)
  {
    if ((v56 - 3) < 3)
    {
      sub_213DEBAA8(v55 + v53[8], v52 + v49[7]);
      *v52 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
      swift_storeEnumTagMultiPayload();
      v57 = v49[5];
      *(v52 + v57) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v58 = v49[6];
      *(v52 + v58) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      *(v52 + v49[8]) = v56;
      sub_213EE6480(v52, v122, type metadata accessor for ListCellSmall);
      swift_storeEnumTagMultiPayload();
      sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall);
      sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium);
      v59 = v123;
      sub_213F4DBA0();
      sub_213DE3164(v59, v132, &qword_27C8FB6B0, &qword_213F60B90);
      swift_storeEnumTagMultiPayload();
      sub_213EE6130();
      sub_213EE621C();
      v60 = v133;
      sub_213F4DBA0();
      sub_213DE36FC(v59, &qword_27C8FB6B0, &qword_213F60B90);
      sub_213DE3164(v60, v137, &qword_27C8FB6B8, &qword_213F60B98);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v60, &qword_27C8FB6B8, &qword_213F60B98);
      v61 = type metadata accessor for ListCellSmall;
      v62 = v52;
      return sub_213EE64E8(v62, v61);
    }

    if (v56 >= 2)
    {
      v81 = v128;
      v82 = v108;
      sub_213DEBAA8(v55 + v53[8], v108 + *(v128 + 24));
      *v82 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v83 = *(v81 + 20);
      *(v82 + v83) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      *(v82 + *(v81 + 28)) = 2;
      sub_213EE6480(v82, v127, type metadata accessor for ListCellRecentSearch);
      swift_storeEnumTagMultiPayload();
      sub_213EE5FB8();
      sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch);
      v84 = v129;
      sub_213F4DBA0();
      sub_213DE3164(v84, v137, &qword_27C8FB670, &qword_213F60B50);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v84, &qword_27C8FB670, &qword_213F60B50);
      v61 = type metadata accessor for ListCellRecentSearch;
      v62 = v82;
      return sub_213EE64E8(v62, v61);
    }

    v72 = v116;
    v67 = v112;
    sub_213DEBAA8(v55 + v53[8], v112 + *(v116 + 24));
    *v67 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v73 = *(v72 + 20);
    *(v67 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v67 + *(v72 + 28)) = v56;
    sub_213EE6480(v67, v115, type metadata accessor for ListCellProfileLibrary);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary);
    v74 = v117;
    sub_213F4DBA0();
    sub_213DE3164(v74, v127, &qword_27C8FB668, &qword_213F60B48);
    swift_storeEnumTagMultiPayload();
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch);
    v75 = v129;
    sub_213F4DBA0();
    sub_213DE36FC(v74, &qword_27C8FB668, &qword_213F60B48);
    sub_213DE3164(v75, v137, &qword_27C8FB670, &qword_213F60B50);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v75, &qword_27C8FB670, &qword_213F60B50);
    v71 = type metadata accessor for ListCellProfileLibrary;
    goto LABEL_15;
  }

  v63 = v118;
  v108 = v35;
  v64 = v27;
  v112 = v32;
  v65 = v119;
  if (v56 > 7)
  {
    if (v56 == 8)
    {
      v76 = v64;
      sub_213DEBAA8(v55 + v53[8], v64 + *(v119 + 28));
      *v76 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
      swift_storeEnumTagMultiPayload();
      v77 = v65[5];
      *(v76 + v77) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v78 = v65[6];
      *(v76 + v78) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      *(v76 + v65[8]) = 8;
      sub_213EE6480(v76, v109, type metadata accessor for ListCellMediumImageLeft);
      swift_storeEnumTagMultiPayload();
      sub_213EE62D8();
      sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
      v79 = v110;
      sub_213F4DBA0();
      sub_213DE3164(v79, v132, &qword_27C8FB680, &qword_213F60B60);
      swift_storeEnumTagMultiPayload();
      sub_213EE6130();
      sub_213EE621C();
      v80 = v133;
      sub_213F4DBA0();
      sub_213DE36FC(v79, &qword_27C8FB680, &qword_213F60B60);
      sub_213DE3164(v80, v137, &qword_27C8FB6B8, &qword_213F60B98);
      swift_storeEnumTagMultiPayload();
      sub_213EE60A4();
      sub_213EE63C4();
      sub_213F4DBA0();
      sub_213DE36FC(v80, &qword_27C8FB6B8, &qword_213F60B98);
      v61 = type metadata accessor for ListCellMediumImageLeft;
      v62 = v76;
      return sub_213EE64E8(v62, v61);
    }

    v95 = v114;
    v67 = v121;
    sub_213DEBAA8(v55 + v53[8], v121 + *(v114 + 20));
    *v67 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v67 + *(v95 + 24)) = 9;
    sub_213EE6480(v67, v115, type metadata accessor for ListCellNavigation);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary);
    v96 = v117;
    sub_213F4DBA0();
    sub_213DE3164(v96, v127, &qword_27C8FB668, &qword_213F60B48);
    swift_storeEnumTagMultiPayload();
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch);
    v97 = v129;
    sub_213F4DBA0();
    sub_213DE36FC(v96, &qword_27C8FB668, &qword_213F60B48);
    sub_213DE3164(v97, v137, &qword_27C8FB670, &qword_213F60B50);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v97, &qword_27C8FB670, &qword_213F60B50);
    v71 = type metadata accessor for ListCellNavigation;
LABEL_15:
    v61 = v71;
    v62 = v67;
    return sub_213EE64E8(v62, v61);
  }

  if (v56 == 6)
  {
    v66 = v124;
    v67 = v38;
    sub_213DEBAA8(v55 + v53[8], v38 + *(v124 + 24));
    *v38 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
    swift_storeEnumTagMultiPayload();
    v68 = *(v66 + 20);
    *(v38 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v38 + *(v66 + 28)) = 6;
    sub_213EE6480(v38, v122, type metadata accessor for ListCellMedium);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall);
    sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium);
    v69 = v123;
    sub_213F4DBA0();
    sub_213DE3164(v69, v132, &qword_27C8FB6B0, &qword_213F60B90);
    swift_storeEnumTagMultiPayload();
    sub_213EE6130();
    sub_213EE621C();
    v70 = v133;
    sub_213F4DBA0();
    sub_213DE36FC(v69, &qword_27C8FB6B0, &qword_213F60B90);
    sub_213DE3164(v70, v137, &qword_27C8FB6B8, &qword_213F60B98);
    swift_storeEnumTagMultiPayload();
    sub_213EE60A4();
    sub_213EE63C4();
    sub_213F4DBA0();
    sub_213DE36FC(v70, &qword_27C8FB6B8, &qword_213F60B98);
    v71 = type metadata accessor for ListCellMedium;
    goto LABEL_15;
  }

  v85 = v64;
  v86 = v55 + v53[5];
  v87 = v55;
  sub_213EA886C(v31);
  v88 = sub_213F4D370();
  (*(v63 + 8))(v31, v28);
  v89 = v54[8];
  if (v88)
  {
    sub_213DEBAA8(v87 + v89, v85 + v65[7]);
    *v85 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
    swift_storeEnumTagMultiPayload();
    v90 = v65[5];
    *(v85 + v90) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v91 = v65[6];
    *(v85 + v91) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    *(v85 + v65[8]) = 7;
    sub_213EE6480(v85, v105, type metadata accessor for ListCellMediumImageLeft);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight);
    v92 = v108;
    sub_213F4DBA0();
    v93 = type metadata accessor for ListCellMediumImageLeft;
    v94 = v85;
  }

  else
  {
    v99 = v106;
    v100 = v104;
    sub_213DEBAA8(v87 + v89, v104 + *(v106 + 20));
    *v100 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    *(v100 + *(v99 + 24)) = 7;
    sub_213EE6480(v100, v105, type metadata accessor for ListCellMediumImageRight);
    swift_storeEnumTagMultiPayload();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight);
    v92 = v108;
    sub_213F4DBA0();
    v93 = type metadata accessor for ListCellMediumImageRight;
    v94 = v100;
  }

  sub_213EE64E8(v94, v93);
  v101 = v110;
  sub_213DE3164(v92, v109, &qword_27C8FB690, &qword_213F60B70);
  swift_storeEnumTagMultiPayload();
  sub_213EE62D8();
  sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
  sub_213F4DBA0();
  sub_213DE3164(v101, v132, &qword_27C8FB680, &qword_213F60B60);
  swift_storeEnumTagMultiPayload();
  sub_213EE6130();
  sub_213EE621C();
  v102 = v133;
  sub_213F4DBA0();
  sub_213DE36FC(v101, &qword_27C8FB680, &qword_213F60B60);
  sub_213DE3164(v102, v137, &qword_27C8FB6B8, &qword_213F60B98);
  swift_storeEnumTagMultiPayload();
  sub_213EE60A4();
  sub_213EE63C4();
  sub_213F4DBA0();
  sub_213DE36FC(v102, &qword_27C8FB6B8, &qword_213F60B98);
  return sub_213DE36FC(v92, &qword_27C8FB690, &qword_213F60B70);
}

uint64_t sub_213EE5C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB640, &qword_213F60AE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB648, &qword_213F60AF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_213EE41BC(v2, v8);
  v14 = (v2 + *(a1 + 32));
  v16 = v14[3];
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_0(v14, v16);
  if ((*(v15 + 96))(v16, v15))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_213DE2B44(v8, v13, &qword_27C8FB640, &qword_213F60AE8);
  *&v13[*(v10 + 44)] = v17;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB650, &qword_213F60AF8) + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00);
  sub_213EE3E50(v18 + *(v19 + 28));
  *v18 = swift_getKeyPath();
  return sub_213DE2B44(v13, a2, &qword_27C8FB648, &qword_213F60AF0);
}

uint64_t sub_213EE5E10(uint64_t a1)
{
  v2 = sub_213F4CEA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D5C0();
}

unint64_t sub_213EE5FB8()
{
  result = qword_281182BA0;
  if (!qword_281182BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB668, &qword_213F60B48);
    sub_213ED26C4(&qword_281185A28, type metadata accessor for ListCellNavigation);
    sub_213ED26C4(qword_281184EC8, type metadata accessor for ListCellProfileLibrary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BA0);
  }

  return result;
}

unint64_t sub_213EE60A4()
{
  result = qword_281182A80;
  if (!qword_281182A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6B8, &qword_213F60B98);
    sub_213EE6130();
    sub_213EE621C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A80);
  }

  return result;
}

unint64_t sub_213EE6130()
{
  result = qword_281182BA8;
  if (!qword_281182BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6B0, &qword_213F60B90);
    sub_213ED26C4(&qword_281187EA8, type metadata accessor for ListCellSmall);
    sub_213ED26C4(&qword_281187AB8, type metadata accessor for ListCellMedium);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BA8);
  }

  return result;
}

unint64_t sub_213EE621C()
{
  result = qword_281182A70;
  if (!qword_281182A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB680, &qword_213F60B60);
    sub_213EE62D8();
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A70);
  }

  return result;
}

unint64_t sub_213EE62D8()
{
  result = qword_281182B88;
  if (!qword_281182B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB690, &qword_213F60B70);
    sub_213ED26C4(&qword_281184C20, type metadata accessor for ListCellMediumImageLeft);
    sub_213ED26C4(qword_2811846A8, type metadata accessor for ListCellMediumImageRight);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B88);
  }

  return result;
}

unint64_t sub_213EE63C4()
{
  result = qword_281182A78;
  if (!qword_281182A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB670, &qword_213F60B50);
    sub_213EE5FB8();
    sub_213ED26C4(qword_2811853C8, type metadata accessor for ListCellRecentSearch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A78);
  }

  return result;
}

uint64_t sub_213EE6480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EE64E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213EE6570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213EE65FC()
{
  sub_213EE6570(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213E753F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_184Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_185Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_213EE68E4()
{
  sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E753F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EE69C8()
{
  if (!qword_281183508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8D50, &unk_213F5E0A0);
    v0 = sub_213F4CEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_281183508);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 24) + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v12 = result;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
  }

  return v13(v14, a2, a2, v12);
}

void sub_213EE6C90()
{
  sub_213EE69C8();
  if (v0 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213E753F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_202Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_213EE7080()
{
  sub_213EE69C8();
  if (v0 <= 0x3F)
  {
    sub_213EE6570(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213EE6570(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213E753F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_213EE719C()
{
  result = qword_281182FE8;
  if (!qword_281182FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB650, &qword_213F60AF8);
    sub_213EE7254();
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FE8);
  }

  return result;
}

unint64_t sub_213EE7254()
{
  result = qword_281183250;
  if (!qword_281183250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB648, &qword_213F60AF0);
    sub_213EE72E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183250);
  }

  return result;
}

unint64_t sub_213EE72E0()
{
  result = qword_2811827F0;
  if (!qword_2811827F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB640, &qword_213F60AE8);
    sub_213EE7364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811827F0);
  }

  return result;
}

unint64_t sub_213EE7364()
{
  result = qword_2811829F8;
  if (!qword_2811829F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6C0, &qword_213F60D00);
    sub_213EE60A4();
    sub_213EE63C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829F8);
  }

  return result;
}

uint64_t sub_213EE750C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_213EE75C4()
{
  result = qword_281183418;
  if (!qword_281183418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6E8, &qword_213F60F58);
    sub_213ED26C4(&qword_281185C30, type metadata accessor for TrailingAccessory);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183418);
  }

  return result;
}

unint64_t sub_213EE76B0()
{
  result = qword_281183120;
  if (!qword_281183120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB708, &qword_213F60F80);
    sub_213EE773C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183120);
  }

  return result;
}

unint64_t sub_213EE773C()
{
  result = qword_281183450;
  if (!qword_281183450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB710, &qword_213F60F88);
    sub_213EE77C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183450);
  }

  return result;
}

unint64_t sub_213EE77C8()
{
  result = qword_281187B70[0];
  if (!qword_281187B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187B70);
  }

  return result;
}

unint64_t sub_213EE781C()
{
  result = qword_281182F20;
  if (!qword_281182F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB6F0, &qword_213F60F60);
    sub_213EE76B0();
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F20);
  }

  return result;
}

unint64_t sub_213EE78D8()
{
  result = qword_281183420;
  if (!qword_281183420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB728, &unk_213F60FA0);
    sub_213ED26C4(qword_281186640, type metadata accessor for LeadingAccessory);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183420);
  }

  return result;
}

uint64_t sub_213EE79C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_231Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D390();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D290();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  __swift_destroy_boxed_opaque_existential_1(&v5[*(v2 + 24)]);

  return swift_deallocObject();
}

unint64_t sub_213EE7D14()
{
  result = qword_27C8FB7B8;
  if (!qword_27C8FB7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB780, &qword_213F61000);
    sub_213DE3AE4(&qword_27C8FB7A8, &qword_27C8FB7A0, &qword_213F61058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB7B8);
  }

  return result;
}

unint64_t sub_213EE7E5C()
{
  result = qword_281182CC0;
  if (!qword_281182CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB7F0, &qword_213F610C8);
    sub_213EE7EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CC0);
  }

  return result;
}

unint64_t sub_213EE7EE8()
{
  result = qword_281182D10;
  if (!qword_281182D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB7F8, &qword_213F610D0);
    sub_213EE7F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D10);
  }

  return result;
}

unint64_t sub_213EE7F74()
{
  result = qword_281182D78;
  if (!qword_281182D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB800, &qword_213F610D8);
    sub_213E508E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D78);
  }

  return result;
}

unint64_t sub_213EE8000()
{
  result = qword_281183170;
  if (!qword_281183170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB820, &qword_213F61100);
    sub_213DE3AE4(&qword_2811826B8, &qword_27C8FB830, &qword_213F61110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183170);
  }

  return result;
}

unint64_t sub_213EE80B8()
{
  result = qword_281183200;
  if (!qword_281183200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB808, &qword_213F610E8);
    sub_213DE3AE4(&qword_281182708, &qword_27C8FB838, &qword_213F61118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183200);
  }

  return result;
}

uint64_t objectdestroy_242Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D390();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D290();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  __swift_destroy_boxed_opaque_existential_1(&v5[*(v2 + 24)]);

  return swift_deallocObject();
}

uint64_t sub_213EE8340(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64));

  return a3(a1);
}

unint64_t sub_213EE83F8()
{
  result = qword_281182600;
  if (!qword_281182600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB850, &qword_213F61130);
    sub_213DE3AE4(&qword_281182560, &qword_27C8FB8A0, &qword_213F61188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182600);
  }

  return result;
}

uint64_t objectdestroy_265Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = (v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v6 - 8) + 48))(v1 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_213F4EDA0();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    (*(*(v13 - 8) + 8))(&v5[v12], v13);
  }

  else
  {
    v14 = *&v5[v12];
  }

  v15 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_213F4D390();
    (*(*(v16 - 8) + 8))(&v5[v15], v16);
  }

  else
  {
    v17 = *&v5[v15];
  }

  __swift_destroy_boxed_opaque_existential_1(&v5[v2[7]]);

  return swift_deallocObject();
}

unint64_t sub_213EE8838()
{
  result = qword_281183400;
  if (!qword_281183400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB928, &qword_213F61268);
    sub_213EE88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183400);
  }

  return result;
}

unint64_t sub_213EE88BC()
{
  result = qword_281183408;
  if (!qword_281183408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB930, &unk_213F61270);
    sub_213ED26C4(&qword_2811855A8, type metadata accessor for ContextLineAccessory);
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183408);
  }

  return result;
}

unint64_t sub_213EE89D0()
{
  result = qword_281183100;
  if (!qword_281183100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB950, &qword_213F61298);
    sub_213EE75C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183100);
  }

  return result;
}

uint64_t objectdestroy_282Tm()
{
  v1 = type metadata accessor for ListCellMedium(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
    {
      v6 = *v4;

      v7 = *(v4 + 1);

      v8 = *(v5 + 32);
      v9 = sub_213F4EDA0();
      (*(*(v9 - 8) + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v10 = *v4;
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4D290();
    (*(*(v12 - 8) + 8))(&v4[v11], v12);
  }

  else
  {
    v13 = *&v4[v11];
  }

  __swift_destroy_boxed_opaque_existential_1(&v4[*(v1 + 24)]);

  return swift_deallocObject();
}

unint64_t sub_213EE8EC0()
{
  result = qword_27C8FB9D0;
  if (!qword_27C8FB9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB9C8, &qword_213F61308);
    sub_213EE76B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB9D0);
  }

  return result;
}

unint64_t sub_213EE8F4C()
{
  result = qword_27C8FB9D8;
  if (!qword_27C8FB9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB9B8, &qword_213F612F8);
    sub_213EE8EC0();
    sub_213ED26C4(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FB9D8);
  }

  return result;
}

unint64_t sub_213EE908C()
{
  result = qword_2811831A8;
  if (!qword_2811831A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FB8C8, &qword_213F611E0);
    sub_213DE3AE4(&qword_2811826A8, &qword_27C8FB9F0, &unk_213F61318);
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831A8);
  }

  return result;
}

uint64_t static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  sub_213DD74C4(a2);
  sub_213DD74C4(a4);
  sub_213F4CB30();
  result = type metadata accessor for TrailingAccessoryViewModel(0);
  v13 = a6 + *(result + 20);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = 0;
  return result;
}

__n128 TrailingAccessoryViewModel.init(type:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_213F4CB30();
  v6 = a2 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  return result;
}

uint64_t TrailingAccessoryViewModel.axIDString.getter()
{
  v1 = (v0 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20));
  v2 = *(v1 + 40);
  if (v2 <= 2)
  {
    if (!*(v1 + 40))
    {
      return 1701998413;
    }

    if (v2 != 1)
    {
      return 0x7463656C6553;
    }

    v4 = 0x6E696C66664FLL;
    return v4 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  }

  if (*(v1 + 40) <= 4u)
  {
    if (v2 == 3)
    {
      return 0x6F69746365726944;
    }

    else
    {
      return 0x706F7453646441;
    }
  }

  if (v2 == 5)
  {
    return 0x4154456572616853;
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  v8 = *v1;
  v9 = v1[1];
  v10 = v6 | v5;
  if (!(v10 | v8 | v7 | v9))
  {
    return 6579265;
  }

  v11 = v10 | v7 | v9;
  if (v8 == 1 && v11 == 0)
  {
    return 1868983881;
  }

  if (v8 == 2 && v11 == 0)
  {
    return 7235920;
  }

  if (v8 == 3 && v11 == 0)
  {
    return 0x6975427972657551;
  }

  if (v8 == 4 && !v11)
  {
    return 0x7265766F796C46;
  }

  if (v8 == 5 && !v11)
  {
    return 0x756F72416B6F6F4CLL;
  }

  if (v8 == 6 && !v11)
  {
    return 1819042115;
  }

  if (v8 == 7 && !v11)
  {
    v4 = 0x746973626557;
    return v4 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  }

  result = 0x697461676976614ELL;
  if (v8 == 8 && !v11)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t TrailingAccessoryViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrailingAccessoryViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_213EE96F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_213F4DBC0();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_213F4D450();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonTrailingAccessory(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC98, &qword_213F61F00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA0, &qword_213F61F08);
  v19 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v21 = &v39 - v20;
  sub_213EFA438(v2, &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonTrailingAccessory);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_213EF8E7C(&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ButtonTrailingAccessory);
  v45 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA8, &qword_213F61F10);
  sub_213EFA550();
  sub_213F4EB00();
  sub_213F4D440();
  sub_213DE3AE4(&qword_281182750, &qword_27C8FBC98, &qword_213F61F00);
  sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18]);
  v24 = v40;
  sub_213F4E3B0();
  (*(v7 + 8))(v10, v24);
  (*(v15 + 8))(v18, v14);
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCD8, &qword_213F61F28) + 36)] = 0;
  v25 = &v21[*(v39 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA708, &qword_213F61F30);
  v27 = &v25[*(v26 + 40)];
  sub_213F4D510();
  v28 = *(sub_213F4D470() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_213F4D950();
  (*(*(v30 - 8) + 104))(&v25[v28], v29, v30);
  __asm { FMOV            V0.2D, #6.0 }

  *v25 = _Q0;
  *&v25[*(sub_213F4D460() + 20)] = 0xC020000000000000;
  v25[*(v26 + 36)] = 0;
  v36 = v41;
  sub_213F4D570();
  sub_213EFA74C();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  v37 = v42;
  sub_213F4E410();
  (*(v43 + 8))(v36, v37);
  return sub_213DE36FC(v21, &qword_27C8FBCA0, &qword_213F61F08);
}

uint64_t sub_213EE9C64(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v10 = *a1;

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v3 + 8))(v6, v2);
    v8 = v17;
  }

  v12 = a1 + *(type metadata accessor for ButtonTrailingAccessory(0) + 28);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17 = *v12;
  v18 = v13;
  v19 = v14;
  sub_213EC4B2C(v17, v13, v14);
  v8(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

double sub_213EE9E08@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - v6;
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = type metadata accessor for ButtonTrailingAccessory(0);
  v16 = (a1 + *(v15 + 24));
  v18 = *v16;
  v17 = v16[1];

  v35 = sub_213F4E9F0();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCD0, &qword_213F61F20) + 36));
  v20 = a2;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v22 = *MEMORY[0x277CE1058];
  v23 = sub_213F4EA30();
  (*(*(v23 - 8) + 104))(v19 + v21, v22, v23);
  *v19 = swift_getKeyPath();
  v24 = v20;
  *v20 = v35;
  v25 = *(v15 + 20);
  sub_213DBBD08(v14);
  sub_213F4D280();
  sub_213F4D270();
  v26 = *(v8 + 8);
  v26(v12, v7);
  v26(v14, v7);
  sub_213F4E160();
  v27 = sub_213F4E0F0();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  v29 = sub_213F4E190();
  sub_213DE36FC(v28, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCC0, &qword_213F61F18) + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  sub_213DBBD08(v14);
  sub_213F4D280();
  sub_213F4D270();
  v26(v12, v7);
  v26(v14, v7);
  sub_213DBBD08(v14);
  sub_213F4D280();
  sub_213F4D270();
  v26(v12, v7);
  v26(v14, v7);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v32 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCA8, &qword_213F61F10) + 36));
  v33 = v38;
  *v32 = v37;
  v32[1] = v33;
  result = *&v39;
  v32[2] = v39;
  return result;
}

double sub_213EEA1E8()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_213DBBD08(&v10 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return 20.0;
}

double sub_213EEA2FC()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_213DBBD08(&v10 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return 28.0;
}

uint64_t sub_213EEA410@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = a1[3];
  v55 = a1[2];
  v56 = v21;
  v57 = a1[4];
  v58 = *(a1 + 80);
  v22 = a1[1];
  v53 = *a1;
  v54 = v22;
  v23 = swift_allocObject();
  v24 = a1[3];
  *(v23 + 48) = a1[2];
  *(v23 + 64) = v24;
  *(v23 + 80) = a1[4];
  *(v23 + 96) = *(a1 + 80);
  v25 = *a1;
  v26 = a1[1];
  *(v23 + 16) = *a1;
  *(v23 + 32) = v26;
  *(v23 + 104) = a2;
  v59 = v25;
  v27 = v56;
  v50 = a3;
  v49 = v12;
  v48 = v20;
  v47 = v17;
  v46 = v13;
  v45 = v16;
  if (v56 == 1)
  {
    sub_213E32048(&v53, &v51);
    v28 = a2;
    sub_213E32160(&v59, &v51);
    sub_213F4CD80();
    v29 = sub_213F4CD90();
    (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
  }

  else
  {
    v30 = sub_213F4CD90();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    sub_213E32048(&v53, &v51);
    v31 = a2;
    sub_213E32160(&v59, &v51);
  }

  v32 = v54;
  v51 = v59;
  v33 = sub_213DE3164(v11, v44, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v33);
  *(&v43 - 4) = &v51;
  *(&v43 - 3) = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850);
  v34 = v45;
  sub_213F4EAF0();
  sub_213DE36FC(v11, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v59);
  if (v27 >= 2)
  {

    KeyPath = swift_getKeyPath();
    *&v51 = v27;

    v36 = sub_213F4D0D0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v36 = 0;
  }

  v37 = v49;
  v38 = v48;
  v39 = v47;
  v40 = v46;
  (*(v46 + 16))(v48, v34, v49);

  v41 = (v38 + *(v39 + 36));
  *v41 = KeyPath;
  v41[1] = v36;
  (*(v40 + 8))(v34, v37);
  v51 = v57;
  v52 = v58;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v38, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213EEA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v50 = *&v7;
  v51 = a1;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v3 + 32))(v7 + v6, v5, a1);
  v49 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
  v11 = sub_213F4DBB0();
  v12 = sub_213EF99D0();
  v13 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
  v68 = v9;
  v69 = v13;
  WitnessTable = swift_getWitnessTable();
  *&v80 = v10;
  *(&v80 + 1) = v11;
  *&v81 = v12;
  *(&v81 + 1) = WitnessTable;
  v15 = sub_213F4E280();
  v16 = sub_213F4D360();
  v17 = swift_getWitnessTable();
  v18 = sub_213EF7D6C(&qword_281183498, MEMORY[0x277CDD9E0]);
  *&v80 = v15;
  *(&v80 + 1) = v16;
  *&v81 = v17;
  *(&v81 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_213F4D450();
  *&v80 = v15;
  *(&v80 + 1) = v16;
  *&v81 = v17;
  *(&v81 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18]);
  *&v80 = OpaqueTypeMetadata2;
  *(&v80 + 1) = v20;
  *&v81 = OpaqueTypeConformance2;
  *(&v81 + 1) = v22;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B58, &unk_213F59EF0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9368, &unk_213F59F80);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA708, &qword_213F61F30);
  v23 = sub_213F4D400();
  v47 = sub_213F4DBC0();
  *&v80 = OpaqueTypeMetadata2;
  *(&v80 + 1) = v20;
  *&v81 = OpaqueTypeConformance2;
  *(&v81 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  v66 = v24;
  v67 = v25;
  v26 = MEMORY[0x277CDFAD8];
  v27 = swift_getWitnessTable();
  v28 = sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0);
  v64 = v27;
  v65 = v28;
  v48 = v26;
  v29 = swift_getWitnessTable();
  v30 = sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80);
  v62 = v29;
  v63 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30);
  v60 = v31;
  v61 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  v35 = v47;
  *&v80 = v23;
  *(&v80 + 1) = v47;
  *&v81 = v33;
  *(&v81 + 1) = v34;
  swift_getOpaqueTypeMetadata2();
  *&v80 = v23;
  *(&v80 + 1) = v35;
  *&v81 = v33;
  *(&v81 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v36 = sub_213F3CB80(sub_213EFA97C);
  v38 = v37;
  *&v75 = v36;
  *(&v75 + 1) = v39;
  *&v76 = v37;
  *(&v76 + 1) = v40;
  v50 = sub_213EEA2FC();
  sub_213EEA2FC();
  sub_213F4EEE0();
  type metadata accessor for BackgroundUIView();
  v41 = swift_getWitnessTable();
  sub_213F4E740();

  v57 = v82;
  v58 = v83;
  v59 = v84;
  v55 = v80;
  v56 = v81;
  v42 = sub_213F4D400();
  v53 = v41;
  v54 = MEMORY[0x277CDF678];
  v43 = swift_getWitnessTable();
  sub_213DBFEEC(&v55, v42, v43);
  v77 = v57;
  v78 = v58;
  v79 = v59;
  v75 = v55;
  v76 = v56;
  v44 = *(*(v42 - 8) + 8);
  v44(&v75, v42);
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v55 = v70;
  v56 = v71;
  sub_213DBFEEC(&v55, v42, v43);
  v82 = v57;
  v83 = v58;
  v84 = v59;
  v80 = v55;
  v81 = v56;
  return (v44)(&v80, v42);
}

uint64_t sub_213EEB0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a2;
  v135 = a1;
  v144 = a5;
  v142 = sub_213F4DBC0();
  v143 = *(v142 - 8);
  v7 = *(v143 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_213F4D460();
  v9 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_213F4D530();
  v139 = *(v140 - 8);
  v11 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v136 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213F4D450();
  v104 = v13;
  v134 = *(v13 - 8);
  v14 = *(v134 + 64);
  MEMORY[0x28223BE20](v13);
  v133 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_213F4D360();
  v132 = *(v16 - 8);
  v17 = *(v132 + 64);
  MEMORY[0x28223BE20](v16);
  v130 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a4;
  v126 = type metadata accessor for MoreTrailingAccessory();
  v123 = *(v126 - 8);
  v125 = *(v123 + 64);
  MEMORY[0x28223BE20](v126);
  v20 = &v95 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
  v119 = v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
  v22 = sub_213F4DBB0();
  v118 = v22;
  v23 = sub_213EF99D0();
  v116 = v23;
  v24 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
  v164 = a4;
  v165 = v24;
  WitnessTable = swift_getWitnessTable();
  v160 = v21;
  v161 = v22;
  v162 = v23;
  v163 = WitnessTable;
  v25 = sub_213F4E280();
  v124 = *(v25 - 8);
  v26 = *(v124 + 64);
  MEMORY[0x28223BE20](v25);
  v113 = &v95 - v27;
  v28 = swift_getWitnessTable();
  v29 = sub_213EF7D6C(&qword_281183498, MEMORY[0x277CDD9E0]);
  v160 = v25;
  v161 = v16;
  v103 = v16;
  v162 = v28;
  v163 = v29;
  v107 = v28;
  v30 = v29;
  v106 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = OpaqueTypeMetadata2;
  v117 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v117 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = &v95 - v33;
  v160 = v25;
  v161 = v16;
  v162 = v28;
  v163 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = OpaqueTypeConformance2;
  v100 = sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18]);
  v160 = OpaqueTypeMetadata2;
  v161 = v13;
  v162 = OpaqueTypeConformance2;
  v163 = v100;
  v108 = MEMORY[0x277CDE668];
  v99 = swift_getOpaqueTypeMetadata2();
  v110 = *(v99 - 8);
  v35 = *(v110 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v95 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v37 = sub_213F4D400();
  v112 = *(v37 - 8);
  v38 = *(v112 + 64);
  MEMORY[0x28223BE20](v37);
  v97 = &v95 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B58, &unk_213F59EF0);
  v111 = sub_213F4D400();
  v121 = *(v111 - 8);
  v40 = *(v121 + 64);
  MEMORY[0x28223BE20](v111);
  v98 = &v95 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9368, &unk_213F59F80);
  v122 = sub_213F4D400();
  v128 = *(v122 - 8);
  v42 = *(v128 + 64);
  MEMORY[0x28223BE20](v122);
  v109 = &v95 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA708, &qword_213F61F30);
  v129 = sub_213F4D400();
  v131 = *(v129 - 8);
  v44 = *(v131 + 64);
  MEMORY[0x28223BE20](v129);
  v120 = &v95 - v45;
  v46 = v123;
  v47 = v20;
  v48 = v127;
  v49 = v126;
  (*(v123 + 16))(v20, v127, v126);
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = swift_allocObject();
  v52 = a3;
  *(v51 + 16) = a3;
  v53 = v115;
  *(v51 + 24) = v115;
  (*(v46 + 32))(v51 + v50, v47, v49);
  v148 = v52;
  v149 = v53;
  v150 = v48;
  v151 = v135;
  v145 = v52;
  v146 = v53;
  v147 = v48;
  v54 = v113;
  sub_213F4E260();
  v55 = v130;
  sub_213F4D350();
  v56 = v102;
  v57 = v103;
  sub_213F4E860();
  (*(v132 + 8))(v55, v57);
  (*(v124 + 8))(v54, v25);
  v58 = v133;
  sub_213F4D440();
  v59 = v96;
  v60 = v105;
  v61 = v104;
  v62 = v101;
  v63 = v100;
  sub_213F4E3B0();
  (*(v134 + 8))(v58, v61);
  (*(v117 + 8))(v56, v60);
  v160 = v60;
  v161 = v61;
  v162 = v62;
  v163 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  sub_213E37D5C();
  v65 = v97;
  v66 = v99;
  sub_213F4E460();
  (*(v110 + 8))(v59, v66);
  v67 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  v158 = v64;
  v159 = v67;
  v68 = swift_getWitnessTable();
  v69 = v98;
  sub_213F4E4D0();
  (*(v112 + 8))(v65, v37);
  v70 = [objc_opt_self() labelColor];
  v160 = sub_213F4E870();
  v71 = sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0);
  v156 = v68;
  v157 = v71;
  v72 = v111;
  v73 = swift_getWitnessTable();
  v74 = v109;
  sub_213F4E730();

  (*(v121 + 8))(v69, v72);
  v75 = v136;
  sub_213F4D510();
  v76 = *(sub_213F4D470() + 20);
  v77 = *MEMORY[0x277CE0118];
  v78 = sub_213F4D950();
  v79 = v137;
  (*(*(v78 - 8) + 104))(&v137[v76], v77, v78);
  __asm { FMOV            V0.2D, #6.0 }

  *v79 = _Q0;
  *(v79 + *(v138 + 20)) = 0xC020000000000000;
  v85 = v79;
  v86 = sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80);
  v154 = v73;
  v155 = v86;
  v87 = v122;
  v88 = swift_getWitnessTable();
  sub_213EF7D6C(&qword_281182C70, MEMORY[0x277CDFBC8]);
  v89 = v120;
  sub_213F4E470();
  sub_213EFAC04(v85);
  (*(v139 + 8))(v75, v140);
  (*(v128 + 8))(v74, v87);
  v90 = v141;
  sub_213F4D570();
  v91 = sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30);
  v152 = v88;
  v153 = v91;
  v92 = v129;
  swift_getWitnessTable();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  v93 = v142;
  sub_213F4E410();
  (*(v143 + 8))(v90, v93);
  return (*(v131 + 8))(v89, v92);
}

uint64_t sub_213EEC144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v136 = a2;
  v145 = a1;
  v144 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v140 = &v124 - v9;
  v146 = a4;
  v10 = type metadata accessor for MoreTrailingAccessory();
  v135 = *(v10 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v10);
  v134 = &v124 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v138 = *(v139 - 8);
  v13 = *(v138 + 64);
  v14 = MEMORY[0x28223BE20](v139);
  v137 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v124 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v124 - v24;
  v26 = *(a3 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v124 - v31;
  v143 = v7;
  v142 = sub_213F4DBB0();
  v141 = *(v142 - 8);
  v33 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v36 = &v124 - v35;
  v37 = v10;
  v38 = v34 + *(v10 + 44);
  v39 = *v38;
  if (*v38)
  {
    v40 = *(v38 + 8);

    v39(v41);
    v42 = v146;
    sub_213DBFEEC(v30, a3, v146);
    v43 = *(v26 + 8);
    v43(v30, a3);
    sub_213DBFEEC(v32, a3, v42);
    sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
    sub_213E95440(v30, a3);
    sub_213DD7558(v39);
    v43(v30, a3);
    v43(v32, a3);
  }

  else
  {
    v127 = v11;
    v129 = v22;
    v132 = v25;
    v130 = v17;
    v131 = v36;
    v128 = v37;
    v44 = *(v34 + *(v37 + 36));
    v45 = *(v44 + 16);
    v133 = a3;
    if (v45)
    {
      v46 = 0;
      v47 = v44 + 32;
      v48 = v45 - 1;
      v49 = MEMORY[0x277D84F90];
      do
      {
        v50 = (v47 + 88 * v46);
        v51 = v46;
        while (1)
        {
          if (v51 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v52 = v50[4];
          v53 = *(v50 + 80);
          v54 = v50[2];
          v153 = v50[3];
          v55 = v50[1];
          v150 = *v50;
          v151 = v55;
          v155 = v53;
          v154 = v52;
          v152 = v54;
          v46 = v51 + 1;
          if (BYTE8(v153))
          {
            break;
          }

          v50 = (v50 + 88);
          ++v51;
          if (v45 == v46)
          {
            goto LABEL_17;
          }
        }

        sub_213E32048(&v150, v149);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v49;
        v126 = v47;
        v57 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_213EA90C8(0, *(v49 + 16) + 1, 1);
          v49 = v156;
        }

        v59 = *(v49 + 16);
        v58 = *(v49 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_213EA90C8((v58 > 1), v59 + 1, 1);
          v49 = v156;
        }

        *(v49 + 16) = v59 + 1;
        v60 = v49 + 88 * v59;
        v61 = v151;
        *(v60 + 32) = v150;
        *(v60 + 48) = v61;
        v62 = v152;
        v63 = v153;
        v64 = v154;
        *(v60 + 112) = v155;
        *(v60 + 80) = v63;
        *(v60 + 96) = v64;
        *(v60 + 64) = v62;
        v48 = v57;
        v47 = v126;
      }

      while (v57 != v51);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

LABEL_17:
    v65 = *(v49 + 16);
    if (v65 >= 3)
    {
      if (v65 == 3)
      {

        v66 = 3;
        v126 = v49;
        goto LABEL_21;
      }

      goto LABEL_46;
    }

    v126 = v49;
    v49 = MEMORY[0x277D84F90];
    while (1)
    {
      v70 = *(v44 + 16);
      if (!v70)
      {
        break;
      }

      v71 = 0;
      v72 = v44 + 32;
      v73 = MEMORY[0x277D84F90];
LABEL_27:
      v74 = *(v44 + 16);
      v75 = (v72 + 88 * v71);
      v76 = v71;
      while (v76 < v74)
      {
        v77 = v75[4];
        v78 = *(v75 + 80);
        v79 = v75[2];
        v153 = v75[3];
        v80 = v75[1];
        v150 = *v75;
        v151 = v80;
        v155 = v78;
        v154 = v77;
        v152 = v79;
        v71 = v76 + 1;
        if ((BYTE8(v153) & 1) == 0)
        {
          sub_213E32048(&v150, v149);
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v156 = v73;
          if ((v81 & 1) == 0)
          {
            sub_213EA90C8(0, *(v73 + 16) + 1, 1);
            v73 = v156;
          }

          v83 = *(v73 + 16);
          v82 = *(v73 + 24);
          v84 = v83 + 1;
          if (v83 >= v82 >> 1)
          {
            v125 = v72;
            sub_213EA90C8((v82 > 1), v83 + 1, 1);
            v84 = v83 + 1;
            v72 = v125;
            v73 = v156;
          }

          *(v73 + 16) = v84;
          v85 = v73 + 88 * v83;
          v86 = v151;
          *(v85 + 32) = v150;
          *(v85 + 48) = v86;
          v87 = v152;
          v88 = v153;
          v89 = v154;
          *(v85 + 112) = v155;
          *(v85 + 80) = v88;
          *(v85 + 96) = v89;
          *(v85 + 64) = v87;
          if (v70 - 1 != v76)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }

        v75 = (v75 + 88);
        ++v76;
        if (v70 == v71)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      sub_213E5B720(v49, v49 + 32, 0, 7uLL);
      v126 = v122;
      v66 = *(v49 + 16);
      if (v66)
      {
LABEL_21:
        if (v66 >= 3)
        {
          v67 = 3;
        }

        else
        {
          v67 = v66;
        }

        sub_213E5B720(v49, v49 + 32, v67, (2 * v66) | 1);
        v69 = v68;

        v49 = v69;
      }
    }

    v73 = MEMORY[0x277D84F90];
LABEL_39:
    *&v150 = v49;
    v90 = sub_213E273F0(v73);
    v91 = v150;
    v92 = v126;
    if (*(v126 + 16))
    {
      MEMORY[0x28223BE20](v90);
      v93 = v146;
      *(&v124 - 6) = v133;
      *(&v124 - 5) = v93;
      v94 = v145;
      *(&v124 - 4) = v92;
      *(&v124 - 3) = v94;
      v95 = v136;
      v123 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
      sub_213E31E00();
      v96 = v132;
      sub_213F4CFD0();

      v97 = 0;
      v98 = v138;
    }

    else
    {

      v97 = 1;
      v98 = v138;
      v96 = v132;
      v95 = v136;
      v94 = v145;
    }

    v99 = v135;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
    (*(*(v100 - 8) + 56))(v96, v97, 1, v100);
    *&v150 = v91;
    v101 = v134;
    v102 = v128;
    (*(v99 + 16))(v134, v94, v128);
    v103 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v104 = (v127 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    v106 = v146;
    *(v105 + 16) = v133;
    *(v105 + 24) = v106;
    (*(v99 + 32))(v105 + v103, v101, v102);
    *(v105 + v104) = v95;
    v107 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
    v108 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
    sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
    v145 = MEMORY[0x277CE14C0];
    sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830);
    v123 = sub_213E320C4();
    v109 = v130;
    sub_213F4ECD0();
    v110 = v129;
    sub_213DE3164(v108, v129, &qword_27C8F9378, &qword_213F57818);
    v111 = *(v98 + 16);
    v112 = v137;
    v113 = v139;
    v111(v137, v109, v139);
    v114 = v140;
    sub_213DE3164(v110, v140, &qword_27C8F9378, &qword_213F57818);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
    v111((v114 + *(v115 + 48)), v112, v113);
    v116 = *(v98 + 8);
    v116(v112, v113);
    v117 = v110;
    v42 = v146;
    sub_213DE36FC(v117, &qword_27C8F9378, &qword_213F57818);
    sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
    v36 = v131;
    sub_213DBFF2C(v114, v133, v143);
    sub_213DE36FC(v114, &qword_27C8F9348, &unk_213F577F0);
    v116(v109, v113);
    sub_213DE36FC(v132, &qword_27C8F9378, &qword_213F57818);
  }

  v118 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
  v147 = v42;
  v148 = v118;
  v119 = v142;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v36, v119, WitnessTable);
  return (*(v141 + 8))(v36, v119);
}

uint64_t sub_213EECE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a6;
  v11 = type metadata accessor for MoreTrailingAccessory();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v22[3] = a1;
  (*(v12 + 16))(v22 - v14, a2, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v20 = sub_213EF8120(&qword_281182FB0, &qword_27C8F9358, &unk_213F57800, sub_213E31F4C);
  v22[1] = v19;
  v22[2] = v20;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213EED0B4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_213F4D330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = *(a1 + 48);
  v18[2] = *(a1 + 32);
  v18[3] = v14;
  v18[4] = *(a1 + 64);
  v19 = *(a1 + 80);
  v15 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v15;
  type metadata accessor for MoreTrailingAccessory();
  sub_213EEA410(v18, a2, v13);
  sub_213F4D320();
  sub_213EF8120(&qword_281182FB0, &qword_27C8F9358, &unk_213F57800, sub_213E31F4C);
  sub_213F4E4E0();
  (*(v6 + 8))(v9, v5);
  return sub_213DE36FC(v13, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213EED2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v32 = a4;
  v5 = sub_213F4ECB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - v22;
  v24 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v24;
  *v34 = *(a1 + 32);
  *&v34[9] = *(a1 + 41);
  v37 = *(a1 + 57);
  *v36 = *(a1 + 58);
  *&v36[15] = *(a1 + 73);
  v35 = v37;
  type metadata accessor for MoreTrailingAccessory();
  sub_213EEA410(v33, v30, v23);
  if (v37 == 1)
  {
    sub_213F4ECA0();
    (*(v6 + 32))(v16, v9, v5);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v6 + 56))(v16, v25, 1, v5);
  sub_213DE3164(v23, v21, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v16, v14, &qword_27C8F93B0, &unk_213F59FD0);
  v26 = v32;
  sub_213DE3164(v21, v32, &qword_27C8F9358, &unk_213F57800);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v14, v26 + *(v27 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v16, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v23, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v14, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v21, &qword_27C8F9358, &unk_213F57800);
}

double sub_213EED5D0@<D0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  v6 = sub_213F4E9F0();
  type metadata accessor for MoreTrailingAccessory();
  sub_213EEA1E8();
  sub_213F4E160();
  v7 = sub_213F4E0F0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_213F4E190();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v12 = *MEMORY[0x277CE1058];
  v13 = sub_213F4EA30();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v8;
  sub_213EEA2FC();
  sub_213EEA2FC();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBA8, &qword_213F61D48) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

uint64_t OfflineState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213EED8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OfflineTrailingAccessory(0);
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_213EEDB14()
{
  result = qword_27C8FBA10;
  if (!qword_27C8FBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBA10);
  }

  return result;
}

uint64_t sub_213EEDB90()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign26TrailingAccessoryViewModelV0cD4TypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213EEDC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213EEDC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_213EEDCCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

void sub_213EEDD58()
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TrailingAccessoryViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213EEDE48@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  *a1 = sub_213F4EEE0();
  a1[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCE0, &qword_213F61F68);
  v13 = sub_213EEE0CC(v1, a1 + *(v12 + 44));
  v14 = MEMORY[0x216052350](v13, 0.5, 1.0, 0.0);
  v15 = *(v1 + *(type metadata accessor for OfflineTrailingAccessory(0) + 28));
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCE8, &qword_213F61F70) + 36);
  *v16 = v14;
  v16[8] = v15;
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v10, v3);
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v17(v8, v3);
  v17(v10, v3);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCF0, &qword_213F61F78) + 36));
  v19 = v31[1];
  *v18 = v31[0];
  v18[1] = v19;
  v18[2] = v31[2];
  v20 = sub_213F4E050();
  sub_213F4CDA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBCF8, &qword_213F61F80);
  v30 = a1 + *(result + 36);
  *v30 = v20;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  return result;
}

uint64_t sub_213EEE0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD00, &qword_213F61F88);
  v3 = *(*(v156 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v156);
  v165 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v155 = &v137 - v7;
  MEMORY[0x28223BE20](v6);
  v164 = &v137 - v8;
  v153 = sub_213F4CEA0();
  v168 = *(v153 - 8);
  v9 = *(*&v168 + 64);
  v10 = MEMORY[0x28223BE20](v153);
  v162 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v161 = &v137 - v12;
  v163 = sub_213F4EF90();
  v167 = *(v163 - 8);
  v13 = *(v167 + 64);
  v14 = MEMORY[0x28223BE20](v163);
  v154 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v152 = &v137 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v143 = &v137 - v19;
  v141 = sub_213F4D290();
  v20 = *(v141 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v141);
  v24 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v137 - v25;
  v27 = sub_213F4EA00();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD08, &qword_213F61F90);
  v148 = *(v32 - 1);
  v149 = v32;
  v33 = *(v148 + 64);
  MEMORY[0x28223BE20](v32);
  v140 = &v137 - v34;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD10, &qword_213F61F98);
  v35 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v139 = &v137 - v36;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD18, &qword_213F61FA0);
  v37 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v137 - v38;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD20, &qword_213F61FA8);
  v39 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v158 = &v137 - v40;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD28, &qword_213F61FB0);
  v41 = *(*(v150 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v150);
  v160 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v147 = &v137 - v45;
  MEMORY[0x28223BE20](v44);
  v159 = &v137 - v46;
  v151 = type metadata accessor for OfflineTrailingAccessory(0);
  v166 = *(v151 + 28);
  v47 = a1;
  *(a1 + v166);
  sub_213F4E9F0();
  (*(v28 + 104))(v31, *MEMORY[0x277CE0FE0], v27);
  v48 = 0.0;
  v49 = sub_213F4EA40();

  (*(v28 + 8))(v31, v27);
  v50 = v47;
  sub_213DBBD08(v26);
  sub_213F4D280();
  sub_213F4D270();
  v51 = *(v20 + 8);
  v52 = v24;
  v53 = v141;
  v51(v52, v141);
  v51(v26, v53);
  v54 = sub_213F4E0F0();
  v55 = v143;
  (*(*(v54 - 8) + 56))(v143, 1, 1, v54);
  v56 = sub_213F4E190();
  sub_213DE36FC(v55, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v181 = v49;
  v182 = KeyPath;
  *&v183 = v56;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F77C0, &qword_213F519B0);
  sub_213DE2CCC();
  v58 = v140;
  sub_213F4E370();

  v59 = v139;
  v60 = &v139[*(v142 + 36)];
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v62 = *MEMORY[0x277CE1050];
  v63 = sub_213F4EA30();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = swift_getKeyPath();
  (*(v148 + 32))(v59, v58, v149);
  v149 = objc_opt_self();
  v64 = [v149 tertiaryLabelColor];
  v65 = sub_213F4E870();
  v66 = v144;
  sub_213DE2B44(v59, v144, &qword_27C8FBD10, &qword_213F61F98);
  *&v66[*(v146 + 36)] = v65;
  v138 = v50;
  if (*(v50 + v166) == 1)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = 1.0;
  }

  v68 = v66;
  v69 = v158;
  sub_213DE2B44(v68, v158, &qword_27C8FBD18, &qword_213F61FA0);
  *(v69 + *(v145 + 36)) = v67;
  v70 = v161;
  sub_213EED8C0(v161);
  LODWORD(v148) = *MEMORY[0x277CDF3D0];
  v71 = v168;
  v146 = *(*&v168 + 104);
  v72 = v162;
  v73 = v153;
  (v146)(v162);
  v74 = sub_213F4CE90();
  v75 = *(*&v71 + 8);
  *&v168 = *&v71 + 8;
  v75(v72, v73);
  v75(v70, v73);
  v76 = v167;
  v77 = *(v167 + 104);
  v144 = v77;
  v78 = *MEMORY[0x277CE13B0];
  LODWORD(v143) = *MEMORY[0x277CE13B0];
  v79 = *MEMORY[0x277CE13B8];
  LODWORD(v145) = *MEMORY[0x277CE13B8];
  if (v74)
  {
    v80 = v78;
  }

  else
  {
    v80 = v79;
  }

  v81 = v152;
  v82 = v163;
  (v77)(v152, v80, v163);
  v83 = *(v150 + 36);
  v84 = *(v76 + 32);
  v167 = v76 + 32;
  v85 = v147;
  v84(&v147[v83], v81, v82);
  sub_213DE2B44(v158, v85, &qword_27C8FBD20, &qword_213F61FA8);
  sub_213DE2B44(v85, v159, &qword_27C8FBD28, &qword_213F61FB0);
  sub_213F4CF60();
  v86 = v200;
  v87 = v202;
  v158 = v203;
  v88 = v204;
  v152 = sub_213F4EEE0();
  v150 = v89;
  v90 = [v149 tertiaryLabelColor];
  v149 = sub_213F4E870();
  v91 = v138;
  LODWORD(v85) = *(v138 + v166);
  v92 = v161;
  sub_213EED8C0(v161);
  if (v85 == 1)
  {
    v93 = 1.0;
  }

  else
  {
    v93 = 0.0;
  }

  v94 = v201;
  v95 = v162;
  (v146)(v162, v148, v73);
  v96 = v95;
  LOBYTE(v95) = sub_213F4CE90();
  v75(v96, v73);
  v75(v92, v73);
  if (v95)
  {
    v97 = v143;
  }

  else
  {
    v97 = v145;
  }

  v98 = v154;
  v99 = v163;
  (v144)(v154, v97, v163);
  v100 = v155;
  v84(&v155[*(v156 + 36)], v98, v99);
  *v100 = v86 * 0.5;
  *(v100 + 8) = v86;
  *(v100 + 16) = v94;
  *(v100 + 24) = v87;
  *(v100 + 32) = v158;
  *(v100 + 40) = v88;
  *(v100 + 48) = 256;
  v101 = v149;
  v102 = v150;
  *(v100 + 56) = v152;
  *(v100 + 64) = v102;
  *(v100 + 72) = v101;
  *(v100 + 80) = v93;
  v103 = v164;
  sub_213DE2B44(v100, v164, &qword_27C8FBD00, &qword_213F61F88);
  v104 = *(v151 + 24);
  v105 = *(v91 + v104);
  if (v105 < 0.0)
  {
    v106 = 0.0;
  }

  else
  {
    v106 = *(v91 + v104);
  }

  v168 = v106;
  v107 = v105;
  sub_213F4CF60();
  v108 = sub_213F4E8B0();
  sub_213F4F040();
  v110 = v109;
  v112 = v111;
  v113 = sub_213F4EF40();
  if (*(v91 + v166) == 1)
  {
    v48 = 1.0;
  }

  LODWORD(v167) = sub_213F4E050();
  sub_213F4CDA0();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v166 = v120;
  v199 = 0;
  v122 = v159;
  v121 = v160;
  sub_213DE3164(v159, v160, &qword_27C8FBD28, &qword_213F61FB0);
  v123 = v165;
  sub_213DE3164(v103, v165, &qword_27C8FBD00, &qword_213F61F88);
  v124 = v121;
  v125 = v157;
  sub_213DE3164(v124, v157, &qword_27C8FBD28, &qword_213F61FB0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD30, &qword_213F61FB8);
  sub_213DE3164(v123, v125 + *(v126 + 48), &qword_27C8FBD00, &qword_213F61F88);
  v127 = (v125 + *(v126 + 64));
  *&v172 = 0;
  *(&v172 + 1) = v106;
  v173 = v169;
  v174 = v170;
  *&v175 = v171;
  *(&v175 + 1) = v108;
  *&v176 = 0xBFF921FB54442D18;
  *(&v176 + 1) = v110;
  *&v177 = v112;
  *(&v177 + 1) = v113;
  *&v178 = v107;
  *(&v178 + 1) = v48;
  v128 = v107;
  v129 = v167;
  LOBYTE(v179) = v167;
  *(&v179 + 1) = v115;
  *&v180[0] = v117;
  v130 = v166;
  *(&v180[0] + 1) = v119;
  *&v180[1] = v166;
  BYTE8(v180[1]) = 0;
  v131 = v175;
  v127[2] = v170;
  v127[3] = v131;
  v132 = v173;
  *v127 = v172;
  v127[1] = v132;
  v133 = v180[0];
  v127[7] = v179;
  v127[8] = v133;
  v134 = v178;
  v135 = v177;
  v127[4] = v176;
  v127[5] = v135;
  v127[6] = v134;
  *(v127 + 137) = *(v180 + 9);
  sub_213DE3164(&v172, &v181, &qword_27C8FBD38, &qword_213F61FC0);
  sub_213DE36FC(v164, &qword_27C8FBD00, &qword_213F61F88);
  sub_213DE36FC(v122, &qword_27C8FBD28, &qword_213F61FB0);
  v181 = 0;
  v182 = *&v168;
  v183 = v169;
  v184 = v170;
  v185 = v171;
  v186 = v108;
  v187 = 0xBFF921FB54442D18;
  v188 = v110;
  v189 = v112;
  v190 = v113;
  v191 = v128;
  v192 = v48;
  v193 = v129;
  v194 = v115;
  v195 = v117;
  v196 = v119;
  v197 = v130;
  v198 = 0;
  sub_213DE36FC(&v181, &qword_27C8FBD38, &qword_213F61FC0);
  sub_213DE36FC(v165, &qword_27C8FBD00, &qword_213F61F88);
  return sub_213DE36FC(v160, &qword_27C8FBD28, &qword_213F61FB0);
}

uint64_t sub_213EEEFB4()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-v12];
  sub_213DBBD08(&v25[-v12]);
  sub_213F4D280();
  v14 = sub_213F4D270();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  v16 = type metadata accessor for SelectedTrailingAccessory(0);
  v17 = *(v0 + *(v16 + 28));
  if ((v14 & 1) == 0)
  {
    v21 = objc_opt_self();
    if (v17)
    {
      v20 = [v21 systemBlueColor];
    }

    else
    {
      v20 = [v21 quaternaryLabelColor];
    }

    goto LABEL_12;
  }

  if (!*(v0 + *(v16 + 28)))
  {
    v26 = sub_213F4E8D0();
    sub_213ECDD7C();
    return sub_213F4E950();
  }

  v18 = v0 + *(v16 + 24);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_213F4F520();
    v23 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v19, 0);
    (*(v2 + 8))(v5, v1);
    if (v25[7] != 1)
    {
      goto LABEL_5;
    }

LABEL_11:
    v20 = [objc_opt_self() labelColor];
    goto LABEL_12;
  }

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_5:
  v20 = [objc_opt_self() systemBlueColor];
LABEL_12:
  v24 = v20;
  return sub_213F4E870();
}

uint64_t sub_213EEF2C0@<X0>(uint64_t a1@<X8>)
{
  v198 = a1;
  v157 = sub_213F4CEA0();
  v156 = *(v157 - 8);
  v2 = *(v156 + 64);
  v3 = MEMORY[0x28223BE20](v157);
  v155 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v154 = &v153 - v5;
  v180 = sub_213F4EF90();
  v179 = *(v180 - 8);
  v6 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v177 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_213F4EA00();
  v167 = *(v168 - 8);
  v8 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v166 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBC0, &qword_213F61DE0);
  v10 = *(*(v197 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v197);
  v176 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v178 = &v153 - v13;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBC8, &qword_213F61DE8);
  v14 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v153 - v15;
  v16 = sub_213F4F0A0();
  v191 = *(v16 - 8);
  v192 = v16;
  v17 = *(v191 + 64);
  MEMORY[0x28223BE20](v16);
  v188 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_213F4F080();
  v189 = *(v19 - 8);
  v190 = v19;
  v20 = *(v189 + 64);
  MEMORY[0x28223BE20](v19);
  v187 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v182 = &v153 - v24;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50);
  v25 = *(*(v183 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v183);
  v162 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v160 = &v153 - v28;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBD0, &qword_213F61DF0);
  v29 = *(*(v185 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v185);
  v170 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v165 = &v153 - v32;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBD8, &qword_213F61DF8);
  v33 = *(*(v184 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v184);
  v169 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v164 = &v153 - v36;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBE0, &qword_213F61E00);
  v37 = *(*(v186 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v186);
  v174 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v172 = &v153 - v40;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBE8, &qword_213F61E08);
  v41 = *(*(v194 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v194);
  v175 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v171 = &v153 - v45;
  MEMORY[0x28223BE20](v44);
  v173 = &v153 - v46;
  v47 = sub_213F4D290();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v163 = &v153 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v161 = &v153 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v153 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v159 = &v153 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v158 = &v153 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v153 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v153 - v65;
  MEMORY[0x28223BE20](v64);
  v68 = &v153 - v67;
  sub_213DBBD08(&v153 - v67);
  sub_213F4D280();
  v69 = sub_213F4D270();
  v70 = *(v48 + 8);
  v70(v66, v47);
  v71 = v47;
  v70(v68, v47);
  if ((v69 & 1) == 0)
  {
    v72 = *(v1 + *(type metadata accessor for SelectedTrailingAccessory(0) + 28));
  }

  v73 = sub_213F4E9F0();
  sub_213DBBD08(v68);
  sub_213F4D280();
  v74 = sub_213F4D270();
  v75 = v66;
  v76 = v71;
  v70(v75, v71);
  v70(v68, v71);
  v193 = v73;
  v199 = v1;
  v181 = v71;
  if (v74)
  {
    sub_213DBBD08(v63);
    sub_213F4D280();
    sub_213F4D270();
    v70(v68, v71);
    v70(v63, v71);
    sub_213F4E180();
    v77 = sub_213F4E0F0();
    v78 = v182;
    (*(*(v77 - 8) + 56))(v182, 1, 1, v77);
    v79 = sub_213F4E190();
    sub_213DE36FC(v78, &qword_27C8F7668, &qword_213F52190);
    KeyPath = swift_getKeyPath();
    v81 = v73;
    v82 = v160;
    v83 = &v160[*(v183 + 36)];
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v85 = *MEMORY[0x277CE1058];
    v86 = sub_213F4EA30();
    (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
    *v83 = swift_getKeyPath();
    *v82 = v81;
    v82[1] = KeyPath;
    v82[2] = v79;

    v87 = sub_213EEEFB4();
    v88 = v165;
    sub_213DE2B44(v82, v165, &qword_27C8F7798, &unk_213F61D50);
    *(v88 + *(v185 + 36)) = v87;
    v89 = v187;
    sub_213F4F070();
    v90 = v188;
    sub_213F4F090();
    v91 = v164;
    v92 = &v164[*(v184 + 36)];
    LODWORD(KeyPath) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10) + 28);
    sub_213EF7D6C(&qword_281182550, MEMORY[0x277CE1598]);
    v93 = v190;
    sub_213F4D550();
    (*(v191 + 8))(v90, v192);
    (*(v189 + 8))(v89, v93);
    *v92 = swift_getKeyPath();
    v94 = sub_213DE2B44(v88, v91, &qword_27C8FBBD0, &qword_213F61DF0);
    v95 = MEMORY[0x216052350](v94, 0.5, 0.7, 0.0);
    LOBYTE(v93) = *(v199 + *(type metadata accessor for SelectedTrailingAccessory(0) + 28));
    v96 = v172;
    sub_213DE2B44(v91, v172, &qword_27C8FBBD8, &qword_213F61DF8);
    v97 = v96 + *(v186 + 36);
    *v97 = v95;
    *(v97 + 8) = v93;
    v98 = v158;
    sub_213DBBD08(v158);
    sub_213F4D280();
    sub_213F4D270();
    v99 = v181;
    v70(v68, v181);
    v70(v98, v99);
    v100 = v159;
    sub_213DBBD08(v159);
    sub_213F4D280();
    sub_213F4D270();
    v70(v68, v99);
    v70(v100, v99);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v101 = v171;
    sub_213DE2B44(v96, v171, &qword_27C8FBBE0, &qword_213F61E00);
    v102 = (v101 + *(v194 + 36));
    v103 = v201;
    *v102 = v200;
    v102[1] = v103;
    v102[2] = v202;
    v104 = &qword_27C8FBBE8;
    v105 = &qword_213F61E08;
    v106 = v173;
    sub_213DE2B44(v101, v173, &qword_27C8FBBE8, &qword_213F61E08);
    sub_213DE3164(v106, v196, &qword_27C8FBBE8, &qword_213F61E08);
    swift_storeEnumTagMultiPayload();
    sub_213EF9C8C();
    sub_213EF9F40();
    sub_213F4DBA0();

    v107 = v106;
  }

  else
  {
    v108 = v167;
    v109 = v166;
    v110 = v168;
    (*(v167 + 104))(v166, *MEMORY[0x277CE0FE0], v168);
    v173 = sub_213F4EA40();
    (*(v108 + 8))(v109, v110);
    sub_213DBBD08(v56);
    sub_213F4D280();
    sub_213F4D270();
    v70(v68, v76);
    v70(v56, v76);
    sub_213F4E180();
    v111 = sub_213F4E0F0();
    v112 = v182;
    (*(*(v111 - 8) + 56))(v182, 1, 1, v111);
    v113 = sub_213F4E190();
    sub_213DE36FC(v112, &qword_27C8F7668, &qword_213F52190);
    v114 = swift_getKeyPath();
    v115 = v162;
    v116 = &v162[*(v183 + 36)];
    v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v118 = *MEMORY[0x277CE1058];
    v119 = sub_213F4EA30();
    (*(*(v119 - 8) + 104))(v116 + v117, v118, v119);
    *v116 = swift_getKeyPath();
    *v115 = v173;
    v115[1] = v114;
    v115[2] = v113;
    v120 = sub_213EEEFB4();
    v121 = v170;
    sub_213DE2B44(v115, v170, &qword_27C8F7798, &unk_213F61D50);
    *(v121 + *(v185 + 36)) = v120;
    v122 = v187;
    sub_213F4F070();
    v123 = v188;
    sub_213F4F090();
    v124 = v169;
    v125 = &v169[*(v184 + 36)];
    LODWORD(v120) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10) + 28);
    sub_213EF7D6C(&qword_281182550, MEMORY[0x277CE1598]);
    v126 = v190;
    sub_213F4D550();
    (*(v191 + 8))(v123, v192);
    (*(v189 + 8))(v122, v126);
    *v125 = swift_getKeyPath();
    v127 = sub_213DE2B44(v121, v124, &qword_27C8FBBD0, &qword_213F61DF0);
    v128 = MEMORY[0x216052350](v127, 0.5, 0.7, 0.0);
    v192 = type metadata accessor for SelectedTrailingAccessory(0);
    LODWORD(v122) = *(v1 + *(v192 + 28));
    v129 = v174;
    sub_213DE2B44(v124, v174, &qword_27C8FBBD8, &qword_213F61DF8);
    v130 = v129 + *(v186 + 36);
    *v130 = v128;
    *(v130 + 8) = v122;
    v131 = v161;
    sub_213DBBD08(v161);
    sub_213F4D280();
    sub_213F4D270();
    v132 = v181;
    v70(v68, v181);
    v70(v131, v132);
    v133 = v163;
    sub_213DBBD08(v163);
    sub_213F4D280();
    sub_213F4D270();
    v70(v68, v132);
    v70(v133, v132);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v134 = v175;
    sub_213DE2B44(v129, v175, &qword_27C8FBBE0, &qword_213F61E00);
    v135 = (v134 + *(v194 + 36));
    v136 = v201;
    *v135 = v200;
    v135[1] = v136;
    v135[2] = v202;
    if (v122 == 1)
    {
      v137 = *MEMORY[0x277CE13D8];
      v138 = v179;
      v139 = *(v179 + 104);
    }

    else
    {
      v140 = v199 + *(v192 + 20);
      v141 = v154;
      sub_213EA8894(v154);
      v142 = v156;
      v143 = v155;
      v144 = v157;
      (*(v156 + 104))(v155, *MEMORY[0x277CDF3D0], v157);
      v145 = sub_213F4CE90();
      v146 = *(v142 + 8);
      v146(v143, v144);
      v146(v141, v144);
      v138 = v179;
      v139 = *(v179 + 104);
      if (v145)
      {
        v147 = MEMORY[0x277CE13B0];
      }

      else
      {
        v147 = MEMORY[0x277CE13B8];
      }

      v137 = *v147;
    }

    v148 = v177;
    v149 = v180;
    v139(v177, v137, v180);
    v150 = v176;
    (*(v138 + 32))(&v176[*(v197 + 36)], v148, v149);
    sub_213DE2B44(v134, v150, &qword_27C8FBBE8, &qword_213F61E08);
    v104 = &qword_27C8FBBC0;
    v105 = &qword_213F61DE0;
    v151 = v178;
    sub_213DE2B44(v150, v178, &qword_27C8FBBC0, &qword_213F61DE0);
    sub_213DE3164(v151, v196, &qword_27C8FBBC0, &qword_213F61DE0);
    swift_storeEnumTagMultiPayload();
    sub_213EF9C8C();
    sub_213EF9F40();
    sub_213F4DBA0();

    v107 = v151;
  }

  return sub_213DE36FC(v107, v104, v105);
}