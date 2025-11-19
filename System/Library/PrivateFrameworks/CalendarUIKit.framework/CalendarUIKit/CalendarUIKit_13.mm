uint64_t EventRecurrenceRuleModelObject.hash(into:)()
{
  v1 = v0;
  v2 = sub_1CAD4C0F4();
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  sub_1CAB23A9C(v1, &v44 - v12, &unk_1EC463290);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    sub_1CACC4050(v13, v10);
    sub_1CAD4EAA4();
    sub_1CAB23A9C(v10, v6, &unk_1EC465A70);
    v14 = v45;
    if ((*(v45 + 48))(v6, 1, v2) == 1)
    {
      sub_1CAD4EAA4();
    }

    else
    {
      v15 = v44;
      (*(v14 + 32))(v44, v6, v2);
      sub_1CAD4EAA4();
      sub_1CACCA264(&qword_1EC4623F8, MEMORY[0x1E6969530]);
      sub_1CAD4DEB4();
      (*(v14 + 8))(v15, v2);
    }

    MEMORY[0x1CCAA7D10](*&v10[*(v7 + 20)]);
    sub_1CABA6514(v10, type metadata accessor for EventRecurrenceEndModelObject);
  }

  v16 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1CCAA7D10](*(v1 + v16[5]));
  MEMORY[0x1CCAA7D10](*(v1 + v16[6]));
  v17 = v1 + v16[7];
  if (*(v17 + 8))
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v18 = *v17;
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](v18);
  }

  v19 = *(v1 + v16[8]);
  if (v19)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v19 + 16));
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 40);
      do
      {
        v22 = *v21;
        MEMORY[0x1CCAA7D10](*(v21 - 1));
        MEMORY[0x1CCAA7D10](v22);
        v21 += 2;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v23 = *(v1 + v16[9]);
  if (v23)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 32);
      do
      {
        v26 = *v25++;
        MEMORY[0x1CCAA7D10](v26);
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v27 = *(v1 + v16[10]);
  if (v27)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v27 + 16));
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 32);
      do
      {
        v30 = *v29++;
        MEMORY[0x1CCAA7D10](v30);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v31 = *(v1 + v16[11]);
  if (v31)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v31 + 16));
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = (v31 + 32);
      do
      {
        v34 = *v33++;
        MEMORY[0x1CCAA7D10](v34);
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v35 = *(v1 + v16[12]);
  if (v35)
  {
    sub_1CAD4EAA4();
    MEMORY[0x1CCAA7D10](*(v35 + 16));
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = (v35 + 32);
      do
      {
        v38 = *v37++;
        MEMORY[0x1CCAA7D10](v38);
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v39 = *(v1 + v16[13]);
  if (!v39)
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();
  result = MEMORY[0x1CCAA7D10](*(v39 + 16));
  v41 = *(v39 + 16);
  if (v41)
  {
    v42 = (v39 + 32);
    do
    {
      v43 = *v42++;
      result = MEMORY[0x1CCAA7D10](v43);
      --v41;
    }

    while (v41);
  }

  return result;
}

uint64_t EventRecurrenceRuleModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventRecurrenceRuleModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC6CC8()
{
  sub_1CAD4EA84();
  EventRecurrenceRuleModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC6D0C()
{
  sub_1CAD4EA84();
  EventRecurrenceRuleModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC6D98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  v10 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v11(v9, 1, 1, v10);
  v12 = v9 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v8[8];
  *(v9 + v13) = 0;
  v14 = v8[9];
  *(v9 + v14) = 0;
  v15 = v8[10];
  *(v9 + v15) = 0;
  v16 = v8[11];
  *(v9 + v16) = 0;
  v17 = v8[12];
  *(v9 + v17) = 0;
  v18 = v8[13];
  *(v9 + v18) = 0;
  sub_1CABC6AC8(v7, v9, &unk_1EC463290);
  v19 = v22;
  *(v9 + v8[5]) = v21;
  *(v9 + v8[6]) = v19;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v9 + v13) = 0;

  *(v9 + v14) = 0;

  *(v9 + v15) = 0;

  *(v9 + v16) = 0;

  *(v9 + v17) = 0;

  *(v9 + v18) = 0;
}

uint64_t sub_1CACC7048@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1CACCA1A8(v6, a3, type metadata accessor for EventRecurrenceRuleModelObject);
}

uint64_t EventRecurrenceRuleModelObject.normalized()@<X0>(uint64_t a1@<X8>)
{
  sub_1CACCA1A8(v1, a1, type metadata accessor for EventRecurrenceRuleModelObject);
  sub_1CAB21B68(a1, &unk_1EC463290);
  v3 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t EventRecurrenceDayOfWeekModelObject.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1CCAA7D10](*v0);
  return MEMORY[0x1CCAA7D10](v1);
}

uint64_t EventRecurrenceDayOfWeekModelObject.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  MEMORY[0x1CCAA7D10](v2);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC7280()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  MEMORY[0x1CCAA7D10](v2);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC72DC()
{
  v1 = v0[1];
  MEMORY[0x1CCAA7D10](*v0);
  return MEMORY[0x1CCAA7D10](v1);
}

uint64_t sub_1CACC7318()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  MEMORY[0x1CCAA7D10](v2);
  return sub_1CAD4EAC4();
}

uint64_t EventRecurrenceEndModelObject.occurrenceCount.setter(uint64_t a1)
{
  result = type metadata accessor for EventRecurrenceEndModelObject(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EventRecurrenceEndModelObject.hash(into:)()
{
  v1 = v0;
  v2 = sub_1CAD4C0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1CAB23A9C(v1, &v11 - v7, &unk_1EC465A70);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1CAD4EAA4();
    sub_1CACCA264(&qword_1EC4623F8, MEMORY[0x1E6969530]);
    sub_1CAD4DEB4();
    (*(v3 + 8))(v5, v2);
  }

  v9 = type metadata accessor for EventRecurrenceEndModelObject(0);
  return MEMORY[0x1CCAA7D10](*(v1 + *(v9 + 20)));
}

uint64_t EventRecurrenceEndModelObject.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1CAD4C0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1CAD4EA84();
  sub_1CAB23A9C(v1, v8, &unk_1EC465A70);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1CAD4EAA4();
    sub_1CACCA264(&qword_1EC4623F8, MEMORY[0x1E6969530]);
    sub_1CAD4DEB4();
    (*(v3 + 8))(v5, v2);
  }

  v9 = type metadata accessor for EventRecurrenceEndModelObject(0);
  MEMORY[0x1CCAA7D10](*(v1 + *(v9 + 20)));
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC78C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x54664F736B656577;
    v6 = 0x664F7368746E6F6DLL;
    if (a1 != 8)
    {
      v6 = 0x7469736F50746573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 <= 6u)
    {
      return 0x6854664F73796164;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E65727275636572;
    v2 = 0x6C61767265746E69;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x6854664F73796164;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x636E657571657266;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CACC7A88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1CAD4C0F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1CAB23A9C(v4, &v13 - v10, &unk_1EC465A70);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1CAD4EAA4();
    sub_1CACCA264(&qword_1EC4623F8, MEMORY[0x1E6969530]);
    sub_1CAD4DEB4();
    (*(v6 + 8))(v8, v5);
  }

  return MEMORY[0x1CCAA7D10](*(v4 + *(a2 + 20)));
}

uint64_t sub_1CACC7C88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1CAD4C0F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1CAD4EA84();
  sub_1CAB23A9C(v4, v11, &unk_1EC465A70);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1CAD4EAA4();
    sub_1CACCA264(&qword_1EC4623F8, MEMORY[0x1E6969530]);
    sub_1CAD4DEB4();
    (*(v6 + 8))(v8, v5);
  }

  MEMORY[0x1CCAA7D10](*(v4 + *(a2 + 20)));
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACC7EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CACCAC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CACC7ED0(uint64_t a1)
{
  v2 = sub_1CACCA210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACC7F0C(uint64_t a1)
{
  v2 = sub_1CACCA210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventRecurrenceRuleModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466EC0);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventRecurrenceEndModelObject(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1CACCA210();
  v27 = v10;
  sub_1CAD4EAE4();
  v31 = v13;
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1CAB21B68(v31, &unk_1EC463290);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1CACCA264(&qword_1EC466ED0, type metadata accessor for EventRecurrenceEndModelObject);
    sub_1CAD4E874();
    sub_1CABC6AC8(v6, v13, &unk_1EC463290);
    type metadata accessor for EKRecurrenceFrequency(0);
    v34 = 1;
    sub_1CACCA264(&qword_1EC466ED8, type metadata accessor for EKRecurrenceFrequency);
    sub_1CAD4E8C4();
    *&v13[v11[5]] = v32;
    LOBYTE(v32) = 2;
    *&v13[v11[6]] = sub_1CAD4E8B4();
    type metadata accessor for EKWeekday(0);
    v34 = 3;
    sub_1CACCA264(&qword_1EC466EE0, type metadata accessor for EKWeekday);
    sub_1CAD4E874();
    v16 = &v13[v11[7]];
    v17 = v33;
    *v16 = v32;
    v16[8] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466EE8);
    v34 = 4;
    sub_1CACCA300(&qword_1EC466EF0, sub_1CACCA2AC);
    sub_1CAD4E874();
    *&v13[v11[8]] = v32;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AC8);
    v34 = 5;
    v25 = sub_1CACCA3CC(&qword_1EC466F00);
    sub_1CAD4E874();
    *&v13[v11[9]] = v32;
    v34 = 6;
    v24 = v18;
    sub_1CAD4E874();
    v23 = v11;
    *&v13[v11[10]] = v32;
    v34 = 7;
    sub_1CAD4E874();
    *&v31[v23[11]] = v32;
    v34 = 8;
    sub_1CAD4E874();
    *&v31[v23[12]] = v32;
    v34 = 9;
    sub_1CAD4E874();
    v19 = v11[13];
    (*(v29 + 8))(v27, v28);
    v20 = v31;
    *&v31[v19] = v32;
    sub_1CACCA1A8(v20, v26, type metadata accessor for EventRecurrenceRuleModelObject);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_1CABA6514(v20, type metadata accessor for EventRecurrenceRuleModelObject);
  }
}

uint64_t EventRecurrenceRuleModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACCA210();
  sub_1CAD4EB04();
  LOBYTE(v13) = 0;
  type metadata accessor for EventRecurrenceEndModelObject(0);
  sub_1CACCA264(&qword_1EC466F10, type metadata accessor for EventRecurrenceEndModelObject);
  sub_1CAD4E924();
  if (!v2)
  {
    v9 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v13 = *(v3 + v9[5]);
    v15 = 1;
    type metadata accessor for EKRecurrenceFrequency(0);
    sub_1CACCA264(&qword_1EC466F18, type metadata accessor for EKRecurrenceFrequency);
    sub_1CAD4E984();
    LOBYTE(v13) = 2;
    sub_1CAD4E964();
    v10 = (v3 + v9[7]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v13 = v11;
    v14 = v10;
    v15 = 3;
    type metadata accessor for EKWeekday(0);
    sub_1CACCA264(&qword_1EC466F20, type metadata accessor for EKWeekday);
    sub_1CAD4E924();
    v13 = *(v3 + v9[8]);
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466EE8);
    sub_1CACCA300(&qword_1EC466F28, sub_1CACCA378);
    sub_1CAD4E924();
    v13 = *(v3 + v9[9]);
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AC8);
    sub_1CACCA3CC(&qword_1EC466F38);
    sub_1CAD4E924();
    v13 = *(v3 + v9[10]);
    v15 = 6;
    sub_1CAD4E924();
    v13 = *(v3 + v9[11]);
    v15 = 7;
    sub_1CAD4E924();
    v13 = *(v3 + v9[12]);
    v15 = 8;
    sub_1CAD4E924();
    v13 = *(v3 + v9[13]);
    v15 = 9;
    sub_1CAD4E924();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CACC8B8C()
{
  if (*v0)
  {
    return 0x626D754E6B656577;
  }

  else
  {
    return 0x656854664F796164;
  }
}

uint64_t sub_1CACC8BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656854664F796164 && a2 == 0xEC0000006B656557;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626D754E6B656577 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CACC8CBC(uint64_t a1)
{
  v2 = sub_1CACCA438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACC8CF8(uint64_t a1)
{
  v2 = sub_1CACCA438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventRecurrenceDayOfWeekModelObject.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466F40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACCA438();
  sub_1CAD4EAE4();
  if (!v2)
  {
    type metadata accessor for EKWeekday(0);
    v12[15] = 0;
    sub_1CACCA264(&qword_1EC466EE0, type metadata accessor for EKWeekday);
    sub_1CAD4E8C4();
    v9 = v13;
    v12[14] = 1;
    v10 = sub_1CAD4E8B4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventRecurrenceDayOfWeekModelObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466F50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACCA438();
  sub_1CAD4EB04();
  v13 = v8;
  v12 = 0;
  type metadata accessor for EKWeekday(0);
  sub_1CACCA264(&qword_1EC466F20, type metadata accessor for EKWeekday);
  sub_1CAD4E984();
  if (!v2)
  {
    v11 = 1;
    sub_1CAD4E964();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1CACC9130()
{
  if (*v0)
  {
    return 0x6E6572727563636FLL;
  }

  else
  {
    return 0x65746144646E65;
  }
}

uint64_t sub_1CACC9178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572727563636FLL && a2 == 0xEF746E756F436563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CACC925C(uint64_t a1)
{
  v2 = sub_1CACCA48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACC9298(uint64_t a1)
{
  v2 = sub_1CACCA48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventRecurrenceEndModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466F58);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for EventRecurrenceEndModelObject(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CAD4C0F4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACCA48C();
  sub_1CAD4EAE4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CAB21B68(v11, &unk_1EC465A70);
  }

  else
  {
    v13 = v21;
    v25 = 0;
    sub_1CACCA264(&qword_1EC465020, MEMORY[0x1E6969530]);
    v14 = v22;
    sub_1CAD4E874();
    sub_1CABC6AC8(v23, v11, &unk_1EC465A70);
    v24 = 1;
    v16 = sub_1CAD4E854();
    v18 = v17;
    (*(v13 + 8))(v8, v14);
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    *&v11[*(v9 + 20)] = v19;
    sub_1CACCA1A8(v11, v20, type metadata accessor for EventRecurrenceEndModelObject);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CABA6514(v11, type metadata accessor for EventRecurrenceEndModelObject);
  }
}

uint64_t EventRecurrenceEndModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466F68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACCA48C();
  sub_1CAD4EB04();
  v8[15] = 0;
  sub_1CAD4C0F4();
  sub_1CACCA264(&qword_1EC462400, MEMORY[0x1E6969530]);
  sub_1CAD4E924();
  if (!v1)
  {
    type metadata accessor for EventRecurrenceEndModelObject(0);
    v8[14] = 1;
    sub_1CAD4E964();
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL _s13CalendarUIKit29EventRecurrenceEndModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v21 - v13, &unk_1EC465A70);
  sub_1CAB23A9C(a2, &v14[v15], &unk_1EC465A70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &unk_1EC465A70);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1CACCA264(&unk_1EC465A80, MEMORY[0x1E6969530]);
      v18 = sub_1CAD4DED4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CAB21B68(v14, &unk_1EC465A70);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1CAB21B68(v14, &qword_1EC464E40);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1CAB21B68(v14, &unk_1EC465A70);
LABEL_9:
  v20 = type metadata accessor for EventRecurrenceEndModelObject(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

BOOL _s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466FE0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v48 - v13, &unk_1EC463290);
  sub_1CAB23A9C(a2, &v14[v15], &unk_1EC463290);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &unk_1EC463290);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1CACC4050(&v14[v15], v7);
      v17 = _s13CalendarUIKit29EventRecurrenceEndModelObjectV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CABA6514(v7, type metadata accessor for EventRecurrenceEndModelObject);
      sub_1CABA6514(v10, type metadata accessor for EventRecurrenceEndModelObject);
      sub_1CAB21B68(v14, &unk_1EC463290);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_1CABA6514(v10, type metadata accessor for EventRecurrenceEndModelObject);
LABEL_6:
    sub_1CAB21B68(v14, &qword_1EC466FE0);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1CAB21B68(v14, &unk_1EC463290);
LABEL_8:
  v18 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  if (*(a1 + v18[5]) != *(a2 + v18[5]) || *(a1 + v18[6]) != *(a2 + v18[6]))
  {
    return 0;
  }

  v19 = v18[7];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v18[8];
  v25 = *(a2 + v24);
  if (*(a1 + v24))
  {
    if (!v25)
    {
      return 0;
    }

    v26 = v18;
    v27 = sub_1CACA7AE0(*(a1 + v24), v25);
    v18 = v26;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v28 = v18[9];
  v29 = *(a2 + v28);
  if (*(a1 + v28))
  {
    if (!v29)
    {
      return 0;
    }

    v30 = v18;
    v31 = sub_1CACA7B58(*(a1 + v28), v29);
    v18 = v30;
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v18[10];
  v33 = *(a2 + v32);
  if (*(a1 + v32))
  {
    if (!v33)
    {
      return 0;
    }

    v34 = v18;
    v35 = sub_1CACA7B58(*(a1 + v32), v33);
    v18 = v34;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v18[11];
  v37 = *(a2 + v36);
  if (*(a1 + v36))
  {
    if (!v37)
    {
      return 0;
    }

    v38 = v18;
    v39 = sub_1CACA7B58(*(a1 + v36), v37);
    v18 = v38;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v40 = v18[12];
  v41 = *(a2 + v40);
  if (*(a1 + v40))
  {
    if (!v41)
    {
      return 0;
    }

    v42 = v18;
    v43 = sub_1CACA7B58(*(a1 + v40), v41);
    v18 = v42;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v18[13];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45)
  {
    return v46 && (sub_1CACA7B58(v45, v46) & 1) != 0;
  }

  return !v46;
}

uint64_t sub_1CACCA1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CACCA210()
{
  result = qword_1EC466EC8;
  if (!qword_1EC466EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466EC8);
  }

  return result;
}

uint64_t sub_1CACCA264(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CACCA2AC()
{
  result = qword_1EC466EF8;
  if (!qword_1EC466EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466EF8);
  }

  return result;
}

uint64_t sub_1CACCA300(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CACCA378()
{
  result = qword_1EC466F30;
  if (!qword_1EC466F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F30);
  }

  return result;
}

uint64_t sub_1CACCA3CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464AC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CACCA438()
{
  result = qword_1EC466F48;
  if (!qword_1EC466F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F48);
  }

  return result;
}

unint64_t sub_1CACCA48C()
{
  result = qword_1EC466F60;
  if (!qword_1EC466F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F60);
  }

  return result;
}

unint64_t sub_1CACCA544()
{
  result = qword_1EC466F70;
  if (!qword_1EC466F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F70);
  }

  return result;
}

void sub_1CACCA608()
{
  sub_1CACCA750(319, &qword_1EDA5F680, type metadata accessor for EventRecurrenceEndModelObject);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EKRecurrenceFrequency(319);
    if (v1 <= 0x3F)
    {
      sub_1CACCA750(319, &unk_1EC461DE8, type metadata accessor for EKWeekday);
      if (v2 <= 0x3F)
      {
        sub_1CACCA7A4(319, &qword_1EC461F58, &qword_1EC466EE8);
        if (v3 <= 0x3F)
        {
          sub_1CACCA7A4(319, &qword_1EC461F20, &qword_1EC464AC8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CACCA750(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4E4D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CACCA7A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1CAD4E4D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CACCA830()
{
  sub_1CACCA750(319, &qword_1EDA5F8D8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CACCA8F4()
{
  result = qword_1EC466F80;
  if (!qword_1EC466F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F80);
  }

  return result;
}

unint64_t sub_1CACCA94C()
{
  result = qword_1EC466F88;
  if (!qword_1EC466F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F88);
  }

  return result;
}

unint64_t sub_1CACCA9A4()
{
  result = qword_1EC466F90;
  if (!qword_1EC466F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F90);
  }

  return result;
}

unint64_t sub_1CACCA9FC()
{
  result = qword_1EC466F98;
  if (!qword_1EC466F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466F98);
  }

  return result;
}

unint64_t sub_1CACCAA54()
{
  result = qword_1EC466FA0;
  if (!qword_1EC466FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466FA0);
  }

  return result;
}

unint64_t sub_1CACCAAAC()
{
  result = qword_1EC466FA8;
  if (!qword_1EC466FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466FA8);
  }

  return result;
}

unint64_t sub_1CACCAB04()
{
  result = qword_1EC466FB0;
  if (!qword_1EC466FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466FB0);
  }

  return result;
}

unint64_t sub_1CACCAB5C()
{
  result = qword_1EC466FB8;
  if (!qword_1EC466FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466FB8);
  }

  return result;
}

unint64_t sub_1CACCABB4()
{
  result = qword_1EC466FC0;
  if (!qword_1EC466FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466FC0);
  }

  return result;
}

uint64_t sub_1CACCAC08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65727275636572 && a2 == 0xED0000646E456563;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76F20 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xEE0068746E6F4D65 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00007261655965 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x54664F736B656577 && a2 == 0xEE00726165596568 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x664F7368746E6F6DLL && a2 == 0xEF72616559656854 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7469736F50746573 && a2 == 0xEC000000736E6F69)
  {

    return 9;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t EventSourceModelObject.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v77 = a2;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v76 = (*(v4 + 24))(v3, v4);
  v86 = v5;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v84 = v9;
  v85 = v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v83 = (*(v11 + 40))(v10, v11);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 48))(v12, v13);
  v81 = v15;
  v82 = v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v75 = (*(v17 + 56))(v16, v17);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v74 = (*(v19 + 64))(v18, v19);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v72 = (*(v21 + 72))(v20, v21);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v71 = (*(v23 + 80))(v22, v23);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v70 = EventSourceModel.isIntegrationSource.getter(v24, v25);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v80 = (*(v27 + 88))(v26, v27);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v79 = (*(v29 + 96))(v28, v29);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v78 = (*(v31 + 104))(v30, v31);
  v124 = v32 & 1;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v73 = (*(v34 + 112))(v33, v34);
  v123 = v35 & 1;
  v37 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v38 = *(v36 + 8);
  v69 = *(v38 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1CAD4E4D4();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v65 - v42;
  v69(v37, v38);
  v44 = *(AssociatedTypeWitness - 8);
  if ((*(v44 + 48))(v43, 1, AssociatedTypeWitness) == 1)
  {
    (*(v41 + 8))(v43, v40);
    AssociatedConformanceWitness = 0;
    v119 = 0u;
    v120 = 0u;
  }

  else
  {
    *(&v120 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v119);
    (*(v44 + 32))(boxed_opaque_existential_1, v43, AssociatedTypeWitness);
  }

  sub_1CACCB658(&v119, &v117);
  if (v118)
  {
    sub_1CAB284E0(&v117, v97);
    sub_1CAB299C0(v97, &v89);
    EventSourceConstraintsModelObject.init(_:)(&v89, v87);
    v46 = v87[1];
    v68 = v87[2];
    v69 = v87[0];
    v67 = v88;
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v46 = 2;
  }

  v65 = v46;
  v70 &= 1u;
  v47 = v70;
  v71 &= 1u;
  v48 = v71;
  v72 &= 1u;
  v49 = v72;
  v50 = v74 & 1;
  v51 = v75 & 1;
  v74 &= 1u;
  v75 &= 1u;
  sub_1CACCB6C8(&v119);
  v52 = v76;
  *&v89 = v76;
  *(&v89 + 1) = v86;
  *&v90 = v85;
  *(&v90 + 1) = v84;
  *&v91 = v83;
  *(&v91 + 1) = v82;
  *&v92 = v81;
  BYTE8(v92) = v51;
  BYTE9(v92) = v50;
  BYTE10(v92) = v49;
  BYTE11(v92) = v48;
  BYTE12(v92) = v47;
  *(&v92 + 13) = v125;
  HIBYTE(v92) = v126;
  *&v93 = v80;
  *(&v93 + 1) = v79;
  *&v94 = v78;
  v66 = v124;
  BYTE8(v94) = v124;
  *(&v94 + 9) = v87[0];
  HIDWORD(v94) = *(v87 + 3);
  v53 = v73;
  *&v95 = v73;
  v54 = v123;
  BYTE8(v95) = v123;
  *(&v95 + 9) = *v122;
  HIDWORD(v95) = *&v122[3];
  v55 = v69;
  *&v96[0] = v69;
  *(&v96[0] + 1) = v46;
  v56 = v68;
  *&v96[1] = v68;
  v57 = v67;
  WORD4(v96[1]) = v67;
  v58 = v92;
  v59 = v77;
  v77[2] = v91;
  v59[3] = v58;
  v60 = v90;
  *v59 = v89;
  v59[1] = v60;
  v61 = v93;
  v62 = v94;
  *(v59 + 122) = *(v96 + 10);
  v63 = v96[0];
  v59[6] = v95;
  v59[7] = v63;
  v59[4] = v61;
  v59[5] = v62;
  sub_1CAC17240(&v89, v97);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v97[0] = v52;
  v97[1] = v86;
  v97[2] = v85;
  v97[3] = v84;
  v97[4] = v83;
  v97[5] = v82;
  v97[6] = v81;
  v98 = v75;
  v99 = v74;
  v100 = v72;
  v101 = v71;
  v102 = v70;
  v103 = v125;
  v104 = v126;
  v105 = v80;
  v106 = v79;
  v107 = v78;
  v108 = v66;
  *&v109[3] = *(v87 + 3);
  *v109 = v87[0];
  v110 = v53;
  v111 = v54;
  *v112 = *v122;
  *&v112[3] = *&v122[3];
  v113 = v55;
  v114 = v65;
  v115 = v56;
  v116 = v57;
  return sub_1CAC1729C(v97);
}

uint64_t sub_1CACCB658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACCB6C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 EventSourceModelObject.init(id:appGroupID:sourceType:title:isDelegate:isManaged:isWritable:isPrimaryLocalSource:isIntegrationSource:ownerAddressSet:preferredEventPrivateValue:defaultAlarmOffset:defaultAllDayAlarmOffset:constraints:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, __int128 a14, uint64_t a15, char a16, uint64_t a17, char a18, __n128 *a19)
{
  v19 = a19[1].n128_u64[0];
  v20 = a19[1].n128_u16[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;
  *(a9 + 58) = a11;
  *(a9 + 59) = a12;
  *(a9 + 60) = a13;
  *(a9 + 64) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16 & 1;
  *(a9 + 96) = a17;
  *(a9 + 104) = a18 & 1;
  result = *a19;
  *(a9 + 112) = *a19;
  *(a9 + 128) = v19;
  *(a9 + 136) = v20;
  return result;
}

uint64_t EventSourceModelObject.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventSourceModelObject.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventSourceModelObject.appGroupID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EventSourceModelObject.appGroupID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EventSourceModelObject.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EventSourceModelObject.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t EventSourceModelObject.ownerAddressSet.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

char *EventSourceModelObject.ownerAddresses.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1CAC2A184(*(v1 + 16), 0);
  v4 = sub_1CAC2A628(&v6, v3 + 4, v2, v1);

  sub_1CAC297D0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;

  sub_1CACCD410(&v6);

  return v6;
}

uint64_t EventSourceModelObject.defaultAlarmOffset.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t EventSourceModelObject.defaultAllDayAlarmOffset.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 EventSourceModelObject.constraints.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u64[0];
  v3 = v1[8].n128_u16[4];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  return result;
}

__n128 EventSourceModelObject.constraints.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v2;
  v1[8].n128_u16[4] = v3;
  return result;
}

uint64_t sub_1CACCBCC0(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1CAD4EA84();

    sub_1CAD4E054();
    v16 = sub_1CAD4EAC4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1CAD4E9E4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t EventSourceModelObject.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v14 = *(v1 + 120);
  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (v3)
  {
    sub_1CAD4E054();
  }

  MEMORY[0x1CCAA7D10](v4);
  sub_1CAD4E054();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CACCFCD8(a1, v10);
  MEMORY[0x1CCAA7D10](v11);
  if (!v12)
  {
    sub_1CAD4EAA4();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1CCAA7D30](v6);
    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_13:
    sub_1CAD4EAA4();
    goto LABEL_14;
  }

  sub_1CAD4EAA4();
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1CAD4EAA4();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1CCAA7D30](v5);
LABEL_14:
  if (v14 == 2)
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();
  return EventSourceConstraintsModelObject.hash(into:)();
}

uint64_t EventSourceModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventSourceModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

unint64_t sub_1CACCC0A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x70756F7247707061;
      break;
    case 2:
      result = 0x7954656372756F73;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6167656C65447369;
      break;
    case 5:
      result = 0x6567616E614D7369;
      break;
    case 6:
      result = 0x6261746972577369;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = 0x64644172656E776FLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x69617274736E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CACCC2B0()
{
  sub_1CAD4EA84();
  EventSourceModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACCC2F4()
{
  sub_1CAD4EA84();
  EventSourceModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

__n128 sub_1CACCC330@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u64[0];
  v3 = v1[8].n128_u16[4];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  return result;
}

uint64_t sub_1CACCC358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CACD0AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CACCC38C(uint64_t a1)
{
  v2 = sub_1CACD01F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACCC3C8(uint64_t a1)
{
  v2 = sub_1CACD01F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventSourceModelObject.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v98 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466FF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACD01F4();
  sub_1CAD4EAE4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v54 = a1;
    v8 = v5;
    v9 = v98;
    LOBYTE(v63) = 0;
    v10 = v7;
    *&v53 = sub_1CAD4E884();
    *(&v53 + 1) = v12;
    LOBYTE(v63) = 1;
    v50 = sub_1CAD4E824();
    v52 = v13;
    type metadata accessor for EKSourceType(0);
    LOBYTE(v55) = 2;
    sub_1CACD0FF4(&qword_1EC467008, type metadata accessor for EKSourceType);
    sub_1CAD4E8C4();
    v14 = v63;
    LOBYTE(v63) = 3;
    v48 = sub_1CAD4E884();
    v49 = v14;
    v51 = v15;
    LOBYTE(v63) = 4;
    LODWORD(v14) = sub_1CAD4E834();
    LOBYTE(v63) = 5;
    v47 = sub_1CAD4E834();
    LOBYTE(v63) = 6;
    v46 = sub_1CAD4E894();
    LOBYTE(v63) = 7;
    LODWORD(v43) = sub_1CAD4E834();
    v44 = v14;
    LOBYTE(v63) = 8;
    LODWORD(v42) = sub_1CAD4E834();
    LOBYTE(v63) = 9;
    v45 = v4;
    v16 = v10;
    v17 = sub_1CAD4E8E4();
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467020);
      LOBYTE(v55) = 9;
      sub_1CACD05FC(&qword_1EC467028);
      sub_1CAD4E8C4();
      v18 = v63;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
      LOBYTE(v55) = 10;
      sub_1CAC17494(&qword_1EC464CB8);
      sub_1CAD4E874();
      if (v63)
      {
        v19 = v63;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v18 = sub_1CACD0510(v19);
    }

    type metadata accessor for EKPrivacyLevel(0);
    LOBYTE(v55) = 11;
    sub_1CACD0FF4(&qword_1EC467010, type metadata accessor for EKPrivacyLevel);
    sub_1CAD4E874();
    if (BYTE8(v63))
    {
      v20 = 0;
    }

    else
    {
      v20 = v63;
    }

    LOBYTE(v63) = 12;
    v21 = sub_1CAD4E844();
    v95 = v22 & 1;
    LOBYTE(v63) = 13;
    v41 = sub_1CAD4E844();
    v93 = v23 & 1;
    v88 = 14;
    sub_1CACD05A8();
    sub_1CAD4E874();
    v44 &= 1u;
    v24 = v47 & 1;
    v25 = v46 & 1;
    v26 = v43 & 1;
    v46 = v43 & 1;
    v47 = v25;
    HIDWORD(v36) = v42 & 1;
    v37 = v24;
    (*(v8 + 8))(v16, v45);
    v42 = *(&v89 + 1);
    v43 = v89;
    v39 = v90;
    v38 = v91;
    v55 = v53;
    *&v56 = v50;
    *(&v56 + 1) = v52;
    *&v57 = v49;
    *(&v57 + 1) = v48;
    *&v58 = v51;
    BYTE8(v58) = v44;
    v27 = v37;
    BYTE9(v58) = v37;
    BYTE10(v58) = v47;
    BYTE11(v58) = v26;
    v28 = BYTE4(v36);
    BYTE12(v58) = BYTE4(v36);
    HIBYTE(v58) = v97;
    *(&v58 + 13) = v96;
    *&v59 = v18;
    *(&v59 + 1) = v20;
    v40 = v20;
    *&v60 = v21;
    LODWORD(v45) = v95;
    BYTE8(v60) = v95;
    *(&v60 + 9) = *v94;
    HIDWORD(v60) = *&v94[3];
    v29 = v41;
    *&v61 = v41;
    v30 = v93;
    BYTE8(v61) = v93;
    HIDWORD(v61) = *&v92[3];
    *(&v61 + 9) = *v92;
    v62[0] = v89;
    *&v62[1] = v90;
    WORD4(v62[1]) = v91;
    v31 = v58;
    v9[2] = v57;
    v9[3] = v31;
    v32 = v56;
    *v9 = v55;
    v9[1] = v32;
    v33 = v59;
    v34 = v60;
    *(v9 + 122) = *(v62 + 10);
    v35 = v62[0];
    v9[6] = v61;
    v9[7] = v35;
    v9[4] = v33;
    v9[5] = v34;
    sub_1CAC17240(&v55, &v63);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v63 = v53;
    v64 = v50;
    v65 = v52;
    v66 = v49;
    v67 = v48;
    v68 = v51;
    v69 = v44;
    v70 = v27;
    v71 = v47;
    v72 = v46;
    v73 = v28;
    v74 = v96;
    v75 = v97;
    v76 = v18;
    v77 = v40;
    v78 = v21;
    v79 = v45;
    *v80 = *v94;
    *&v80[3] = *&v94[3];
    v81 = v29;
    v82 = v30;
    *v83 = *v92;
    *&v83[3] = *&v92[3];
    v84 = v43;
    v85 = v42;
    v86 = v39;
    v87 = v38;
    return sub_1CAC1729C(&v63);
  }
}

uint64_t EventSourceModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467030);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v38 = *(v1 + 24);
  v39 = v7;
  v8 = *(v1 + 32);
  v36 = *(v1 + 40);
  v37 = v8;
  v35 = *(v1 + 48);
  v43 = *(v1 + 56);
  LODWORD(v8) = *(v1 + 57);
  v33 = *(v1 + 58);
  v34 = v8;
  LODWORD(v8) = *(v1 + 59);
  v31 = *(v1 + 60);
  v32 = v8;
  v9 = *(v1 + 64);
  v29 = *(v1 + 72);
  v30 = v9;
  v27 = *(v1 + 80);
  v28 = *(v1 + 88);
  v25 = *(v1 + 96);
  v26 = *(v1 + 104);
  v10 = *(v1 + 120);
  v21 = *(v1 + 112);
  v22 = v10;
  v24 = *(v1 + 128);
  v23 = *(v1 + 136);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACD01F4();
  sub_1CAD4EB04();
  LOBYTE(v41[0]) = 0;
  v11 = v40;
  sub_1CAD4E934();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v37;
  LOBYTE(v41[0]) = 1;
  sub_1CAD4E904();
  v41[0] = v12;
  v44 = 2;
  type metadata accessor for EKSourceType(0);
  sub_1CACD0FF4(&qword_1EC467038, type metadata accessor for EKSourceType);
  sub_1CAD4E984();
  LOBYTE(v41[0]) = 3;
  sub_1CAD4E934();
  LOBYTE(v41[0]) = 4;
  sub_1CAD4E944();
  LOBYTE(v41[0]) = 5;
  sub_1CAD4E944();
  LOBYTE(v41[0]) = 6;
  sub_1CAD4E944();
  LOBYTE(v41[0]) = 7;
  sub_1CAD4E944();
  LOBYTE(v41[0]) = 8;
  sub_1CAD4E944();
  v39 = v6;
  v40 = v3;
  v38 = 0;
  v14 = v30;
  v15 = *(v30 + 16);
  if (v15)
  {
    v16 = sub_1CAC2A184(*(v30 + 16), 0);
    v17 = sub_1CAC2A628(v41, v16 + 4, v15, v14);

    sub_1CAC297D0();
    if (v17 == v15)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v18 = v38;
  v41[0] = v16;

  sub_1CACCD410(v41);
  if (v18)
  {

    __break(1u);
  }

  else
  {

    v44 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
    sub_1CAC17494(&qword_1EC464CE8);
    sub_1CAD4E984();

    v41[0] = v30;
    v44 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467020);
    sub_1CACD05FC(&qword_1EC467040);
    sub_1CAD4E984();
    v41[0] = v29;
    v44 = 11;
    type metadata accessor for EKPrivacyLevel(0);
    sub_1CACD0FF4(&qword_1EC467048, type metadata accessor for EKPrivacyLevel);
    sub_1CAD4E984();
    LOBYTE(v41[0]) = 12;
    sub_1CAD4E914();
    LOBYTE(v41[0]) = 13;
    sub_1CAD4E914();
    v41[0] = v21;
    v41[1] = v22;
    v41[2] = v24;
    LOWORD(v42) = v23;
    v44 = 14;
    sub_1CACD0668();
    v19 = v39;
    v20 = v40;
    sub_1CAD4E924();
    return (*(v4 + 8))(v19, v20);
  }

  return result;
}

uint64_t sub_1CACCD410(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CACED528(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CACCF30C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CACCD47C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CAD4E614();

    if (v9)
    {

      sub_1CABF21E8();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1CAD4E604();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1CACCD9AC(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1CACCDB8C();
    }

    v18 = v8;
    sub_1CACCE284(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1CABF21E8();
  v11 = sub_1CAD4E484();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1CACCE308(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1CAD4E494();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1CACCD694(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for EventAttendeeModelObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1CAD4EA84();
  EventAttendeeModelObject.hash(into:)();
  v10 = sub_1CAD4EAC4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1CABC7A1C(*(v9 + 48) + v14 * v12, v8);
      v15 = _s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1CABC7DE4(v8);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CABC7DE4(a2);
    sub_1CABC7A1C(*(v9 + 48) + v14 * v12, v19);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CABC7A1C(a2, v8);
    v20 = *v3;
    sub_1CACCE468(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_1CACD0F90(a2, v17);
    return 1;
  }
}

uint64_t sub_1CACCD85C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CAD4EA84();
  sub_1CAD4E054();
  v8 = sub_1CAD4EAC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1CAD4E9E4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1CACCE670(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CACCD9AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467080);
    v2 = sub_1CAD4E664();
    v14 = v2;
    sub_1CAD4E5F4();
    if (sub_1CAD4E624())
    {
      sub_1CABF21E8();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1CACCDB8C();
        }

        v2 = v14;
        result = sub_1CAD4E484();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1CAD4E624());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CACCDB8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467080);
  result = sub_1CAD4E654();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1CAD4E484();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1CACCDDB4()
{
  v1 = v0;
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E90);
  result = sub_1CAD4E654();
  v7 = result;
  if (*(v5 + 16))
  {
    v22 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v23 + 72);
      sub_1CACD0F90(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4);
      sub_1CAD4EA84();
      EventAttendeeModelObject.hash(into:)();
      sub_1CAD4EAC4();
      v19 = sub_1CAD4E5E4();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1CACD0F90(v4, *(v7 + 48) + v19 * v18);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v5 + 32);
    if (v20 >= 64)
    {
      bzero((v5 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v20;
    }

    v1 = v22;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1CACCE024()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466190);
  result = sub_1CAD4E654();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1CACCE284(uint64_t a1, uint64_t a2)
{
  sub_1CAD4E484();
  result = sub_1CAD4E5E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1CACCE308(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CACCDB8C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CACCE7F0();
      goto LABEL_12;
    }

    sub_1CACCEC80();
  }

  v8 = *v3;
  v9 = sub_1CAD4E484();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1CABF21E8();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1CAD4E494();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CAD4EA24();
  __break(1u);
}

uint64_t sub_1CACCE468(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1CACCDDB4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1CACCE940();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1CACCEE94();
  }

  v15 = *v4;
  sub_1CAD4EA84();
  EventAttendeeModelObject.hash(into:)();
  v16 = sub_1CAD4EAC4();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1CABC7A1C(*(v15 + 48) + v19 * a2, v12);
      v20 = _s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1CABC7DE4(v12);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1CACD0F90(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CAD4EA24();
  __break(1u);
  return result;
}

uint64_t sub_1CACCE670(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CACCE024();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CACCEB24();
      goto LABEL_16;
    }

    sub_1CACCF0D4();
  }

  v10 = *v4;
  sub_1CAD4EA84();
  sub_1CAD4E054();
  result = sub_1CAD4EAC4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CAD4E9E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CAD4EA24();
  __break(1u);
  return result;
}

id sub_1CACCE7F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467080);
  v2 = *v0;
  v3 = sub_1CAD4E644();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1CACCE940()
{
  v1 = v0;
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E90);
  v6 = *v0;
  v7 = sub_1CAD4E644();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1CABC7A1C(*(v6 + 48) + v21, v5);
        result = sub_1CACD0F90(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1CACCEB24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466190);
  v2 = *v0;
  v3 = sub_1CAD4E644();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CACCEC80()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467080);
  result = sub_1CAD4E654();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1CAD4E484();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CACCEE94()
{
  v1 = v0;
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E90);
  result = sub_1CAD4E654();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_1CABC7A1C(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4);
      sub_1CAD4EA84();
      EventAttendeeModelObject.hash(into:)();
      sub_1CAD4EAC4();
      v18 = sub_1CAD4E5E4();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1CACD0F90(v4, *(v7 + 48) + v18 * v17);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1CACCF0D4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466190);
  result = sub_1CAD4E654();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1CAD4EA84();

      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CACCF30C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
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
        v5 = sub_1CAD4E244();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CACCF4D4(v7, v8, a1, v4);
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
    return sub_1CACCF404(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CACCF404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1CAD4E9E4(), (result & 1) == 0))
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

uint64_t sub_1CACCF4D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1CACED054(v8);
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
        sub_1CACCFAB0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_1CAD4E9E4();
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
            result = sub_1CAD4E9E4();
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
      result = sub_1CACED068(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1CACED068((v39 > 1), v40 + 1, 1, v8);
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
        sub_1CACCFAB0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CACED054(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1CACECFC8(v44);
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
    if (v37 || (result = sub_1CAD4E9E4(), (result & 1) == 0))
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

uint64_t sub_1CACCFAB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1CAD4E9E4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1CAD4E9E4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1CACCFCD8(uint64_t a1, uint64_t a2)
{
  sub_1CAD4EAC4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1CCAA7D10](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1CAD4EA84();

        sub_1CAD4E054();
        v11 = sub_1CAD4EAC4();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

BOOL _s13CalendarUIKit22EventSourceModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v66 = *(a1 + 56);
  v67 = *(a1 + 57);
  v7 = *(a1 + 58);
  v63 = *(a1 + 59);
  v62 = *(a1 + 60);
  v61 = *(a1 + 64);
  v59 = *(a1 + 72);
  v8 = *(a1 + 80);
  v53 = *(a1 + 88);
  v9 = *(a1 + 96);
  v51 = *(a1 + 104);
  v57 = *(a1 + 112);
  v56 = *(a1 + 120);
  v55 = *(a1 + 128);
  v54 = *(a1 + 136);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v64 = *(a2 + 56);
  v65 = *(a2 + 57);
  v15 = *(a2 + 58);
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v49 = *(a2 + 120);
  v18 = *(a2 + 59);
  v19 = *(a2 + 60);
  v60 = *(a2 + 64);
  v58 = *(a2 + 72);
  v52 = *(a2 + 88);
  v50 = *(a2 + 104);
  v47 = *(a2 + 112);
  v48 = *(a2 + 136);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v44 = *(a2 + 48);
    v45 = *(a1 + 32);
    v43 = *(a2 + 40);
    v42 = *(a1 + 58);
    v20 = *(a2 + 59);
    v21 = *(a2 + 60);
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v24 = *(a1 + 16);
    v25 = *(a2 + 32);
    v26 = *(a1 + 24);
    v27 = *(a2 + 24);
    v28 = *(a2 + 16);
    v29 = sub_1CAD4E9E4();
    v11 = v28;
    v10 = v27;
    v3 = v26;
    v13 = v25;
    v2 = v24;
    v5 = v23;
    v6 = v22;
    v19 = v21;
    v18 = v20;
    v7 = v42;
    v12 = v43;
    v14 = v44;
    v4 = v45;
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (v2 == v11 && v3 == v10)
    {
      if (v4 != v13)
      {
        return 0;
      }
    }

    else
    {
      v46 = v5;
      v32 = sub_1CAD4E9E4();
      v30 = 0;
      if ((v32 & 1) == 0)
      {
        return v30;
      }

      v5 = v46;
      if (v4 != v13)
      {
        return v30;
      }
    }
  }

  else
  {
    v30 = 0;
    if (v10 || v4 != v13)
    {
      return v30;
    }
  }

  v33 = v7 ^ v15;
  if (v5 == v12 && v6 == v14)
  {
    v30 = 0;
    if ((v66 ^ v64 | v67 ^ v65 | v33))
    {
      return v30;
    }
  }

  else
  {
    v34 = sub_1CAD4E9E4();
    v30 = 0;
    if ((v66 ^ v64) & 1 | ((v34 & 1) == 0) | (v67 ^ v65 | v33) & 1)
    {
      return v30;
    }
  }

  if (((v63 ^ v18) & 1) == 0 && ((v62 ^ v19) & 1) == 0)
  {
    v35 = sub_1CACCBCC0(v61, v60);
    v30 = 0;
    if ((v35 & 1) != 0 && v59 == v58)
    {
      if (v53)
      {
        v37 = v56;
        v36 = v57;
        v38 = v55;
        v39 = v54;
        if (!v52)
        {
          return 0;
        }
      }

      else
      {
        v40 = v52;
        if (v8 != v16)
        {
          v40 = 1;
        }

        v37 = v56;
        v36 = v57;
        v38 = v55;
        v39 = v54;
        if (v40)
        {
          return 0;
        }
      }

      if (v51)
      {
        if (!v50)
        {
          return 0;
        }
      }

      else
      {
        v41 = v50;
        if (v9 != v17)
        {
          v41 = 1;
        }

        if (v41)
        {
          return 0;
        }
      }

      v70 = v36;
      v71 = v37;
      v72 = v38;
      v73 = v39;
      v74 = v47;
      v75 = v49;
      v76 = v48;
      if (v37 == 2)
      {
        if (v49 == 2)
        {
          return 1;
        }
      }

      else
      {
        v68[0] = v36;
        v68[1] = v37;
        v68[2] = v38;
        v69 = v39;
        if (v49 != 2)
        {
          return _s13CalendarUIKit33EventSourceConstraintsModelObjectV2eeoiySbAC_ACtFZ_0(v68, &v74);
        }
      }

      return 0;
    }
  }

  return v30;
}

unint64_t sub_1CACD01F4()
{
  result = qword_1EC467000;
  if (!qword_1EC467000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467000);
  }

  return result;
}

uint64_t sub_1CACD0248(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CAD4E604())
  {
    v4 = sub_1CABF21E8();
    v5 = sub_1CACD0FF4(&qword_1EC465218, sub_1CABF21E8);
    result = MEMORY[0x1CCAA75C0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA7940](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1CACCD47C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1CAD4E604();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1CACD03A8(uint64_t a1)
{
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1CACD0FF4(&qword_1EC467088, type metadata accessor for EventAttendeeModelObject);
  result = MEMORY[0x1CCAA75C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1CABC7A1C(v12, v6);
      sub_1CACCD694(v8, v6);
      sub_1CABC7DE4(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1CACD0510(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCAA75C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CACCD85C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1CACD05A8()
{
  result = qword_1EC467018;
  if (!qword_1EC467018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467018);
  }

  return result;
}

uint64_t sub_1CACD05FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467020);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CACD0668()
{
  result = qword_1EC467050;
  if (!qword_1EC467050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467050);
  }

  return result;
}

unint64_t sub_1CACD06BC(uint64_t a1)
{
  result = sub_1CACD06E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CACD06E4()
{
  result = qword_1EC467058;
  if (!qword_1EC467058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467058);
  }

  return result;
}

unint64_t sub_1CACD073C()
{
  result = qword_1EC467060;
  if (!qword_1EC467060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467060);
  }

  return result;
}

__n128 __swift_memcpy138_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1CACD07C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_1CACD080C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventSourceModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventSourceModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CACD09D4()
{
  result = qword_1EC467068;
  if (!qword_1EC467068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467068);
  }

  return result;
}

unint64_t sub_1CACD0A2C()
{
  result = qword_1EC467070;
  if (!qword_1EC467070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467070);
  }

  return result;
}

unint64_t sub_1CACD0A84()
{
  result = qword_1EC467078;
  if (!qword_1EC467078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467078);
  }

  return result;
}

uint64_t sub_1CACD0AD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7247707061 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6167656C65447369 && a2 == 0xEA00000000006574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616E614D7369 && a2 == 0xE900000000000064 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6261746972577369 && a2 == 0xEA0000000000656CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD765E0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CAD76F40 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64644172656E776FLL && a2 == 0xEF74655373736572 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64644172656E776FLL && a2 == 0xEE00736573736572 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CAD76F60 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD76F80 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD76FA0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL)
  {

    return 14;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1CACD0F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttendeeModelObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACD0FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EventAlarmModelObject.init(trigger:isDefault:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1CAC2C57C(a1, a3);
  result = type metadata accessor for EventAlarmModelObject();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for EventAlarmModelObject()
{
  result = qword_1EC4622E8;
  if (!qword_1EC4622E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CACD1100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmTrigger();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EventAlarmModelObject.isDefault.setter(char a1)
{
  result = type metadata accessor for EventAlarmModelObject();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EventAlarmModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  *(a2 + *(type metadata accessor for EventAlarmModelObject() + 20)) = v8 & 1;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventAlarmModelObject.hash(into:)()
{
  EventAlarmTrigger.hash(into:)();
  type metadata accessor for EventAlarmModelObject();
  return sub_1CAD4EAA4();
}

uint64_t EventAlarmModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  type metadata accessor for EventAlarmModelObject();
  sub_1CAD4EAA4();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACD13B4()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  sub_1CAD4EAA4();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACD1448()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  sub_1CAD4EAA4();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACD1498()
{
  if (*v0)
  {
    return 0x6C75616665447369;
  }

  else
  {
    return 0x72656767697274;
  }
}

uint64_t sub_1CACD14D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C75616665447369 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CACD15BC(uint64_t a1)
{
  v2 = sub_1CACD1934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACD15F8(uint64_t a1)
{
  v2 = sub_1CACD1934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventAlarmModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467098);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v19 - v6;
  v8 = type metadata accessor for EventAlarmModelObject();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACD1934();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v20;
  v24 = 0;
  sub_1CACD1C50(&qword_1EC4670A8, type metadata accessor for EventAlarmTrigger);
  v13 = v21;
  sub_1CAD4E8C4();
  v14 = v13;
  v15 = v11;
  sub_1CAC2C57C(v14, v11);
  v23 = 1;
  v16 = v22;
  v17 = sub_1CAD4E834();
  (*(v12 + 8))(v7, v16);
  *(v15 + *(v8 + 20)) = v17 & 1;
  sub_1CACD1988(v15, v19, type metadata accessor for EventAlarmModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CACD19F0(v15, type metadata accessor for EventAlarmModelObject);
}

unint64_t sub_1CACD1934()
{
  result = qword_1EC4670A0;
  if (!qword_1EC4670A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4670A0);
  }

  return result;
}

uint64_t sub_1CACD1988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACD19F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EventAlarmModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4670B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACD1934();
  sub_1CAD4EB04();
  v8[15] = 0;
  type metadata accessor for EventAlarmTrigger();
  sub_1CACD1C50(&qword_1EC4670B8, type metadata accessor for EventAlarmTrigger);
  sub_1CAD4E984();
  if (!v1)
  {
    type metadata accessor for EventAlarmModelObject();
    v8[14] = 1;
    sub_1CAD4E944();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CACD1C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACD1CF0()
{
  result = type metadata accessor for EventAlarmTrigger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CACD1D78()
{
  result = qword_1EC4670C8;
  if (!qword_1EC4670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4670C8);
  }

  return result;
}

unint64_t sub_1CACD1DD0()
{
  result = qword_1EC4670D0;
  if (!qword_1EC4670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4670D0);
  }

  return result;
}

unint64_t sub_1CACD1E28()
{
  result = qword_1EC4670D8;
  if (!qword_1EC4670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4670D8);
  }

  return result;
}

id CodableViaNSSecureCoding.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CodableViaNSSecureCoding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD4EAD4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4670E0);
    sub_1CACD250C(&qword_1EC4670E8, sub_1CAC57520);
    sub_1CAD4E9F4();
    if (v11 >> 60 == 15)
    {
      v5 = 0;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      sub_1CABF2B60(v10, v11);
      v7 = sub_1CACD244C();
      [v7 setRequiresSecureCoding_];
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
      v8 = v5;
      [v7 finishDecoding];

      sub_1CABB8C08(v10, v11);
    }

    sub_1CABB8C08(v10, v11);
    *a2 = v5;
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableViaNSSecureCoding.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = v2;
  sub_1CAD4EAF4();
  if (v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    [v3 encodeWithCoder_];
    [v4 finishEncoding];
    v5 = [v4 encodedData];
    v6 = sub_1CAD4C024();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_1CABF2B60(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4670E0);
  sub_1CACD250C(&qword_1EC4670F8, sub_1CAC574CC);
  sub_1CAD4EA04();
  sub_1CABB8C08(v6, v8);
  sub_1CABB8C08(v6, v8);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static CodableViaNSSecureCoding.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = sub_1CAD4E494();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t CodableViaNSSecureCoding.hash(into:)()
{
  sub_1CAD4E4D4();
  swift_getWitnessTable();
  return sub_1CAD4E4E4();
}

uint64_t CodableViaNSSecureCoding.hashValue.getter()
{
  sub_1CAD4EA84();
  CodableViaNSSecureCoding.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACD2400()
{
  sub_1CAD4EA84();
  CodableViaNSSecureCoding.hash(into:)();
  return sub_1CAD4EAC4();
}

id sub_1CACD244C()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CAD4C014();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1CAD4BF54();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1CACD250C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4670E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CACD25A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CACD25DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1CACD2638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1CACD272C()
{
  result = qword_1EC467188;
  if (!qword_1EC467188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467188);
  }

  return result;
}

uint64_t sub_1CACD2780()
{
  v1 = CUIKDisplayStringForAvailability(qword_1CAD670A8[*v0]);
  v2 = sub_1CAD4DF94();

  return v2;
}

unint64_t sub_1CACD27DC(uint64_t a1)
{
  *(a1 + 8) = sub_1CACD272C();
  result = sub_1CACD280C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CACD280C()
{
  result = qword_1EC467190;
  if (!qword_1EC467190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467190);
  }

  return result;
}

unint64_t sub_1CACD2864()
{
  result = qword_1EC467198;
  if (!qword_1EC467198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467198);
  }

  return result;
}

uint64_t sub_1CACD28B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACD2CBC();
  sub_1CAD4C424();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1CACD2958()
{
  swift_getKeyPath();
  sub_1CACD2CBC();
  sub_1CAD4C424();

  return *(v0 + 40);
}

uint64_t sub_1CACD29C8(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACD2CBC();
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CACD2AA8()
{
  sub_1CABB8C08(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC13CalendarUIKit16EKShareeWithData___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EKShareeWithData()
{
  result = qword_1EC4671A8;
  if (!qword_1EC4671A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CACD2BA8()
{
  result = sub_1CAD4C464();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CACD2C68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EKShareeWithData();
  result = sub_1CAD4E6A4();
  *a1 = result;
  return result;
}

unint64_t sub_1CACD2CBC()
{
  result = qword_1EC464308;
  if (!qword_1EC464308)
  {
    type metadata accessor for EKShareeWithData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464308);
  }

  return result;
}

uint64_t sub_1CACD2D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CUIKDateView();
  sub_1CAB23A9C(v1 + *(v10 + 28), v9, &qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C374();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 CUIKDateView.init(currentDate:styling:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CUIKDateView();
  v7 = a3 + v6[6];
  strcpy(v7, "EEEE, MMMM dd");
  *(v7 + 14) = -4864;
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1CAD4C0F4();
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  v10 = a3 + v6[5];
  v11 = *(a2 + 176);
  *(v10 + 160) = *(a2 + 160);
  *(v10 + 176) = v11;
  *(v10 + 192) = *(a2 + 192);
  *(v10 + 208) = *(a2 + 208);
  v12 = *(a2 + 112);
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = v12;
  v13 = *(a2 + 144);
  *(v10 + 128) = *(a2 + 128);
  *(v10 + 144) = v13;
  v14 = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = v14;
  v15 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v15;
  result = *a2;
  v17 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v17;
  return result;
}

uint64_t type metadata accessor for CUIKDateView()
{
  result = qword_1EC4623A8;
  if (!qword_1EC4623A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CACD3094(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v3;
  v28 = sub_1CAD4C404();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4C374();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1CACD2D14(v13);
  v15 = sub_1CAD4C274();
  v16 = *(v8 + 8);
  v16(v13, v7);
  [v14 setCalendar_];

  sub_1CACD2D14(v13);
  sub_1CAD4C334();
  v16(v13, v7);
  v17 = sub_1CAD4C3D4();
  (*(v4 + 8))(v6, v28);
  [v14 setTimeZone_];

  sub_1CACD2D14(v11);
  v18 = v29;
  sub_1CAD4C304();
  v16(v11, v7);
  v19 = v18;
  v20 = sub_1CAD4C1D4();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1CAD4C154();
    (*(v21 + 8))(v19, v20);
  }

  [v14 setLocale_];

  [v14 setFormattingContext_];
  v23 = sub_1CAD4DF54();
  [v14 setLocalizedDateFormatFromTemplate_];

  v24 = sub_1CAD4C084();
  v25 = [v14 stringFromDate_];

  v26 = sub_1CAD4DF94();
  return v26;
}

id sub_1CACD3460()
{
  v28 = sub_1CAD4C354();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1CAD4C374();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v26 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v27 = v0;
  sub_1CACD2D14(v13);
  sub_1CAD4C304();
  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = sub_1CAD4C1D4();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = sub_1CAD4C154();
    (*(v16 + 8))(v6, v15);
  }

  v18 = v26;
  [v26 setLocale_];

  sub_1CACD2D14(v11);
  v19 = v28;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A48], v28);
  v20 = sub_1CAD4C364();
  (*(v1 + 8))(v3, v19);
  v14(v11, v7);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  result = [v18 stringFromNumber_];
  if (result)
  {
    v23 = result;
    v24 = sub_1CAD4DF94();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CACD37C8(uint64_t a1, uint64_t a2)
{
  v30 = sub_1CAD4C404();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CAD4C374();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v17;
  if (a2)
  {
    v18 = sub_1CAD4DF54();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v31 = v2;
  sub_1CACD2D14(v9);
  sub_1CAD4C334();
  v29 = *(v7 + 8);
  v29(v9, v33);
  v20 = sub_1CAD4C3D4();
  (*(v4 + 8))(v6, v30);
  v21 = [v19 overlayCalendarForCalendarIdentifier:v18 timezone:v20];

  if (v21)
  {
    sub_1CAD4C294();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v32;
  v24 = v33;
  (*(v7 + 56))(v16, v22, 1, v33);
  sub_1CACD8FA0(v16, v23);
  v25 = sub_1CAD4C084();
  sub_1CAB23A9C(v23, v13, &qword_1EC4645F0);
  if ((*(v7 + 48))(v13, 1, v24) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1CAD4C274();
    v29(v13, v24);
  }

  v27 = [objc_opt_self() monthDayStringForDate:v25 inCalendar:v26];

  if (v27)
  {
    sub_1CAD4DF94();

    sub_1CAB21B68(v23, &qword_1EC4645F0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CUIKDateView.Styling.monthYearFormat.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CUIKDateView.Styling.monthYearFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CUIKDateView.Styling.weekdayFormat.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t CUIKDateView.Styling.weekdayFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t CUIKDateView.Styling.weekdayColor.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

uint64_t CUIKDateView.Styling.altCalColor.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t CUIKDateView.Styling.overlayCalendarID.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t CUIKDateView.Styling.overlayCalendarID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

_BYTE *CUIKDateView.Styling.init(firstLinePosition:firstLineContent:secondLinePosition:secondLineXOffset:verticalContent:horizontalSpacing:dayNumberFontSize:thirdLinePosition:thirdLineContent:monthYearFormat:monthYearFontSize:monthYearFontWeight:monthYearContainsNumericText:monthYearTracking:weekdayFormat:weekdayFontSize:weekdayFontWeight:weekdayTracking:weekdayXOffset:weekdayYOffset:weekdayColor:altCalFontSize:altCalFontWeight:altCalColor:altCalTracking:overlayCalendarID:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v28 = *a2;
  v29 = *a3;
  *a9 = *result;
  *(a9 + 1) = v28;
  *(a9 + 2) = v29;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a15;
  *(a9 + 40) = a13;
  *(a9 + 48) = a14;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a16;
  *(a9 + 80) = a17;
  *(a9 + 88) = a6;
  *(a9 + 96) = a18;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a19;
  *(a9 + 136) = a20;
  *(a9 + 152) = a21;
  *(a9 + 160) = a22;
  *(a9 + 184) = a25;
  *(a9 + 168) = a23;
  *(a9 + 176) = a24;
  *(a9 + 192) = a26;
  *(a9 + 200) = a27;
  *(a9 + 208) = a28;
  return result;
}

uint64_t sub_1CACD4290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_1CACD3460();
  sub_1CABA6054();
  v4 = sub_1CAD4D444();
  v6 = v5;
  v8 = v7;
  v9 = sub_1CAD4DF54();
  CTFontCreateWithNameAndOptions(v9, v3, 0, 0x400uLL);

  sub_1CAD4D344();
  v10 = sub_1CAD4D424();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1CABA6128(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672D0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467280);
  sub_1CAD4C9D4();
  result = swift_getKeyPath();
  *v18 = result;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 49) = 257;
  return result;
}

uint64_t sub_1CACD4428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v52 = sub_1CAD4C884();
  v51 = *(v52 - 8);
  v3 = MEMORY[0x1EEE9AC00](v52);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v46 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467368);
  MEMORY[0x1EEE9AC00](v59);
  v50 = &v46 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467380);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467350);
  MEMORY[0x1EEE9AC00](v57);
  v47 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467358) - 8;
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - v12;
  v13 = sub_1CAD4BC14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CACD3094(*(a1 + 56), *(a1 + 64));
  v19 = v18;
  v61 = v17;
  v62 = v18;
  sub_1CAD4BBB4();
  sub_1CABA6054();
  sub_1CAD4E524();
  v53 = v20;
  (*(v14 + 8))(v16, v13);
  v46 = v17;
  v61 = v17;
  v62 = v19;

  v21 = sub_1CAD4D444();
  v23 = v22;
  v25 = v24;
  v26 = sub_1CAD4D284();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1CAD4D2C4();
  sub_1CAB21B68(v11, &qword_1EC4646B8);
  v27 = sub_1CAD4D424();
  v29 = v28;
  LOBYTE(v14) = v30;
  v32 = v31;

  sub_1CABA6128(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v27;
  v62 = v29;
  LOBYTE(v14) = v14 & 1;
  v63 = v14;
  v64 = v32;
  v65 = KeyPath;
  v66 = 1;
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465368);
  sub_1CAC3E638();
  v34 = v54;
  sub_1CAD4D774();
  sub_1CABA6128(v27, v29, v14);

  v35 = sub_1CAD4CFE4();
  *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467360) + 36)) = v35;
  *(v34 + *(v55 + 44)) = 257;
  if (v53)
  {
    v36 = v50;
    sub_1CAB23A9C(v34, v50, &qword_1EC467358);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467370) + 52));
    *v37 = v46;
    v37[1] = v19;
    v38 = v49;
    sub_1CAD4C874();
    v39 = v51;
    v40 = v52;
    (*(v51 + 16))(v48, v38, v52);
    sub_1CACD9258(&qword_1EC4621F8, MEMORY[0x1E697E468]);
    v41 = sub_1CAD4C764();
    (*(v39 + 8))(v38, v40);
    v42 = v58;
    *(v36 + *(v59 + 36)) = v41;
    v43 = &qword_1EC467368;
    sub_1CAB23A9C(v36, v42, &qword_1EC467368);
  }

  else
  {

    v36 = v47;
    v44 = &v47[*(v57 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467280);
    sub_1CAD4C9D4();
    *v44 = swift_getKeyPath();
    sub_1CAB23A9C(v34, v36, &qword_1EC467358);
    v43 = &qword_1EC467350;
    sub_1CAB23A9C(v36, v58, &qword_1EC467350);
  }

  swift_storeEnumTagMultiPayload();
  sub_1CACD9648();
  sub_1CACD9820();
  sub_1CAD4CE24();
  sub_1CAB21B68(v36, v43);
  return sub_1CAB21B68(v34, &qword_1EC467358);
}

uint64_t sub_1CACD4BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v71 = sub_1CAD4C884();
  v70 = *(v71 - 8);
  v3 = MEMORY[0x1EEE9AC00](v71);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v64 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672F0);
  MEMORY[0x1EEE9AC00](v91);
  v69 = &v64 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672F8);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v64 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467300);
  MEMORY[0x1EEE9AC00](v89);
  v65 = &v64 - v8;
  v84 = sub_1CAD4D3C4();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467260);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v64 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467268);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v64 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467270);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467308);
  v86 = *(v16 - 8);
  v87 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v64 - v17;
  v93 = *(a1 + 1);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v72 = *(a1 + 128);
  v20 = *(a1 + 160);
  v21 = sub_1CACD3094(v18, v19);
  v23 = v22;
  v66 = v21;
  v94 = v21;
  v95 = v22;
  sub_1CABA6054();
  v73 = v23;

  v24 = sub_1CAD4D444();
  v26 = v25;
  v28 = v27;
  v94 = v20;

  v29 = sub_1CAD4D3E4();
  v31 = v30;
  v33 = v32;
  sub_1CABA6128(v24, v26, v28 & 1);

  v34 = sub_1CAD4D284();
  (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  sub_1CAD4D2C4();
  sub_1CAB21B68(v12, &qword_1EC4646B8);
  v35 = sub_1CAD4D424();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1CABA6128(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v94 = v35;
  v95 = v37;
  v96 = v39 & 1;
  v97 = v41;
  v98 = KeyPath;
  v99 = 1;
  v100 = 0;
  v43 = v80;
  if (v93)
  {
    sub_1CAD4D3B4();
  }

  else
  {
    sub_1CAD4D3A4();
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465368);
  v45 = sub_1CAC3E638();
  v46 = v79;
  sub_1CAD4D514();
  (*(v82 + 8))(v43, v84);
  sub_1CABA6128(v35, v37, v39 & 1);

  v94 = v44;
  v95 = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v75;
  v48 = v83;
  sub_1CAD4D774();
  (*(v81 + 8))(v46, v48);
  v49 = v74;
  (*(v77 + 32))(v74, v47, v78);
  *(v49 + *(v76 + 36)) = 257;
  sub_1CACD8E94();
  v50 = v85;
  sub_1CAD4D474();
  sub_1CAB21B68(v49, &qword_1EC467270);
  v52 = v86;
  v51 = v87;
  if (v93)
  {
    v53 = v69;
    (*(v86 + 16))(v69, v50, v87);
    v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467310) + 52));
    v55 = v73;
    *v54 = v66;
    v54[1] = v55;
    v56 = v68;
    sub_1CAD4C874();
    v57 = v70;
    v58 = v71;
    (*(v70 + 16))(v67, v56, v71);
    sub_1CACD9258(&qword_1EC4621F8, MEMORY[0x1E697E468]);
    v59 = sub_1CAD4C764();
    (*(v57 + 8))(v56, v58);
    v60 = v90;
    *(v53 + *(v91 + 36)) = v59;
    v61 = &qword_1EC4672F0;
    sub_1CAB23A9C(v53, v60, &qword_1EC4672F0);
  }

  else
  {

    v53 = v65;
    v62 = &v65[*(v89 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467280);
    sub_1CAD4C9D4();
    *v62 = swift_getKeyPath();
    (*(v52 + 16))(v53, v50, v51);
    v61 = &qword_1EC467300;
    sub_1CAB23A9C(v53, v90, &qword_1EC467300);
  }

  swift_storeEnumTagMultiPayload();
  sub_1CACD92A0();
  sub_1CACD9394();
  sub_1CAD4CE24();
  sub_1CAB21B68(v53, v61);
  return (*(v52 + 8))(v50, v51);
}

uint64_t sub_1CACD568C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467250);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v42 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467258);
  MEMORY[0x1EEE9AC00](v58);
  v42 = &v42 - v4;
  v54 = sub_1CAD4D3C4();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467260);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v42 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467268);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v42 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467270);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v42 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467278);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v42 - v13;
  v43 = *(a1 + 1);
  v50 = *(a1 + 184);
  sub_1CACD37C8(*(a1 + 200), *(a1 + 208));
  v61 = v14;
  v62 = v15;
  sub_1CABA6054();
  v16 = sub_1CAD4D444();
  v18 = v17;
  v20 = v19;
  v21 = sub_1CAD4D284();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_1CAD4D2C4();
  sub_1CAB21B68(v8, &qword_1EC4646B8);
  v22 = sub_1CAD4D424();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_1CABA6128(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v22;
  v62 = v24;
  v63 = v26 & 1;
  v64 = v28;
  v65 = KeyPath;
  v66 = 1;
  v67 = 0;
  v30 = v49;
  if (v43 == 1)
  {
    sub_1CAD4D3A4();
  }

  else
  {
    sub_1CAD4D3B4();
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465368);
  v32 = sub_1CAC3E638();
  sub_1CAD4D514();
  (*(v52 + 8))(v30, v54);
  sub_1CABA6128(v22, v24, v26 & 1);

  v61 = v31;
  v62 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v53;
  sub_1CAD4D774();
  (*(v51 + 8))(v10, v34);
  v35 = v46;
  (*(v47 + 32))(v46, v33, v48);
  *(v35 + *(v44 + 36)) = 257;
  v36 = v56;
  v37 = &v56[*(v55 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467280);
  sub_1CAD4C9D4();
  *v37 = swift_getKeyPath();
  sub_1CABA62E4(v35, v36, &qword_1EC467270);
  v38 = v50;
  if (v50)
  {
    v39 = v42;
    sub_1CAB23A9C(v36, v42, &qword_1EC467278);
    v40 = v59;
    *(v39 + *(v58 + 36)) = v38;
    sub_1CAB23A9C(v39, v40, &qword_1EC467258);
    swift_storeEnumTagMultiPayload();
    sub_1CACD8D24();
    sub_1CACD8DDC();

    sub_1CAD4CE24();
    sub_1CAB21B68(v39, &qword_1EC467258);
  }

  else
  {
    sub_1CAB23A9C(v36, v59, &qword_1EC467278);
    swift_storeEnumTagMultiPayload();
    sub_1CACD8D24();
    sub_1CACD8DDC();
    sub_1CAD4CE24();
  }

  return sub_1CAB21B68(v36, &qword_1EC467278);
}

uint64_t CUIKDateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v25 = sub_1CAD4D074();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CUIKDateView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671B8);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671C0);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v25 - v11;
  sub_1CACD8464(v1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1CACD84C8(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v30 = sub_1CACD852C;
  v31 = v14;
  sub_1CAD4D064();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671C8);
  v16 = sub_1CAB23B0C(&qword_1EC462200, &qword_1EC4671C8);
  sub_1CAD4D624();
  (*(v2 + 8))(v4, v25);

  v30 = sub_1CACD3094(*(v1 + *(v6 + 32)), *(v1 + *(v6 + 32) + 8));
  v31 = v17;
  sub_1CABA6054();
  v18 = sub_1CAD4D444();
  v20 = v19;
  v22 = v21;
  v30 = v15;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_1CAD4D5F4();
  sub_1CABA6128(v18, v20, v22 & 1);

  (*(v28 + 8))(v10, v23);
  sub_1CAD4C8F4();
  return sub_1CAB21B68(v12, &qword_1EC4671C0);
}

uint64_t sub_1CACD6238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1CAD4DC94();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671E8);
  return sub_1CACD6298(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1CACD6298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v91 = a1;
  v98 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671F0);
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4671F8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = (&v80 - v10);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467208);
  v11 = MEMORY[0x1EEE9AC00](v89);
  v95 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v88 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v80 - v15;
  v16 = sub_1CAD4C7A4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = v18;
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CUIKDateView();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = v20;
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467210);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v92 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v80 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v80 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAD5A0D0;
  v30 = sub_1CAD4D194();
  *(inited + 32) = v30;
  v31 = sub_1CAD4D1B4();
  *(inited + 33) = v31;
  v32 = sub_1CAD4D1A4();
  sub_1CAD4D1A4();
  if (sub_1CAD4D1A4() != v30)
  {
    v32 = sub_1CAD4D1A4();
  }

  sub_1CAD4D1A4();
  if (sub_1CAD4D1A4() != v31)
  {
    v32 = sub_1CAD4D1A4();
  }

  v33 = v101;
  *v27 = v32;
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467220) + 44);
  *&v129[0] = &unk_1F4AA0210;
  KeyPath = swift_getKeyPath();
  v34 = v91;
  sub_1CACD8464(v91, v21);
  (*(v17 + 16))(v19, v33, v16);
  v35 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v36 = (v85 + *(v17 + 80) + v35) & ~*(v17 + 80);
  v37 = swift_allocObject();
  sub_1CACD84C8(v21, v37 + v35);
  (*(v17 + 32))(v37 + v36, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467230);
  v38 = v34;
  sub_1CAB23B0C(&qword_1EC461F28, &qword_1EC467228);
  sub_1CACD8B3C();
  sub_1CAD4DB64();
  sub_1CABA62E4(v27, v99, &qword_1EC467210);
  v39 = v34 + *(v87 + 20);
  if (*(v39 + 1) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(v39 + 40);
  }

  v41 = v96;
  v42 = sub_1CAD4CC94();
  v43 = v90;
  *v90 = v42;
  *(v43 + 8) = v40;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467240);
  sub_1CACD7744(v38, v43 + *(v44 + 44));
  sub_1CAD4C794();
  v46 = *(v39 + 16);
  v47 = *(v39 + 24) + v45 * 0.5;
  sub_1CAD4C794();
  v49 = v46 * v48;
  v50 = v88;
  sub_1CABA62E4(v43, v88, &qword_1EC467200);
  v51 = (v50 + *(v89 + 36));
  *v51 = v47;
  v51[1] = v49;
  sub_1CABA62E4(v50, v100, &qword_1EC467208);
  if (*(v39 + 2) == 1)
  {
    v52 = *(v39 + 176);
    v53 = *(v39 + 144);
    v125 = *(v39 + 160);
    v126 = v52;
    v54 = *(v39 + 176);
    v127 = *(v39 + 192);
    v55 = *(v39 + 112);
    v56 = *(v39 + 80);
    v121 = *(v39 + 96);
    v122 = v55;
    v57 = *(v39 + 112);
    v58 = *(v39 + 144);
    v123 = *(v39 + 128);
    v124 = v58;
    v59 = *(v39 + 48);
    v60 = *(v39 + 16);
    v117 = *(v39 + 32);
    v118 = v59;
    v61 = *(v39 + 48);
    v62 = *(v39 + 80);
    v119 = *(v39 + 64);
    v120 = v62;
    v63 = *(v39 + 16);
    v116[0] = *v39;
    v116[1] = v63;
    v112 = v125;
    v113 = v54;
    v114 = *(v39 + 192);
    v108 = v121;
    v109 = v57;
    v110 = v123;
    v111 = v53;
    v104 = v117;
    v105 = v61;
    v128 = *(v39 + 208);
    v106 = v119;
    v107 = v56;
    v64 = *&v117;
    v115 = *(v39 + 208);
    v102 = v116[0];
    v103 = v60;
    sub_1CACD8BF4(v116, v129);
    v65 = v81;
    sub_1CACD568C(&v102, v81);
    v129[10] = v112;
    v129[11] = v113;
    v129[12] = v114;
    v130 = v115;
    v129[6] = v108;
    v129[7] = v109;
    v129[8] = v110;
    v129[9] = v111;
    v129[2] = v104;
    v129[3] = v105;
    v129[4] = v106;
    v129[5] = v107;
    v129[0] = v102;
    v129[1] = v103;
    sub_1CACD8C2C(v129);
    sub_1CAD4C794();
    v67 = v66 * 0.5;
    sub_1CAD4C794();
    v69 = v94;
    v70 = (v65 + *(v94 + 36));
    *v70 = v67;
    v70[1] = v64 * v68;
    sub_1CABA62E4(v65, v41, &qword_1EC4671F0);
    (*(v93 + 56))(v41, 0, 1, v69);
  }

  else
  {
    (*(v93 + 56))(v41, 1, 1, v94);
  }

  v71 = v99;
  v72 = v92;
  sub_1CAB23A9C(v99, v92, &qword_1EC467210);
  v73 = v100;
  v74 = v95;
  sub_1CAB23A9C(v100, v95, &qword_1EC467208);
  v75 = v97;
  sub_1CAB23A9C(v41, v97, &qword_1EC4671F8);
  v76 = v41;
  v77 = v98;
  sub_1CAB23A9C(v72, v98, &qword_1EC467210);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467248);
  sub_1CAB23A9C(v74, v77 + *(v78 + 48), &qword_1EC467208);
  sub_1CAB23A9C(v75, v77 + *(v78 + 64), &qword_1EC4671F8);
  sub_1CAB21B68(v76, &qword_1EC4671F8);
  sub_1CAB21B68(v73, &qword_1EC467208);
  sub_1CAB21B68(v71, &qword_1EC467210);
  sub_1CAB21B68(v75, &qword_1EC4671F8);
  sub_1CAB21B68(v74, &qword_1EC467208);
  return sub_1CAB21B68(v72, &qword_1EC467210);
}

uint64_t sub_1CACD6C7C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_1CAD4CC74();
  v7 = a2 + *(type metadata accessor for CUIKDateView() + 20);
  v8 = v5 * *(v7 + 40);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467318);
  sub_1CACD6D4C(a2, a3 + *(v9 + 44));
  sub_1CAD4C794();
  v11 = v10 * 0.5;
  v12 = *(v7 + 8);
  sub_1CAD4C794();
  v14 = v12 * v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467230);
  v16 = (a3 + *(result + 36));
  *v16 = v11;
  v16[1] = v14;
  return result;
}

uint64_t sub_1CACD6D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467320);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v63 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467328);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v63 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467330);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467338);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v63 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467340);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467348);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v63 - v17;
  v19 = (a1 + *(type metadata accessor for CUIKDateView() + 20));
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 11);
    v22 = *(v19 + 9);
    v124 = *(v19 + 10);
    v125 = v21;
    v23 = *(v19 + 11);
    v126 = *(v19 + 12);
    v24 = *(v19 + 7);
    v25 = *(v19 + 5);
    v120 = *(v19 + 6);
    v121 = v24;
    v26 = *(v19 + 7);
    v27 = *(v19 + 9);
    v122 = *(v19 + 8);
    v123 = v27;
    v28 = *(v19 + 3);
    v29 = *(v19 + 1);
    v116 = *(v19 + 2);
    v117 = v28;
    v30 = *(v19 + 3);
    v31 = *(v19 + 5);
    v118 = *(v19 + 4);
    v119 = v31;
    v32 = *(v19 + 1);
    v114 = *v19;
    v115 = v32;
    v110 = v124;
    v111 = v23;
    v112 = *(v19 + 12);
    v106 = v120;
    v107 = v26;
    v108 = v122;
    v109 = v22;
    v102 = v116;
    v103 = v30;
    v104 = v118;
    v105 = v25;
    v127 = *(v19 + 26);
    v113 = *(v19 + 26);
    v100 = v114;
    v101 = v29;
    if (v20 == 1)
    {
      sub_1CACD8BF4(&v114, &v128);
      sub_1CACD4BCC(&v100, v18);
      v138 = v110;
      v139 = v111;
      v140 = v112;
      v141 = v113;
      v134 = v106;
      v135 = v107;
      v136 = v108;
      v137 = v109;
      v130 = v102;
      v131 = v103;
      v132 = v104;
      v133 = v105;
      v128 = v100;
      v129 = v101;
      sub_1CACD8C2C(&v128);
      sub_1CAB23A9C(v18, v5, &qword_1EC467348);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC461FA8, &qword_1EC467338);
      sub_1CACD9530();
      v33 = v67;
      sub_1CAD4CE24();
      sub_1CAB23A9C(v33, v68, &qword_1EC467330);
      swift_storeEnumTagMultiPayload();
      sub_1CACD9478();
      sub_1CACD95BC();
      sub_1CAD4CE24();
      sub_1CAB21B68(v33, &qword_1EC467330);
      v34 = v18;
      v35 = &qword_1EC467348;
    }

    else
    {
      sub_1CACD8BF4(&v114, &v128);
      sub_1CACD4428(&v100, v13);
      v138 = v110;
      v139 = v111;
      v140 = v112;
      v141 = v113;
      v134 = v106;
      v135 = v107;
      v136 = v108;
      v137 = v109;
      v130 = v102;
      v131 = v103;
      v132 = v104;
      v133 = v105;
      v128 = v100;
      v129 = v101;
      sub_1CACD8C2C(&v128);
      sub_1CAB23A9C(v13, v68, &qword_1EC467340);
      swift_storeEnumTagMultiPayload();
      sub_1CACD9478();
      sub_1CACD95BC();
      sub_1CAD4CE24();
      v34 = v13;
      v35 = &qword_1EC467340;
    }
  }

  else
  {
    v36 = *(v19 + 11);
    v37 = *(v19 + 9);
    v96 = *(v19 + 10);
    v97 = v36;
    v38 = *(v19 + 11);
    v98 = *(v19 + 12);
    v39 = *(v19 + 7);
    v40 = *(v19 + 5);
    v92 = *(v19 + 6);
    v93 = v39;
    v41 = *(v19 + 7);
    v42 = *(v19 + 9);
    v94 = *(v19 + 8);
    v95 = v42;
    v43 = *(v19 + 3);
    v44 = *(v19 + 1);
    v88 = *(v19 + 2);
    v89 = v43;
    v45 = *(v19 + 3);
    v46 = *(v19 + 5);
    v90 = *(v19 + 4);
    v91 = v46;
    v47 = *(v19 + 1);
    v87[0] = *v19;
    v87[1] = v47;
    v138 = v96;
    v139 = v38;
    v140 = *(v19 + 12);
    v134 = v92;
    v135 = v41;
    v136 = v94;
    v137 = v37;
    v130 = v88;
    v131 = v45;
    v132 = v90;
    v133 = v40;
    v99 = *(v19 + 26);
    v141 = *(v19 + 26);
    v128 = v87[0];
    v129 = v44;
    sub_1CACD8BF4(v87, &v114);
    v63 = v18;
    sub_1CACD4BCC(&v128, v18);
    v110 = v138;
    v111 = v139;
    v112 = v140;
    v113 = v141;
    v106 = v134;
    v107 = v135;
    v108 = v136;
    v109 = v137;
    v102 = v130;
    v103 = v131;
    v104 = v132;
    v105 = v133;
    v100 = v128;
    v101 = v129;
    sub_1CACD8C2C(&v100);
    v48 = *(v19 + 11);
    v49 = *(v19 + 9);
    v124 = *(v19 + 10);
    v125 = v48;
    v50 = *(v19 + 11);
    v126 = *(v19 + 12);
    v51 = *(v19 + 7);
    v52 = *(v19 + 5);
    v120 = *(v19 + 6);
    v121 = v51;
    v53 = *(v19 + 7);
    v54 = *(v19 + 9);
    v122 = *(v19 + 8);
    v123 = v54;
    v55 = *(v19 + 3);
    v56 = *(v19 + 1);
    v116 = *(v19 + 2);
    v117 = v55;
    v57 = *(v19 + 3);
    v58 = *(v19 + 5);
    v118 = *(v19 + 4);
    v119 = v58;
    v59 = *(v19 + 1);
    v114 = *v19;
    v115 = v59;
    v83 = v124;
    v84 = v50;
    v85 = *(v19 + 12);
    v79 = v120;
    v80 = v53;
    v81 = v122;
    v82 = v49;
    v75 = v116;
    v76 = v57;
    v77 = v118;
    v78 = v52;
    v127 = *(v19 + 26);
    v86 = *(v19 + 26);
    v73 = v114;
    v74 = v56;
    sub_1CACD8BF4(&v114, &v128);
    sub_1CACD4428(&v73, v13);
    v138 = v83;
    v139 = v84;
    v140 = v85;
    v141 = v86;
    v134 = v79;
    v135 = v80;
    v136 = v81;
    v137 = v82;
    v130 = v75;
    v131 = v76;
    v132 = v77;
    v133 = v78;
    v128 = v73;
    v129 = v74;
    sub_1CACD8C2C(&v128);
    sub_1CAB23A9C(v18, v16, &qword_1EC467348);
    sub_1CAB23A9C(v13, v11, &qword_1EC467340);
    sub_1CAB23A9C(v16, v8, &qword_1EC467348);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467378);
    sub_1CAB23A9C(v11, &v8[*(v60 + 48)], &qword_1EC467340);
    sub_1CAB21B68(v11, &qword_1EC467340);
    sub_1CAB21B68(v16, &qword_1EC467348);
    sub_1CAB23A9C(v8, v5, &qword_1EC467338);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC461FA8, &qword_1EC467338);
    sub_1CACD9530();
    v61 = v67;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v61, v68, &qword_1EC467330);
    swift_storeEnumTagMultiPayload();
    sub_1CACD9478();
    sub_1CACD95BC();
    sub_1CAD4CE24();
    sub_1CAB21B68(v61, &qword_1EC467330);
    sub_1CAB21B68(v8, &qword_1EC467338);
    sub_1CAB21B68(v13, &qword_1EC467340);
    v34 = v63;
    v35 = &qword_1EC467348;
  }

  return sub_1CAB21B68(v34, v35);
}

uint64_t sub_1CACD7744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467298);
  MEMORY[0x1EEE9AC00](v107);
  v101 = &v99 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672A0);
  v4 = MEMORY[0x1EEE9AC00](v100);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v99 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672A8);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v99 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672B0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v99 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672B8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v99 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672C0);
  MEMORY[0x1EEE9AC00](v105);
  v13 = &v99 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672C8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v99 - v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672D0);
  v20 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v99 - v22;
  v24 = (a1 + *(type metadata accessor for CUIKDateView() + 20));
  if (*(v24 + 1))
  {
    if (*(v24 + 1) != 1)
    {
      v86 = v24[11];
      v87 = v24[9];
      v165 = v24[10];
      v166 = v86;
      v88 = v24[11];
      v167 = v24[12];
      v89 = v24[7];
      v90 = v24[5];
      v161 = v24[6];
      v162 = v89;
      v91 = v24[7];
      v92 = v24[9];
      v163 = v24[8];
      v164 = v92;
      v93 = v24[3];
      v94 = v24[1];
      v157 = v24[2];
      v158 = v93;
      v95 = v24[3];
      v96 = v24[5];
      v159 = v24[4];
      v160 = v96;
      v97 = v24[1];
      v155 = *v24;
      v156 = v97;
      v151 = v165;
      v152 = v88;
      v153 = v24[12];
      v147 = v161;
      v148 = v91;
      v149 = v163;
      v150 = v87;
      v143 = v157;
      v144 = v95;
      v145 = v159;
      v146 = v90;
      v168 = *(v24 + 26);
      v154 = *(v24 + 26);
      v141 = v155;
      v142 = v94;
      sub_1CACD8BF4(&v155, &v169);
      sub_1CACD4290(&v141, v23);
      v179 = v151;
      v180 = v152;
      v181 = v153;
      v182 = v154;
      v175 = v147;
      v176 = v148;
      v177 = v149;
      v178 = v150;
      v171 = v143;
      v172 = v144;
      v173 = v145;
      v174 = v146;
      v169 = v141;
      v170 = v142;
      sub_1CACD8C2C(&v169);
      sub_1CAB23A9C(v23, v111, &qword_1EC4672D0);
      swift_storeEnumTagMultiPayload();
      sub_1CACD9010();
      sub_1CACD90F0();
      sub_1CAD4CE24();
      v85 = v23;
      return sub_1CAB21B68(v85, &qword_1EC4672D0);
    }

    v25 = v24[11];
    v26 = v24[9];
    v137 = v24[10];
    v138 = v25;
    v27 = v24[11];
    v139 = v24[12];
    v28 = v24[7];
    v29 = v24[5];
    v133 = v24[6];
    v134 = v28;
    v30 = v24[7];
    v31 = v24[9];
    v135 = v24[8];
    v136 = v31;
    v32 = v24[3];
    v33 = v24[1];
    v129 = v24[2];
    v130 = v32;
    v34 = v24[3];
    v35 = v24[5];
    v131 = v24[4];
    v132 = v35;
    v36 = v24[1];
    v127 = *v24;
    v128 = v36;
    v179 = v137;
    v180 = v27;
    v181 = v24[12];
    v175 = v133;
    v176 = v30;
    v177 = v135;
    v178 = v26;
    v171 = v129;
    v172 = v34;
    v173 = v131;
    v174 = v29;
    v140 = *(v24 + 26);
    v182 = *(v24 + 26);
    v169 = v127;
    v170 = v33;
    sub_1CACD8BF4(&v127, &v155);
    v99 = v23;
    sub_1CACD4290(&v169, v23);
    v151 = v179;
    v152 = v180;
    v153 = v181;
    v154 = v182;
    v147 = v175;
    v148 = v176;
    v149 = v177;
    v150 = v178;
    v143 = v171;
    v144 = v172;
    v145 = v173;
    v146 = v174;
    v141 = v169;
    v142 = v170;
    sub_1CACD8C2C(&v141);
    v37 = v24[11];
    v38 = v24[9];
    v165 = v24[10];
    v166 = v37;
    v39 = v24[11];
    v167 = v24[12];
    v40 = v24[7];
    v41 = v24[5];
    v161 = v24[6];
    v162 = v40;
    v42 = v24[7];
    v43 = v24[9];
    v163 = v24[8];
    v164 = v43;
    v44 = v24[3];
    v45 = v24[1];
    v157 = v24[2];
    v158 = v44;
    v46 = v24[3];
    v47 = v24[5];
    v159 = v24[4];
    v160 = v47;
    v48 = v24[1];
    v155 = *v24;
    v156 = v48;
    v123 = v165;
    v124 = v39;
    v125 = v24[12];
    v119 = v161;
    v120 = v42;
    v121 = v163;
    v122 = v38;
    v115 = v157;
    v116 = v46;
    v168 = *(v24 + 26);
    v117 = v159;
    v118 = v41;
    v49 = v43;
    v126 = *(v24 + 26);
    v113 = v155;
    v114 = v45;
    sub_1CACD8BF4(&v155, &v169);
    v50 = v8;
    sub_1CACD568C(&v113, v8);
    v179 = v123;
    v180 = v124;
    v181 = v125;
    v182 = v126;
    v175 = v119;
    v176 = v120;
    v177 = v121;
    v178 = v122;
    v171 = v115;
    v172 = v116;
    v173 = v117;
    v174 = v118;
    v169 = v113;
    v170 = v114;
    sub_1CACD8C2C(&v169);
    *&v8[*(v100 + 36)] = v49;
    v51 = v102;
    sub_1CAB23A9C(v23, v102, &qword_1EC4672D0);
    sub_1CAB23A9C(v8, v6, &qword_1EC4672A0);
    v52 = v101;
    sub_1CAB23A9C(v51, v101, &qword_1EC4672D0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672E0);
    sub_1CAB23A9C(v6, v52 + *(v53 + 48), &qword_1EC4672A0);
    sub_1CAB21B68(v6, &qword_1EC4672A0);
    sub_1CAB21B68(v51, &qword_1EC4672D0);
    sub_1CAB23A9C(v52, v103, &qword_1EC467298);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC461FB8, &qword_1EC4672C0);
    sub_1CAB23B0C(&qword_1EC461FB0, &qword_1EC467298);
    v54 = v106;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v54, v111, &qword_1EC4672B8);
    swift_storeEnumTagMultiPayload();
    sub_1CACD9010();
    sub_1CACD90F0();
    sub_1CAD4CE24();
    sub_1CAB21B68(v54, &qword_1EC4672B8);
    sub_1CAB21B68(v52, &qword_1EC467298);
    v55 = v50;
    v56 = &qword_1EC4672A0;
  }

  else
  {
    v57 = v24[11];
    v58 = v24[9];
    v137 = v24[10];
    v138 = v57;
    v59 = v24[11];
    v139 = v24[12];
    v60 = v24[7];
    v61 = v24[5];
    v133 = v24[6];
    v134 = v60;
    v62 = v24[7];
    v63 = v24[9];
    v135 = v24[8];
    v136 = v63;
    v64 = v24[3];
    v65 = v24[1];
    v129 = v24[2];
    v130 = v64;
    v66 = v24[3];
    v67 = v24[5];
    v131 = v24[4];
    v132 = v67;
    v68 = v24[1];
    v127 = *v24;
    v128 = v68;
    v179 = v137;
    v180 = v59;
    v181 = v24[12];
    v175 = v133;
    v176 = v62;
    v177 = v135;
    v178 = v58;
    v171 = v129;
    v172 = v66;
    v173 = v131;
    v174 = v61;
    v140 = *(v24 + 26);
    v182 = *(v24 + 26);
    v169 = v127;
    v170 = v65;
    sub_1CACD8BF4(&v127, &v155);
    v99 = v23;
    sub_1CACD4290(&v169, v23);
    v151 = v179;
    v152 = v180;
    v153 = v181;
    v154 = v182;
    v147 = v175;
    v148 = v176;
    v149 = v177;
    v150 = v178;
    v143 = v171;
    v144 = v172;
    v145 = v173;
    v146 = v174;
    v141 = v169;
    v142 = v170;
    sub_1CACD8C2C(&v141);
    v69 = v24[11];
    v70 = v24[9];
    v165 = v24[10];
    v166 = v69;
    v71 = v24[11];
    v167 = v24[12];
    v72 = v24[7];
    v73 = v24[5];
    v161 = v24[6];
    v162 = v72;
    v74 = v24[7];
    v75 = v24[9];
    v163 = v24[8];
    v164 = v75;
    v76 = v24[3];
    v77 = v24[1];
    v157 = v24[2];
    v158 = v76;
    v78 = v24[3];
    v79 = v24[5];
    v159 = v24[4];
    v160 = v79;
    v80 = v24[1];
    v155 = *v24;
    v156 = v80;
    v123 = v165;
    v124 = v71;
    v125 = v24[12];
    v119 = v161;
    v120 = v74;
    v121 = v163;
    v122 = v70;
    v115 = v157;
    v116 = v78;
    v168 = *(v24 + 26);
    v117 = v159;
    v118 = v73;
    v81 = v75;
    v126 = *(v24 + 26);
    v113 = v155;
    v114 = v77;
    sub_1CACD8BF4(&v155, &v169);
    sub_1CACD4BCC(&v113, v19);
    v179 = v123;
    v180 = v124;
    v181 = v125;
    v182 = v126;
    v175 = v119;
    v176 = v120;
    v177 = v121;
    v178 = v122;
    v171 = v115;
    v172 = v116;
    v173 = v117;
    v174 = v118;
    v169 = v113;
    v170 = v114;
    sub_1CACD8C2C(&v169);
    *&v19[*(v14 + 36)] = v81;
    v82 = v102;
    sub_1CAB23A9C(v23, v102, &qword_1EC4672D0);
    sub_1CAB23A9C(v19, v17, &qword_1EC4672C8);
    sub_1CAB23A9C(v82, v13, &qword_1EC4672D0);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4672E8);
    sub_1CAB23A9C(v17, &v13[*(v83 + 48)], &qword_1EC4672C8);
    sub_1CAB21B68(v17, &qword_1EC4672C8);
    sub_1CAB21B68(v82, &qword_1EC4672D0);
    sub_1CAB23A9C(v13, v103, &qword_1EC4672C0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC461FB8, &qword_1EC4672C0);
    sub_1CAB23B0C(&qword_1EC461FB0, &qword_1EC467298);
    v84 = v106;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v84, v111, &qword_1EC4672B8);
    swift_storeEnumTagMultiPayload();
    sub_1CACD9010();
    sub_1CACD90F0();
    sub_1CAD4CE24();
    sub_1CAB21B68(v84, &qword_1EC4672B8);
    sub_1CAB21B68(v13, &qword_1EC4672C0);
    v55 = v19;
    v56 = &qword_1EC4672C8;
  }

  sub_1CAB21B68(v55, v56);
  v85 = v99;
  return sub_1CAB21B68(v85, &qword_1EC4672D0);
}

uint64_t sub_1CACD8464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIKDateView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACD84C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIKDateView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACD852C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CUIKDateView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CACD6238(a1, v6, a2);
}

unint64_t sub_1CACD85B0()
{
  result = qword_1EC4671D0;
  if (!qword_1EC4671D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4671D0);
  }

  return result;
}

unint64_t sub_1CACD8608()
{
  result = qword_1EC4671D8;
  if (!qword_1EC4671D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4671D8);
  }

  return result;
}

unint64_t sub_1CACD8660()
{
  result = qword_1EC4671E0;
  if (!qword_1EC4671E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4671E0);
  }

  return result;
}

void sub_1CACD86F8()
{
  sub_1CAD4C0F4();
  if (v0 <= 0x3F)
  {
    sub_1CACD8794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CACD8794()
{
  if (!qword_1EC462238)
  {
    sub_1CAD4C374();
    v0 = sub_1CAD4C6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC462238);
    }
  }
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1CACD8830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CACD8878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CACD892C()
{
  result = qword_1EC4621A0;
  if (!qword_1EC4621A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4671C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4671C8);
    sub_1CAB23B0C(&qword_1EC462200, &qword_1EC4671C8);
    swift_getOpaqueTypeConformance2();
    sub_1CACD9258(&qword_1EC462018, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621A0);
  }

  return result;
}

uint64_t sub_1CACD8A58@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CUIKDateView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_1CAD4C7A4();

  return sub_1CACD6C7C(a1, v2 + v6, a2);
}

unint64_t sub_1CACD8B3C()
{
  result = qword_1EC462180;
  if (!qword_1EC462180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467230);
    sub_1CAB23B0C(&qword_1EC461FF8, &qword_1EC467238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462180);
  }

  return result;
}

uint64_t sub_1CACD8C5C(uint64_t a1)
{
  v2 = sub_1CAD4C9E4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1CAD4CA84();
}

unint64_t sub_1CACD8D24()
{
  result = qword_1EC467288;
  if (!qword_1EC467288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467258);
    sub_1CACD8DDC();
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467288);
  }

  return result;
}

unint64_t sub_1CACD8DDC()
{
  result = qword_1EC467290;
  if (!qword_1EC467290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467278);
    sub_1CACD8E94();
    sub_1CAB23B0C(&qword_1EC462038, &qword_1EC467280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467290);
  }

  return result;
}

unint64_t sub_1CACD8E94()
{
  result = qword_1EC462188;
  if (!qword_1EC462188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465368);
    sub_1CAC3E638();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462188);
  }

  return result;
}

uint64_t sub_1CACD8FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CACD9010()
{
  result = qword_1EC462070;
  if (!qword_1EC462070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4672B8);
    sub_1CAB23B0C(&qword_1EC461FB8, &qword_1EC4672C0);
    sub_1CAB23B0C(&qword_1EC461FB0, &qword_1EC467298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462070);
  }

  return result;
}

unint64_t sub_1CACD90F0()
{
  result = qword_1EC462120;
  if (!qword_1EC462120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4672D0);
    sub_1CACD91D4(&qword_1EC462150, &qword_1EC4672D8, &unk_1CAD67640, sub_1CAC3E638);
    sub_1CAB23B0C(&qword_1EC462038, &qword_1EC467280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462120);
  }

  return result;
}

uint64_t sub_1CACD91D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1CACD9258(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CACD92A0()
{
  result = qword_1EC4621B8;
  if (!qword_1EC4621B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467270);
    sub_1CACD8E94();
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462038, &qword_1EC467280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621B8);
  }

  return result;
}

unint64_t sub_1CACD9394()
{
  result = qword_1EC462178;
  if (!qword_1EC462178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4672F0);
    sub_1CAB23B0C(&qword_1EC461FD8, &qword_1EC467310);
    sub_1CAB23B0C(&qword_1EC462060, &qword_1EC4644F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462178);
  }

  return result;
}

unint64_t sub_1CACD9478()
{
  result = qword_1EC462068;
  if (!qword_1EC462068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467330);
    sub_1CAB23B0C(&qword_1EC461FA8, &qword_1EC467338);
    sub_1CACD9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462068);
  }

  return result;
}

unint64_t sub_1CACD9530()
{
  result = qword_1EC4620A0;
  if (!qword_1EC4620A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467348);
    sub_1CACD92A0();
    sub_1CACD9394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620A0);
  }

  return result;
}

unint64_t sub_1CACD95BC()
{
  result = qword_1EC462090;
  if (!qword_1EC462090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467340);
    sub_1CACD9648();
    sub_1CACD9820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462090);
  }

  return result;
}

unint64_t sub_1CACD9648()
{
  result = qword_1EC462108;
  if (!qword_1EC462108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467350);
    sub_1CACD91D4(&qword_1EC462138, &qword_1EC467358, &unk_1CAD676C8, sub_1CACD972C);
    sub_1CAB23B0C(&qword_1EC462038, &qword_1EC467280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462108);
  }

  return result;
}

unint64_t sub_1CACD972C()
{
  result = qword_1EC462190;
  if (!qword_1EC462190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465368);
    sub_1CAC3E638();
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462190);
  }

  return result;
}

unint64_t sub_1CACD9820()
{
  result = qword_1EC462168;
  if (!qword_1EC462168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467368);
    sub_1CAB23B0C(&qword_1EC461FE0, &qword_1EC467370);
    sub_1CAB23B0C(&qword_1EC462060, &qword_1EC4644F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462168);
  }

  return result;
}

uint64_t sub_1CACD991C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for FamilyCalendarColorSelectionView();
  v5 = a1 + v4[5];
  type metadata accessor for CreateFamilyCalendarViewModel();
  sub_1CACDDCA8(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  *v5 = sub_1CAD4C6D4();
  v5[8] = v6 & 1;
  v7 = (a1 + v4[6]);
  v8 = CUIKAppTintColor();
  sub_1CAD4D7D4();
  sub_1CAD4D984();
  *v7 = v14;
  v7[1] = v15;
  v9 = a1 + v4[7];
  sub_1CAD4D984();
  *v9 = v14;
  *(v9 + 1) = v15;
  v10 = (a1 + v4[8]);
  sub_1CAD4DEE4();
  v11 = CUIKBundle();
  sub_1CAD4C184();
  result = sub_1CAD4DFC4();
  *v10 = result;
  v10[1] = v13;
  return result;
}

uint64_t type metadata accessor for FamilyCalendarColorSelectionView()
{
  result = qword_1EC467388;
  if (!qword_1EC467388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACD9BC0()
{
  sub_1CACD9CD4(319, &qword_1EC463A50, MEMORY[0x1E697BF88]);
  if (v0 <= 0x3F)
  {
    sub_1CACD9CD4(319, &qword_1EC464290, type metadata accessor for CreateFamilyCalendarViewModel);
    if (v1 <= 0x3F)
    {
      sub_1CACD9D28(319, &qword_1EC467398);
      if (v2 <= 0x3F)
      {
        sub_1CACD9D28(319, &qword_1EC463558);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CACD9CD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4C6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CACD9D28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CAD4D9C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CACD9D90@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  v7 = sub_1CAD4CF64();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FamilyCalendarColorSelectionView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467478);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v46 = *a1;
  v18 = *(a1 + 1);
  v44 = *(a1 + 3);
  v45 = v18;
  sub_1CACDD084(v4, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = *(a1 + 1);
  *(v20 + 24) = *a1;
  *(v20 + 40) = v21;
  *(v20 + 56) = a1[4];
  sub_1CACDD0E8(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v40 = a1;
  v41 = v4;
  v42 = a2;
  sub_1CAC38548(&v46, v43);
  sub_1CAC385A4(&v45, v43);
  sub_1CAB23A9C(&v44, v43, &qword_1EC4643D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674F8);
  sub_1CAB23B0C(&qword_1EC467500, &qword_1EC4674F8);
  sub_1CAD4D9E4();
  sub_1CAD4CF54();
  sub_1CAB23B0C(&qword_1EC467480, &qword_1EC467478);
  sub_1CACDDCA8(&qword_1EC464380, MEMORY[0x1E697C728]);
  v22 = v39;
  v23 = v37;
  sub_1CAD4D4E4();
  (*(v38 + 8))(v10, v23);
  (*(v15 + 8))(v17, v14);
  v24 = [objc_opt_self() cuik_tertiaryGroupedBackgroundColor];
  v43[0] = sub_1CAD4D7D4();
  v25 = sub_1CAD4DAA4();
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467470) + 36)) = v25;
  LOBYTE(v25) = sub_1CAD4D224();
  sub_1CAD4C5F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467450);
  v35 = v22 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_1CACDA1F8(char a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1CAD4CC04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = (a3 + *(type metadata accessor for FamilyCalendarColorSelectionView() + 32));
    v14 = v13[1];
    v28 = *v13;
  }

  else
  {
    v14 = a2[2];
    v28 = a2[1];
    v11 = a2[3];
    v12 = a2[4];
  }

  v26 = type metadata accessor for FamilyCalendarColorSelectionView();
  v27 = a3;
  v15 = (a3 + *(v26 + 20));
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v25 = v6;
    v18 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v25);
    v16 = v35[0];
  }

  LOBYTE(v35[0]) = a1 & 1;
  v35[1] = v10;
  v35[2] = v28;
  v35[3] = v14;
  v35[4] = v11;
  v35[5] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v24 - 2) = v16;
  *(&v24 - 1) = v35;
  v32 = v16;
  sub_1CACDDCA8(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);

  sub_1CAD4C414();

  if (a1)
  {
    v20 = v27 + *(v26 + 28);
    v22 = *(v20 + 8);
    LOBYTE(v32) = *v20;
    v21 = v32;
    v33 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D994();
    v30 = v21;
    v31 = v22;
    v29 = (v34 & 1) == 0;
    sub_1CAD4D9A4();
  }
}

uint64_t sub_1CACDA574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v15 = *a1;
  v8 = *(a1 + 1);
  v13 = *(a1 + 3);
  v14 = v8;
  v9 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 32) = a1[4];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674F8) + 40);
  sub_1CAC38548(&v15, v12);
  sub_1CAC385A4(&v14, v12);
  sub_1CAB23A9C(&v13, v12, &qword_1EC4643D0);
  result = sub_1CACDA644(a2, a1, a3, a4 + v10);
  *(a4 + 40) = 1;
  return result;
}

uint64_t sub_1CACDA644@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467508);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - v7;
  v8 = sub_1CAD4CC04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for FamilyCalendarColorSelectionView() + 20);
  v13 = *v12;
  LODWORD(a1) = *(v12 + 8);

  v14 = v13;
  v36 = a1;
  if ((a1 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v15 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = v41;
  }

  v33 = v9;
  v34 = v8;
  swift_getKeyPath();
  v41 = v14;
  sub_1CACDDCA8(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v16 = v14[10];
  v17 = v14[11];
  v18 = v14[12];
  v19 = v14[13];

  if ((sub_1CAD4D7F4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = v16 == a2[1] && v17 == a2[2];
  if (!v20 && (sub_1CAD4E9E4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = a2[4];
  if (!v19)
  {

    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v18 == a2[3] && v19 == v21)
  {

LABEL_23:
    v41 = sub_1CAD4D8F4();
    v29 = v35;
    sub_1CAD4D6A4();

    v27 = v38;
    v30 = v39;
    v31 = v40;
    (*(v38 + 32))(v40, v29, v39);
    v26 = v30;
    v25 = v31;
    v24 = 0;
    return (*(v27 + 56))(v25, v24, 1, v26);
  }

  v28 = sub_1CAD4E9E4();

  if (v28)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v37)
  {

    if ((v36 & 1) == 0)
    {
      sub_1CAD4E3F4();
      v22 = sub_1CAD4D184();
      sub_1CAD4C534();

      sub_1CAD4CBF4();
      swift_getAtKeyPath();

      (*(v33 + 8))(v11, v34);
      v13 = v41;
    }

    swift_getKeyPath();
    v41 = v13;
    sub_1CAD4C424();

    v23 = *(v13 + 64);

    if (v23 == 1)
    {
      goto LABEL_23;
    }
  }

  v24 = 1;
  v26 = v39;
  v25 = v40;
  v27 = v38;
  return (*(v27 + 56))(v25, v24, 1, v26);
}

uint64_t sub_1CACDAB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673A8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3];
  *v4 = sub_1CAD4CD94();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673E0);
  sub_1CACDAD0C(a1, &v4[*(v5 + 44)]);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673B0);
  sub_1CAB23B0C(&qword_1EC4673B8, &qword_1EC4673A8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673C0);
  v7 = sub_1CAB23B0C(&qword_1EC4673C8, &qword_1EC4673C0);
  v11 = v6;
  v12 = v7;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4D734();
  return sub_1CAB21B68(v4, &qword_1EC4673A8);
}

uint64_t sub_1CACDAD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v59 = sub_1CAD4C944();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673F8);
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467400);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v46 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467408);
  v46 = *(v54 - 8);
  v10 = v46;
  v11 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v46 - v13;
  v14 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = sub_1CAD4D8F4();
  v51 = sub_1CAD4D244();
  KeyPath = swift_getKeyPath();
  sub_1CAD4DEE4();
  v16 = CUIKBundle();
  sub_1CAD4C184();
  v17 = sub_1CAD4DFC4();
  v47 = v17;
  v49 = v18;
  v48 = sub_1CAD4D1F4();
  sub_1CAD4C5F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v71) = 0;
  v62 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467410);
  sub_1CAB23B0C(&qword_1EC467418, &qword_1EC467410);
  sub_1CAD4D354();
  sub_1CAD4DCF4();
  v27 = sub_1CAB23B0C(&qword_1EC467420, &qword_1EC4673F8);
  v28 = sub_1CACDDCA8(&qword_1EC464398, MEMORY[0x1E697C1F8]);
  v29 = v59;
  sub_1CAD4D794();
  (*(v60 + 8))(v4, v29);
  (*(v56 + 8))(v7, v5);
  v71 = v5;
  v72 = v29;
  v73 = v27;
  v74 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v61;
  v31 = v57;
  sub_1CAD4D664();
  (*(v58 + 8))(v9, v31);
  v32 = *(v10 + 16);
  v33 = v55;
  v34 = v30;
  v35 = v54;
  v32(v55, v34, v54);
  v36 = v52;
  *&v64 = v52;
  v37 = KeyPath;
  *(&v64 + 1) = KeyPath;
  v38 = v51;
  *&v65 = v51;
  *(&v65 + 1) = v17;
  *&v67 = 0;
  v39 = v49;
  v66 = v49;
  LOBYTE(v17) = v48;
  BYTE8(v67) = v48;
  HIDWORD(v67) = *&v63[3];
  *(&v67 + 9) = *v63;
  *&v68 = v20;
  *(&v68 + 1) = v22;
  *&v69 = v24;
  *(&v69 + 1) = v26;
  v70 = 0;
  *(a2 + 96) = 0;
  v40 = v69;
  *(a2 + 64) = v68;
  *(a2 + 80) = v40;
  v41 = v65;
  *a2 = v64;
  *(a2 + 16) = v41;
  v42 = v67;
  *(a2 + 32) = v66;
  *(a2 + 48) = v42;
  v43 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467428) + 48));
  v32(v43, v33, v35);
  sub_1CAB23A9C(&v64, &v71, &qword_1EC4643B8);
  v44 = *(v46 + 8);
  v44(v61, v35);
  v44(v33, v35);
  v71 = v36;
  v72 = v37;
  v73 = v38;
  v74 = v47;
  v76 = 0;
  v77 = 0;
  v75 = v39;
  v78 = v17;
  *v79 = *v63;
  *&v79[3] = *&v63[3];
  v80 = v20;
  v81 = v22;
  v82 = v24;
  v83 = v26;
  v84 = 0;
  return sub_1CAB21B68(&v71, &qword_1EC4643B8);
}

uint64_t sub_1CACDB4DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467430);
  MEMORY[0x1EEE9AC00](v66);
  v4 = &v58 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467438);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v58 - v7;
  v8 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FamilyCalendarColorSelectionView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1CAD4CC04();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467440);
  v64 = *(v19 - 8);
  v65 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v63 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v58 - v22;
  v59 = v12;
  v23 = a1;
  v24 = a1 + *(v12 + 20);
  v25 = *v24;
  LOBYTE(a1) = *(v24 + 8);

  if ((a1 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v26 = sub_1CAD4D184();
    v58 = v15;
    v27 = v13;
    v28 = v26;
    sub_1CAD4C534();

    v13 = v27;
    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v58);
    v25 = v71;
  }

  v29 = *(v25 + 56);

  *&v71 = v29;
  sub_1CACDD084(v23, &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = swift_allocObject();
  sub_1CACDD0E8(&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467450);
  sub_1CAB23B0C(&qword_1EC467458, &qword_1EC467448);
  sub_1CACDD4F0();
  sub_1CACDD6F4();
  sub_1CAD4DB74();
  v32 = (v23 + *(v59 + 24));
  v34 = *v32;
  v33 = v32[1];
  *&v71 = v34;
  *(&v71 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673D8);
  sub_1CAD4D994();
  v35 = v74[0];
  v59 = v74[0];
  sub_1CAD4DEE4();
  v36 = CUIKBundle();
  sub_1CAD4C184();
  v37 = sub_1CAD4DFC4();
  v74[0] = v35;
  v74[1] = v37;
  v74[3] = 0;
  v74[4] = 0;
  v74[2] = v38;
  v39 = v67;
  sub_1CACD9D90(v74, 1, v67);
  v40 = sub_1CAD4DC94();
  v42 = v41;
  v43 = v39 + *(v62 + 36);
  *v4 = sub_1CAD4CC94();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467490);
  sub_1CACDBC94(v23, &v4[*(v44 + 44)]);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v45 = &v4[*(v66 + 36)];
  v46 = v72;
  *v45 = v71;
  *(v45 + 1) = v46;
  *(v45 + 2) = v73;
  sub_1CACDD748();
  sub_1CAD4D604();
  sub_1CAB21B68(v4, &qword_1EC467430);
  v47 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674B0) + 36));
  *v47 = v40;
  v47[1] = v42;
  v49 = v63;
  v48 = v64;
  v50 = *(v64 + 16);
  v51 = v70;
  v52 = v65;
  v50(v63, v70, v65);
  v53 = v68;
  sub_1CAB34918(v39, v68);
  v54 = v69;
  v50(v69, v49, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674B8);
  sub_1CAB34918(v53, &v54[*(v55 + 48)]);

  sub_1CAB21B68(v39, &qword_1EC467438);
  v56 = *(v48 + 8);
  v56(v51, v52);
  sub_1CAB21B68(v53, &qword_1EC467438);
  return (v56)(v49, v52);
}

uint64_t sub_1CACDBC94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v38 = a1;
  v46 = a2;
  v3 = type metadata accessor for FamilyCalendarColorSelectionView();
  v4 = v3 - 8;
  v41 = *(v3 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674C0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v9;
  v10 = (v2 + *(v4 + 32));
  v11 = v10[1];
  *&v47[0] = *v10;
  v12 = *&v47[0];
  *(&v47[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673D8);
  sub_1CAD4D9B4();
  v13 = *v56;
  v37 = *&v56[8];
  v14 = v2 + *(v4 + 36);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v47[0]) = v15;
  *(&v47[0] + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D9B4();
  v18 = *v56;
  v17 = *&v56[8];
  LOBYTE(v2) = v56[16];
  sub_1CAD4DC94();
  sub_1CAD4C744();
  *&v51[7] = v53;
  *&v51[23] = v54;
  *&v51[39] = v55;
  v19 = sub_1CAD4D204();
  sub_1CAD4C5F4();
  *(v47 + 8) = v37;
  *(v48 + 9) = *v51;
  v52 = 0;
  *&v47[0] = v13;
  *(&v47[1] + 1) = v18;
  *&v48[0] = v17;
  BYTE8(v48[0]) = v2;
  *(&v48[1] + 9) = *&v51[16];
  *(&v48[2] + 9) = *&v51[32];
  *(&v48[3] + 1) = *&v51[47];
  LOBYTE(v49) = v19;
  *(&v49 + 1) = v20;
  *&v50[0] = v21;
  *(&v50[0] + 1) = v22;
  *&v50[1] = v23;
  BYTE8(v50[1]) = 0;
  *v56 = v12;
  *&v56[8] = v11;
  sub_1CAD4D994();
  v24 = v39;
  sub_1CACDD084(v38, v39);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_1CACDD0E8(v24, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674C8);
  sub_1CACDD9E0();
  sub_1CACDDAF8();
  v27 = v42;
  sub_1CAD4D754();

  v61 = v49;
  v62[0] = v50[0];
  *(v62 + 9) = *(v50 + 9);
  v57 = v48[0];
  v58 = v48[1];
  v59 = v48[2];
  v60 = v48[3];
  *v56 = v47[0];
  *&v56[16] = v47[1];
  sub_1CAB21B68(v56, &qword_1EC4674C8);
  v29 = v43;
  v28 = v44;
  v30 = *(v44 + 16);
  v31 = v27;
  v32 = v45;
  v30(v43, v27, v45);
  v33 = v46;
  v30(v46, v29, v32);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4674F0) + 48)];
  *v34 = 0;
  v34[8] = 1;
  v35 = *(v28 + 8);
  v35(v31, v32);
  return (v35)(v29, v32);
}

uint64_t sub_1CACDC0DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1CAD4CC04();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = type metadata accessor for FamilyCalendarColorSelectionView();
  v10 = a3 + *(v9 + 20);
  v11 = *v10;
  v12 = *(v10 + 8);

  v13 = v11;
  if ((v12 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v14 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v23 + 8))(v7, v5);
    v13 = v25[0];
  }

  v22 = v5;
  swift_getKeyPath();
  v25[0] = v13;
  sub_1CACDDCA8(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v15 = sub_1CAD4D7F4();

  if ((v15 & 1) == 0)
  {
    v17 = (a3 + *(v9 + 32));
    v19 = *v17;
    v18 = v17[1];

    if ((v12 & 1) == 0)
    {
      sub_1CAD4E3F4();
      v20 = sub_1CAD4D184();
      sub_1CAD4C534();

      sub_1CAD4CBF4();
      swift_getAtKeyPath();

      (*(v23 + 8))(v7, v22);
      v11 = v25[0];
    }

    LOBYTE(v25[0]) = 1;
    v25[1] = v8;
    v25[2] = v19;
    v25[4] = 0;
    v25[5] = 0;
    v25[3] = v18;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v22 - 2) = v11;
    *(&v22 - 1) = v25;
    v24 = v11;
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CACDC450(uint64_t a1)
{
  v2 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1CAD4CF04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673E8);
  sub_1CACDD228();
  sub_1CAD4C6E4();
  v7 = sub_1CAB23B0C(&qword_1EC4673C8, &qword_1EC4673C0);
  MEMORY[0x1CCAA6200](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CACDC608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyCalendarColorSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CAD4DEE4();
  v9 = CUIKBundle();
  sub_1CAD4C184();
  v18[1] = sub_1CAD4DFC4();
  v18[2] = v10;
  sub_1CACDD084(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1CACDD0E8(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1CABA6054();
  sub_1CAD4DA04();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673E8) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4637D0) + 28);
  v15 = *MEMORY[0x1E697DC18];
  v16 = sub_1CAD4C6B4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  return result;
}

uint64_t sub_1CACDC898(uint64_t a1)
{
  v15 = sub_1CAD4CC04();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1CAD4C784();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a1, v7, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1CAD4E3F4();
    v12 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_1CAD4C774();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CACDCB14(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1CAD4CC04();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1CAD4E2C4();
  v1[11] = sub_1CAD4E2B4();
  v4 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CACDCC08, v4, v3);
}

uint64_t sub_1CACDCC08()
{
  v1 = v0[7];

  v2 = type metadata accessor for FamilyCalendarColorSelectionView();
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  LOBYTE(v1) = *(v3 + 8);

  if ((v1 & 1) == 0)
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    sub_1CAD4E3F4();
    v8 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v4 = v0[4];
  }

  v9 = v0[7];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1CACDDCA8(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v10 = *(v4 + 72);

  v11 = (v9 + *(v2 + 24));
  v13 = *v11;
  v12 = v11[1];
  v0[2] = v13;
  v0[3] = v12;
  v0[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673D8);
  sub_1CAD4D9A4();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1CACDCE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v13 = *(a1 - 8);
  v3 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673A8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673B0);
  v6 = sub_1CAB23B0C(&qword_1EC4673B8, &qword_1EC4673A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673C0);
  sub_1CAB23B0C(&qword_1EC4673C8, &qword_1EC4673C0);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  v7 = v12;
  sub_1CAD4C924();
  sub_1CACDD084(v2, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v9 = swift_allocObject();
  sub_1CACDD0E8(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4673D0) + 36));
  sub_1CAD4C824();
  result = sub_1CAD4E2E4();
  *v10 = &unk_1CAD677D0;
  v10[1] = v9;
  return result;
}

uint64_t sub_1CACDD084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCalendarColorSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACDD0E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCalendarColorSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACDD14C()
{
  v2 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CABCCCB0;

  return sub_1CACDCB14(v0 + v3);
}

unint64_t sub_1CACDD228()
{
  result = qword_1EC4673F0;
  if (!qword_1EC4673F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673E8);
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CAB23B0C(&qword_1EC4637F0, &qword_1EC4637D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4673F0);
  }

  return result;
}

uint64_t sub_1CACDD30C()
{
  v1 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CACDC898(v2);
}

uint64_t sub_1CACDD390(uint64_t a1)
{
  v2 = sub_1CAD4C6B4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x1CCAA5C90](v4);
}

uint64_t sub_1CACDD460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FamilyCalendarColorSelectionView();
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return sub_1CACD9D90(v6, 0, a2);
}

unint64_t sub_1CACDD4F0()
{
  result = qword_1EC467460;
  if (!qword_1EC467460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467450);
    sub_1CACDD57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467460);
  }

  return result;
}

unint64_t sub_1CACDD57C()
{
  result = qword_1EC467468;
  if (!qword_1EC467468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467478);
    sub_1CAD4CF64();
    sub_1CAB23B0C(&qword_1EC467480, &qword_1EC467478);
    sub_1CACDDCA8(&qword_1EC464380, MEMORY[0x1E697C728]);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC464168, &qword_1EC464170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467468);
  }

  return result;
}

unint64_t sub_1CACDD6F4()
{
  result = qword_1EC467488;
  if (!qword_1EC467488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467488);
  }

  return result;
}

unint64_t sub_1CACDD748()
{
  result = qword_1EC467498;
  if (!qword_1EC467498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467430);
    sub_1CAB23B0C(&qword_1EC4674A0, &qword_1EC4674A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467498);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CAD4C784();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CACDD960(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CACDC0DC(a1, a2, v6);
}

unint64_t sub_1CACDD9E0()
{
  result = qword_1EC4674D0;
  if (!qword_1EC4674D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4674C8);
    sub_1CACDDA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4674D0);
  }

  return result;
}

unint64_t sub_1CACDDA6C()
{
  result = qword_1EC4674D8;
  if (!qword_1EC4674D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4674E0);
    sub_1CAC07274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4674D8);
  }

  return result;
}

unint64_t sub_1CACDDAF8()
{
  result = qword_1EC4674E8;
  if (!qword_1EC4674E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4674E8);
  }

  return result;
}

uint64_t sub_1CACDDB4C()
{
  v1 = *(type metadata accessor for FamilyCalendarColorSelectionView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_1CACDA1F8(v2, (v0 + 24), v3);
}

unint64_t sub_1CACDDBC0()
{
  result = qword_1EC467510;
  if (!qword_1EC467510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4673D0);
    sub_1CAB23B0C(&qword_1EC467518, &qword_1EC467520);
    sub_1CACDDCA8(&qword_1EC4642F0, MEMORY[0x1E697C020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467510);
  }

  return result;
}

uint64_t sub_1CACDDCA8(unint64_t *a1, void (*a2)(uint64_t))
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

CUIKFeatureAvailability __swiftcall CUIKFeatureAvailability.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for CUIKFeatureAvailability()
{
  result = qword_1EC467528;
  if (!qword_1EC467528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC467528);
  }

  return result;
}

uint64_t EKSourceConstraintsModelWrapper.maxAlarmsAllowed.getter()
{
  LODWORD(result) = [*v0 maxAlarmsAllowed];
  if (result < 0)
  {
    return -1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1CACDE098()
{
  LODWORD(result) = [*v0 maxAlarmsAllowed];
  if (result < 0)
  {
    return -1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1CACDE33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + 16);
}

uint64_t sub_1CACDE414@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v5 = *(v3 + 128);
  v4 = *(v3 + 136);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1CACDF698;
  a2[1] = v6;
}

uint64_t sub_1CACDE4EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);

  sub_1CAD4C414();
}

uint64_t CreateFamilyCalendarFlow.init(completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  FamilyCalendarFlow = type metadata accessor for CreateFamilyCalendarFlow();
  v7 = FamilyCalendarFlow - 8;
  v8 = *(FamilyCalendarFlow - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](FamilyCalendarFlow);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  v11 = (a3 + *(v7 + 28));
  type metadata accessor for CreateFamilyCalendarViewModel();
  swift_allocObject();
  v23 = sub_1CAC36D6C();
  sub_1CAD4D984();
  v12 = v24;
  v13 = v25;
  *v11 = v24;
  v11[1] = v13;
  v14 = (a3 + *(v7 + 32));
  *v14 = a1;
  v14[1] = a2;
  v24 = v12;
  v25 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467530);
  sub_1CAD4D994();
  v15 = v23;
  sub_1CACDEBE4(a3, v10);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1CACDEC48(v10, v17 + v16);
  swift_getKeyPath();
  v20 = v15;
  v21 = sub_1CACDECAC;
  v22 = v17;
  v24 = v15;
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C414();
}