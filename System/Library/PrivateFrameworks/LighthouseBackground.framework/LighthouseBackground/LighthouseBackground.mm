uint64_t sub_1DF15BBD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1DF164B68();
}

uint64_t sub_1DF15BC14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DF16235C(v4);
}

__n128 sub_1DF15BC4C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1DF15BC6C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for KVDatastore.MetadataType() + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1DF15BCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15BD84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DF15BDBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15BE68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15BF20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15BFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15C08C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TaskDefinition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
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

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1DF15C1D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for TaskDefinition(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1DF15C308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15C3B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15C4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15C534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DF15C63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DF15C758(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DF15C894(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DF15C9D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DF15CB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DF15CC70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15CCA8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF15CD08()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x746C75736572;
  }

  *v0;
  return result;
}

_BYTE *sub_1DF15CD48@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 2;
  return result;
}

uint64_t sub_1DF15CD5C()
{
  if (*v0)
  {
    result = 0x746C75736572;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1DF15CD94()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726F727265;
  }
}

double sub_1DF15CDC4@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  sub_1DF18A0A4(0, 0xF000000000000000);
  result = 0.0;
  *(a2 + 8) = xmmword_1DF2310C0;
  return result;
}

uint64_t sub_1DF15CE04()
{
  v1 = 0x70756F7267;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x694C6F54656D6974;
  }

  if (*v0)
  {
    v1 = 7955819;
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

uint64_t sub_1DF15CE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1CA154(a1, a2);
  *a3 = result;
  return result;
}

_BYTE *sub_1DF15CE9C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1DF15CEC4()
{
  if (*v0)
  {
    result = 1868983913;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1DF15CF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A0, &unk_1DF238290);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15CF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A0, &unk_1DF238290);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15D00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskDefinition(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15D078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskDefinition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15D110(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 5;
    if (v4 >= 5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DF15D1D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15D294(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15D340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15D3FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15D448()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15D524()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF15D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF15D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF15D620(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 6)
  {
    return sub_1DF18A0A4(a2, a3);
  }

  return result;
}

uint64_t sub_1DF15D63C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 6)
  {
    return sub_1DF1B7FDC(a2, a3);
  }

  return result;
}

uint64_t sub_1DF15D894()
{
  v1 = v0[11];

  v2 = v0[18];

  v3 = v0[22];

  v4 = v0[25];

  v5 = v0[26];

  v6 = v0[28];

  v7 = v0[30];

  v8 = v0[32];

  v9 = v0[33];

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t _s20LighthouseBackground20RepeatingTaskRequestVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s20LighthouseBackground20RepeatingTaskRequestVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DF15D95C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF15DA18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15DAC8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF15DB00()
{
  v1 = sub_1DF22A9B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15DBC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF15DC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22A840();
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

uint64_t sub_1DF15DCC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DF22A840();
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

uint64_t sub_1DF15DD78()
{
  v1 = sub_1DF22A9B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22A800();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_1DF15DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DF22A800();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1DF15DF48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15DFCC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1DF22A800();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1DF15E150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1DF22A800();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DF15E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15E39C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15E44C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
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
      v13 = sub_1DF22A800();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DF15E57C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
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
      v13 = sub_1DF22A800();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t *sub_1DF15E704@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1DF15E72C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {

    v3 = v0[9];
  }

  if (v0[10])
  {

    v4 = v0[12];

    v5 = v0[15];

    v6 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 147, 7);
}

uint64_t sub_1DF15E7A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _MLHostExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_1DF15E7EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15E824()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF15E85C()
{
  v1 = (type metadata accessor for TaskErrorEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_1DF22A800();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF15EA48()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x70756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_1DF15EA78()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DF15EAC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

LighthouseBackground::TargetingOperator_optional __swiftcall TargetingOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TargetingOperator.rawValue.getter()
{
  v1 = 0x736564756C637865;
  if (*v0 != 1)
  {
    v1 = 0x7865676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736564756C636E69;
  }
}

uint64_t sub_1DF15EB7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x736564756C637865;
  v5 = 0xE800000000000000;
  v6 = 0x7865676572;
  if (v2 == 1)
  {
    v6 = 0x736564756C637865;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x736564756C636E69;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v4 = 0x7865676572;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x736564756C636E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF15EC58()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF15ECEC()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF15ED6C()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF15EE08(uint64_t *a1@<X8>)
{
  v2 = 0x736564756C636E69;
  v3 = 0x736564756C637865;
  v4 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v3 = 0x7865676572;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v2 = v3;
    v5 = v4;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

LighthouseBackground::TargetingKey_optional __swiftcall TargetingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TargetingKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x726556646C697562;
    v7 = 0x6D754E6C65646F6DLL;
    if (v1 != 2)
    {
      v7 = 0x4E746375646F7270;
    }

    if (*v0)
    {
      v6 = 0x6C43656369766564;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6F436E6F69676572;
    v3 = 0x6E496E6F69676572;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x54746375646F7270;
    if (v1 != 4)
    {
      v4 = 0x56746375646F7270;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DF15F0D0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF228790();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F120()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF228790();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F170@<X0>(uint64_t *a1@<X8>)
{
  result = TargetingKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF15F268()
{
  v1 = *v0;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F2B0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F2F4()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69746567726174;
  }
}

uint64_t sub_1DF15F358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF161EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF15F38C(uint64_t a1)
{
  v2 = sub_1DF15F6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF15F3C8(uint64_t a1)
{
  v2 = sub_1DF15F6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TargetingRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C788, &unk_1DF22C4F0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  v9 = *v1;
  v15 = *(v1 + 1);
  v14 = v1[16];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF15F6B0();
  sub_1DF22B740();
  v21 = v9;
  v20 = 0;
  sub_1DF15F704();
  sub_1DF22B5C0();
  if (!v2)
  {
    v11 = v14;
    v16 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C068);
    sub_1DF22B5C0();
    v18 = v11;
    v17 = 2;
    sub_1DF15F7A0();
    sub_1DF22B5C0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DF15F6B0()
{
  result = qword_1ECE0C790;
  if (!qword_1ECE0C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C790);
  }

  return result;
}

unint64_t sub_1DF15F704()
{
  result = qword_1ECE0C798;
  if (!qword_1ECE0C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C798);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF15F7A0()
{
  result = qword_1ECE0C7B0;
  if (!qword_1ECE0C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7B0);
  }

  return result;
}

uint64_t TargetingRule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7B8, &unk_1DF22C500);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF15F6B0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  sub_1DF15FA60();
  sub_1DF22B4E0();
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  v18 = 1;
  sub_1DF15FAB4(&qword_1ECE0C058);
  sub_1DF22B4E0();
  v12 = v15[1];
  v16 = 2;
  sub_1DF15FB20();
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v13 = v17;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF15FA60()
{
  result = qword_1ECE0C7C0;
  if (!qword_1ECE0C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7C0);
  }

  return result;
}

uint64_t sub_1DF15FAB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF15FB20()
{
  result = qword_1ECE0C7D0;
  if (!qword_1ECE0C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7D0);
  }

  return result;
}

Swift::Bool __swiftcall satisfiesTargetingRules(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v62 - v12;
  v13 = *(a1._rawValue + 2);
  if (!v13)
  {
LABEL_70:
    LOBYTE(v20) = 1;
    return v20;
  }

  v14 = 0;
  v15 = 0;
  v63 = *(a1._rawValue + 2);
  v64 = a1._rawValue + 32;
  v72 = v7 + 32;
  v68 = v7 + 16;
  v69 = (v7 + 8);
  v70 = v5;
  while (1)
  {
    v65 = v14;
    v16 = &v64[24 * v14];
    v17 = *(v16 + 1);
    v18 = v16[16];
    v19 = *v16;

    v20 = MobileGestalt_get_current_device();
    v21 = v20;
    if (v19 <= 3)
    {
      break;
    }

    if (v19 <= 5)
    {
      if (v19 == 4)
      {
        if (!v20)
        {
          goto LABEL_92;
        }

        v22 = MobileGestalt_copy_productType_obj();

        if (!v22)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_90;
        }

        v22 = MobileGestalt_copy_productVersion_obj();

        if (!v22)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_43;
    }

    if (v19 == 6)
    {
      if (!v20)
      {
        goto LABEL_88;
      }

      v22 = MobileGestalt_copy_regionCode_obj();

      if (!v22)
      {
        goto LABEL_87;
      }

      goto LABEL_43;
    }

    if (v19 == 7)
    {
      if (!v20)
      {
        goto LABEL_86;
      }

      v22 = MobileGestalt_copy_regionInfo_obj();

      if (!v22)
      {
        goto LABEL_85;
      }

      goto LABEL_43;
    }

    if (!v20)
    {
      goto LABEL_84;
    }

    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (exclaveCapability)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

LABEL_44:
    v71 = v25;
    v77[0] = v25;
    v77[1] = v26;
    v74 = v26;
    MEMORY[0x1EEE9AC00](v24);
    *(&v62 - 2) = v77;

    v28 = sub_1DF16054C(sub_1DF161770, (&v62 - 4), v17);

    if (v18)
    {
      if (v18 != 1)
      {
        v29 = *(v17 + 16);
        v73 = v17;
        if (v29)
        {
          v75 = v11;
          v77[0] = MEMORY[0x1E69E7CC0];

          sub_1DF160CF0(0, v29, 0);
          v30 = 0;
          v31 = v77[0];
          v32 = v17 + 40;
          while (1)
          {
            if (v30 >= *(v17 + 16))
            {
              __break(1u);
              goto LABEL_80;
            }

            v33 = *(v32 - 8);
            v34 = *v32;

            sub_1DF22A880();
            if (v15)
            {
              break;
            }

            v77[0] = v31;
            v36 = *(v31 + 16);
            v35 = *(v31 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_1DF160CF0(v35 > 1, v36 + 1, 1);
              v31 = v77[0];
            }

            ++v30;
            *(v31 + 16) = v36 + 1;
            (*(v7 + 32))(v31 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36, v76, v6);
            v32 += 16;
            v17 = v73;
            if (v29 == v30)
            {

              v11 = v75;
              v13 = v63;
              goto LABEL_57;
            }
          }

          v32 = v73;

LABEL_74:
          if (qword_1ED8E7530 == -1)
          {
LABEL_75:
            v48 = sub_1DF22A8C0();
            __swift_project_value_buffer(v48, qword_1ED8E92C0);

            v49 = v15;
            v50 = sub_1DF22A8A0();
            v51 = sub_1DF22B110();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v77[0] = v54;
              *v52 = 136315394;
              v55 = MEMORY[0x1E12CF970](v32, MEMORY[0x1E69E6158]);
              v57 = v56;

              v58 = sub_1DF160728(v55, v57, v77);

              *(v52 + 4) = v58;
              *(v52 + 12) = 2112;
              v59 = v15;
              v60 = _swift_stdlib_bridgeErrorToNSError();
              *(v52 + 14) = v60;
              *v53 = v60;
              _os_log_impl(&dword_1DF15A000, v50, v51, "Encountered error when handling regexes from values %s: %@", v52, 0x16u);
              sub_1DF16184C(v53, &qword_1ECE0C7E8, &qword_1DF230550);
              MEMORY[0x1E12D0B40](v53, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v54);
              MEMORY[0x1E12D0B40](v54, -1, -1);
              MEMORY[0x1E12D0B40](v52, -1, -1);
            }

            else
            {
            }

LABEL_78:
            LOBYTE(v20) = 0;
            return v20;
          }
        }

        else
        {
          v31 = MEMORY[0x1E69E7CC0];
LABEL_57:
          v37 = *(v31 + 16);
          v38 = v70;
          if (!v37)
          {

            v39 = MEMORY[0x1E69E7CC0];
LABEL_66:
            v45 = *(v39 + 16);
            v46 = (v39 + 32);
            while (v45)
            {
              v47 = *v46++;
              --v45;
              if (v47)
              {

                goto LABEL_4;
              }
            }

            goto LABEL_78;
          }

          v77[0] = MEMORY[0x1E69E7CC0];
          sub_1DF160CD0(0, v37, 0);
          v32 = 0;
          v39 = v77[0];
          v40 = *(v7 + 80);
          v66 = v7;
          v67 = v31 + ((v40 + 32) & ~v40);
          while (v32 < *(v31 + 16))
          {
            (*(v7 + 16))(v11, v67 + *(v7 + 72) * v32, v6);
            sub_1DF22A860();
            if (v15)
            {
              (*v69)(v11, v6);

              v32 = v73;
              goto LABEL_74;
            }

            v75 = 0;
            (*v69)(v11);
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
            v42 = (*(*(v41 - 8) + 48))(v38, 1, v41);
            sub_1DF16184C(v38, &qword_1ECE0C7D8, &qword_1DF230700);
            v77[0] = v39;
            v44 = *(v39 + 16);
            v43 = *(v39 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1DF160CD0((v43 > 1), v44 + 1, 1);
              v39 = v77[0];
            }

            ++v32;
            *(v39 + 16) = v44 + 1;
            *(v39 + v44 + 32) = v42 != 1;
            v38 = v70;
            v7 = v66;
            v15 = v75;
            if (v37 == v32)
            {

              v13 = v63;
              goto LABEL_66;
            }
          }

LABEL_80:
          __break(1u);
        }

        swift_once();
        goto LABEL_75;
      }

      if (v28)
      {
        goto LABEL_78;
      }
    }

    else
    {

      if ((v28 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_4:
    v14 = v65 + 1;
    if (v65 + 1 == v13)
    {
      goto LABEL_70;
    }
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      if (!v20)
      {
        goto LABEL_96;
      }

      v22 = MobileGestalt_copy_modelNumber_obj();

      if (!v22)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_94;
      }

      v22 = MobileGestalt_copy_productName_obj();

      if (!v22)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_43;
  }

  if (v19)
  {
    if (!v20)
    {
      goto LABEL_98;
    }

    v22 = MobileGestalt_copy_deviceClass_obj();

    if (!v22)
    {
      goto LABEL_97;
    }

    goto LABEL_43;
  }

  if (v20)
  {
    v22 = MobileGestalt_copy_buildVersion_obj();

    if (!v22)
    {
      goto LABEL_83;
    }

LABEL_43:
    v25 = sub_1DF22ACC0();
    v26 = v27;

    goto LABEL_44;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return v20;
}

uint64_t sub_1DF16054C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DF1605F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 56);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      v15[0] = *(v8 - 3);
      v15[1] = v12;
      v15[2] = v10;
      v15[3] = v11;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 4;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_1DF160728(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF1607F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DF1620A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1DF1607F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DF160900(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DF22B350();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DF160900(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF16094C(a1, a2);
  sub_1DF160A7C(&unk_1F5A464C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DF16094C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF160B68(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DF22B350();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DF22AD70();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF160B68(v10, 0);
        result = sub_1DF22B2F0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DF160A7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DF160BDC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DF160B68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E8, &qword_1DF22CA40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1DF160BDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E8, &qword_1DF22CA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1DF160CD0(char *a1, int64_t a2, char a3)
{
  result = sub_1DF160E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF160CF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF160F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160D10(char *a1, int64_t a2, char a3)
{
  result = sub_1DF1610FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF160D30(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF1612FC(a1, a2, a3, *v3, &qword_1ECE0C8C0, &unk_1DF22D780, type metadata accessor for LedgerState);
  *v3 = result;
  return result;
}

char *sub_1DF160D74(char *a1, int64_t a2, char a3)
{
  result = sub_1DF161208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF160D94(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF1612FC(a1, a2, a3, *v3, &qword_1ECE0C8C8, &qword_1DF22CA20, type metadata accessor for TaskStatusEvent);
  *v3 = result;
  return result;
}

void *sub_1DF160DD8(void *a1, int64_t a2, char a3)
{
  result = sub_1DF1614D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160DF8(char *a1, int64_t a2, char a3)
{
  result = sub_1DF16160C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160E18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E0, &qword_1DF22CA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1DF160F0C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C8F0, &qword_1DF22CA48);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DF1610FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF161208(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D8, &qword_1DF22CA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1DF1612FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DF1614D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8B0, &unk_1DF22D680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8B8, &unk_1DF22CA10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF16160C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C848, &unk_1DF22CA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DF161718(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t sub_1DF161770(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DF16184C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DF1618B0()
{
  result = qword_1ECE0C7F8;
  if (!qword_1ECE0C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7F8);
  }

  return result;
}

unint64_t sub_1DF161908()
{
  result = qword_1ECE0C800;
  if (!qword_1ECE0C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF161AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DF161B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF161B88(uint64_t a1, int a2)
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

uint64_t sub_1DF161BA8(uint64_t result, int a2, int a3)
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

void sub_1DF161C38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for KVDatastore.MetadataType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastore.MetadataType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF161DD8()
{
  result = qword_1ECE0C820;
  if (!qword_1ECE0C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C820);
  }

  return result;
}

unint64_t sub_1DF161E30()
{
  result = qword_1ECE0C828;
  if (!qword_1ECE0C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C828);
  }

  return result;
}

unint64_t sub_1DF161E88()
{
  result = qword_1ECE0C830;
  if (!qword_1ECE0C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C830);
  }

  return result;
}

uint64_t sub_1DF161EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746567726174 && a2 == 0xEC00000079654B67;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23D730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

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

unint64_t sub_1DF161FFC()
{
  result = qword_1ECE0C838;
  if (!qword_1ECE0C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C838);
  }

  return result;
}

unint64_t sub_1DF162050()
{
  result = qword_1ECE0C840;
  if (!qword_1ECE0C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C840);
  }

  return result;
}

uint64_t sub_1DF1620A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t VertexEdges.edges.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*VertexEdges.edges.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t VertexEdges.init(vertex:edges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for VertexEdges();
  *(a4 + *(result + 52)) = a2;
  return result;
}

uint64_t Graph.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DF162334()
{
  sub_1DF164B68();
}

uint64_t sub_1DF16235C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1DF1623F8()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  v4 = *(v1 + 80);
  v6 = *(v2 + 104);
  v7 = *(v2 + 88);
  type metadata accessor for VertexEdges();
  swift_getAssociatedConformanceWitness();
  sub_1DF22ABD0();

  swift_getWitnessTable();
  return sub_1DF22AF60();
}

uint64_t sub_1DF162514()
{
  v1 = *(*v0 + 96);
  v2 = *(v1 - 8);
  v28 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v27 - v3;
  v39 = *(v5 + 88);
  v40 = v1;
  v41 = *(v6 + 104);
  v35 = type metadata accessor for VertexEdges();
  v7 = *(v35 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v33 = &v27 - v9;
  v38 = sub_1DF22AED0();
  swift_beginAccess();
  v10 = v0[4];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v7;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v36 = v10;

  v17 = 0;
  v29 = v15;
  for (i = v11; ; v11 = i)
  {
    if (!v14)
    {
      do
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        if (v18 >= v15)
        {
          goto LABEL_20;
        }

        v14 = *(v11 + 8 * v18);
        ++v17;
      }

      while (!v14);
      v17 = v18;
    }

    v19 = v35;
    v21 = v33;
    v20 = v34;
    (*(v34 + 16))(v33, *(v36 + 56) + *(v34 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v35);
    v22 = *&v21[*(v19 + 52)];
    v23 = *(v20 + 8);

    v23(v21, v19);
    if (sub_1DF22AF10())
    {
      break;
    }

LABEL_4:
    v14 &= v14 - 1;

    v15 = v29;
  }

  v24 = 0;
  while (1)
  {
    v25 = sub_1DF22AEF0();
    sub_1DF22AEB0();
    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(v2 + 16))(v4, v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v24, v1);
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_19;
    }

LABEL_14:
    sub_1DF22AF50();
    sub_1DF22AF20();
    ++v24;
    if (v26 == sub_1DF22AF10())
    {
      goto LABEL_4;
    }
  }

  result = sub_1DF22B330();
  if (v28 != 8)
  {
    goto LABEL_22;
  }

  v37 = result;
  (*(v2 + 16))(v4, &v37, v1);
  swift_unknownObjectRelease();
  v26 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  return v38;
}

uint64_t Graph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Graph.init(name:)(a1, a2);
  return v4;
}

void *Graph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v14 = *(*v2 + 104);
  v15 = *(*v2 + 88);
  v6 = type metadata accessor for VertexEdges();
  swift_getTupleTypeMetadata2();
  v7 = sub_1DF22AED0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1DF16487C(v7, v5, v6, AssociatedConformanceWitness);

  v2[4] = v9;
  v2[2] = a1;
  v2[3] = a2;
  v10 = sub_1DF22AED0();
  v11 = sub_1DF16487C(v10, v5, v6, AssociatedConformanceWitness);

  swift_beginAccess();
  v12 = v2[4];
  v2[4] = v11;

  return v2;
}

uint64_t sub_1DF162AA0(uint64_t a1)
{
  v3 = *v1;
  v22[1] = v1 + 4;
  v4 = v3[11];
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v8 = v22 - v7;
  v9 = v3[14];
  v11 = v10[6];
  *&v12 = vdupq_laneq_s64(v11, 1).u64[0];
  v13.i64[0] = v4;
  *(&v12 + 1) = v9;
  v23 = v11;
  *v24 = vzip1q_s64(v13, v11);
  *&v24[16] = v12;
  v14 = type metadata accessor for VertexEdges();
  v15 = (*(*(sub_1DF22B1A0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (MEMORY[0x1EEE9AC00])();
  v18 = v22 - v17;
  v22[0] = v3[10];
  v19 = (*(*(v22[0] - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  (*(v23.i64[1] + 64))(v4, v23.i64[1]);
  (*(v5 + 16))(v8, a1, v4);
  v20 = default argument 1 of VertexEdges.init(vertex:edges:)(v4, v23.i64[0]);
  (*(v5 + 32))(v18, v8, v4);
  *v24 = v4;
  *&v24[8] = v23;
  *&v24[24] = v9;
  *&v18[*(type metadata accessor for VertexEdges() + 52)] = v20;
  (*(*(v14 - 8) + 56))(v18, 0, 1, v14);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1DF22ABE0();
  sub_1DF22AC10();
  return swift_endAccess();
}

uint64_t sub_1DF162DB0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v4 = *(*(*(*v2 + 96) - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v44 - v6;
  v8 = *(v7 + 80);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v44 - v14;
  v16 = *(v15 + 88);
  v56 = *(v17 + 104);
  *&v18 = v16;
  v49 = v19;
  *(&v18 + 1) = v19;
  v58[1] = v56;
  v58[0] = v18;
  v20 = type metadata accessor for VertexEdges();
  v21 = sub_1DF22B1A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v44 - v27;
  swift_beginAccess();
  v29 = v2[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v50 = a1;
  v54 = AssociatedConformanceWitness;
  v55 = v8;
  sub_1DF22AC00();

  v31 = *(*(v20 - 8) + 48);
  LODWORD(v29) = v31(v28, 1, v20);
  v32 = *(v22 + 8);
  v32(v28, v21);
  if (v29 == 1)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = v2[4];

  sub_1DF22AC00();

  LODWORD(v33) = v31(v26, 1, v20);
  v32(v26, v21);
  if (v33 == 1)
  {
    return 0;
  }

  v35 = v51;
  v36 = *(v51 + 16);
  v37 = v50;
  v36(v52, v50, v55);
  v45 = sub_1DF1623A4();
  sub_1DF22ABE0();
  v38 = sub_1DF22ABF0();
  if (v31(v39, 1, v20))
  {
    v38(v57, 0);
    (*(v35 + 8))(v52, v55);
  }

  else
  {
    v40 = v46;
    v41 = v55;
    v36(v46, v37, v55);
    v42 = v47;
    v36(v47, v53, v41);
    (*(*(&v56 + 1) + 80))(v40, v42, v49);
    v43 = *(v20 + 52);
    sub_1DF22AF50();
    sub_1DF22AF20();
    v38(v57, 0);
    (*(v35 + 8))(v52, v41);
  }

  (v45)(v58, 0);
  return 1;
}

uint64_t sub_1DF163334(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = a1;
  v3 = *v2;
  v4 = *v2;
  v27 = *(*v2 + 112);
  v34 = v27;
  v5 = *(v3 + 88);
  v30 = *(v4 + 96);
  v32 = v5;
  v33 = v30;
  v6 = type metadata accessor for VertexEdges();
  v7 = sub_1DF22B1A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v26 - v15;
  swift_beginAccess();
  v17 = v3;
  v18 = v2[4];
  v19 = *(v17 + 80);
  swift_getAssociatedConformanceWitness();

  sub_1DF22AC00();

  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v20 = 0;
  }

  else
  {
    v21 = (*(v13 + 32))(v16, v12, v6);
    v31 = *&v16[*(v6 + 52)];
    MEMORY[0x1EEE9AC00](v21);
    *&v22 = v19;
    *(&v22 + 1) = v5;
    v23 = v30;
    *(&v26 - 3) = v22;
    *(&v26 - 2) = v23;
    v24 = v28;
    *(&v26 - 2) = v27;
    *(&v26 - 1) = v24;
    sub_1DF22AF50();

    swift_getWitnessTable();
    v20 = sub_1DF22AE00();

    (*(v13 + 8))(v16, v6);
  }

  return v20 & 1;
}

uint64_t sub_1DF163690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 72))(v9, v8);
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = sub_1DF22AC80();
  (*(v4 + 8))(v7, a3);
  return v11 & 1;
}

uint64_t sub_1DF1637C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  result = sub_1DF22AF10();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = result - 1;
    v17 = 1;
    MEMORY[0x1EEE9AC00](result);
    v6 = *(v3 + 88);
    v10[2] = v4;
    v10[3] = v6;
    v14 = *(v3 + 96);
    v11 = v14;
    v12 = *(v3 + 112);
    v13 = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C960, &qword_1DF22CA60);
    v8 = sub_1DF164BEC(&qword_1ECE0C968, &qword_1ECE0C960, &qword_1DF22CA60);
    return sub_1DF163A40(sub_1DF164BC4, v10, v7, v14, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  }

  return result;
}

uint64_t sub_1DF163930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(*(a3 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v18 - v14;
  v16 = *v13;
  sub_1DF22AF70();
  result = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1DF22AF70();
    return (*(a7 + 80))(v15, v12, a5, a7);
  }

  return result;
}

uint64_t sub_1DF163A40(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_1DF22B1A0();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1DF22ADF0();
  v70 = sub_1DF22B380();
  v65 = sub_1DF22B390();
  sub_1DF22B360();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1DF22ADE0();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1DF22B1B0();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_1DF22B370();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1DF22B1B0();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1DF22B370();
      sub_1DF22B1B0();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_1DF164134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = *v2;
  v48 = v2;
  v4 = v41[10];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v40 - v11;
  sub_1DF22AF70();
  v52 = 1;
  v53 = a1;
  sub_1DF22AF50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C970, &qword_1DF22CA68);
  swift_getWitnessTable();
  sub_1DF164BEC(qword_1ECE0C978, &qword_1ECE0C970, &qword_1DF22CA68);
  sub_1DF22AC70();
  v12 = v55;
  v13 = v56;
  v14 = v57;
  swift_unknownObjectRetain();
  v15 = sub_1DF22B1F0();
  swift_unknownObjectRelease();
  v16 = 0;
  v49 = v14 >> 1;
  v44 = v5 + 16;
  v45 = (v5 + 8);
  v47 = v5;
  v51 = (v5 + 32);
  v17 = v46;
  while (1)
  {
    v18 = v15 + v16;
    if (v15 + v16 == sub_1DF22B210())
    {
      goto LABEL_9;
    }

    result = sub_1DF22B200();
    if (v15 < v13 || v49 <= v18)
    {
      break;
    }

    (*(v47 + 16))(v17, v12 + *(v47 + 72) * v18, v4);
    v20 = v4;
    v21 = v50;
    if ((sub_1DF163334(v50, v17) & 1) == 0)
    {
      (*v45)(v17, v20);
      swift_unknownObjectRelease();
      v32 = *v51;
      v33 = v42;
      (*v51)(v42, v21, v20);
      v34 = v32;
      v35 = v41[13];
      v36 = v41[11];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = swift_getAssociatedConformanceWitness();
      v39 = swift_getAssociatedConformanceWitness();
      v30 = v43;
      *v43 = 0;
      v54 = v20;
      v55 = AssociatedConformanceWitness;
      v56 = v38;
      v57 = v39;
      v31 = type metadata accessor for WalkResult();
      result = (v34)(&v30[*(v31 + 52)], v33, v20);
      goto LABEL_11;
    }

    (*v45)(v21, v20);
    (*v51)(v21, v17, v20);
    v22 = __OFADD__(v16++, 1);
    v4 = v20;
    if (v22)
    {
      __break(1u);
LABEL_9:
      swift_unknownObjectRelease();
      v23 = *v51;
      v24 = v42;
      (*v51)(v42, v50, v4);
      v25 = v41[13];
      v26 = v41[11];
      v27 = swift_getAssociatedConformanceWitness();
      v28 = swift_getAssociatedConformanceWitness();
      v29 = swift_getAssociatedConformanceWitness();
      v30 = v43;
      *v43 = 1;
      v54 = v4;
      v55 = v27;
      v56 = v28;
      v57 = v29;
      v31 = type metadata accessor for WalkResult();
      result = (v23)(&v30[*(v31 + 52)], v24, v4);
LABEL_11:
      *&v30[*(v31 + 56)] = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Graph.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Graph.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1DF164698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1DF22AC20();

  return sub_1DF1646F4(a1, v9, a2, a3);
}

unint64_t sub_1DF1646F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1DF22AC80();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1DF16487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (sub_1DF22AF10())
  {
    sub_1DF22B400();
    v13 = sub_1DF22B3F0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF22AF10();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF22AEF0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF22B330();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF164698(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DF164B9C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_1DF163690(a1, v1[7], v1[2]) & 1;
}

uint64_t sub_1DF164BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF164C8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_1DF22AF50();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF164D18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1DF164E54(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1DF165010(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF165098(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
    }

    v17 = *a1;
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1DF1651E8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0xFE)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 1] & ~v8;

        return v18(v19);
      }

      else
      {
        *result = a2 + 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t StreamMessage.sourceId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StreamMessage.sourceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StreamMessage.topic.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StreamMessage.topic.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t StreamMessage.data.getter()
{
  v1 = *(v0 + 40);
  sub_1DF16573C(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_1DF16573C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StreamMessage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DF1657C8(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1DF1657C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StreamMessage.init(timestamp:sourceId:topic:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1DF165850()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6369706F74;
  if (*v0 != 2)
  {
    v2 = 1635017060;
  }

  if (*v0)
  {
    v1 = 0x6449656372756F73;
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

uint64_t sub_1DF1658C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF166DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1658EC(uint64_t a1)
{
  v2 = sub_1DF165BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF165928(uint64_t a1)
{
  v2 = sub_1DF165BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB00, &qword_1DF22CB30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v17[3] = v1[2];
  v17[4] = v8;
  v11 = v1[5];
  v17[1] = v1[4];
  v17[2] = v10;
  v17[0] = v11;
  v12 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF165BA0();
  sub_1DF22B740();
  LOBYTE(v18) = 0;
  v14 = v17[5];
  sub_1DF22B5D0();
  if (!v14)
  {
    v15 = v17[0];
    LOBYTE(v18) = 1;
    sub_1DF22B580();
    LOBYTE(v18) = 2;
    sub_1DF22B580();
    v18 = v15;
    v19 = v12;
    v20 = 3;
    sub_1DF16573C(v15, v12);
    sub_1DF165BF4();
    sub_1DF22B5C0();
    sub_1DF1657C8(v18, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF165BA0()
{
  result = qword_1ECE0CB08;
  if (!qword_1ECE0CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB08);
  }

  return result;
}

unint64_t sub_1DF165BF4()
{
  result = qword_1ECE0C738;
  if (!qword_1ECE0C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C738);
  }

  return result;
}

uint64_t StreamMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB10, &qword_1DF22CB38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF165BA0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v26) = 0;
  v11 = sub_1DF22B4F0();
  LOBYTE(v26) = 1;
  v12 = sub_1DF22B4A0();
  v14 = v13;
  v25 = v12;
  LOBYTE(v26) = 2;
  v23 = sub_1DF22B4A0();
  v24 = v15;
  v28 = 3;
  sub_1DF165F04();
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v16 = v26;
  v17 = v27;
  v19 = v24;
  v18 = v25;
  *a2 = v11;
  a2[1] = v18;
  v20 = v23;
  a2[2] = v14;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v16;
  a2[6] = v17;

  sub_1DF16573C(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1DF1657C8(v16, v17);
}

unint64_t sub_1DF165F04()
{
  result = qword_1ECE0C730;
  if (!qword_1ECE0C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C730);
  }

  return result;
}

uint64_t StreamServiceInfo.publishers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t StreamServiceInfo.subscribers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

LighthouseBackground::StreamServiceInfo __swiftcall StreamServiceInfo.init(publishers:subscribers:)(Swift::OpaquePointer publishers, Swift::OpaquePointer subscribers)
{
  v2->_rawValue = publishers._rawValue;
  v2[1]._rawValue = subscribers._rawValue;
  result.subscribers = subscribers;
  result.publishers = publishers;
  return result;
}

uint64_t sub_1DF166038()
{
  if (*v0)
  {
    result = 0x6269726373627573;
  }

  else
  {
    result = 0x656873696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_1DF166080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656873696C627570 && a2 == 0xEA00000000007372;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEB00000000737265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF166168(uint64_t a1)
{
  v2 = sub_1DF1663A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1661A4(uint64_t a1)
{
  v2 = sub_1DF1663A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamServiceInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB18, &unk_1DF22CB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1663A0();

  sub_1DF22B740();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  sub_1DF1663F4();
  sub_1DF22B5C0();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DF22B5C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1663A0()
{
  result = qword_1ECE0CB20;
  if (!qword_1ECE0CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB20);
  }

  return result;
}

unint64_t sub_1DF1663F4()
{
  result = qword_1ECE0CB30;
  if (!qword_1ECE0CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF15FAB4(&qword_1ECE0C068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB30);
  }

  return result;
}

uint64_t StreamServiceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB38, &qword_1DF22CB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1663A0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  v16 = 0;
  sub_1DF1666C0();
  sub_1DF22B4E0();
  v11 = v17;
  v16 = 1;
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1666C0()
{
  result = qword_1ECE0CB40;
  if (!qword_1ECE0CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF15FAB4(&qword_1ECE0C058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF1667D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DF16681C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF166884(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF1668CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamServiceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamServiceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF166BBC()
{
  result = qword_1ECE0CB48;
  if (!qword_1ECE0CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB48);
  }

  return result;
}

unint64_t sub_1DF166C14()
{
  result = qword_1ECE0CB50;
  if (!qword_1ECE0CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB50);
  }

  return result;
}

unint64_t sub_1DF166C6C()
{
  result = qword_1ECE0CB58;
  if (!qword_1ECE0CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB58);
  }

  return result;
}

unint64_t sub_1DF166CC4()
{
  result = qword_1ECE0CB60;
  if (!qword_1ECE0CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB60);
  }

  return result;
}

unint64_t sub_1DF166D1C()
{
  result = qword_1ECE0CB68;
  if (!qword_1ECE0CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB68);
  }

  return result;
}

unint64_t sub_1DF166D74()
{
  result = qword_1ECE0CB70;
  if (!qword_1ECE0CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB70);
  }

  return result;
}

uint64_t sub_1DF166DC8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DF166DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656372756F73 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t sub_1DF166F60()
{
  v0 = sub_1DF22A8C0();
  __swift_allocate_value_buffer(v0, qword_1ED8E92C0);
  __swift_project_value_buffer(v0, qword_1ED8E92C0);
  return sub_1DF22A8B0();
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

uint64_t sub_1DF167040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    sub_1DF175524(a2, a3, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v10);

    return sub_1DF16184C(v10, &qword_1ECE0CBE8, &qword_1DF22CFC0);
  }

  else
  {
    sub_1DF17A710(a1, v14, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF1A7654(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF167238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    sub_1DF175524(a2, a3, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v10);

    return sub_1DF16184C(v10, &qword_1ECE0CBE0, &qword_1DF22CFB8);
  }

  else
  {
    sub_1DF17A710(a1, v14, &qword_1ECE0CBA8, &qword_1DF22CF80);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF1A77F8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF167430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD70, &qword_1DF2300E0);
    sub_1DF175524(a2, a3, &qword_1ECE0CD60, &qword_1DF22FFC0, &qword_1ECE0CD68, &unk_1DF22D760, v10);

    return sub_1DF16184C(v10, &qword_1ECE0CD70, &qword_1DF2300E0);
  }

  else
  {
    sub_1DF17A710(a1, v14, &qword_1ECE0CD60, &qword_1DF22FFC0);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF1A799C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF167628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1DF22AA80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD50, &unk_1DF22D750);
    sub_1DF1756BC(a2, a3, v10);

    return sub_1DF16184C(v10, &qword_1ECE0CD50, &unk_1DF22D750);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF1A7CB8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF167800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD48, &qword_1DF2387E0);
    sub_1DF17582C(a2, a3, v10);

    return sub_1DF16184C(v10, &qword_1ECE0CD48, &qword_1DF2387E0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF1A7E38(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

LighthouseBackground::KVDatastoreError_optional __swiftcall KVDatastoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KVDatastoreError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4764696C61766E69;
  v3 = 0x4B64696C61766E69;
  v4 = 0x5664696C61766E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF167B10()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF167C14()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF167D04()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF167E10(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000070756F72;
  v4 = 0x4764696C61766E69;
  v5 = 0xEA00000000007965;
  v6 = 0x4B64696C61766E69;
  v7 = 0xEC00000065756C61;
  v8 = 0x5664696C61766E69;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001DF23CF10;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DF23CED0;
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

uint64_t KVDatastoreInfo.maxExpiration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t KVDatastoreInfo.maxExpiration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DF1680F0()
{
  v1 = *v0;
  v2 = 0x657A695378616DLL;
  v3 = 0x657A69537379656BLL;
  if (v1 != 5)
  {
    v3 = 0x69537365756C6176;
  }

  v4 = 0x43746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x53746E6572727563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E756F4378616DLL;
  if (v1 != 1)
  {
    v5 = 0x726970784578616DLL;
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

uint64_t sub_1DF1681EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF17A1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF168220(uint64_t a1)
{
  v2 = sub_1DF1684F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF16825C(uint64_t a1)
{
  v2 = sub_1DF1684F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KVDatastoreInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB78, &qword_1DF22CF60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v11 = v1[5];
  v18[3] = v1[4];
  v19 = v10;
  v12 = v1[7];
  v18[1] = v1[6];
  v18[2] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1684F8();
  sub_1DF22B740();
  LOBYTE(v23) = 0;
  v14 = v22;
  sub_1DF22B5B0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v19;
  v15 = v20;
  LOBYTE(v23) = 1;
  sub_1DF22B5B0();
  v23 = v15;
  v24 = v16;
  v25 = 2;
  sub_1DF22B5C0();
  LOBYTE(v23) = 3;
  sub_1DF22B5B0();
  LOBYTE(v23) = 4;
  sub_1DF22B5B0();
  LOBYTE(v23) = 5;
  sub_1DF22B5B0();
  LOBYTE(v23) = 6;
  sub_1DF22B5B0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1684F8()
{
  result = qword_1ECE0CB80;
  if (!qword_1ECE0CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB80);
  }

  return result;
}

uint64_t KVDatastoreInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB88, &qword_1DF22CF68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1684F8();
  sub_1DF22B730();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    v11 = sub_1DF22B4D0();
    LOBYTE(v27) = 1;
    v26 = sub_1DF22B4D0();
    v29 = 2;
    sub_1DF22B4E0();
    v12 = v27;
    v13 = v28;
    LOBYTE(v27) = 3;
    v14 = sub_1DF22B4D0();
    v23 = v12;
    v24 = v13;
    v25 = v14;
    LOBYTE(v27) = 4;
    v22 = sub_1DF22B4D0();
    LOBYTE(v27) = 5;
    v21 = sub_1DF22B4D0();
    LOBYTE(v27) = 6;
    v16 = sub_1DF22B4D0();
    (*(v6 + 8))(v9, v5);
    v17 = v26;
    *a2 = v11;
    a2[1] = v17;
    v18 = v24;
    a2[2] = v23;
    a2[3] = v18;
    v19 = v21;
    v20 = v22;
    a2[4] = v25;
    a2[5] = v20;
    a2[6] = v19;
    a2[7] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t KVDatastore.MetadataType.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF22A800();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KVDatastore.MetadataType.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KVDatastore.MetadataType() + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for KVDatastore.MetadataType()
{
  result = qword_1ECE0C6D8;
  if (!qword_1ECE0C6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KVDatastore.MetadataType.timeToLive.getter()
{
  v1 = (v0 + *(type metadata accessor for KVDatastore.MetadataType() + 24));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_1DF168950(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = type metadata accessor for KVDatastore.MetadataType();
  v15 = (a2 + *(v14 + 24));
  *v15 = v13;
  v15[1] = v12;
  sub_1DF22A7D0();
  sub_1DF22B750();
  sub_1DF22A760();
  (*(v5 + 8))(v9, v4);
  return (*(v5 + 40))(a2 + *(v14 + 20), v11, v4);
}

uint64_t KVDatastore.MetadataType.timeToLive.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF22A800();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = type metadata accessor for KVDatastore.MetadataType();
  v15 = (v3 + *(v14 + 24));
  *v15 = a1;
  v15[1] = a2;
  sub_1DF22A7D0();
  sub_1DF22B750();
  sub_1DF22A760();
  (*(v7 + 8))(v11, v6);
  return (*(v7 + 40))(v3 + *(v14 + 20), v13, v6);
}

void (*KVDatastore.MetadataType.timeToLive.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = sub_1DF22A800();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = type metadata accessor for KVDatastore.MetadataType();
  v5[5] = v10;
  *(v5 + 12) = *(v10 + 24);
  return sub_1DF168D08;
}

void sub_1DF168D08(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 3);
    v4 = *(v2 + 4);
  }

  else
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 2);
    v3 = *(v2 + 3);
    v8 = *v2;
    v7 = *(v2 + 1);
    v9 = (*v2 + v2[12]);
    sub_1DF22A7D0();
    v10 = *v9;
    v11 = v9[1];
    sub_1DF22B750();
    sub_1DF22A760();
    (*(v6 + 8))(v3, v7);
    (*(v6 + 40))(v8 + *(v5 + 20), v4, v7);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t KVDatastore.MetadataType.init(timeToLive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for KVDatastore.MetadataType();
  v7 = (a3 + *(v6 + 24));
  sub_1DF22A7D0();
  sub_1DF22B750();
  v8 = a3 + *(v6 + 20);
  result = sub_1DF22A760();
  *v7 = a1;
  v7[1] = a2;
  return result;
}

double KVDatastore.MetadataType.timeToLiveSeconds.getter()
{
  v1 = (v0 + *(type metadata accessor for KVDatastore.MetadataType() + 24));
  v2 = *v1;
  v3 = v1[1];
  return sub_1DF22B750();
}

uint64_t sub_1DF168E80()
{
  v1 = 0x6974617269707865;
  if (*v0 != 1)
  {
    v1 = 0x694C6F54656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461657263;
  }
}

uint64_t sub_1DF168EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF17A404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF168F1C(uint64_t a1)
{
  v2 = sub_1DF169194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF168F58(uint64_t a1)
{
  v2 = sub_1DF169194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KVDatastore.MetadataType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB90, &qword_1DF22CF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF169194();
  sub_1DF22B740();
  LOBYTE(v14) = 0;
  sub_1DF22A800();
  sub_1DF1792F4(&qword_1ECE0C728);
  sub_1DF22B5C0();
  if (!v2)
  {
    v11 = type metadata accessor for KVDatastore.MetadataType();
    v12 = *(v11 + 20);
    LOBYTE(v14) = 1;
    sub_1DF22B5C0();
    v14 = *(v3 + *(v11 + 24));
    v15 = 2;
    sub_1DF22B5C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF169194()
{
  result = qword_1ECE0CB98;
  if (!qword_1ECE0CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB98);
  }

  return result;
}

uint64_t KVDatastore.MetadataType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_1DF22A800();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x1EEE9AC00](v34);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA0, &qword_1DF22CF78);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for KVDatastore.MetadataType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF169194();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = v16;
  v30 = a1;
  v28 = v13;
  LOBYTE(v37) = 0;
  sub_1DF1792F4(&qword_1ED8E6BE0);
  v19 = v33;
  v18 = v34;
  v20 = v36;
  sub_1DF22B4E0();
  v33 = *(v32 + 32);
  (v33)(v29, v19, v18);
  LOBYTE(v37) = 1;
  v21 = v7;
  sub_1DF22B4E0();
  v22 = v29;
  (v33)(&v29[*(v28 + 20)], v21, v18);
  v38 = 2;
  sub_1DF22B4E0();
  v23 = v22;
  v24 = v30;
  v25 = *(v28 + 24);
  (*(v35 + 8))(v12, v20);
  *(v23 + v25) = v37;
  sub_1DF17A5D8(v23, v31, type metadata accessor for KVDatastore.MetadataType);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_1DF169620(v23);
}

uint64_t sub_1DF169620(uint64_t a1)
{
  v2 = type metadata accessor for KVDatastore.MetadataType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

LighthouseBackground::KVDatastore::KeyCategoryType_optional __swiftcall KVDatastore.KeyCategoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t KVDatastore.KeyCategoryType.rawValue.getter()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DF169740(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1635017060;
  }

  if (*a2)
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DF22B620();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DF1697B8()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF169820()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF16986C()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1698D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF22B420();

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

void sub_1DF169930(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 1953720684;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t KVDatastore.__allocating_init(maxCount:maxSize:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1DF22B770();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 144) = xmmword_1DF22CF20;
    *(v4 + 160) = xmmword_1DF22CF30;
    *(v4 + 176) = 16;
    *(v4 + 128) = a1;
    *(v4 + 136) = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1E69E6168];
    *(v4 + 112) = MEMORY[0x1E12CF690](a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    v9 = *(v4 + 128);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    *(v4 + 120) = MEMORY[0x1E12CF690](v9, v7, v10, v8);
    return v4;
  }

  return result;
}

uint64_t KVDatastore.init(maxCount:maxSize:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  result = sub_1DF22B770();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 144) = xmmword_1DF22CF20;
    *(v2 + 160) = xmmword_1DF22CF30;
    *(v2 + 176) = 16;
    *(v2 + 128) = a1;
    *(v2 + 136) = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1E69E6168];
    *(v2 + 112) = MEMORY[0x1E12CF690](a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    v9 = *(v2 + 128);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    *(v2 + 120) = MEMORY[0x1E12CF690](v9, v7, v10, v8);
    return v2;
  }

  return result;
}

uint64_t sub_1DF169C44()
{
  swift_beginAccess();
  v1 = *(*(v0 + 112) + 16);
  swift_beginAccess();
  v2 = *(*(v0 + 120) + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1DF169CAC()
{
  swift_beginAccess();
  if (*(*(v0 + 112) + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(*(v0 + 120) + 16) == 0;
}

void *sub_1DF169D14()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1DF1751D0(*(v1 + 16), 0);
    v4 = sub_1DF178EE4(&v10, v3 + 4, v2, v1);

    sub_1DF178EDC();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  swift_beginAccess();
  v5 = *(v0 + 120);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_8:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = sub_1DF1751D0(*(v5 + 16), 0);
  v8 = sub_1DF178EE4(&v10, v7 + 4, v6, v5);

  sub_1DF178EDC();
  if (v8 != v6)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v10 = v3;
  sub_1DF1742D4(v7);
  return v10;
}

uint64_t sub_1DF169E7C()
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v108 = *(v109 - 8);
  v1 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v101 - v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v3 = *(*(v106 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v106);
  v105 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v104 = (&v101 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v103 = (&v101 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v123 = (&v101 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v101 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v14 = *(*(v115 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v115);
  v114 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v113 = (&v101 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v112 = (&v101 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v124 = (&v101 - v21);
  swift_beginAccess();
  v102 = v0;
  v22 = *(v0 + 112);

  v24 = sub_1DF176F90(v23, sub_1DF177748, sub_1DF177748);
  v101 = 0;

  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  i = v24;

  v31 = 0;
  v111 = v24 + 64;
  v110 = v29;
  v125 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      do
      {
LABEL_8:
        v33 = __clz(__rbit64(v28)) | (v31 << 6);
        v34 = (*(i + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = v115;
        v38 = v124;
        v39 = v124 + *(v115 + 48);
        sub_1DF17A6A8(*(i + 56) + *(v117 + 72) * v33, v39, &qword_1ECE0CBA8, &qword_1DF22CF80);
        *v38 = v35;
        v38[1] = v36;
        v40 = v36;
        v41 = v118;
        v42 = (v39 + *(v118 + 48));
        v44 = v42[1];
        v120 = *v42;
        v43 = v120;
        v121 = v44;
        v45 = v39;
        v46 = v116;
        sub_1DF17A5D8(v45, v116, type metadata accessor for KVDatastore.MetadataType);
        v47 = (v46 + *(v41 + 48));
        *v47 = v43;
        v47[1] = v44;
        v48 = v112;
        *v112 = v35;
        *(v48 + 8) = v40;
        sub_1DF17A710(v46, v48 + *(v37 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
        v49 = v113;
        sub_1DF17A6A8(v48, v113, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v50 = *v49;
        v51 = v49[1];
        v52 = *(v37 + 48);
        v53 = v49 + v52;
        v54 = *(v41 + 48);
        v55 = (v49 + v52 + v54);
        v57 = *v55;
        v56 = v55[1];
        v58 = v114;
        v59 = v114 + v52;
        v122 = v50;
        *v114 = v50;
        *(v58 + 8) = v51;
        v60 = (v58 + v52 + v54);
        sub_1DF17A640(v53, v59, type metadata accessor for KVDatastore.MetadataType);
        *v60 = v57;
        v60[1] = v56;
        swift_bridgeObjectRetain_n();

        sub_1DF16573C(v120, v121);
        sub_1DF16184C(v58, &qword_1ECE0CBC0, &qword_1DF22CF98);
        sub_1DF16184C(v48, &qword_1ECE0CBC0, &qword_1DF22CF98);
        sub_1DF16184C(v124, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v61 = v125;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DF174610(0, *(v61 + 16) + 1, 1, v61);
          v61 = result;
        }

        v63 = *(v61 + 16);
        v62 = *(v61 + 24);
        v29 = v110;
        if (v63 >= v62 >> 1)
        {
          result = sub_1DF174610((v62 > 1), v63 + 1, 1, v61);
          v61 = result;
        }

        v28 &= v28 - 1;
        *(v61 + 16) = v63 + 1;
        v64 = v61 + 16 * v63;
        *(v64 + 32) = v122;
        *(v64 + 40) = v51;
        v25 = v111;
        v125 = v61;
      }

      while (v28);
    }
  }

  v65 = v102;
  swift_beginAccess();
  v66 = *(v65 + 120);

  v68 = sub_1DF176F90(v67, sub_1DF1772C8, sub_1DF1772C8);

  v69 = v68 + 64;
  v70 = 1 << *(v68 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v68 + 64);
  v73 = (v70 + 63) >> 6;
  v120 = v68;

  v74 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  v118 = v73;
  for (i = v69; v72; v69 = i)
  {
    v124 = v75;
LABEL_22:
    v77 = __clz(__rbit64(v72)) | (v74 << 6);
    v78 = (*(v120 + 48) + 16 * v77);
    v79 = *v78;
    v80 = v78[1];
    v81 = v106;
    v82 = v123;
    v83 = v123 + *(v106 + 48);
    sub_1DF17A6A8(*(v120 + 56) + *(v108 + 72) * v77, v83, &qword_1ECE0CBB0, &qword_1DF22CF88);
    *v82 = v79;
    v82[1] = v80;
    v84 = v109;
    v121 = *(v83 + *(v109 + 48));
    v85 = v121;
    v86 = v107;
    sub_1DF17A5D8(v83, v107, type metadata accessor for KVDatastore.MetadataType);
    *(v86 + *(v84 + 48)) = v85;
    v87 = v103;
    *v103 = v79;
    *(v87 + 8) = v80;
    sub_1DF17A710(v86, v87 + *(v81 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
    v88 = v104;
    sub_1DF17A6A8(v87, v104, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v89 = *v88;
    v90 = v88[1];
    v91 = *(v81 + 48);
    v92 = v88 + v91;
    v93 = *(v84 + 48);
    v94 = *(v88 + v91 + v93);
    v95 = v105;
    v96 = v105 + v91;
    v122 = v89;
    *v105 = v89;
    *(v95 + 8) = v90;
    v97 = v90;
    sub_1DF17A640(v92, v95 + v91, type metadata accessor for KVDatastore.MetadataType);
    *&v96[v93] = v94;
    swift_bridgeObjectRetain_n();

    sub_1DF16184C(v95, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v87, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v123, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v75 = v124;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DF174610(0, *(v75 + 16) + 1, 1, v75);
      v75 = result;
    }

    v99 = *(v75 + 16);
    v98 = *(v75 + 24);
    v73 = v118;
    if (v99 >= v98 >> 1)
    {
      result = sub_1DF174610((v98 > 1), v99 + 1, 1, v75);
      v75 = result;
    }

    v72 &= v72 - 1;
    *(v75 + 16) = v99 + 1;
    v100 = v75 + 16 * v99;
    *(v100 + 32) = v122;
    *(v100 + 40) = v97;
  }

  while (1)
  {
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v76 >= v73)
    {

      v126 = v125;
      sub_1DF1742D4(v75);
      return v126;
    }

    v72 = *(v69 + 8 * v76);
    ++v74;
    if (v72)
    {
      v124 = v75;
      v74 = v76;
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1DF16A784()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 112);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = 0;
  while (v4)
  {
    v10 = v8;
LABEL_10:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = (*(v1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1DF22AD30();

    v16 = __OFADD__(v9, v15);
    v9 += v15;
    if (v16)
    {
      __break(1u);
LABEL_13:

      swift_beginAccess();
      v17 = *(v0 + 120);
      v18 = 1 << *(v17 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v17 + 64);
      v21 = (v18 + 63) >> 6;
      v22 = *(v0 + 120);
      result = swift_bridgeObjectRetain_n();
      v23 = 0;
      v24 = 0;
      do
      {
        if (!v20)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_28;
            }

            if (v25 >= v21)
            {
              goto LABEL_25;
            }

            v20 = *(v17 + 64 + 8 * v25);
            ++v23;
            if (v20)
            {
              v23 = v25;
              goto LABEL_22;
            }
          }
        }

        v25 = v23;
LABEL_22:
        v26 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v27 = (*(v17 + 48) + ((v25 << 10) | (16 * v26)));
        v28 = *v27;
        v29 = v27[1];

        v30 = sub_1DF22AD30();

        v16 = __OFADD__(v24, v30);
        v24 += v30;
      }

      while (!v16);
      __break(1u);
LABEL_25:

      result = v9 + v24;
      if (__OFADD__(v9, v24))
      {
        goto LABEL_29;
      }

      return result;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      goto LABEL_13;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DF16A9AC()
{
  swift_beginAccess();
  v1 = *(*(v0 + 112) + 16);
  v2 = type metadata accessor for KVDatastore.MetadataType();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 64);
  v6 = v1 * v5;
  if ((v1 * v5) >> 64 != (v1 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = swift_beginAccess();
  v7 = *(*(v0 + 120) + 16);
  v8 = v7 * v5;
  if ((v7 * v5) >> 64 != (v7 * v5) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF16AA60()
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v79 = *(v77 - 8);
  v1 = *(v79 + 64);
  v2 = MEMORY[0x1EEE9AC00](v77);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = v72[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v66 - v15;
  swift_beginAccess();
  v67 = v0;
  v16 = *(v0 + 112);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v75 = v16;
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  v76 = 0;
  if (!v20)
  {
    goto LABEL_5;
  }

  do
  {
    v24 = v23;
LABEL_8:
    v25 = v71;
    sub_1DF17A6A8(*(v75 + 56) + v72[9] * (__clz(__rbit64(v20)) | (v24 << 6)), v71, &qword_1ECE0CBA8, &qword_1DF22CF80);
    sub_1DF17A710(v25, v14, &qword_1ECE0CBA8, &qword_1DF22CF80);
    v26 = &v14[*(v73 + 48)];
    v28 = *v26;
    v27 = v26[1];
    v29 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v31 = *(v28 + 16);
        v68 = *(v28 + 24);
        result = sub_1DF1657C8(v28, v27);
        v30 = v68 - v31;
        if (__OFSUB__(v68, v31))
        {
          goto LABEL_63;
        }
      }

      else
      {
        result = sub_1DF1657C8(v28, v27);
        v30 = 0;
      }
    }

    else if (v29)
    {
      result = sub_1DF1657C8(v28, v27);
      LODWORD(v30) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_64;
      }

      v30 = v30;
    }

    else
    {
      result = sub_1DF1657C8(v28, v27);
      v30 = BYTE6(v27);
    }

    v32 = v76 + v30;
    if (__OFADD__(v76, v30))
    {
      goto LABEL_61;
    }

    v20 &= v20 - 1;
    result = sub_1DF169620(v14);
    v23 = v24;
    v76 = v32;
  }

  while (v20);
  while (1)
  {
LABEL_5:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_59;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  v33 = v67;
  swift_beginAccess();
  v34 = *(v33 + 120);
  v35 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v75 = v37 & *(v34 + 64);
  v38 = (v36 + 63) >> 6;
  v72 = v34;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = 0;
  v71 = v35;
  v68 = v38;
  v41 = v75;
  if (!v75)
  {
    while (1)
    {
LABEL_25:
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_60;
      }

      if (v42 >= v38)
      {
        break;
      }

      v41 = *(v35 + 8 * v42);
      ++v39;
      if (v41)
      {
        v73 = v40;
        goto LABEL_29;
      }
    }

    result = v76 + v40;
    if (__OFADD__(v76, v40))
    {
      goto LABEL_65;
    }

    return result;
  }

  while (1)
  {
    v73 = v40;
    v42 = v39;
LABEL_29:
    v75 = (v41 - 1) & v41;
    v43 = v74;
    sub_1DF17A6A8(v72[7] + *(v69 + 72) * (__clz(__rbit64(v41)) | (v42 << 6)), v74, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v44 = *(v43 + *(v70 + 48));
    v45 = v44[4];
    if (v44[2] >= v44[3] + v45)
    {
      v46 = v44[3] + v45;
    }

    else
    {
      v46 = v44[2];
    }

    v47 = (*(v79 + 80) + 40) & ~*(v79 + 80);
    v80 = v44;
    v81 = v45;
    v82 = v46;

    v48 = 0;
    if (v45 != v46)
    {
      goto LABEL_35;
    }

LABEL_33:
    v49 = sub_1DF1791A4();
    v50 = v80;
    if (v49)
    {
      break;
    }

    v40 = v73 + v48;
    if (__OFADD__(v73, v48))
    {
      goto LABEL_62;
    }

    result = sub_1DF16184C(v74, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v39 = v42;
    v35 = v71;
    v38 = v68;
    v41 = v75;
    if (!v75)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v51 = v81;
    v52 = ++v81;
    result = sub_1DF17A6A8(v50 + v47 + *(v79 + 72) * v51, v6, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v53 = __OFADD__(v48, v78);
    v54 = v48 + v78;
    if (v53)
    {
      break;
    }

    sub_1DF17A6A8(v6, v4, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v55 = &v4[*(v77 + 48)];
    v56 = *v55;
    v57 = v55[1];
    v58 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v58 == 2)
      {
        v62 = *(v56 + 16);
        v61 = *(v56 + 24);
        result = sub_1DF1657C8(v56, v57);
        v60 = v61 - v62;
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = sub_1DF1657C8(v56, v57);
        v60 = 0;
      }
    }

    else if (v58)
    {
      v63 = HIDWORD(v56);
      v64 = v56;
      result = sub_1DF1657C8(v56, v57);
      LODWORD(v60) = v63 - v64;
      if (__OFSUB__(v63, v64))
      {
        goto LABEL_57;
      }

      v60 = v60;
    }

    else
    {
      v59 = BYTE6(v57);
      result = sub_1DF1657C8(v56, v57);
      v60 = v59;
    }

    v53 = __OFADD__(v54, v60);
    v48 = v54 + v60;
    if (v53)
    {
      goto LABEL_56;
    }

    v65 = sub_1DF22A800();
    (*(*(v65 - 8) + 8))(v4, v65);
    sub_1DF16184C(v6, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    if (v52 == v82)
    {
      goto LABEL_33;
    }

LABEL_35:
    v50 = v80;
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
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1DF16B134()
{
  v1 = sub_1DF16A784();
  swift_beginAccess();
  v2 = *(*(v0 + 112) + 16);
  v3 = type metadata accessor for KVDatastore.MetadataType();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = *(v5 + 64);
  v7 = v2 * v6;
  if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  v8 = *(*(v0 + 120) + 16);
  v9 = v8 * v6;
  if ((v8 * v6) >> 64 != (v8 * v6) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = __OFADD__(v1, v11);
  v12 = v1 + v11;
  if (v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sub_1DF16AA60();
  v10 = __OFADD__(v12, v13);
  result = v12 + v13;
  if (v10)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF16B214()
{
  v83 = sub_1DF22A800();
  v1 = *(v83 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = &v69 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v69 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v69 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBD0, &qword_1DF22CFA8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v69 - v24);
  swift_beginAccess();
  v26 = *(v0 + 112);
  v27 = (v26 + 64);
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  if (v30)
  {
    v76 = v20;
    v86 = v1;
    v70 = v25;
    v71 = v7;
    v85 = v6;
    v31 = 0;
    v32 = __clz(__rbit64(v30));
    v33 = (v30 - 1) & v30;
    v84 = (v28 + 63) >> 6;
LABEL_9:
    v36 = *(v26 + 56);
    v37 = (*(v26 + 48) + 16 * v32);
    v38 = v37[1];
    v74 = *v37;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v75 = *(*(v87 - 8) + 72);
    v39 = v36 + v75 * v32;
    v40 = v76;
    sub_1DF17A6A8(v39, v76 + *(v85 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
    *v40 = v74;
    v40[1] = v38;
    sub_1DF17A710(v40, v88, &qword_1ECE0CBC0, &qword_1DF22CF98);
    v73 = (v86 + 8);
    v74 = (v86 + 16);
    swift_bridgeObjectRetain_n();

    v76 = (v26 + 64);
    v77 = v26;
    v72 = v17;
    while (v33)
    {
      v42 = v31;
LABEL_18:
      v44 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v45 = v44 | (v42 << 6);
      v46 = (*(v26 + 48) + 16 * v45);
      v48 = *v46;
      v47 = v46[1];
      v49 = *(v26 + 56) + v45 * v75;
      v50 = v85;
      v51 = v78;
      sub_1DF17A6A8(v49, &v78[*(v85 + 48)], &qword_1ECE0CBA8, &qword_1DF22CF80);
      *v51 = v48;
      v51[1] = v47;
      sub_1DF17A710(v51, v17, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v52 = v79;
      sub_1DF17A6A8(v17, v79, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v53 = *(v52 + 8);

      v54 = v52 + *(v50 + 48);
      sub_1DF1657C8(*(v54 + *(v87 + 48)), *(v54 + *(v87 + 48) + 8));
      v86 = type metadata accessor for KVDatastore.MetadataType();
      v55 = *v74;
      v56 = v81;
      v57 = v83;
      (*v74)(v81, v54 + *(v86 + 20), v83);
      sub_1DF169620(v54);
      v58 = v80;
      sub_1DF17A6A8(v88, v80, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v59 = *(v58 + 8);

      v60 = v58 + *(v50 + 48);
      sub_1DF1657C8(*(v60 + *(v87 + 48)), *(v60 + *(v87 + 48) + 8));
      v61 = v82;
      v55(v82, v60 + *(v86 + 20), v57);
      sub_1DF169620(v60);
      LOBYTE(v60) = sub_1DF22A790();
      v62 = *v73;
      (*v73)(v61, v57);
      v62(v56, v57);
      if (v60)
      {
        v63 = v88;
        sub_1DF16184C(v88, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v17 = v72;
        result = sub_1DF17A710(v72, v63, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      else
      {
        v17 = v72;
        result = sub_1DF16184C(v72, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      v31 = v42;
      v27 = v76;
      v26 = v77;
    }

    v43 = v88;
    while (1)
    {
      v42 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v42 >= v84)
      {
        break;
      }

      v33 = v27[v42];
      ++v31;
      if (v33)
      {
        goto LABEL_18;
      }
    }

    v25 = v70;
    sub_1DF17A710(v43, v70, &qword_1ECE0CBC0, &qword_1DF22CF98);
    v64 = v71;
    v65 = v85;
    (*(v71 + 56))(v25, 0, 1, v85);

    if ((*(v64 + 48))(v25, 1, v65) == 1)
    {
      goto LABEL_23;
    }

    v66 = *v25;
    v67 = v25[1];
    v68 = v25 + *(v65 + 48);
    sub_1DF1657C8(*(v68 + *(v87 + 48)), *(v68 + *(v87 + 48) + 8));
    sub_1DF169620(v68);
  }

  else
  {
    v34 = 0;
    while (((v28 + 63) >> 6) - 1 != v34)
    {
      v31 = v34 + 1;
      v35 = *(v26 + 72 + 8 * v34);
      v30 -= 64;
      ++v34;
      if (v35)
      {
        v76 = v20;
        v86 = v1;
        v84 = (v28 + 63) >> 6;
        v70 = v25;
        v71 = v7;
        v85 = v6;
        v33 = (v35 - 1) & v35;
        v32 = __clz(__rbit64(v35)) - v30;
        goto LABEL_9;
      }
    }

    (*(v7 + 56))(v25, 1, 1, v6);
LABEL_23:
    sub_1DF16184C(v25, &qword_1ECE0CBD0, &qword_1DF22CFA8);
    return 0;
  }

  return v66;
}

uint64_t sub_1DF16B950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v47 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBD8, &qword_1DF22CFB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = (&v47 - v15);
  swift_beginAccess();
  v16 = *(v0 + 120);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  if (v19)
  {
    v51 = v9;
    v48 = v2;
    v55 = v1;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v16 + 56);
    v27 = (*(v16 + 48) + 16 * v21);
    v28 = *v27;
    v49 = v27[1];
    v50 = v28;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    v54 = *(*(v47 - 8) + 72);
    v29 = v26 + v54 * v21;
    v30 = v52;
    sub_1DF17A6A8(v29, &v52[*(v55 + 48)], &qword_1ECE0CBB0, &qword_1DF22CF88);
    v31 = v49;
    *v30 = v50;
    v30[1] = v31;
    sub_1DF17A710(v30, v56, &qword_1ECE0CBB8, &qword_1DF22CF90);
    swift_bridgeObjectRetain_n();

    v32 = v51;
    if (v22)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_13:
      v33 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);

        sub_1DF16184C(v32, &qword_1ECE0CBB8, &qword_1DF22CF90);
        result = sub_1DF16184C(v56, &qword_1ECE0CBB8, &qword_1DF22CF90);
        __break(1u);
        return result;
      }

      if (v33 >= v23)
      {
        break;
      }

      v22 = *(v16 + 64 + 8 * v33);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v22)) | (v33 << 6);
          v35 = (*(v16 + 48) + 16 * v34);
          v37 = *v35;
          v36 = v35[1];
          sub_1DF17A6A8(*(v16 + 56) + v34 * v54, v6 + *(v55 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
          *v6 = v37;
          v6[1] = v36;
          sub_1DF17A710(v6, v32, &qword_1ECE0CBB8, &qword_1DF22CF90);

          v22 &= v22 - 1;
          if (sub_1DF16BE9C(v32, v56))
          {
            v38 = v56;
            sub_1DF16184C(v56, &qword_1ECE0CBB8, &qword_1DF22CF90);
            sub_1DF17A710(v32, v38, &qword_1ECE0CBB8, &qword_1DF22CF90);
            v20 = v33;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1DF16184C(v32, &qword_1ECE0CBB8, &qword_1DF22CF90);
            v20 = v33;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v33 = v20;
        }
      }
    }

    v39 = v53;
    sub_1DF17A710(v56, v53, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v40 = v48;
    v41 = v55;
    (*(v48 + 56))(v39, 0, 1, v55);

    if ((*(v40 + 48))(v39, 1, v41) == 1)
    {
      goto LABEL_22;
    }

    v42 = *v39;
    v43 = v39[1];
    v44 = v39 + *(v41 + 48);
    v45 = *(v44 + *(v47 + 48));

    sub_1DF169620(v44);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v24)
    {
      v20 = v24 + 1;
      v25 = *(v16 + 72 + 8 * v24);
      v19 -= 64;
      ++v24;
      if (v25)
      {
        v51 = v9;
        v48 = v2;
        v55 = v1;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v19;
        goto LABEL_9;
      }
    }

    v39 = v53;
    (*(v2 + 56))(v53, 1, 1, v1);
LABEL_22:
    sub_1DF16184C(v39, &qword_1ECE0CBD8, &qword_1DF22CFB0);
    return 0;
  }

  return v42;
}

uint64_t sub_1DF16BE9C(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v77);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v67 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v76 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v67 - v24;
  v26 = sub_1DF22A800();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v72 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v78 = &v67 - v31;
  sub_1DF17A6A8(a1, v8, &qword_1ECE0CBB8, &qword_1DF22CF90);
  v32 = *(v8 + 1);

  v75 = v3;
  v33 = &v8[*(v3 + 48)];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v35 = result;
  v36 = *(result + 48);
  v37 = *(v33 + v36);
  v38 = v37[3];
  if (!v38)
  {
    v45 = *(v33 + v36);

    sub_1DF169620(v33);
    v43 = v27[7];
    v43(v25, 1, 1, v26);
    goto LABEL_10;
  }

  v39 = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v39 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v39 >= v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v68 = result;
  v69 = v9;
  v40 = v37[4] + v39;
  v41 = v37[2];
  if (v40 < v41)
  {
    v41 = 0;
  }

  sub_1DF17A6A8(v37 + ((*(v9 + 80) + 40) & ~*(v9 + 80)) + (v40 - v41) * *(v9 + 72), v17, &qword_1ECE0CBC8, &qword_1DF22CFA0);

  sub_1DF17A710(v17, v19, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  sub_1DF1657C8(*&v19[*(v77 + 48)], *&v19[*(v77 + 48) + 8]);
  v42 = v27[4];
  v42(v25, v19, v26);
  v43 = v27[7];
  v43(v25, 0, 1, v26);
  sub_1DF169620(v33);
  v44 = v27[6];
  if (v44(v25, 1, v26) != 1)
  {
    v42(v78, v25, v26);
    v35 = v68;
    v9 = v69;
    v49 = v74;
    v48 = v75;
    v46 = v73;
    goto LABEL_14;
  }

  v35 = v68;
  v9 = v69;
LABEL_10:
  v46 = v73;
  sub_1DF22A740();
  v44 = v27[6];
  v47 = v44(v25, 1, v26);
  v48 = v75;
  if (v47 != 1)
  {
    sub_1DF16184C(v25, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  }

  v49 = v74;
LABEL_14:
  sub_1DF17A6A8(v49, v46, &qword_1ECE0CBB8, &qword_1DF22CF90);
  v50 = *(v46 + 8);

  v51 = v46 + v48[12];
  result = *(v51 + *(v35 + 48));
  v52 = *(result + 24);
  v53 = v76;
  if (!v52)
  {

    sub_1DF169620(v51);
    v43(v53, 1, 1, v26);
    goto LABEL_23;
  }

  v54 = v52 - 1;
  if (__OFSUB__(v52, 1))
  {
    goto LABEL_28;
  }

  if (v54 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v54 < v52)
  {
    v55 = *(result + 32) + v54;
    v56 = *(result + 16);
    if (v55 < v56)
    {
      v56 = 0;
    }

    v57 = result + ((*(v9 + 80) + 40) & ~*(v9 + 80)) + (v55 - v56) * *(v9 + 72);
    v75 = v43;
    v58 = v44;
    v59 = v70;
    sub_1DF17A6A8(v57, v70, &qword_1ECE0CBC8, &qword_1DF22CFA0);

    v60 = v59;
    v44 = v58;
    v61 = v71;
    sub_1DF17A710(v60, v71, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    sub_1DF1657C8(*(v61 + *(v77 + 48)), *(v61 + *(v77 + 48) + 8));
    v62 = v27[4];
    v62(v53, v61, v26);
    (v75)(v53, 0, 1, v26);
    sub_1DF169620(v51);
    if (v58(v53, 1, v26) != 1)
    {
      v63 = v72;
      v62(v72, v53, v26);
LABEL_25:
      v64 = v78;
      v65 = sub_1DF22A790();
      v66 = v27[1];
      v66(v63, v26);
      v66(v64, v26);
      return v65 & 1;
    }

LABEL_23:
    v63 = v72;
    sub_1DF22A740();
    if (v44(v53, 1, v26) != 1)
    {
      sub_1DF16184C(v53, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    }

    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DF16C5DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1DF17924C();
    if ((sub_1DF22B1D0() & 1) == 0 && (sub_1DF22B1D0() & 1) == 0)
    {

      MEMORY[0x1E12CF820](58, 0xE100000000000000);
      MEMORY[0x1E12CF820](a3, a4);
      return a1;
    }

    *a5 = 2;
  }

  else
  {
LABEL_10:
    *a5 = 2;
  }

  sub_1DF1792A0();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF16C738(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v101 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v105 = *(v110 - 8);
  v9 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v11 = &v101 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v101 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v113 = *(v118 - 8);
  v15 = *(v113 + 64);
  v16 = MEMORY[0x1EEE9AC00](v118);
  v112 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v101 - v21;
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(a2);
    goto LABEL_11;
  }

  LODWORD(v24) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_118;
  }

  v24 = v24;
LABEL_11:
  v116 = v2[17];
  if (v24 >= v116)
  {
    return 0;
  }

  v119 = v2[16];
  swift_beginAccess();
  swift_beginAccess();
  v29 = *(v2[14] + 16);
  v30 = *(v2[15] + 16);
  v27 = __OFADD__(v29, v30);
  v31 = v29 + v30;
  if (v27)
  {
LABEL_107:
    __break(1u);
  }

  else
  {
    v32 = __OFSUB__(HIDWORD(a1), a1);
    v104 = v32;
    v103 = HIDWORD(a1) - a1;
    v115 = BYTE6(a2);
    v107 = (v105 + 56);
    v102 = (v113 + 56);
    *&v28 = 136315394;
    v101 = v28;
    *&v28 = 134217984;
    v108 = v28;
    v114 = v11;
    v117 = a2 >> 62;
    v106 = v22;
    v120 = a1;
    while (1)
    {
      v27 = __OFADD__(v31, 1);
      v35 = v31 + 1;
      if (v27)
      {
        break;
      }

      if (v119 >= v35)
      {
        v36 = sub_1DF16AA60();
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v39 = *(a1 + 16);
            v38 = *(a1 + 24);
            v27 = __OFSUB__(v38, v39);
            v37 = v38 - v39;
            if (v27)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = v115;
          if (v23)
          {
            v37 = v103;
            if (v104)
            {
              goto LABEL_112;
            }
          }
        }

        v27 = __OFADD__(v36, v37);
        v40 = v36 + v37;
        if (v27)
        {
          goto LABEL_109;
        }

        if (v116 >= v40)
        {
          return 1;
        }
      }

      v41 = sub_1DF16B214();
      if (v42)
      {
        v43 = v41;
        v44 = v42;
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v45 = sub_1DF22A8C0();
        __swift_project_value_buffer(v45, qword_1ED8E92C0);
        sub_1DF16573C(a1, a2);
        v46 = sub_1DF22A8A0();
        v47 = sub_1DF22B100();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = v108;
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              v66 = *(a1 + 16);
              v65 = *(a1 + 24);
              v27 = __OFSUB__(v65, v66);
              v49 = v65 - v66;
              if (v27)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = v115;
            if (v23)
            {
              v49 = v103;
              if (v104)
              {
                goto LABEL_115;
              }
            }
          }

          *(v48 + 4) = v49;
          v69 = v48;
          sub_1DF1657C8(a1, a2);
          _os_log_impl(&dword_1DF15A000, v46, v47, "Removing existing key due to database size constraints upon insertion of new key (value size: %ld).", v69, 0xCu);
          v70 = v69;
          v11 = v114;
          MEMORY[0x1E12D0B40](v70, -1, -1);
        }

        else
        {
          sub_1DF1657C8(a1, a2);
        }

        swift_beginAccess();
        sub_1DF175524(v43, v44, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v22);
        sub_1DF16184C(v22, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        swift_endAccess();
      }

      else
      {
        v50 = sub_1DF16B950();
        if (!v51)
        {
          if (qword_1ED8E7530 != -1)
          {
            goto LABEL_121;
          }

          goto LABEL_91;
        }

        v52 = v51;
        v53 = v3[15];
        if (!*(v53 + 16))
        {
          goto LABEL_97;
        }

        v54 = v50;
        v55 = v3[15];

        v56 = sub_1DF175254(v54, v52);
        if ((v57 & 1) == 0)
        {
          goto LABEL_96;
        }

        v58 = v112;
        sub_1DF17A6A8(*(v53 + 56) + *(v113 + 72) * v56, v112, &qword_1ECE0CBB0, &qword_1DF22CF88);

        sub_1DF17A710(v58, v121, &qword_1ECE0CBB0, &qword_1DF22CF88);
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v59 = sub_1DF22A8C0();
        __swift_project_value_buffer(v59, qword_1ED8E92C0);
        v60 = v120;
        sub_1DF16573C(v120, a2);

        v61 = sub_1DF22A8A0();
        LODWORD(v23) = sub_1DF22B100();

        if (os_log_type_enabled(v61, v23))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v122 = v63;
          *v62 = v101;
          *(v62 + 4) = sub_1DF160728(v54, v52, &v122);
          *(v62 + 12) = 2048;
          if (v117 > 1)
          {
            if (v117 == 2)
            {
              v68 = *(v120 + 16);
              v67 = *(v120 + 24);
              v27 = __OFSUB__(v67, v68);
              v64 = v67 - v68;
              if (v27)
              {
                goto LABEL_117;
              }
            }

            else
            {
              v64 = 0;
            }
          }

          else
          {
            v64 = v115;
            if (v117)
            {
              v64 = v103;
              if (v104)
              {
                goto LABEL_116;
              }
            }
          }

          *(v62 + 14) = v64;
          sub_1DF1657C8(v120, a2);
          _os_log_impl(&dword_1DF15A000, v61, v23, "Evicting item from list (key: %s to database size constraints upon insertion of new key (value size: %ld).", v62, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x1E12D0B40](v63, -1, -1);
          MEMORY[0x1E12D0B40](v62, -1, -1);

          v11 = v114;
        }

        else
        {
          sub_1DF1657C8(v60, a2);
        }

        v71 = *(v118 + 48);
        v72 = *(v121 + v71);
        v23 = v111;
        if (v72[3])
        {
          v73 = *(v121 + v71);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DF179338();
          }

          v72 = *(v121 + v71);
          v74 = v72[3];
          v27 = __OFSUB__(v74, 1);
          v75 = v74 - 1;
          if (v27)
          {
            goto LABEL_110;
          }

          v76 = v72[4] + v75;
          v77 = v72[2];
          if (v76 < v77)
          {
            v77 = 0;
          }

          sub_1DF17A710(v72 + ((*(v105 + 80) + 40) & ~*(v105 + 80)) + (v76 - v77) * *(v105 + 72), v11, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v78 = v72[3];
          v27 = __OFSUB__(v78, 1);
          v79 = v78 - 1;
          if (v27)
          {
            goto LABEL_111;
          }

          v72[3] = v79;
          sub_1DF17A710(v11, v23, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v80 = 0;
        }

        else
        {
          v80 = 1;
        }

        (*v107)(v23, v80, 1, v110);
        sub_1DF16184C(v23, &qword_1ECE0CBF8, &qword_1DF22CFC8);
        if (v72[3])
        {
          v81 = v121;
          v82 = v109;
          sub_1DF17A6A8(v121, v109, &qword_1ECE0CBB0, &qword_1DF22CF88);
          (*v102)(v82, 0, 1, v118);
          swift_beginAccess();
          sub_1DF167040(v82, v54, v52);
          swift_endAccess();
          v83 = v81;
        }

        else
        {
          v23 = v120;
          sub_1DF16573C(v120, a2);
          v84 = sub_1DF22A8A0();
          v85 = sub_1DF22B100();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = v108;
            if (v117 > 1)
            {
              if (v117 == 2)
              {
                v89 = *(v120 + 16);
                v88 = *(v120 + 24);
                v27 = __OFSUB__(v88, v89);
                v87 = v88 - v89;
                if (v27)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v87 = 0;
              }
            }

            else
            {
              v87 = v115;
              if (v117)
              {
                v87 = v103;
                if (v104)
                {
                  goto LABEL_120;
                }
              }
            }

            *(v86 + 4) = v87;
            v90 = v86;
            sub_1DF1657C8(v120, a2);
            _os_log_impl(&dword_1DF15A000, v84, v85, "Removing existing key due to database size constraints upon insertion of new key (value size: %ld).", v90, 0xCu);
            MEMORY[0x1E12D0B40](v90, -1, -1);
          }

          else
          {
            sub_1DF1657C8(v23, a2);
          }

          swift_beginAccess();
          v91 = v109;
          sub_1DF175524(v54, v52, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v109);
          sub_1DF16184C(v91, &qword_1ECE0CBE8, &qword_1DF22CFC0);
          swift_endAccess();

          v83 = v121;
        }

        sub_1DF16184C(v83, &qword_1ECE0CBB0, &qword_1DF22CF88);
        LODWORD(v23) = v117;
        v22 = v106;
        a1 = v120;
      }

      v33 = *(v3[14] + 16);
      v34 = *(v3[15] + 16);
      v27 = __OFADD__(v33, v34);
      v31 = v33 + v34;
      if (v27)
      {
        goto LABEL_107;
      }
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  swift_once();
LABEL_91:
  v93 = sub_1DF22A8C0();
  __swift_project_value_buffer(v93, qword_1ED8E92C0);
  v94 = v120;
  sub_1DF16573C(v120, a2);
  v95 = sub_1DF22A8A0();
  v96 = sub_1DF22B100();
  if (!os_log_type_enabled(v95, v96))
  {
    sub_1DF1657C8(v94, a2);
LABEL_105:

    return 0;
  }

  v97 = swift_slowAlloc();
  *v97 = v108;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v99 = *(v94 + 16);
      v98 = *(v94 + 24);
      v115 = v98 - v99;
      if (!__OFSUB__(v98, v99))
      {
        goto LABEL_104;
      }

      __break(1u);
    }

    v115 = 0;
LABEL_104:
    *(v97 + 4) = v115;
    v100 = v97;
    sub_1DF1657C8(v94, a2);
    _os_log_impl(&dword_1DF15A000, v95, v96, "Failed to remove any expired keys due to database size constraints upon insertion of new key (value size: %ld).", v100, 0xCu);
    MEMORY[0x1E12D0B40](v100, -1, -1);
    goto LABEL_105;
  }

  if (!v23)
  {
    goto LABEL_104;
  }

  v115 = v103;
  if (!v104)
  {
    goto LABEL_104;
  }

  __break(1u);
LABEL_96:

LABEL_97:

  return 1;
}

uint64_t sub_1DF16D40C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  sub_1DF16D7F0();
  v10 = *(v0 + 136) * 0.8;
  if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v10 <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  if (v10 >= 9.22337204e18)
  {
    goto LABEL_27;
  }

  if (qword_1ED8E7530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = v10;
    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = sub_1DF22A8A0();
    v14 = sub_1DF22B100();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_1DF15A000, v13, v14, "Reducing store size to %ld bytes", v15, 0xCu);
      MEMORY[0x1E12D0B40](v15, -1, -1);
    }

    v16 = *(*(type metadata accessor for KVDatastore.MetadataType() - 8) + 64);
    swift_beginAccess();
    swift_beginAccess();
    v17 = sub_1DF16A784();
    v18 = *(*(v1 + 112) + 16);
    v19 = v18 * v16;
    if ((v18 * v16) >> 64 == (v18 * v16) >> 63)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v26 = *(*(v1 + 120) + 16);
    v27 = v26 * v16;
    if ((v26 * v16) >> 64 != (v26 * v16) >> 63)
    {
      goto LABEL_21;
    }

    v28 = __OFADD__(v19, v27);
    v29 = v19 + v27;
    if (v28)
    {
      goto LABEL_22;
    }

    v30 = v17 + v29;
    if (__OFADD__(v17, v29))
    {
      goto LABEL_23;
    }

    result = sub_1DF16AA60();
    if (__OFADD__(v30, result))
    {
      goto LABEL_24;
    }

    if (v30 + result <= v11)
    {
      return result;
    }

    v32 = sub_1DF16B950();
    if (v33)
    {
      v20 = v32;
      v21 = v33;
      swift_beginAccess();
      sub_1DF175524(v20, v21, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v9);
      v22 = v9;
      v23 = &qword_1ECE0CBE8;
      v24 = &qword_1DF22CFC0;
    }

    else
    {
      result = sub_1DF16B214();
      if (!v34)
      {
        return result;
      }

      v35 = result;
      v36 = v34;
      swift_beginAccess();
      sub_1DF175524(v35, v36, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v5);
      v22 = v5;
      v23 = &qword_1ECE0CBE0;
      v24 = &qword_1DF22CFB8;
    }

    sub_1DF16184C(v22, v23, v24);
    swift_endAccess();

    v17 = sub_1DF16A784();
    v25 = *(*(v1 + 112) + 16);
    v19 = v25 * v16;
    if ((v25 * v16) >> 64 != (v25 * v16) >> 63)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_1DF16D7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v122 - v3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v5 = *(*(v138 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v138);
  v127 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v122 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v139 = &v122 - v15;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v16 = *(*(v140 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v140);
  v128 = (&v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v122 - v21);
  v23 = sub_1DF22A800();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v145 = v0;
  if (*(*(v0 + 112) + 16) || (v28 = v145, result = swift_beginAccess(), *(*(v28 + 120) + 16)))
  {
    v122 = v24;
    v123 = v23;
    v129 = v10;
    v136 = v4;
    v30 = sub_1DF22A7D0();
    v31 = *(v145 + 112);
    MEMORY[0x1EEE9AC00](v30);
    v125 = v27;
    *(&v122 - 2) = v27;

    v32 = sub_1DF177100(sub_1DF17920C, (&v122 - 4), v31, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
    v124 = 0;

    v33 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 64);
    v37 = (v34 + 63) >> 6;
    v133 = v32;

    v38 = 0;
    *&v39 = 136315138;
    v130 = v39;
    v137 = v12;
    v132 = v32 + 64;
    v131 = v37;
    v126 = v22;
    while (v36)
    {
LABEL_13:
      v43 = __clz(__rbit64(v36)) | (v38 << 6);
      v44 = *(v133 + 56);
      v45 = (*(v133 + 48) + 16 * v43);
      v47 = *v45;
      v46 = v45[1];
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v143 = *(v48 - 8);
      v134 = *(v143 + 72);
      sub_1DF17A6A8(v44 + v134 * v43, v22 + *(v140 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
      v141 = v46;
      v142 = v47;
      *v22 = v47;
      v22[1] = v46;
      v49 = qword_1ED8E7530;

      if (v49 != -1)
      {
        swift_once();
      }

      v50 = sub_1DF22A8C0();
      __swift_project_value_buffer(v50, qword_1ED8E92C0);
      sub_1DF17A6A8(v22, v144, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v51 = sub_1DF22A8A0();
      v52 = sub_1DF22B100();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v135 = v48;
        v54 = v53;
        v55 = swift_slowAlloc();
        v148 = v55;
        *v54 = v130;
        v56 = v128;
        sub_1DF17A710(v144, v128, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v58 = *v56;
        v57 = v56[1];
        v59 = v56 + *(v140 + 48);
        sub_1DF1657C8(*(v59 + *(v135 + 48)), *(v59 + *(v135 + 48) + 8));
        sub_1DF169620(v59);
        v60 = sub_1DF160728(v58, v57, &v148);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_1DF15A000, v51, v52, "Removing expired key: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v61 = v55;
        v22 = v126;
        MEMORY[0x1E12D0B40](v61, -1, -1);
        v62 = v54;
        v48 = v135;
        MEMORY[0x1E12D0B40](v62, -1, -1);
      }

      else
      {

        sub_1DF16184C(v144, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      v12 = v137;
      v63 = v145;
      swift_beginAccess();
      v64 = *(v63 + 112);
      v65 = sub_1DF175254(v142, v141);
      if (v66)
      {
        v67 = v65;
        v68 = v145;
        v69 = *(v145 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v68 + 112);
        v147[0] = v71;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DF175E10(&qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
          v71 = v147[0];
        }

        v72 = *(*(v71 + 48) + 16 * v67 + 8);

        sub_1DF17A710(*(v71 + 56) + v67 * v134, v139, &qword_1ECE0CBA8, &qword_1DF22CF80);
        sub_1DF175BCC(v67, v71, &qword_1ECE0CBA8, &qword_1DF22CF80);
        v40 = 0;
        *(v145 + 112) = v71;
      }

      else
      {
        v40 = 1;
      }

      v36 &= v36 - 1;
      v41 = v139;
      (*(v143 + 56))(v139, v40, 1, v48);
      sub_1DF16184C(v41, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      swift_endAccess();
      result = sub_1DF16184C(v22, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v33 = v132;
      v37 = v131;
    }

    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v42 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v42);
      ++v38;
      if (v36)
      {
        v38 = v42;
        goto LABEL_13;
      }
    }

    v73 = v145;
    v74 = swift_beginAccess();
    v75 = *(v73 + 120);
    MEMORY[0x1EEE9AC00](v74);
    *(&v122 - 2) = v125;

    v76 = sub_1DF177100(sub_1DF17922C, (&v122 - 4), v75, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);

    v77 = v76 + 64;
    v78 = 1 << *(v76 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & *(v76 + 64);
    v81 = (v78 + 63) >> 6;
    v140 = v76;

    v82 = 0;
    v83 = v129;
    v139 = v76 + 64;
    v135 = v81;
    while (v80)
    {
      v86 = v12;
LABEL_33:
      v88 = __clz(__rbit64(v80)) | (v82 << 6);
      v89 = *(v140 + 56);
      v90 = (*(v140 + 48) + 16 * v88);
      v92 = *v90;
      v91 = v90[1];
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v143 = *(v93 - 8);
      v144 = v93;
      v141 = *(v143 + 72);
      sub_1DF17A6A8(v89 + v141 * v88, v86 + *(v138 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
      v142 = v92;
      *v86 = v92;
      v86[1] = v91;
      v12 = v86;
      v94 = qword_1ED8E7530;

      if (v94 != -1)
      {
        swift_once();
      }

      v95 = sub_1DF22A8C0();
      __swift_project_value_buffer(v95, qword_1ED8E92C0);
      sub_1DF17A6A8(v86, v83, &qword_1ECE0CBB8, &qword_1DF22CF90);
      v96 = sub_1DF22A8A0();
      v97 = sub_1DF22B100();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v147[0] = v99;
        *v98 = v130;
        v100 = v83;
        v101 = v127;
        sub_1DF17A710(v100, v127, &qword_1ECE0CBB8, &qword_1DF22CF90);
        v103 = *v101;
        v102 = v101[1];
        v104 = v101 + *(v138 + 48);
        v105 = *(v104 + *(v144 + 48));

        sub_1DF169620(v104);
        v106 = v103;
        v107 = v129;
        v108 = sub_1DF160728(v106, v102, v147);

        *(v98 + 4) = v108;
        v83 = v107;
        _os_log_impl(&dword_1DF15A000, v96, v97, "Removing expired key: %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x1E12D0B40](v99, -1, -1);
        v109 = v98;
        v12 = v137;
        MEMORY[0x1E12D0B40](v109, -1, -1);
      }

      else
      {

        sub_1DF16184C(v83, &qword_1ECE0CBB8, &qword_1DF22CF90);
      }

      v77 = v139;
      v110 = v145;
      swift_beginAccess();
      v111 = *(v110 + 120);
      v112 = sub_1DF175254(v142, v91);
      if (v113)
      {
        v114 = v112;
        v115 = v145;
        v116 = *(v145 + 120);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(v115 + 120);
        v146 = v118;
        v119 = v136;
        if (!v117)
        {
          sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
          v118 = v146;
        }

        v120 = *(*(v118 + 48) + 16 * v114 + 8);

        sub_1DF17A710(*(v118 + 56) + v114 * v141, v119, &qword_1ECE0CBB0, &qword_1DF22CF88);
        v121 = v114;
        v85 = v136;
        sub_1DF175BCC(v121, v118, &qword_1ECE0CBB0, &qword_1DF22CF88);
        v84 = 0;
        *(v145 + 120) = v118;
      }

      else
      {
        v84 = 1;
        v85 = v136;
      }

      v80 &= v80 - 1;
      (*(v143 + 56))(v85, v84, 1, v144);
      sub_1DF16184C(v85, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      swift_endAccess();
      result = sub_1DF16184C(v12, &qword_1ECE0CBB8, &qword_1DF22CF90);
      v81 = v135;
    }

    while (1)
    {
      v87 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v87 >= v81)
      {

        return (*(v122 + 8))(v125, v123);
      }

      v80 = *(v77 + 8 * v87);
      ++v82;
      if (v80)
      {
        v86 = v12;
        v82 = v87;
        goto LABEL_33;
      }
    }

LABEL_45:
    __break(1u);
  }

  return result;
}