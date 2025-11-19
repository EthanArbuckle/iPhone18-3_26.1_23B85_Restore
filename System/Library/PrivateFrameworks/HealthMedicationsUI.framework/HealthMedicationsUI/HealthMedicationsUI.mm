uint64_t sub_22816D630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816D650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_22816D69C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22816D798@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_228392000();
  *a1 = result;
  a1[1] = v5;
  return result;
}

BOOL sub_22816D7CC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22816D850(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816D870(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22816D898()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816D8D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816D90C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816D944()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816D994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816DB78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828998;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22816DBD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22816DC30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816DC70()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816DCC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816DD08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

uint64_t sub_22816DE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
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

uint64_t sub_22816DEC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DF0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816DF44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816DF84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22816DFC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816DFFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22816E014()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  if (v0[11])
  {
    v5 = v0[12];
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22816E074()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  MEMORY[0x22AAB7C80](v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816E0BC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E0F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E140()
{
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + v6 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v4 | v10;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_22816E2F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v4 = *(v0 + 184);

  v5 = *(v0 + 200);

  v6 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_22816E370()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E3A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E40C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816E46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  return sub_2281A42AC(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816E4E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E528()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22816E68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22816E7B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816E7F0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816E834()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E86C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816E8A4(uint64_t a1, uint64_t a2)
{
  sub_2281BBFFC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22816E910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_2281BBFFC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22816E994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22816EA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F440();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22816EB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816EC24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816ECC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816ED10()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816ED48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  return sub_2281C2920(v3 + v4, a2);
}

uint64_t sub_22816EDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22816EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F4A0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

void sub_22816EF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F4A0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_22816F088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  return sub_2281C608C(v3 + v4, a2, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_22816F104()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F13C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F174()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816F1B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816F1F4()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F234()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_22816F2A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D824AA0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_22816F338()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F370()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F3A8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  return sub_2281E3284(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816F478()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22816F4B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22816F4F8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816F550()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 72);

  return v1;
}

uint64_t sub_22816F584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22816F6AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22838F440();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22816F7D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22816F840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_2281ED014();
}

uint64_t sub_22816F87C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2281EC064(v4);
}

__n128 sub_22816F8B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22816F8C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F8F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816F940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22816F9D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816FAE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816FB88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FBC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FC20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TipImage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22816FCCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TipImage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22816FD70()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22816FDB8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FDFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  result = sub_228390F30();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22816FE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22816FF18()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FF50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22816FFA8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22816FFE0()
{
  v1 = (type metadata accessor for MedicationsRecordDoseItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = v1[10];
  v11 = sub_22838F440();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = (v0 + v3 + v1[12]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228170120(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F440();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2281701CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F440();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228170270()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281702A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281702E0()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170318()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

uint64_t sub_22817040C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
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

uint64_t sub_2281704C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  return sub_22821B644(v3 + v4, a2, sub_228181D50);
}

uint64_t sub_228170538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TileItem.Background(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_228170660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TileItem.Background(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_228170788()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281707C0()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281707F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170858()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170890()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281708C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228170908()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_228170990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281709F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  return sub_228227E84(v3 + v4, a2, &qword_27D823888, sub_228227EF0);
}

uint64_t sub_228170ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_228170B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_228170BC8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228170C10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228170C48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170C80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228170CC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem() + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228170D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228170D90(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22838F4A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2283913A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[16];

  return v16(v17, a2, v15);
}

uint64_t sub_228170F2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22838F4A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2283913A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2281710C8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171144()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171184()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281711BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281711F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817123C()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281712D4()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  v12 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  (*(v7 + 8))(&v0[v9], v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22817147C()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281714B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228171530()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22817156C()
{
  v1 = [v0 inputAccessoryView];

  return v1;
}

void sub_2281715A4(void *a1)
{
  [v1 setInputAccessoryView_];
}

uint64_t sub_2281715EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171624()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2281716E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171730()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281717C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_22838F440();
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

  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_228171950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_22838F440();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_228171AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228171B34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228171B6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171BA4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171BE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228171C20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228171C74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_228171D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228171E00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_228171ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228171F8C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228171FD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817200C()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = *(v0 + 16);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v11(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2281721A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281721E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22838F440();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2281722D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22838F440();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2281723D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172440()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281724E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826060);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_22817253C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

uint64_t sub_228172630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
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

uint64_t sub_2281726E8()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228172780()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281727C0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228172808()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172840()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172878()
{
  v1 = type metadata accessor for Dosage();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
    v4 = *(v0 + 24);
  }

  v5 = (v2 + 32) & ~v2;
  v6 = sub_22838F4A0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v1 + 20);
  v8 = sub_22838F440();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_2281729A0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281729E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172A18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228172B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228172BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228172C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationSearchItem.Source(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228172D44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228172D84()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172DBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826508);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_228172E18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228172E50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172E8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228172ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_228172F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228172F88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228172FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228391C00();
  *a1 = result;
  return result;
}

uint64_t sub_228172FF0(uint64_t *a1)
{
  v1 = *a1;

  return sub_228391C10();
}

uint64_t sub_228173044()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817307C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281730BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_22817310C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_22817316C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281731A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281731E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22817324C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173284()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281732C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281732FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173334()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228173378()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2281733C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D826C08);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_22817341C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173458()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281734B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281734EC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  v2 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  v5 = *(v0 + 200);

  v6 = *(v0 + 216);

  v7 = *(v0 + 232);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_22817357C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281735CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v4 = *(v0 + 184);

  v5 = *(v0 + 200);

  v6 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_22817368C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_228391130();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228173738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228391130();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2281737DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173814()
{
  v1 = sub_22838F760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2281738E4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22817392C()
{
  v1 = (type metadata accessor for WeekdaysAndDosages(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_228391130();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228173A30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173A68()
{
  v1 = type metadata accessor for Dosage();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
    v4 = *(v0 + 24);
  }

  v5 = (v2 + 32) & ~v2;
  v6 = sub_22838F4A0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v1 + 20);
  v8 = sub_22838F440();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_228173B90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173BD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_228173C1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2282ADBC4();
  *a2 = v4;

  return v4;
}

__n128 sub_228173C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_228173C9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_2282ADBF8();
  a2[1] = v4;
  a2[2] = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_228173CDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = swift_unknownObjectRetain();
  return sub_2282AC4B4(v6, v3, v4);
}

uint64_t sub_228173D2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228173D64()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228173DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FrequencyIntervalPickerItem() + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228173E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35FrequencyIntervalCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228173E60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228173F0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228173FB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228173FF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817402C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22817407C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281740BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_228392E80();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2281740E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2281741A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228174264()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817429C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22817435C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228174418()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174454()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22817449C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281744FC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174534()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817456C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2283913A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228174618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2283913A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2281746BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F6C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_228174768(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F6C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228174814()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817484C()
{
  v1 = *(v0 + 16);

  sub_2282E32E8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228174890()
{
  sub_2282E32E8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2281748EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228174938(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_228174A18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228174AEC()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  return sub_2282F2B40(v3 + v4, a2, sub_228181D50);
}

uint64_t sub_228174B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
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

uint64_t sub_228174C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
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

uint64_t sub_228174D14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174D4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228174D88()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174DD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27D8276F0);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_228174E30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174E68()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228174EA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228174EE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228174F30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228174F68()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228175050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175090()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281750E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228175188()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281751D0()
{
  sub_228309468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228175258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175290()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281752D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175318()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175360()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2281753B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228175408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228175478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2281754D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  return sub_228317208(v3 + v4, a2, sub_228181D50);
}

id sub_228175548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_228312440();
  *a2 = result;
  return result;
}

void sub_228175574(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField);
  *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = *a1;
  v3 = v2;
}

uint64_t sub_2281755C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22838F4A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_228175670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22838F4A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228175714()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817574C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281757BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817580C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817584C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281758D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175914()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228175964()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2281759B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281759FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175A44()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175A7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175AB4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_228175B04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175B3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828F30;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_228175BDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175C1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175C54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175CA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175CE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228390C00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_228175D44()
{
  v1 = sub_228390C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228175E18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionFactorsInfoCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228175E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D8280A8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_228175ED8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228175F10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228175F50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228175F88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_228391130();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2281760C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228391130();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_228349F00(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_228176208()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281762B8(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v5, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  return sub_22834BF68(v5);
}

uint64_t sub_228176310()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176348()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176390()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281763C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817640C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176444()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22817647C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2281764CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22817650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22838F080();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2281765FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22838F080();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2281766F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_2281767AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2281767E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176824()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176860()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
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

uint64_t sub_228176954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
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

uint64_t sub_228176A10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176A54()
{
  MEMORY[0x22AAB7C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176A8C()
{
  sub_2281CCAE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228176ACC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228176BB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  return sub_22817A890(v3 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228176C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a2);
}

uint64_t sub_228176C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228176CC8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228176D0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228176D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228176E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22838F4A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_228176EC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_228176F30()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_228176F64()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_228176FA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_228176FC0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_228177028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228177028()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = *MEMORY[0x277D12788];
  sub_228392000();
  sub_228178518(&qword_27D823328, v2, type metadata accessor for MedicationsDayHistoryHeaderCell);
  v3 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v3);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  [v0 setNumberOfLines_];
  v5 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v6 = *MEMORY[0x277D76918];
  v7 = *MEMORY[0x277D743F8];
  v8 = sub_228392AD0();
  [v0 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v9 = sub_228391FC0();

  [v0 setText_];

  return v0;
}

char *sub_228177318(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item];
  v15 = type metadata accessor for MedicationsDayHistoryHeaderCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v38.receiver = v4;
  v38.super_class = v15;
  v16 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = sub_228176FC0();
  LODWORD(v18) = 1132068864;
  [v17 setContentHuggingPriority:0 forAxis:v18];

  sub_22817AEF0(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228396260;
  v20 = *&v16[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel];
  *(v19 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v22 = v20;
  v23 = sub_228392190();

  v24 = [v21 initWithArrangedSubviews_];

  [v24 setAxis_];
  [v24 setAlignment_];
  [v24 setDistribution_];
  [v24 setSpacing_];
  v25 = [v16 contentView];
  [v25 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v27 = v26;
  v29 = v28;
  (*(v10 + 8))(v13, v9);
  v30 = v16;
  v31 = [v30 contentView];
  [v24 hk:v31 alignConstraintsWithView:12.0 insets:{v27, 12.0, v29}];

  v32 = [v30 separatorLayoutGuide];
  v33 = [v32 leadingAnchor];

  v34 = [v30 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  [v36 setActive_];

  return v30;
}

uint64_t sub_228177788()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_228391330();
  v15 = type metadata accessor for MedicationsDayHistoryHeaderCell();
  v38.receiver = v1;
  v38.super_class = v15;
  objc_msgSendSuper2(&v38, sel__bridgedUpdateConfigurationUsingState_, v14);

  v16 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  sub_22817A890(v1 + v16, v36, &qword_280DDCD50, sub_22817A700);
  if (!v37)
  {
    sub_22817A8FC(v36, &qword_280DDCD50, sub_22817A700);
LABEL_6:
    sub_228391150();
    v21 = v1;
    v22 = sub_2283911A0();
    v23 = sub_2283925C0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v2;
      v35 = v25;
      v26 = v25;
      *v24 = 136315138;
      sub_22817A890(v1 + v16, v36, &qword_280DDCD50, sub_22817A700);
      sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
      v27 = sub_228392040();
      v29 = sub_2281C96FC(v27, v28, &v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for MedicationsDayHistoryItem: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v24, -1, -1);

      return (*(v3 + 8))(v6, v34);
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }

  sub_22817A700();
  type metadata accessor for MedicationsDayHistoryHeaderItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = v35;
  MEMORY[0x22AAB6410]();
  v18 = sub_2283913A0();
  if ((*(*(v18 - 8) + 48))(v13, 1, v18))
  {
    v19 = MEMORY[0x277D74BD0];
    sub_22817A890(v13, v11, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v11);

    return sub_22817A8FC(v13, &unk_280DDBCD0, v19);
  }

  else
  {
    v30 = *(v17 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext);
    v31 = objc_opt_self();
    v32 = &selRef_secondarySystemBackgroundColor;
    if (!v30)
    {
      v32 = &selRef_quaternarySystemFillColor;
    }

    v33 = [v31 *v32];
    sub_228391370();
    MEMORY[0x22AAB6420](v13);
  }
}

id sub_228177CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsDayHistoryHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228177D60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228177DD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MedicationsDayHistoryHeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier + 8);

  return v1;
}

unint64_t sub_228177ED8()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000015;
}

uint64_t MedicationsDayHistoryHeaderItem.__allocating_init(displayContext:)(_BYTE *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_22838F490();
  v6 = (v5 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228178518(&qword_27D823328, v7, type metadata accessor for MedicationsDayHistoryHeaderCell);
  *v6 = sub_22838FBB0();
  v6[1] = v8;
  *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = a1;
  return v5;
}

uint64_t MedicationsDayHistoryHeaderItem.init(displayContext:)(char *a1)
{
  v2 = *a1;
  sub_22838F490();
  v3 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_228178518(&qword_27D823328, v4, type metadata accessor for MedicationsDayHistoryHeaderCell);
  *v3 = sub_22838FBB0();
  v3[1] = v5;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext) = v2;
  return v1;
}

uint64_t MedicationsDayHistoryHeaderItem.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier + 8);

  return v0;
}

uint64_t MedicationsDayHistoryHeaderItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228178258()
{
  sub_228393520();
  MEMORY[0x22AAB70D0](*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_2281782A4()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_22817832C()
{
  sub_228393520();
  MEMORY[0x22AAB70D0](*(*v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_displayContext));
  return sub_228393570();
}

uint64_t sub_228178378()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderItem_reuseIdentifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_2281783E0()
{
  v1 = *v0;
  sub_2283931D0();

  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0xD000000000000015;
}

uint64_t sub_228178468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228178518(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for MedicationsDayHistoryHeaderItem()
{
  result = qword_27D8233B0;
  if (!qword_27D8233B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228178600()
{
  result = sub_22838F4A0();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_228178B60(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x22AAB3320](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_228178BB4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x22AAB3330](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_228178C3C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x22AAB5FD0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_228178C90(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x22AAB5FE0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_228178DB8(uint64_t a1, id *a2)
{
  result = sub_228391FE0();
  *a2 = 0;
  return result;
}

uint64_t sub_228178E30(uint64_t a1, id *a2)
{
  v3 = sub_228391FF0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_228178EB0@<X0>(uint64_t *a1@<X8>)
{
  sub_228392000();
  v2 = sub_228391FC0();

  *a1 = v2;
  return result;
}

void *sub_228178F1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_228178F48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_228178FE4(uint64_t a1)
{
  v2 = sub_228178518(&qword_27D823578, 255, type metadata accessor for HKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_228179054(uint64_t a1)
{
  v2 = sub_228178518(&qword_27D823578, 255, type metadata accessor for HKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2281790C8(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_228179140(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_228393520();
  a3(v5);
  return sub_228393570();
}

uint64_t sub_228179198(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_228393520();
  a4(v6);
  return sub_228393570();
}

uint64_t sub_2281791EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22817A764(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22817923C(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2281792AC(uint64_t a1)
{
  v2 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22817931C(void *a1, uint64_t a2)
{
  v4 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2281793D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_228179454()
{
  v2 = *v0;
  sub_228393520();
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281794B4()
{
  sub_228178518(&qword_27D8235E8, 255, type metadata accessor for TextStyle);
  sub_228178518(&unk_27D8235F0, 255, type metadata accessor for TextStyle);

  return sub_228393380();
}

double sub_228179578@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_228179584()
{
  v2 = *v0;
  sub_228178518(&qword_27D8235D0, 255, type metadata accessor for Weight);
  sub_228178518(&qword_27D8235D8, 255, type metadata accessor for Weight);
  sub_22817A79C();
  return sub_228393380();
}

uint64_t sub_228179654()
{
  sub_228178518(&qword_27D8236A8, 255, type metadata accessor for UIContentSizeCategory);
  sub_228178518(&qword_27D8236B0, 255, type metadata accessor for UIContentSizeCategory);

  return sub_228393380();
}

_DWORD *sub_228179718@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_228179728@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_228179734()
{
  v2 = *v0;
  sub_228178518(&qword_27D8236D8, 255, type metadata accessor for UILayoutPriority);
  sub_228178518(&qword_27D8236E0, 255, type metadata accessor for UILayoutPriority);
  return sub_228393380();
}

uint64_t sub_2281797F8()
{
  sub_228178518(&qword_27D8235C0, 255, type metadata accessor for HKOntologyShardIdentifier);
  sub_228178518(&qword_27D8235C8, 255, type metadata accessor for HKOntologyShardIdentifier);

  return sub_228393380();
}

uint64_t sub_2281798BC()
{
  sub_228178518(&qword_280DDBA40, 255, type metadata accessor for Key);
  sub_228178518(&unk_27D823600, 255, type metadata accessor for Key);

  return sub_228393380();
}

uint64_t sub_228179A18()
{
  sub_228178518(&qword_27D8236C8, 255, type metadata accessor for AttributeName);
  sub_228178518(&qword_27D8236D0, 255, type metadata accessor for AttributeName);

  return sub_228393380();
}

uint64_t sub_228179ADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_228391FC0();

  *a2 = v5;
  return result;
}

uint64_t sub_228179B24()
{
  sub_228178518(&qword_27D8236B8, 255, type metadata accessor for FeatureKey);
  sub_228178518(&qword_27D8236C0, 255, type metadata accessor for FeatureKey);

  return sub_228393380();
}

uint64_t sub_228179BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228178518(&unk_27D8235B0, 255, type metadata accessor for HKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_228179DF4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x22AAB7100](*&v1);
}

uint64_t sub_228179E30(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_228179EA8()
{
  v1 = *v0;
  v2 = sub_228392000();
  v3 = MEMORY[0x22AAB5CD0](v2);

  return v3;
}

uint64_t sub_228179EE4()
{
  v1 = *v0;
  sub_228392000();
  sub_2283920B0();
}

uint64_t sub_228179F38()
{
  v1 = *v0;
  sub_228392000();
  sub_228393520();
  sub_2283920B0();
  v2 = sub_228393570();

  return v2;
}

uint64_t sub_22817A19C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_228392000();
  v6 = v5;
  if (v4 == sub_228392000() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_228393460();
  }

  return v9 & 1;
}

unint64_t sub_22817A548()
{
  result = qword_27D8235A0;
  if (!qword_27D8235A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8235A0);
  }

  return result;
}

uint64_t sub_22817A680(uint64_t a1, uint64_t a2)
{
  sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22817A700()
{
  result = qword_280DDCD60;
  if (!qword_280DDCD60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDCD60);
  }

  return result;
}

uint64_t sub_22817A764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_22817A79C()
{
  result = qword_27D8235E0;
  if (!qword_27D8235E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8235E0);
  }

  return result;
}

void sub_22817A7F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22817A890(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22817A7F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22817A8FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22817A7F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22817A958(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_22817AEF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t Presentation.isMedicationsCategory.getter()
{
  v0 = sub_22838FB90();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[13];
  v5(v4, *MEMORY[0x277D10E68], v0);
  v6 = sub_22838FB80();
  v7 = v1[1];
  v7(v4, v0);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v5(v4, *MEMORY[0x277D10E50], v0);
    v8 = sub_22838FB80();
    v7(v4, v0);
  }

  return v8 & 1;
}

char *MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  *(v5 + qword_27D8237C0) = 0;
  *(v5 + qword_27D8237C8) = a1;
  *(v5 + qword_27D8237D0) = a2;
  *(v5 + qword_27D8237D8) = a3;
  *(v5 + qword_27D8237E0) = a4;
  v8 = type metadata accessor for MedicationScheduleDataSource();
  v28 = 0u;
  v29 = 0u;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();
  v11 = a2;
  *(v5 + qword_27D8237E8) = sub_228333ABC(a1, v11, 0, &v28);

  v12 = [v11 localizedOntologyEducationContent];
  if (v12)
  {
    *&v28 = v12;
    v13 = v12;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v15 = v14;

    if (v15)
    {
    }
  }

  v16 = [v11 localizedOntologyEducationContent];
  if (v16)
  {
    *&v28 = v16;
    v17 = v16;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v19 = v18;

    if (v19)
    {
    }
  }

  v20 = sub_228391020();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v5 + qword_27D8237F0) = sub_228390FF0();

  v23 = sub_228390480();
  v24 = v23;
  if (v23[qword_27D8237D8] == 1)
  {
    v25 = *(*&v23[qword_27D8237E8] + qword_27D828F38);
    *&v28 = 2;
    v26 = v23;

    sub_228391850();
  }

  else
  {
  }

  return v24;
}

void sub_22817B400(uint64_t a1)
{
  *(a1 + qword_27D8237C0) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22817B468()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MedicationsInputViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_22817B6AC();
  sub_22817B9A8();
  v2 = *&v0[qword_27D8237E8];
  v3 = qword_27D828F30;
  swift_beginAccess();
  v7 = *(v2 + v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22817D780();
  sub_22817E008(&qword_27D8237F8, sub_22817D780);

  v4 = sub_228391AC0();

  v5 = *&v1[qword_27D8237C0];
  *&v1[qword_27D8237C0] = v4;
}

void sub_22817B5B8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];

    v5 = [v4 rightBarButtonItem];
    [v5 setEnabled_];
  }
}

void sub_22817B664(void *a1)
{
  v1 = a1;
  sub_22817B468();
}

void sub_22817B6AC()
{
  v1 = v0;
  v2 = *&v0[qword_27D8237C8];
  sub_228391870();
  if (v18[0])
  {

    v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_doneTapped_];
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v19 = type metadata accessor for MedicationsInputViewController();
    v18[0] = v1;
    v4 = v1;
    v5 = sub_228391FC0();

    v6 = v19;
    if (v19)
    {
      v7 = __swift_project_boxed_opaque_existential_0(v18, v19);
      v8 = *(v6 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11);
      v12 = sub_228393450();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v3 = [v13 initWithTitle:v5 style:2 target:v12 action:{sel_saveTapped_, v18[0]}];

    swift_unknownObjectRelease();
  }

  v14 = v3;
  v15 = [v1 navigationItem];
  [v15 setRightBarButtonItem_];

  v16 = [v1 navigationItem];
  v17 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelTapped_];
  [v16 setLeftBarButtonItem_];
}

void sub_22817B9A8()
{
  v1 = v0;
  if (v0[qword_27D8237D8] == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v2 = *&v0[qword_27D8237C8];
  sub_228391870();
  if (v7)
  {

    if (qword_280DDCF18 == -1)
    {
LABEL_6:
      sub_22838F0C0();
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v8 = *&v1[qword_27D8237D0];
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
LABEL_7:
  v3 = sub_228391FC0();

  [v1 setTitle_];

  v4 = [v1 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22817BBB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22817D894();
}

uint64_t sub_22817BC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_228391DF0();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v15 = sub_228392790();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22817E008(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_22817DFB0();
  sub_22817E008(&qword_280DDCEF0, sub_22817DFB0);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

void sub_22817BEEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22817DBD0();
}

void sub_22817BF4C(char *a1)
{
  v1 = *&a1[qword_27D8237F0];
  v2 = a1;
  sub_228390FE0();
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_22817BFBC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  sub_228391150();
  v10 = sub_2283911A0();
  v11 = sub_2283925A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v7;
    v32 = v2;
    v14 = v3;
    v15 = v13;
    v33 = v13;
    *v12 = 136315138;
    v16 = sub_228393600();
    v18 = sub_2281C96FC(v16, v17, &v33);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_22816B000, v10, v11, "[%s] Attempting to save new schedule", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v19 = v15;
    v3 = v14;
    v7 = v31;
    v2 = v32;
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  v20 = *(v3 + 8);
  v20(v9, v2);
  v21 = *(*(v1 + qword_27D8237E8) + qword_27D828F28);

  sub_228391870();

  v22 = v33;
  if (v33)
  {
    sub_22817C520(v33);
  }

  else
  {
    sub_228391150();
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = sub_228393600();
      v29 = sub_2281C96FC(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22816B000, v23, v24, "[%s] Unable to save medication schedule. Schedule is nil.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    v20(v7, v2);
  }
}

void sub_22817C2E8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + qword_27D8237E8) + qword_27D828F28);

  sub_228391870();

  v8 = v19;
  if (v19)
  {
    sub_22817C520(v19);
  }

  else
  {
    v9 = *(v1 + qword_27D8237C8);
    sub_228391870();
    v10 = v19;
    if (v19)
    {
      sub_22817CE20(v19);
    }

    else
    {
      sub_228391150();
      v11 = sub_2283911A0();
      v12 = sub_2283925C0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136315138;
        v15 = sub_228393600();
        v17 = sub_2281C96FC(v15, v16, &v19);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_22816B000, v11, v12, "[%s] Unable to save medication schedule. Schedule or previous schedule was nil.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AAB7B80](v14, -1, -1);
        MEMORY[0x22AAB7B80](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }
  }
}

void sub_22817C520(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  sub_228391150();
  v12 = sub_2283911A0();
  v13 = sub_2283925A0();
  v14 = os_log_type_enabled(v12, v13);
  v42 = ObjectType;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = sub_228393600();
    v40 = v2;
    v19 = sub_2281C96FC(v17, v18, aBlock);
    v2 = v40;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22816B000, v12, v13, "[%s] Attempting to save/update schedule", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v11, v5);
  v21 = *&v2[qword_27D8237C8];
  sub_228391870();
  v22 = aBlock[0];
  if ([a1 isIdenticalToMedicationSchedule_] && v2[qword_27D8237E0] != 1)
  {
    v29 = *&v2[qword_27D8237F0];
    sub_228390FE0();
    v30 = v41;
    sub_228391150();
    v31 = sub_2283911A0();
    v32 = sub_2283925A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = sub_228393600();
      v37 = sub_2281C96FC(v35, v36, aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22816B000, v31, v32, "[%s] Schedule not changed", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAB7B80](v34, -1, -1);
      MEMORY[0x22AAB7B80](v33, -1, -1);

      v38 = v41;
    }

    else
    {

      v38 = v30;
    }

    v20(v38, v5);
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v24 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];

    v25 = swift_allocObject();
    v25[2] = v2;
    v25[3] = a1;
    v25[4] = v42;
    aBlock[4] = sub_22817E148;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2283282E4;
    aBlock[3] = &block_descriptor_40;
    v26 = _Block_copy(aBlock);
    v27 = v2;
    v28 = a1;

    [v24 saveSchedule:v28 completion:v26];
    _Block_release(v26);
  }
}

uint64_t sub_22817C99C(char a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_2283911B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  if (a1)
  {
    sub_228391150();
    v19 = sub_2283911A0();
    v20 = sub_2283925A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136315138;
      v23 = sub_228393600();
      v25 = sub_2281C96FC(v23, v24, &v50);
      v49 = v8;
      v26 = v25;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_22816B000, v19, v20, "[%s] Schedule save/updated", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v21, -1, -1);

      (*(v9 + 8))(v18, v49);
    }

    else
    {

      (*(v9 + 8))(v18, v8);
    }

    v39 = *(a3 + qword_27D8237C8);
    v50 = a4;
    v40 = a4;
    sub_228391850();

    v41 = *(a3 + qword_27D8237F0);
    return sub_228390FE0();
  }

  else if (a2)
  {
    sub_228391150();
    v27 = a2;
    v28 = sub_2283911A0();
    v29 = sub_2283925C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50 = v31;
      *v30 = 136315394;
      v32 = sub_228393600();
      v34 = sub_2281C96FC(v32, v33, &v50);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v35 = sub_2283934D0();
      v37 = sub_2281C96FC(v35, v36, &v50);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_22816B000, v28, v29, "[%s] Failed to save/update medication schedule due to %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v31, -1, -1);
      MEMORY[0x22AAB7B80](v30, -1, -1);
    }

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    sub_228391150();
    v42 = sub_2283911A0();
    v43 = sub_2283925C0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      v46 = sub_228393600();
      v48 = sub_2281C96FC(v46, v47, &v50);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_22816B000, v42, v43, "[%s] Failed to save/update medication schedule without an error", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAB7B80](v45, -1, -1);
      MEMORY[0x22AAB7B80](v44, -1, -1);
    }

    return (*(v9 + 8))(v16, v8);
  }
}

void sub_22817CE20(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v10 = sub_2283911A0();
  v11 = sub_2283925A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = sub_228393600();
    v17 = sub_2281C96FC(v15, v16, aBlock);
    v25 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22816B000, v10, v11, "[%s] Attempting to delete previous schedule", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    v19 = v13;
    a1 = v26;
    MEMORY[0x22AAB7B80](v19, -1, -1);

    (*(v6 + 8))(v9, v25);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v21 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];

  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_22817E140;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_34;
  v23 = _Block_copy(aBlock);
  v24 = v2;

  [v21 deleteSchedule:a1 completion:v23];
  _Block_release(v23);
}

uint64_t sub_22817D0F0(char a1, void *a2, uint64_t a3)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  if (a1)
  {
    sub_228391150();
    v17 = sub_2283911A0();
    v18 = sub_2283925A0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136315138;
      v21 = sub_228393600();
      v23 = sub_2281C96FC(v21, v22, &v45);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22816B000, v17, v18, "[%s] Schedule deleted. Now considered As Needed.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
    v24 = *(a3 + qword_27D8237C8);
    v45 = 0;
    return sub_228391850();
  }

  else if (a2)
  {
    sub_228391150();
    v26 = a2;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315394;
      v31 = sub_228393600();
      v33 = sub_2281C96FC(v31, v32, &v45);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v34 = sub_2283934D0();
      v36 = sub_2281C96FC(v34, v35, &v45);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_22816B000, v27, v28, "[%s] Failed to delete medication schedule due to %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    sub_228391150();
    v37 = sub_2283911A0();
    v38 = sub_2283925C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315138;
      v41 = sub_228393600();
      v43 = sub_2281C96FC(v41, v42, &v45);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_22816B000, v37, v38, "[%s] Failed to delete medication schedule without an error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAB7B80](v40, -1, -1);
      MEMORY[0x22AAB7B80](v39, -1, -1);
    }

    return (*(v7 + 8))(v14, v6);
  }
}

id MedicationsInputViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_22817D608()
{
  v1 = *(v0 + qword_27D8237C8);

  v2 = *(v0 + qword_27D8237E8);

  v3 = *(v0 + qword_27D8237C0);

  v4 = *(v0 + qword_27D8237F0);
}

id MedicationsInputViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsInputViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22817D6B0(uint64_t a1)
{
  v2 = *(a1 + qword_27D8237C8);

  v3 = *(a1 + qword_27D8237E8);

  v4 = *(a1 + qword_27D8237C0);

  v5 = *(a1 + qword_27D8237F0);
}

uint64_t type metadata accessor for MedicationsInputViewController()
{
  result = qword_27D823800;
  if (!qword_27D823800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22817D780()
{
  if (!qword_27D8277C0)
  {
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8277C0);
    }
  }
}

void sub_22817D894()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*&v0[qword_27D8237E8] + qword_27D828F28);

  sub_228391870();

  v9 = aBlock[0];
  if (aBlock[0])
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = objc_allocWithZone(MEMORY[0x277D115A0]);
    v12 = v1;
    v13 = [v11 init];
    v14 = swift_allocObject();
    v14[2] = sub_22817E050;
    v14[3] = v10;
    v14[4] = 0;
    v14[5] = 0;
    v14[6] = v12;
    v14[7] = ObjectType;
    aBlock[4] = sub_22817E1C0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2281A2F3C;
    aBlock[3] = &block_descriptor_22;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    [v13 checkIncompatibilityForSchedule:v9 completion:v15];
    _Block_release(v15);
  }

  else
  {
    sub_228391150();
    v17 = sub_2283911A0();
    v18 = sub_2283925A0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      v21 = sub_228393600();
      v23 = sub_2281C96FC(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22816B000, v17, v18, "[%s] Skipping check for device incompatibility", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_22817BFBC();
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_22817DBD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*&v0[qword_27D8237E8] + qword_27D828F28);

  sub_228391870();

  v9 = aBlock[0];
  if (aBlock[0])
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = objc_allocWithZone(MEMORY[0x277D115A0]);
    v12 = v1;
    v13 = [v11 init];
    v14 = swift_allocObject();
    v14[2] = sub_22817DF0C;
    v14[3] = v10;
    v14[4] = 0;
    v14[5] = 0;
    v14[6] = v12;
    v14[7] = ObjectType;
    aBlock[4] = sub_22817DF4C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2281A2F3C;
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);
    v16 = v12;

    [v13 checkIncompatibilityForSchedule:v9 completion:v15];
    _Block_release(v15);
  }

  else
  {
    sub_228391150();
    v17 = sub_2283911A0();
    v18 = sub_2283925A0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      v21 = sub_228393600();
      v23 = sub_2281C96FC(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22816B000, v17, v18, "[%s] Skipping check for device incompatibility", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_22817C2E8();
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22817DF68()
{
  v1 = *(v0 + 16);
  sub_22817C2E8();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_22817DFB0()
{
  if (!qword_280DDCF00)
  {
    sub_228391DC0();
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCF00);
    }
  }
}

uint64_t sub_22817E008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_22817E0F8()
{
  v1 = *(v0 + 16);
  sub_22817BFBC();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22817E230()
{
  sub_228390200();

  return swift_deallocClassInstance();
}

uint64_t sub_22817E288(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22817E338()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_22817E370()
{
  type metadata accessor for MedicationSideEffectsItemCell();
  sub_22817E578(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell);
  return sub_2283926B0();
}

uint64_t sub_22817E3E0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_22817E578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22817E5C0(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  sub_228181014(v6, v3 + v4, &qword_280DDCD50, &qword_280DDCD60);
  swift_endAccess();
  sub_22817FF40();
  return sub_228181138(v6, &qword_280DDCD50, &qword_280DDCD60);
}

uint64_t sub_22817E670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22817E6C8(uint64_t a1, uint64_t a2)
{
  sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22817E744(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  sub_228181014(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60);
  swift_endAccess();
  sub_22817FF40();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60);
}

id *(*sub_22817E7E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22817E84C;
}

id *sub_22817E84C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22817FF40();
  }

  return result;
}

id sub_22817E880()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_22817E98C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for InteractionStackedMedmojiView());
    v6 = InteractionStackedMedmojiView.init(width:)(33.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_22817EA20()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v9 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v10;
    v11 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A7500);

    MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283A7540);

    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setNumberOfLines_];
    [v11 setAdjustsFontForContentSizeCategory_];
    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_22817EC44()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v9 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v10;
    v11 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A7500);

    MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A7520);

    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setNumberOfLines_];
    [v11 setAdjustsFontForContentSizeCategory_];
    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_22817EE68(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for InteractionMedicationCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22817F298();
  sub_22817F4B0();

  return v10;
}

id sub_22817EF80(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = 0;
  v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionMedicationCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_22817F074(uint64_t a1, uint64_t a2)
{
  sub_228392290();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_228180F24();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2283931D0();
    MEMORY[0x22AAB5C80](0xD00000000000003FLL, 0x80000002283A75B0);
    v8 = sub_228393600();
    MEMORY[0x22AAB5C80](v8);

    MEMORY[0x22AAB5C80](46, 0xE100000000000000);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

uint64_t sub_22817F298()
{
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  *(inited + 32) = sub_22817E880();
  *(inited + 40) = sub_22817E98C();
  *(inited + 48) = sub_22817EA20();
  *(inited + 56) = sub_22817EC44();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    v5 = [v0 contentView];
    [v5 addSubview_];

    if (v2)
    {
      v6 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v6 = *(inited + 40);
    }

    v7 = v6;
    v8 = [v0 contentView];
    [v8 addSubview_];

    if (v2)
    {
      v9 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v9 = *(inited + 48);
    }

    v10 = v9;
    v11 = [v0 contentView];
    [v11 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v12 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v12 = MEMORY[0x22AAB6D80](3, inited);
LABEL_13:
  v13 = v12;
  v14 = [v0 contentView];
  [v14 addSubview_];

  swift_setDeallocating();
  v15 = *(inited + 16);
  return swift_arrayDestroy();
}

id sub_22817F4B0()
{
  v94 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F10;
  v2 = sub_22817E880();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 &selRef_logTimeChanged_ + 1];
  v7 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v93 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___titleButton] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  *(v1 + 40) = v12;
  v13 = [*&v0[v8] trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintLessThanOrEqualToAnchor:v15 constant:16.0];
  *(v1 + 48) = v16;
  v17 = sub_22817E98C();
  v18 = [v17 &selRef_logTimeChanged_ + 1];

  v19 = [v0 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 &selRef_logTimeChanged_ + 1];
  v22 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v22;
  v23 = sub_22817EA20();
  v24 = [v23 &selRef_logTimeChanged_ + 1];

  v95 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView;
  v25 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___stackedMedmojiView] trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v1 + 64) = v26;
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel;
  v28 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___firstInteractionNameLabel] trailingAnchor];
  v29 = [v0 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 trailingAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  *(v1 + 72) = v32;
  v33 = sub_22817EC44();
  v34 = [v33 leadingAnchor];

  v35 = [*&v0[v27] leadingAnchor];
  v36 = [v34 &selRef_freeTextMedicationName + 5];

  *(v1 + 80) = v36;
  v37 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel;
  v38 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell____lazy_storage___secondInteractionNameLabel] trailingAnchor];
  v39 = [v0 contentView];
  v40 = [v39 layoutMarginsGuide];

  v41 = [v40 trailingAnchor];
  v42 = [v38 &selRef_freeTextMedicationName + 5];

  *(v1 + 88) = v42;
  v43 = [*&v0[v37] topAnchor];
  v44 = [*&v0[v27] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:8.0];

  *(v1 + 96) = v45;
  v46 = [v0 contentView];
  v47 = [v46 bottomAnchor];

  v48 = [*&v0[v37] bottomAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48 constant:16.0];

  *(v1 + 104) = v49;
  v50 = [v0 contentView];
  v51 = [v50 bottomAnchor];

  v52 = [*&v0[v95] bottomAnchor];
  v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52 constant:11.0];

  *(v1 + 112) = v53;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v54 = sub_228392190();

  [v94 activateConstraints_];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_228397F20;
  v56 = [*&v0[v95] topAnchor];
  v57 = [v0 contentView];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58 constant:11.0];
  *(v55 + 32) = v59;
  v60 = v27;
  v61 = [*&v0[v27] topAnchor];
  v62 = [v0 contentView];
  v63 = [v62 topAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:16.0];
  *(v55 + 40) = v64;
  v65 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints;
  v66 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints] = v55;

  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_228397F20;
  v68 = [*&v0[v95] topAnchor];
  v69 = [*&v0[v93] bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:5.0];

  *(v67 + 32) = v70;
  v71 = [*&v0[v60] topAnchor];
  v72 = [*&v0[v93] bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:10.0];

  *(v67 + 40) = v73;
  v74 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints;
  v75 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints] = v67;

  v77 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden;
  v78 = v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden];
  v0[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = 1;
  if (v78)
  {
    return result;
  }

  result = [*&v0[v93] setHidden_];
  v79 = *&v0[v65];
  v80 = v0;
  if (!v79)
  {
    goto LABEL_15;
  }

  v95 = v74;
  v81 = v79 & 0xFFFFFFFFFFFFFF8;
  if (v79 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {

    if (i)
    {
      v83 = 0;
      while (1)
      {
        if ((v79 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x22AAB6D80](v83, v79);
        }

        else
        {
          if (v83 >= *(v81 + 16))
          {
            goto LABEL_32;
          }

          v84 = *(v79 + 8 * v83 + 32);
        }

        v85 = v84;
        v86 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        [v84 setActive_];

        ++v83;
        if (v86 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

    v0 = v80;
    v74 = v95;
LABEL_15:
    v79 = *&v0[v74];
    if (!v79)
    {
      return result;
    }

    v81 = v79 & 0xFFFFFFFFFFFFFF8;
    if (v79 >> 62)
    {
      if (v79 < 0)
      {
        v92 = *&v0[v74];
      }

      v87 = sub_2283930D0();
    }

    else
    {
      v87 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v87)
    {
      break;
    }

    v88 = 0;
    while (1)
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x22AAB6D80](v88, v79);
      }

      else
      {
        if (v88 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v89 = *(v79 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      [v89 setActive_];

      ++v88;
      if (v91 == v87)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_28:
}

id *sub_22817FF40()
{
  v107 = sub_2283911B0();
  v1 = *(v107 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v107);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2283912A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228180F4C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v91 - v12;
  v103 = sub_2283911F0();
  v102 = *(v103 - 1);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_228391220();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2283912F0();
  v21 = *(v20 - 8);
  v105 = v20;
  v106 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v104 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_item;
  swift_beginAccess();
  v109 = v0;
  sub_22817E6C8(v0 + v24, v111);
  if (!v112)
  {
    sub_228181138(v111, &qword_280DDCD50, &qword_280DDCD60);
    goto LABEL_22;
  }

  v100 = v19;
  sub_2281810DC(0, &qword_280DDCD60);
  type metadata accessor for InteractionMedicationItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_228391150();
    v39 = v109;
    v40 = v109;
    v41 = sub_2283911A0();
    v42 = sub_2283925C0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v110 = v44;
      *v43 = 136446210;
      sub_22817E6C8(v39 + v24, v111);
      sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
      v45 = sub_228392040();
      v47 = sub_2281C96FC(v45, v46, &v110);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_22816B000, v41, v42, "Incorrect view model for InteractionMedicationItem: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAB7B80](v44, -1, -1);
      MEMORY[0x22AAB7B80](v43, -1, -1);
    }

    return (*(v1 + 8))(v4, v107);
  }

  v98 = v9;
  v107 = v110;
  v25 = v110[2];
  swift_beginAccess();
  v26 = *(v25 + 16);
  if (v26 >> 62)
  {
    goto LABEL_50;
  }

  v27 = v109;
  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_51;
  }

LABEL_5:
  v97 = v5;
  v96 = v6;
  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v26 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {

    v28 = MEMORY[0x22AAB6D80](0, v26);

LABEL_8:
    v29 = [v28 severity];

    v30 = [v29 severityLevel];
    v31 = v30 != 1;
    v6 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden;
    v32 = v27[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden];
    v27[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHidden] = v31;
    v5 = v15;
    v15 = v108;
    if (v31 == v32)
    {
      break;
    }

    v33 = sub_22817E880();
    [v33 setHidden_];

    v26 = *&v27[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonHiddenConstraints];
    v95 = v5;
    v99 = v16;
    if (v26)
    {
      v15 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 >> 62)
      {
        v34 = sub_2283930D0();
      }

      else
      {
        v34 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v34)
      {
        v35 = 0;
        v16 = (v26 & 0xC000000000000001);
        v5 = &off_2785F4000;
        while (1)
        {
          if (v16)
          {
            v36 = MEMORY[0x22AAB6D80](v35, v26);
          }

          else
          {
            if (v35 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v36 = *(v26 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          [v36 setActive_];

          ++v35;
          if (v38 == v34)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_25:

      v5 = v95;
      v16 = v99;
      v15 = v108;
    }

    v26 = *&v27[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints];
    if (!v26)
    {
      break;
    }

    v15 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        v90 = *&v27[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionMedicationCell_titleButtonVisibleConstraints];
      }

      v49 = sub_2283930D0();
    }

    else
    {
      v49 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v49)
    {
LABEL_38:

      v15 = v108;
      v5 = v95;
      v16 = v99;
      break;
    }

    v50 = 0;
    v16 = (v26 & 0xC000000000000001);
    v5 = 1;
    while (1)
    {
      if (v16)
      {
        v51 = MEMORY[0x22AAB6D80](v50, v26);
      }

      else
      {
        if (v50 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v51 = *(v26 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      [v51 setActive_];

      ++v50;
      if (v53 == v49)
      {
        goto LABEL_38;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v89 = sub_2283930D0();
    v27 = v109;
    if (v89)
    {
      goto LABEL_5;
    }

LABEL_51:
    __break(1u);
  }

  v54 = sub_22817E98C();
  v55 = v107;
  sub_228180FB0(v107 + 24, v111);
  v56 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  sub_228181014(v111, &v54[v56], &qword_27D823888, &qword_27D826170);
  swift_endAccess();
  sub_228226168();

  sub_228181138(v111, &qword_27D823888, &qword_27D826170);
  v57 = sub_22817EA20();
  v58 = v55[8];
  v59 = v55[9];

  v60 = sub_228391FC0();

  [v57 setText_];

  v61 = sub_22817EC44();
  v62 = v55[20];
  v63 = v55[21];

  v64 = sub_228391FC0();

  [v61 setText_];

  result = HKIntegerFormatter();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v26 = result;
  v65 = v55[2];
  swift_beginAccess();
  v66 = *(v65 + 16);
  if (v66 >> 62)
  {
LABEL_54:
    sub_2283930D0();
    goto LABEL_42;
  }

  v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_42:
  v68 = sub_2283924E0();
  v69 = [v26 stringFromNumber_];

  if (v69)
  {
    sub_228392000();

    LODWORD(v95) = *MEMORY[0x277D74A98];
    v94 = v16[13];
    v70 = v100;
    v94(v100);
    v71 = sub_228391230();
    v72 = *(v71 - 8);
    v73 = v5;
    v92 = *(v72 + 56);
    v93 = v72 + 56;
    v92(v15, 1, 1, v71);
    v74 = v101;
    sub_2283911E0();
    v75 = v104;
    sub_2283912B0();

    (*(v102 + 8))(v74, v103);
    v103 = v16[1];
    v99 = v16 + 1;
    v76 = v73;
    v103(v70, v73);
    sub_228180F4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v77 = v106;
    v78 = *(v106 + 72);
    v79 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_228397F30;
    v81 = v105;
    (*(v77 + 16))(v80 + v79, v75, v105);
    (v94)(v70, v95, v76);
    v92(v108, 1, 1, v71);
    v82 = v98;
    sub_228391290();
    sub_228391260();
    (*(v96 + 8))(v82, v97);
    v103(v70, v76);
    sub_2283928F0();

    return (*(v77 + 8))(v75, v81);
  }

  else
  {
    sub_228180F4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v83 = *(v106 + 72);
    v84 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    v85 = v100;
    (v16[13])(v100, *MEMORY[0x277D74A98], v5);
    v86 = sub_228391230();
    (*(*(v86 - 8) + 56))(v15, 1, 1, v86);
    v87 = v5;
    v88 = v98;
    sub_228391290();
    sub_228391260();
    (*(v96 + 8))(v88, v97);
    (v16[1])(v85, v87);
    sub_2283928F0();
  }
}

id sub_228180D04()
{
  v1 = *(v0 + 16);
  sub_22817F298();
  return sub_22817F4B0();
}

id InteractionMedicationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionMedicationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_228180ED0()
{
  if (!qword_280DDCE30)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCE30);
    }
  }
}

uint64_t sub_228180F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_228180F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228180FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_228181014(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_228181084(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_228181084(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281810DC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_228181138(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_228181084(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for ShapeStepViewController()
{
  result = qword_27D823898;
  if (!qword_27D823898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228181260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228181F60(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-v8];
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30[-v12];
  v14 = qword_27D823890;
  v15 = sub_2283909E0();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_228181EDC();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v3 + v14) = sub_228391890();
  *(v3 + qword_27D828970) = MEMORY[0x277D84FA0];
  v31 = 0;
  v19 = type metadata accessor for VisualizationShapeDataSource();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v23 = sub_2281F0A88(v22, &v31);
  sub_228181FB4(a1, v9);
  sub_228181FB4(v9, v3 + qword_27D828B18);
  sub_228182034();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = *(v23 + qword_27D824EA8);
  *(v3 + qword_27D824D88) = v24;
  *(v24 + 24) = v25;
  *(v3 + qword_27D824D90) = a2;
  sub_2283901F0();
  sub_228182110();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228397F40;
  v27 = MEMORY[0x277D10F80];
  *(v26 + 32) = v23;
  *(v26 + 40) = v27;
  swift_retain_n();

  sub_228390220();
  v28 = sub_228390480();
  sub_228181DBC(v9, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  sub_228181DBC(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v28;
}

void sub_22818153C(uint64_t a1)
{
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = qword_27D823890;
  v7 = sub_2283909E0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_228181EDC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a1 + v6) = sub_228391890();
  *(a1 + qword_27D828970) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

void sub_228181688(void *a1)
{
  v2 = v1;
  sub_228181F60(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  sub_228181F60(0, &qword_27D8238B0, sub_228181CBC);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  sub_228181CBC();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v18 animated:1];

  v19 = sub_22838F710();
  v29 = [a1 cellForItemAtIndexPath_];

  if (v29)
  {
    type metadata accessor for ShapeCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
      v22 = v20;
      swift_beginAccess();
      sub_22817E6C8(v22 + v21, v30);
      if (!v31)
      {

        sub_228181E7C(v30, sub_228181D50);
        (*(v14 + 56))(v11, 1, 1, v13);
        goto LABEL_10;
      }

      sub_22818217C(0, &qword_280DDCD60);
      v23 = swift_dynamicCast();
      (*(v14 + 56))(v11, v23 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v11, 1, v13) == 1)
      {

LABEL_10:
        sub_228181DBC(v11, &qword_27D8238B0, sub_228181CBC);
        return;
      }

      sub_228181E18(v11, v17);
      v25 = *(v2 + qword_27D823890);
      v26 = sub_2283909E0();
      v27 = *(v26 - 8);
      (*(v27 + 16))(v7, v17, v26);
      (*(v27 + 56))(v7, 0, 1, v26);

      sub_228391850();

      sub_228181DBC(v7, &qword_27D8238A8, MEMORY[0x277D11640]);
      sub_228181E7C(v17, sub_228181CBC);
    }

    else
    {
      v24 = v29;
    }
  }
}

uint64_t sub_228181AC4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228181688(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_228181BF0()
{
  v1 = *(v0 + qword_27D823890);

  v2 = *(v0 + qword_27D828970);
}

id sub_228181C30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228181C68(uint64_t a1)
{
  v2 = *(a1 + qword_27D823890);

  v3 = *(a1 + qword_27D828970);
}

void sub_228181CBC()
{
  if (!qword_27D8238B8)
  {
    sub_2283909E0();
    sub_2281820C8(&qword_27D8238C0, MEMORY[0x277D11640]);
    v0 = type metadata accessor for MedmojiConfigItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8238B8);
    }
  }
}

void sub_228181D50()
{
  if (!qword_280DDCD50)
  {
    sub_22818217C(255, &qword_280DDCD60);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCD50);
    }
  }
}

uint64_t sub_228181DBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228181F60(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228181E18(uint64_t a1, uint64_t a2)
{
  sub_228181CBC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228181E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228181EDC()
{
  if (!qword_27D8238C8)
  {
    sub_228181F60(255, &qword_27D8238A8, MEMORY[0x277D11640]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8238C8);
    }
  }
}

void sub_228181F60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228181FB4(uint64_t a1, uint64_t a2)
{
  sub_228181F60(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228182034()
{
  if (!qword_27D8238D8)
  {
    type metadata accessor for VisualizationShapeDataSource();
    sub_2281820C8(&qword_27D8238E0, type metadata accessor for VisualizationShapeDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8238D8);
    }
  }
}

uint64_t sub_2281820C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228182110()
{
  if (!qword_27D827750)
  {
    sub_22818217C(255, &qword_27D8238E8);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827750);
    }
  }
}

uint64_t sub_22818217C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2281821D8()
{
  v0 = sub_22838FDE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FDC0();
  v5 = sub_22838FD80();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t MedicationChartCellDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v0;
}

uint64_t MedicationChartCellDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_228182410()
{
  result = qword_27D8238F8;
  if (!qword_27D8238F8)
  {
    type metadata accessor for MedicationChartCellDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8238F8);
  }

  return result;
}

uint64_t type metadata accessor for MedicationChartCellDataSource()
{
  result = qword_27D823900;
  if (!qword_27D823900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22818259C(void *a1)
{
  v2 = type metadata accessor for MedicationChartCellDataSource();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  *(swift_allocObject() + qword_27D8238F0) = a1;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  v5 = *(sub_22838FEF0() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F40;
  *(v8 + 56) = &type metadata for MedicationChartItem;
  *(v8 + 64) = sub_2281827E4();
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  v9 = a1;
  sub_22838FED0();
  return sub_22838F920();
}

void sub_22818272C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228393430();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228182780()
{
  result = qword_27D827E00;
  if (!qword_27D827E00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D827E00);
  }

  return result;
}

unint64_t sub_2281827E4()
{
  result = qword_27D823920;
  if (!qword_27D823920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823920);
  }

  return result;
}

uint64_t OntologyDebugDisplayable<>.name.getter()
{
  [v0 type];
  v1 = HKStringFromUserDomainConceptPropertyType();
  v2 = sub_228392000();

  return v2;
}

uint64_t HKUserDomainConceptBasicProperty.value.getter()
{
  v1 = [v0 stringValue];
  if (!v1)
  {
    return 0x6F6E2065756C6156;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

uint64_t sub_228182924()
{
  v1 = [*v0 stringValue];
  if (!v1)
  {
    return 0x6F6E2065756C6156;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

uint64_t HKUserDomainConceptNamedQuantity.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_228392000();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_228182AD4();
  v7 = sub_228392020();
  MEMORY[0x22AAB5C80](v7);

  MEMORY[0x22AAB5C80](0x3A7374696E55202CLL, 0xE900000000000020);
  v8 = [v1 unitString];
  v9 = sub_228392000();
  v11 = v10;

  MEMORY[0x22AAB5C80](v9, v11);

  return 0x203A656D614ELL;
}

void sub_228182AD4()
{
  if (!qword_27D825070)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825070);
    }
  }
}

uint64_t HKUserDomainConceptLocalizedString.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 locale];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  MEMORY[0x22AAB5C80](0x3A65756C6156202CLL, 0xE900000000000020);
  v6 = [v1 stringValue];
  v7 = sub_228392000();
  v9 = v8;

  MEMORY[0x22AAB5C80](v7, v9);

  return 0x203A656C61636F4CLL;
}

uint64_t HKOntologyLocalizedEducationContent.value.getter()
{
  v1 = v0;
  sub_2283931D0();

  v2 = [v0 primarySection];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 localeIdentifier];

    v5 = sub_228392000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_228182AD4();
  v8 = sub_228392020();
  MEMORY[0x22AAB5C80](v8);

  MEMORY[0x22AAB5C80](0x203A74786554202CLL, 0xE800000000000000);
  v9 = [v1 primarySection];
  if (v9)
  {
    v10 = v9;
    sub_228392AA0();
  }

  v11 = sub_228392020();
  MEMORY[0x22AAB5C80](v11);

  return 0x203A656C61636F4CLL;
}

uint64_t OntologyIDDataSource.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  OntologyIDDataSource.init(with:)(a1);
  return v2;
}

void *OntologyIDDataSource.init(with:)(void *a1)
{
  v2 = v1;
  v1[6] = 0x7865542065657246;
  v1[7] = 0xE900000000000074;
  v1[8] = 4271950;
  v1[9] = 0xE300000000000000;
  v1[10] = a1;
  if (!a1)
  {
    v1[4] = 0xD000000000000032;
    v1[5] = 0x80000002283A7790;
    v1[2] = 4271950;
    v1[3] = 0xE300000000000000;
    v17 = MEMORY[0x277D84F90];
    v2[11] = MEMORY[0x277D84F90];
LABEL_20:
    v21 = 12;
    goto LABEL_28;
  }

  v3 = a1;
  v4 = [v3 firstConceptIdentifier];
  if (!v4)
  {
LABEL_19:
    v19 = v1[7];
    v1[4] = v1[6];
    v1[5] = v19;
    v20 = v1[9];
    v1[2] = v1[8];
    v1[3] = v20;
    v17 = MEMORY[0x277D84F90];
    v2[11] = MEMORY[0x277D84F90];

    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v3 propertyCollection];
  if (!v6)
  {

    goto LABEL_19;
  }

  v7 = v6;

  v8 = [v7 properties];
  sub_228183178();
  v9 = sub_2283921A0();

  v2[11] = v9;
  v10 = [v7 properties];
  v11 = sub_2283921A0();

  v29 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v26 = v7;
    v27 = v5;
    v28 = v3;
    v7 = 0;
    v3 = (v11 & 0xC000000000000001);
    v5 = (v11 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v14 = MEMORY[0x22AAB6D80](v7, v11);
      }

      else
      {
        if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v11 + 8 * v7 + 32);
      }

      v15 = v14;
      v16 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v14 isDeleted])
      {
      }

      else
      {
        sub_228393210();
        v13 = *(v29 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      ++v7;
      if (v16 == i)
      {
        v18 = v29;
        v5 = v27;
        v3 = v28;
        v7 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_25:

  v2[12] = v18;
  [v5 rawIdentifier];
  v2[2] = sub_228393420();
  v2[3] = v22;
  v23 = sub_228392940();
  v17 = v24;

  if (!v17)
  {
    v23 = v2[6];
    v17 = v2[7];
  }

  v2[4] = v23;
  v21 = 5;
LABEL_28:
  v2[v21] = v17;
  return v2;
}

unint64_t sub_228183178()
{
  result = qword_27D823928;
  if (!qword_27D823928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823928);
  }

  return result;
}

uint64_t OntologyIDDataSource.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return v0;
}

uint64_t OntologyIDDataSource.__deallocating_deinit()
{
  OntologyIDDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_2281832D0()
{
  v1 = v0 + qword_27D823950;
  if (*(v0 + qword_27D823950 + 8))
  {
    v2 = [objc_opt_self() sharedBehavior];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isiPad];

      v5 = 38.0;
      if (v4)
      {
        v5 = 72.0;
      }

      *v1 = v5;
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = *v1;
  }
}

uint64_t sub_228183370()
{
  v1 = qword_27D823980;
  if (*(v0 + qword_27D823980))
  {
    v2 = *(v0 + qword_27D823980);
  }

  else
  {
    v3 = *(v0 + qword_27D8239B0);
    v4 = sub_228390EA0();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = v3;
    v8 = v0;
    v2 = sub_228390E90();
    v9 = *(v0 + v1);
    *(v8 + v1) = v2;
  }

  return v2;
}

char *sub_228183428(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *a2;
    v7 = *(v2 + qword_27D8239B0);
    sub_228390890();
    v8 = v6;
    v9 = v7;
    v10 = v2;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v11 = sub_2283907E0();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_228390700();
    v15 = type metadata accessor for OntologyShardStateObserver();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v5 = OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(v8, v9, v14);
    v18 = *(v10 + v3);
    *(v10 + v3) = v5;
  }

  return v5;
}

uint64_t sub_228183554()
{
  v1 = qword_27D823998;
  if (*(v0 + qword_27D823998))
  {
    v2 = *(v0 + qword_27D823998);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for NetworkStateObserver();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_228391920();
    v7 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor;
    v8 = sub_228391B40();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    *(v2 + v7) = sub_228391B30();
    v11 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_228183624()
{
  v1 = qword_27D8239A0;
  v2 = *(v0 + qword_27D8239A0);
  if (v2)
  {
    v3 = *(v0 + qword_27D8239A0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2281836A8()
{
  v1 = qword_27D8239A8;
  if (*(v0 + qword_27D8239A8))
  {
    v2 = *(v0 + qword_27D8239A8);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v4 = sub_2283907E0();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_228390700();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22818377C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2281837FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_228183880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_2281838F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t (*sub_228183970(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_228183A14;
}

uint64_t (*sub_228183A58(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823930;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_228183BF8;
}

uint64_t (*sub_228183C4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_22818E284;
}

uint64_t sub_228183CF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  sub_22818D028(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228183D84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t *a7, unint64_t *a8)
{
  v25 = a8;
  sub_22818D028(0, a5, a6, MEMORY[0x277CBCEC0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(v14 + 16);
  v21(&v25 - v19, a1, v13);
  v22 = *a2;
  v21(v18, v20, v13);
  v23 = *a7;
  swift_beginAccess();
  sub_22818D028(0, v25, a6, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_228183F54(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_22818D028(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228184008(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  sub_22818D028(0, a2, a3, MEMORY[0x277CBCEC0]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - v13, a1, v10);
  v14 = *a4;
  swift_beginAccess();
  sub_22818D028(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v11 + 8))(a1, v10);
}

uint64_t (*sub_228184168(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823940;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_22818E288;
}

uint64_t sub_22818431C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_2281843AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_228184430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_2281844B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t (*sub_22818451C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_228391950();
  return sub_22818E284;
}

void sub_2281845C0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t (*sub_228184668(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_27D823948;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_228391930();
  swift_endAccess();
  return sub_22818E288;
}

void sub_228184808(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_228391940();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_228391940();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_228184970(char a1)
{
  if (!a1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_9;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t _s19HealthMedicationsUI30ScheduleUnavailableDeviceStateV0F0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_228184B2C()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_228184B70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27D828998;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_228184BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D828998;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  return sub_228184C38();
}

id sub_228184C38()
{
  v1 = qword_27D828998;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(v0 + qword_27D823A00) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  if ((v21 & 1) == 0)
  {
    if (*(*(v0 + v1) + 16))
    {
      type metadata accessor for NewMedicationsOnboardingDataSource();
      v4 = v0;
      v5 = sub_22838FD40();
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = (v5 + 40);
        while (1)
        {
          v9 = *(v8 - 1) == 0xD000000000000010 && 0x80000002283A7870 == *v8;
          if (v9 || (sub_228393460() & 1) != 0)
          {
            break;
          }

          ++v7;
          v8 += 2;
          if (v6 == v7)
          {
            goto LABEL_14;
          }
        }

        sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_228397F40;
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v11 = sub_22838F0C0();
        v13 = v12;
        type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
        sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell);
        v14 = sub_22838FBB0();
        v16 = v15;
        *(v10 + 56) = &type metadata for MedicationOnboardingSuggestionsHeaderItem;
        *(v10 + 64) = sub_22818C1E4();
        v17 = swift_allocObject();
        *(v10 + 32) = v17;
        v17[2] = v11;
        v17[3] = v13;
        v17[4] = v14;
        v17[5] = v16;
        v18 = *(v4 + v1);

        v20 = sub_228194A7C(v19);

        sub_2281D55FC(v20);
        sub_22838FF60();
      }

      else
      {
LABEL_14:
      }
    }

    return sub_228188B28();
  }

  return result;
}

uint64_t sub_228184F38()
{
  v1 = qword_27D828998;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id sub_228184F80(uint64_t a1)
{
  v3 = qword_27D828998;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return sub_228184C38();
}

id (*sub_228184FDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228185040;
}

id sub_228185040(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228184C38();
  }

  return result;
}

void sub_228185074(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = sub_22838F4A0();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390600();
  v8 = sub_2283905D0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v9 = sub_22838F0C0();
  v26 = v10;
  v27 = v9;
  v11 = 0;
  v12 = 0;
  if (v8)
  {
    v11 = sub_228184970(*(v2 + qword_27D823A00));
    v12 = v13;
  }

  sub_228390970();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_228391FC0();
  v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

  if (v17)
  {
    type metadata accessor for MedicationOnboardingHeaderCell();
    sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell);
    v18 = sub_22838FBB0();
    v20 = v19;
    sub_22838F490();
    v21 = sub_22838F450();
    v23 = v22;
    (*(v4 + 8))(v7, v28);
    *a1 = v21;
    a1[1] = v23;
    v24 = v26;
    a1[2] = v27;
    a1[3] = v24;
    a1[4] = v11;
    a1[5] = v12;
    a1[6] = v17;
    a1[7] = v18;
    a1[8] = v20;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22818531C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_228391970();
  }

  return result;
}

uint64_t sub_2281853A0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_228390460();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v32 - v7;
  v8 = sub_22838FFC0();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_228391590();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22818C128(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228397F40;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v1;
  sub_228391960();

  v16 = sub_2282AE540(v43[0], v43[1]);
  v18 = v17;

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_22818E210();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_22838F0C0();
  if (*(v15 + 16))
  {
    sub_228391FD0();
  }

  sub_228391540();
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  v20 = sub_228391450();
  sub_228391410();
  v20(v43, 0);
  v21 = sub_2283914C0();
  *v22 = 0x3FF0000000000000;
  v21(v43, 0);
  v23 = [objc_opt_self() tintColor];
  v24 = sub_228391450();
  sub_228391420();
  v24(v43, 0);
  v25 = v36;
  v43[3] = v36;
  v43[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, v25);
  swift_allocObject();
  swift_weakInit();
  v27 = v34;
  v28 = v35;
  *v35 = 1;
  (*(v33 + 104))(v28, *MEMORY[0x277D10F90], v27);

  v29 = v38;
  sub_228391380();
  v30 = sub_2283913A0();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  (*(v40 + 104))(v39, *MEMORY[0x277D11140], v41);
  sub_228390160();
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_2281859D4()
{
  type metadata accessor for NewMedicationOnboardingViewController();
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_27D8239C0);

      v3 = *(v2 + 16);
    }

    return sub_2282FA14C();
  }

  return result;
}

uint64_t sub_228185A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  if (v8 == 1)
  {
    if (*(*(v0 + qword_27D8239C0) + 16))
    {
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      v2 = *(sub_22838FEF0() - 8);
      v3 = *(v2 + 72);
      v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F30;

      sub_228194894(v5);

      sub_22838FED0();
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_228397F40;
      *(v6 + 56) = sub_228390170();
      *(v6 + 64) = sub_22818B6E8(&qword_27D823AB0, MEMORY[0x277D11000]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
      sub_2281853A0(boxed_opaque_existential_1);
      sub_22838FED0();
      sub_22838FF50();
    }

    else
    {
      return sub_22838FF50();
    }
  }

  return result;
}

uint64_t sub_228185D08()
{
  v56 = MEMORY[0x277D85248];
  v1 = MEMORY[0x277D83D88];
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v42 - v4;
  v55 = MEMORY[0x277D85250];
  sub_22818C294(0, &qword_27D823BF0, MEMORY[0x277D85250], v1);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v42 - v7;
  v50 = sub_228392770();
  v48 = *(v50 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D839B0];
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  sub_22818DF5C();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818E004();
  v49 = v23;
  v51 = *(v23 - 8);
  v24 = *(v51 + 64);
  MEMORY[0x28223BE20](v23);
  v43 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818E098();
  v27 = *(v26 - 8);
  v52 = v26;
  v53 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v45 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  swift_beginAccess();
  sub_22818D028(0, &qword_280DDBBD0, v10, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v10);
  sub_228391A30();
  (*(v13 + 8))(v16, v12);
  sub_22818B6E8(&qword_27D823C08, sub_22818DF5C);
  sub_228391AA0();
  (*(v19 + 8))(v22, v18);
  v30 = v44;
  sub_228392740();
  v32 = v47;
  v31 = v48;
  v33 = v50;
  (*(v48 + 56))(v47, 1, 1, v50);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v34 = sub_228392790();
  v57 = v34;
  v35 = sub_228392730();
  v36 = v54;
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  sub_22818B6E8(&qword_27D823C18, sub_22818E004);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v37 = v45;
  v38 = v49;
  v39 = v43;
  sub_228391A20();
  sub_22818E198(v36, &qword_280DDBAD0, v56);

  sub_22818E198(v32, &qword_27D823BF0, v55);
  (*(v31 + 8))(v30, v33);
  (*(v51 + 8))(v39, v38);
  swift_allocObject();
  swift_weakInit();
  sub_22818B6E8(&unk_27D823C20, sub_22818E098);
  v40 = v52;
  sub_228391AC0();

  (*(v53 + 8))(v37, v40);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22818645C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2281864C0()
{
  v59 = MEMORY[0x277CC9E70];
  sub_22818C294(0, &qword_280DDB938, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v57 = &v45 - v2;
  v3 = MEMORY[0x277CBCEC0];
  sub_22818D028(0, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus, MEMORY[0x277CBCEC0]);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  sub_22818CD7C();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D839B0];
  sub_22818D028(0, &unk_280DDBBE0, MEMORY[0x277D839B0], v3);
  v15 = v14;
  v48 = *(v14 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  sub_22818CE24();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v46 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818CF28();
  v56 = v26;
  v58 = *(v26 - 8);
  v27 = *(v58 + 64);
  MEMORY[0x28223BE20](v26);
  v53 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228183400();
  swift_beginAccess();
  v29 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &qword_280DDBBD0, v13, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_228183414();
  swift_beginAccess();
  sub_228391930();
  swift_endAccess();

  sub_228183554();
  swift_beginAccess();
  sub_22818D028(0, &qword_27D823B40, &type metadata for NetworkStateObserver.ConnectionStatus, v29);
  sub_228391930();
  swift_endAccess();

  sub_22818C40C(&qword_27D823B18, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus);
  sub_22818D078();
  v30 = v47;
  v31 = v49;
  sub_228391AA0();
  (*(v50 + 8))(v8, v31);
  sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, MEMORY[0x277D839B0]);
  sub_22818B6E8(&qword_27D823B28, sub_22818CD7C);
  v32 = v46;
  v33 = v30;
  v34 = v51;
  sub_2283919C0();
  (*(v52 + 8))(v33, v34);
  v35 = *(v48 + 8);
  v35(v19, v15);
  v35(v21, v15);
  v36 = [objc_opt_self() mainRunLoop];
  v60 = v36;
  v37 = sub_228392EA0();
  v38 = v57;
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  sub_22817A958(0, &qword_280DDB928, 0x277CBEB88);
  sub_22818B6E8(&qword_27D823B38, sub_22818CE24);
  sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88);
  v40 = v53;
  v39 = v54;
  sub_228391A70();
  sub_22818E198(v38, &qword_280DDB938, v59);

  (*(v55 + 8))(v32, v39);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_22818D0CC;
  *(v42 + 24) = v41;
  sub_22818B6E8(&qword_27D823B50, sub_22818CF28);
  v43 = v56;
  sub_228391AC0();

  (*(v58 + 8))(v40, v43);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228186CD4(char a1, char a2, unsigned __int8 *a3)
{
  v5 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_228391960();

    if (v23)
    {
    }

    if (a1 & 1) != 0 && (a2 & 1) != 0 || (sub_2281836A8(), v8 = sub_228390740(), , (v8))
    {
      sub_228188B28();
      v9 = *(v7 + qword_27D823978);
      v10 = *(v7 + qword_27D8239B0);
      v11 = sub_228390660();
      v12 = sub_228390650();
      sub_2281D5860(v12);
      sub_228183370();
      sub_22818D10C(v11);
    }

    if (v5 == 1)
    {
      sub_228187188();
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      v13 = *(sub_22838FEF0() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_228397F40;
      v17 = type metadata accessor for ShardSpinnerDownloadItem();
      v18 = swift_allocObject();
      *(v16 + 56) = v17;
      *(v16 + 64) = sub_22818B6E8(&qword_27D823B60, type metadata accessor for ShardSpinnerDownloadItem);
    }

    else
    {
      sub_22818C294(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      v19 = *(sub_22838FEF0() - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22818C128(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_228397F40;
      v22 = type metadata accessor for ConnectivityIssueItem();
      v18 = swift_allocObject();
      *(v16 + 56) = v22;
      *(v16 + 64) = sub_22818B6E8(&qword_27D823B58, type metadata accessor for ConnectivityIssueItem);
    }

    *(v16 + 32) = v18;
    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

void sub_228187188()
{
  v1 = *v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_228393600();
    v18 = v2;
    v13 = sub_2281C96FC(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] Updating ontology...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    (*(v3 + 8))(v6, v18);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v14 = sub_228183624();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_22818CD5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  [v14 updateOntologyForReason:5 completion:v16];
  _Block_release(v16);
}

uint64_t sub_22818742C(char a1, void *a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (a1)
  {
    sub_228391150();
    v12 = sub_2283911A0();
    v13 = sub_2283925E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136446210;
      v16 = sub_228393600();
      v18 = sub_2281C96FC(v16, v17, &v33);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_22816B000, v12, v13, "[%{public}s] Updated ontology successfully", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAB7B80](v15, -1, -1);
      MEMORY[0x22AAB7B80](v14, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_228391150();
    v20 = a2;
    v21 = sub_2283911A0();
    v22 = sub_2283925E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446466;
      v25 = sub_228393600();
      v27 = sub_2281C96FC(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v32 = a2;
      v28 = a2;
      sub_22818C128(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v29 = sub_228392020();
      v31 = sub_2281C96FC(v29, v30, &v33);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_22816B000, v21, v22, "[%{public}s] Error updating ontology: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_228187770()
{
  v62 = MEMORY[0x277D85248];
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v47 - v3;
  v59 = sub_228392770();
  v57 = *(v59 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D837D0];
  sub_22818D028(0, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
  v52 = v9;
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  sub_22818C2F8();
  v58 = v13;
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C4B4();
  v17 = *(v16 - 8);
  v63 = v16;
  v64 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C5B4();
  v21 = *(v20 - 8);
  v65 = v20;
  v66 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v55 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C76C();
  v25 = *(v24 - 8);
  v67 = v24;
  v68 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v56 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C800();
  v29 = *(v28 - 8);
  v69 = v28;
  v70 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v61 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v0;
  swift_beginAccess();
  sub_22818D028(0, &unk_27D8278B0, v8, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v32 = sub_228392790();
  v71 = v32;
  v50 = sub_228392730();
  v51 = *(*(v50 - 8) + 56);
  v51(v4, 1, 1, v50);
  sub_22818C40C(&qword_27D823A38, &qword_27D823938, v8);
  v49 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v33 = v48;
  v34 = v52;
  sub_228391A80();
  v35 = v62;
  sub_22818E198(v4, &qword_280DDBAD0, v62);

  (*(v57 + 8))(v7, v59);
  (*(v54 + 8))(v12, v34);
  swift_allocObject();
  swift_weakInit();
  sub_22818C560(0);
  sub_22818B6E8(&qword_27D823A58, sub_22818C2F8);
  v36 = v53;
  v37 = v58;
  sub_2283919F0();

  (*(v60 + 8))(v33, v37);
  sub_22818B6E8(&qword_27D823A70, sub_22818C4B4);
  sub_22818B6E8(&qword_27D823A78, sub_22818C560);
  v38 = v55;
  v39 = v63;
  sub_228391AB0();
  (*(v64 + 8))(v36, v39);
  v71 = MEMORY[0x277D84F90];
  sub_22818B6E8(&qword_27D823A90, sub_22818C5B4);
  v40 = v56;
  v41 = v65;
  sub_2283919B0();
  (*(v66 + 8))(v38, v41);
  v42 = sub_228392790();
  v71 = v42;
  v51(v4, 1, 1, v50);
  sub_22818B6E8(&qword_27D823AA0, sub_22818C76C);
  v43 = v61;
  v44 = v67;
  sub_228391A70();
  sub_22818E198(v4, &qword_280DDBAD0, v35);

  (*(v68 + 8))(v40, v44);
  swift_allocObject();
  swift_weakInit();
  sub_22818B6E8(&qword_27D823AA8, sub_22818C800);
  v45 = v69;
  sub_228391AC0();

  (*(v70 + 8))(v43, v45);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228188104@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  sub_22818C910();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818C294(0, &qword_27D823AD8, sub_22818C580, MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  sub_22818CA6C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + qword_27D823970 + 32);
    __swift_project_boxed_opaque_existential_0((Strong + qword_27D823970), *(Strong + qword_27D823970 + 24));
    v30 = sub_228390CA0();
    sub_22818C9BC();
    sub_22818C580(0);
    sub_22818B6E8(&qword_27D823AD0, sub_22818C9BC);
    sub_2283919F0();

    sub_22818B6E8(&qword_27D823AF0, sub_22818C910);
    v23 = v28;
    v24 = sub_228391990();

    result = (*(v27 + 8))(v6, v23);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    sub_22818C580(0);
    sub_2283918C0();
    sub_2281810DC(0, &qword_280DDB860);
    sub_2283918A0();
    (*(v9 + 8))(v12, v8);
    sub_22818B6E8(&qword_27D823AE8, sub_22818CA6C);
    v24 = sub_228391990();
    result = (*(v15 + 8))(v18, v14);
  }

  *v29 = v24;
  return result;
}

uint64_t sub_228188514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = sub_22838F4A0();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818CB14();
  v56 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = (&v42 - v12);
  MEMORY[0x28223BE20](v11);
  v54 = &v42 - v13;
  v53 = type metadata accessor for MedicationSearchItem(0);
  v51 = *(v53 - 8);
  v14 = *(v51 + 64);
  result = MEMORY[0x28223BE20](v53);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v42 = a2;
    v59 = MEMORY[0x277D84F90];
    sub_2281C9F74(0, v19, 0);
    v48 = type metadata accessor for MedicationSearchCell();
    v20 = v59;
    v50 = *(v18 + 16);
    result = sub_228390B70();
    v21 = 0;
    v22 = *(result - 8);
    v46 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v47 = result;
    v44 = v22 + 32;
    v45 = v22 + 16;
    v43 = (v4 + 8);
    v49 = v19;
    while (v50 != v21)
    {
      v23 = v56;
      v24 = *(v56 + 48);
      v25 = v47;
      v26 = v54;
      (*(v22 + 16))(&v54[v24], v46 + *(v22 + 72) * v21, v47);
      v27 = v52;
      *v52 = v21;
      v28 = *(v22 + 32);
      v28(v27 + *(v23 + 48), &v26[v24], v25);
      v29 = v55;
      sub_22818CC38(v27, v55);
      v28(v17, (v29 + *(v23 + 48)), v25);
      type metadata accessor for MedicationSearchItem.Source(0);
      swift_storeEnumTagMultiPayload();
      v30 = v53;
      v31 = &v17[*(v53 + 24)];
      v32 = v57;
      sub_22838F490();
      v33 = sub_22838F450();
      v35 = v34;
      (*v43)(v32, v58);
      *v31 = v33;
      v31[1] = v35;
      v36 = &v17[*(v30 + 28)];
      sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell);
      v37 = sub_22838FBB0();
      v39 = v38;
      sub_22818CC9C(v27);
      *v36 = v37;
      v36[1] = v39;
      *&v17[*(v30 + 20)] = v21;
      v59 = v20;
      v41 = *(v20 + 16);
      v40 = *(v20 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2281C9F74(v40 > 1, v41 + 1, 1);
        v20 = v59;
      }

      ++v21;
      *(v20 + 16) = v41 + 1;
      result = sub_22818CCF8(v17, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41);
      if (v49 == v21)
      {
        a2 = v42;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *a2 = v20;
  }

  return result;
}

uint64_t sub_22818896C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_228391960();

    if (v7 == 1)
    {
      if (!*(v1 + 16))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_228391960();

        sub_2283920C0();

        v4 = *(v3 + qword_27D823970 + 32);
        __swift_project_boxed_opaque_existential_0((v3 + qword_27D823970), *(v3 + qword_27D823970 + 24));
        sub_228390CB0();
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_228391970();
      v5 = sub_2281950A0(v1);
      v6 = *(v3 + qword_27D8239C0);
      *(v3 + qword_27D8239C0) = v5;

      sub_228185A7C();
    }
  }

  return result;
}