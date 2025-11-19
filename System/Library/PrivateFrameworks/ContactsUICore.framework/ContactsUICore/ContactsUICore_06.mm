uint64_t sub_1A32E90CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A34CC450();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AvatarViewRecipe_Color(0);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  sub_1A328D790(a1, v14, &qword_1EB0C6BC0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1A32EC890(v14);
    sub_1A32EC8F8();
    swift_allocError();
    swift_willThrow();
    return sub_1A32EC9B4(a1, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  }

  else
  {
    v37 = a1;
    sub_1A32ECA14(v14, v21, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    sub_1A32EC94C(v21, v18, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v38;
        sub_1A32ECA14(v18, v38, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
        v30 = *v29;
        v31 = *(*v29 + 16);
        if (v31)
        {
          v36 = v21;
          v45 = MEMORY[0x1E69E7CC0];
          sub_1A34CDB70();
          v32 = v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
          v43 = *(v43 + 72);
          v42 = *MEMORY[0x1E69814D8];
          v33 = v40;
          v34 = (v39 + 104);
          do
          {
            sub_1A32EC94C(v32, v11, type metadata accessor for AvatarViewRecipe_Color);
            sub_1A32EC94C(v11, v8, type metadata accessor for AvatarViewRecipe_Color);
            (*v34)(v33, v42, v44);
            sub_1A34CC580();
            sub_1A32EC9B4(v8, type metadata accessor for AvatarViewRecipe_Color);
            sub_1A32EC9B4(v11, type metadata accessor for AvatarViewRecipe_Color);
            sub_1A34CDB50();
            sub_1A34CDB80();
            sub_1A34CDB90();
            sub_1A34CDB60();
            v32 += v43;
            --v31;
          }

          while (v31);
          sub_1A32EC9B4(v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
          sub_1A32EC9B4(v36, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
          result = sub_1A32EC9B4(v38, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
          v27 = v45;
        }

        else
        {
          sub_1A32EC9B4(v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
          sub_1A32EC9B4(v21, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
          result = sub_1A32EC9B4(v29, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
          v27 = MEMORY[0x1E69E7CC0];
        }

        v28 = 2;
      }

      else
      {
        sub_1A32EC9B4(v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
        result = sub_1A32EC9B4(v21, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
        v27 = 0;
        v28 = 4;
      }
    }

    else
    {
      v24 = v37;
      v25 = v44;
      v26 = v40;
      if (EnumCaseMultiPayload)
      {
        sub_1A32ECA14(v18, v11, type metadata accessor for AvatarViewRecipe_Color);
        sub_1A32EC94C(v11, v8, type metadata accessor for AvatarViewRecipe_Color);
        (*(v39 + 104))(v26, *MEMORY[0x1E69814D8], v25);
        v27 = sub_1A34CC580();
        sub_1A32EC9B4(v24, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
        sub_1A32EC9B4(v8, type metadata accessor for AvatarViewRecipe_Color);
        sub_1A32EC9B4(v11, type metadata accessor for AvatarViewRecipe_Color);
        result = sub_1A32EC9B4(v21, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
        v28 = 1;
      }

      else
      {
        sub_1A32ECA14(v18, v11, type metadata accessor for AvatarViewRecipe_Color);
        sub_1A32EC94C(v11, v8, type metadata accessor for AvatarViewRecipe_Color);
        (*(v39 + 104))(v26, *MEMORY[0x1E69814D8], v25);
        v27 = sub_1A34CC580();
        sub_1A32EC9B4(v24, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
        sub_1A32EC9B4(v8, type metadata accessor for AvatarViewRecipe_Color);
        sub_1A32EC9B4(v11, type metadata accessor for AvatarViewRecipe_Color);
        result = sub_1A32EC9B4(v21, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
        v28 = 0;
      }
    }

    v35 = v41;
    *v41 = v27;
    *(v35 + 8) = v28;
  }

  return result;
}

double sub_1A32E98C0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = 0;
  v2 = 0;
  v3 = 0;
  sub_1A31EC930();
  sub_1A34C9010();
  v0 = sub_1A34CD800();
  [v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2];

  return *v5;
}

uint64_t sub_1A32E9960(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32EC494();
  sub_1A34CDFA0();
  v12 = 0;
  sub_1A34CDDA0();
  if (!v1)
  {
    v11 = 1;
    sub_1A34CDDA0();
    v10 = 2;
    sub_1A34CDDA0();
    v9 = 3;
    sub_1A34CDDA0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A32E9B38()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_1A32E9BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A32EC4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A32E9BC8(uint64_t a1)
{
  v2 = sub_1A32EC494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32E9C04(uint64_t a1)
{
  v2 = sub_1A32EC494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A32E9C40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A32EC648(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t AvatarBackgroundRepresentation.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    MEMORY[0x1A58EF750](v2 != 0);

    return sub_1A34CC4C0();
  }

  else if (v2 == 2)
  {
    MEMORY[0x1A58EF750](2);
    result = MEMORY[0x1A58EF750](*(v1 + 16));
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v1 + 32;
      do
      {
        v7 += 8;
        sub_1A34C9010();
        sub_1A34CC4C0();

        --v6;
      }

      while (v6);
    }
  }

  else if (v2 == 3)
  {
    MEMORY[0x1A58EF750](3);
    result = MEMORY[0x1A58EF750](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v1 + 32;
      do
      {
        v5 += 8;
        sub_1A34C9010();
        sub_1A34CC4C0();

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    return MEMORY[0x1A58EF750](4);
  }

  return result;
}

uint64_t AvatarBackgroundRepresentation.hashValue.getter()
{
  sub_1A34CDF20();
  AvatarBackgroundRepresentation.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A32E9E14()
{
  sub_1A34CDF20();
  AvatarBackgroundRepresentation.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A32E9E6C()
{
  sub_1A34CDF20();
  AvatarBackgroundRepresentation.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A32E9EBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  if (a3 <= 1u)
  {
    type metadata accessor for AvatarViewRecipe_Color(0);
    sub_1A32ECB20(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A34CA100();
    v12 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  }

  else if (a3 - 2 >= 2)
  {
    *v9 = 1;
    v12 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  }

  else
  {
    v10 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
    MEMORY[0x1EEE9AC00](v10);
    v13[-2] = a2;
    sub_1A32ECB20(&qword_1EB0C6BD0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    result = sub_1A34CA100();
    if (v3)
    {
      return result;
    }

    v12 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  }

  swift_storeEnumTagMultiPayload();
  type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  return sub_1A32ECA7C(v9, a1);
}

uint64_t sub_1A32EA1A4(void *a1, uint64_t a2)
{
  v16 = type metadata accessor for AvatarViewRecipe_Color(0);
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v14 = a1;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A32EBC54(0, v7, 0);
    v8 = v17;
    v9 = a2 + 32;
    v15 = sub_1A32ECB20(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
    do
    {
      sub_1A34C9010();
      sub_1A34CA100();

      v17 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A32EBC54(v10 > 1, v11 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v11 + 1;
      sub_1A32ECA14(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, type metadata accessor for AvatarViewRecipe_Color);
      v9 += 8;
      --v7;
    }

    while (v7);
    a1 = v14;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1A32EA3AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A34CDE30();
  }

  return v8 & 1;
}

uint64_t sub_1A32EA448()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32EA4C0()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A32EA524()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32EA598@<X0>(char *a1@<X8>)
{
  v2 = sub_1A34CDC80();

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

void sub_1A32EA5F8(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A32EA62C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1A32EA65C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A34CDC80();

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

uint64_t sub_1A32EA6C0(uint64_t a1)
{
  v2 = sub_1A32EBE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A32EA6FC(uint64_t a1)
{
  v2 = sub_1A32EBE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A32EA744()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32EA844()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A32EA930()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A32EAA2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A32EC844();
  *a1 = result;
  return result;
}

void sub_1A32EAA5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x64696C6F73;
  v5 = 0xEE00746E65696461;
  v6 = 0x72477261656E696CLL;
  v7 = 0xEC0000006D756972;
  v8 = 0x616C6F53656B6166;
  if (v2 != 3)
  {
    v8 = 0x4E746C7561666564;
    v7 = 0xEE006C6172757461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x63696D616E7964;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t AvatarBackgroundRepresentation.encode(to:)(void *a1)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B40);
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v40 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32EBE94();
  sub_1A34CDFA0();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      LOBYTE(v43) = 2;
      LOBYTE(v50[0]) = 0;
      sub_1A32EBEE8();
      v10 = v42;
      sub_1A34CDDC0();
      if (!v2)
      {
        v25 = *(v7 + 16);
        v12 = MEMORY[0x1E69E7CC0];
        if (v25)
        {
          v40 = 0;
          v41 = v4;
          v43 = MEMORY[0x1E69E7CC0];
          sub_1A32EBC74(0, v25, 0);
          sub_1A31EC930();
          v12 = v43;
          v26 = v7 + 32;
          do
          {
            v49 = 0;
            v50[0] = 0;
            v47 = 0;
            v48 = 0;
            swift_retain_n();
            v27 = sub_1A34CD800();
            [v27 getRed:v50 green:&v49 blue:&v48 alpha:&v47];

            v29 = v49;
            v28 = v50[0];
            v31 = v47;
            v30 = v48;
            v43 = v12;
            v33 = *(*&v12 + 16);
            v32 = *(*&v12 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1A32EBC74((v32 > 1), v33 + 1, 1);
              v12 = v43;
            }

            *(*&v12 + 16) = v33 + 1;
            v34 = (*&v12 + 32 * v33);
            v34[4] = v28;
            v34[5] = v29;
            v34[6] = v30;
            v34[7] = v31;
            v26 += 8;
            --v25;
          }

          while (v25);
          goto LABEL_26;
        }

LABEL_27:
        v43 = v12;
        LOBYTE(v50[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B58);
        sub_1A32EBFE4(&unk_1EB0C02B0, sub_1A32EBF3C);
        sub_1A34CDDC0();
      }
    }

    else
    {
      v9 = v8 == 3;
      v10 = v42;
      if (!v9)
      {
        LOBYTE(v43) = 4;
        LOBYTE(v50[0]) = 0;
        sub_1A32EBEE8();
LABEL_22:
        sub_1A34CDDC0();
        return (*(v4 + 8))(v6, v10);
      }

      LOBYTE(v43) = 3;
      LOBYTE(v50[0]) = 0;
      sub_1A32EBEE8();
      sub_1A34CDDC0();
      if (!v2)
      {
        v11 = *(v7 + 16);
        v12 = MEMORY[0x1E69E7CC0];
        if (v11)
        {
          v40 = 0;
          v41 = v4;
          v43 = MEMORY[0x1E69E7CC0];
          sub_1A32EBC74(0, v11, 0);
          sub_1A31EC930();
          v12 = v43;
          v13 = v7 + 32;
          do
          {
            v49 = 0;
            v50[0] = 0;
            v47 = 0;
            v48 = 0;
            swift_retain_n();
            v14 = sub_1A34CD800();
            [v14 getRed:v50 green:&v49 blue:&v48 alpha:&v47];

            v16 = v49;
            v15 = v50[0];
            v18 = v47;
            v17 = v48;
            v43 = v12;
            v20 = *(*&v12 + 16);
            v19 = *(*&v12 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1A32EBC74((v19 > 1), v20 + 1, 1);
              v12 = v43;
            }

            *(*&v12 + 16) = v20 + 1;
            v21 = (*&v12 + 32 * v20);
            v21[4] = v15;
            v21[5] = v16;
            v21[6] = v17;
            v21[7] = v18;
            v13 += 8;
            --v11;
          }

          while (v11);
LABEL_26:
          v4 = v41;
          v10 = v42;
          goto LABEL_27;
        }

        goto LABEL_27;
      }
    }

    return (*(v4 + 8))(v6, v10);
  }

  if (!v8)
  {
    LOBYTE(v43) = 0;
    LOBYTE(v50[0]) = 0;
    sub_1A32EBEE8();
    v10 = v42;
    sub_1A34CDDC0();
    if (!v2)
    {
      v43 = sub_1A32E98C0();
      v44 = v22;
      v45 = v23;
      v46 = v24;
      LOBYTE(v50[0]) = 1;
      sub_1A32EBF3C();
      goto LABEL_22;
    }

    return (*(v4 + 8))(v6, v10);
  }

  LOBYTE(v43) = 1;
  LOBYTE(v50[0]) = 0;
  sub_1A32EBEE8();
  v35 = v42;
  sub_1A34CDDC0();
  if (!v2)
  {
    v43 = sub_1A32E98C0();
    v44 = v36;
    v45 = v37;
    v46 = v38;
    LOBYTE(v50[0]) = 1;
    sub_1A32EBF3C();
    sub_1A34CDDC0();
  }

  return (*(v4 + 8))(v6, v35);
}

uint64_t AvatarBackgroundRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1A34CC450();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1A32EBE94();
  sub_1A34CDF90();
  if (!v2)
  {
    v12 = v8;
    v38 = v6;
    v44 = 0;
    sub_1A32EBF90();
    sub_1A34CDD30();
    v13 = v7;
    v16 = v42;
    if (v42 <= 1u)
    {
      v44 = 1;
      sub_1A32EC05C();
      sub_1A34CDD30();
      v23 = v41;
      (*(v39 + 104))(v38, *MEMORY[0x1E69814D8], v4);
      v31 = sub_1A34CC580();
      (*(v12 + 8))(v10, v13);
      v14 = v23;
LABEL_20:
      v30 = v40;
      goto LABEL_21;
    }

    if (v42 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B58);
      v44 = 1;
      sub_1A32EBFE4(&qword_1EB0C02A8, sub_1A32EC05C);
      sub_1A34CDD30();
      v24 = v42;
      v25 = *(v42 + 16);
      if (v25)
      {
        v34 = v10;
        v35 = v13;
        v43 = 2;
        v36 = v12;
        v42 = MEMORY[0x1E69E7CC0];
        sub_1A34CDB70();
        v26 = *MEMORY[0x1E69814D8];
        v27 = v38;
        v37 = *(v39 + 104);
        v28 = v24 + 56;
        v39 = v4;
        v33 = v24;
        v29 = v26;
        do
        {
          v37(v27, v29, v39);
          sub_1A34CC580();
          sub_1A34CDB50();
          sub_1A34CDB80();
          sub_1A34CDB90();
          sub_1A34CDB60();
          v28 += 32;
          --v25;
        }

        while (v25);
        goto LABEL_16;
      }
    }

    else
    {
      if (v42 != 3)
      {
        (*(v12 + 8))(v10, v13);
        v31 = 0;
LABEL_19:
        v14 = v41;
        goto LABEL_20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B58);
      v44 = 1;
      sub_1A32EBFE4(&qword_1EB0C02A8, sub_1A32EC05C);
      sub_1A34CDD30();
      v17 = v42;
      v18 = *(v42 + 16);
      if (v18)
      {
        v34 = v10;
        v35 = v13;
        v43 = 3;
        v36 = v12;
        v42 = MEMORY[0x1E69E7CC0];
        sub_1A34CDB70();
        v19 = *MEMORY[0x1E69814D8];
        v20 = v38;
        v37 = *(v39 + 104);
        v21 = v17 + 56;
        v39 = v4;
        v33 = v17;
        v22 = v19;
        do
        {
          v37(v20, v22, v39);
          sub_1A34CC580();
          sub_1A34CDB50();
          sub_1A34CDB80();
          sub_1A34CDB90();
          sub_1A34CDB60();
          v21 += 32;
          --v18;
        }

        while (v18);
LABEL_16:
        (*(v36 + 8))(v34, v35);

        v14 = v41;
        v31 = v42;
        v30 = v40;
        v16 = v43;
LABEL_21:
        *v30 = v31;
        *(v30 + 8) = v16;
        return __swift_destroy_boxed_opaque_existential_0(v14);
      }
    }

    (*(v12 + 8))(v10, v13);
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v14 = v41;
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_1A32EB7A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A328D790(v2, &v14 - v9, &unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA5D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_1A32EB9A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A34CA5D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + *(a2 + 20);
  v12 = *(v11 + 8);
  v18 = *v11;
  v19 = v12;
  sub_1A31EE004(v18, v12);
  sub_1A32EB7A4(v10);
  sub_1A32E821C(v10, &v20);
  (*(v8 + 8))(v10, v7);
  sub_1A31ECC9C(v18, v19);
  v13 = v20;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BB0);
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BB8) + 36);
  *v15 = v13;
  result = v21;
  *(v15 + 24) = v22;
  *(v15 + 8) = result;
  return result;
}

void *sub_1A32EBB34(void *a1, int64_t a2, char a3)
{
  result = sub_1A34837C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBB54(char *a1, int64_t a2, char a3)
{
  result = sub_1A34837E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBB74(size_t a1, int64_t a2, char a3)
{
  result = sub_1A34838F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBB94(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBBB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3483A24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBBD4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3483A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBBF4(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBC14(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBC34(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483B98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBC54(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3483CA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBC74(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBC94(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483DD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBCB4(char *a1, int64_t a2, char a3)
{
  result = sub_1A3483EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A32EBCD4(void *a1, int64_t a2, char a3)
{
  result = sub_1A3484008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBCF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3484174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBD14(char *a1, int64_t a2, char a3)
{
  result = sub_1A348419C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBD34(char *a1, int64_t a2, char a3)
{
  result = sub_1A34842A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBD54(char *a1, int64_t a2, char a3)
{
  result = sub_1A34844EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBD74(char *a1, int64_t a2, char a3)
{
  result = sub_1A348460C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBD94(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3484620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBDB4(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBDD4(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBDF4(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBE14(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484B40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A32EBE34(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3484C44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBE54(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A32EBE74(char *a1, int64_t a2, char a3)
{
  result = sub_1A3484F48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A32EBE94()
{
  result = qword_1EB0C6B48;
  if (!qword_1EB0C6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B48);
  }

  return result;
}

unint64_t sub_1A32EBEE8()
{
  result = qword_1EB0C6B50;
  if (!qword_1EB0C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B50);
  }

  return result;
}

unint64_t sub_1A32EBF3C()
{
  result = qword_1EB0C2930;
  if (!qword_1EB0C2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2930);
  }

  return result;
}

unint64_t sub_1A32EBF90()
{
  result = qword_1EB0C6B68;
  if (!qword_1EB0C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B68);
  }

  return result;
}

uint64_t sub_1A32EBFE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6B58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A32EC05C()
{
  result = qword_1EB0C2928;
  if (!qword_1EB0C2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2928);
  }

  return result;
}

unint64_t sub_1A32EC0B4()
{
  result = qword_1EB0C6B70;
  if (!qword_1EB0C6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B70);
  }

  return result;
}

uint64_t sub_1A32EC108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A32EC150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A32EC194(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata accessor for BackgroundRepresentationModifier()
{
  result = qword_1EB0C1628;
  if (!qword_1EB0C1628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A32EC220()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A32EC2C8()
{
  result = qword_1EB0C6B78;
  if (!qword_1EB0C6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B78);
  }

  return result;
}

unint64_t sub_1A32EC320()
{
  result = qword_1EB0C6B80;
  if (!qword_1EB0C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B80);
  }

  return result;
}

unint64_t sub_1A32EC394()
{
  result = qword_1EB0C6B88;
  if (!qword_1EB0C6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B88);
  }

  return result;
}

unint64_t sub_1A32EC3EC()
{
  result = qword_1EB0C6B90;
  if (!qword_1EB0C6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B90);
  }

  return result;
}

unint64_t sub_1A32EC440()
{
  result = qword_1EB0C6B98;
  if (!qword_1EB0C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6B98);
  }

  return result;
}

unint64_t sub_1A32EC494()
{
  result = qword_1EB0C2948;
  if (!qword_1EB0C2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2948);
  }

  return result;
}

uint64_t sub_1A32EC4E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A34CDE30();

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

double sub_1A32EC648(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32EC494();
  sub_1A34CDF90();
  v9[15] = 0;
  sub_1A34CDD10();
  v7 = v6;
  v9[14] = 1;
  sub_1A34CDD10();
  v9[13] = 2;
  sub_1A34CDD10();
  v9[12] = 3;
  sub_1A34CDD10();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1A32EC844()
{
  v0 = sub_1A34CDC80();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A32EC890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32EC8F8()
{
  result = qword_1EB0C6BC8;
  if (!qword_1EB0C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6BC8);
  }

  return result;
}

uint64_t sub_1A32EC94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32EC9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A32ECA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A32ECA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32ECB20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A32ECB68(uint64_t a1)
{
  *a1 = sub_1A32E98C0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t sub_1A32ECBC0()
{
  result = qword_1EB0C6BE0;
  if (!qword_1EB0C6BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6BB8);
    sub_1A3284D0C(&qword_1EB0C6BE8, &qword_1EB0C6BB0);
    sub_1A3284D0C(&qword_1ED854EA8, &qword_1EB0C6BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6BE0);
  }

  return result;
}

unint64_t sub_1A32ECCA8()
{
  result = qword_1EB0C6BF8;
  if (!qword_1EB0C6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6BF8);
  }

  return result;
}

unint64_t sub_1A32ECD00()
{
  result = qword_1EB0C6C00;
  if (!qword_1EB0C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6C00);
  }

  return result;
}

unint64_t sub_1A32ECD58()
{
  result = qword_1EB0C2938;
  if (!qword_1EB0C2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2938);
  }

  return result;
}

unint64_t sub_1A32ECDB0()
{
  result = qword_1EB0C2940;
  if (!qword_1EB0C2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2940);
  }

  return result;
}

uint64_t sub_1A32ECE20()
{
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  if ((*(v0 + 48) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    if ([*(v0 + 16) sharedPhotoDisplayPreference])
    {
      swift_getKeyPath();
      sub_1A34C99A0();

      v2 = [*(v0 + 16) sharedPhotoDisplayPreference] == 3;
    }

    else
    {
      v2 = 1;
    }

    swift_getKeyPath();
    sub_1A34C99A0();

    v3 = [*(v0 + 16) sharedPhotoDisplayPreference];
    if (v2)
    {
      LODWORD(v1) = [*(v0 + 32) currentNicknameHasValidVisualIdentityData];
      if (qword_1EB0C12C8 != -1)
      {
        swift_once();
      }

      v4 = sub_1A34CA250();
      __swift_project_value_buffer(v4, qword_1EB0ED080);
      v5 = sub_1A34CA230();
      v6 = sub_1A34CD660();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_22;
      }

      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1;
      v8 = "Contact has a current shared photo: %{BOOL}d";
    }

    else
    {
      if (v3 != 2)
      {
        if (qword_1EB0C12C8 != -1)
        {
          swift_once();
        }

        v11 = sub_1A34CA250();
        __swift_project_value_buffer(v11, qword_1EB0ED080);
        v5 = sub_1A34CA230();
        v12 = sub_1A34CD660();
        if (!os_log_type_enabled(v5, v12))
        {
          LOBYTE(v1) = 1;
          goto LABEL_22;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1A31E6000, v5, v12, "Explicit Auto Update", v7, 2u);
        LOBYTE(v1) = 1;
LABEL_21:
        MEMORY[0x1A58F1010](v7, -1, -1);
LABEL_22:

        return v1 & 1;
      }

      v1 = *(v0 + 32);
      v9 = [v1 currentNicknameHasValidVisualIdentityData];
      LOBYTE(v1) = v9 | [v1 pendingNicknameHasValidVisualIdentityData];
      if (qword_1EB0C12C8 != -1)
      {
        swift_once();
      }

      v10 = sub_1A34CA250();
      __swift_project_value_buffer(v10, qword_1EB0ED080);
      v5 = sub_1A34CA230();
      v6 = sub_1A34CD660();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_22;
      }

      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1 & 1;
      v8 = "Contact has current or pending shared photo: %{BOOL}d";
    }

    _os_log_impl(&dword_1A31E6000, v5, v6, v8, v7, 8u);
    goto LABEL_21;
  }

  LOBYTE(v1) = 0;
  return v1 & 1;
}

uint64_t sub_1A32ED1DC()
{
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  return *(v0 + 48);
}

id sub_1A32ED24C()
{
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A32ED2CC()
{
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A32ED340()
{
  v1 = [objc_msgSend(objc_opt_self() cn_defaultProvider)];
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  if (*(v0 + 48) == 1)
  {
    v2 = [objc_opt_self() currentEnvironment];
    v3 = [v2 nicknameProvider];

    LOBYTE(v2) = [v3 isNicknameSharingEnabled];
    swift_unknownObjectRelease();
    if (v2)
    {
      if (v1 == 2)
      {
        v4 = MEMORY[0x1E69E7CC0];
        v5 = 0x80000001A350CB30;
        v6 = 0xD00000000000001BLL;
LABEL_12:
        v15 = sub_1A3332448(v4, 0, 0, v6, v5);
        swift_unknownObjectRelease();
        return v15;
      }

      v14 = "FERENCE_DISABLED";
      v4 = MEMORY[0x1E69E7CC0];
      v6 = 0xD00000000000001ELL;
    }

    else
    {
      v14 = "CARD_VALUE_ALWAYS_UPDATE";
      v4 = MEMORY[0x1E69E7CC0];
      v6 = 0xD000000000000020;
    }

    v5 = v14 | 0x8000000000000000;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v8 = *(v0 + 40);
  [v8 setStyle_];
  [v8 setFallbackStyle_];
  swift_getKeyPath();
  sub_1A34C99A0();

  v9 = [v8 stringFromContact_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1A34CD110();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v15 = sub_1A3332448(inited, 0, 0, 0xD000000000000038, 0x80000001A350CAA0);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_1A3288FDC(inited + 32, &qword_1EB0C5A80);
  return v15;
}

char *sub_1A32ED624()
{
  v1 = [*(v0 + 32) availableActionTypesForEffectiveState];
  sub_1A31EC194(0, &unk_1EB0C00B0);
  v2 = sub_1A34CD370();

  if (v2 >> 62)
  {
LABEL_32:
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_1A34CD9B0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_33:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v26 = v2 & 0xFFFFFFFFFFFFFF8;
  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_33;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0x1FAB08000uLL;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    v25 = v7;
    v9 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A58EF310](v9, v2);
      }

      else
      {
        if (v9 >= *(v26 + 16))
        {
          goto LABEL_31;
        }

        v11 = *(v2 + 8 * v9 + 32);
      }

      v12 = v11;
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v6 = v8;
      v13 = sub_1A34CD8B0();
      v14 = [v12 (v8 + 760)];

      if (!v14)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A32985D0(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1A32985D0((v15 > 1), v16 + 1, 1, v5);
      }

      v10 = 3;
LABEL_6:

      *(v5 + 2) = v17;
      *&v5[8 * v16 + 32] = v10;
      ++v9;
      if (v4 == v3)
      {
        goto LABEL_34;
      }
    }

    v18 = sub_1A34CD8B0();
    v19 = [v12 (v8 + 760)];

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A32985D0(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v20 = *(v5 + 3);
      v17 = v16 + 1;
      if (v16 >= v20 >> 1)
      {
        v5 = sub_1A32985D0((v20 > 1), v16 + 1, 1, v5);
      }

      v10 = 1;
      goto LABEL_6;
    }

    v21 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1A32985D0(0, *(v25 + 2) + 1, 1, v25);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    v7 = v21;
    if (v23 >= v22 >> 1)
    {
      v7 = sub_1A32985D0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v7 + 2) = v23 + 1;
    *&v7[8 * v23 + 32] = 2;
  }

  while (v4 != v3);
LABEL_34:

  return v5;
}

void sub_1A32ED938(char a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = qword_1A34E1CF0[a1];
  v3 = *(v1 + 32);
  v16[0] = 0;
  v4 = [v3 updateContactAndNicknamesForActionType:v2 error:v16];
  if (v4)
  {
    v5 = v4;
    v6 = v16[0];
LABEL_7:

    return;
  }

  v7 = v16[0];
  v8 = sub_1A34C9580();

  swift_willThrow();
  if (qword_1EB0C12C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1A34CA250();
  __swift_project_value_buffer(v9, qword_1EB0ED080);
  v10 = v8;
  v5 = sub_1A34CA230();
  v11 = sub_1A34CD640();

  if (os_log_type_enabled(v5, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    *(v12 + 4) = v2;
    *(v12 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1A31E6000, v5, v11, "Failed to update contact for %lu: %@", v12, 0x16u);
    sub_1A3288FDC(v13, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v13, -1, -1);
    MEMORY[0x1A58F1010](v12, -1, -1);

    goto LABEL_7;
  }
}

id sub_1A32EDB40(uint64_t a1)
{
  swift_getKeyPath();
  v48 = v1;
  sub_1A32EE584();
  sub_1A34C99A0();

  [v1[2] mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  v3 = v47;
  v4 = [v1[4] targetProfileForActionType_];
  v5 = v4;
  if (v4 && (v6 = [v4 imageData]) != 0)
  {
    v7 = v6;
    v8 = sub_1A34C9690();
    v10 = v9;

    v11 = sub_1A34C9680();
    sub_1A31EC234(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  [v47 setImageData_];

  if (qword_1EB0C12C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1A34CA250();
  __swift_project_value_buffer(v12, qword_1EB0ED080);
  v13 = v5;
  v14 = sub_1A34CA230();
  v15 = sub_1A34CD660();

  v16 = &unk_1A34DA000;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v46 = v3;
    v47 = v18;
    if (v5 && (v19 = [v13 imageData]) != 0)
    {
      v20 = v19;
      v21 = sub_1A34C9690();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xF000000000000000;
    }

    v48 = v21;
    v49 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C10);
    v24 = sub_1A34CD160();
    v26 = sub_1A31EE23C(v24, v25, &v47);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1A31E6000, v14, v15, "Assigned target profile image data for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1A58F1010](v18, -1, -1);
    MEMORY[0x1A58F1010](v17, -1, -1);

    v3 = v46;
    v16 = &unk_1A34DA000;
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v27 = [v13 thumbnailImageData];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1A34C9690();
    v31 = v30;

    v32 = sub_1A34C9680();
    sub_1A31EC234(v29, v31);
    goto LABEL_18;
  }

LABEL_17:
  v32 = 0;
LABEL_18:
  [v3 setThumbnailImageData_];

  v33 = v13;
  v34 = sub_1A34CA230();
  v35 = sub_1A34CD660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = v37;
    *v36 = v16[328];
    if (v5)
    {
      v38 = [v33 thumbnailImageData];
      if (v38)
      {
        v39 = v38;
        v5 = sub_1A34C9690();
        v41 = v40;

LABEL_25:
        v48 = v5;
        v49 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C10);
        v42 = sub_1A34CD160();
        v44 = sub_1A31EE23C(v42, v43, &v47);

        *(v36 + 4) = v44;
        _os_log_impl(&dword_1A31E6000, v34, v35, "Assigned target profile thumbnail image data for %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1A58F1010](v37, -1, -1);
        MEMORY[0x1A58F1010](v36, -1, -1);

        return v3;
      }

      v5 = 0;
    }

    v41 = 0xF000000000000000;
    goto LABEL_25;
  }

  return v3;
}

void sub_1A32EDFEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1A31EC194(0, &qword_1ED854E70);
  v5 = v4;
  v6 = sub_1A34CD830();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32EE584();
    sub_1A34C9990();
  }
}

id sub_1A32EE128@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A32EE584();
  sub_1A34C99A0();

  v4 = *(a1 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1A32EE1F8(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32EE584();
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A32EE2D8(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  sub_1A34C99D0();
  v3 = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 48) = *(a1 + *(type metadata accessor for ContactCardConfiguration(0) + 44));
  swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  sub_1A31F08B0(v1 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E695CF98]) initWithContact:v4 contactStore:a1[2]];
  sub_1A32A313C(a1);
  *(v1 + 32) = v5;
  return v1;
}

uint64_t sub_1A32EE3BC()
{
  sub_1A31F08B0((v0 + 3));

  v1 = OBJC_IVAR____TtC14ContactsUICore22SharedProfileViewModel___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedProfileViewModel()
{
  result = qword_1EB0C2130;
  if (!qword_1EB0C2130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32EE4CC()
{
  result = sub_1A34C99E0();
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

unint64_t sub_1A32EE584()
{
  result = qword_1EB0C2140;
  if (!qword_1EB0C2140)
  {
    type metadata accessor for SharedProfileViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2140);
  }

  return result;
}

void sub_1A32EE5EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

id sub_1A32EE624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);
  *a2 = v4;

  return v4;
}

uint64_t sub_1A32EE710()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDA40);
  __swift_project_value_buffer(v0, qword_1EB0EDA40);
  return sub_1A34CA240();
}

uint64_t sub_1A32EE790()
{
  result = sub_1A34CE010();
  qword_1EB0EDD00 = result;
  *algn_1EB0EDD08 = v1;
  return result;
}

uint64_t sub_1A32EE7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController);
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
  sub_1A34C99A0();

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  *a1 = *(v3 + 24);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t sub_1A32EE894(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController);
  swift_getKeyPath();
  *&v21 = v8;
  sub_1A32F20F8(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
  sub_1A34C99A0();

  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  v13 = *(v8 + 64);
  LOBYTE(v21) = *(v8 + 24);
  *(&v21 + 1) = v10;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v15[0] = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;

  sub_1A3497FA4(&v21, v15);

  LOBYTE(v21) = v2;
  *(&v21 + 1) = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  return sub_1A34964F0(&v21);
}

id sub_1A32EE9DC()
{
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);

  return v1;
}

void sub_1A32EEA94(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);
  sub_1A31EE0D8();
  v6 = v5;
  v7 = sub_1A34CD830();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32EEC34()
{
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);

  return v1;
}

uint64_t sub_1A32EECF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  a2[1] = v4;
}

uint64_t sub_1A32EEDA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  v6 = *(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName) == a1 && *(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName + 8) == a2;
  if (v6 || (sub_1A34CDE30() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A32EEF14(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible;
  *(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible) = a1;
  swift_getKeyPath();
  v14[1] = v2;
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  if (*(v2 + v8) == 1)
  {
    v10 = sub_1A34CD4A0();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1A34CD450();
    sub_1A34C9010();
    v11 = sub_1A34CD440();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v2;
    v12[5] = v4;
    sub_1A33A13AC(0, 0, v7, &unk_1A34E1E48, v12);
  }

  return result;
}

uint64_t sub_1A32EF108(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  return *(v2 + *a2);
}

uint64_t sub_1A32EF1A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible);
  return result;
}

uint64_t sub_1A32EF258(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible;
  if (*(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible) == v3)
  {
    *(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible) = v3;
    swift_getKeyPath();
    v16 = v2;
    sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
    sub_1A34C99A0();

    if (*(v2 + v8) == 1)
    {
      v11 = sub_1A34CD4A0();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_1A34CD450();
      sub_1A34C9010();
      v12 = sub_1A34CD440();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v2;
      v13[5] = v4;
      sub_1A33A13AC(0, 0, v7, &unk_1A34E1E30, v13);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 8) = v3;
    v16 = v2;
    sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A32EF548(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
    sub_1A34C9990();
  }

  return result;
}

id sub_1A32EF64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DFB00;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle_];
  v2 = [v1 descriptorForRequiredKeysForStyle_];
  v3 = *MEMORY[0x1E695C208];
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v4 = *MEMORY[0x1E695C330];
  *(v0 + 56) = *MEMORY[0x1E695C330];
  v5 = v3;
  v6 = v4;
  result = sub_1A31E9DA0();
  *(v0 + 64) = result;
  qword_1EB0C6C30 = v0;
  return result;
}

uint64_t sub_1A32EF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1A32EF7AC, 0, 0);
}

uint64_t sub_1A32EF7AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_contactStore);
    if (qword_1EB0C4888 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
    v4 = sub_1A34CD350();
    v0[5] = 0;
    v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];
    v0[8] = v5;

    v6 = v0[5];
    if (v5)
    {
      swift_weakInit();
      sub_1A34CD450();
      v7 = v6;
      v0[9] = sub_1A34CD440();
      v9 = sub_1A34CD3E0();

      return MEMORY[0x1EEE6DFA0](sub_1A32EFBD8, v9, v8);
    }

    v10 = v6;
    v11 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v12 = sub_1A34CA250();
    __swift_project_value_buffer(v12, qword_1EB0EDA40);
    v13 = v11;
    v14 = sub_1A34CA230();
    v15 = sub_1A34CD640();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1A31E6000, v14, v15, "Could not fetch unified me contact: %@", v16, 0xCu);
      sub_1A3288FDC(v17, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v17, -1, -1);
      MEMORY[0x1A58F1010](v16, -1, -1);
    }

    v20 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact;
    if (*(v2 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact))
    {
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v2;
      *(v21 + 24) = 0;
      v0[5] = v2;
      sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
      sub_1A34C9990();
    }

    else
    {

      *(v2 + v20) = 0;
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A32EFBD8()
{
  v1 = *(v0 + 64);

  sub_1A32EFD64(v0 + 40, v1);
  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A32EFCD0, 0, 0);
}

uint64_t sub_1A32EFCD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32EFD64(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A32EEA94(a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact) == 1)
    {
      *(result + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
      sub_1A34C9990();
    }
  }

  return result;
}

void sub_1A32EFEF8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v2 = *(a1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);
  v3 = *(a1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController);
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
  v4 = v2;
  sub_1A34C99A0();

  if (*(v3 + 24) == 1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    swift_getKeyPath();
    sub_1A34C99A0();

    v6 = sub_1A34CD0E0();

    [v5 setGivenName_];

    swift_getKeyPath();
    sub_1A34C99A0();

    v7 = sub_1A34CD0E0();

    [v5 setFamilyName_];

    v8 = [v5 freeze];
    v4 = v8;
  }

  v9 = [*(a1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_formatter) stringFromContact_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1A34CD110();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  sub_1A32EEDA8(v11, v13);
}

uint64_t sub_1A32F01C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A34CD4A0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A34CD450();
  sub_1A34C9010();
  v5 = sub_1A34CD440();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A32C0E38(0, 0, v2, &unk_1A34E1EB8, v6);
}

uint64_t sub_1A32F0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A34CD450();
  v4[7] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A32F03D8, v6, v5);
}

uint64_t sub_1A32F03D8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A34C9980();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A32F04B4()
{
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v1 = (v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName + 8);
  v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (!v3)
  {
    return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000019, 0x80000001A350CC10);
  }

  swift_getKeyPath();
  sub_1A34C99A0();

  v4 = *v1;

  return v4;
}

uint64_t sub_1A32F05FC()
{
  v1 = 0xD000000000000016;
  swift_getKeyPath();
  sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  v2 = (v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName + 8);
  v4 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4 && (v5 = *(v0 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController), swift_getKeyPath(), sub_1A32F20F8(&qword_1EB0C3020, type metadata accessor for SharedProfileController), sub_1A34C99A0(), , (*(v5 + 24) & 1) != 0))
  {
    v6 = "LET_PEOPLE_RECOGNIZE_YOU";
  }

  else
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    v7 = v2[1];
    v8 = *v2 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    v9 = v8 == 0;
    if (v8)
    {
      v6 = "ible";
    }

    else
    {
      v6 = "SHARE_YOUR_NAME_AND_PHOTO";
    }

    if (v9)
    {
      v1 = 0xD000000000000018;
    }

    else
    {
      v1 = 0xD000000000000019;
    }
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v1, v6 | 0x8000000000000000);
}

uint64_t sub_1A32F07F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1A34C9720();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63B0);
  v4[12] = swift_task_alloc();
  v6 = sub_1A34CDBC0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1A34CD450();
  v4[17] = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  v4[18] = v8;
  v4[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A32F09A0, v8, v7);
}

uint64_t sub_1A32F09A0()
{
  sub_1A34CDEC0();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1A32F0A6C;

  return sub_1A32F1C40(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A32F0A6C()
{
  v2 = *v1;
  v2[21] = v0;

  v3 = v2[16];
  v4 = v2[14];
  v5 = v2[13];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[18];
    v10 = v2[19];
    v11 = sub_1A32F1478;
  }

  else
  {
    v2[22] = v7;
    v2[23] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[18];
    v10 = v2[19];
    v11 = sub_1A32F0BEC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1A32F0BEC()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController);
  swift_getKeyPath();
  v0[2] = v1;
  sub_1A32F20F8(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
  sub_1A34C99A0();

  if (*(v1 + 24))
  {

    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v2 = sub_1A34CA250();
    __swift_project_value_buffer(v2, qword_1EB0EDA40);
    v3 = sub_1A34CA230();
    v4 = sub_1A34CD630();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "SNaP is already set up, not requesting to reveal shared profile banner";
LABEL_29:
    _os_log_impl(&dword_1A31E6000, v3, v4, v6, v5, 2u);
    MEMORY[0x1A58F1010](v5, -1, -1);
LABEL_30:

    v29 = v0[1];

    return v29();
  }

  if (qword_1EB0C2E98 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v9 = v0[7];
  v8 = v0[8];
  v10 = qword_1EB0EDA38;
  sub_1A3498990(v7);
  if ((*(v8 + 48))(v7, 1, v9) != 1)
  {
    v25 = v0[12];

    sub_1A3288FDC(v25, &qword_1EB0C63B0);
    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v26 = sub_1A34CA250();
    __swift_project_value_buffer(v26, qword_1EB0EDA40);
    v3 = sub_1A34CA230();
    v4 = sub_1A34CD660();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "SNaP banner has been recently interacted with, not requesting to reveal shared profile banner";
    goto LABEL_29;
  }

  v11 = v0[6];
  sub_1A3288FDC(v0[12], &qword_1EB0C63B0);
  swift_getKeyPath();
  v0[24] = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel___observationRegistrar;
  v0[3] = v11;
  v0[25] = sub_1A32F20F8(&qword_1EB0C2FA0, type metadata accessor for SharedProfileLinkViewModel);
  sub_1A34C99A0();

  if (*(v11 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible) != 1)
  {

    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v27 = sub_1A34CA250();
    __swift_project_value_buffer(v27, qword_1EB0EDA40);
    v3 = sub_1A34CA230();
    v4 = sub_1A34CD660();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "We're not currently visible, delaying reveal of shared profile banner";
    goto LABEL_29;
  }

  v13 = v0[10];
  v12 = v0[11];
  v15 = v0[7];
  v14 = v0[8];
  sub_1A34C9710();
  sub_1A3498BF0(v13);
  sub_1A34C96E0();
  v17 = v16;
  v18 = *(v14 + 8);
  v18(v13, v15);
  v18(v12, v15);
  if (v17 <= 604800.0)
  {

    if (qword_1EB0C2F58 != -1)
    {
      swift_once();
    }

    v28 = sub_1A34CA250();
    __swift_project_value_buffer(v28, qword_1EB0EDA40);
    v3 = sub_1A34CA230();
    v4 = sub_1A34CD630();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "We've recently requested to reveal the banner, delaying reveal of shared profile banner";
    goto LABEL_29;
  }

  v44 = v18;
  if (qword_1EB0C2F58 != -1)
  {
    swift_once();
  }

  v19 = sub_1A34CA250();
  __swift_project_value_buffer(v19, qword_1EB0EDA40);
  v20 = sub_1A34CA230();
  v21 = sub_1A34CD660();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1A31E6000, v20, v21, "Requesting to reveal the shared profile banner", v22, 2u);
    MEMORY[0x1A58F1010](v22, -1, -1);
  }

  v23 = v0[6];

  v24 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__shouldReveal;
  v0[26] = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__shouldReveal;
  if (*(v23 + v24) == 1)
  {
    *(v23 + v24) = 1;
  }

  else
  {
    v31 = v0[6];
    swift_getKeyPath();
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = 1;
    v0[4] = v31;
    sub_1A34C9990();
  }

  v34 = v0[10];
  v33 = v0[11];
  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[7];
  sub_1A34C9710();
  v38 = *(v36 + 16);
  v38(v34, v33, v37);
  v38(v35, v34, v37);
  v39 = sub_1A34CDE70();

  v40 = sub_1A34CD0E0();

  [v10 setObject:v39 forKey:v40];

  swift_unknownObjectRelease();
  v44(v34, v37);
  v44(v33, v37);
  if (qword_1EB0C4880 != -1)
  {
    swift_once();
  }

  v42 = qword_1EB0EDD00;
  v41 = *algn_1EB0EDD08;
  sub_1A34CDEC0();
  v43 = swift_task_alloc();
  v0[27] = v43;
  *v43 = v0;
  v43[1] = sub_1A32F1524;

  return sub_1A32F1C40(v42, v41, 0, 0, 1);
}

uint64_t sub_1A32F1478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32F1524()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2 + 176))(*(v2 + 120), *(v2 + 104));
  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1A32F1804;
  }

  else
  {
    v5 = sub_1A32F16B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A32F16B4()
{
  v1 = v0[26];
  v2 = v0[6];

  if (*(v2 + v1))
  {
    v3 = v0[6];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[5] = v3;
    sub_1A34C9990();
  }

  else
  {
    *(v0[6] + v0[26]) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A32F1804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32F18B0()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_creationTime;
  v2 = sub_1A34CDBB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel___observationRegistrar;
  v4 = sub_1A34C99E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedProfileLinkViewModel()
{
  result = qword_1EB0C2F90;
  if (!qword_1EB0C2F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A32F1A34()
{
  result = sub_1A34CDBB0();
  if (v1 <= 0x3F)
  {
    result = sub_1A34C99E0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A32F1B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A32F07F4(a1, v4, v5, v6);
}

uint64_t sub_1A32F1C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A34CDBB0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A32F1D40, 0, 0);
}

uint64_t sub_1A32F1D40()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A34CDBC0();
  v5 = sub_1A32F20F8(&qword_1EB0C2E80, MEMORY[0x1E69E8820]);
  sub_1A34CDEA0();
  sub_1A32F20F8(&unk_1EB0C2E88, MEMORY[0x1E69E87E8]);
  sub_1A34CDBD0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A32F1ED0;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A32F1ED0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A32F208C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A32F208C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A32F20F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32F2140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A32F07F4(a1, v4, v5, v6);
}

uint64_t sub_1A32F2200()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_1A32F2264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact);
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact) = v2;
  v4 = v2;
}

void *sub_1A32F22A4(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  sub_1A34CDBA0();
  v7 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_contactStore;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v8 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__contact) = v8;
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__hasSucessfullyFetchedMeContact) = 0;
  v9 = (v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__fullName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__isVisible) = 0;
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel__shouldReveal) = 0;
  v10 = OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_formatter;
  v11 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v11 setStyle_];
  *(v1 + v10) = v11;
  sub_1A34C99D0();
  *(v1 + OBJC_IVAR____TtC14ContactsUICore26SharedProfileLinkViewModel_sharedProfileController) = a1;
  sub_1A34C9010();
  sub_1A34CD460();
  v12 = sub_1A34CD4A0();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = v3;
  sub_1A32C2F5C(0, 0, v6, &unk_1A34E1EA8, v14);

  sub_1A3288FDC(v6, &qword_1EB0C6110);
  sub_1A34C9980();
  return v1;
}

uint64_t sub_1A32F2550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A32EF71C(a1, v4, v5, v6);
}

uint64_t (*sub_1A32F2618())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A32F2670;
}

uint64_t sub_1A32F2678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A32F0340(a1, v4, v5, v6);
}

uint64_t sub_1A32F2764()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECFD8);
  __swift_project_value_buffer(v0, qword_1EB0ECFD8);
  return sub_1A34CA240();
}

uint64_t sub_1A32F27E4(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___id;
  v6 = sub_1A34C9780();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = (v2 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___initials);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___isOrganization) = 2;
  v8 = v2 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___imageCropRect;
  *(v8 + 32) = 256;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v9 = v2 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___fullImage;
  *v9 = 1;
  *(v9 + 8) = 0;
  v10 = v2 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___thumbnailImage;
  *v10 = 1;
  *(v10 + 8) = 0;
  v11 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___avatarBirthday;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1A32F2928@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___id;
  swift_beginAccess();
  sub_1A32F3F98(v1 + v9, v8);
  v10 = sub_1A34C9780();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1A3288FDC(v8, &qword_1EB0C60D0);
  v12 = [*(v1 + 16) id];
  sub_1A34C9760();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1A32F4008(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1A32F2B24()
{
  v1 = (v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___initials);
  if (*(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___initials + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *MEMORY[0x1E695C328];
    v5 = v3;
    if ([v5 isKeyAvailable_] && objc_msgSend(v5, sel_contactType) == 1 || (v6 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, v5, 1002)) == 0)
    {

      v2 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v7 = v6;
      v2 = sub_1A34CD110();
      v9 = v8;
    }

    *v1 = v2;
    v1[1] = v9;
  }

  return v2;
}

uint64_t sub_1A32F2C30()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___isOrganization;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___isOrganization);
  if (v2 == 2)
  {
    if ([*(v0 + 16) isKeyAvailable_])
    {
      LOBYTE(v2) = [*(v0 + 16) contactType] == 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void sub_1A32F2CA8(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___imageCropRect);
  if (*(v1 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___imageCropRect + 33))
  {
    v4 = [*(v1 + 16) isKeyAvailable_];
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (v4)
    {
      [*(v1 + 16) cropRect];
    }

    v9 = v4 ^ 1;
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    *(v3 + 32) = v4 ^ 1;
    *(v3 + 33) = 0;
  }

  else
  {
    v7 = v3[2];
    v8 = v3[3];
    v5 = *v3;
    v6 = v3[1];
    v9 = *(v3 + 32);
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9 & 1;
}

id sub_1A32F2D94@<X0>(void *a1@<X0>, void *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4 + *a1;
  v7 = *v6;
  v8 = *v6;
  v9 = *(v6 + 8);
  if (*v6 == 1)
  {
    sub_1A32F2E48(v4, a2, a3, &v13);
    v8 = v13;
    v9 = v14;
    v10 = *v6;
    *v6 = v13;
    *(v6 + 8) = v9;
    v11 = v8;
    sub_1A32C7DF4(v10);
  }

  *a4 = v8;
  *(a4 + 8) = v9;

  return sub_1A32C7DE4(v7);
}

void sub_1A32F2E48(uint64_t a1@<X0>, void *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  if (![*(a1 + 16) isKeyAvailable_])
  {
    goto LABEL_15;
  }

  v7 = [*(a1 + 16) *a3];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1A34C9690();
  v11 = v10;

  v12 = sub_1A34C9680();
  v13 = CGImageSourceCreateWithData(v12, 0);

  if (!v13)
  {
    sub_1A31EC234(v9, v11);
LABEL_15:
    ImageAtIndex = 0;
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  if (CGImageSourceGetCount(v13) <= 0)
  {
    sub_1A31EC234(v9, v11);

    goto LABEL_15;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if (!ImageAtIndex)
  {
    sub_1A31EC234(v9, v11);

    goto LABEL_16;
  }

  v15 = sub_1A3385BB8(0);
  if (v15 == 8)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (*(a1 + 24))
  {
    v17 = *(a1 + 16);
    v18 = [v17 hasBeenPersisted];
    sub_1A31EC234(v9, v11);

    if (v18)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1A31EC234(v9, v11);

    v19 = 0;
  }

  v20 = v19 | v16;
LABEL_17:
  *a4 = ImageAtIndex;
  *(a4 + 8) = v20;
}

uint64_t sub_1A32F2FD8()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    if ([v4 hasBeenPersisted])
    {
      v9[0] = 0;
      v5 = [v3 diffToSnapshotAndReturnError_];
      v6 = v9[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      v7 = sub_1A34CD350();
      v8 = [v5 containsUpdatesToKeyDescriptors_];

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A32F3104@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - v3;
  v5 = sub_1A34CA280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C60);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C68);
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  if (qword_1ED854DF8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AvatarContactStoreCache();
  sub_1A32F3F40(&qword_1ED854DF0, type metadata accessor for AvatarContactStoreCache);
  v29 = sub_1A34CA2C0();
  (*(v6 + 104))(v8, *MEMORY[0x1E695BD28], v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E695BD40], v1);
  sub_1A34CA300();
  sub_1A34CA3C0();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A32F3F88;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6C78);
  sub_1A3284D0C(&unk_1ED854B90, &qword_1EB0C6C60);
  v17 = v25;
  sub_1A34CA3B0();

  (*(v24 + 8))(v11, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C88);
  v19 = v28;
  v28[3] = v18;
  v19[4] = sub_1A3284D0C(&qword_1ED854670, &qword_1EB0C6C88);
  __swift_allocate_boxed_opaque_existential_1(v19);
  v20 = sub_1A3284D0C(qword_1ED854678, &unk_1EB0C6C68);
  v21 = v27;
  MEMORY[0x1A58EBC10](v27, v20);
  return (*(v26 + 8))(v14, v21);
}

uint64_t sub_1A32F3630()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1ED854DF8 != -1)
    {
      swift_once();
    }

    v2 = *(v1 + 16);
    sub_1A3404424(v2);
    v4 = v3;

    return v4;
  }

  return result;
}

double sub_1A32F38E0@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    v7 = type metadata accessor for CNContactAvatarContact();
    v8 = sub_1A32F3F40(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    *&v6 = v4;
    sub_1A31EE568(&v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1A32F3980@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED854DF8 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 16);
  v4 = sub_1A3404154(v3);

  if (v4)
  {
    v5 = *(v1 + 24);
    if (v5 != *(v4 + 24))
    {
      v6 = *(v4 + 16);
      type metadata accessor for CNContactAvatarContact();
      v7 = swift_allocObject();
      sub_1A32F27E4(v6, v5);
      v8 = v6;

      v4 = v7;
    }

    *(a1 + 24) = type metadata accessor for CNContactAvatarContact();
    *(a1 + 32) = sub_1A32F3F40(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    *a1 = v4;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A32F3AAC()
{
  sub_1A3288FDC(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___id, &qword_1EB0C60D0);

  sub_1A32C7DF4(*(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___fullImage));
  sub_1A32C7DF4(*(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___thumbnailImage));
  sub_1A3288FDC(v0 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___avatarBirthday, &unk_1EB0C6C90);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CNContactAvatarContact()
{
  result = qword_1ED854A70;
  if (!qword_1ED854A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A32F3BE0()
{
  sub_1A32F3CE8();
  if (v0 <= 0x3F)
  {
    sub_1A32F3D40();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A32F3CE8()
{
  if (!qword_1ED854A20)
  {
    sub_1A34C9780();
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED854A20);
    }
  }
}

void sub_1A32F3D40()
{
  if (!qword_1ED854A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6C50);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED854A28);
    }
  }
}

uint64_t sub_1A32F3DA4(uint64_t a1)
{
  result = sub_1A32F3F40(&qword_1ED8547D0, type metadata accessor for CNContactAvatarContact);
  *(a1 + 8) = result;
  return result;
}

id sub_1A32F3E44()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v2 = sub_1A34CD350();
  v3 = [v1 areKeysAvailable_];

  return v3;
}

uint64_t sub_1A32F3EE8(uint64_t a1)
{
  result = sub_1A32F3F40(&unk_1ED8547C0, type metadata accessor for CNContactAvatarContact);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A32F3F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32F3F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32F4008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore21VisualIdentityContentO(uint64_t a1)
{
  if (((*(a1 + 96) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 96) >> 59) & 7;
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A32F40CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A32F411C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A32F41A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32F41EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A32F4260@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CD8);
  MEMORY[0x1EEE9AC00](v109);
  v86 = &v86 - v2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CE0);
  MEMORY[0x1EEE9AC00](v98);
  v87 = &v86 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CE8);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v86 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CF0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v86 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CF8);
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v86 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D00);
  MEMORY[0x1EEE9AC00](v119);
  v110 = &v86 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D08);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v86 - v8;
  *&v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D10);
  MEMORY[0x1EEE9AC00](v104);
  v90 = &v86 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D18);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v86 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D20);
  MEMORY[0x1EEE9AC00](v114);
  *&v105 = &v86 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA4C0);
  MEMORY[0x1EEE9AC00](v88);
  v100 = (&v86 - v12);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D28);
  MEMORY[0x1EEE9AC00](v101);
  v89 = &v86 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D30);
  MEMORY[0x1EEE9AC00](v92);
  v15 = &v86 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D38);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v86 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D40);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D48);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D50);
  MEMORY[0x1EEE9AC00](v112);
  v22 = &v86 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D58);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v86 - v23;
  v24 = sub_1A34CC610();
  v93 = *(v24 - 8);
  v94 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A34CA5D0();
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1[5];
  v141 = v1[4];
  v142 = v31;
  v143 = v1[6];
  v144 = *(v1 + 14);
  v32 = v1[1];
  v137 = *v1;
  v138 = v32;
  v33 = v1[3];
  v139 = v1[2];
  v140 = v33;
  v150 = v31;
  v151 = v143;
  v152 = v144;
  v145 = v137;
  v146 = v32;
  v147 = v139;
  v148 = v33;
  v34 = (v143 >> 59) & 7;
  v149 = v141;
  if (((v143 >> 59) & 7) > 1)
  {
    if (v34 != 2)
    {
      if (v34 == 3)
      {
        v35 = DWORD1(v137);
        v36 = BYTE8(v145);
        v37 = v146;
        v38 = v147.i8[0];
        v39 = v137;
        KeyPath = swift_getKeyPath();
        LOBYTE(v121) = 0;
        LOBYTE(v126[0]) = 0;
        sub_1A32F5C78(&v137, &v128);
        v115 = *(&v37 + 1);
        v41 = v37;
        sub_1A34CC730();
        LOBYTE(v123) = 1;
        *&v126[0] = KeyPath;
        BYTE8(v126[0]) = v121;
        LOBYTE(v126[1]) = v39 & 1;
        DWORD1(v126[1]) = v35;
        BYTE8(v126[1]) = v36;
        *&v126[2] = v41;
        *(&v126[2] + 1) = *(&v37 + 1);
        LOBYTE(v126[3]) = v38;
        *(&v126[3] + 8) = 0u;
        *(&v126[4] + 8) = 0u;
        BYTE8(v126[5]) = 1;
        LOBYTE(v126[6]) = v128;
        *(&v126[6] + 1) = *(&v128 + 1);
        sub_1A32F626C();
        v42 = v91;
        sub_1A34CC1F0();
        v132 = v126[4];
        v133 = v126[5];
        v134 = v126[6];
        v128 = v126[0];
        v129 = v126[1];
        v130 = v126[2];
        v131 = v126[3];
        sub_1A32F6AD8(&v128);
        sub_1A328D790(v42, v97, &qword_1EB0C6D08);
        swift_storeEnumTagMultiPayload();
        sub_1A32F61B0();
        sub_1A32F62C0();
        v43 = v99;
        sub_1A34CB3E0();
        sub_1A328D790(v43, v108, &qword_1EB0C6CF8);
        swift_storeEnumTagMultiPayload();
        sub_1A32F6124();
        sub_1A32F637C();
        v44 = v110;
        sub_1A34CB3E0();
        sub_1A3288FDC(v43, &qword_1EB0C6CF8);
        sub_1A328D790(v44, v118, &qword_1EB0C6D00);
        swift_storeEnumTagMultiPayload();
        sub_1A32F6438();
        sub_1A32F6A4C();
        sub_1A34CB3E0();

        sub_1A3288FDC(v44, &qword_1EB0C6D00);
        v45 = v42;
        v46 = &qword_1EB0C6D08;
        return sub_1A3288FDC(v45, v46);
      }

      if (v143 != 0x2000000000000000 || (v69 = vorrq_s8(vorrq_s8(v147, v149), vorrq_s8(v148, v150)), v137 | *&vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL)) | *(&v151 + 1) | v152 | *(&v145 + 1) | v146 | *(&v146 + 1)))
      {
        LOBYTE(v126[0]) = 0;
        sub_1A34CC730();
        sub_1A32F60D0();
        v80 = v86;
        sub_1A34CC1F0();

        v68 = &qword_1EB0C6CD8;
        sub_1A328D790(v80, v108, &qword_1EB0C6CD8);
        swift_storeEnumTagMultiPayload();
        sub_1A32F6124();
        sub_1A32F637C();
        v81 = v110;
        sub_1A34CB3E0();
        sub_1A328D790(v81, v118, &qword_1EB0C6D00);
        swift_storeEnumTagMultiPayload();
        sub_1A32F6438();
        sub_1A32F6A4C();
        sub_1A34CB3E0();
        sub_1A3288FDC(v81, &qword_1EB0C6D00);
        v45 = v80;
        goto LABEL_15;
      }

      *&v128 = sub_1A34CC4E0();
      v67 = v87;
      sub_1A34CC1F0();

      v68 = &qword_1EB0C6CE0;
      sub_1A328D790(v67, v97, &qword_1EB0C6CE0);
      swift_storeEnumTagMultiPayload();
      sub_1A32F61B0();
      sub_1A32F62C0();
      v70 = v99;
      sub_1A34CB3E0();
      sub_1A328D790(v70, v108, &qword_1EB0C6CF8);
      swift_storeEnumTagMultiPayload();
      sub_1A32F6124();
      sub_1A32F637C();
      v71 = v110;
      sub_1A34CB3E0();
      sub_1A3288FDC(v70, &qword_1EB0C6CF8);
      v72 = &qword_1EB0C6D00;
      sub_1A328D790(v71, v118, &qword_1EB0C6D00);
      swift_storeEnumTagMultiPayload();
      sub_1A32F6438();
      sub_1A32F6A4C();
      sub_1A34CB3E0();
LABEL_14:
      sub_1A3288FDC(v71, v72);
      v45 = v67;
LABEL_15:
      v46 = v68;
      return sub_1A3288FDC(v45, v46);
    }

    *&v151 = v143 & 0xC7FFFFFFFFFFFFFFLL;
    v65 = v93;
    v64 = v94;
    (*(v93 + 104))(v26, *MEMORY[0x1E6981630], v94);
    sub_1A34C9010();
    v66 = sub_1A34CC680();
    (*(v65 + 8))(v26, v64);
    v128 = v66;
    LOWORD(v129) = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CADB0);
    sub_1A31F08D8();
    v67 = v90;
    sub_1A34CC1F0();

    v68 = &qword_1EB0C6D10;
    sub_1A328D790(v67, v103, &qword_1EB0C6D10);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_1A32F677C();
    sub_1A32F6990();
    v78 = v105;
    sub_1A34CB3E0();
    sub_1A328D790(v78, v113, &qword_1EB0C6D20);
    swift_storeEnumTagMultiPayload();
    sub_1A32F64C4();
    sub_1A32F66F0();
    v71 = v115;
    sub_1A34CB3E0();
    sub_1A3288FDC(v78, &qword_1EB0C6D20);
    v72 = &qword_1EB0C6D58;
    sub_1A328D790(v71, v118, &qword_1EB0C6D58);
    swift_storeEnumTagMultiPayload();
    sub_1A32F6438();
    sub_1A32F6A4C();
    sub_1A34CB3E0();
    sub_1A32F6B2C(&v137);
    goto LABEL_14;
  }

  v47 = v100;
  v108 = v18;
  v109 = v20;
  v110 = v22;
  if (v34)
  {
    *&v151 = v143 & 0xC7FFFFFFFFFFFFFFLL;
    v73 = v137;
    v74 = BYTE8(v145);
    v75 = v100;
    *v47 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v76 = v47 + *(type metadata accessor for BackgroundRepresentationModifier() + 20);
    *v76 = v73;
    v76[8] = v74;
    v77 = v137;
    LOBYTE(v73) = BYTE8(v137);
    sub_1A32F5C78(&v137, &v128);
    sub_1A31EE004(v77, v73);
    sub_1A32F6838();
    v67 = v89;
    sub_1A34CC1F0();
    sub_1A3288FDC(v75, &unk_1EB0CA4C0);
    v68 = &qword_1EB0C6D28;
    sub_1A328D790(v67, v103, &qword_1EB0C6D28);
    goto LABEL_13;
  }

  *&v151 = v143 & 0xC7FFFFFFFFFFFFFFLL;
  v48 = BYTE8(v145);
  if (v143 >> 62 == 1)
  {
    v49 = v146;
    v121 = v137;
    v122 = BYTE8(v145);
    v50 = v137;
    v51 = v28;
    (*(v28 + 104))(v30, *MEMORY[0x1E697DBB8], v27);
    v133 = v142;
    *(&v134 + 1) = *(&v143 + 1);
    v128 = v137;
    v129 = v138;
    v130 = v139;
    v131 = v140;
    v132 = v141;
    *&v135 = v144;
    *&v134 = v143 & 0xC7FFFFFFFFFFFFFFLL;
    sub_1A328D790(&v128, v126, &qword_1EB0C6D78);
    v107 = v50;
    sub_1A32E821C(v30, v126);
    (*(v51 + 8))(v30, v27);
    LODWORD(v106) = v48;
    v52 = *&v126[0];
    v104 = *(&v126[1] + 8);
    v105 = *(v126 + 8);
    v53 = sub_1A34CCC80();
    v55 = v54;
    v56 = v49;
    sub_1A34CC5D0();
    v58 = v93;
    v57 = v94;
    (*(v93 + 104))(v26, *MEMORY[0x1E6981630], v94);
    v59 = sub_1A34CC680();

    (*(v58 + 8))(v26, v57);
    v125 = 1;
    *&v126[0] = v52;
    *(&v126[1] + 8) = v104;
    *(v126 + 8) = v105;
    WORD4(v126[2]) = 256;
    HIWORD(v126[2]) = WORD2(v121);
    *(&v126[2] + 10) = v121;
    v126[3] = v59;
    LOWORD(v126[4]) = 257;
    *(&v126[4] + 2) = v123;
    WORD3(v126[4]) = v124;
    *(&v126[4] + 1) = v53;
    *&v126[5] = v55;
    v60 = v109;
    *(v109 + 2) = v126[2];
    *(v60 + 48) = v59;
    *(v60 + 64) = v126[4];
    *(v60 + 80) = v55;
    v61 = v126[1];
    *v60 = v126[0];
    *(v60 + 16) = v61;
    swift_storeEnumTagMultiPayload();
    sub_1A328D790(v126, &v121, &qword_1EB0C6D60);
    sub_1A328D790(v126, &v121, &qword_1EB0C6D60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D60);
    sub_1A32F6550();
    sub_1A32F6634();
    v62 = v110;
    sub_1A34CB3E0();
    sub_1A328D790(v62, v113, &qword_1EB0C6D50);
    swift_storeEnumTagMultiPayload();
    sub_1A32F64C4();
    sub_1A32F66F0();
    v63 = v115;
    sub_1A34CB3E0();
    sub_1A3288FDC(v62, &qword_1EB0C6D50);
    sub_1A328D790(v63, v118, &qword_1EB0C6D58);
    swift_storeEnumTagMultiPayload();
    sub_1A32F6438();
    sub_1A32F6A4C();
    sub_1A34CB3E0();
    sub_1A31ECC9C(v107, v106);
    sub_1A32E33A0(&v146);
    sub_1A3288FDC(v126, &qword_1EB0C6D60);
    sub_1A3288FDC(v126, &qword_1EB0C6D60);
    v45 = v63;
    v46 = &qword_1EB0C6D58;
  }

  else
  {
    v82 = v137;
    v83 = swift_getKeyPath();
    *(&v127[3] + 7) = v149;
    *(&v127[4] + 7) = v150;
    *(&v127[5] + 7) = v151;
    *(&v127[6] + 7) = v152;
    *(v127 + 7) = v146;
    *(&v127[1] + 7) = v147;
    *(&v127[2] + 7) = v148;
    *(&v126[5] + 1) = v127[3];
    *(&v126[6] + 1) = v127[4];
    *(&v126[7] + 1) = v127[5];
    v126[8] = *(&v127[5] + 15);
    *(&v126[2] + 1) = v127[0];
    *(&v126[3] + 1) = v127[1];
    LOBYTE(v121) = 0;
    v126[0] = v83;
    LOWORD(v126[1]) = 0;
    *(&v126[1] + 1) = v82;
    LOBYTE(v126[2]) = v48;
    *(&v126[4] + 1) = v127[2];
    sub_1A32F5C78(&v137, &v128);
    sub_1A32E31E8(&v146, &v128);
    sub_1A31EE004(v82, v48);
    sub_1A31EF6C0();
    sub_1A34CC1F0();
    v134 = v126[6];
    v135 = v126[7];
    v136 = v126[8];
    v130 = v126[2];
    v131 = v126[3];
    v132 = v126[4];
    v133 = v126[5];
    v128 = v126[0];
    v129 = v126[1];
    sub_1A32F6B80(&v128);
    sub_1A328D790(v15, v109, &qword_1EB0C6D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D60);
    sub_1A32F6550();
    sub_1A32F6634();
    v84 = v110;
    sub_1A34CB3E0();
    sub_1A328D790(v84, v113, &qword_1EB0C6D50);
    swift_storeEnumTagMultiPayload();
    sub_1A32F64C4();
    sub_1A32F66F0();
    v85 = v115;
    sub_1A34CB3E0();
    sub_1A3288FDC(v84, &qword_1EB0C6D50);
    sub_1A328D790(v85, v118, &qword_1EB0C6D58);
    swift_storeEnumTagMultiPayload();
    sub_1A32F6438();
    sub_1A32F6A4C();
    sub_1A34CB3E0();
    sub_1A31ECC9C(v82, v48);
    sub_1A32E33A0(&v146);
    sub_1A3288FDC(v85, &qword_1EB0C6D58);
    v45 = v15;
    v46 = &qword_1EB0C6D30;
  }

  return sub_1A3288FDC(v45, v46);
}

uint64_t sub_1A32F58F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CA0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - v2;
  v4 = v0[6];
  v6 = v0[4];
  v27 = v0[5];
  v5 = v27;
  v28 = v4;
  v7 = v0[1];
  v24[0] = *v0;
  v8 = v0[2];
  v9 = *v0;
  v24[1] = v0[1];
  v24[2] = v8;
  v10 = v0[4];
  v12 = v0[2];
  v25 = v0[3];
  v11 = v25;
  v26 = v10;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  v13 = v0[6];
  *(v3 + 5) = v5;
  *(v3 + 6) = v13;
  *(v3 + 3) = v11;
  *(v3 + 4) = v6;
  *(v3 + 1) = v7;
  *(v3 + 2) = v12;
  v29 = *(v0 + 14);
  *(v3 + 19) = 0;
  *(v3 + 14) = *(v0 + 14);
  *v3 = v9;
  KeyPath = swift_getKeyPath();
  v15 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6CA8) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F90) + 28);
  v17 = *MEMORY[0x1E697DBB8];
  v18 = sub_1A34CA5D0();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  sub_1A32F5C78(v24, v23);
  sub_1A34CCC80();
  sub_1A34CA760();
  v19 = &v3[*(v1 + 36)];
  v20 = v23[1];
  *v19 = v23[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v23[2];
  sub_1A32F5CD4();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C6CA0);
}

uint64_t sub_1A32F5B44()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  v7 = 0;
  v6 = 0u;
  v5 = 0u;
  sub_1A32F5BF4();
  sub_1A34CC1F0();
  return sub_1A32F5C48(v4);
}

unint64_t sub_1A32F5BF4()
{
  result = qword_1EB0C1D38;
  if (!qword_1EB0C1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D38);
  }

  return result;
}

unint64_t sub_1A32F5CD4()
{
  result = qword_1EB0C6CB0;
  if (!qword_1EB0C6CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CA0);
    sub_1A32F5D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6CB0);
  }

  return result;
}

unint64_t sub_1A32F5D60()
{
  result = qword_1EB0C6CB8;
  if (!qword_1EB0C6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CA8);
    sub_1A32F5BF4();
    sub_1A3284D0C(&qword_1EB0C06B0, &unk_1EB0C8F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6CB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore12AvatarSource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1A32F5E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A32F5EAC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 160) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A32F5F3C()
{
  result = qword_1EB0C0FB8;
  if (!qword_1EB0C0FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CC0);
    sub_1A32F5BF4();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0FB8);
  }

  return result;
}

unint64_t sub_1A32F5FF8()
{
  result = qword_1EB0C6CC8;
  if (!qword_1EB0C6CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CD0);
    sub_1A32F5CD4();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6CC8);
  }

  return result;
}

unint64_t sub_1A32F60D0()
{
  result = qword_1EB0C27A8;
  if (!qword_1EB0C27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C27A8);
  }

  return result;
}

unint64_t sub_1A32F6124()
{
  result = qword_1EB0C0908;
  if (!qword_1EB0C0908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CF8);
    sub_1A32F61B0();
    sub_1A32F62C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0908);
  }

  return result;
}

unint64_t sub_1A32F61B0()
{
  result = qword_1EB0C0F80;
  if (!qword_1EB0C0F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D08);
    sub_1A32F626C();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F80);
  }

  return result;
}

unint64_t sub_1A32F626C()
{
  result = qword_1EB0C29F8;
  if (!qword_1EB0C29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C29F8);
  }

  return result;
}

unint64_t sub_1A32F62C0()
{
  result = qword_1EB0C0D90;
  if (!qword_1EB0C0D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CE0);
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D90);
  }

  return result;
}

unint64_t sub_1A32F637C()
{
  result = qword_1EB0C0F60;
  if (!qword_1EB0C0F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6CD8);
    sub_1A32F60D0();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F60);
  }

  return result;
}

unint64_t sub_1A32F6438()
{
  result = qword_1EB0C07F0;
  if (!qword_1EB0C07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D58);
    sub_1A32F64C4();
    sub_1A32F66F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07F0);
  }

  return result;
}

unint64_t sub_1A32F64C4()
{
  result = qword_1EB0C08E8;
  if (!qword_1EB0C08E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D50);
    sub_1A32F6550();
    sub_1A32F6634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08E8);
  }

  return result;
}

unint64_t sub_1A32F6550()
{
  result = qword_1EB0C0E88;
  if (!qword_1EB0C0E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D60);
    sub_1A3284D0C(&qword_1EB0C11B0, &qword_1EB0C6D68);
    sub_1A3284D0C(&qword_1EB0C0990, &qword_1EB0C6D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E88);
  }

  return result;
}

unint64_t sub_1A32F6634()
{
  result = qword_1EB0C0F98;
  if (!qword_1EB0C0F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D30);
    sub_1A31EF6C0();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F98);
  }

  return result;
}

unint64_t sub_1A32F66F0()
{
  result = qword_1EB0C08A0;
  if (!qword_1EB0C08A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D20);
    sub_1A32F677C();
    sub_1A32F6990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08A0);
  }

  return result;
}

unint64_t sub_1A32F677C()
{
  result = qword_1EB0C0B20;
  if (!qword_1EB0C0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D28);
    sub_1A32F6838();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B20);
  }

  return result;
}

unint64_t sub_1A32F6838()
{
  result = qword_1EB0C0C90;
  if (!qword_1EB0C0C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA4C0);
    sub_1A32F68F4();
    sub_1A32F6948(qword_1EB0C1640, type metadata accessor for BackgroundRepresentationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C90);
  }

  return result;
}

unint64_t sub_1A32F68F4()
{
  result = qword_1EB0C0390;
  if (!qword_1EB0C0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0390);
  }

  return result;
}

uint64_t sub_1A32F6948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A32F6990()
{
  result = qword_1EB0C0B58;
  if (!qword_1EB0C0B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D10);
    sub_1A31F08D8();
    sub_1A32F6948(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B58);
  }

  return result;
}

unint64_t sub_1A32F6A4C()
{
  result = qword_1EB0C0800;
  if (!qword_1EB0C0800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D00);
    sub_1A32F6124();
    sub_1A32F637C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0800);
  }

  return result;
}

unint64_t sub_1A32F6BD4()
{
  result = qword_1EB0C07D0;
  if (!qword_1EB0C07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6D80);
    sub_1A32F6438();
    sub_1A32F6A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07D0);
  }

  return result;
}

double sub_1A32F6C60()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 objectForKey_];

  if (v2)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v11[0] = v8;
  v11[1] = v9;
  sub_1A329A2E4(v11, &v8);
  if (!*(&v9 + 1))
  {
    sub_1A32F751C(v11);
    v7 = &v8;
LABEL_13:
    sub_1A32F751C(v7);
    return 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = v11;
    goto LABEL_13;
  }

  v3 = v10[0];
  sub_1A34CDA40();
  if (!*(v3 + 16) || (v4 = sub_1A33DB3BC(&v8), (v5 & 1) == 0))
  {

    sub_1A32F7584(&v8);
    goto LABEL_12;
  }

  sub_1A31EE354(*(v3 + 56) + 32 * v4, v10);
  sub_1A32F7584(&v8);
  sub_1A32F751C(v11);

  if (swift_dynamicCast())
  {
    *&result = 2003265652;
    return result;
  }

  return 0.0;
}

unint64_t sub_1A32F6DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DD060;
  v2 = *MEMORY[0x1E695CCC8];
  *(inited + 32) = *MEMORY[0x1E695CCC8];
  v3 = v2;
  v4 = [v0 fontName];
  v5 = sub_1A34CD110();
  v7 = v6;

  v8 = MEMORY[0x1E69E6158];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v9 = *MEMORY[0x1E695CCD0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v9;
  [v0 pointSize];
  v11 = MEMORY[0x1E69E7DE0];
  *(inited + 80) = v12;
  v13 = *MEMORY[0x1E695CCD8];
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  v14 = v13;
  v15 = sub_1A32F6C60();
  *(inited + 144) = MEMORY[0x1E69E63B0];
  *(inited + 120) = v15;
  v16 = sub_1A33E9870(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6D98);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1A32F6F40()
{
  v19[13] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19[0] = 0;
  v16 = 0;
  v17 = 0;
  [v0 getRed:v19 green:&v18 blue:&v17 alpha:&v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DA8);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E695CCB0];
  *(inited + 16) = xmmword_1A34DE7A0;
  v3 = *v2;
  *(inited + 32) = v3;
  v4 = v3;
  v5 = sub_1A34C9A10();
  v6 = *MEMORY[0x1E695CCA0];
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  v7 = v6;
  v8 = sub_1A34C9A10();
  v9 = *MEMORY[0x1E695CC90];
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  v10 = v9;
  v11 = sub_1A34C9A10();
  v12 = *MEMORY[0x1E695CC88];
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = v12;
  *(inited + 88) = sub_1A34C9A10();
  v14 = sub_1A33E9998(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DB0);
  swift_arrayDestroy();
  return v14;
}

void sub_1A32F70B8(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a5 >> 60 == 15)
  {
    sub_1A31EC194(0, &qword_1EB0C6D88);
    v13 = sub_1A3385224((a1 & 0xFFFFFFFF00000001), a2 & 1, a3);
    if (v6)
    {

      return;
    }

    v15 = v13;
    v16 = v14;
    v32 = a6;
  }

  else
  {
    v32 = a6;
    v15 = a4;
    v16 = a5;
  }

  v17 = objc_allocWithZone(CNUIPRSPosterConfigurationAttributes);
  v18 = a3;
  sub_1A32F74C0(a4, a5);
  v35 = [v17 initWithCNConfiguration_];
  v29 = v18;
  v19 = [objc_opt_self() attributesForCNConfiguration_];
  v34 = v15;
  v31 = sub_1A34C9680();
  if (v19)
  {
    v20 = [v19 titleFont];
    sub_1A32F6DFC();
  }

  else
  {
    sub_1A33E9870(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for CNWallpaperFontDescriptionKey(0);
  sub_1A32F74D4(&qword_1EB0C5080, type metadata accessor for CNWallpaperFontDescriptionKey);
  v30 = sub_1A34CCF70();

  v33 = v16;
  if (v19)
  {
    v21 = [v19 titleColor];
    sub_1A32F6F40();
  }

  else
  {
    sub_1A33E9998(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for CNWallpaperColorDescriptionKey(0);
  sub_1A31EC194(0, &unk_1EB0C00B0);
  sub_1A32F74D4(&qword_1EB0C5070, type metadata accessor for CNWallpaperColorDescriptionKey);
  v22 = sub_1A34CCF70();

  sub_1A33E9998(MEMORY[0x1E69E7CC0]);
  v23 = sub_1A34CCF70();

  v24 = [v35 extensionIdentifier];
  if (v24)
  {
    v25 = v24;
    sub_1A34CD110();
  }

  v26 = sub_1A34CD0E0();

  if (v19)
  {
    v27 = [v19 preferredTitleLayout] == 1;
  }

  else
  {
    v27 = 0;
  }

  LOBYTE(v28) = v32 & 1;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPosterArchiveData:v31 fontDescription:v30 fontColorDescription:v22 backgroundColorDescription:v23 extensionBundleID:v26 vertical:v27 contentIsSensitive:v28];

  sub_1A31EEE60(a4, a5);
  sub_1A31EC234(v34, v33);
}

uint64_t sub_1A32F74C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A31EC1E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1A32F74D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32F751C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A32F75D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  result = [v0 setCountLimit_];
  qword_1EB0ED218 = MEMORY[0x1E69E7CC0];
  unk_1EB0ED220 = v0;
  return result;
}

uint64_t sub_1A32F7634(uint64_t a1)
{
  sub_1A34CDF20();
  v2 = *(a1 + 16);
  MEMORY[0x1A58EF750](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1A58EF750](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1A34CDF70();
}

uint64_t sub_1A32F76AC()
{
  v1 = *v0;
  result = MEMORY[0x1A58EF750](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1A58EF750](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A32F7700()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1A58EF750](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1A34CDF70();
}

uint64_t sub_1A32F7778()
{
  v1 = *(v0 + 16);
  MEMORY[0x1A58EF750](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1A58EF750](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1A34CDA20();
}

uint64_t sub_1A32F77E8()
{

  sub_1A32F7584(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A32F784C()
{
  sub_1A34CDF20();
  sub_1A32F7778();
  return sub_1A34CDF70();
}

uint64_t sub_1A32F78B4()
{
  sub_1A34CDF20();
  sub_1A32F7778();
  return sub_1A34CDF70();
}

uint64_t sub_1A32F78F4(uint64_t a1, uint64_t a2)
{
  if (sub_1A3426304(*(*a1 + 16), *(*a2 + 16)))
  {

    JUMPOUT(0x1A58EF230);
  }

  return 0;
}

uint64_t sub_1A32F7950()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1A32F79D0()
{
  result = qword_1EB0C6DB8;
  if (!qword_1EB0C6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6DB8);
  }

  return result;
}

unint64_t sub_1A32F7A28()
{
  result = qword_1EB0C18B0;
  if (!qword_1EB0C18B0)
  {
    type metadata accessor for VisualIdentitySuggestionCache.CacheKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C18B0);
  }

  return result;
}

unint64_t sub_1A32F7A84()
{
  result = qword_1EB0C6DC0;
  if (!qword_1EB0C6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6DC0);
  }

  return result;
}

uint64_t sub_1A32F7AD8()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDD10);
  __swift_project_value_buffer(v0, qword_1EB0EDD10);
  return sub_1A34CA240();
}

void (*sub_1A32F7B98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34CA400();
  return sub_1A32F7C20;
}

void sub_1A32F7C20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_1A32F7C68(id a1)
{
  if (*v1)
  {
    [a1 setCornerCurve_];
    [a1 bounds];
    Width = CGRectGetWidth(v11);
    [a1 bounds];
    Height = CGRectGetHeight(v12);
    if (Height >= Width)
    {
      Height = Width;
    }

    v5 = Height * 0.2;
  }

  else
  {
    [a1 setCornerCurve_];
    [a1 bounds];
    v7 = v6 * 0.5;
    [a1 bounds];
    v5 = v8 * 0.5;
    if (v8 * 0.5 >= v7)
    {
      v5 = v7;
    }
  }

  return [a1 setCornerRadius_];
}

__n128 AvatarViewLayer.RenderSpec.init(colorScheme:representation:backgroundRepresentation:shape:borderStyle:contentsScale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = *a5;
  v15 = a5[1];
  v16 = sub_1A34CA5D0();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v18 = a6 + v17[5];
  v19 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v19;
  *(v18 + 96) = *(a2 + 96);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  result = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = result;
  v22 = a6 + v17[6];
  *v22 = v11;
  *(v22 + 8) = v12;
  *(a6 + v17[7]) = v13;
  v23 = (a6 + v17[8]);
  *v23 = v14;
  v23[1] = v15;
  *(a6 + v17[9]) = a7;
  return result;
}

uint64_t AvatarView.Model.representationObservable.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v9 = *(*(v1 + v6) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6980);
  sub_1A3284D0C(&qword_1ED853CF8, &unk_1EB0C6980);
  v9 = sub_1A34CA3A0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B18);
  sub_1A3284D0C(&qword_1ED853D10, &qword_1EB0C69A8);
  sub_1A34CA3B0();

  sub_1A3284D0C(&qword_1ED853D28, &qword_1EB0C6B08);
  v7 = sub_1A34CA3A0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

__n128 sub_1A32F80E4@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v59 = a1[4];
  v60 = v3;
  v61 = *(a1 + 12);
  v4 = a1[1];
  v55 = *a1;
  v56 = v4;
  v5 = a1[3];
  v57 = a1[2];
  v58 = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
    v11 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
    v10 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
    v37 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
    v38 = v9;
    v35 = v11;
    v36 = v10;
    v13 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
    v12 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
    v14 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
    v42 = *(Strong + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
    v40 = v13;
    v41 = v12;
    v39 = v14;
    v15 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
    swift_beginAccess();
    v16 = *(v8 + v15);
    v17 = *(v16 + 88);
    v18 = *(v16 + 72);
    v44 = *(v16 + 104);
    v45 = *(v16 + 120);
    v19 = *(v16 + 40);
    v20 = *(v16 + 24);
    v21 = *(v16 + 56);
    v22 = v41;
    v47 = v42;
    v54 = v45;
    v23 = v37;
    v43[2] = v21;
    v43[3] = v18;
    v43[4] = v17;
    v43[0] = v20;
    v43[1] = v19;
    v46[5] = v40;
    v46[6] = v41;
    v46[3] = v38;
    v46[4] = v39;
    v46[1] = v36;
    v46[2] = v37;
    v46[0] = v35;
    v50 = v21;
    v49 = v19;
    v48 = v20;
    v53 = v44;
    v52 = v17;
    v51 = v18;
    if (v37 >> 3 == 0xFFFFFFFF && v41 < 8)
    {
      if (v44 >> 62 == 1)
      {
        sub_1A32E31E8(&v55, v34);
        sub_1A32E31E8(v43, v34);
        v24 = sub_1A34CC4E0();

        sub_1A3288FDC(v46, &qword_1EB0C6AF8);
        v25 = 0;
      }

      else
      {
        sub_1A32E31E8(&v55, v34);
        sub_1A32E31E8(v43, v34);

        sub_1A3288FDC(v46, &qword_1EB0C6AF8);
        v24 = 0;
        v25 = 4;
      }
    }

    else
    {
      v31 = v40;
      v33 = v39;
      v32 = v38;
      v26 = *(&v37 + 1);
      v27 = v36;
      v25 = BYTE8(v35);
      v24 = v35;
      sub_1A32E31E8(&v55, v34);
      sub_1A32E31E8(v43, v34);
      sub_1A328D790(&v35, v34, &qword_1EB0CBDB0);

      sub_1A31EE004(v24, v25);
      sub_1A32891C8(v27, *(&v27 + 1), v23, v26, v32, *(&v32 + 1), v33, *(&v33 + 1), v31, *(&v31 + 1), v22);
      sub_1A3288FDC(v46, &qword_1EB0C6AF8);
      sub_1A31EE004(v24, v25);
      sub_1A3288FDC(&v35, &qword_1EB0CBDB0);
    }

    v28 = v60;
    *(a2 + 64) = v59;
    *(a2 + 80) = v28;
    v29 = v61;
    v30 = v56;
    *a2 = v55;
    *(a2 + 16) = v30;
    result = v58;
    *(a2 + 32) = v57;
    *(a2 + 48) = result;
    *(a2 + 96) = v29;
    *(a2 + 104) = v24;
    *(a2 + 112) = v25;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0x7FFFFFFF8;
    result.n128_u64[0] = 0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 97) = 0u;
  }

  return result;
}

uint64_t AvatarViewLayer.RenderSpec.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CA5D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AvatarViewLayer.RenderSpec.representation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AvatarViewLayer.RenderSpec(0) + 20);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 48);
  v13 = *(v3 + 32);
  v8 = v13;
  v14 = v7;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  *(a1 + 16) = v9;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 96) = v6;
  return sub_1A32E31E8(v12, v11);
}

uint64_t AvatarViewLayer.RenderSpec.backgroundRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AvatarViewLayer.RenderSpec(0) + 24);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1A31EE004(v4, v5);
}

uint64_t AvatarViewLayer.RenderSpec.shape.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

id AvatarViewLayer.RenderSpec.borderStyle.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AvatarViewLayer.RenderSpec(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_1A32F8640(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1A328D790(v1 + v13, v12, &qword_1EB0C6DD0);
  sub_1A328D790(v18, &v12[v14], &qword_1EB0C6DD0);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1A3288FDC(v12, &qword_1EB0C6DD0);
    }

    goto LABEL_6;
  }

  sub_1A328D790(v12, v8, &qword_1EB0C6DD0);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1A32FC4E4(v8);
LABEL_6:
    sub_1A3288FDC(v12, &qword_1EB0C6DD8);
LABEL_7:
    [v1 setNeedsDisplay];
    return [v1 displayIfNeeded];
  }

  sub_1A32FC41C(&v12[v14], v5);
  v17 = _s14ContactsUICore15AvatarViewLayerC10RenderSpecV2eeoiySbAE_AEtFZ_0(v8, v5);
  sub_1A32FC4E4(v5);
  sub_1A32FC4E4(v8);
  result = sub_1A3288FDC(v12, &qword_1EB0C6DD0);
  if (!v17)
  {
    goto LABEL_7;
  }

  return result;
}

id AvatarViewLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AvatarViewLayer.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v4 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  v5 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model] = 0;
  *&v0[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_modelListener] = 0;
  *&v0[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer] = 0;
  *&v0[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer] = 0;
  v7 = type metadata accessor for AvatarViewLayer(0);
  v31.receiver = v0;
  v31.super_class = v7;
  v8 = objc_msgSendSuper2(&v31, sel_init);
  v6(v3, 1, 1, v5);
  v9 = type metadata accessor for AvatarViewLayer.Model(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec;
  v6(&v10[OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec], 1, 1, v5);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v12 = v8;
  sub_1A32FC540(v3, &v10[v11], &qword_1EB0C6DD0);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  v30.receiver = v10;
  v30.super_class = v9;
  v13 = objc_msgSendSuper2(&v30, sel_init);

  sub_1A3288FDC(v3, &qword_1EB0C6DD0);
  v14 = *&v12[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model];
  *&v12[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model] = v13;

  v15 = [objc_opt_self() standardPreferences];
  v16 = sub_1A34CD0E0();
  LODWORD(v3) = [v15 userHasOptedInToPreference_];

  if (v3)
  {
    v17 = [objc_opt_self() orangeColor];
    v18 = [v17 CGColor];

    [v12 setBackgroundColor_];
  }

  v19 = v12;
  v20 = *MEMORY[0x1E69796E0];
  v21 = v19;
  [v21 setCornerCurve_];
  [v21 bounds];
  v23 = v22 * 0.5;
  [v21 bounds];
  v25 = v24 * 0.5;
  if (v24 * 0.5 >= v23)
  {
    v25 = v23;
  }

  [v21 setCornerRadius_];
  v26 = [objc_opt_self() systemGray6Color];
  v27 = [v26 CGColor];

  [v21 setBackgroundColor_];
  [v21 setMasksToBounds_];

  [v21 setDrawsAsynchronously_];
  [v21 setNeedsDisplayOnBoundsChange_];

  [v21 setOpaque_];
  [v21 setNeedsDisplay];
  return v21;
}

id AvatarViewLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

char *AvatarViewLayer.init(layer:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  v7 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_modelListener] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer] = 0;
  *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer] = 0;
  v10 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1A34CDE10();
  v12 = type metadata accessor for AvatarViewLayer(0);
  v35.receiver = v1;
  v35.super_class = v12;
  v13 = objc_msgSendSuper2(&v35, sel_initWithLayer_, v11);
  swift_unknownObjectRelease();
  v9(v5, 1, 1, v7);
  v14 = type metadata accessor for AvatarViewLayer.Model(0);
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec;
  v9(&v15[OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec], 1, 1, v7);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v17 = v13;
  sub_1A32FC540(v5, &v15[v16], &qword_1EB0C6DD0);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  v34.receiver = v15;
  v34.super_class = v14;
  v18 = objc_msgSendSuper2(&v34, sel_init);

  sub_1A3288FDC(v5, &qword_1EB0C6DD0);
  v19 = *&v17[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model];
  *&v17[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model] = v18;

  v20 = [objc_opt_self() standardPreferences];
  v21 = sub_1A34CD0E0();
  LODWORD(v16) = [v20 userHasOptedInToPreference_];

  if (v16)
  {
    v22 = [objc_opt_self() orangeColor];
    v23 = [v22 CGColor];

    [v17 setBackgroundColor_];
  }

  v24 = &v17[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec];
  swift_beginAccess();
  v25 = *(v8 + 48);
  if (!v25(v24, 1, v7))
  {
    [v17 setContentsScale_];
  }

  if (v25(v24, 1, v7))
  {
    v26 = 0;
  }

  else
  {
    v26 = v24[*(v7 + 28)];
  }

  v33 = v26;
  v27 = v17;
  sub_1A32F7C68(v27);
  v28 = [objc_opt_self() systemGray6Color];
  v29 = [v28 CGColor];

  [v27 setBackgroundColor_];
  [v27 setMasksToBounds_];

  [v27 setDrawsAsynchronously_];
  [v27 setNeedsDisplayOnBoundsChange_];

  [v27 setOpaque_];
  [v27 setNeedsDisplay];
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v27;
}

uint64_t sub_1A32F93D4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1A32FBD2C(v4, v1, v2, v3);
}

uint64_t sub_1A32F9420(__int128 *a1, uint64_t a2)
{
  v4 = sub_1A34CCE90();
  v108 = *(v4 - 1);
  v109 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1A34CCED0();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34CCE80();
  v102 = *(v7 - 8);
  v103 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v101 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A34CCF00();
  v10 = *(v9 - 8);
  v111 = v9;
  v112 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v98 - v15;
  v17 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v114 = *(v17 - 1);
  v18 = *(v114 + 8);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v25 = a1[5];
  v127 = a1[4];
  v128 = v25;
  v129 = *(a1 + 12);
  v26 = a1[1];
  v123 = *a1;
  v124 = v26;
  v27 = a1[3];
  v125 = a1[2];
  v126 = v27;
  v28 = *a2;
  v29 = *(a2 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    v98 = v28;
    v99 = v29;
    v32 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model;
    v33 = *(result + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
    if (v33)
    {
      v34 = OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec;
      swift_beginAccess();
      sub_1A328D790(v33 + v34, v16, &qword_1EB0C6DD0);
      if ((*(v114 + 6))(v16, 1, v17) == 1)
      {

        return sub_1A3288FDC(v16, &qword_1EB0C6DD0);
      }

      sub_1A32FC41C(v16, v24);
      v35 = [objc_opt_self() standardPreferences];
      v36 = sub_1A34CD0E0();
      v37 = [v35 userHasOptedInToPreference_];

      if (v37)
      {
        sub_1A328B6E0();
        v113 = sub_1A34CD750();
        v76 = v100;
        sub_1A34CCEE0();
        v78 = v101;
        v77 = v102;
        *v101 = 500;
        v79 = v103;
        (*(v77 + 104))(v78, *MEMORY[0x1E69E7F38], v103);
        sub_1A34CCEF0();
        (*(v77 + 8))(v78, v79);
        v80 = *(v112 + 8);
        v112 += 8;
        v103 = v80;
        v80(v76, v111);
        sub_1A32FC480(v24, v21);
        v81 = (v114[80] + 24) & ~v114[80];
        v82 = (v18 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
        v83 = swift_allocObject();
        *(v83 + 16) = v31;
        sub_1A32FC41C(v21, v83 + v81);
        v84 = v83 + v82;
        v85 = v128;
        *(v84 + 64) = v127;
        *(v84 + 80) = v85;
        *(v84 + 96) = v129;
        v86 = v124;
        *v84 = v123;
        *(v84 + 16) = v86;
        v87 = v126;
        *(v84 + 32) = v125;
        *(v84 + 48) = v87;
        v88 = v83 + ((v82 + 111) & 0xFFFFFFFFFFFFFFF8);
        v89 = v98;
        *v88 = v98;
        LOBYTE(v77) = v99;
        *(v88 + 8) = v99;
        v115[4] = sub_1A32FC984;
        v115[5] = v83;
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 1107296256;
        v115[2] = sub_1A32A5AB4;
        v115[3] = &block_descriptor_5;
        v90 = _Block_copy(v115);
        v91 = v31;
        sub_1A32E31E8(&v123, &v116);
        sub_1A31EE004(v89, v77);

        v92 = v104;
        sub_1A34CCEB0();
        *&v116 = MEMORY[0x1E69E7CC0];
        sub_1A32FCAA8(&qword_1ED854650, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
        v93 = v24;
        sub_1A3284D0C(&qword_1ED854640, &unk_1EB0C6100);
        v94 = v106;
        v95 = v109;
        sub_1A34CD960();
        v96 = v110;
        v97 = v113;
        MEMORY[0x1A58EEF40](v110, v92, v94, v90);
        _Block_release(v90);

        v108[1](v94, v95);
        (*(v105 + 8))(v92, v107);
        v103(v96, v111);
        v75 = v93;
        return sub_1A32FC4E4(v75);
      }

      v38 = sub_1A34CA5D0();
      v39 = *(*(v38 - 8) + 16);
      v39(v21, v24, v38);
      v40 = v39;
      v41 = v17[5];
      v42 = &v24[v17[6]];
      v43 = *v42;
      v44 = v24[v17[7]];
      v45 = &v24[v17[8]];
      v109 = *v45;
      v46 = v109;
      v110 = v43;
      v47 = *(v45 + 1);
      v48 = *&v24[v17[9]];
      v49 = &v21[v41];
      v50 = v128;
      *(v49 + 4) = v127;
      *(v49 + 5) = v50;
      *(v49 + 12) = v129;
      v51 = v124;
      *v49 = v123;
      *(v49 + 1) = v51;
      v52 = v126;
      *(v49 + 2) = v125;
      *(v49 + 3) = v52;
      v53 = &v21[v17[6]];
      *v53 = v43;
      v54 = v42[8];
      v53[8] = v54;
      v108 = v24;
      v114 = v31;
      v55 = v17[7];
      v21[v55] = v44;
      v56 = &v21[v17[8]];
      *v56 = v46;
      v56[1] = v47;
      *&v21[v17[9]] = v48;
      v112 = v32;
      v57 = v113;
      v40(v113, v21, v38);
      v58 = *(v49 + 5);
      v120 = *(v49 + 4);
      v121 = v58;
      v122 = *(v49 + 12);
      v59 = *(v49 + 1);
      v116 = *v49;
      v117 = v59;
      v60 = *(v49 + 3);
      v118 = *(v49 + 2);
      v119 = v60;
      LODWORD(v111) = v21[v55];
      v61 = v114;
      v62 = *v56;
      v63 = v56[1];
      sub_1A32E31E8(&v123, v115);
      v64 = v98;
      LOBYTE(v56) = v99;
      sub_1A31EE004(v98, v99);
      sub_1A31EE004(v110, v54);
      v65 = v109;
      sub_1A32E31E8(&v116, v115);
      v66 = v62;
      result = sub_1A32FC4E4(v21);
      v67 = v57 + v17[5];
      v68 = v121;
      *(v67 + 64) = v120;
      *(v67 + 80) = v68;
      *(v67 + 96) = v122;
      v69 = v117;
      *v67 = v116;
      *(v67 + 16) = v69;
      v70 = v119;
      *(v67 + 32) = v118;
      *(v67 + 48) = v70;
      v71 = v57 + v17[6];
      *v71 = v64;
      *(v71 + 8) = v56;
      *(v57 + v17[7]) = v111;
      v72 = (v57 + v17[8]);
      *v72 = v62;
      v72[1] = v63;
      *(v57 + v17[9]) = v48;
      v73 = *&v61[v112];
      if (v73)
      {
        v74 = v73;
        sub_1A32FB324(v57);

        sub_1A32FC4E4(v57);
        v75 = v108;
        return sub_1A32FC4E4(v75);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A32F9E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v52 = a5;
  v51 = a4;
  v53 = a1;
  v7 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = sub_1A34CA5D0();
  v15 = *(*(v14 - 8) + 16);
  v15(v10, a2, v14);
  v16 = v15;
  v17 = v8[7];
  v18 = a2 + v8[8];
  v50 = *v18;
  v19 = v50;
  v20 = *(a2 + v8[9]);
  v21 = a2 + v8[10];
  v49 = *v21;
  v22 = v49;
  v23 = *(v21 + 8);
  v24 = *(a2 + v8[11]);
  v25 = &v10[v17];
  v26 = *(a3 + 80);
  *(v25 + 4) = *(a3 + 64);
  *(v25 + 5) = v26;
  *(v25 + 12) = *(a3 + 96);
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 1) = v27;
  v28 = *(a3 + 48);
  *(v25 + 2) = *(a3 + 32);
  *(v25 + 3) = v28;
  v29 = &v10[v8[8]];
  *v29 = v19;
  LOBYTE(a2) = *(v18 + 8);
  v29[8] = a2;
  v30 = v8[9];
  v10[v30] = v20;
  v31 = &v10[v8[10]];
  *v31 = v22;
  v31[1] = v23;
  *&v10[v8[11]] = v24;
  v16(v13, v10, v14);
  v32 = *(v25 + 5);
  v59 = *(v25 + 4);
  v60 = v32;
  v61 = *(v25 + 12);
  v33 = *(v25 + 1);
  v55 = *v25;
  v56 = v33;
  v34 = *(v25 + 3);
  v57 = *(v25 + 2);
  v58 = v34;
  LOBYTE(v25) = v10[v30];
  v35 = *v31;
  v36 = v31[1];
  sub_1A31EE004(v50, a2);
  v37 = v49;
  sub_1A32E31E8(a3, v54);
  sub_1A32E31E8(&v55, v54);
  v38 = v35;
  sub_1A32FC4E4(v10);
  result = v51;
  v40 = v52;
  v41 = &v13[v8[7]];
  v42 = v60;
  *(v41 + 4) = v59;
  *(v41 + 5) = v42;
  *(v41 + 12) = v61;
  v43 = v56;
  *v41 = v55;
  *(v41 + 1) = v43;
  v44 = v58;
  *(v41 + 2) = v57;
  *(v41 + 3) = v44;
  v45 = &v13[v8[8]];
  *v45 = result;
  v45[8] = v40;
  v13[v8[9]] = v25;
  v46 = &v13[v8[10]];
  *v46 = v35;
  *(v46 + 1) = v36;
  *&v13[v8[11]] = v24;
  v47 = *(v53 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
  if (v47)
  {
    sub_1A31EE004(result, v40);
    v48 = v47;
    sub_1A32FB324(v13);

    return sub_1A32FC4E4(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A32FA0D8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model);
  if (v2)
  {
    v4 = v2;
    sub_1A32FB324(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A32FA140()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v130.i64[0] = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v131.i64[0] = &v124 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v124 - v7;
  v9 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v124 - v14;
  v16 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  swift_beginAccess();
  sub_1A328D790(&v1[v16], v8, &qword_1EB0C6DD0);
  v17 = (*(v10 + 48))(v8, 1, v9);
  v132 = v1;
  if (v17 != 1)
  {
    sub_1A32FC41C(v8, v15);
    v23 = objc_opt_self();
    [v23 begin];
    v128 = v23;
    [v23 setDisableActions_];
    [v1 setBackgroundColor_];
    [v1 setContentsScale_];
    v127.i64[0] = v9[7];
    LOBYTE(v161) = v15[v127.i64[0]];
    sub_1A32F7C68(v1);
    v24 = &v15[v9[8]];
    [v1 setBorderColor_];
    [v1 setBorderWidth_];
    v25 = &v15[v9[5]];
    v26 = v25[5].u64[0];
    v27 = v26 >> 62;
    v28 = v15;
    v129 = v15;
    if ((v26 >> 62) > 1)
    {
      if (v27 != 2 && v26 == 0xC000000000000000)
      {
        v47 = vorrq_s8(vorrq_s8(v25[1], v25[3]), vorrq_s8(v25[2], v25[4]));
        if (!(v25->i64[1] | *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | v25[5].i64[1] | v25[6].i64[0] | v25->i64[0]))
        {
LABEL_13:
          v48 = *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer];
          if (v48)
          {
            [v48 removeFromSuperlayer];
          }

          goto LABEL_20;
        }
      }
    }

    else if (v27)
    {
      goto LABEL_13;
    }

    v29 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer;
    v30 = *&v1[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer];
    if (v30)
    {
      sub_1A32FC480(v28, v12);
      v31 = sub_1A34CA5D0();
      v32 = *(*(v31 - 8) + 16);
      v126.i64[0] = v29;
      v33 = v131.i64[0];
      v32(v131.i64[0], v12, v31);
      v34 = &v12[v9[6]];
      v35 = *v34;
      v36 = v34[8];
      v37 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
      v38 = v33 + *(v37 + 20);
      *v38 = v35;
      *(v38 + 8) = v36;
      v39 = v12[v9[7]];
      v40 = v30;
      sub_1A31EE004(v35, v36);
      sub_1A32FC4E4(v12);
      *(v33 + *(v37 + 24)) = v39;
      (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
      v41 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
      swift_beginAccess();
      v42 = v130.i64[0];
      sub_1A328D790(v40 + v41, v130.i64[0], &qword_1EB0C5B80);
      swift_beginAccess();
      sub_1A32FC540(v33, v40 + v41, &qword_1EB0C5B80);
      swift_endAccess();
      sub_1A32A7964(v42);

      sub_1A3288FDC(v42, &qword_1EB0C5B80);
      v43 = v33;
      v44 = v126.i64[0];
      sub_1A3288FDC(v43, &qword_1EB0C5B80);
      v45 = v132;
      v46 = *&v132[v44];
      if (!v46)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1A32FC480(v28, v12);
      v49 = sub_1A34CA5D0();
      v50 = v131.i64[0];
      (*(*(v49 - 8) + 16))(v131.i64[0], v12, v49);
      v51 = &v12[v9[6]];
      v52 = *v51;
      v53 = v51[8];
      v54 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
      v55 = v50 + *(v54 + 20);
      *v55 = v52;
      *(v55 + 8) = v53;
      v56 = v12[v9[7]];
      sub_1A31EE004(v52, v53);
      sub_1A32FC4E4(v12);
      *(v50 + *(v54 + 24)) = v56;
      (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
      v57 = objc_allocWithZone(type metadata accessor for AvatarBackgroundLayer(0));
      v58 = sub_1A32A7C00(v50);
      v45 = v132;
      v59 = *&v132[v29];
      *&v132[v29] = v58;

      v46 = *&v45[v29];
      if (!v46)
      {
        goto LABEL_20;
      }
    }

    v60 = v46;
    v61 = [v60 superlayer];
    if (v61)
    {
    }

    else
    {
      [v45 addSublayer_];
    }

    [v45 contentsScale];
    [v60 setContentsScale_];
    [v45 bounds];
    [v60 setFrame_];

LABEL_20:
    v62 = v25[1];
    v161 = *v25;
    v162 = v62;
    v63 = v25[3];
    v163 = v25[2];
    v164 = v63;
    v64 = v25[5];
    v165 = v25[4];
    v166 = v64;
    v65 = v25[6].i64[0];
    v167 = v65;
    v66 = v161;
    v67 = BYTE8(v161);
    v68 = BYTE9(v161);
    v69 = *(&v161 + 10) | (HIWORD(v161) << 32);
    v70 = v64.i64[1];
    v71 = v64.i64[0] >> 62;
    if ((v64.i64[0] >> 62) <= 1)
    {
      if (v71)
      {
        v86 = v132;
        v87 = *&v132[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer];
        v88 = v161;
        [v87 removeFromSuperlayer];
        [v86 setMasksToBounds_];
        [v86 setContentsGravity_];
        if (v68)
        {
          objc_sync_enter(v88);
          v89 = sub_1A34CD0E0();
          Property = CGImageGetProperty();

          v91 = v129;
          if (Property)
          {
            swift_unknownObjectRetain();
            objc_sync_exit(v88);
          }

          else
          {
            objc_sync_exit(v88);
            swift_unknownObjectRetain();
            Property = v88;
          }
        }

        else
        {
          Property = v88;
          v91 = v129;
        }

        [v86 setContents_];
        swift_unknownObjectRelease();
        v134 = v88;
        v135 = v67;
        v136 = v68 & 1;
        sub_1A3482F78(&v154);
        v146 = v154;
        v147 = v155;
        v148 = v156;
        [v86 setAffineTransform_];
        [v86 setMinificationFilter_];
        [v86 setMagnificationFilter_];
      }

      else
      {
        v126 = v164;
        v127 = v165;
        v130 = v162;
        v131 = v163;
        v125 = v166.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
        v72 = v25[5];
        v158 = v25[4];
        v159 = v72;
        v73 = v25[6].i64[0];
        v74 = v25[1];
        v154 = *v25;
        v155 = v74;
        v75 = v25[3];
        v156 = v25[2];
        v157 = v75;
        v160 = v73;
        v159.i64[0] &= 0x3FFFFFFFFFFFFFFFuLL;
        sub_1A31FA9C4(&v154, &v146);
        v76 = v132;
        [v132 setMasksToBounds_];
        [v76 setContents_];
        v146 = 0x3FF0000000000000uLL;
        v147.i64[0] = 0;
        v147.i64[1] = 0x3FF0000000000000;
        v148 = 0uLL;
        [v76 setAffineTransform_];
        v77 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer;
        v78 = *&v76[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer];
        if (v78 && (type metadata accessor for MonogramLayer(), swift_dynamicCastClass()))
        {
          swift_dynamicCastClassUnconditional();
          *&v146 = v66;
          BYTE8(v146) = v67;
          BYTE9(v146) = v68;
          HIWORD(v146) = WORD2(v69);
          *(&v146 + 10) = v69;
          v147 = v130;
          v148 = v131;
          v149 = v126;
          v150 = v127;
          v151 = v125;
          v152 = v70;
          v153 = v65;
          sub_1A32E31E8(&v161, &v134);
          v79 = v78;
          sub_1A3363F10(&v146);

          v80 = v132;
        }

        else
        {
          [v78 removeFromSuperlayer];
          v134 = v66;
          v135 = v67;
          v136 = v68;
          v138 = WORD2(v69);
          v137 = v69;
          v140 = v131;
          v139 = v130;
          v142 = v127;
          v141 = v126;
          v143 = v125;
          v144 = v70;
          v145 = v65;
          v96 = objc_allocWithZone(type metadata accessor for MonogramLayer());
          v152 = v166.i64[1];
          v149 = v164;
          v150 = v165;
          v146 = v161;
          v147 = v162;
          v148 = v163;
          v153 = v167;
          v151 = v166.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
          sub_1A31FA9C4(&v146, &v133);
          v97 = sub_1A336409C(&v134);
          v80 = v132;
          v98 = *&v132[v77];
          *&v132[v77] = v97;
          v99 = v97;

          [v99 setNeedsDisplay];
          v100 = *&v80[v77];
          [v100 displayIfNeeded];
        }

        v101 = *&v80[v77];
        v91 = v129;
        if (v101)
        {
          v102 = v101;
          v103 = [v102 superlayer];
          if (v103)
          {
          }

          else
          {
            [v80 addSublayer_];
          }

          [v80 contentsScale];
          [v102 setContentsScale_];
          [v80 bounds];
          [v102 setFrame_];
          sub_1A32E33A0(&v161);
          goto LABEL_55;
        }
      }

      sub_1A32E33A0(&v161);
      goto LABEL_63;
    }

    v81 = BYTE8(v161) | (BYTE9(v161) << 8) | (v69 << 16);
    if (v71 != 2)
    {
      if (v166.i64[0] != 0xC000000000000000 || (v92 = vorrq_s8(vorrq_s8(v164, v162), vorrq_s8(v165, v163)), v81 | *&vorr_s8(*v92.i8, *&vextq_s8(v92, v92, 8uLL)) | v166.i64[1] | v161 | v65))
      {
        v111 = v132;
        [v132 setMasksToBounds_];
        [v111 setContents_];
        v154 = 0x3FF0000000000000uLL;
        v155.i64[0] = 0;
        v155.i64[1] = 0x3FF0000000000000;
        v156 = 0uLL;
        [v111 setAffineTransform_];
        v112 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer;
        v113 = *&v111[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer];
        if (v113 && (type metadata accessor for SilhouetteLayer(), swift_dynamicCastClass()))
        {
          v114 = swift_dynamicCastClassUnconditional();
          v91 = v129;
          v115 = *(v114 + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec);
          *(v114 + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec) = v129[v127.i64[0]];
          LOBYTE(v154) = v115;
          v116 = v113;
          sub_1A33F56B8(&v154);
        }

        else
        {
          [v113 removeFromSuperlayer];
          v91 = v129;
          LOBYTE(v154) = v129[v127.i64[0]];
          v117 = objc_allocWithZone(type metadata accessor for SilhouetteLayer());
          v118 = sub_1A33F89FC(&v154);
          [v118 setDrawsAsynchronously_];
          v119 = *&v111[v112];
          *&v111[v112] = v118;
        }

        v120 = *&v111[v112];
        if (v120)
        {
          v121 = v120;
          v122 = [v121 superlayer];
          if (v122)
          {
          }

          else
          {
            [v111 addSublayer_];
          }

          [v111 contentsScale];
          [v121 setContentsScale_];
          [v111 bounds];
          [v121 setFrame_];

          v123 = *&v111[v112];
        }

        else
        {
          v123 = 0;
        }

        [v123 setNeedsDisplay];
        [*&v111[v112] displayIfNeeded];
      }

      else
      {
        v93 = v132;
        [*&v132[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer] removeFromSuperlayer];
        [v93 setContents_];
        v154 = 0x3FF0000000000000uLL;
        v155.i64[0] = 0;
        v155.i64[1] = 0x3FF0000000000000;
        v156 = 0uLL;
        [v93 setAffineTransform_];
        [v93 setMasksToBounds_];
        v94 = [objc_opt_self() systemGray6Color];
        v95 = [v94 CGColor];

        [v93 setBackgroundColor_];
        v91 = v129;
      }

      goto LABEL_63;
    }

    v82 = v132;
    [v132 setMasksToBounds_];
    [v82 setContents_];
    v154 = 0x3FF0000000000000uLL;
    v155.i64[0] = 0;
    v155.i64[1] = 0x3FF0000000000000;
    v156 = 0uLL;
    [v82 setAffineTransform_];
    v83 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer;
    v84 = *&v82[OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer];
    if (v84 && (type metadata accessor for EmojiLayer(), swift_dynamicCastClass()))
    {
      swift_dynamicCastClassUnconditional();
      *&v154 = v66;
      *(&v154 + 1) = v81;
      v85 = v84;
      sub_1A3475A08(&v154);
    }

    else
    {
      [v84 removeFromSuperlayer];
      *&v154 = v66;
      *(&v154 + 1) = v81;
      v104 = objc_allocWithZone(type metadata accessor for EmojiLayer());
      v105 = sub_1A3475A84(&v154);
      v106 = *&v82[v83];
      *&v82[v83] = v105;
      v107 = v105;

      [v107 setNeedsDisplay];
      v108 = *&v82[v83];
      [v108 displayIfNeeded];
    }

    v91 = v129;
    v109 = *&v82[v83];
    if (!v109)
    {
LABEL_63:
      [v128 commit];
      sub_1A32FC4E4(v91);
      return;
    }

    v102 = v109;
    v110 = [v102 superlayer];
    if (v110)
    {
    }

    else
    {
      [v82 addSublayer_];
    }

    [v82 contentsScale];
    [v102 setContentsScale_];
    [v82 bounds];
    [v102 setFrame_];
LABEL_55:

    goto LABEL_63;
  }

  sub_1A3288FDC(v8, &qword_1EB0C6DD0);
  v18 = [objc_opt_self() standardPreferences];
  v19 = sub_1A34CD0E0();
  v20 = [v18 userHasOptedInToPreference_];

  if (v20)
  {
    v21 = [objc_opt_self() systemPinkColor];
    v22 = [v21 CGColor];

    [v132 setBackgroundColor_];
  }
}

uint64_t sub_1A32FB324(uint64_t a1)
{
  v3 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = OBJC_IVAR____TtCC14ContactsUICore15AvatarViewLayer5Model_spec;
  swift_beginAccess();
  v37 = a1;
  sub_1A32FC480(a1, v19);
  v36 = *(v4 + 56);
  v36(v19, 0, 1, v3);
  v21 = *(v7 + 56);
  v35 = v1;
  sub_1A328D790(v1 + v20, v9, &qword_1EB0C6DD0);
  sub_1A328D790(v19, &v9[v21], &qword_1EB0C6DD0);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) == 1)
  {
    sub_1A3288FDC(v19, &qword_1EB0C6DD0);
    if (v22(&v9[v21], 1, v3) == 1)
    {
      return sub_1A3288FDC(v9, &qword_1EB0C6DD0);
    }
  }

  else
  {
    sub_1A328D790(v9, v16, &qword_1EB0C6DD0);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v30 = v33;
      sub_1A32FC41C(&v9[v21], v33);
      v31 = _s14ContactsUICore15AvatarViewLayerC10RenderSpecV2eeoiySbAE_AEtFZ_0(v16, v30);
      sub_1A32FC4E4(v30);
      sub_1A3288FDC(v19, &qword_1EB0C6DD0);
      sub_1A32FC4E4(v16);
      result = sub_1A3288FDC(v9, &qword_1EB0C6DD0);
      v23 = v37;
      v9 = v38;
      v24 = v36;
      if (v31)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1A3288FDC(v19, &qword_1EB0C6DD0);
    sub_1A32FC4E4(v16);
  }

  sub_1A3288FDC(v9, &qword_1EB0C6DD8);
  v23 = v37;
  v9 = v38;
  v24 = v36;
LABEL_7:
  sub_1A32FC480(v23, v9);
  v24(v9, 0, 1, v3);
  v25 = v35;
  swift_beginAccess();
  sub_1A32FCA30(v9, v25 + v20);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  sub_1A32FC480(v23, v9);
  v24(v9, 0, 1, v3);
  v28 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  swift_beginAccess();
  v29 = v34;
  sub_1A328D790(v27 + v28, v34, &qword_1EB0C6DD0);
  swift_beginAccess();
  sub_1A32FC540(v9, v27 + v28, &qword_1EB0C6DD0);
  swift_endAccess();
  sub_1A32F8640(v29);

  sub_1A3288FDC(v29, &qword_1EB0C6DD0);
  return sub_1A3288FDC(v9, &qword_1EB0C6DD0);
}

id sub_1A32FB858(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A32FB8F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvatarViewLayer.Model(0);
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

char *sub_1A32FB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A34CA5D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, v6, v8);
  v11 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model__representation;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = *(v12 + 24);
  v14 = *(v12 + 40);
  v15 = *(v12 + 56);
  v16 = *(v12 + 72);
  v17 = *(v12 + 88);
  v59 = *(v12 + 120);
  v18 = *(v12 + 104);
  v57 = v17;
  v58 = v18;
  v55 = v15;
  v56 = v16;
  v53 = v13;
  v54 = v14;
  v19 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
  v65 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
  v66 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
  v20 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  v21 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
  v22 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
  v61 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
  v62 = v22;
  v23 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80);
  v25 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32);
  v24 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48);
  v63 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64);
  v64 = v23;
  v27 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe);
  v26 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16);
  v60[0] = v20;
  v60[1] = v26;
  v28 = *(v12 + 40);
  v29 = *(v12 + 56);
  v67[0] = *(v12 + 24);
  v67[1] = v28;
  v30 = *(v12 + 72);
  v31 = *(v12 + 104);
  v69 = *(v12 + 88);
  v70 = v31;
  v67[2] = v29;
  v68 = v30;
  v72[2] = v25;
  v72[3] = v24;
  v71 = *(v12 + 120);
  v72[0] = v27;
  v72[1] = v21;
  v32 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96);
  v33 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 112);
  v72[5] = v19;
  v72[6] = v32;
  v72[4] = v63;
  v76 = v29;
  v75 = v28;
  v74 = v67[0];
  v73 = v33;
  v80 = v71;
  v79 = v31;
  v78 = v69;
  v77 = v68;
  if (v61 >> 3 == 0xFFFFFFFF && v65 < 8)
  {
    if (v70 >> 62 == 1)
    {
      sub_1A32E31E8(&v53, v52);
      sub_1A32E31E8(v67, v52);
      v34 = sub_1A34CC4E0();
      sub_1A3288FDC(v72, &qword_1EB0C6AF8);
      v35 = 0;
    }

    else
    {
      sub_1A32E31E8(&v53, v52);
      sub_1A32E31E8(v67, v52);
      sub_1A3288FDC(v72, &qword_1EB0C6AF8);
      v34 = 0;
      v35 = 4;
    }
  }

  else
  {
    v35 = BYTE8(v60[0]);
    v34 = *&v60[0];
    v51 = v10;
    sub_1A328D790(v60, v52, &qword_1EB0CBDB0);
    sub_1A328D790(v60, v52, &qword_1EB0CBDB0);
    sub_1A32E31E8(&v53, v52);
    sub_1A32E31E8(v67, v52);
    sub_1A3288FDC(v72, &qword_1EB0C6AF8);
    sub_1A31EE004(v34, v35);
    v10 = v51;
    sub_1A3288FDC(v60, &qword_1EB0CBDB0);
  }

  v36 = *(a1 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactType);
  v37 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v38 = v37[9];
  v39 = (v3 + v37[8]);
  v51 = *v39;
  v40 = v39[1];
  v41 = *(v3 + v38);
  (*(v7 + 32))(a2, v10, v6);
  v42 = a2 + v37[5];
  v43 = v58;
  *(v42 + 64) = v57;
  *(v42 + 80) = v43;
  *(v42 + 96) = v59;
  v44 = v54;
  *v42 = v53;
  *(v42 + 16) = v44;
  v45 = v56;
  *(v42 + 32) = v55;
  *(v42 + 48) = v45;
  v46 = a2 + v37[6];
  *v46 = v34;
  *(v46 + 8) = v35;
  *(a2 + v37[7]) = v36;
  v47 = (a2 + v37[8]);
  v48 = v51;
  *v47 = v51;
  v47[1] = v40;
  *(a2 + v37[9]) = v41;

  return v48;
}

uint64_t sub_1A32FBD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B10);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a3, v16);
  v32 = (*(a4 + 8))(a3, a4);
  sub_1A328B6E0();
  v19 = sub_1A34CD750();
  v31 = v19;
  v20 = sub_1A34CD730();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6B20);
  sub_1A3284D0C(&qword_1ED853D18, &qword_1EB0C6B20);
  sub_1A32FCAA8(&unk_1ED853CE8, sub_1A328B6E0);
  sub_1A34CA3D0();
  sub_1A3288FDC(v9, &qword_1EB0C6B00);

  v21 = swift_allocObject();
  v22 = v28;
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A32E7FB8;
  *(v23 + 24) = v21;
  sub_1A3284D0C(&qword_1ED853D20, &qword_1EB0C6B10);
  v24 = v29;
  v25 = sub_1A34CA3E0();

  (*(v30 + 8))(v13, v24);
  *(v22 + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_modelListener) = v25;

  return (*(v14 + 8))(v18, v27);
}

BOOL _s14ContactsUICore15AvatarViewLayerC10RenderSpecV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A34CA5C0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  v5 = (a1 + v4[5]);
  v6 = v5[3];
  v7 = v5[5];
  v53 = v5[4];
  v54 = v7;
  v55 = v5[6].i64[0];
  v8 = v5[1];
  v9 = v5[3];
  v51 = v5[2];
  v52 = v9;
  v10 = v5[1];
  v50[0] = *v5;
  v50[1] = v10;
  v11 = v5[5];
  v47 = v53;
  v48 = v11;
  v49 = v5[6].i64[0];
  v45 = v51;
  v46 = v6;
  v43 = v50[0];
  v44 = v8;
  v12 = a2 + v4[5];
  v13 = *(v12 + 48);
  v14 = *(v12 + 80);
  v59 = *(v12 + 64);
  v60 = v14;
  v15 = *(v12 + 16);
  v16 = *(v12 + 48);
  v57 = *(v12 + 32);
  v58 = v16;
  v17 = *(v12 + 16);
  v56[0] = *v12;
  v56[1] = v17;
  v18 = *(v12 + 80);
  v40 = v59;
  v41 = v18;
  v36 = v56[0];
  v37 = v15;
  v61 = *(v12 + 96);
  v42 = *(v12 + 96);
  v38 = v57;
  v39 = v13;
  sub_1A32E31E8(v50, v35);
  sub_1A32E31E8(v56, v35);
  v19 = _s14ContactsUICore10AvatarViewV5ModelC0C14RepresentationO2eeoiySbAG_AGtFZ_0(&v43, &v36);
  v62[4] = v40;
  v62[5] = v41;
  v63 = v42;
  v62[0] = v36;
  v62[1] = v37;
  v62[2] = v38;
  v62[3] = v39;
  sub_1A32E33A0(v62);
  v64[4] = v47;
  v64[5] = v48;
  v65 = v49;
  v64[0] = v43;
  v64[1] = v44;
  v64[2] = v45;
  v64[3] = v46;
  sub_1A32E33A0(v64);
  if (!v19)
  {
    return 0;
  }

  v20 = v4[6];
  v21 = *(a1 + v20 + 8);
  v43.i64[0] = *(a1 + v20);
  v43.i8[8] = v21;
  v22 = a2 + v20;
  v24 = *(v22 + 8);
  *&v36 = *v22;
  v23 = v36;
  BYTE8(v36) = v24;
  sub_1A31EE004(v43.i64[0], v21);
  sub_1A31EE004(v23, v24);
  LOBYTE(v23) = _s14ContactsUICore30AvatarBackgroundRepresentationO2eeoiySbAC_ACtFZ_0(&v43, &v36);
  sub_1A31ECC9C(v36, BYTE8(v36));
  sub_1A31ECC9C(v43.i64[0], v43.u8[8]);
  if ((v23 & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v26 = v4[8];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = a2 + v26;
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v27)
  {
    if (!v30)
    {
      return 0;
    }

    type metadata accessor for CGColor(0);
    sub_1A32FCAA8(&qword_1EB0C6228, type metadata accessor for CGColor);
    v32 = v30;
    v33 = v27;
    v34 = sub_1A34C9B50();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  if (v28 != v31)
  {
    return 0;
  }

  return *(a1 + v4[9]) == *(a2 + v4[9]);
}

uint64_t sub_1A32FC41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32FC480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32FC4E4(uint64_t a1)
{
  v2 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A32FC540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1A32FC5C4()
{
  sub_1A32FC6E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A32FC6E4()
{
  if (!qword_1ED853E58[0])
  {
    type metadata accessor for AvatarViewLayer.RenderSpec(255);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, qword_1ED853E58);
    }
  }
}

uint64_t sub_1A32FC764()
{
  result = sub_1A34CA5D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A32FC80C()
{
  sub_1A32FC6E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A32FC8A4(void *a1, id a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v11 = a11 >> 62;
  if ((a11 >> 62) > 1)
  {
    if (v11 == 2)
    {
    }
  }

  else if (v11)
  {
  }

  else
  {

    sub_1A32891B0(a7, a8, a9, a10, a11);
  }
}

uint64_t sub_1A32FC984()
{
  v1 = *(type metadata accessor for AvatarViewLayer.RenderSpec(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 111) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1A32F9E00(v4, v0 + v2, v0 + v3, v6, v7);
}

uint64_t sub_1A32FCA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32FCAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A32FCAF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1A32FCB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A32FCBC8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DE0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DE8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v27 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DF0);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DF8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  if (qword_1EB0C0398 != -1)
  {
    swift_once();
  }

  v15 = sub_1A34CCC60();
  v16 = __swift_project_value_buffer(v15, qword_1EB0ECEF0);
  (*(*(v15 - 8) + 16))(v7, v16, v15);
  *&v7[*(v5 + 56)] = 256;
  sub_1A34CC4D0();
  v17 = a1 & 1;
  v31 = v17;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC740();
  v18 = sub_1A34CC540();

  v19 = sub_1A34CBA90();
  sub_1A329D98C(v7, v9, &qword_1EB0C6DE0);
  v20 = &v9[*(v27 + 36)];
  *v20 = v18;
  v20[8] = v19;
  sub_1A34CCCE0();
  v21 = sub_1A34CCCA0();

  v31 = v17;
  v32 = a2;
  sub_1A34CC740();
  v22 = v30;
  sub_1A329D98C(v9, v11, &qword_1EB0C6DE8);
  v23 = &v11[*(v28 + 36)];
  *v23 = v21;
  v23[8] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v24 + 24) = a2;
  sub_1A329D98C(v11, v14, &qword_1EB0C6DF0);
  v25 = &v14[*(v12 + 36)];
  *v25 = sub_1A32FD000;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  sub_1A32FD00C();
  sub_1A34C9010();
  sub_1A34CC1F0();
  return sub_1A32FD234(v14);
}

unint64_t sub_1A32FD00C()
{
  result = qword_1EB0C0AC0;
  if (!qword_1EB0C0AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6DF8);
    sub_1A32FD098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AC0);
  }

  return result;
}

unint64_t sub_1A32FD098()
{
  result = qword_1EB0C0BE0;
  if (!qword_1EB0C0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6DF0);
    sub_1A32FD150();
    sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BE0);
  }

  return result;
}

unint64_t sub_1A32FD150()
{
  result = qword_1EB0C0E80;
  if (!qword_1EB0C0E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6DE8);
    sub_1A3284D0C(&qword_1EB0C11A8, &qword_1EB0C6DE0);
    sub_1A3284D0C(&qword_1EB0C0788, &qword_1EB0C6E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E80);
  }

  return result;
}

uint64_t sub_1A32FD234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A32FD29C()
{
  result = qword_1EB0C0A10;
  if (!qword_1EB0C0A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6E08);
    sub_1A32FD00C();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A10);
  }

  return result;
}

unint64_t sub_1A32FD328()
{
  result = qword_1ED8544B0;
  if (!qword_1ED8544B0)
  {
    sub_1A34CB970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8544B0);
  }

  return result;
}

uint64_t sub_1A32FD380()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

uint64_t sub_1A32FD3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A32FD3FC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1A32FD46C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1A34CB0B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualIdentity(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v1 + 8);
  v40 = *v1;
  v12 = v40;
  v13 = v41;
  sub_1A34C9010();
  v14 = v12;
  v34 = v13;
  if ((v13 & 1) == 0)
  {
    sub_1A34CD650();
    v15 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v40, &qword_1EB0C6E58);
    (*(v6 + 8))(v8, v5);
    v14 = v39;
  }

  v31 = v8;
  v32 = v6;
  v33 = v5;
  swift_getKeyPath();
  v39 = v14;
  sub_1A3300F54(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v16 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  sub_1A328D790(v14 + v16, v4, &qword_1EB0C5D28);
  v17 = *(v10 + 48);
  if (v17(v4, 1, v9) == 1)
  {
    swift_getKeyPath();
    v38 = v14;
    sub_1A34C99A0();

    v18 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    v19 = v35;
    sub_1A3300BB8(v14 + v18, v35);

    if (v17(v4, 1, v9) != 1)
    {
      sub_1A3288FDC(v4, &qword_1EB0C5D28);
    }
  }

  else
  {

    v19 = v35;
    sub_1A3300C1C(v4, v35, type metadata accessor for VisualIdentity);
  }

  sub_1A34C9010();
  if ((v34 & 1) == 0)
  {
    sub_1A34CD650();
    v20 = sub_1A34CBA30();
    sub_1A34CA210();

    v21 = v31;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v40, &qword_1EB0C6E58);
    (*(v32 + 8))(v21, v33);
    v12 = v37;
  }

  swift_getKeyPath();
  v37 = v12;
  sub_1A34C99A0();

  v22 = *(v12 + 40);

  if (v22)
  {
    v23 = (v19 + *(v9 + 28));
    v24 = v23[3];
    v25 = v23[4];
    v26 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v27 = v36;
    v36[3] = v24;
    v27[4] = *(v25 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  }

  else
  {
    sub_1A31EE4BC(v19 + *(v9 + 32), v36);
  }

  return sub_1A3300F9C(v19, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A32FD9C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E18);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v8;
  v9 = type metadata accessor for InlineGroupedFormStyle();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E28);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E30);
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E38);
  sub_1A3284D0C(&qword_1EB0C6E40, &qword_1EB0C6E38);
  sub_1A34CBC30();
  if (qword_1EB0C0398 != -1)
  {
    swift_once();
  }

  v20 = sub_1A34CCC60();
  v21 = __swift_project_value_buffer(v20, qword_1EB0ECEF0);
  (*(*(v20 - 8) + 16))(v11, v21, v20);
  sub_1A3284D0C(&qword_1EB0C6E48, &qword_1EB0C6E28);
  sub_1A3300F54(&qword_1EB0C6E50, type metadata accessor for InlineGroupedFormStyle);
  v50 = v19;
  sub_1A34CC3E0();
  sub_1A3300F9C(v11, type metadata accessor for InlineGroupedFormStyle);
  (*(v13 + 8))(v15, v12);
  v63 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1162760004, 0xE400000000000000);
  v64 = v22;
  v23 = *a1;
  v70 = *(a1 + 8);
  v24 = a1[3];
  v26 = *(a1 + 32);
  v68 = a1[2];
  v25 = v68;
  v69 = v23;
  v27 = swift_allocObject();
  v28 = *(a1 + 1);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(a1 + 32);
  sub_1A328D790(&v69, v67, &qword_1EB0C6E58);
  sub_1A330066C(&v68, v67);
  sub_1A328A95C();
  sub_1A34C9010();
  v29 = v53;
  sub_1A34CC7C0();
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v63 = KeyPath;
  LOBYTE(v64) = 0;
  v65 = v31;
  v66 = 0;
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  sub_1A33006C8();
  v32 = v56;
  v33 = v57;
  sub_1A34CBEB0();

  (*(v54 + 8))(v29, v32);
  v63 = v25;
  v64 = v24;
  LOBYTE(v65) = v26;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
  MEMORY[0x1A58EE120](v67, v34);
  v35 = v67[0];
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = (v33 + *(v58 + 36));
  *v38 = v36;
  v38[1] = sub_1A330071C;
  v38[2] = v37;
  sub_1A3300724();
  v39 = v59;
  sub_1A34CC1F0();
  sub_1A3288FDC(v33, &qword_1EB0C6E18);
  v40 = v51;
  v41 = *(v51 + 16);
  v42 = v52;
  v43 = v50;
  v44 = v55;
  v41(v52, v50, v55);
  v45 = v60;
  sub_1A32022B4(v39, v60);
  v46 = v61;
  v41(v61, v42, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E70);
  sub_1A32022B4(v45, &v46[*(v47 + 48)]);
  sub_1A3288FDC(v39, &qword_1EB0C6E20);
  v48 = *(v40 + 8);
  v48(v43, v44);
  sub_1A3288FDC(v45, &qword_1EB0C6E20);
  return (v48)(v42, v44);
}

uint64_t sub_1A32FE1D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E78);
  v28 = *(v3 - 8);
  v4 = v28;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E80);
  v30 = *(v10 - 8);
  v11 = v30;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E88);
  sub_1A3300868();
  sub_1A34CCA00();
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6EA8);
  sub_1A33009EC();
  v27 = v9;
  sub_1A34CCA00();
  v17 = *(v11 + 16);
  v29 = v13;
  v17(v13, v16, v10);
  v18 = *(v4 + 16);
  v19 = v9;
  v20 = v3;
  v18(v6, v19, v3);
  v21 = v31;
  v17(v31, v13, v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6EC0);
  v18(&v21[*(v22 + 48)], v6, v20);
  v23 = *(v28 + 8);
  v23(v27, v20);
  v24 = *(v30 + 8);
  v24(v16, v10);
  v23(v6, v20);
  return (v24)(v29, v10);
}

uint64_t sub_1A32FE4F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1A34CAD20();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6EC8);
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - v11;
  v13 = *a1;
  v28 = *(a1 + 8);
  v26 = a1[2];
  v27 = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 1);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  v24 = a1;
  sub_1A328D790(&v27, v25, &qword_1EB0C6E58);
  sub_1A330066C(&v26, v25);
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6ED0);
  sub_1A3300AD4();
  sub_1A34CC790();
  sub_1A34CAD10();
  v16 = sub_1A3284D0C(&qword_1EB0C6EA0, &qword_1EB0C6E98);
  v17 = sub_1A3300F54(&qword_1EB0C0998, MEMORY[0x1E697C248]);
  sub_1A34CBEA0();
  (*(v22 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v25[0] = v6;
  v25[1] = v3;
  v25[2] = v16;
  v25[3] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_1A34CC1F0();
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_1A32FE8BC(uint64_t *a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v6 = *a1;
  v16 = v6;
  v7 = v17;
  sub_1A34C9010();
  if (v7 == 1)
  {
    sub_1A34C9010();
    v8 = v6;
  }

  else
  {
    sub_1A34CD650();
    v9 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v16, &qword_1EB0C6E58);
    v10 = *(v3 + 8);
    v10(v5, v2);
    v8 = v15;
    sub_1A34C9010();
    sub_1A34CD650();
    v11 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v16, &qword_1EB0C6E58);
    v10(v5, v2);
    v6 = v15;
  }

  swift_getKeyPath();
  v15 = v6;
  sub_1A3300F54(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v12 = *(v6 + 40);

  if (sub_1A3335964((v12 & 1) == 0, *(v8 + 24)))
  {
    LOBYTE(v15) = (v12 & 1) == 0;
    sub_1A335493C(&v15);
  }
}

uint64_t sub_1A32FEB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A34CB110();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F00);
  sub_1A32FEBE8(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6ED0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A32FEBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = type metadata accessor for ScaledRoundedRectangle();
  MEMORY[0x1EEE9AC00](v49);
  v52 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A34CB0B0();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F08);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v44 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F10);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v44 - v13;
  v55 = sub_1A34CB290();
  LOBYTE(v59) = 1;
  sub_1A32FF364(a1, v70);
  *(v67 + 7) = v70[0];
  *(&v67[2] + 7) = v70[1];
  *(&v67[4] + 7) = v70[2];
  *(&v67[6] + 7) = v70[3];
  v53 = v59;
  sub_1A32FD46C(&v59);
  *&v60[24] = swift_getKeyPath();
  v60[32] = 0;
  v69 = *(a1 + 8);
  v68 = *a1;
  v14 = v68;
  v15 = v69;
  sub_1A34C9010();
  v16 = v14;
  if ((v15 & 1) == 0)
  {
    sub_1A34CD650();
    v17 = sub_1A34CBA30();
    sub_1A34CA210();

    v18 = v46;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v68, &qword_1EB0C6E58);
    (*(v47 + 8))(v18, v5);
    v16 = v57[0];
  }

  v45 = v5;
  swift_getKeyPath();
  v57[0] = v16;
  sub_1A3300F54(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v19 = *(v16 + 40);

  v63 = v59;
  v64 = *v60;
  v65 = *&v60[16];
  LOBYTE(v66) = v60[32];
  v62 = 0;
  sub_1A34C9010();
  if ((v15 & 1) == 0)
  {
    sub_1A34CD650();
    v20 = sub_1A34CBA30();
    sub_1A34CA210();

    v21 = v46;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v68, &qword_1EB0C6E58);
    (*(v47 + 8))(v21, v45);
    v14 = v59;
  }

  if (v19)
  {
    v22 = 0x3FF0000000000000;
  }

  else
  {
    v22 = 0x3FDD89D89D89D89ELL;
  }

  swift_getKeyPath();
  *&v59 = v14;
  sub_1A34C99A0();

  v23 = *(v14 + 40);

  if (v23)
  {
    v24 = 0.5;
  }

  else
  {
    v24 = 0.25;
  }

  v25 = *(v49 + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1A34CB200();
  v28 = v52;
  (*(*(v27 - 8) + 104))(v52 + v25, v26, v27);
  *v28 = v24;
  v29 = &v8[*(v48 + 36)];
  sub_1A3300C1C(v28, v29, type metadata accessor for ScaledRoundedRectangle);
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D10) + 36)) = 256;
  v30 = v64;
  *v8 = v63;
  *(v8 + 1) = v30;
  *(v8 + 2) = v65;
  *(v8 + 6) = v66;
  *(v8 + 7) = v22;
  *(v8 + 32) = v62;
  sub_1A34CCC80();
  sub_1A34CA760();
  v31 = v50;
  sub_1A329D98C(v8, v50, &qword_1EB0C6F08);
  v32 = (v31 + *(v51 + 36));
  v33 = *&v67[11];
  *v32 = *&v67[9];
  v32[1] = v33;
  v32[2] = *&v67[13];
  v34 = v54;
  sub_1A329D98C(v31, v54, &qword_1EB0C6F10);
  v35 = v56;
  sub_1A328D790(v34, v56, &qword_1EB0C6F10);
  v36 = v55;
  v57[0] = v55;
  v57[1] = 0;
  v37 = v53;
  v58[0] = v53;
  *&v58[1] = *v67;
  *&v58[17] = *&v67[2];
  *&v58[33] = *&v67[4];
  *&v58[49] = *&v67[6];
  v38 = *(&v67[7] + 7);
  *&v58[64] = *(&v67[7] + 7);
  v39 = *v58;
  *a2 = v55;
  *(a2 + 16) = v39;
  v40 = *&v58[16];
  v41 = *&v58[48];
  *(a2 + 48) = *&v58[32];
  *(a2 + 64) = v41;
  *(a2 + 32) = v40;
  *(a2 + 80) = v38;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F18);
  sub_1A328D790(v35, a2 + *(v42 + 64), &qword_1EB0C6F10);
  sub_1A328D790(v57, &v59, &qword_1EB0C6F20);
  sub_1A3288FDC(v34, &qword_1EB0C6F10);
  sub_1A3288FDC(v35, &qword_1EB0C6F10);
  v59 = v36;
  v60[0] = v37;
  *&v60[17] = *&v67[2];
  *&v60[33] = *&v67[4];
  *v61 = *&v67[6];
  *&v61[15] = *(&v67[7] + 7);
  *&v60[1] = *v67;
  return sub_1A3288FDC(&v59, &qword_1EB0C6F20);
}

uint64_t sub_1A32FF364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000015, 0x80000001A350D170);
  v47 = v8;
  sub_1A328A95C();
  v9 = sub_1A34CBE30();
  v41 = v10;
  v42 = v9;
  HIDWORD(v40) = v11;
  v43 = v12;
  v49 = *(a1 + 8);
  v13 = *a1;
  v48 = v13;
  v14 = v49;
  sub_1A34C9010();
  if ((v14 & 1) == 0)
  {
    sub_1A34CD650();
    v15 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v48, &qword_1EB0C6E58);
    (*(v5 + 8))(v7, v4);
    v13 = v46;
  }

  swift_getKeyPath();
  v46 = v13;
  sub_1A3300F54(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v16 = *(v13 + 40);

  v17 = "VISUAL_IDENTITY_AVATAR";
  if (v16)
  {
    v17 = "ypePicker11Coordinator";
  }

  v46 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000016, v17 | 0x8000000000000000);
  v47 = v18;
  v19 = sub_1A34CBE30();
  v21 = v20;
  v23 = v22;
  sub_1A34CBBF0();
  v24 = sub_1A34CBE10();
  v26 = v25;
  v28 = v27;

  sub_1A328A9B0(v19, v21, v23 & 1);

  LODWORD(v46) = sub_1A34CB590();
  v29 = sub_1A34CBDF0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1A328A9B0(v24, v26, v28 & 1);

  v36 = BYTE4(v40) & 1;
  v44 = BYTE4(v40) & 1;
  LOBYTE(v46) = BYTE4(v40) & 1;
  LOBYTE(v26) = v33 & 1;
  v45 = v33 & 1;
  v38 = v41;
  v37 = v42;
  *a2 = v42;
  *(a2 + 8) = v38;
  *(a2 + 16) = v36;
  *(a2 + 24) = v43;
  *(a2 + 32) = v29;
  *(a2 + 40) = v31;
  *(a2 + 48) = v26;
  *(a2 + 56) = v35;
  sub_1A3285BB4(v37, v38, v36);

  sub_1A3285BB4(v29, v31, v26);

  sub_1A328A9B0(v29, v31, v26);

  sub_1A328A9B0(v37, v38, v44);
}

uint64_t sub_1A32FF748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5EA8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v39 = *(a1 + 8);
  v15 = *a1;
  v38 = v15;
  if (v39 == 1)
  {
    v37 = v15;
    sub_1A34C9010();
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v26 = v4;
    v16 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A3288FDC(&v38, &qword_1EB0C6E58);
    (*(v5 + 8))(v7, v26);
  }

  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A3300F54(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34CCA40();
  sub_1A34CCA30();
  swift_getKeyPath();
  sub_1A34CCA50();

  v17 = *(v9 + 8);
  v17(v11, v8);
  v27 = *&v29[5];
  v28 = *&v29[7];
  *v29 = v30[0];
  *(&v29[1] + 1) = *(v30 + 9);
  sub_1A34CC980();
  result = (v17)(v14, v8);
  v19 = v32;
  if (v32)
  {
    v20 = v36;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v31;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  *a2 = v24;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = v20;
  return result;
}

uint64_t sub_1A32FFABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_1A34CB280();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E10);
  return sub_1A32FD9C0(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_1A32FFB2C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v90 = a4;
  v91 = a3;
  v92 = a5;
  v89 = sub_1A34CC990();
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1A34CA5D0();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v80 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1A34CCB40();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v78 = sub_1A34CCC60();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A34CC8E0();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F38);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F40);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F48);
  MEMORY[0x1EEE9AC00](v93);
  v72 = &v64 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F50);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v64 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F58);
  MEMORY[0x1EEE9AC00](v71);
  v79 = &v64 - v23;
  v24 = sub_1A34CB0B0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v26;
  v68 = v25;
  v67 = v28;
  if ((a2 & 1) == 0)
  {
    v65 = v10;
    v66 = v13;
    v29 = v26;
    sub_1A34C9010();
    sub_1A34CD650();
    v30 = a1;
    v31 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(v30, 0);
    v32 = v29;
    v13 = v66;
    v10 = v65;
    (*(v25 + 8))(v28, v32);
    if (v95 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    sub_1A34CB750();
  }

LABEL_6:
  sub_1A34CB740();
  sub_1A34CBB20();
  sub_1A34CBB70();
  v33 = sub_1A34CBBC0();

  KeyPath = swift_getKeyPath();
  v35 = &v17[*(v70 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_1A34CCC80();
  sub_1A34CADA0();
  sub_1A329D98C(v17, v20, &qword_1EB0C6F38);
  v36 = &v20[*(v18 + 36)];
  v37 = v100;
  *(v36 + 4) = v99;
  *(v36 + 5) = v37;
  *(v36 + 6) = v101;
  v38 = v96;
  *v36 = v95;
  *(v36 + 1) = v38;
  v39 = v98;
  *(v36 + 2) = v97;
  *(v36 + 3) = v39;
  v40 = sub_1A34CBA90();
  v41 = v72;
  sub_1A329D98C(v20, v72, &qword_1EB0C6F40);
  v42 = v41 + *(v93 + 36);
  *v42 = v40;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 1;
  sub_1A34CCB10();
  v43 = v84;
  v44 = v80;
  v45 = v86;
  (*(v84 + 104))(v80, *MEMORY[0x1E697DBA8], v86);
  sub_1A34CCB20();
  (*(v43 + 8))(v44, v45);
  v46 = *(v81 + 8);
  v47 = v83;
  v46(v10, v83);
  v48 = v76;
  sub_1A34CCB70();
  v46(v13, v47);
  v49 = v82;
  sub_1A34CC8D0();
  (*(v77 + 8))(v48, v78);
  v50 = *MEMORY[0x1E697F468];
  v51 = sub_1A34CB200();
  v52 = *(*(v51 - 8) + 104);
  v53 = v88;
  v52(v88, v50, v51);
  sub_1A3300D54();
  sub_1A3300F54(&qword_1EB0C6F78, MEMORY[0x1E6981998]);
  v54 = v73;
  sub_1A34CBF20();
  sub_1A3300F9C(v53, MEMORY[0x1E6981998]);
  (*(v85 + 8))(v49, v87);
  sub_1A3288FDC(v41, &qword_1EB0C6F48);
  v55 = v79;
  v56 = &v79[*(v71 + 36)];
  v52(v56, v50, v51);
  v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6308) + 36)] = 0;
  (*(v74 + 32))(v55, v54, v75);
  v57 = sub_1A34CCCF0();
  v58 = v91;
  sub_1A34C9010();
  if ((v90 & 1) == 0)
  {
    sub_1A34CD650();
    v59 = sub_1A34CBA30();
    sub_1A34CA210();

    v60 = v67;
    sub_1A34CB0A0();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v68 + 8))(v60, v69);
    v58 = v94;
  }

  v61 = v92;
  sub_1A3202398(v55, v92);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F80);
  v63 = (v61 + *(result + 36));
  *v63 = v57;
  v63[1] = v58;
  return result;
}

unint64_t sub_1A33006C8()
{
  result = qword_1EB0C6E60;
  if (!qword_1EB0C6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6E60);
  }

  return result;
}

unint64_t sub_1A3300724()
{
  result = qword_1EB0C6E68;
  if (!qword_1EB0C6E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
    sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
    sub_1A33006C8();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C0668, &unk_1EB0C4C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6E68);
  }

  return result;
}

unint64_t sub_1A3300868()
{
  result = qword_1EB0C6E90;
  if (!qword_1EB0C6E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6E98);
    sub_1A34CAD20();
    sub_1A3284D0C(&qword_1EB0C6EA0, &qword_1EB0C6E98);
    sub_1A3300F54(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A3300F54(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6E90);
  }

  return result;
}

unint64_t sub_1A33009EC()
{
  result = qword_1EB0C6EB0;
  if (!qword_1EB0C6EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6EA8);
    sub_1A3300A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6EB0);
  }

  return result;
}

unint64_t sub_1A3300A70()
{
  result = qword_1EB0C6EB8;
  if (!qword_1EB0C6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6EB8);
  }

  return result;
}

unint64_t sub_1A3300AD4()
{
  result = qword_1EB0C6ED8;
  if (!qword_1EB0C6ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6ED0);
    sub_1A3284D0C(&qword_1EB0C6EE0, &qword_1EB0C6EE8);
    sub_1A3284D0C(&qword_1EB0C6EF0, &qword_1EB0C6EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6ED8);
  }

  return result;
}

uint64_t sub_1A3300BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3300C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A3300C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3300CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A3300D54()
{
  result = qword_1EB0C6F60;
  if (!qword_1EB0C6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F48);
    sub_1A3300DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6F60);
  }

  return result;
}

unint64_t sub_1A3300DE0()
{
  result = qword_1EB0C6F68;
  if (!qword_1EB0C6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F40);
    sub_1A3300E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6F68);
  }

  return result;
}

unint64_t sub_1A3300E6C()
{
  result = qword_1EB0C6F70;
  if (!qword_1EB0C6F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F38);
    sub_1A3300F54(&qword_1ED8534B0, MEMORY[0x1E697C8D0]);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6F70);
  }

  return result;
}

uint64_t sub_1A3300F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3300F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3301000()
{
  result = qword_1EB0C6F88;
  if (!qword_1EB0C6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F80);
    sub_1A33010B8();
    sub_1A3284D0C(&qword_1EB0C6F98, &qword_1EB0C6FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6F88);
  }

  return result;
}

unint64_t sub_1A33010B8()
{
  result = qword_1EB0C6F90;
  if (!qword_1EB0C6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6F48);
    sub_1A34CC990();
    sub_1A3300D54();
    sub_1A3300F54(&qword_1EB0C6F78, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C2ED0, &qword_1EB0C6308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6F90);
  }

  return result;
}

uint64_t CenteredViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A34CB110();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FA8);
  return sub_1A330125C(a1, a2 + *(v4 + 44));
}

uint64_t sub_1A330125C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7048);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  *v12 = sub_1A34CB280();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7058) + 44)];
  v14 = *(v4 + 16);
  v14(v6, v21, v3);
  *v13 = 0;
  v13[8] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7060);
  v14(&v13[*(v15 + 48)], v6, v3);
  v16 = &v13[*(v15 + 64)];
  *v16 = 0;
  v16[8] = 1;
  (*(v4 + 8))(v6, v3);
  sub_1A33026B0(v12, v9);
  *a2 = 0;
  *(a2 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7068);
  sub_1A33026B0(v9, a2 + *(v17 + 48));
  v18 = a2 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_1A3288FDC(v12, &qword_1EB0C7050);
  return sub_1A3288FDC(v9, &qword_1EB0C7050);
}

uint64_t sub_1A33014CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A34CB110();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FA8);
  return sub_1A330125C(a1, a2 + *(v4 + 44));
}

uint64_t MonogramPosterAvatarView.monogramRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1A31FA9C4(v10, v9);
}

__n128 MonogramPosterAvatarView.monogramRecipe.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_1A3301604(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 MonogramPosterAvatarView.init(monogramRecipe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t MonogramPosterAvatarView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v3;
  v13 = *(v1 + 96);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  *a1 = sub_1A33019B8;
  a1[1] = v6;
  return sub_1A33019C0(v12, v11);
}

uint64_t sub_1A3301718@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7038);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v16 - v3;
  v5 = sub_1A34CC4E0();
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v22 = *(a1 + 56);
  v9 = *(a1 + 80);
  v21 = *(a1 + 72);
  v20 = *(a1 + 88);
  v10 = *(a1 + 96);
  v18 = v6;
  v19 = v10;
  v11 = v8 & 7;
  v12 = v9 & 7;
  v13 = *(a1 + 24);
  v16 = *(a1 + 40);
  v17 = v13;
  KeyPath = swift_getKeyPath();
  v37 = 0;
  sub_1A33019C0(a1, v38);
  sub_1A34CA7C0();
  sub_1A34CA7C0();
  sub_1A34CCC80();
  sub_1A34CA760();
  v25 = KeyPath;
  LOWORD(v26) = 0;
  *(&v26 + 1) = v5;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = v18;
  *&v28 = v7;
  *(&v28 + 1) = v11;
  v30 = v16;
  v29 = v17;
  v31 = v22;
  *&v32 = v21;
  *(&v32 + 1) = v12;
  *&v33 = v20;
  *(&v33 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7040);
  sub_1A3302530(&qword_1EB0C0FA0, &qword_1EB0C7040, &unk_1A34E3558, sub_1A31EF6C0);
  sub_1A34CC100();
  v38[8] = v33;
  v38[9] = v34;
  v38[10] = v35;
  v38[11] = v36;
  v38[4] = v29;
  v38[5] = v30;
  v38[6] = v31;
  v38[7] = v32;
  v38[0] = v25;
  v38[1] = v26;
  v38[2] = v27;
  v38[3] = v28;
  sub_1A3288FDC(v38, &qword_1EB0C7040);
  sub_1A33025B4();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v4, &qword_1EB0C7038);
}

uint64_t sub_1A33019F8@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X8>)@<X8>)
{
  v3 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v3;
  v13 = *(v1 + 96);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  *a1 = sub_1A3302720;
  a1[1] = v6;
  return sub_1A33019C0(v12, v11);
}

uint64_t SilhouettePosterAvatarView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FB0);
  sub_1A3284D0C(&qword_1EB0C6FB8, &qword_1EB0C6FB0);
  return sub_1A34CC0F0();
}

uint64_t sub_1A3301B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_1A34CCE50();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34CCB40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1A34CCC60();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FE0);
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FE8);
  MEMORY[0x1EEE9AC00](v42);
  v20 = &v35 - v19;
  v21 = sub_1A34CC4E0();
  sub_1A34CCB30();
  sub_1A34CCB00();
  v22 = *(v6 + 8);
  v22(v8, v5);
  sub_1A34CCB70();
  v22(v11, v5);
  *&v45 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FF0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A34DAA10;
  sub_1A31FB248();
  *(v23 + 32) = sub_1A34CCA20();
  sub_1A34CCE40();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FF8);
  v25 = sub_1A31F3B10();
  sub_1A34CBFD0();
  (*(v40 + 8))(v4, v41);
  (*(v36 + 8))(v14, v37);

  *&v45 = v24;
  *(&v45 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  sub_1A34CC1F0();
  (*(v39 + 8))(v18, v26);
  v27 = sub_1A34CCC80();
  v29 = v28;
  v30 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7000) + 36)];
  sub_1A33020D8();
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7008) + 36)];
  *v31 = v27;
  v31[1] = v29;
  sub_1A34CA7C0();
  sub_1A34CA7C0();
  sub_1A34CCC80();
  sub_1A34CA760();
  v32 = &v20[*(v42 + 36)];
  v33 = v46;
  *v32 = v45;
  *(v32 + 1) = v33;
  *(v32 + 2) = v47;
  sub_1A3302530(&qword_1EB0C7010, &qword_1EB0C6FE8, &unk_1A34E34F0, sub_1A33023B0);
  sub_1A34CC100();
  return sub_1A3288FDC(v20, &qword_1EB0C6FE8);
}

uint64_t sub_1A33020D8()
{
  v0 = sub_1A34CC4E0();
  KeyPath = swift_getKeyPath();
  LOWORD(v3) = 0;
  *(&v3 + 1) = v0;
  LOBYTE(v4) = 0;
  *(&v4 + 1) = 1;
  *&v5 = 0;
  *(&v5 + 1) = 0xC000000000000000;
  sub_1A31EF6C0();
  sub_1A34CC1F0();
  v6[7] = v5;
  v6[8] = 0uLL;
  v6[2] = v4;
  memset(&v6[3], 0, 64);
  v6[0] = KeyPath;
  v6[1] = v3;
  return sub_1A32F6B80(v6);
}

uint64_t sub_1A33021D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6FB0);
  sub_1A3284D0C(&qword_1EB0C6FB8, &qword_1EB0C6FB0);
  return sub_1A34CC0F0();
}

unint64_t sub_1A33022A4()
{
  result = qword_1EB0C2380;
  if (!qword_1EB0C2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2380);
  }

  return result;
}

unint64_t sub_1A33022F8()
{
  result = qword_1EB0C6FD0;
  if (!qword_1EB0C6FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6FD8);
    sub_1A3284D0C(&qword_1EB0C6FB8, &qword_1EB0C6FB0);
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C6FD0);
  }

  return result;
}

unint64_t sub_1A33023B0()
{
  result = qword_1EB0C7018;
  if (!qword_1EB0C7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7000);
    sub_1A3302468();
    sub_1A3284D0C(&qword_1EB0C7030, &qword_1EB0C7008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7018);
  }

  return result;
}

unint64_t sub_1A3302468()
{
  result = qword_1EB0C7020;
  if (!qword_1EB0C7020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6FF8);
    sub_1A31F3B10();
    swift_getOpaqueTypeConformance2();
    sub_1A32FD328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7020);
  }

  return result;
}

uint64_t sub_1A3302530(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33025B4()
{
  result = qword_1EB0C0DD8;
  if (!qword_1EB0C0DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7040);
    sub_1A3302530(&qword_1EB0C0FA0, &qword_1EB0C7040, &unk_1A34E3558, sub_1A31EF6C0);
    swift_getOpaqueTypeConformance2();
    sub_1A33022A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DD8);
  }

  return result;
}

uint64_t sub_1A33026B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3302724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  result = sub_1A34C8AC0();
  qword_1EB0C7070 = result;
  return result;
}

uint64_t static ContactEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB0C4898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB0C7070;
  return sub_1A34C9010();
}

uint64_t static ContactEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB0C4898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB0C7070 = v1;
}

uint64_t (*static ContactEntity.defaultQuery.modify())()
{
  if (qword_1EB0C4898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3302950@<X0>(void *a1@<X8>)
{
  if (qword_1EB0C4898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB0C7070;
  return sub_1A34C9010();
}

uint64_t sub_1A33029D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB0C4898;
  sub_1A34C9010();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB0C7070 = v1;
}

uint64_t static ContactEntity.updateIntent.getter()
{
  if (qword_1EB0C48A0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t (*static ContactEntity.updateIntent.modify())()
{
  if (qword_1EB0C48A0 != -1)
  {
    swift_once();
  }

  return CGPointMake;
}

uint64_t sub_1A3302B20(uint64_t a1, void *a2)
{
  v4 = sub_1A34C8C80();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v23 + 16);
  v9 = v8(v7, a1, v4, v6);
  v10 = a2[1];
  v17[1] = *a2;
  v17[2] = v10;
  v11 = a2[2];
  v12 = a2[4];
  v19 = a2[3];
  v20 = v12;
  v13 = a2[6];
  v14 = a2[9];
  v21 = a2[8];
  v22 = v13;
  v17[3] = v11;
  v18 = v14;
  v15 = MEMORY[0x1EEE9AC00](v9);
  v8(v7, v7, v4, v15);

  v18 = v18;

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8D10();
  (*(v23 + 8))(v7, v4);
}

uint64_t ContactEntity.person.setter(uint64_t a1)
{
  v2 = sub_1A34C8C80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8D10();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ContactEntity.person.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t sub_1A3302EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  v3 = v2;

  sub_1A34C9010();

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8D10();
}

uint64_t (*ContactEntity.phoneNumbers.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A33030BC;
}

uint64_t sub_1A3303118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  v3 = v2;

  sub_1A34C9010();

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8D10();
}

uint64_t (*ContactEntity.emailAddresses.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t sub_1A3303330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  v3 = v2;

  sub_1A34C9010();

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8D10();
}

uint64_t (*ContactEntity.postalAddresses.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t sub_1A330353C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  sub_1A3303784(a1, v14 - v8);
  v10 = *a2;
  v14[0] = a2[1];
  v14[1] = a2[3];
  v14[2] = v10;
  v14[3] = a2[6];
  v11 = a2[9];
  sub_1A3303784(v9, v6);

  v12 = v11;

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8D10();
  sub_1A33037F4(v9);
}